# Generated by Django 2.0.2 on 2018-05-01 21:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0019_auto_20180430_1104'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='enemies',
            field=models.CharField(default='', max_length=3000),
        ),
    ]
