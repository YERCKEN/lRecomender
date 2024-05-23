import pandas as pd

from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import linear_kernel

from ..models import Laptop

def load_laptop_data(filters=None):

    laptops = Laptop.objects.all()

    if filters:
        if filters.get('brand'):
            laptops = laptops.filter(brand__icontains=filters['brand'])
        
        if filters.get('processor_brand'):
            laptops = laptops.filter(processor_brand__icontains=filters['processor_brand'])

        if filters.get('ram_memory'):
            laptops = laptops.filter(ram_memory=filters['ram_memory'])

        if filters.get('primary_storage_capacity'):
            laptops = laptops.filter(primary_storage_capacity=filters['primary_storage_capacity'])

    
    data = {
        'index': [],
        'brand': [],
        'model': [],
        'processor_brand': [],
        'ram_memory': [],
        'primary_storage_capacity': []
    }

    for laptop in laptops:
        data['index'].append(laptop.index)
        data['brand'].append(laptop.brand)
        data['model'].append(laptop.model)
        data['processor_brand'].append(laptop.processor_brand)
        data['ram_memory'].append(laptop.ram_memory)
        data['primary_storage_capacity'].append(laptop.primary_storage_capacity)

    df = pd.DataFrame(data)
    
    print('DEFINES DF')
    
    df['features'] = df['brand'] + ' ' + df['model'] + ' ' + df['processor_brand'] + ' ' + df['ram_memory'].astype(str) + 'GB RAM ' + df['primary_storage_capacity'].astype(str) + 'GB SSD'
    
    df['features'] = df['features'].fillna('')
    
    print('RETURNAMOS')
    return df


def compute_tfidf_matrix(data):
    tfidf = TfidfVectorizer(stop_words='english')
    tfidf_matrix = tfidf.fit_transform(data['features'])
    return tfidf_matrix


def get_cosine_sim(matrix):
    cosine_sim = linear_kernel(matrix, matrix)
    return cosine_sim


def recommend_laptops(data, cosine_sim):
    print('ENTRANDO A RECOMEND_LAPOOPS')
    
    laptop_indices = list(data.index)
    sim_scores = cosine_sim[laptop_indices[0]]
    sorted_indices = sim_scores.argsort()[-11:-1]
    return data['model'].iloc[sorted_indices].tolist()


def get_recommendations(filters):
    print('CARGAMOS DATA')
    data = load_laptop_data(filters)
    print('DATA CARGADA')
    
    tfidf_matrix = compute_tfidf_matrix(data)
    cosine_sim = get_cosine_sim(tfidf_matrix)
    return recommend_laptops(data, cosine_sim)