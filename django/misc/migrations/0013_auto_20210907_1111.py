# Generated by Django 3.1 on 2021-09-07 11:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('misc', '0012_auto_20210907_1110'),
    ]

    operations = [
        migrations.AlterField(
            model_name='transaction',
            name='receiver_ref_code',
            field=models.CharField(default='0', max_length=250),
            preserve_default=False,
        ),
    ]