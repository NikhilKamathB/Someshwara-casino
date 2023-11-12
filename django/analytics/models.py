from django.db import models
from  accounts.models import User

class Tx(models.Model):
    class Meta:
        managed = False 

    sent = models.BigIntegerField()
    received = models.BigIntegerField()
    date= models.DateField(primary_key=True)


class UserSummary(User):
    class Meta:
        proxy = True
        verbose_name = 'User Registration'
        verbose_name_plural = 'User Registrations'
    
