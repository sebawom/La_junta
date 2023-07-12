from django.shortcuts import redirect, render, get_list_or_404, get_object_or_404
from .models import Producto
from .forms import *
from django.contrib import messages
from rest_framework import viewsets
from .serializers import *
from django.contrib.auth.decorators import login_required, user_passes_test, permission_required
from django.core.paginator import Paginator
from django.http import Http404
from django.contrib.auth import authenticate, login
import requests
from django.contrib.auth.models import User, Group
from django.dispatch import receiver 
from django.db.models.signals import post_save
from pedidos.models import *
from carro.carro import Carro
from carro.views import *

#funcion generica que valida el grupo
def grupo_requerido(nombre_grupo):
    def decorator(view_func):
        @user_passes_test(lambda user : user.groups.filter(name=nombre_grupo).exists())
        def wrapper(request, *args, **kwargs):
            return view_func(request, *args, **kwargs)
        return wrapper
    return decorator
# serializers

class ProductoViewset(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializers 

class TipoProductoViewset(viewsets.ModelViewSet):
    queryset = tipoProducto.objects.all()
    serializer_class = TipoProductoSerializers 

class ContactoViewset(viewsets.ModelViewSet):
    queryset = Contacto.objects.all()
    serializer_class = ContactoSerializers     

class CompraViewset(viewsets.ModelViewSet):
    queryset = Compra.objects.all()
    serializer_class = CompraSerializers  
# Create your views here.

def index(request):
    productos = Producto.objects.all()
    page = request.GET.get('page', 1)
    try:
        paginator = Paginator(productos, 3)
        productos = paginator.page(page)
    except:
        raise Http404 


    data ={
    'entity' : productos,
    'paginator' : paginator
  }
    return render(request, 'core/index.html', data)
#API
def apiindex(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/productos/')
    respuesta2 = requests.get('https://rickandmortyapi.com/api/characters/')    
    productos = respuesta.json
    aux = respuesta2.json()
    personajes = aux['results']

    data ={
    'listaProducto' : productos,
    'personajes': personajes,
  }
    return render(request, 'core/apiindex.html', data)

def indexapi(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/TipoProductos/')
    respuesta2 = requests.get('http://mindicator.cl/api/')
    respuesta3 = requests.get('https://rickandmortyapi.com/api/characters/')

    #TRANSFORMACION A JSON
    productos = respuesta.json()
    monedas = respuesta2.json()
    aux = respuesta3.json()
    personajes = aux['results']

    data = {
        'listaProducto': productos,
        'moneda': monedas,
        'personajes': personajes,
    }

    return render(request, 'core/indexapi.html', data)


def about(request):
    return render(request, ('core/about.html'))


def donacion(request):
    return render(request, ('core/donacion.html'))


def cart(request):

    respuesta = requests.get('https://mindicador.cl/api/dolar').json()
    valor_usd = respuesta['serie'][0]['valor']
    valor_carrito = 20000 #ciclo for para sumar todos los productos del carrito
    #convertimos de clp a usd
    valor_total = valor_carrito/valor_usd
    data = {
        'dolar' : round(valor_total, 2)
    }

    return render(request,'core/cart.html', data)

def checkout(request):
    return render(request, ('core/checkout.html'))

@grupo_requerido('usuario')
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


@permission_required('core.add_producto')
def agregar_producto(request):
    data = {
        'form' : ProductoForm()
    }

    if request.method == 'POST':
        formulario = ProductoForm(data=request.POST, files=request.FILES) # RECIBE TODA LA INFO DEL FORMULARIO
        if formulario.is_valid():
            formulario.save() # COMMIT, INSERT INTO .........
            #data['msj'] = "Producto guardado correctamente"
            messages.success(request, "Producto almacenado correctamente")  
            
    return render(request, 'core/agregar.html', data)

@login_required
 
@permission_required('core.view_producto')
def listar_productos(request):
    productos = Producto.objects.all()
    page = request.GET.get('page', 1)
    try:
        paginator = Paginator(productos, 5)
        productos = paginator.page(page)
    except:
        raise Http404

    data ={
    'entity' : productos,
    'paginator' : paginator
  }
    return render(request, 'core/listar.html', data )

@login_required
@permission_required('core.change_producto')
def modificar_productos(request, id):
    producto = Producto.objects.get(id=id)
    data = {
        'form' : ProductoForm(instance=producto)
    }

    if request.method == 'POST':
        formulario = ProductoForm(data=request.POST, instance=producto, files=request.FILES) # RECIBE EL CONTENIDO DEL FORMULARIO
        if formulario.is_valid():
            formulario.save() # INSERT
            messages.success(request , "Editado Correctamente")
            return redirect(to="listar_productos")
        else :
            data['form'] = formulario

    return render (request,'core/modificar.html', data)

@login_required
@permission_required('core.delete_producto')
def eliminar_productos(request, id):
    producto = Producto.objects.get(id=id)
    producto.delete()
    messages.success(request , "Eliminado Correctamente")

    return redirect(to="listar_productos")

def news(request):
    return render(request, ('core/news.html'))


def shop(request):
    productos = Producto.objects.all()
    page = request.GET.get('page', 1)

    try:
        paginator = Paginator(productos, 3)
        productos = paginator.page(page)
    except:
        raise Http404 

    data = {
        'entity': productos,
        'paginator' : paginator

    }
    return render(request, 'core/shop.html', data)


def singlenews(request,):
    return render(request, ('core/single-news.html'))

def singleproduct(request, id):
    productos = Producto.objects.all()
    page = request.GET.get('page', 1)
    try:
        paginator = Paginator(productos, 1)
        productos = paginator.page(page)
    except:
        raise Http404 


    data ={
    'entity' : productos,
    'paginator' : paginator
  }
    return render(request, 'core/single-product.html', data)


def registro(request):
    if request.method == 'POST':
        f = CustomUserCreationForm(request.POST)
        if f.is_valid():
            usuario = f.save()
            messages.success(request, 'Cuenta Creada correctamente')
            
            login(request, usuario)

            cliente = User.objects.get(username = usuario.username)
            cliente.groups.add(1)
            cliente.save()

            return redirect('index')

    else:
        f = CustomUserCreationForm()

    return render(request, 'registration/registro.html', {'form': f})
#suscripcion
def agregar_suscriptor(request, id):
    usuario = User.objects.get(id=id)
    usuario.groups.add(4)
    usuario.save()
    return redirect('index')

def subscripcion(request):
    data = {
        'form' : DonacionForm()
    } 
    if request.method == 'POST':
        formulario = DonacionForm(request.POST)
        if formulario.is_valid():
            Nombre = formulario.cleaned_data['Nombre']
            Email = formulario.cleaned_data['Email']
            Monto = formulario.cleaned_data['Monto']
        
    return render(request, 'core/subscripcion.html', data)

def status(request):
    user = User.objects.get(id=request.user.id)
    usuario = user.groups.filter(name='subscriptor').exists()
    data = {
        'usuario' : usuario
    }
    return render(request, 'core/status.html', data )

#Paypal
def ordercomplete(request):
    return render(request, 'core/order-complete.html')

def usuario(request):
    return render(request, 'core/usuario.html')

def quitar_usuario_de_grupo(request, id):

    usuario = User.objects.get(id=id)
    grupo = Group.objects.get(id=1)
    usuario.groups.remove(4)
    return redirect('status')



def detallepedido(request, id):
    pedido = Pedido.objects.get(id = id)
    lineapedido = LineaPedido.objects.filter(pedido=id)

    data = {
        'pedido': pedido,
        'lineapedido': lineapedido
    }

    return render(request, 'core/detallepedido.html', data)



def gallery(request):
    pedido = Pedido.objects.all()
    es_admin = request.user.is_staff

    data = {
        'LineaPedido' : pedido,   
        'es_admin': es_admin,
  
    }
    return render(request, 'core/gallery.html', data)


#Carrito

#seguimiento

def historial(request):
   lineas_pedido = LineaPedido.objects.filter(user=request.user)  # Filtrar por el usuario actual
   es_admin = request.user.is_staff
   if es_admin:
        pedidos = LineaPedido.objects.all()
   else:
        pedidos = LineaPedido.objects.filter(user=request.user)

   data = {
        'lineas_pedido': lineas_pedido,
        'es_admin': es_admin,

    }
   return render(request, 'core/historial.html', data)

def es_admin(user):
    return user.is_staff

@login_required
@user_passes_test(es_admin)
def cambiar_estado_pedido(request, pedido_id):
    if request.method == 'POST' and request.user.is_staff:
        pedido = get_object_or_404(Pedido, id=pedido_id)
        nuevo_estado = request.POST.get('estado')
        pedido.estado = nuevo_estado
        pedido.save()
        
        # Actualizar estado en pedidos relacionados de otros usuarios
        pedidos_relacionados = Pedido.objects.filter(id=pedido.id).exclude(user=pedido.user)
        pedidos_relacionados.update(estado=nuevo_estado)
        
    return redirect('gallery')
