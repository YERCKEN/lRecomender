# MODELOS
from .models import Laptop

# FUNCCIÓN PARA OBTENER TODOS LOS MODELOS DE PROCESADORES QUE HAY EN LA BASE DE DATOS- - - - - - - - - - - - -
def obtenerModeloProcesadores():
     # query al modelo
    processor_tiers = Laptop.objects.values_list('processor_tier', flat=True).distinct()
    # lo convierto a lista y retornamos
    return list(processor_tiers)


# FUNCCIÓN PARA OBTENER CANTIDADES DE RAM EN LA BASE DE DATOS    --  -- - - - - - - - - - - - - 
def obtenerCapacidadesRam():
    # query al modelo
    ram = Laptop.objects.values_list('ram_memory', flat=True).distinct()
    # lo convierto a lista y retornamos
    return list(ram)

# FUNCCIÓN PARA OBTENER CANTIDADES DE DISCO DUR0    - - --  - -- - - - - - 
def obtenerCapacidadesDisk():
    # query
    capacidad = Laptop.objects.values_list('primary_storage_capacity', flat=True).distinct()
    # lo convierto a lista y retornamos
    return list(capacidad)