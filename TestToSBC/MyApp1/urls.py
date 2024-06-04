from django.urls import path
from . import views
from  .vistas import vista_login

#IMPORAMOS VIEWS DE la carpeta vistas


#URLS APP MyApp1

urlpatterns = [
    #INICIO
    path('', views.home, name='home'),
    path('about', views.about, name='about'),
    
   #ENTORNOS
   path('entornos', views.entornos, name='entornos'),
   path('entornoExperto', views.entornoExperto, name='entornoExperto'),
   path('entornoNoExperto', views.entornoNoExperto, name='entornoNoExperto'),

   #RECOMENDACIÓN - - - - -- - - - - - - - - - - - -
   path('recomendar/', views.recomendar, name='recomendar'),
   
   path('recomendaciones/', views.verRecomendaciones, name='recomendaciones'),
   
   
   #LOGIN DILAN - --  - - --- - - ----- ------ - - - - - - - - - -- 
   
   path('login', vista_login.loginPanel, name='login'),
   path('logout', vista_login.logoutUser, name='logout'),
   path('register', vista_login.registerUser, name='register')
   
   
]
