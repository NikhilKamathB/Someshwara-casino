# from django.conf import settings
# from django.contrib.auth import get_user_model
# User = get_user_model()

# def init_transaction(sender, instance, **kwargs):

#     from .models import Transaction

#     if not instance.is_superuser:
#         owner = User.objects.get(id=settings.CASINO_USER_ID)
#         transaction = Transaction.objects.create(sender=owner, receiver=instance, amount=100)
#         transaction.save()
