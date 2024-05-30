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
    
    if request.method == 'POST':
        processor = request.POST.get('cpuInput')
        ram = request.POST.get('ramInput')
        storage = request.POST.get('diskInput')
        print("POST EXPERTO - - - - - - - - - - - - - - ")
        print(processor)
        print(ram)
        print(storage)
        
        
    # Renderizo
    return render(request, 'entornos/experto.html', {
        # envio la lista de las especificacione hardware disponibles para el modelo
        'modeloProcesadores': utils.obtenerModeloProcesadores(), 
        'ram': utils.obtenerCapacidadesRam(),
        'disk': utils.obtenerCapacidadesDisk()})

#NO EXPERTO - - - - - - - - - - - - - - - -  - -- - -
def entornoNoExperto(request):
    return render(request, 'entornos/noExperto.html')

#VER LAS RECOMENDACIONES
def verRecomendaciones(request):
    return render(request, 'entornos/recomendaciones.html')