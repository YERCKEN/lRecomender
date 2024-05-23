from django.shortcuts import render
from ..recomenderFolder.recomender import get_recommendations
from django.views.decorators.csrf import csrf_protect


@csrf_protect
def recomendedVista(request):
    recommendations = None

    if request.method == 'POST':
        brand = request.POST.get('brand')
        processor = request.POST.get('processor_brand')
        ram = request.POST.get('ram_memory')
        storage = request.POST.get('primary_storage_capacity')

        
        
        filters = {
            'brand': brand,
            'processor_brand': processor,
            'ram_memory': ram,
            'primary_storage_capacity': storage,
        }

        recommendations = get_recommendations(filters)

    return render (request, 'formulario.html', {'recommendations' : recommendations})
