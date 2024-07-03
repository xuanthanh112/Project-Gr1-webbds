
from django.db import models
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
#change forms register django
class CreateUserForm(UserCreationForm):
    class Meta:
        model= User
        fields=['username', 'email','first_name','last_name','password1','password2']
STATUS_CHOICES = [
    ('sale', 'Bán'),
    ('rent', 'Cho thuê'),
]



GENDER_CHOICES = [
    ('man', 'nam'),
    ('woman', 'nu'),
]

class Category(models.Model):
    sub_category=models.ForeignKey('self', on_delete=models.CASCADE, related_name='sub_categories', null=True, blank=True)
    is_sub=models.BooleanField(default=False)
    is_rent=models.BooleanField(default=False)
    name=models.CharField(max_length=200, null=True)
    slug=models.SlugField(max_length=200, unique=True)
    def __str__(self):
        return self.name

# class ProductForSale(models.Model):
#     name= models.ForeignKey(Product)

class Product(models.Model):
 
    category=models.ManyToManyField(Category,related_name='product')
    name = models.CharField(max_length=500, null=True)
    short_description = models.CharField(max_length=200, null=True)
    full_description=models.CharField(max_length=200, null=True)
    price = models.FloatField()
    area = models.CharField(max_length=100, null=True)
    location = models.CharField(max_length=100, null=True)
    status = models.CharField(max_length=10, choices=STATUS_CHOICES, default='sale')
    image = models.ImageField(null=True, blank=True)
    
    def __str__(self):
        return self.name

    @property
    def IMAGEURL(self):
        try:
            url = self.image.url
        except:
            url = ''
        return url
class ProductImage(models.Model):
    product = models.ForeignKey(Product, related_name='images', on_delete=models.CASCADE)
    image = models.ImageField(upload_to='product_images/')
    def __str__(self):
        return f"Image for {self.product.name}"

class Order(models.Model):
    customer = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, blank=False)
    product = models.CharField(max_length=500, null=True,blank=True)
    completed = models.BooleanField(default=False)

    name=models.CharField(max_length=500, null=True)
    gender=models.CharField(max_length=500, null=True)
    address=models.CharField(max_length=500, null=True)
    email=models.CharField(max_length=500, null=True)
    phone_number=models.CharField(max_length=500, null=True)
    def __str__(self):
        return str(self.id)
    @property
    def get_cart_items(self):
        orderitems = self.orderitem_set.all()
        total = sum([item.quantity for item in orderitems])
        return total
    @property
    def get_cart_total(self):
        orderitems = self.orderitem_set.all()
        total = sum([item.get_total  for item in orderitems])
        return total

class OrderItem(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=0)
    date_added = models.TimeField(auto_now_add=True)
    

    @property
    def get_total(self):
        if self.product is None: 
            return 0 
        return self.quantity * self.product.price

    def __str__(self):
        return str(self.id)

    def save(self, *args, **kwargs):
        if self.product.status == 'sale':
            self.quantity = 1
        elif self.product.status == 'rent' and self.quantity < 1:
            self.quantity = 1
        super().save(*args, **kwargs)

    def set_quantity(self, new_quantity):
        if self.product.status == 'rent':
            if new_quantity < 1:
                raise ValueError("Quantity for rented products must be at least 1.")
            self.quantity = new_quantity
        elif self.product.status == 'sale':
            raise ValueError("Cannot change quantity for products that are for sale.")
        self.save()

class ShippingAddress(models.Model):
    customer = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, blank=False)
    order = models.ForeignKey(Order, on_delete=models.SET_NULL, null=True, blank=False)
    address = models.CharField(max_length=200, null=True)
    email = models.EmailField(max_length=100, null=True)
    phone_number = models.TextField(max_length=12, null=True)

    def __str__(self):
        return self.address
