# MODELOS
from .models import Laptop

def obtenerModeloProcesadores():
     # query al modelo
    processor_tiers = Laptop.objects.values_list('processor_tier', flat=True).distinct()
    # lo convierto a lista y retornamos
    return list(processor_tiers)
