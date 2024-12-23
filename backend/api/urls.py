from django.urls import path, include
from .views import CategoryViewSet, search, OrderCreateView, send_order_confirmation
from rest_framework.routers import DefaultRouter

router = DefaultRouter()
router.register('categories', CategoryViewSet, basename='')


urlpatterns = [
    path('', include(router.urls)),
    path('categories/<int:pk>/products', CategoryViewSet.as_view({'get': 'get_products'}), name='category-products'),
    path('search/', search, name="search"),
    path('orders/', OrderCreateView.as_view()),
    path('orders/send-confirmation/', send_order_confirmation)
]
