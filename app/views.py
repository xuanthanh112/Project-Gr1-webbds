from django.shortcuts import redirect, render
from django.http import HttpResponse,JsonResponse
from .models import*
import json
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
# Create your views here.
def detail(request):
    if request.user.is_authenticated:
        user_not_login2="hidden"
        user_not_login1="hidden"
        user_logout="show"
        customer = request.user
        order, created = Order.objects.get_or_create(customer=customer) 
        items = order.orderitem_set.all()
    else:
        user_not_login2="show"
        user_not_login1="show"

        user_logout="hidden"
        items = []
        order={'get_cart_items':0, 'get_cart_total':0   }
    id1= request.GET.get('id','')
    products=Product.objects.filter(id=id1)

    categories_for_sale= Category.objects.filter(is_sub=False,is_rent=False)
    categories_for_rent= Category.objects.filter(is_sub=False,is_rent=True)
    context = {'products':products,'items': items, 'order': order,'user_not_login1':user_not_login1, 'user_not_login2':user_not_login2,'user_logout':user_logout,'categories_for_sale':categories_for_sale,'categories_for_rent':categories_for_rent}
    return render(request, 'app/detail.html', context)
def category(request):
    categories_for_sale= Category.objects.filter(is_sub=False,is_rent=False)
    categories_for_rent= Category.objects.filter(is_sub=False,is_rent=True)
    active_category=request.GET.get('category','')
    products = []
    if active_category:
        products=Product.objects.filter(category__slug=active_category)
    context = {
        'products': products,
        'active_category': active_category,
        'categories_for_rent': categories_for_rent, 
        'categories_for_sale': categories_for_sale,
    }
    return render(request, 'app/category.html', context)

def register(request):
    form = CreateUserForm()
    if request.method =="POST":
        form= CreateUserForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')

    context={'form': form}
    return render(request, 'app/register.html', context)
def loginPage(request):
    if request.user.is_authenticated:
        return redirect('home')
    else:
        if request.method == "POST":
            username = request.POST.get('username')
            password = request.POST.get('password')
            user = authenticate(request, username=username, password=password)
            if user is not None:
                login(request, user)
                return redirect('home')
            else:
                            
                return render(request, 'app/login.html', {'error': 'login_failed'})
        return render(request, 'app/login.html')
def search(request):
    if request.method=="POST":
        searched =request.POST["searched"]
        keys = Product.objects.filter(name__contains= searched )
    if request.user.is_authenticated:
        user_not_login2="hidden"
        user_not_login1="hidden"
        user_logout="show"
        customer = request.user
        order, created = Order.objects.get_or_create(customer=customer)
        items = order.orderitem_set.all()
    else:
        user_not_login2="show"
        user_not_login1="show"

        user_logout="hidden"
        items = []
        order={'get_cart_items':0, 'get_cart_total':0   }
    categories_for_sale= Category.objects.filter(is_sub=False,is_rent=False)
    categories_for_rent= Category.objects.filter(is_sub=False,is_rent=True)
    
    
    return render(request,'app/search.html', {'categories_for_sale':categories_for_sale,'categories_for_rent':categories_for_rent,'searched': searched, 'keys':keys, 'items': items, 'order': order,'user_not_login1':user_not_login1, 'user_not_login2':user_not_login2,'user_logout':user_logout})
def logoutPage(request):
    logout(request)
    return redirect('login')
def home(request):
    if request.user.is_authenticated:
        user_not_login2="hidden"
        user_not_login1="hidden"
        user_logout="show"
    else:
        user_not_login2="show"
        user_not_login1="show"

        user_logout="hidden"
    categories_for_sale= Category.objects.filter(is_sub=False,is_rent=False)
    categories_for_rent= Category.objects.filter(is_sub=False,is_rent=True)
  

    products = Product.objects.all()
    context={'products': products,'user_not_login1':user_not_login1, 'user_not_login2':user_not_login2,'user_logout':user_logout,'categories_for_sale':categories_for_sale,'categories_for_rent':categories_for_rent}
    return render(request, 'app/home.html', context)
def cart(request):
    if request.user.is_authenticated:
        user_not_login2="hidden"
        user_not_login1="hidden"
        user_logout="show"
        customer = request.user
        order, created = Order.objects.get_or_create(customer=customer) 
        items = order.orderitem_set.all()
    else:
        user_not_login2="show"
        user_not_login1="show"

        user_logout="hidden"
        items = []
        order={'get_cart_items':0, 'get_cart_total':0   }
    categories_for_sale= Category.objects.filter(is_sub=False,is_rent=False)
    categories_for_rent= Category.objects.filter(is_sub=False,is_rent=True)
    context = {'items': items, 'order': order,'user_not_login1':user_not_login1, 'user_not_login2':user_not_login2,'user_logout':user_logout,'categories_for_sale':categories_for_sale,'categories_for_rent':categories_for_rent}
    return render(request, 'app/cart.html', context)



from django.shortcuts import render, redirect
from .models import Order, Product, Category
from django.contrib import messages
from django.contrib.auth.decorators import login_required

@login_required
def checkout(request):
    if request.method == 'POST':
        customer = request.user
        name = request.POST.get('name')
        gender = request.POST.get('gender')
        address = request.POST.get('address')
        email = request.POST.get('email')
        phone_number = request.POST.get('phone_number')
        product_id = request.POST.get('product_id')  # Lấy product_id từ trường ẩn

        if product_id:
            try:
                product = Product.objects.get(id=product_id)
                # Kiểm tra xem có đơn hàng chưa hoàn thành không
                order, created = Order.objects.get_or_create(
                    customer=customer,
                    completed=False,
                    defaults={
                        'name': name,
                        'gender': gender,
                        'address': address,
                        'email': email,
                        'phone_number': phone_number,
                        'product': product.name
                    }
                )

                # Nếu đơn hàng đã tồn tại, cập nhật thông tin mới
                if not created:
                    order.name = name
                    order.gender = gender
                    order.address = address
                    order.email = email
                    order.phone_number = phone_number
                    order.product = product.name
                    order.save()

                messages.success(request, 'Đơn hàng của bạn đã được gửi thành công!')
                return render(request, 'app/checkout.html', {'display_modal': 'true'})
            except Product.DoesNotExist:
                messages.error(request, "Sản phẩm không hợp lệ.")
                return redirect('cart')
        else:
            messages.error(request, "Sản phẩm không hợp lệ.")
            return redirect('cart')
    else:
        product_id = request.GET.get('product_id', '')  # Đặt giá trị mặc định để tránh UnboundLocalError
        items = []
        total = 0
        item_count = 0
        if request.user.is_authenticated and product_id:
            user_not_login2 = "hidden"
            user_not_login1 = "hidden"
            user_logout = "show"
            customer = request.user
            order, created = Order.objects.get_or_create(customer=customer, completed=False)
            item = order.orderitem_set.filter(product__id=product_id).first()
            if item:
                items = [{'product': item.product, 'quantity': item.quantity, 'total': item.product.price * item.quantity}]
                total = item.product.price * item.quantity
                item_count = item.quantity
            else:
                items = []
                total = 0
                item_count = 0
        else:
            user_not_login2 = "show"
            user_not_login1 = "show"
            user_logout = "hidden"
            items = []
            total = 0
            item_count = 0

        categories_for_sale = Category.objects.filter(is_sub=False, is_rent=False)
        categories_for_rent = Category.objects.filter(is_sub=False, is_rent=True)

        context = {
            'items': items,
            'total': total,
            'item_count': item_count,
            'user_not_login1': user_not_login1,
            'user_not_login2': user_not_login2,
            'user_logout': user_logout,
            'categories_for_sale': categories_for_sale,
            'categories_for_rent': categories_for_rent,
            'product_id': product_id  
        }
        return render(request, 'app/checkout.html', context)



from django.http import JsonResponse
import json
def updateItem(request):
    try:
        data = json.loads(request.body)
        productId = data['productId']
        action = data['action']
        customer = request.user
        product = Product.objects.get(id=productId)
        order, created = Order.objects.get_or_create(customer=customer)
        orderItem, created = OrderItem.objects.get_or_create(order=order, product=product)

        if action == 'add':
            orderItem.quantity += 1
        elif action == 'remove':
            orderItem.quantity -= 1
            if orderItem.quantity <= 0:
                orderItem.delete()
                return JsonResponse({'message': 'Item deleted'}, safe=False)

        orderItem.save()
        return JsonResponse({'message': 'Updated successfully', 'newQuantity': orderItem.quantity}, safe=False)

    except json.JSONDecodeError:
        return JsonResponse({'error': 'Invalid JSON'}, status=400)
    except Product.DoesNotExist:
        return JsonResponse({'error': 'Product not found'}, status=404)
    except Exception as e:
        return JsonResponse({'error': str(e)}, status=500)
