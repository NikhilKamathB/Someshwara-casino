# Generated by Django 3.1 on 2021-10-05 06:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0011_auto_20210913_0749'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='currency',
            field=models.BigIntegerField(default=0),
        ),
    ]
