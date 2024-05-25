from django.shortcuts import render
# DEPENDENCIAS RECOMENDACIÓN

from django.shortcuts import render
from .recomenderFolder.recomender import get_recommendations
from django.views.decorators.csrf import csrf_protect

# importo el archivo utils para llamar las funciones que tengo en el
from . import utils


#HOME  =  = == = = == = = = = = = = = = == == = = = == = = = =
def home(request):
    return render(request, 'home.html') 

#ABOUT =  = == = = == = = = = = = = = = == == = = = == = = = =

def about (request):
    personas = [{'name1': 'Dilan Sobenis'}, {'name2': 'Edwar Gonzalez'}, {'name3':'Jeisson Paredes'}]
    return render (request, 'about.html', {'personas': personas})


#RECOMENDACIÓN =  = == = = == = = = = = = = = = == == = = = == = = = =  = = = == = = = = = == = = = = = == = = =

@csrf_protect
def recomendar(request):
    recommendations = None

    if request.method == 'POST':
        brand = request.POST.get('brand')
        processor = request.POST.get('processor_brand')
        ram = request.POST.get('ram_memory')
        storage = request.POST.get('primary_storage_capacity')

        #DEFINIMOS DICCIONARIO
        filters = {
            'brand': brand,
            'processor_brand': processor,
            'ram_memory': ram,
            'primary_storage_capacity': storage,
        }

        recommendations = get_recommendations(filters)

    return render (request, 'recomendar.html', {'recommendations' : recommendations})


# ENTORNOS    = = = = = = = = = = == = = = = == = = = = = = = = = == = = = = = = = = = = = ==

#ENTORNOS  - - - - - - - - - - - - - - - -  - -- - - 
def entornos(request):
    return render(request, 'entornos/entornos.html')

#EXPERTO - - - - - - - - - - - - - - - -  - -- - -
def entornoExperto(request):
    #print(utils.obtenerModeloProcesadores())
    # Renderizo y envio la lista de los procesadores ejecutando la función [ obtenerModeloProcesadores() ] 
    return render(request, 'entornos/experto.html', {'modeloProcesadores': utils.obtenerModeloProcesadores()})

#NO EXPERTO - - - - - - - - - - - - - - - -  - -- - -
def entornoNoExperto(request):
    return render(request, 'entornos/noExperto.html')
