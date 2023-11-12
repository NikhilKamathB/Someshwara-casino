from misc.signals import *
from django.db import models
from django.db.models.signals import post_save
from django.contrib.auth.models import AbstractUser
from django.core.validators import RegexValidator


class User(AbstractUser):

    phone_regex = RegexValidator(regex=r'^\+?1?\d{9,15}$',message="Phone number must be entered in the format: '+999999999'. Up to 15 digits allowed.")

    full_name = models.CharField(max_length=250, null=True, blank=True)
    phone = models.CharField(validators=[phone_regex], max_length=17, null=True)
    # mobile = models.CharField(max_length=17, null=True, blank=True)
    avatar = models.CharField(max_length=200, null=True, blank=True)
    avatar2 = models.ImageField(max_length=200, upload_to='avatar/', null=True, blank=True)
    currency = models.BigIntegerField(default=0)
    level = models.IntegerField(default=0)
    is_bot = models.BooleanField(default=False)
    is_bot_playing = models.BooleanField(default=False)
    reference_code = models.CharField(max_length=250, null=True, blank=True, unique=True)
    initial_currency_awarded = models.BigIntegerField(default=0, null=True, blank=True)
    won_currency= models.BigIntegerField(default=0, null=True, blank=True)
    lose_currency= models.BigIntegerField(default=0, null=True, blank=True)
    
    def __str__(self):
        return self.username

    def ref_code(self):
        return f"{self.username[:2].upper()}{self.pk:05}"

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)
      
# post_save.connect(init_transaction, sender=User)

class PhoneVerification(models.Model):

    user = models.OneToOneField(User, on_delete=models.CASCADE)
    otp = models.CharField(max_length=20)
    is_verified = models.BooleanField(default=False)

    def __str__(self) -> str:
        return self.user.username

class UserCurrencyHistory(models.Model):
    user= models.ForeignKey(User, on_delete=models.CASCADE, related_name='currency_history_user')
    round= models.ForeignKey('misc.Round', on_delete=models.CASCADE, related_name='currency_history_round')
    won_currency= models.BigIntegerField(default=0, null=True, blank=True)
    lose_currency= models.BigIntegerField(default=0, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
