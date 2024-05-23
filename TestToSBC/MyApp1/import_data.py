import pandas as pd

from MyApp1.models import Laptop

def importar_datos_desde_csv(ruta_csv):
    df = pd.read_csv(ruta_csv, delimiter=';')
    for _, row in df.iterrows():
        Laptop.objects.create(
            index=row['index'],
            brand=row['brand'],
            model=row['Model'],
            price=row['Price'],  # Asegúrate de que el nombre de la columna coincida exactamente
            rating=row['Rating'],
            processor_brand=row['processor_brand'],
            processor_tier=row['processor_tier'],
            num_cores=row['num_cores'],
            num_threads=row['num_threads'],
            ram_memory=row['ram_memory'],
            primary_storage_type=row['primary_storage_type'],
            primary_storage_capacity=row['primary_storage_capacity'],
            secondary_storage_type=row.get('secondary_storage_type', None),
            secondary_storage_capacity=row.get('secondary_storage_capacity', None),
            gpu_brand=row.get('gpu_brand', None),
            gpu_type=row.get('gpu_type', None),
            is_touch_screen=row['is_touch_screen'],
            display_size=row['display_size'],
            resolution_width=row['resolution_width'],
            resolution_height=row['resolution_height'],
            os=row['OS'],
            year_of_warranty=row['year_of_warranty']
        )