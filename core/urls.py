from django.urls import path, include
from.views import *
from rest_framework import routers

## VIEWS -> URLS -> HTML

router = routers.DefaultRouter()
router.register('productos', ProductoViewset)
router.register('TipoProductos', TipoProductoViewset)

urlpatterns = [
    path('api/', include(router.urls)),
    path('',index, name="index"),
    path('about/',about, name="about"),
    path('cart/',cart, name="cart"),
    path('checkout/',checkout, name="checkout"),
    path('contact/',contact, name="contact"),
    path('news/',news, name="news"),
    path('shop/',shop, name="shop"),
    path('single-news/',singlenews, name="singlenews"),
    path('single-product/',singleproduct, name="singleproduct"),

    #Carrito

    path('agregar/<int:producto_id>/', agregar_producto_index, name="Add_index"),
    path('agregar/<int:producto_id>/', agregar_producto_shop, name="Add_shop"),
    path('eliminar/<int:producto_id>/', eliminar_producto, name="Del"),
    path('restar/<int:producto_id>/', restar_producto, name="Sub"),
    path('sumar/<int:producto_id>/', sumar_producto, name="Sum"),
    path('limpiar/', limpiar_carrito, name="CLS"),
]