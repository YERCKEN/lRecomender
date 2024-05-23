from django.urls import path
from . import views

#IMPORAMOS VIEWS DE la carpeta vistas


#URLS APP MyApp1

urlpatterns = [
    #INICIO
    path('', views.home, name='home'),
    path('about', views.about, name='about'),
    #RECOMENDACIÓN
    path('recomendar/', views.recomendar, name='recomendar'),
   
]
