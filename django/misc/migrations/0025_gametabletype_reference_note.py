# Generated by Django 3.1 on 2021-09-27 05:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('misc', '0024_gametabletype_max_users'),
    ]

    operations = [
        migrations.AddField(
            model_name='gametabletype',
            name='reference_note',
            field=models.TextField(blank=True, null=True),
        ),
    ]
