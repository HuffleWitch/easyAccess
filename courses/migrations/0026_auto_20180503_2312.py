# Generated by Django 2.0.2 on 2018-05-04 03:12

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0025_auto_20180503_2303'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='cap',
            field=models.IntegerField(default=0, validators=[django.core.validators.MaxValueValidator(85)]),
        ),
    ]
