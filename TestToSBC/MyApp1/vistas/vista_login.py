
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from .forms import RegisterForm
from django.contrib import messages
from ..models import Message
import random


def loginPanel(request):

    mensajes_login = [
        
        "¡Esperamos que tengas un día productivo!",
        "¡Es genial verte de nuevo!",
        "¿Listo para algunas recomendaciones nuevas?",
        "¡Tu presencia ilumina nuestro día!",
        "¡Bienvenido de vuelta, tu comunidad te ha extrañado!",
        "¡A por todas con tus nuevas metas!",
        "¡Vamos a hacer de hoy un día increíble!",
        "¡Gracias por regresar, tus recomendaciones te esperan!",
        "¡Estamos felices de verte nuevamente!",
        "¡Tienes muchas cosas geniales esperándote!"
        
    ]


    mensaje = list(Message.objects.all())

    if mensaje:
        random_mensaje = random.choice(mensaje)

        context = {
            'tipo_mensaje': random_mensaje.get_message_type_display(),
            'contenido_mensaje': random_mensaje.content,
        }
    else:
        context = {
            'tipo_mensaje': 'No hay mensaje',
            'contenido_mensaje': 'No hay mensajes disponibles',
        }

    page = 'login'

    error_message = None

    random_mensaj = random.choice(mensajes_login)

    if request.method == 'POST':

        username = request.POST.get('usuario')
        password = request.POST.get('pass')

        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)

            return redirect('home')
        else:
            error_message = 'Credenciales inválidas'      

    return render(request, 'login_register.html', {'error_message': error_message, 'page':page, **context, 'random_mensaje': random_mensaj})


def logoutUser(request):
    logout(request)
    return redirect('home')


def registerUser(request):

    mensaje = list(Message.objects.all())

    if mensaje:
        random_mensaje = random.choice(mensaje)

        contextv = {
            'tipo_mensaje': random_mensaje.get_message_type_display(),
            'contenido_mensaje': random_mensaje.content,
        }
    else:
        contextv = {
            'tipo_mensaje': 'No hay mensaje',
            'contenido_mensaje': 'No hay mensajes disponibles',
        }

    page = 'register'

    if request.method == 'POST':

        form = RegisterForm(request.POST)

        if form.is_valid():

            user = form.save(commit=False)
            user.set_password (form.cleaned_data['password'])
            user.save()
            login(request, user)
            return redirect ('home')
        
        # else:
        #     messages.error(request, 'Por favor, corrija los errores a continuación.')
    else:

        form = RegisterForm()

    return render (request, 'login_register.html', {'form': form, 'page': page, **contextv})
    
