from django.shortcuts import render

personas = [{'name1': 'Dilan Sobenis'}, {'name2': 'Edwar Gonzalez'}, {'name3':'Jeisson Paredes'}]

def miVistaEjemplo (request):
    return render (request, 'mi-plantilla-1.html', {'personas': personas})


#VISTA DE PRUEBA PARA ENRUTADO

