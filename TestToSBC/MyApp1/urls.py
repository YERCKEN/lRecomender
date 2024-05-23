from django.urls import path
from . import views

#IMPORAMOS VIEWS DE la carpeta vistas
from .vistas import vista_recommended


#URLS APP MyApp1

urlpatterns = [
    path('', views.home, name='home'),
    path('about', views.about, name='about'),
    path('recomendar/', vista_recommended.recomendedVista, name='recomendar'),
   
]
