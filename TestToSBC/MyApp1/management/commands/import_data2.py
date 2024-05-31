import csv
from django.core.management.base import BaseCommand
from MyApp1.models import Software

class Command(BaseCommand):
    help = 'Load data from CSV file'

    def handle(self, *args, **kwargs):
        #file_path = 'C:/Users/jeiso/OneDrive/Documentos/MEGA/año 5/Practicaprogramacion/djangojic/recomendacionesconsfotware.csv'
        file_path = 'C:/Users/edkac/PnodeJS/ProyectosDJango/lRecomender/TestToSBC/MyApp1/management/recomendacionesconsfotware.csv'
        try:
            with open(file_path, newline='', encoding='utf-8') as csvfile:
                reader = csv.DictReader(csvfile, delimiter=';')
                # Imprimir los encabezados para verificar
                print(f"CSV Headers: {reader.fieldnames}")
                
                for row in reader:
                    try:
                        Software.objects.create(
                            software=row['software'],
                            cpu_intel=row['CPU Intel'],
                            cpu_amd=row['CPU AMD'],
                            ram=int(row['RAM']),
                            ssd=int(row['SSD'])
                        )
                    except KeyError as e:
                        print(f"Missing key in row: {row} - {e}")
        except FileNotFoundError:
            print(f"File not found: {file_path}")
        except Exception as e:
            print(f"An error occurred: {e}")
        
        self.stdout.write(self.style.SUCCESS('Data loaded successfully'))