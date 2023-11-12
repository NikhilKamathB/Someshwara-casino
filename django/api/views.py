import time
import logging
import random
import string
import requests
import hashlib
from requests.api import head
from rest_framework import response
from rest_framework_api_key.permissions import HasAPIKey
from django.conf import settings

from misc.models import *
from .serializers import *
from django.conf import settings
from rest_framework.generics import *
from allauth.socialaccount.providers.facebook.views import FacebookOAuth2Adapter
from dj_rest_auth.registration.views import SocialLoginView
from rest_framework.permissions import IsAuthenticated, AllowAny
from rest_framework.views import APIView
from django.conf import settings
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from django.contrib.auth import get_user_model
from twilio.rest import Client 
from django.shortcuts import get_object_or_404
from rest_framework.authtoken.models import Token
from django.core import serializers
from django.db import transaction
from .otp import *
from .permissions import *
from rest_framework.schemas.openapi import AutoSchema
from django.contrib.auth.models import Group
from rest_framework import viewsets

from accounts.models import  UserCurrencyHistory


CustomUser = get_user_model()


class FacebookLogin(SocialLoginView):
    adapter_class = FacebookOAuth2Adapter


class InvitationListAPIView(ListAPIView):

    schema = AutoSchema(tags=['Invitation'], operation_id_base='InvitationListAPIView')
    queryset = Invitation.objects.all()
    serializer_class = InvitationSerializer


class InvitationCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['Invitation'], operation_id_base='InvitationCreateAPIView')
    queryset = Invitation.objects.all()
    serializer_class = InvitationSerializer


class InvitationRetrieveAPIView(RetrieveAPIView):

    schema = AutoSchema(tags=['Invitation'], operation_id_base='InvitationRetrieveAPIView')
    queryset = Invitation.objects.all()
    serializer_class = InvitationSerializer


class InvitationUpdateAPIView(UpdateAPIView):

    schema = AutoSchema(tags=['Invitation'], operation_id_base='InvitationUpdateAPIView')
    queryset = Invitation.objects.all()
    serializer_class = InvitationSerializer


class InvitationDeleteAPIView(DestroyAPIView):

    schema = AutoSchema(tags=['Invitation'], operation_id_base='InvitationDeleteAPIView')
    queryset = Invitation.objects.all()
    serializer_class = InvitationSerializer


class RewardListAPIView(ListAPIView):

    schema = AutoSchema(tags=['Reward'], operation_id_base='RewardListAPIView')
    queryset = Reward.objects.all()
    serializer_class = RewardSerializer


class RewardCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['Reward'], operation_id_base='RewardCreateAPIView')
    queryset = Reward.objects.all()
    serializer_class = RewardSerializer


class RewardRetrieveAPIView(RetrieveAPIView):

    schema = AutoSchema(tags=['Reward'], operation_id_base='RewardRetrieveAPIView')
    queryset = Reward.objects.all()
    serializer_class = RewardSerializer


class RewardUpdateAPIView(UpdateAPIView):

    schema = AutoSchema(tags=['Reward'], operation_id_base='RewardUpdateAPIView')
    queryset = Reward.objects.all()
    serializer_class = RewardSerializer


class RewardDeleteAPIView(DestroyAPIView):

    schema = AutoSchema(tags=['Reward'], operation_id_base='RewardDeleteAPIView')
    queryset = Reward.objects.all()
    serializer_class = RewardSerializer


class GameListAPIView(ListAPIView):
    permission_classes=( HasAPIKey|IsAuthenticated, )
    schema = AutoSchema(tags=['Game'], operation_id_base='GameListAPIView')
    queryset = Game.objects.all()
    serializer_class = GameSerializer
    


class GameCreateAPIView(CreateAPIView):
    permission_classes=( HasAPIKey|IsAuthenticated, )
    schema = AutoSchema(tags=['Game'], operation_id_base='GameCreateAPIView')
    queryset = Game.objects.all()
    serializer_class = GameSerializer


class GameRetrieveAPIView(RetrieveAPIView):
    permission_classes=( HasAPIKey|IsAuthenticated, )
    schema = AutoSchema(tags=['Game'], operation_id_base='GameRetrieveAPIView')
    queryset = Game.objects.all()
    serializer_class = GameSerializer


class GameUpdateAPIView(UpdateAPIView):
    permission_classes=( HasAPIKey|IsAuthenticated, )
    schema = AutoSchema(tags=['Game'], operation_id_base='GameUpdateAPIView')
    queryset = Game.objects.all()
    serializer_class = GameSerializer


class GameDeleteAPIView(DestroyAPIView):
    permission_classes=( HasAPIKey|IsAuthenticated, )
    schema = AutoSchema(tags=['Game'], operation_id_base='GameDeleteAPIView')
    queryset = Game.objects.all()
    serializer_class = GameSerializer 
    

class GameTableTypeListAPIView(ListAPIView):

    schema = AutoSchema(tags=['Game Table Type'], operation_id_base='GameTableTypeListAPIView')
    serializer_class = GameTableTypeSerializer

    def get_queryset(self):
        game_id = self.request.GET.get('game_id')
        if game_id:
            return GameTableType.objects.filter(game=game_id)
        return GameTableType.objects.all()


class GameTableTypeCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['Game Table Type'], operation_id_base='GameTableTypeCreateAPIView')
    queryset = GameTableType.objects.all()
    serializer_class = GameTableTypeSerializer


class GameTableTypeRetrieveAPIView(RetrieveAPIView):

    schema = AutoSchema(tags=['Game Table Type'], operation_id_base='GameTableTypeRetrieveAPIView')
    queryset = GameTableType.objects.all()
    serializer_class = GameTableTypeSerializer


class GameTableTypeUpdateAPIView(UpdateAPIView):

    schema = AutoSchema(tags=['Game Table Type'], operation_id_base='GameTableTypeUpdateAPIView')
    queryset = GameTableType.objects.all()
    serializer_class = GameTableTypeSerializer


class GameTableTypeDeleteAPIView(DestroyAPIView):

    schema = AutoSchema(tags=['Game Table Type'], operation_id_base='GameTableTypeDeleteAPIView')
    queryset = GameTableType.objects.all()
    serializer_class = GameTableTypeSerializer 


class GameTableListAPIView(ListAPIView):

    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableListAPIView')
    queryset = GameTable.objects.all()
    serializer_class = GameTableSerializer


class GameTableUserListAPIView(ListAPIView):

    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableUserListAPIView')
    serializer_class = GameTableSerializer

    def get_queryset(self):
        user = self.request.user.id if self.request.GET.get('user_id') is None else self.request.GET.get('user_id')
        return GameTable.objects.filter(joined_users__in=[user])


class GameTableCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableCreateAPIView')
    queryset = GameTable.objects.all()
    serializer_class = GameTableSerializer


class GameTableRetrieveAPIView(RetrieveAPIView):
    permission_classes = (HasAPIKey | IsAuthenticated,)

    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableRetrieveAPIView')
    queryset = GameTable.objects.all()
    serializer_class = GameTableSerializer


class GameTableUpdateAPIView(UpdateAPIView):

    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableUpdateAPIView')
    queryset = GameTable.objects.all()
    serializer_class = GameTableSerializer


class GameTableDeleteAPIView(DestroyAPIView):

    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableDeleteAPIView')
    queryset = GameTable.objects.all()
    serializer_class = GameTableSerializer 


class GameTableHistroyListAPIView(ListAPIView):

    schema = AutoSchema(tags=['Game Table History'], operation_id_base='GameTableHistroyListAPIView')
    queryset = GameTableHistory.objects.all()
    serializer_class = GameTableHistorySerializer


class GameTableHistroyCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['Game Table History'], operation_id_base='GameTableHistroyCreateAPIView')
    queryset = GameTableHistory.objects.all()
    serializer_class = GameTableHistorySerializer


class GameTableHistroyRetrieveAPIView(RetrieveAPIView):

    schema = AutoSchema(tags=['Game Table History'], operation_id_base='GameTableHistroyRetrieveAPIView')
    queryset = GameTableHistory.objects.all()
    serializer_class = GameTableHistorySerializer


class GameTableHistroyUpdateAPIView(UpdateAPIView):

    schema = AutoSchema(tags=['Game Table History'], operation_id_base='GameTableHistroyUpdateAPIView')
    queryset = GameTableHistory.objects.all()
    serializer_class = GameTableHistorySerializer


class GameTableHistroyDeleteAPIView(DestroyAPIView):

    schema = AutoSchema(tags=['Game Table History'], operation_id_base='GameTableHistroyDeleteAPIView')
    queryset = GameTableHistory.objects.all()
    serializer_class = GameTableHistorySerializer 


class TransactionListAPIView(ListAPIView):

    schema = AutoSchema(tags=['Transaction'], operation_id_base='TransactionListAPIView')
    queryset = Transaction.objects.all()
    serializer_class = TransactionSerializer


class TransactionCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['Transaction'], operation_id_base='TransactionCreateAPIView')
    queryset = Transaction.objects.all()
    serializer_class = TransactionSerializer
    permission_classes = ( HasAPIKey|IsAuthenticated, )

    def create(self, request, *args, **kwargs):
        if not request.data.get('receiver') and not request.data.get('receiver_ref_code'):
            return Response({
                    'status': 'Error',
                    'message': "Either provide receiver or receiver_ref_code"
                }, status=status.HTTP_400_BAD_REQUEST)
        if request.headers['Authorization'].startswith("Api-Key"):
            sender_id =  request.data.get('sender')
        else:
            sender = CustomUser.objects.get(id=request.user.id)
            if sender.groups.filter(name=settings.TRANSACTION_GROUP).exists():
                sender_id = settings.CASINO_USER_ID
            else:
                sender_id = request.user.id
        receiver_id = request.data.get('receiver') if request.data.get('receiver', None) else User.objects.get(reference_code=request.data.get('receiver_ref_code')).id
        request_data = request.data
        request_data['sender'] = sender_id
        request_data['receiver'] = receiver_id
        round = request.data.get('round', 0)
        amount = request.data.get('amount', 0)
        serializer = self.get_serializer(data=request_data)
        if serializer.is_valid(raise_exception=False):
            try:
                self.perform_create(serializer)

                if(round > 0 and amount > 0):
                    # round > 0 means, transaction is due to game play
                    userid = ""
                    win_currency = 0
                    lose_currency = 0                    
                    if(sender_id == settings.CASINO_USER_ID):
                        # means admin is sending money to user in game play, so its a gain currency
                        # add amount to win_currency of the reciever_id    
                        userid = receiver_id
                        win_currency = amount
                    else:
                        # means user is sending money to admin in game play, so its a lose currency
                        # add amount to lose_currency of the sender_id
                        userid = sender_id
                        lose_currency = amount
                        
                    # update user by adding win_currency and lose_currency
                    user_obj= CustomUser.objects.get(id=userid)
                    user_obj.won_currency= user_obj.won_currency+win_currency
                    user_obj.lose_currency= user_obj.lose_currency+lose_currency
                    user_obj.save()

                headers = self.get_success_headers(serializer.data)
                return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)
            except Exception as e:
                return Response({
                    'status': 'Error',
                    'message': f"{e}"
                }, status=status.HTTP_400_BAD_REQUEST)
        return Response({
                    'status': 'Error',
                    'message': "Couldn't save."
                }, status=status.HTTP_400_BAD_REQUEST)


class TransactionRetrieveAPIView(RetrieveAPIView):

    schema = AutoSchema(tags=['Transaction'], operation_id_base='TransactionRetrieveAPIView')
    queryset = Transaction.objects.all()
    serializer_class = TransactionSerializer


class TransactionUpdateAPIView(UpdateAPIView):

    schema = AutoSchema(tags=['Transaction'], operation_id_base='TransactionUpdateAPIView')
    queryset = Transaction.objects.all()
    serializer_class = TransactionSerializer


class TransactionDeleteAPIView(DestroyAPIView):

    schema = AutoSchema(tags=['Transaction'], operation_id_base='TransactionDeleteAPIView')
    queryset = Transaction.objects.all()
    serializer_class = TransactionSerializer 


class InappPurchaseListAPIView(ListAPIView):

    schema = AutoSchema(tags=['Inapp Purchase'], operation_id_base='InappPurchaseListAPIView')
    queryset = InappPurchase.objects.all()
    serializer_class = InappPurchaseSerializer


class InappPurchaseCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['Inapp Purchase'], operation_id_base='InappPurchaseCreateAPIView')
    queryset = InappPurchase.objects.all()
    serializer_class = InappPurchaseSerializer

    def post(self, request, *args, **kwargs):
        # _ = Transaction.objects.create(
        #     sender = CustomUser.objects.get(pk=settings.CASINO_USER_ID),
        #     receiver = request.user,
        #     amount = request.data['currency']
        # )
        return super().post(request, *args, **kwargs)


class InappPurchaseRetrieveAPIView(RetrieveAPIView):

    schema = AutoSchema(tags=['Inapp Purchase'], operation_id_base='InappPurchaseRetrieveAPIView')
    queryset = InappPurchase.objects.all()
    serializer_class = InappPurchaseSerializer


class InappPurchaseUpdateAPIView(UpdateAPIView):

    schema = AutoSchema(tags=['Inapp Purchase'], operation_id_base='InappPurchaseUpdateAPIView')
    queryset = InappPurchase.objects.all()
    serializer_class = InappPurchaseSerializer


class InappPurchaseDeleteAPIView(DestroyAPIView):

    schema = AutoSchema(tags=['Inapp Purchase'], operation_id_base='InappPurchaseDeleteAPIView')
    queryset = InappPurchase.objects.all()
    serializer_class = InappPurchaseSerializer


class LevelListAPIView(ListAPIView):

    schema = AutoSchema(tags=['Level'], operation_id_base='LevelListAPIView')
    queryset = Level.objects.all()
    serializer_class = LevelSerializer


class LevelCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['Level'], operation_id_base='LevelCreateAPIView')
    queryset = Level.objects.all()
    serializer_class = LevelSerializer


class LevelRetrieveAPIView(RetrieveAPIView):

    schema = AutoSchema(tags=['Level'], operation_id_base='LevelRetrieveAPIView')
    queryset = Level.objects.all()
    serializer_class = LevelSerializer


class LevelUpdateAPIView(UpdateAPIView):

    schema = AutoSchema(tags=['Level'], operation_id_base='LevelUpdateAPIView')
    queryset = Level.objects.all()
    serializer_class = LevelSerializer


class LevelDeleteAPIView(DestroyAPIView):

    schema = AutoSchema(tags=['Level'], operation_id_base='LevelDeleteAPIView')
    queryset = Level.objects.all()
    serializer_class = LevelSerializer


class RTSListAPIView(ListAPIView):

    schema = AutoSchema(tags=['RTS'], operation_id_base='RTSListAPIView')
    queryset = RealtimeServer.objects.all()
    serializer_class = RTSSerializer


class RTSCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['RTS'], operation_id_base='RTSCreateAPIView')
    queryset = RealtimeServer.objects.all()
    serializer_class = RTSSerializer


class RTSRetrieveAPIView(RetrieveAPIView):

    schema = AutoSchema(tags=['RTS'], operation_id_base='RTSRetrieveAPIView')
    queryset = RealtimeServer.objects.all()
    serializer_class = RTSSerializer


class RTSUpdateAPIView(UpdateAPIView):

    schema = AutoSchema(tags=['RTS'], operation_id_base='RTSUpdateAPIView')
    queryset = RealtimeServer.objects.all()
    serializer_class = RTSSerializer


class RTSDeleteAPIView(DestroyAPIView):

    schema = AutoSchema(tags=['RTS'], operation_id_base='RTSDeleteAPIView')
    queryset = RealtimeServer.objects.all()
    serializer_class = RTSSerializer


class RoundListAPIView(ListAPIView):

    schema = AutoSchema(tags=['Round'], operation_id_base='RoundListAPIView')
    queryset = Round.objects.all()
    serializer_class = RoundSerializer


class RoundCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['Round'], operation_id_base='RoundCreateAPIView')
    queryset = Round.objects.all()
    serializer_class = RoundSerializer


class RoundRetrieveAPIView(RetrieveAPIView):

    schema = AutoSchema(tags=['Round'], operation_id_base='RoundRetrieveAPIView')
    queryset = Round.objects.all()
    serializer_class = RoundSerializer


class RoundUpdateAPIView(UpdateAPIView):

    schema = AutoSchema(tags=['Round'], operation_id_base='RoundUpdateAPIView')
    queryset = Round.objects.all()
    serializer_class = RoundSerializer


class RoundDeleteAPIView(DestroyAPIView):

    schema = AutoSchema(tags=['Round'], operation_id_base='RoundDeleteAPIView')
    queryset = Round.objects.all()
    serializer_class = RoundSerializer


class GameTableAutoLeaveAPIView(APIView):

    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableAutoLeaveAPIView')

    def post(self, request, format=None):
        # tablesr = GameTableAutoSerializer(data=request.data)
        # if not tablesr.is_valid():
        #     return Response(tablesr.errors, status=status.HTTP_400_BAD_REQUEST)
        #find the users current game table
        # mytables = GameTable.objects.filter(is_closed=False, game_table_type__in=[tablesr.validated_data["game_table_type"]], joined_users__in=[request.user.id])
        mytables = GameTable.objects.filter(is_closed=False, joined_users__in=[request.user.id])
        if len(mytables) > 0:
            for tab in mytables:
                logging.info("user %s leaving table %s", request.user, tab.id)
                if tab.joined_users.count() == 1:
                    tab.delete()
                    continue
                tab.joined_users.remove(request.user)
                tab.save()
        return Response(
                {
                    "status": 200,
                    "success": True,
                    "Message": "Removed from all tables"
                },
                status=status.HTTP_200_OK)


class GameTableAutoJoinTableAPIView(APIView):

    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableAutoJoinTableAPIView')

    def post(self, request, format=None):
        # AutoLeaving the game_table before auto join
        mytables = GameTable.objects.filter(is_closed=False, joined_users__in=[request.user.id])
        if len(mytables) > 0:
            for tab in mytables:
                if tab.joined_users.count() == 1:
                    tab.delete()
                    continue
                logging.info("user %s leaving table %s", request.user, tab.id)
                tab.joined_users.remove(request.user)
                tab.save()
        tablesr = GameTableAutoSerializer(data=request.data)
        if not tablesr.is_valid():
            return Response(tablesr.errors, status=status.HTTP_400_BAD_REQUEST)
        #find the users current game table
        # game = Game.objects.get(pk=request.data.get('game_id'))
        # mytables = GameTable.objects.filter(is_closed=False, game_table_type__in=[tablesr.validated_data["game_table_type"]], joined_users__in=[request.user.id]).count() 
        # if mytables > 0:
        #     #if user is already playing another table. ask him to leave before autojoin.
        #     return Response(
        #         {
        #             "status": 400,
        #             "success": False,
        #             "Message": "Please leave the existing table."
        #         },
        #         status=status.HTTP_400_BAD_REQUEST)

        # 1 - find free gametable for that game table type
        # 2 - if no table :
        #         find free rts server
        #         if no server
        #             return 497
        #         create game table for the given table type and assign it to rts server.
        #     else:
        #         add user to game table and return data

        #find open game table with less than 5 at the table 
        gameobjanns = GameTable.objects.annotate(num_joined=Count('joined_users'))
        gtt_max_users = GameTableType.objects.get(id=request.data['game_table_type']).max_users
        res = gameobjanns.filter(is_closed=False, num_joined__lt = gtt_max_users, game_table_type__in = [tablesr.validated_data["game_table_type"]]).order_by('-num_joined')
        table = res.first()
        if table is None:
            flag = True
            # rts = RealtimeServer.objects.filter(game=obj.game_table_type.game)
            rts = RealtimeServer.objects.all()
            for i in rts:
                if i.max_rooms <= GameTable.objects.filter(server_url=i).count():
                    continue
                else:
                    table = tablesr.save()
                    table.server_url = i
                    flag = False
                    break
            if flag:
                return Response(
                        {
                    "status": 491,
                    "success": False,
                        "Message": "Too many instances on RTS."
                    },
                    status=491)
            #there is no game table. create a new game table and then join the user to the table.           
            obj = GameTable.objects.filter(game_table_type__in = [tablesr.validated_data["game_table_type"]]).first()
            if obj is None:
                obj = GameTable.objects.create(game_table_type=tablesr.validated_data["game_table_type"])
        table.joined_users.add(request.user)
        table.save()
        #TODO: race condition, do not allow max_users to cross. 
        outputsr = GameTableSerializer(instance=table)
        return Response(outputsr.data)



from django_filters import rest_framework as filters
class UserListAPIView(ListAPIView):

    schema = AutoSchema(tags=['User'], operation_id_base='UserListAPIView')
    serializer_class = UserSerializer
    
    filter_backends = (filters.DjangoFilterBackend,)
    filterset_fields = ('reference_code',)


    def get_queryset(self):
        return CustomUser.objects.filter(is_bot=False)


class UserRetrieveAPIView(RetrieveAPIView):

    schema = AutoSchema(tags=['User'], operation_id_base='UserRetrieveAPIView')
    serializer_class = UserSerializer
    queryset = CustomUser.objects.all()

    # def get_queryset(self):
    #     user_id = self.request.GET.get('user_id')
    #     return CustomUser.objects.get(pk=user_id) if user_id is not None else self.request.user


class UserUpdateAPIView(UpdateAPIView):

    schema = AutoSchema(tags=['User'], operation_id_base='UserUpdateAPIView')
    queryset = CustomUser.objects.all()
    serializer_class = UserSerializer
    permission_classes = [IsOwnerOrReadOnly]

    @staticmethod
    def generate_ref_code(self, request, *args, **kwargs):
        existing_reference_code = CustomUser.objects.get(id=kwargs['pk']).reference_code

        if 'full_name' in request.data and not existing_reference_code:
            req_full_name = request.data['full_name']
            if len(req_full_name) < 4:
                req_full_name_len = len(req_full_name)
                random_chars = ''.join(random.choice(string.ascii_uppercase) for i in range(4-req_full_name_len))
                req_full_name = req_full_name + random_chars
                name_appender = req_full_name
            else:
                name_appender = str(request.data['full_name']).replace(' ', '')[:4]
            sequence_appender = random.randint(0, 9999)
            sequence_appender = str(sequence_appender).zfill(4)
            reference_code = f"{name_appender.upper()}{sequence_appender}"

            if not CustomUser.objects.filter(reference_code=reference_code):
                request.data['reference_code'] = reference_code
                print("check")
            else:
                print("check1")
                cu_qs = CustomUser.objects.filter(reference_code__istartswith=name_appender)
                matching_ref_codes = []
                for user in cu_qs:
                    matching_ref_codes.append(int(str(user.reference_code)[-4:]))
                max_matching_ref_codes = sorted(matching_ref_codes)[-1]
                sequence_appender = max_matching_ref_codes + 1
                reference_code = f"{name_appender.upper()}{sequence_appender}"
                request.data['reference_code'] = reference_code
            return request.data

    def put(self, request, *args, **kwargs):
        self.generate_ref_code(self, request, *args, **kwargs)
        request.data['username'] = self.request.user.username
        if 'phone' not in request.data:
            request.data['phone'] = self.request.user.phone
        return self.update(request, *args, **kwargs)

    def patch(self, request, *args, **kwargs):
        self.generate_ref_code(self, request, *args, **kwargs)
        request.data['username'] = self.request.user.username
        if 'phone' not in request.data:
            request.data['phone'] = self.request.user.phone
        return self.update(request, *args, **kwargs)


class UserDeleteAPIView(DestroyAPIView):

    schema = AutoSchema(tags=['User'], operation_id_base='UserDeleteAPIView')
    queryset = CustomUser.objects.all()
    serializer_class = UserSerializer


class BotUserListAPIView(ListAPIView):

    schema = AutoSchema(tags=['Bot User'], operation_id_base='BotUserListAPIView')
    serializer_class = BotUserSerializer 
    permission_classes = [AllowAny]

    def get_queryset(self):
        playing = self.request.GET.get('playing')
        if playing:
            if playing.lower() == 'true':
                return CustomUser.objects.filter(is_bot=True, is_bot_playing=True)
            elif playing.lower() == 'false':
                return CustomUser.objects.filter(is_bot=True, is_bot_playing=False)
        return CustomUser.objects.filter(is_bot=True)


class BotUserCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['Bot User'], operation_id_base='BotUserCreateAPIView')
    queryset = CustomUser.objects.all()
    serializer_class = BotUserSerializer 
    permission_classes = [AllowAny]


class BotUserGetAPIView(ListAPIView):

    schema = AutoSchema(tags=['Bot User'], operation_id_base='BotUserGetAPIView')
    serializer_class = BotUserSerializer 
    permission_classes = [AllowAny]

    def get_queryset(self):
        playing = self.request.GET.get('playing')
        if playing:
            if playing.lower() == 'false':
                return [random.choice(CustomUser.objects.filter(is_bot=True, is_bot_playing=False))]
        return [random.choice(CustomUser.objects.filter(is_bot=True, is_bot_playing=True))]


class BotUserRetrieveAPIView(RetrieveAPIView):

    schema = AutoSchema(tags=['Bot User'], operation_id_base='BotUserRetrieveAPIView')
    queryset = CustomUser.objects.all()
    serializer_class = BotUserSerializer 
    permission_classes = [AllowAny]


class BotUserUpdateAPIView(UpdateAPIView):

    schema = AutoSchema(tags=['Bot User'], operation_id_base='BotUserUpdateAPIView')
    queryset = CustomUser.objects.all()
    serializer_class = BotUserSerializer 
    permission_classes = [IsOwnerOrReadOnly]


class BotUserDeleteAPIView(DestroyAPIView):

    schema = AutoSchema(tags=['Bot User'], operation_id_base='BotUserDeleteAPIView')
    queryset = CustomUser.objects.all()
    serializer_class = UserSerializer
    permission_classes = [AllowAny]


# class GuestUserListAPIView(ListAPIView):

#     serializer_class = GuestUserSerializer 
#     permission_classes = [AllowAny]

#     def get_queryset(self):
#         return CustomUser.objects.filter(is_bot=False)


class GuestUserCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['User'], operation_id_base='GuestUserCreateAPIView')
    queryset = CustomUser.objects.all()
    serializer_class = GuestUserSerializer 
    permission_classes = [AllowAny]


# class GuestUserRetrieveAPIView(RetrieveAPIView):

#     queryset = CustomUser.objects.all()
#     serializer_class = GuestUserSerializer 
#     permission_classes = [AllowAny]


# class GuestUserUpdateAPIView(UpdateAPIView):

#     queryset = CustomUser.objects.all()
#     serializer_class = GuestUserSerializer 
#     permission_classes = [IsOwnerOrReadOnly]


# class GuestUserDeleteAPIView(DestroyAPIView):

#     queryset = CustomUser.objects.all()
#     serializer_class = UserSerializer
#     permission_classes = [AllowAny]


class ToggleIsPlayingBotAPIView(APIView):

    schema = AutoSchema(tags=['Bot User'], operation_id_base='ToggleIsPlayingBotAPIView')
    permission_classes = [AllowAny]

    def post(self, request, pk):
        bot = CustomUser.objects.get(pk=pk)
        bot.is_bot_playing = not bot.is_bot_playing
        bot.save(update_fields=['is_bot_playing'])
        return Response(
            {
                "status": 200,
                "success": True,
                "Message": f"Toggled bot state to {bot.is_bot_playing}."
            }, status=200
        )


class UserOTPCreateAPIView(CreateAPIView):

    schema = AutoSchema(tags=['User'], operation_id_base='UserOTPCreateAPIView')
    serializer_class = UserOTPSerializer
    permission_classes = [AllowAny]

    def post(self, request, *args, **kwargs):
        user = CustomUser.objects.filter(username__exact=request.data['phone'])
        if user.exists():
            # if not active means user is banned  
            if not user.first().is_active:
                msg = {
                "msg": 'Your account is banned please contact admin',
                "version": "twilio"
                }
                return Response(msg, status=status.HTTP_423_LOCKED)
            msg, response = send_opt(phone=request.data['phone'])
            # msg, lambda_response = invoke_lambda_send_sns_sms(phone=request.data['phone'])
            token = Token.objects.filter(user=user[0])
            if token.exists():
                token.first().delete()
            _ = PhoneVerification.objects.filter(user=user[0]).update(otp=msg, is_verified=False)
            msg = {
                "msg": 'Success',
                "version": "twilio"
            }
            return Response(msg, status=status.HTTP_200_OK)
        return self.create(request, *args, **kwargs)


class UserResendOTPAPIView(APIView):

    schema = AutoSchema(tags=['User'], operation_id_base='UserResendOTPAPIView')
    permission_classes = [AllowAny]

    def post(self, request):
        try:
            msg, response = send_opt(phone=request.data['phone'])
            # msg, lambda_response = invoke_lambda_send_sns_sms(phone=request.data['phone'])
            _ = PhoneVerification.objects.filter(user__username=request.data['phone'], is_verified=False).update(otp=msg)
            msg = {
                "msg": 'Success',
                 "version": "twilio"
            }
            return Response(msg, status=status.HTTP_200_OK)
        except:
            msg = {
                "msg": 'Failure'
            }
            return Response(msg, status=status.HTTP_200_OK)


class UserOTPVerifyAPIView(APIView):

    schema = AutoSchema(tags=['User'], operation_id_base='UserOTPVerifyAPIView')
    permission_classes = [AllowAny]

    def post(self, request):
        user = get_object_or_404(CustomUser, username__exact=request.data['phone'])
        phone_verification = get_object_or_404(PhoneVerification, user=user)
        if phone_verification.otp == request.data['otp']:
            data = UserSerializer(user)
            phone_verification.is_verified = True
            new_token = Token.objects.create(user=user)
            phone_verification.save(update_fields=['is_verified'])
            msg = {
                "key": new_token.key,
                "msg": "Success",
                "data": data.data
            }
            sts = status.HTTP_200_OK
        else:
            msg = {
                "msg": "Failure",
                "description": "OTP not correct."
            }
            sts = status.HTTP_400_BAD_REQUEST
        return Response(msg, status=sts)    


class ThirdPartyGameMakerPayIn(APIView):

    schema = AutoSchema(tags=['Third Party GameMaker'], operation_id_base='ThirdPartyGameMakerPayIn')

    def post(self, request):
        default_amount = None
        if default_amount is not None and default_amount > request.user.currency:
            msg = {
                'message': 'Insufficient Balance.'
             }
            return Response(msg, status=status.HTTP_400_BAD_REQUEST)
        elif default_amount is None:
            default_amount = request.user.currency * 1000
        url = settings.CHINESE_GAME_MAKER_BASE_URL + '/web/payin/'
        ts=str(int(time.time()))
        operator_order_no = 'PAYIN'+str(request.user.pk) + ''.join(random.choices(string.ascii_uppercase + string.ascii_lowercase + string.digits, k = settings.ORDER_NUMBER_LENGTH))
        params = {
            "operator_token":settings.OPERATOR_TOKEN.lower(),
            'operator_order_no': operator_order_no,
            "player_id":str(request.user.pk).lower(),
            "ts":ts,
            # "amount": str(request.user.currency)
            "amount": str(default_amount)
        }
        digest = chinese_game_maker_sign(params)
        params['sign'] = digest
        res = requests.post(url=url, json=params)
        res_json = res.json()
        if res_json['status'] != 0:
            msg = {
                'message': 'Error Transfering money.',
                'response_message': res_json
             }
            return Response(msg, status=status.HTTP_200_OK)
        trans = Transaction.objects.create(
            sender = request.user,
            receiver = CustomUser.objects.get(pk=settings.CASINO_USER_ID),
            # amount = request.user.currency
            amount = request.user.currency
        )
        _ = OrderID.objects.create(
            game_maker=ThirdPartyGameMakerModel.objects.get(pk=request.data['maker']),
            transaction=trans,
            order_id=operator_order_no,
            response=res.json()
        )
        msg = {
            'message': 'success',
            'response_message': res.json()
        }
        return Response(msg, status=status.HTTP_200_OK)


class ThirdPartyGameMakerBalance(APIView):

    schema = AutoSchema(tags=['Third Party GameMaker'], operation_id_base='ThirdPartyGameMakerBalance')

    def get(self, request):
        url_balance = settings.CHINESE_GAME_MAKER_BASE_URL + '/web/balance/'
        ts=str(int(time.time()))
        params_balance = {
            "operator_token":settings.OPERATOR_TOKEN.lower(),
            "player_id":str(20).lower(),
            "ts":ts,
        }
        digest = chinese_game_maker_sign(params_balance)
        params_balance['sign'] = digest
        res = requests.post(url=url_balance, json=params_balance)
        json_body = res.json()
        if json_body['status'] != 0:
            msg = {
                'message': 'Error retrieving balance.',
                'response_message': json_body
             }
            return Response(msg, status=status.HTTP_200_OK)
        msg = {
            'message': 'success',
            'response_message': json_body
        }
        return Response(msg, status=status.HTTP_200_OK)


class ThirdPartyGameMakerPayOut(APIView):

    schema = AutoSchema(tags=['Third Party GameMaker'], operation_id_base='ThirdPartyGameMakerPayOut')

    def post(self, request):
        url_balance = settings.CHINESE_GAME_MAKER_BASE_URL + '/web/balance/'
        url_payout = settings.CHINESE_GAME_MAKER_BASE_URL + '/web/payout/'
        ts=str(int(time.time()))
        operator_order_no = 'PAYOUT'+str(request.user.pk) + ''.join(random.choices(string.ascii_uppercase + string.ascii_lowercase + string.digits, k = settings.ORDER_NUMBER_LENGTH))
        params_balance = {
            "operator_token":settings.OPERATOR_TOKEN.lower(),
            "player_id":str(20).lower(),
            "ts":ts,
        }
        digest = chinese_game_maker_sign(params_balance)
        params_balance['sign'] = digest
        res = requests.post(url=url_balance, json=params_balance)
        json_body = res.json()
        if json_body['status'] != 0:
            msg = {
                'message': 'Error retrieving balance.',
                'response_message': json_body
             }
            return Response(msg, status=status.HTTP_200_OK)
        ts=str(int(time.time()))
        params = {
            "operator_token":settings.OPERATOR_TOKEN.lower(),
            'operator_order_no': operator_order_no,
            "player_id":str(20).lower(),
            "ts":ts,
            "amount": str(json_body['data']['balance'])
        }
        digest = chinese_game_maker_sign(params)
        params['sign'] = digest
        res = requests.post(url=url_payout, json=params)
        res_json = res.json()
        if res_json['status'] != 0:
            msg = {
                'message': 'Error transfering money,',
                'detail': res_json
             }
            return Response(msg, status=status.HTTP_200_OK)
        trans = Transaction.objects.create(
            sender = CustomUser.objects.get(pk=settings.CASINO_USER_ID),
            receiver = request.user,
            amount = (int(json_body['data']['balance']))/1000
        )
        _ = OrderID.objects.create(
            game_maker=ThirdPartyGameMakerModel.objects.get(pk=request.data['maker']),
            transaction=trans,
            order_id=operator_order_no,
            response=res.json()
        )
        msg = {
            'message': 'success',
            'response_message': res_json
        }
        return Response(msg, status=status.HTTP_200_OK)


def chinese_game_maker_sign(data):
    keys = list(data.keys())
    keys.sort()
    res = ""
    for i, k in enumerate(keys):
        if i !=0:
            res += '&'
        res += k + '=' + data[k]
    res += f"&key={settings.CHINESE_GAME_MAKER_SECRET}"
    digest = hashlib.md5(bytes(res, 'utf-8')).hexdigest()
    return digest


class GameServerVerifyUserView(APIView):
    permission_classes = [HasAPIKey]

    schema = AutoSchema(tags=['Third Party GameMaker'], operation_id_base='ThirdPartyGameMakerPayOut')

    def post(self, request):
        user_id = request.data['id']
        username = User.objects.get(id=user_id).username
        game_table_id = request.data['game_table_id']
        game_table_qs = GameTable.objects.filter(id=game_table_id)
        user_list = []
        for game_table in game_table_qs:
            user_list = [users.username for users in game_table.joined_users.all()]

        if username in user_list:
            is_user_exist = True
        else:
            is_user_exist = False
        response_dict = dict()
        response_dict['exist'] = is_user_exist
        return Response(response_dict, status=status.HTTP_200_OK)


# class GameServerTransactionListAPIView(ListAPIView):
#     permission_classes = [HasAPIKey]
#     schema = AutoSchema(tags=['GameServerTransaction'], operation_id_base='GameServerTransactionListAPIView')
#     queryset = GameServerTransaction.objects.all()
#     serializer_class = GameServerTransactionSerializer


# class GameServerTransactionCreateAPIView(CreateAPIView):
#     permission_classes = [HasAPIKey]
#     schema = AutoSchema(tags=['Transaction'], operation_id_base='TransactionCreateAPIView')
#     queryset = GameServerTransaction.objects.all()
#     serializer_class = GameServerTransactionSerializer
    

#     def post(self, request, *args, **kwargs):
#         try:
#             if request.data['id']:
#                 raise IllegalOperation("Transaction cannot be edited/deleted.")
#         except:
#             pass

#         sender_id = request.data['sender']
#         receiver_id = request.data['receiver']

#         sender = User.objects.get(id=sender_id)
#         print('sender_id', sender_id, settings.CASINO_USER_ID)
#         if sender.currency < request.data['amount'] and sender_id != settings.CASINO_USER_ID:
#             raise InsufficientFund("490 Insufficient Balance.")

#         receiver = User.objects.get(id=receiver_id)
#         sender_currency = sender.currency - request.data['amount']
#         receiver_currency = receiver.currency + request.data['amount']

#         User.objects.filter(id=sender_id).update(currency=sender_currency)
#         User.objects.filter(id=receiver_id).update(currency=receiver_currency)
#         request.data['sender'] = sender.id
#         request.data['receiver'] = receiver.id
#         receiver_reference_code = User.objects.get(id=receiver.id).reference_code
#         request.data['receiver_ref_code'] = receiver_reference_code
#         return self.create(request, *args, **kwargs)

# class GameServerTransactionCreateAPIView(CreateAPIView):

#     schema = AutoSchema(tags=['GameServerTransaction'], operation_id_base='GameServerTransactionCreateAPIView')
#     queryset = GameServerTransaction.objects.all()
#     serializer_class = GameServerTransactionSerializer
#     permission_classes = [HasAPIKey]

#     def create(self, request, *args, **kwargs):
#         if (not request.data.get('receiver') and not request.data.get('receiver_ref_code')) or not request.data.get('sender'):
#             return Response({
#                     'status': 'Error',
#                     'message': "Either provide receiver or receiver_ref_code and sender"
#                 }, status=status.HTTP_400_BAD_REQUEST)
#         sender_id =  request.data.get('sender')
#         receiver_id = request.data.get('receiver') if request.data.get('receiver', None) else User.objects.get(reference_code=request.data.get('receiver_ref_code')).id
#         request_data = request.data
#         request_data['sender'] = sender_id
#         request_data['receiver'] = receiver_id
#         serializer = self.get_serializer(data=request_data)
#         if serializer.is_valid(raise_exception=False):
#             try:
#                 self.perform_create(serializer)
#                 headers = self.get_success_headers(serializer.data)
#                 return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)
#             except Exception as e:
#                 return Response({
#                     'status': 'Error',
#                     'message': f"{e}"
#                 }, status=status.HTTP_400_BAD_REQUEST)
#         return Response({
#                     'status': 'Error',
#                     'message': "Couldn't save."
#                 }, status=status.HTTP_400_BAD_REQUEST)


# class GameServerTransactionRetrieveAPIView(RetrieveAPIView):
#     permission_classes = [HasAPIKey]
#     schema = AutoSchema(tags=['GameServerTransaction'], operation_id_base='GameServerTransactionRetrieveAPIView')
#     queryset = GameServerTransaction.objects.all()
#     serializer_class = GameServerTransactionSerializer


# class GameServerTransactionUpdateAPIView(UpdateAPIView):
#     permission_classes = [HasAPIKey]
#     schema = AutoSchema(tags=['GameServerTransaction'], operation_id_base='GameServerTransactionUpdateAPIView')
#     queryset = GameServerTransaction.objects.all()
#     serializer_class = GameServerTransactionSerializer


# class GameServerTransactionDeleteAPIView(DestroyAPIView):
#     permission_classes = [HasAPIKey]
#     schema = AutoSchema(tags=['GameServerTransaction'], operation_id_base='GameServerTransactionDeleteAPIView')
#     queryset = GameServerTransaction.objects.all()
#     serializer_class = GameServerTransactionSerializer


class GameServerRemoveUserView(APIView):
    permission_classes = [HasAPIKey]

    def post(self, request):
        user_id = request.data['id']
        username = User.objects.get(id=user_id).username
        game_table_id = request.data['game_table_id']
        game_table = GameTable.objects.get(id=game_table_id)
        response_dict = {}
        user_list = []
        user_list = [users.username for users in game_table.joined_users.all()]

        if username in user_list:
            if game_table.joined_users.count() == 1:
                game_table.delete()
            else:
                game_table.joined_users.remove(user_id)
            response_dict.update(
                {
                    'status': 'Success',
                    'note': f'user with username {username} is removed from game_table.'
                }
            )
        else:
            response_dict.update(
                {
                    'status': 'Error',
                    'note': f'user with username {username} is not in game_table.'
                }
            )

        return Response(response_dict, status=status.HTTP_200_OK)


class GameServerRoundListAPIView(ListAPIView):
   # permission_classes = [HasAPIKey]

    schema = AutoSchema(tags=['Round'], operation_id_base='RoundListAPIView')
    queryset = Round.objects.all()
    serializer_class = RoundSerializer


class GameServerRoundCreateAPIView(CreateAPIView):
    permission_classes = [HasAPIKey]
    print("kumsu called");
    schema = AutoSchema(tags=['Round'], operation_id_base='RoundCreateAPIView')
    print("kumsu called 2");
    queryset = Round.objects.all()
    print("kumsu called 3");
    serializer_class = RoundSerializer
    print("kumsu called 4");


class GameServerRoundRetrieveAPIView(RetrieveAPIView):
    #permission_classes = [HasAPIKey]

    schema = AutoSchema(tags=['Round'], operation_id_base='RoundRetrieveAPIView')
    queryset = Round.objects.all()
    serializer_class = RoundSerializer


class GameServerRoundUpdateAPIView(UpdateAPIView):
    #permission_classes = [HasAPIKey]

    schema = AutoSchema(tags=['Round'], operation_id_base='RoundUpdateAPIView')
    queryset = Round.objects.all()
    serializer_class = RoundSerializer


class GameServerRoundDeleteAPIView(DestroyAPIView):
    #permission_classes = [HasAPIKey]

    schema = AutoSchema(tags=['Round'], operation_id_base='RoundDeleteAPIView')
    queryset = Round.objects.all()
    serializer_class = RoundSerializer


class GameServerShowUsersView(APIView):
    #permission_classes = [HasAPIKey]

    def post(self, request):
        game_table_id = request.data['game_table_id']
        try:
            game_table = GameTable.objects.get(id=game_table_id)
            user_list = [users.id for users in game_table.joined_users.all()]
            response_dict = dict()
            response_dict['users'] = user_list
            return Response(response_dict, status=status.HTTP_200_OK)
        except:
            return Response({"error": f"{game_table_id} does not exist"}, status=status.HTTP_404_NOT_FOUND)


class GameServerGameTableListAPIView(ListAPIView):
   # permission_classes = [HasAPIKey]
    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableListAPIView')
    queryset = GameTable.objects.all()
    serializer_class = GameTableSerializer


class GameServerGameTableUserListAPIView(ListAPIView):
    #permission_classes = [HasAPIKey]
    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableUserListAPIView')
    serializer_class = GameTableSerializer

    def get_queryset(self):
        user = self.request.user.id if self.request.GET.get('user_id') is None else self.request.GET.get('user_id')
        return GameTable.objects.filter(joined_users__in=[user])


class GameServerGameTableCreateAPIView(CreateAPIView):
    #permission_classes = [HasAPIKey]
    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableCreateAPIView')
    queryset = GameTable.objects.all()
    serializer_class = GameTableSerializer


class GameServerGameTableRetrieveAPIView(RetrieveAPIView):
   #permission_classes = [HasAPIKey]
    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableRetrieveAPIView')
    queryset = GameTable.objects.all()
    serializer_class = GameTableSerializer


class GameServerGameTableUpdateAPIView(UpdateAPIView):
    #permission_classes = [HasAPIKey]
    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableUpdateAPIView')
    queryset = GameTable.objects.all()
    serializer_class = GameTableSerializer


class GameServerGameTableDeleteAPIView(DestroyAPIView):
    #permission_classes = [HasAPIKey]
    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableDeleteAPIView')
    queryset = GameTable.objects.all()
    serializer_class = GameTableSerializer


class GameServerGameTableAutoJoinTableAPIView(APIView):
   #permission_classes = [HasAPIKey]
    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableAutoJoinTableAPIView')

    def post(self, request, format=None):
        # AutoLeaving the game_table before auto join
        mytables = GameTable.objects.filter(is_closed=False, joined_users__in=[request.user.id])
        if len(mytables) > 0:
            for tab in mytables:
                logging.info("user %s leaving table %s", request.user, tab.id)
                if tab.joined_users.count() == 1:
                    tab.delete()
                    continue
                tab.joined_users.remove(request.user)
                tab.save()
        tablesr = GameTableAutoSerializer(data=request.data)
        if not tablesr.is_valid():
            return Response(tablesr.errors, status=status.HTTP_400_BAD_REQUEST)
        #find the users current game table
        # game = Game.objects.get(pk=request.data.get('game_id'))
        mytables = GameTable.objects.filter(is_closed=False, game_table_type__in=[tablesr.validated_data["game_table_type"]], joined_users__in=[request.user.id]).count()
        if mytables > 0:
            #if user is already playing another table. ask him to leave before autojoin.
            return Response(
                {
                    "status": 400,
                    "success": False,
                    "Message": "Please leave the existing table."
                },
                status=status.HTTP_400_BAD_REQUEST)
        #find open game table with less than 5 at the table
        gameobjanns = GameTable.objects.annotate(num_joined=Count('joined_users'))
        gtt_max_users = GameTableType.objects.get(id=request.data['game_table_type']).max_users
        res = gameobjanns.filter(is_closed=False, num_joined__lt=gtt_max_users, game_table_type__in=[tablesr.validated_data["game_table_type"]]).order_by('-num_joined')
        table = res.first()
        if table is None:
            flag = True
            #there is no game table. create a new game table and then join the user to the table.
            obj = GameTable.objects.filter(game_table_type__in = [tablesr.validated_data["game_table_type"]]).first()
            if obj is None:
                obj = GameTable.objects.create(game_table_type=tablesr.validated_data["game_table_type"])
            rts = RealtimeServer.objects.filter(game=obj.game_table_type.game)
            for i in rts:
                if i.max_rooms <= GameTable.objects.filter(game_table_type__game=obj.game_table_type.game, server_url=i).count():
                    continue
                else:
                    table = tablesr.save()
                    table.server_url = i
                    flag = False
                    break
            if flag:
                return Response(
                        {
                    "status": 491,
                    "success": False,
                        "Message": "Too many instances on RTS."
                    },
                    status=491)
        table.joined_users.add(request.user)
        table.save()
        outputsr = GameTableSerializer(instance=table)
        return Response(outputsr.data)


class GameServerGameTableAutoLeaveAPIView(APIView):
    #permission_classes = [HasAPIKey]
    schema = AutoSchema(tags=['Game Table'], operation_id_base='GameTableAutoLeaveAPIView')

    def post(self, request, format=None):
        tablesr = GameTableAutoSerializer(data=request.data)
        if not tablesr.is_valid():
            return Response(tablesr.errors, status=status.HTTP_400_BAD_REQUEST)
        #find the users current game table
        mytables = GameTable.objects.filter(is_closed=False, game_table_type__in=[tablesr.validated_data["game_table_type"]], joined_users__in=[request.user.id])
        if len(mytables) > 0:
            for tab in mytables: 
                logging.info("user %s leaving table %s", request.user, tab.id)
                if tab.joined_users.count() == 1:
                    tab.delete()
                    continue
                tab.joined_users.remove(request.user)
                tab.save()
        return Response(
                {
                    "status": 200,
                    "success": True,
                    "Message": "Removed from all tables"
                },
                status=status.HTTP_200_OK)


class GameServerJoinGameTable(APIView):
    #permission_classes = [HasAPIKey]
    schema = AutoSchema(tags=['Join Game Table'], operation_id_base='GameServerJoinGameTable')

    def post(self, request, format=None):

        game_table_id = request.data['game_table_id']
        user_id = request.data['user_id']

        # AutoLeaving the game_table before auto join
        mytables = GameTable.objects.filter(is_closed=False, joined_users__in=[user_id])
        if len(mytables) > 0:
            for tab in mytables:
                if tab.joined_users.count() == 1:
                    tab.delete()
                    continue
                logging.info("user %s leaving table %s", request.user, tab.id)
                tab.joined_users.remove(request.user)
                tab.save()

        try:
            gt_obj = GameTable.objects.get(id=game_table_id)
            gt_is_closed = gt_obj.is_closed

            if not gt_is_closed:

                max_users = gt_obj.game_table_type.max_users
                already_joined = gt_obj.joined_users.all().count()
                available_slots = max_users - already_joined
                user_obj = User.objects.get(id=user_id)
                if available_slots > 0:
                    gt_obj.joined_users.add(user_obj)

                    return Response(
                            {
                                "status": 200,
                                "success": True,
                                "Message": f"User {user_id} successfully joined game_table {game_table_id}"
                            },
                            status=status.HTTP_200_OK)
                else:
                    return Response(
                        {
                            "status": 412,
                            "success": False,
                            "Message": f"No slot available to join game_table {game_table_id}."
                        },
                        status=status.HTTP_412_PRECONDITION_FAILED)
            else:
                return Response(
                    {
                        "status": 400,
                        "success": False,
                        "Message": f"Game_table {game_table_id} is closed."
                    },
                    status=status.HTTP_400_BAD_REQUEST)

        except:
            return Response(
                {
                    "status": 400,
                    "success": False,
                    "Message": f"IDs provide user or game_table does not exist in database."
                },
                status=status.HTTP_400_BAD_REQUEST)


class GameServerLeaveGameTable(APIView):
    #permission_classes = [HasAPIKey]
    schema = AutoSchema(tags=['Leave Game Table'], operation_id_base='GameServerLeaveGameTable')

    def post(self, request, format=None):

        game_table_id = request.data['game_table_id']
        user_id_list = request.data['user_id']

        try:
            max_users = GameTable.objects.get(id=game_table_id).game_table_type.max_users
            if len(user_id_list) <= max_users:
                for user_id in user_id_list:
                    user_obj = User.objects.get(id=user_id)
                    gt_obj = GameTable.objects.get(id=game_table_id)
                    if gt_obj.joined_users.count() == 1:
                        gt_obj.delete()
                        continue
                    else:
                        gt_obj.joined_users.remove(user_obj)

                return Response(
                        {
                            "status": 200,
                            "success": True,
                            "Message": f"Users with id {user_id_list} are successfully removed from game_table {game_table_id}"
                        },
                        status=status.HTTP_200_OK)
            else:
                return Response(
                    {
                        "status": 200,
                        "success": True,
                        "Message": f"Maximum {max_users} users can only be removed from the game_table {game_table_id}."
                    },
                    status=status.HTTP_200_OK)
        except:
            return Response(
                {
                    "status": 400,
                    "success": False,
                    "Message": f"IDs provide user or game_table does not exist in database."
                },
                status=status.HTTP_400_BAD_REQUEST)


class GameServerGetUserCurrencyView(APIView):
    # permission_classes = [HasAPIKey]
    schema = AutoSchema(tags=['Game Server Get User Currency'], operation_id_base='GameServerGetUserCurrencyView')

    def post(self, request, format=None):
        try:
            user_id = request.data['user_id']
        except:
            return Response({'error': f"'user_id' is required."}, status=status.HTTP_400_BAD_REQUEST)
        try:
            currency = User.objects.get(id=user_id).currency
            return Response({
                'currency': currency
            }, status=status.HTTP_200_OK)

        except:
            return Response({'error': f'User with id {user_id} is not found in database.'}, status=status.HTTP_404_NOT_FOUND)



class UserCurrencyHistoryViewSet(viewsets.ModelViewSet):
    permission_classes = (HasAPIKey,)
    queryset = UserCurrencyHistory.objects.all()
    serializer_class = UserCurrencyHistorySerializer 
    schema = AutoSchema(tags=['User Currency History'])


    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        self.perform_create(serializer)
        print("request.data==>",request.data)
        user_obj=CustomUser.objects.get(id=request.data.get('user'))

        user_obj.won_currency=user_obj.won_currency+int(request.data.get('won_currency'))
        user_obj.lose_currency=user_obj.lose_currency+int(request.data.get('lose_currency'))
        user_obj.save()
        headers = self.get_success_headers(serializer.data)
        return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)




