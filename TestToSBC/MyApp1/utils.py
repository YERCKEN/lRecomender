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



# FUNCCIÓN PARA CALCULAR LA ESPECIFICACION MAS ALTA- - - - - - - - - - - - -
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
    print(max_cpu_intel)
    print(max_cpu_amd)
    return {
        'cpu_intel': max_cpu_intel,
        'cpu_amd': max_cpu_amd,
        'ram': max_ram,
        'ssd': max_ssd
    }
    
    
def obtener_processor_tier_con_mayor_num_cores(cpu_intel, cpu_amd):
    intel_processor = Laptop.objects.filter(processor_tier=cpu_intel).order_by('-num_cores').first()
    amd_processor = Laptop.objects.filter(processor_tier=cpu_amd).order_by('-num_cores').first()

    if intel_processor and amd_processor:
        if intel_processor.num_cores >= amd_processor.num_cores:
            return intel_processor.processor_tier
        else:
            return amd_processor.processor_tier
    elif intel_processor:
        return intel_processor.processor_tier
    elif amd_processor:
        return amd_processor.processor_tier
    print(intel_processor.processor_tier)
    print(amd_processor.processor_tier)
    return None