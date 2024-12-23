from django.shortcuts import render
from django.http import JsonResponse
from .models import Category, Product, User, OrderItem, Order
from .serializers import CategorySerializer, ProductSerializer, OrderItemSerializer, OrderSerializer
from django.db import transaction
from rest_framework import viewsets, status
from rest_framework.response import Response
from rest_framework.decorators import action
from rest_framework.views import APIView
from django.views.decorators.csrf import csrf_exempt
from django.core.mail import send_mail
from django.conf import settings


def index(request):
    return render(request, 'index.html')
def index_category(request):
    return render(request, 'products.html')

def index_product(request, category_id):
    return render(request, 'product_category.html', {'category_id': category_id})

def index_search(request):
    return render(request, 'search.html')

def index_confirm(request):
    return render(request, 'confirm.html')

def search(request):
    print(request.POST)
    # search_data = request.POST.get('search_data')
    # queryset = Product.objects.filter(name=search_data)
     
    # return render(request,'search_result.html', {"products": queryset})
    search_data = request.POST.get('search_data', '').strip()  # Get and sanitize the search term
    queryset = Product.objects.filter(name__icontains=search_data)  # Use icontains for partial matching

    serializers = ProductSerializer(queryset, many = True)

    return render(request, 'search_result.html', {"products": serializers.data, "search_term": search_data})

# Create your views here.
class CategoryViewSet(viewsets.ModelViewSet):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer

    def get_queryset(self):
        queryset = self.queryset
        name = self.request.query_params.get('name', None)
        if name:
            queryset = queryset.filter(name__icontains=name)
        return queryset
    
    @action(detail=True, methods=['get'], url_path='products')
    def get_products(self, request, pk=None):
        try:
            category = Category.objects.get(pk=pk)
        except Category.DoesNotExist:
            return Response({"error": "Category not found"}, status=status.HTTP_404_NOT_FOUND)
        
        products = Product.objects.all().filter(category = category)
        # products = Product.objects.all()
        
        serializers = ProductSerializer(products, many = True)
        return Response(serializers.data)

    

class OrderCreateView(APIView):
    def post(self, request):
        serializer = OrderSerializer(data=request.data)
        if serializer.is_valid():
            with transaction.atomic():  # Ensures the entire process is atomic
                user = User.objects.get(user_id=serializer.validated_data['user'].user_id)
                total_price = 0
                
                # Create the order
                order = Order.objects.create(
                    user=user,
                    total_price=0  # Placeholder, will calculate later
                )
                
                # Create order items
                for item in serializer.validated_data['items']:
                    product = Product.objects.get(product_id=item['product'].product_id)
                    quantity = item['quantity']

                    # Check stock availability
                    if product.stock < quantity:
                        return Response(
                            {"error": f"Insufficient stock for product {product.name}."},
                            status=status.HTTP_400_BAD_REQUEST
                        )
                    
                    # Deduct stock
                    product.stock -= quantity
                    product.save()
                    
                    # Create order item
                    OrderItem.objects.create(
                        order=order,
                        product=product,
                        quantity=quantity
                    )
                    
                    # Add to total price
                    total_price += product.price * quantity
                
                # Update order with the total price
                order.total_price = total_price
                order.save()
                
                # Simulate payment processing (expand as needed)
                payment_success = self.process_payment(total_price)
                if not payment_success:
                    raise Exception("Payment failed.")
                
                return Response({"order_id": order.order_id}, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def process_payment(self, amount):
        return True  # Assume payment succeeds 


@csrf_exempt
def send_order_confirmation(request):
    if request.method == "POST":
        order_id = request.POST.get('order_id')
        email = request.POST.get('email')

        try:
            order = Order.objects.get(order_id=order_id)

            # Send confirmation email
            send_mail(
                "Order Confirmation",
                f"Thank you for your order #{order_id}!",
                settings.EMAIL_HOST_USER,
                [email],
                fail_silently=False,
            )

            return JsonResponse({"message": "Confirmation email sent successfully."}, status=200)

        except Order.DoesNotExist:
            return JsonResponse({"error": "Order not found."}, status=404)

    return JsonResponse({"error": "Invalid request method."}, status=405)