# Generated by Django 3.1 on 2021-10-02 04:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('misc', '0029_auto_20210930_2015'),
    ]

    operations = [
        migrations.AlterField(
            model_name='inapppurchase',
            name='reward',
            field=models.BigIntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='reward',
            name='amount',
            field=models.BigIntegerField(default=0),
        ),
    ]
