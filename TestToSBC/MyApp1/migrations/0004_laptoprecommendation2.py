# Generated by Django 5.0.6 on 2024-07-07 07:58

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('MyApp1', '0003_historial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='LaptopRecommendation2',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('brand', models.CharField(max_length=100)),
                ('model', models.CharField(max_length=100)),
                ('processor_brand', models.CharField(max_length=100)),
                ('processor_tier', models.CharField(max_length=100)),
                ('num_cores', models.IntegerField()),
                ('num_threads', models.IntegerField()),
                ('ram_memory', models.IntegerField()),
                ('primary_storage_type', models.CharField(max_length=50)),
                ('primary_storage_capacity', models.IntegerField()),
                ('secondary_storage_type', models.CharField(blank=True, max_length=50, null=True)),
                ('secondary_storage_capacity', models.IntegerField(blank=True, null=True)),
                ('gpu_brand', models.CharField(max_length=100)),
                ('gpu_type', models.CharField(max_length=100)),
                ('date_saved', models.DateTimeField(auto_now_add=True)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]