# Generated by Django 3.1.2 on 2023-06-26 01:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0002_pedido_estado'),
    ]

    operations = [
        migrations.AddField(
            model_name='lineapedido',
            name='estado',
            field=models.CharField(choices=[('Pendiente', 'Pendiente'), ('En proceso', 'En proceso'), ('Completado', 'Completado'), ('Cancelado', 'Cancelado')], default='pendiente', max_length=20),
        ),
    ]
