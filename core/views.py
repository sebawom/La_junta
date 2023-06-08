from django.shortcuts import redirect, render
from core.Carrito import Carrito
from .models import Producto
from .forms import *
from django.contrib import messages
# Create your views here.

def index(request):
    productos = Producto.objects.all()
    data = {
        'productos': productos 
    }
    return render(request, 'core/index.html', data)

def about(request):
    return render(request, ('core/about.html'))

def cart(request):
    return render(request, ('core/cart.html'))

def checkout(request):
    return render(request, ('core/checkout.html'))

def contact(request):
    data = {
        'form': ContactoForm()
    }

    if request.method == 'POST':
        formulario = ContactoForm(data=request.POST)
        if formulario.is_valid():
            formulario.save()
            data["mensaje"] = "contacto enviado"
        else:
            data['form'] = formulario
        
    return render(request, 'core/contact.html', data)


def add(request):
    data = {
        'form' : ProductoForm()
    }

    if request.method == 'POSTA':
        formulario = ProductoForm(request.POST, files=request.FILES) # RECIBE TODA LA INFO DEL FORMULARIO
        if formulario.is_valid():
            formulario.save() # COMMIT, INSERT INTO .........
            #data['msj'] = "Producto guardado correctamente"
            messages.success(request, "Producto almacenado correctamente")  
            
    return render(request, 'core/add-product.html', data)
    

def news(request):
    return render(request, ('core/news.html'))

def shop(request):
    productos = Producto.objects.all()
    data = {
        'productos': productos 
    }
    return render(request, 'core/shop.html', data)

def singlenews(request):
    return render(request, ('core/single-news.html'))

def singleproduct(request):
    return render(request, ('core/single-product.html'))

#Carrito

def agregar_producto_index(request, producto_id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=producto_id)
    carrito.agregar(producto)
    return redirect("index")

def agregar_producto_shop(request, producto_id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=producto_id)
    carrito.agregar(producto)
    return redirect("shop")

def eliminar_producto(request, producto_id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=producto_id)
    carrito.eliminar(producto)
    return redirect("cart")

def restar_producto(request, producto_id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=producto_id)
    carrito.restar(producto)
    return redirect("cart")

def sumar_producto(request, producto_id):
    carrito = Carrito(request)
    producto = Producto.objects.get(id=producto_id)
    carrito.sumar(producto)
    return redirect("cart")

def limpiar_carrito(request):
    carrito = Carrito(request)
    carrito.limpiar()
    return redirect("cart")

