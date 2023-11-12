from django.db import models
from django.conf import settings
from django.core.validators import MinValueValidator, MaxValueValidator
from django.contrib.auth import get_user_model
from django.db.models import Count
from django.db import transaction
from .exceptions import *

User = get_user_model()


class RealtimeServer(models.Model):

    url = models.CharField(max_length=5000)
    max_rooms = models.IntegerField(default=50)
    game = models.ForeignKey(
        'Game', on_delete=models.CASCADE, related_name='rts_game', null=True)
    is_closed = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.url


class Invitation(models.Model):

    sender = models.ForeignKey(
        User, on_delete=models.DO_NOTHING, related_name='invitation_sender')
    receiver = models.ForeignKey(
        User, on_delete=models.DO_NOTHING, related_name='invitation_receiver')
    created_at = models.DateTimeField(auto_now_add=True)


class Reward(models.Model):

    title = models.CharField(max_length=100)
    amount = models.BigIntegerField(default=0)
    created_at = models.DateTimeField(auto_now_add=True)


class Game(models.Model):

    title = models.CharField(max_length=100)
    description = models.CharField(max_length=1500, null=True, blank=True)
    winning_percentage = models.FloatField(default=0.5, help_text="This is house winning percentage", validators=[
                                           MinValueValidator(0.0), MaxValueValidator(1.0)])
    image = models.URLField(max_length=5000, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.title}"


class GameTableType(models.Model):

    title = models.CharField(max_length=100)
    reference_note = models.TextField(null=True, blank=True)
    image = models.URLField(max_length=5000, null=True, blank=True)
    min_currency = models.BigIntegerField(default=0)
    max_currency = models.BigIntegerField(default=1000)
    max_users = models.IntegerField(default=4)
    extra_1 = models.CharField(max_length=100, null=True, blank=True)
    extra_2 = models.CharField(max_length=100, null=True, blank=True)
    extra_3 = models.CharField(max_length=100, null=True, blank=True)
    game = models.ForeignKey(
        Game, on_delete=models.CASCADE, related_name='gametabletype_game')
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.title}"


class GameTable(models.Model):
    game_table_type = models.ForeignKey(
        GameTableType, on_delete=models.CASCADE)
    server_url = models.ForeignKey(
        RealtimeServer, on_delete=models.SET_NULL, null=True, blank=True)
    joined_users = models.ManyToManyField(
        User, related_name="joined_users", blank=True)
    is_closed = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.game_table_type}"

    # TODO: disable deletion of room
    # TODO: if table is_closed everyone should unjoin
    # TODO: if table is_closed prevent from opening


class GameTableHistory(models.Model):
    game_table = models.ForeignKey(GameTable, on_delete=models.CASCADE)
    data = models.TextField(max_length=50000)
    created_at = models.DateTimeField(auto_now_add=True)


class InappPurchase(models.Model):
    title = models.CharField(max_length=100)
    image = models.URLField(max_length=5000, null=True, blank=True)
    sku = models.CharField(max_length=100)
    reward = models.BigIntegerField(default=0, null=False, blank=False)
    game = models.ForeignKey(Game, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.sku} ({self.title})"


class Level(models.Model):
    number = models.IntegerField(default=0, null=False, blank=False)
    points = models.IntegerField(default=0, null=False, blank=False)
    reward = models.BigIntegerField(default=0, null=False, blank=False)
    game = models.ForeignKey(Game, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Level {self.number}"


class Round(models.Model):
    print("class round called")
    game_table = models.ForeignKey(GameTable, on_delete=models.SET_NULL, null=True)
    players = models.ManyToManyField(
        User, related_name="round_players_users", blank=True)
    result = models.JSONField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        print("class round str called")
        return str(self.id)


# class Transaction(models.Model):

#     sender = models.ForeignKey(User, on_delete=models.DO_NOTHING,
#                                related_name='transaction_sender', null=True, blank=True)
#     receiver = models.ForeignKey(User, on_delete=models.DO_NOTHING,
#                                  related_name='transaction_receiver', null=True, blank=True)
#     reward = models.ForeignKey(Reward, on_delete=models.DO_NOTHING,
#                                related_name='transaction_reward', null=True, blank=True)
#     round = models.ForeignKey(
#         Round, on_delete=models.DO_NOTHING, null=True, blank=True)
#     amount = models.IntegerField(default=0)
#     receiver_ref_code = models.CharField(max_length=250)
#     bank_transaction_id = models.CharField(
#         max_length=250, null=True, blank=True)
#     # operator_order_number = models.CharField(max_length=100, null=True, blank=True)
#     # TODO: validation . make sure reward and game is not set. both together.
#     created_at = models.DateTimeField(auto_now_add=True)

#     # def save(self, *args, **kwargs):
#     #
#     #     if self.pk:
#     #         raise IllegalOperation("Transaction cannot be edited/deleted.")
#     #     with transaction.atomic():
#     #         sender = User.objects.get(id=self.sender.id)
#     #         if sender.currency < self.amount and self.sender.id != settings.CASINO_USER_ID:
#     #             raise InsufficientFund("490 Insufficient Balance.")
#     #
#     #         receiver = User.objects.get(reference_code=self.receiver_ref_code)
#     #         sender.currency -= self.amount
#     #         receiver.currency += self.amount
#     #         sender.save()
#     #         receiver.save()
#     #         super().save(*args, **kwargs)

#     def __str__(self):
#         return f"TX {self.sender} -> {self.receiver} ({self.amount})"


class Transaction(models.Model):

    sender = models.ForeignKey(User, on_delete=models.DO_NOTHING,
                               related_name='transaction_sender', null=True, blank=True)
    receiver = models.ForeignKey(User, on_delete=models.DO_NOTHING,
                                 related_name='transaction_receiver', null=True, blank=True)
    reward = models.ForeignKey(Reward, on_delete=models.DO_NOTHING,
                               related_name='transaction_reward', null=True, blank=True)
    round = models.ForeignKey(
        Round, on_delete=models.DO_NOTHING, null=True, blank=True)
    amount = models.BigIntegerField(default=0)
    receiver_ref_code = models.CharField(max_length=250, null=True, blank=True)
    bank_transaction_id = models.CharField(
        max_length=250, null=True, blank=True)
    # operator_order_number = models.CharField(max_length=100, null=True, blank=True)
    # TODO: validation . make sure reward and game is not set. both together.
    created_at = models.DateTimeField(auto_now_add=True)

    def save(self, *args, **kwargs):
    
        if self.pk:
            raise IllegalOperation("Transaction cannot be edited/deleted.")
        with transaction.atomic():
            if self.sender.currency < self.amount and self.sender.id != settings.CASINO_USER_ID:
                raise InsufficientFund("490 Insufficient Balance.")
            self.sender.currency -= self.amount
            self.receiver.currency += self.amount
            self.sender.save()
            self.receiver.save()
            super().save(*args, **kwargs)

    def __str__(self):
        return f"TX {self.sender} -> {self.receiver} ({self.amount})"


class ThirdPartyGameMakerModel(models.Model):

    class Meta:
        verbose_name = "Third Party Game Maker"

    name = models.CharField(max_length=250)

    def __str__(self) -> str:
        return self.name


class OrderID(models.Model):

    class Meta:
        verbose_name = "Order ID"

    game_maker = models.ForeignKey(
        ThirdPartyGameMakerModel, on_delete=models.DO_NOTHING, related_name="game_maker_order_id")
    transaction = models.ForeignKey(
        Transaction, on_delete=models.DO_NOTHING, related_name="transaction_order_id")
    order_id = models.CharField(max_length=250)
    response = models.JSONField(null=True, blank=True)

    def __str__(self) -> str:
        return self.game_maker.name + '_' + self.order_id


# class GameServerTransaction(models.Model):

#     sender = models.ForeignKey(User, on_delete=models.DO_NOTHING, related_name='game_server_transaction_sender', null=True, blank=True)
#     receiver = models.ForeignKey(User, on_delete=models.DO_NOTHING, related_name='game_server_transaction_receiver', null=True, blank=True)
#     reward = models.ForeignKey(Reward, on_delete=models.DO_NOTHING, related_name='game_server_transaction_reward', null=True, blank=True)
#     round = models.ForeignKey(Round, on_delete=models.DO_NOTHING, null=True, blank=True)
#     amount = models.IntegerField(default=0)
#     receiver_ref_code = models.CharField(max_length=250, null=True, blank=True)
#     bank_transaction_id = models.CharField(max_length=250, null=True, blank=True)
#     # operator_order_number = models.CharField(max_length=100, null=True, blank=True)
#     #TODO: validation . make sure reward and game is not set. both together.
#     created_at = models.DateTimeField(auto_now_add=True)

#     # def save(self, *args, **kwargs):
#     #
#     #     if self.pk:
#     #         raise IllegalOperation("Transaction cannot be edited/deleted.")
#     #     with transaction.atomic():
#     #         print(">>", self.sender.id)
#     #         sender = User.objects.get(id=self.sender.id)
#     #         if sender.currency < self.amount and self.sender != settings.CASINO_USER_ID:
#     #             raise InsufficientFund("490 Insufficient Balance.")
#     #
#     #         receiver = User.objects.get(id=self.receiver)
#     #         sender.currency -= self.amount
#     #         receiver.currency += self.amount
#     #         sender.save()
#     #         receiver.save()
#     #         super().save(*args, **kwargs)

# class GameServerTransaction(models.Model):

#     sender = models.ForeignKey(User, on_delete=models.DO_NOTHING,
#                                related_name='game_server_transaction_sender', null=True, blank=True)
#     receiver = models.ForeignKey(User, on_delete=models.DO_NOTHING,
#                                  related_name='game_server_transaction_receiver', null=True, blank=True)
#     reward = models.ForeignKey(Reward, on_delete=models.DO_NOTHING,
#                                related_name='game_server_transaction_reward', null=True, blank=True)
#     round = models.ForeignKey(
#         Round, on_delete=models.DO_NOTHING, null=True, blank=True)
#     amount = models.IntegerField(default=0)
#     receiver_ref_code = models.CharField(max_length=250, null=True, blank=True)
#     bank_transaction_id = models.CharField(
#         max_length=250, null=True, blank=True)
#     # operator_order_number = models.CharField(max_length=100, null=True, blank=True)
#     # TODO: validation . make sure reward and game is not set. both together.
#     created_at = models.DateTimeField(auto_now_add=True)

#     def save(self, *args, **kwargs):
#         if self.pk:
#             raise IllegalOperation("Transaction cannot be edited/deleted.")
#         with transaction.atomic():
#             if self.sender.currency < self.amount and self.sender != settings.CASINO_USER_ID:
#                 raise InsufficientFund("490 Insufficient Balance.")
#             self.sender.currency -= self.amount
#             self.receiver.currency += self.amount
#             self.sender.save()
#             self.receiver.save()
#             super().save(*args, **kwargs)

#     def __str__(self):
#         return f"TX {self.sender} -> {self.receiver} ({self.amount})"
