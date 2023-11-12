
from .views import *
from django.urls import path, include
from django.views.generic import TemplateView
from rest_framework.schemas import get_schema_view
from rest_framework.routers import DefaultRouter        

app_name = 'api'

router= DefaultRouter()
router.register('user_currency_history', UserCurrencyHistoryViewSet)

urlpatterns = [
    path('v1/', include(router.urls)),
    path('v1/invitation/', InvitationListAPIView.as_view(), name='invitation_list'),
    path('v1/invitation/create/', InvitationCreateAPIView.as_view(), name='invitation_create'),
    path('v1/invitation/<int:pk>/detail/', InvitationRetrieveAPIView.as_view(), name='invitation_detail'),
    path('v1/invitation/<int:pk>/update/', InvitationUpdateAPIView.as_view(), name='invitation_update'),
    path('v1/invitation/<int:pk>/delete/', InvitationDeleteAPIView.as_view(), name='invitation_delete'),

    path('v1/reward/', RewardListAPIView.as_view(), name='reward_list'),
    path('v1/reward/create/', RewardCreateAPIView.as_view(), name='reward_create'),
    path('v1/reward/<int:pk>/detail/', RewardRetrieveAPIView.as_view(), name='reward_detail'),
    path('v1/reward/<int:pk>/update/', RewardUpdateAPIView.as_view(), name='reward_update'),
    path('v1/reward/<int:pk>/delete/', RewardDeleteAPIView.as_view(), name='reward_delete'),

    path('v1/game/', GameListAPIView.as_view(), name='game_list'),
    path('v1/game/create/', GameCreateAPIView.as_view(), name='game_create'),
    path('v1/game/<int:pk>/detail/', GameRetrieveAPIView.as_view(), name='game_detail'),
    path('v1/game/<int:pk>/update/', GameUpdateAPIView.as_view(), name='game_update'),
    path('v1/game/<int:pk>/delete/', GameDeleteAPIView.as_view(), name='game_delete'),

    path('v1/gametabletype/', GameTableTypeListAPIView.as_view(), name='gametabletype_list'),
    path('v1/gametabletype/create/', GameTableTypeCreateAPIView.as_view(), name='gametabletype_create'),
    path('v1/gametabletype/<int:pk>/detail/', GameTableTypeRetrieveAPIView.as_view(), name='gametabletype_detail'),
    path('v1/gametabletype/<int:pk>/update/', GameTableTypeUpdateAPIView.as_view(), name='gametabletype_update'),
    path('v1/gametabletype/<int:pk>/delete/', GameTableTypeDeleteAPIView.as_view(), name='gametabletype_delete'),

    path('v1/gametable/', GameTableListAPIView.as_view(), name='gametable_list'),
    path('v1/gametable/user/', GameTableUserListAPIView.as_view(), name='gametableuser_list'),
    path('v1/gametable/create/', GameTableCreateAPIView.as_view(), name='gametable_create'),
    path('v1/gametable/autojoin/', GameTableAutoJoinTableAPIView.as_view(), name='gametable_autojoin'),
    path('v1/gametable/autoleave/', GameTableAutoLeaveAPIView.as_view(), name='gametable_autoleave'),
    path('v1/gametable/<int:pk>/detail/', GameTableRetrieveAPIView.as_view(), name='gametable_detail'),
    path('v1/gametable/<int:pk>/update/', GameTableUpdateAPIView.as_view(), name='gametable_update'),
    path('v1/gametable/<int:pk>/delete/', GameTableDeleteAPIView.as_view(), name='gametable_delete'),

    path('v1/gametablehistory/', GameTableHistroyListAPIView.as_view(), name='gametablehistory_list'),
    path('v1/gametablehistory/create/', GameTableHistroyCreateAPIView.as_view(), name='gametablehistory_create'),
    path('v1/gametablehistory/<int:pk>/detail/', GameTableHistroyRetrieveAPIView.as_view(), name='gametablehistory_detail'),
    path('v1/gametablehistory/<int:pk>/update/', GameTableHistroyUpdateAPIView.as_view(), name='gametablehistory_update'),
    path('v1/gametablehistory/<int:pk>/delete/', GameTableHistroyDeleteAPIView.as_view(), name='gametablehistory_delete'),

    path('v1/transaction/', TransactionListAPIView.as_view(), name='transaction_list'),
    path('v1/transaction/create/', TransactionCreateAPIView.as_view(), name='transaction_create'),
    path('v1/transaction/<int:pk>/detail/', TransactionRetrieveAPIView.as_view(), name='transaction_detail'),
    path('v1/transaction/<int:pk>/update/', TransactionUpdateAPIView.as_view(), name='transaction_update'),
    path('v1/transaction/<int:pk>/delete/', TransactionDeleteAPIView.as_view(), name='transaction_delete'),

    path('v1/inapppurchase/', InappPurchaseListAPIView.as_view(), name='inapppurchase_list'),
    path('v1/inapppurchase/create/', InappPurchaseCreateAPIView.as_view(), name='inapppurchase_create'),
    path('v1/inapppurchase/<int:pk>/detail/', InappPurchaseRetrieveAPIView.as_view(), name='inapppurchase_detail'),
    path('v1/inapppurchase/<int:pk>/update/', InappPurchaseUpdateAPIView.as_view(), name='inapppurchase_update'),
    path('v1/inapppurchase/<int:pk>/delete/', InappPurchaseDeleteAPIView.as_view(), name='inapppurchase_delete'),

    path('v1/level/', LevelListAPIView.as_view(), name='level_list'),
    path('v1/level/create/', LevelCreateAPIView.as_view(), name='level_create'),
    path('v1/level/<int:pk>/detail/', LevelRetrieveAPIView.as_view(), name='level_detail'),
    path('v1/level/<int:pk>/update/', LevelUpdateAPIView.as_view(), name='level_update'),
    path('v1/level/<int:pk>/delete/', LevelDeleteAPIView.as_view(), name='level_delete'),

    path('v1/rts/', RTSListAPIView.as_view(), name='rts_list'),
    path('v1/rts/create/', RTSCreateAPIView.as_view(), name='rts_create'),
    path('v1/rts/<int:pk>/detail/', RTSRetrieveAPIView.as_view(), name='rts_detail'),
    path('v1/rts/<int:pk>/update/', RTSUpdateAPIView.as_view(), name='rts_update'),
    path('v1/rts/<int:pk>/delete/', RTSDeleteAPIView.as_view(), name='rts_delete'),

    path('v1/user/', UserListAPIView.as_view(), name='user_list'),
    path('v1/user/<int:pk>/detail/', UserRetrieveAPIView.as_view(), name='user_detail'),
    path('v1/user/<int:pk>/update/', UserUpdateAPIView.as_view(), name='user_update'),
    path('v1/user/<int:pk>/delete/', UserDeleteAPIView.as_view(), name='user_delete'),

    path('v1/bot-user/', BotUserListAPIView.as_view(), name='bot_user_list'),
    path('v1/bot-user/create/', BotUserCreateAPIView.as_view(), name='bot_user_create'),
    path('v1/bot-user/get-bot/', BotUserGetAPIView.as_view(), name='bot_user_create'),
    path('v1/bot-user/<int:pk>/detail/', BotUserRetrieveAPIView.as_view(), name='bot_user_detail'),
    path('v1/bot-user/<int:pk>/update/', BotUserUpdateAPIView.as_view(), name='bot_user_update'),
    path('v1/bot-user/<int:pk>/delete/', BotUserDeleteAPIView.as_view(), name='bot_user_delete'),
    path('v1/bot-user/<int:pk>/toggle-state/', ToggleIsPlayingBotAPIView.as_view(), name='bot_user_toggle_state'),

    path('v1/guest-user/create/', GuestUserCreateAPIView.as_view(), name='guest_user_create'),

    path('v1/round/', RoundListAPIView.as_view(), name='round_list'),
    path('v1/round/create/', RoundCreateAPIView.as_view(), name='round_create'),
    path('v1/round/<int:pk>/detail/', RoundRetrieveAPIView.as_view(), name='round_detail'),
    path('v1/round/<int:pk>/update/', RoundUpdateAPIView.as_view(), name='round_update'),
    path('v1/round/<int:pk>/delete/', RoundDeleteAPIView.as_view(), name='round_delete'),

    path('v1/thirdparty-game-maker/payin/', ThirdPartyGameMakerPayIn.as_view(), name="thirdparty-game-maker-payin"),
    path('v1/thirdparty-game-maker/balance/', ThirdPartyGameMakerBalance.as_view(), name="thirdparty-game-maker-balance"),
    path('v1/thirdparty-game-maker/payout/', ThirdPartyGameMakerPayOut.as_view(), name="thirdparty-game-maker-payout"),

    path('v1/game_server_verify_user/', GameServerVerifyUserView.as_view(), name="game_server_verify_user"),
    # path('v1/game_server_transaction/', GameServerTransactionListAPIView.as_view(), name='game_server_transaction_list'),
    # path('v1/game_server_transaction/create/', GameServerTransactionCreateAPIView.as_view(), name='game_server_transaction_create'),
    # path('v1/game_server_transaction/<int:pk>/detail/', GameServerTransactionRetrieveAPIView.as_view(), name='game_server_transaction_detail'),
    # path('v1/game_server_transaction/<int:pk>/update/', GameServerTransactionUpdateAPIView.as_view(), name='game_server_transaction_update'),
    # path('v1/game_server_transaction/<int:pk>/delete/', GameServerTransactionDeleteAPIView.as_view(), name='game_server_transaction_delete'),
    path('v1/game_server_remove_user/', GameServerRemoveUserView.as_view(), name='game_server_transaction_delete'),
    path('v1/game_server_round/', GameServerRoundListAPIView.as_view(), name='game_server_round_list'),
    path('v1/game_server_round/create/', GameServerRoundCreateAPIView.as_view(), name='game_server_round_create'),
    path('v1/game_server_round/<int:pk>/detail/', GameServerRoundRetrieveAPIView.as_view(), name='game_server_round_detail'),
    path('v1/game_server_round/<int:pk>/update/', GameServerRoundUpdateAPIView.as_view(), name='game_server_round_update'),
    path('v1/game_server_round/<int:pk>/delete/', GameServerRoundDeleteAPIView.as_view(), name='game_server_round_delete'),
    path('v1/game_server_show_users/', GameServerShowUsersView.as_view(), name='game_server_show_users'),
    path('v1/game_server_gametable/', GameServerGameTableListAPIView.as_view(), name='game_server_gametable_list'),
    path('v1/game_server_gametable/user/', GameServerGameTableUserListAPIView.as_view(), name='game_server_gametableuser_list'),
    path('v1/game_server_gametable/create/', GameServerGameTableCreateAPIView.as_view(), name='game_server_gametable_create'),
    path('v1/game_server_gametable/autojoin/', GameServerGameTableAutoJoinTableAPIView.as_view(), name='game_server_gametable_autojoin'),
    path('v1/game_server_gametable/autoleave/', GameServerGameTableAutoLeaveAPIView.as_view(), name='game_server_gametable_autoleave'),
    path('v1/game_server_gametable/<int:pk>/detail/', GameServerGameTableRetrieveAPIView.as_view(), name='game_server_gametable_detail'),
    path('v1/game_server_gametable/<int:pk>/update/', GameServerGameTableUpdateAPIView.as_view(), name='game_server_gametable_update'),
    path('v1/game_server_gametable/<int:pk>/delete/', GameServerGameTableDeleteAPIView.as_view(), name='game_server_gametable_delete'),
    path('v1/game_server_join_game_table/', GameServerJoinGameTable.as_view(), name='game_server_join_game_table'),
    path('v1/game_server_leave_game_table/', GameServerLeaveGameTable.as_view(), name='game_server_leave_game_table'),
    path('v1/game_server_get_user_currency/', GameServerGetUserCurrencyView.as_view(), name='game_server_leave_game_table'),

    path('schema/', get_schema_view(title="Casino-backend Server API", description="Casino-backend",version="1.0.0"), name='openapi-schema'),
    path('swagger/', TemplateView.as_view(template_name='swagger-ui.html',extra_context={'schema_url':'api:openapi-schema'}), name='swagger-ui'),
    path('redoc/', TemplateView.as_view(template_name='redoc-ui.html',extra_context={'schema_url':'api:openapi-schema'}), name='redoc'),


    # path('v1/UserCurrencyHistoryListAPIView/', InappPurchaseListAPIView.as_view(), name='user_currency_history_list'),
    # path('v1/UserCurrencyHistoryCreateAPIView/create/', InappPurchaseCreateAPIView.as_view(), name='user_currency_history_create'),
    # path('v1/UserCurrencyHistoryRetrieveAPIView/<int:pk>/detail/', InappPurchaseRetrieveAPIView.as_view(), name='user_currency_history_detail'),
    # path('v1/UserCurrencyHistoryUpdateAPIView/<int:pk>/update/', InappPurchaseUpdateAPIView.as_view(), name='user_currency_history_update'),
    # path('v1/UserCurrencyHistoryDeleteAPIView/<int:pk>/delete/', InappPurchaseDeleteAPIView.as_view(), name='user_currency_history_delete'),


]