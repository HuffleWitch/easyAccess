# Generated by Django 2.0.2 on 2018-04-05 22:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0015_auto_20180405_1752'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='ucs_time_date1',
            field=models.CharField(choices=[('MWF8', 'MWF 8:00 - 8:50 AM'), ('MWF9', 'MWF9'), ('MWF10', 'MWF10'), ('MWF11', 'MWF11'), ('MR121', 'MR121'), ('MR23', 'MR23'), ('MR34', 'MR34'), ('MW78', 'MW78'), ('TR910', 'TR910'), ('TR1011', 'TR1011'), ('TF12', 'TF12'), ('TF45', 'TF45')], max_length=10),
        ),
        migrations.AlterField(
            model_name='course',
            name='ucs_time_date2',
            field=models.CharField(choices=[('MWF8', 'MWF 8:00 - 8:50 AM'), ('MWF9', 'MWF9'), ('MWF10', 'MWF10'), ('MWF11', 'MWF11'), ('MR121', 'MR121'), ('MR23', 'MR23'), ('MR34', 'MR34'), ('MW78', 'MW78'), ('TR910', 'TR910'), ('TR1011', 'TR1011'), ('TF12', 'TF12'), ('TF45', 'TF45')], max_length=10),
        ),
        migrations.AlterField(
            model_name='course',
            name='ucs_time_date3',
            field=models.CharField(choices=[('MWF8', 'MWF 8:00 - 8:50 AM'), ('MWF9', 'MWF9'), ('MWF10', 'MWF10'), ('MWF11', 'MWF11'), ('MR121', 'MR121'), ('MR23', 'MR23'), ('MR34', 'MR34'), ('MW78', 'MW78'), ('TR910', 'TR910'), ('TR1011', 'TR1011'), ('TF12', 'TF12'), ('TF45', 'TF45')], max_length=10),
        ),
    ]
