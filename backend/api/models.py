from django.db import models

# Create your models here.
class Cart(models.Model):
    cart_id = models.AutoField(primary_key=True)
    user = models.ForeignKey('User', models.DO_NOTHING, blank=True, null=True)
    product = models.ForeignKey('Product', models.DO_NOTHING, blank=True, null=True)
    quantity = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Cart'
        app_label = 'api'

class Category(models.Model):
    category_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Category'
        app_label = 'api'

class Fee(models.Model):
    fee_id = models.AutoField(primary_key=True)
    date = models.DateTimeField(blank=True, null=True)
    method = models.CharField(max_length=100, blank=True, null=True)
    amount = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    user = models.ForeignKey('User', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Fee'
        app_label = 'api'

class Order(models.Model):
    order_id = models.AutoField(primary_key=True)
    order_date = models.DateTimeField(blank=True, null=True)
    total_price = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    user = models.ForeignKey('User', models.DO_NOTHING, blank=True, null=True)
    fee = models.ForeignKey(Fee, models.DO_NOTHING, blank=True, null=True)
    shipment = models.ForeignKey('Shipment', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Order'
        app_label = 'api'

class OrderItem(models.Model):
    order_item_id = models.AutoField(primary_key=True)
    quantity = models.IntegerField(blank=True, null=True)
    product = models.ForeignKey('Product', models.DO_NOTHING, blank=True, null=True)
    order = models.ForeignKey(Order, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Order_Item'
        app_label = 'api'

class OrderVoucher(models.Model):
    order_voucher_id = models.AutoField(primary_key=True)
    value = models.IntegerField(blank=True, null=True)
    order = models.ForeignKey(Order, models.DO_NOTHING, blank=True, null=True)
    voucher = models.ForeignKey('Voucher', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Order_Voucher'
        app_label = 'api'

class Product(models.Model):
    product_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, blank=True, null=True)
    description = models.CharField(max_length=100, blank=True, null=True)
    price = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    stock = models.IntegerField(blank=True, null=True)
    size = models.IntegerField(blank=True, null=True)
    color = models.CharField(max_length=100, blank=True, null=True)
    category = models.ForeignKey(Category, models.DO_NOTHING, blank=True, null=True)
    store = models.ForeignKey('Store', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Product'
        app_label = 'api'

class Shipment(models.Model):
    shipment_id = models.AutoField(primary_key=True)
    shipment_date = models.DateTimeField(blank=True, null=True)
    city = models.CharField(max_length=100, blank=True, null=True)
    state = models.CharField(max_length=100, blank=True, null=True)
    country = models.CharField(max_length=100, blank=True, null=True)
    zip_code = models.CharField(max_length=100, blank=True, null=True)
    user = models.ForeignKey('User', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Shipment'
        app_label = 'api'

class Store(models.Model):
    store_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Store'
        app_label = 'api'

class User(models.Model):
    user_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, blank=True, null=True)
    email = models.CharField(max_length=100, blank=True, null=True)
    password = models.CharField(max_length=100, blank=True, null=True)
    phone = models.CharField(max_length=100, blank=True, null=True)
    province = models.CharField(max_length=100, blank=True, null=True)
    district = models.CharField(max_length=100, blank=True, null=True)
    commune = models.CharField(max_length=100, blank=True, null=True)
    address = models.CharField(max_length=100, blank=True, null=True)
    housing_type = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'User'
        app_label = 'api'

class Voucher(models.Model):
    voucher_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, blank=True, null=True)
    value = models.IntegerField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    start_date = models.DateTimeField(blank=True, null=True)
    end_date = models.DateTimeField(blank=True, null=True)
    user = models.ForeignKey(User, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Voucher'
        app_label = 'api'
