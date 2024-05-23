from django.urls import path
from . import views

#IMPORAMOS VIEWS DE la carpeta vistas
from .vistas import miVistasApp, vista_recommended


#URLS APP MyApp1
urlpatterns = [
    path('', views.home, name='home'),
    path('personas', miVistasApp.miVistaEjemplo, name='personas'),
    path('recomendar/', vista_recommended.recomendedVista, name='recomendar'),
   
]
