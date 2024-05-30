from django.shortcuts import render
# DEPENDENCIAS RECOMENDACIÓN
from .models import Software
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
        filters = {
            'processor_tier': request.POST.get('processor_tier'),
            'ram_memory': request.POST.get('ram_memory'),
            'primary_storage_capacity': request.POST.get('primary_storage_capacity')
        }
        recommendations = get_recommendations(filters)

    return render (request, 'entornos/noExperto.html', {'recommendations' : recommendations})


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


#OBTENER LAS ESPECIFICACIONES MAS ALTAS DE LOS SOFTWARE Y GENERAR LA RECOMENDACION DE LA LAPTOP Y VER LA LISTA DE SOFTWARE
def software_list(request):
    if request.method == 'POST':
        selected_software_ids = request.POST.getlist('selected_software')
        
        if not selected_software_ids:
            return render(request, 'entornos/noExperto.html', {'softwares': Software.objects.all(), 'error': 'Please select at least one software.'})

        # Fetch the selected software
        selected_software = Software.objects.filter(id__in=selected_software_ids)
        
        if not selected_software:
            return render(request, 'entornos/noExperto.html', {'softwares': Software.objects.all(), 'error': 'No software found.'})
        
        # Calculate max specifications
        max_specs = calculate_max_specs(selected_software)

        # Prepare filters for laptop recommendations
        filters = {
            'processor_tier': max_specs['cpu_intel'] if max_specs['cpu_intel'] else max_specs['cpu_amd'],
            'ram_memory': max_specs['ram'],
            'primary_storage_capacity': max_specs['ssd']
        }
        
        # Get recommended laptops
        recommended_laptops = get_recommendations(filters)

        return render(request, 'entornos/noExperto.html', {
            'softwares': Software.objects.all(),
            'max_specs': max_specs,
            'recommended_laptops': recommended_laptops
        })
    
    return render(request, 'entornos/noExperto.html', {'softwares': Software.objects.all()})
def calculate_max_specs(softwares):
    max_cpu_intel = None
    max_cpu_amd = None
    max_ram = 0
    max_ssd = 0

    for software in softwares:
        if software.cpu_intel and (max_cpu_intel is None or software.cpu_intel > max_cpu_intel):
            max_cpu_intel = software.cpu_intel
        if software.cpu_amd and (max_cpu_amd is None or software.cpu_amd > max_cpu_amd):
            max_cpu_amd = software.cpu_amd
        if software.ram and software.ram > max_ram:
            max_ram = software.ram
        if software.ssd and software.ssd > max_ssd:
            max_ssd = software.ssd

    return {
        'cpu_intel': max_cpu_intel,
        'cpu_amd': max_cpu_amd,
        'ram': max_ram,
        'ssd': max_ssd
    }