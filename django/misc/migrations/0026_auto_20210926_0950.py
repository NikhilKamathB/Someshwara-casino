# Generated by Django 3.1 on 2021-09-26 09:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('misc', '0025_auto_20210926_0943'),
    ]

    operations = [
        migrations.AddField(
            model_name='gameservertransaction',
            name='receiver_ref_code',
            field=models.CharField(blank=True, max_length=250, null=True),
        ),
        migrations.AddField(
            model_name='transaction',
            name='receiver_ref_code',
            field=models.CharField(blank=True, max_length=250, null=True),
        ),
    ]
