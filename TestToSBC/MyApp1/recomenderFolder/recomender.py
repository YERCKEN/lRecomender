import pandas as pd
from ..models import Laptop, Software
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import linear_kernel

def load_laptop_data(filters=None):
    laptops = Laptop.objects.all()

    if filters:
        if filters.get('brand'):
            laptops = laptops.filter(brand__icontains=filters['brand'])
        if filters.get('processor_tier'):
            laptops = laptops.filter(processor_tier__icontains=filters['processor_tier'])
        if filters.get('ram_memory'):
            laptops = laptops.filter(ram_memory=filters['ram_memory'])
        if filters.get('primary_storage_capacity'):
            laptops = laptops.filter(primary_storage_capacity=filters['primary_storage_capacity'])

    data = {
        'index': [],
        'brand': [],
        'model': [],
        'processor_tier': [],
        'ram_memory': [],
        'primary_storage_capacity': [],
        'processor_brand': [],
        'num_cores': [],
        'num_threads': [],
        'primary_storage_type': [],
        'secondary_storage_type': [],
        'secondary_storage_capacity': [],
        'gpu_brand': [],
        'gpu_type': []
    }

    for laptop in laptops:
        data['index'].append(laptop.index)
        data['brand'].append(laptop.brand)
        data['model'].append(laptop.model)
        data['processor_tier'].append(laptop.processor_tier)
        data['ram_memory'].append(laptop.ram_memory)
        data['primary_storage_capacity'].append(laptop.primary_storage_capacity)
        data['processor_brand'].append(laptop.processor_brand)
        data['num_cores'].append(laptop.num_cores)
        data['num_threads'].append(laptop.num_threads)
        data['primary_storage_type'].append(laptop.primary_storage_type)
        data['secondary_storage_type'].append(laptop.secondary_storage_type)
        data['secondary_storage_capacity'].append(laptop.secondary_storage_capacity)
        data['gpu_brand'].append(laptop.gpu_brand)
        data['gpu_type'].append(laptop.gpu_type)

    df = pd.DataFrame(data)
    df = df.fillna('')

    # Convertir todos los campos a cadena antes de concatenar
    df['features'] = (
        df['brand'].astype(str) + ' ' +
        df['model'].astype(str) + ' ' +
        df['processor_tier'].astype(str) + ' ' +
        df['ram_memory'].astype(str) + 'GB RAM ' +
        df['primary_storage_capacity'].astype(str) + 'GB SSD'
    )

    df['features'] = df['features'].fillna('')
    return df

def compute_tfidf_matrix(data):
    tfidf = TfidfVectorizer(stop_words='english')
    tfidf_matrix = tfidf.fit_transform(data['features'])
    return tfidf_matrix

def get_cosine_sim(matrix):
    cosine_sim = linear_kernel(matrix, matrix)
    return cosine_sim

def recommend_laptops(data, cosine_sim, ref_index, brand_filter):
    laptop_indices = list(data.index)
    sim_scores = cosine_sim[ref_index]
    sorted_indices = sim_scores.argsort()[-11:-1]

    recommended_laptops = data.iloc[sorted_indices]

    if brand_filter:
        recommended_laptops = recommended_laptops[recommended_laptops['brand'].str.contains(brand_filter, case=False)]

    recommended_details = recommended_laptops[[
        'brand', 'model', 'processor_brand', 'processor_tier', 'num_cores', 'num_threads',
        'ram_memory', 'primary_storage_type', 'primary_storage_capacity',
        'secondary_storage_type', 'secondary_storage_capacity', 'gpu_brand', 'gpu_type'
    ]].to_dict(orient='records')

    return recommended_details

def get_recommendations(filters):
    data = load_laptop_data(filters)
    if data.empty:
        return []  # Manejo de caso cuando no hay datos disponibles
    
    tfidf_matrix = compute_tfidf_matrix(data)
    cosine_sim = get_cosine_sim(tfidf_matrix)
    
    # Seleccionar el primer índice que cumple con los filtros
    ref_index = data.index[0]
    
    # Obtener la marca del producto de referencia para filtrar las recomendaciones
    brand_filter = filters.get('brand', '')
    
    recommended_details = recommend_laptops(data, cosine_sim, ref_index, brand_filter)
    
    return recommended_details

# CARGAR SOFTWARE
def load_software_data():
    softwares = Software.objects.all()

    data = {
        'software': [],
        'cpu_intel': [],
        'cpu_amd': [],
        'ram': [],
        'ssd': []
    }

    for software in softwares:
        data['software'].append(software.software)
        data['cpu_intel'].append(software.cpu_intel)
        data['cpu_amd'].append(software.cpu_amd)
        data['ram'].append(software.ram)
        data['ssd'].append(software.ssd)

    df = pd.DataFrame(data)

    # Convertir todas las columnas a strings y manejar valores nulos
    df = df.fillna('').astype(str)

    # Crear la columna 'features'
    df['features'] = df['cpu_intel'] + ' ' + df['cpu_amd'] + ' ' + df['ram'] + 'GB RAM ' + ' ' + df['ssd'] + 'GB SSD'

    # Eliminar filas donde 'features' esté vacía
    df = df[df['features'].str.strip() != '']

    return df
