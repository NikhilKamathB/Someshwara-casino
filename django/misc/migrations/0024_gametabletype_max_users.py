# Generated by Django 3.1 on 2021-09-24 06:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('misc', '0023_auto_20210920_0826'),
    ]

    operations = [
        migrations.AddField(
            model_name='gametabletype',
            name='max_users',
            field=models.IntegerField(default=4),
        ),
    ]
