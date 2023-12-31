# Generated by Django 3.1 on 2021-06-14 07:12

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('misc', '0005_auto_20210614_0658'),
    ]

    operations = [
        migrations.CreateModel(
            name='Round',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('result', models.JSONField(blank=True, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('game_table', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='misc.gametable')),
                ('players', models.ManyToManyField(blank=True, related_name='round_players_users', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
