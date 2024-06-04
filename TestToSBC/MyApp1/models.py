from django.db import models

#MODELO LAPTOPS = = ===== ===============================================================================

class Laptop (models.Model):
    index = models.IntegerField(primary_key=True)
    brand = models.CharField(max_length=100)
    model = models.CharField(max_length=100)
    price = models.FloatField()
    rating = models.FloatField()
    processor_brand = models.CharField(max_length=100)
    processor_tier = models.CharField(max_length=100)
    num_cores = models.IntegerField()
    num_threads = models.IntegerField()
    ram_memory = models.IntegerField()
    primary_storage_type = models.CharField(max_length=50)
    primary_storage_capacity = models.IntegerField()
    secondary_storage_type = models.CharField(max_length=50, null=True, blank=True)
    secondary_storage_capacity = models.IntegerField(null=True, blank=True)
    gpu_brand = models.CharField(max_length=50, null=True, blank=True)
    gpu_type = models.CharField(max_length=50, null=True, blank=True)
    is_touch_screen = models.BooleanField()
    display_size = models.FloatField()
    resolution_width = models.IntegerField()
    resolution_height = models.IntegerField()
    os = models.CharField(max_length=50)
    year_of_warranty = models.IntegerField()

    def __str__(self):
        return f"{self.brand} {self.model}"
    
    
    
#MODELO SOFTWARE = = ===== ===============================================================================
class Software(models.Model):
    software = models.CharField(max_length=100)
    cpu_intel = models.CharField(max_length=100, null=True, blank=True)
    cpu_amd = models.CharField(max_length=100, null=True, blank=True)
    ram = models.IntegerField(null=True, blank=True)
    ssd = models.IntegerField(null=True, blank=True)
    tipo = models.IntegerField(null=True, blank=True)  # Nuevo campo

    def __str__(self):
        return self.software
    
    
    
# MODELO DE MENSAJES
    
class Message(models.Model):

    TIP = 'Tip'
    INFO = 'Info'

    MESSAGE_TYPES = [
        (TIP, 'Tip'),
        (INFO, 'Info'),
    ]

    message_type = models.CharField(max_length=4, choices=MESSAGE_TYPES)
    content = models.TextField()

    def __str__(self):
        return f'{self.get_message_type_display()}: {self.content[:100]}'
