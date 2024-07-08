from django.shortcuts import render, get_object_or_404
# DEPENDENCIAS RECOMENDACIÓN
from .models import Software, Historial, Laptop
from django.shortcuts import render, redirect
from .recomenderFolder.recomender import get_recommendations
from django.views.decorators.csrf import csrf_protect
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from django.contrib import messages

# importo el archivo utils para llamar las funciones que tengo en el
from . import utils


#HOME  =  = == = = == = = = = = = = = = == == = = = == = = = =
def home(request):   
    return render(request, 'home.html') 

#PERFIL  =  = == = = == = = = = = = = = = == == = = = == = = = =
def perfil(request):
   
   #REDIRECCIONAR SI NO ESTÁ AUTENTICADO
    if (request.user.is_authenticated == False):
        return redirect('login')
    

    return render(request, 'perfil.html')
  


#ABOUT =  = == = = == = = = = = = = = = == == = = = == = = = =
def about (request):
    personas = [{'name1': 'Dilan Sobenis'}, {'name2': 'Edwar Gonzalez'}, {'name3':'Jeisson Paredes'}]
    return render (request, 'about.html', {'personas': personas})

#RECOMENDACIÓN  DULAN V1=  = == = = == = = = = = = = = = == == = = = == = = = =  = = = == = = = = = == = = = = 

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

    return render (request, 'recomendar.html', {'recommendations' : recommendations})


# ENTORNOS    = = = = = = = = = = == = = = = == = = = = = = = = = == = = = = = = = = = = = ==

#ENTORNOS  - - - - - - - - - - - - - - - -  - -- - - 
def entornos(request):
    return render(request, 'entornos/entornos.html')

#EXPERTO - - - - - - - - - - - - - - - -  - -- - -
def entornoExperto(request):
    
    recommended_laptops = None
    # Obtenemos los valores del POST
    if request.method == 'POST':
        
        print('\nGENERACIÓN R. [EXPERTO] =================================\n')
        
       # Definimos el diccionario que se le mandará a la función
        filters = {
            'processor_tier': request.POST.get('cpuInput'),
            'ram_memory': request.POST.get('ramInput'),
            'primary_storage_capacity': request.POST.get('diskInput')
        }
        
        # Mostramos por consola valores que se envian para generar la recomendaciones
        print("\n\nEspecificaciones (INGRESADAS) \n")
        print(filters)

        
        # Se llama a ala función para generar una recomendación
        recommended_laptops = get_recommendations(filters)
        
        #ELIMINAMOS LO QUE ESTÉ LUEGO DEL () "HP Spectre x360 16-f2002TU Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home)"
        for laptop in recommended_laptops:
            laptop['model'] = laptop['model'].split('(')[0].strip()
        
            
        print("\n\nRECOMENDACIONES\n")
        print(recommended_laptops)
        print('\n=============================== ==============================\n')
         
        # Guardamos los datos en la sesión
        request.session['recommended_laptops'] = recommended_laptops
        
        # Retornamos la vista de las recomendaciones y mandamos las laptops recomendadas
        return redirect('recomendaciones')
        
        
    # RENDER ANTES DEL POST
    return render(request, 'entornos/experto.html', {
        # envio la lista de las especificacione hardware disponibles para el modelo
        'modeloProcesadores': utils.obtenerModeloProcesadores(), 
        'ram': utils.obtenerCapacidadesRam(),
        'disk': utils.obtenerCapacidadesDisk()})
    
#NO EXPERTO - - - - - - - - - - - - - - - -  - -- - -

def entornoNoExperto(request):
    
    if request.method == 'POST':
        selected_software_ids = request.POST.getlist('selected_software')
        
        print('\nGENERACIÓN R. [NO EXPERTO] =================================\n')

        print('\n\nIDs\n')
        print(selected_software_ids)

        # SACAMOS LOS NOMBRES DE LOS SOFTWARES CON LOS IDS MANDADOS PRO EL FRONT
        selected_software = Software.objects.filter(id__in=selected_software_ids)
        print('\n\nSOTWAREs\n')
        print(selected_software)
        
        # CALCULAR MEDIA DE LAS ESPECIFICACIONES
        max_specs = utils.calculate_max_specs(selected_software)

        # OBTENER EL PROCESSOR_TIER CON MÁS NÚCLEOS
        processor_tier = utils.obtener_processor_tier_con_mayor_num_cores(max_specs['cpu_intel'], max_specs['cpu_amd'])
        
        # PREPARAMOS DICCIONARIO PARA ENVIARLO A LA FUNCIÓN PARA OBTENER RECOMENDACIONES
        filters = {
            'processor_tier': processor_tier,
            'ram_memory': max_specs['ram'],
            'primary_storage_capacity': max_specs['ssd']
        }
        
        # DEBUG ESPECIFIACIONES
        print("\n\nEspecificaciones (MEDIA) \n")
        print(filters)
        print("\n")
        
        
        # OBTENEMOS RECOMENDACIONES
        recommended_laptops = get_recommendations(filters)
        
        #ELIMINAMOS LO QUE ESTÉ LUEGO DEL () "HP Spectre x360 16-f2002TU Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home)"
        for laptop in recommended_laptops:
            laptop['model'] = laptop['model'].split('(')[0].strip()
            
            
        print("RECOMENDACIONES\n")
        print(recommended_laptops)
        print('\n=============================== ==============================\n')
        # Guardamos los datos en la sesión
        request.session['recommended_laptops'] = recommended_laptops
        
        # Retornamos la vista de las recomendaciones y mandamos las laptops recomendadas
        return redirect('recomendaciones')
        
        
    return render(request, 'entornos/noExperto.html', {'softwares': Software.objects.all()})

#VER LAS RECOMENDACIONES - - - - - - - - - - - - - - - -  - -- - -
def verRecomendaciones(request):
    
    # Recupera los datos de la sesión
    recommended_laptops = request.session.get('recommended_laptops')
    
    
    return render(request, 'entornos/recomendaciones.html', {
        'laptops': recommended_laptops
    })
#VER HISTORIAL======================================
@login_required
def guardar_recomendacion(request):
    if request.method == 'POST':
        # Obtener los datos del formulario
        brand = request.POST['brand']
        model = request.POST['model']
        processor_brand = request.POST['processor_brand']
        processor_tier = request.POST['processor_tier']
        num_cores = request.POST['num_cores']
        num_threads = request.POST['num_threads']
        ram_memory = request.POST['ram_memory']
        primary_storage_type = request.POST['primary_storage_type']
        primary_storage_capacity = request.POST['primary_storage_capacity']
        secondary_storage_type = request.POST.get('secondary_storage_type', None)
        secondary_storage_capacity = request.POST.get('secondary_storage_capacity', None)
        gpu_brand = request.POST['gpu_brand']
        gpu_type = request.POST['gpu_type']

        # Obtener el usuario actualmente autenticado
        user = request.user

        # Crear una nueva instancia de Historial
        recommendation = Historial.objects.create(
            user=user,
            brand=brand,
            model=model,
            processor_brand=processor_brand,
            processor_tier=processor_tier,
            num_cores=num_cores,
            num_threads=num_threads,
            ram_memory=ram_memory,
            primary_storage_type=primary_storage_type,
            primary_storage_capacity=primary_storage_capacity,
            secondary_storage_type=secondary_storage_type,
            secondary_storage_capacity=secondary_storage_capacity,
            gpu_brand=gpu_brand,
            gpu_type=gpu_type
        )

        # Guardar la instancia
        recommendation.save()

        # Añadir un mensaje de éxito
        messages.success(request, 'Recomendación guardada correctamente.')

        # Redireccionar a donde desees
        return redirect('recomendaciones')

    # Manejar otras condiciones como GET, etc.
    return redirect('recomendaciones')