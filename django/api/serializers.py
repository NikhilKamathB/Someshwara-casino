import random
import string
from misc.models import *
from accounts.models import PhoneVerification
from rest_framework import serializers
from rest_framework.authtoken.models import Token
from django.contrib.auth import get_user_model
from twilio.rest import Client
from .otp import *
from .exceptions import *
from accounts.models import UserCurrencyHistory


CustomUser = get_user_model()


class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = CustomUser
        fields = ['id', 'username', 'full_name', 'first_name', 'last_name', 'phone',
                  'avatar', 'avatar2', 'currency', 'level', 'is_bot', 'is_bot_playing', 'reference_code', 'initial_currency_awarded','won_currency','lose_currency']


class UserOTPSerializer(serializers.ModelSerializer):

    class Meta:
        model = CustomUser
        fields = ['id', 'username', 'phone', 'full_name']

    def to_internal_value(self, data):
        data['username'] = data['phone']
        # self.msg, _ = send_opt(phone=data['phone'])
        self.msg, lambda_response = invoke_lambda_send_sns_sms(
            phone=data['phone'])
        if lambda_response['StatusCode'] != 200:
            raise OPTFailedException("OTP Generation Failed.")
        return super().to_internal_value(data)

    def save(self, **kwargs):
        instance = super().save(**kwargs)
        _ = PhoneVerification.objects.create(user=instance, otp=self.msg)
        return instance


class TokenSerializer(serializers.ModelSerializer):

    class Meta:
        model = Token
        fields = ['key']


class BotUserSerializer(serializers.ModelSerializer):

    bot_token = serializers.SerializerMethodField()
    username = serializers.CharField(max_length=60, required=False)

    class Meta:
        model = CustomUser
        fields = ['id', 'username', 'full_name', 'first_name', 'last_name',
                  'avatar','avatar2', 'currency', 'level', 'is_bot', 'is_bot_playing', 'bot_token']

    def create(self, validated_data):
        user = CustomUser(**validated_data)
        user.is_bot = True
        user.set_password(''.join(random.choices(
            string.ascii_uppercase + string.digits, k=5)))
        user.save()
        token = Token.objects.create(user=user)
        return user

    def get_bot_token(self, obj):
        return TokenSerializer(Token.objects.get(user=obj)).data


class GuestUserSerializer(serializers.ModelSerializer):

    guest_token = serializers.SerializerMethodField()
    username = serializers.CharField(max_length=60, required=False)

    class Meta:
        model = CustomUser
        fields = ['id', 'username', 'full_name', 'first_name', 'last_name',
                  'avatar', 'avatar2', 'currency', 'level', 'is_bot', 'is_bot_playing', 'guest_token',]

    def create(self, validated_data):
        user = CustomUser(**validated_data)
        user.set_password(''.join(random.choices(
            string.ascii_uppercase + string.digits, k=5)))
        user.save()
        token = Token.objects.create(user=user)
        return user

    def get_guest_token(self, obj):
        return TokenSerializer(Token.objects.get(user=obj)).data


class InvitationSerializer(serializers.ModelSerializer):

    class Meta:
        model = Invitation
        fields = '__all__'


class RewardSerializer(serializers.ModelSerializer):

    class Meta:
        model = Reward
        fields = '__all__'


class GameSerializer(serializers.ModelSerializer):

    class Meta:
        model = Game
        fields = '__all__'


class GameTableTypeSerializer(serializers.ModelSerializer):

    class Meta:
        model = GameTableType
        fields = '__all__'


class RealtimeServerSerializer(serializers.ModelSerializer):

    class Meta:
        model = RealtimeServer
        fields = '__all__'


class GameTableSerializer(serializers.ModelSerializer):

    user_detail = serializers.SerializerMethodField()
    game_table_type_desc = serializers.SerializerMethodField()
    server_details = serializers.SerializerMethodField()

    class Meta:
        model = GameTable
        fields = '__all__'

    def get_user_detail(self, obj):
        request = self.context.get('request')
        if request:
            user_id = request.GET.get('user', None)
            if user_id:
                return {
                    'status': True,
                    'user': UserSerializer(CustomUser.objects.get(pk=user_id)).data
                }
            else:
                return None

    def get_game_table_type_desc(self, obj):
        qs = GameTableType.objects.filter(id=obj.game_table_type.id)
        return GameTableTypeSerializer(qs, many=True).data

    def get_server_details(self, obj):
        qs = RealtimeServer.objects.filter(id=obj.server_url.id)
        return RealtimeServerSerializer(qs, many=True).data


class GameTableAutoSerializer(serializers.ModelSerializer):

    class Meta:
        model = GameTable
        fields = ("game_table_type", )


class GameTableHistorySerializer(serializers.ModelSerializer):

    class Meta:
        model = GameTableHistory
        fields = '__all__'


class TransactionSerializer(serializers.ModelSerializer):

    class Meta:
        model = Transaction
        fields = '__all__'


# class GameServerTransactionSerializer(serializers.ModelSerializer):

#     class Meta:
#         model = GameServerTransaction
#         fields = '__all__'


class InappPurchaseSerializer(serializers.ModelSerializer):

    class Meta:
        model = InappPurchase
        fields = '__all__'


class LevelSerializer(serializers.ModelSerializer):

    class Meta:
        model = Level
        fields = '__all__'


class RTSSerializer(serializers.ModelSerializer):

    class Meta:
        model = RealtimeServer
        fields = "__all__"


class RoundSerializer(serializers.ModelSerializer):

    class Meta:
        model = Round
        fields = '__all__'


class UserCurrencyHistorySerializer(serializers.ModelSerializer):

    class Meta:
        model = UserCurrencyHistory
        fields = '__all__'