import datetime

from django.contrib import admin
from django.contrib.admin import DateFieldListFilter
from django.forms import TextInput, Textarea
from django.urls import reverse
from django.utils.html import format_html
from django_admin_listfilter_dropdown.filters import DropdownFilter
from rangefilter.filters import DateTimeRangeFilter
from django.conf import settings

from .models import *


class LevelInline(admin.TabularInline):
    model = Level
    extra = 1


class GameTableTypeInline(admin.TabularInline):
    formfield_overrides = {
        models.CharField: {'widget': TextInput(attrs={'size': '10'})},
        models.TextField: {'widget': Textarea(attrs={'rows': 4, 'cols': 40})},
    }
    model = GameTableType
    extra = 1


class InappPurchaseInline(admin.TabularInline):
    model = InappPurchase
    extra = 1


class RealtimeServerAdmin(admin.ModelAdmin):
    list_display = ['pk', 'url', 'is_closed', 'game_count', 'max_rooms'] # old: ['pk', 'url', 'game', 'is_closed', 'game_count']
    list_filter = ['is_closed'] # old: ['is_closed', 'game']
    exclude = []
    readonly_fields = []

    def game_count(self, obj):
        game_count = GameTable.objects.filter(server_url__id=obj.id).count()
        return game_count


class GameAdmin(admin.ModelAdmin):
    inlines = [LevelInline, GameTableTypeInline, InappPurchaseInline]
    list_display = ['id', 'title', 'winning_percentage']
    list_filter = []
    exclude = []
    readonly_fields = []


def custom_titled_filter(title):
    class Wrapper(admin.FieldListFilter):
        def __new__(cls, *args, **kwargs):
            instance = admin.FieldListFilter.create(*args, **kwargs)
            instance.title = title
            return instance

    return Wrapper


class CustomDateFieldListFilter(DateFieldListFilter):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        today = datetime.date.today()
        yesterday = today - datetime.timedelta(days=1)

        self.links = list(self.links)
        self.links.insert(2, ('Yesterday', {
            self.lookup_kwarg_since: str(yesterday),
            self.lookup_kwarg_until: str(today),
        }))


class RoundAdmin(admin.ModelAdmin):
    list_display = ['game_table', 'game_name', 'game_table_type', 'created_at']

    @staticmethod
    def game_name(obj):
        if obj.game_table:
            if obj.game_table.game_table_type:
                if obj.game_table.game_table_type.game:
                    link = reverse('admin:%s_%s_change' % (obj.game_table.game_table_type.game._meta.app_label, obj.game_table.game_table_type.game._meta.model_name), args=[obj.game_table.game_table_type.game])
                    return format_html('<a href="%s">%s</a>' % (link, obj.game_table.game_table_type.game.title), url=link)
                else:
                    return None
            else:
                return None
        else:
            return None

    @staticmethod
    def game_table_type(obj):
        if obj.game_table:
            if obj.game_table.game_table_type:
                link = reverse('admin:%s_%s_change' % (obj.game_table.game_table_type._meta.app_label, obj.game_table.game_table_type._meta.model_name), args=[obj.game_table.game_table_type.title])
                return format_html('<a href="%s">%s</a>' % (link, obj.game_table.game_table_type.title), url=link)
            else:
                return None
        else:
            return None

class TransactionAdmin(admin.ModelAdmin):
    #raw_id_fields = ["receiver", "round", "sender", "reward"]
    readonly_fields = ('created_at','receiver', 'round', 'sender', 'reward')
    list_display = ['created_at', 'bank_transaction_id', 'sender', 'receiver', 'receiver_ref_code', 'round', 'reward', 'amount', 'game_type']
    search_fields = ['sender__phone', 'receiver__phone', 'receiver_ref_code']
    list_filter = (
        ('created_at', CustomDateFieldListFilter),
        ('created_at', DateTimeRangeFilter),
        ('sender__reference_code', DropdownFilter),
        ('receiver__reference_code', DropdownFilter),
        ('sender__username', DropdownFilter),
        ('receiver__username', DropdownFilter),
        ('sender__phone', DropdownFilter),
        ('receiver__phone', DropdownFilter),
        ('receiver_ref_code', DropdownFilter)
    )
    
    # list_filter = ('created_at', ('created_at', DateTimeRangeFilter), ('sender__phone', custom_titled_filter('SenderPhone')), ('receiver__phone', custom_titled_filter('ReceiverPhone')), ('receiver_ref_code', custom_titled_filter('ReceiverReferenceCode')))

    def round(self, obj):
        if obj.round:
            link = reverse('admin:%s_%s_change' % (obj.round._meta.app_label, obj.round._meta.model_name), args=[obj.round.id])
            return format_html('<a href="%s">%s</a>' % (link, obj.round.id), url=link)
            # return format_html("<a href='{url}'>Level {url}</a>", url=obj.round.id)
        else:
            return None

    def game_type(self, obj):

        if obj.round:
            if obj.round.game_table:
                if obj.round.game_table.game_table_type:
                    if obj.round.game_table.game_table_type.game:
                        link = reverse('admin:%s_%s_change' % (obj.round.game_table.game_table_type.game._meta.app_label, obj.round.game_table.game_table_type.game._meta.model_name), args=[obj.round.game_table.game_table_type.game.id])
                        return format_html('<a href="%s">%s</a>' % (link, obj.round.game_table.game_table_type.game.title), url=link)
                    else:
                        return None
                else:
                    return None
            else:
                return None
        else:
            return None

    fieldsets = (
        (None, {
            'fields': ('created_at', 'bank_transaction_id', 'sender', 'receiver', 'receiver_ref_code', 'round', 'reward', 'amount',),
        }),
    )

    def download_csv(self, request, queryset):
        import csv
        from django.http import HttpResponse
        import io

        f = io.StringIO()
        writer = csv.writer(f)
        writer.writerow(['created_at', 'bank_transaction_id', 'sender', 'receiver', 'receiver_ref_code', 'round', 'reward', 'amount', 'game_type'])

        for s in queryset:
            if s.round:
                if s.round.game_table:
                    if s.round.game_table.game_table_type:
                        if s.round.game_table.game_table_type.game:
                            writer.writerow([s.created_at, s.bank_transaction_id, s.sender, s.receiver, s.receiver_ref_code, s.round, s.reward, s.amount, s.round.game_table.game_table_type.game.title])
                        else:
                            writer.writerow([s.created_at, s.bank_transaction_id, s.sender, s.receiver, s.receiver_ref_code, s.round, s.reward, s.amount, None])
                    else:
                        writer.writerow([s.created_at, s.bank_transaction_id, s.sender, s.receiver, s.receiver_ref_code, s.round, s.reward, s.amount, None])
                else:
                    writer.writerow([s.created_at, s.bank_transaction_id, s.sender, s.receiver, s.receiver_ref_code, s.round, s.reward, s.amount, None])
            else:
                writer.writerow([s.created_at, s.bank_transaction_id, s.sender, s.receiver, s.receiver_ref_code, s.round, s.reward, s.amount, None])
        f.seek(0)

        response = HttpResponse(f, content_type='text/csv')
        response['Content-Disposition'] = 'attachment; filename=stat-info.csv'
        return response

    download_csv.short_description = "Download CSV file for selected stats."

    actions = [download_csv]

    def game_type(self, obj):
        if obj.round:
            if obj.round.game_table:
                if obj.round.game_table.game_table_type:
                    return obj.round.game_table.game_table_type.title
                else:
                    return None
            else:
                return None
        else:
            return None

    def has_change_permission(self, request, obj=None):
        return False

    def has_delete_permission(self, request, obj=None):
        return False

    def save_model(self, request, obj, form, change):
        obj.username = request.user
        sender = User.objects.get(id=request.user.id)
        is_admin_tx = (request.user.groups.filter(name="Transaction Admin").exists() or (request.user.id == settings.CASINO_USER_ID))
        
        if is_admin_tx:
            sender = User.objects.get(id=settings.CASINO_USER_ID)
        else:
            #if not admin, check if user has sufficient balance. (model.save also does another atomic check)
            if sender.currency < form.cleaned_data['amount']:
                raise InsufficientFund("490 Insufficient Balance.")
        
        receiver = User.objects.get(reference_code=form.cleaned_data['receiver_ref_code'])
        
        obj.sender = sender
        obj.receiver = receiver

        return super().save_model(request, obj, form, change)


# class GameServerTransactionAdmin(admin.ModelAdmin):
#     readonly_fields = ('created_at', 'sender', 'receiver',)
#     list_display = ['created_at', 'bank_transaction_id', 'sender', 'receiver', 'receiver_ref_code', 'round', 'reward', 'amount', 'game_type']
#     search_fields = ['sender__phone', 'receiver__phone', 'receiver_ref_code']
#     list_filter = (
#         ('created_at', CustomDateFieldListFilter),
#         ('created_at', DateTimeRangeFilter),
#         ('sender__reference_code', DropdownFilter),
#         ('receiver__reference_code', DropdownFilter),
#         ('sender__username', DropdownFilter),
#         ('receiver__username', DropdownFilter),
#         ('sender__phone', DropdownFilter),
#         ('receiver__phone', DropdownFilter),
#         ('receiver_ref_code', DropdownFilter)
#     )

#     # list_filter = ('created_at', ('created_at', DateTimeRangeFilter), ('sender__phone', custom_titled_filter('SenderPhone')), ('receiver__phone', custom_titled_filter('ReceiverPhone')), ('receiver_ref_code', custom_titled_filter('ReceiverReferenceCode')))

#     def has_add_permission(self, request, obj=None):
#         return False

#     def has_change_permission(self, request, obj=None):
#         return False

#     def has_delete_permission(self, request, obj=None):
#         return False

#     def round(self, obj):
#         if obj.round:
#             link = reverse('admin:%s_%s_change' % (obj.round._meta.app_label, obj.round._meta.model_name), args=[obj.round.id])
#             return format_html('<a href="%s">Level %s</a>' % (link, obj.round.id), url=link)
#             # return format_html("<a href='{url}'>Level {url}</a>", url=obj.round.id)
#         else:
#             return None

#     def game_type(self, obj):

#         if obj.round:
#             if obj.round.game_table:
#                 if obj.round.game_table.game_table_type:
#                     if obj.round.game_table.game_table_type.game:
#                         link = reverse('admin:%s_%s_change' % (obj.round.game_table.game_table_type.game._meta.app_label, obj.round.game_table.game_table_type.game._meta.model_name), args=[obj.round.game_table.game_table_type.game.id])
#                         return format_html('<a href="%s">%s</a>' % (link, obj.round.game_table.game_table_type.game.title), url=link)
#                     else:
#                         return None
#                 else:
#                     return None
#             else:
#                 return None
#         else:
#             return None

#     fieldsets = (
#         (None, {
#             'fields': ('created_at', 'bank_transaction_id', 'sender', 'receiver', 'receiver_ref_code', 'round', 'reward', 'amount',),
#         }),
#     )

#     def download_csv(self, request, queryset):
#         import csv
#         from django.http import HttpResponse
#         import io

#         f = io.StringIO()
#         writer = csv.writer(f)
#         writer.writerow(['created_at', 'bank_transaction_id', 'sender', 'receiver', 'receiver_ref_code', 'round', 'reward', 'amount', 'game_type'])

#         for s in queryset:
#             if s.round:
#                 if s.round.game_table:
#                     if s.round.game_table.game_table_type:
#                         if s.round.game_table.game_table_type.game:
#                             writer.writerow([s.created_at, s.bank_transaction_id, s.sender, s.receiver, s.receiver_ref_code, s.round, s.reward, s.amount, s.round.game_table.game_table_type.game.title])
#                         else:
#                             writer.writerow([s.created_at, s.bank_transaction_id, s.sender, s.receiver, s.receiver_ref_code, s.round, s.reward, s.amount, None])
#                     else:
#                         writer.writerow([s.created_at, s.bank_transaction_id, s.sender, s.receiver, s.receiver_ref_code, s.round, s.reward, s.amount, None])
#                 else:
#                     writer.writerow([s.created_at, s.bank_transaction_id, s.sender, s.receiver, s.receiver_ref_code, s.round, s.reward, s.amount, None])
#             else:
#                 writer.writerow([s.created_at, s.bank_transaction_id, s.sender, s.receiver, s.receiver_ref_code, s.round, s.reward, s.amount, None])
#         f.seek(0)

#         response = HttpResponse(f, content_type='text/csv')
#         response['Content-Disposition'] = 'attachment; filename=stat-info.csv'
#         return response

#     download_csv.short_description = "Download CSV file for selected stats."

#     actions = [download_csv]

#     def game_type(self, obj):
#         if obj.round:
#             if obj.round.game_table:
#                 if obj.round.game_table.game_table_type:
#                     return obj.round.game_table.game_table_type.title
#                 else:
#                     return None
#             else:
#                 return None
#         else:
#             return None

#     def has_change_permission(self, request, obj=None):
#         return False

#     def has_delete_permission(self, request, obj=None):
#         return False

#     def save_model(self, request, obj, form, change):
#         obj.username = request.user

#         try:
#             if form.cleaned_data['id']:
#                 raise IllegalOperation("Transaction cannot be edited/deleted.")
#         except:
#             pass

#         sender = User.objects.get(id=request.user.id)
#         if sender.currency < form.cleaned_data['amount'] and request.user.id != settings.CASINO_USER_ID:
#             raise InsufficientFund("490 Insufficient Balance.")

#         receiver = User.objects.get(reference_code=form.cleaned_data['receiver_ref_code'])
#         sender_currency = sender.currency - form.cleaned_data['amount']
#         receiver_currency = receiver.currency + form.cleaned_data['amount']

#         User.objects.filter(id=request.user.id).update(currency=sender_currency)
#         User.objects.filter(reference_code=form.cleaned_data['receiver_ref_code']).update(currency=receiver_currency)

#         obj.sender = request.user
#         obj.receiver = receiver

#         return super(GameServerTransactionAdmin, self).save_model(request, obj, form, change)


class GameFilter(admin.SimpleListFilter):
    title = 'game'
    parameter_name = 'game'

    def lookups(self, request, queryset):
        games = set([g.game_table_type.game for g in queryset.model.objects.all()])
        return [(g.id, g.title) for g in games]

    def queryset(self, request, queryset):
        if self.value():
            return queryset.filter(game__id__exact=self.value())
        return queryset


class GameTableAdmin(admin.ModelAdmin):
    list_display = ['__str__', 'id', 'is_closed', 'game_table_type', 'game', 'created_at', 'joined_users_count', 'server_url']
    list_filter = ['game_table_type', 'is_closed', GameFilter]
    raw_id_fields = ('joined_users',)

    def joined_users_count(self, obj):
        return obj.joined_users.count()

    def game(self, obj):
        return obj.game_table_type.game.title


class GameTableTypeAdmin(admin.ModelAdmin):
    list_display = ['id', '__str__', 'game', 'min_currency', 'max_currency', 'max_users', 'extra_1', 'extra_2', 'extra_3', 'created_at']


class ThirdPartyGameMakerModelAdmin(admin.ModelAdmin):
    list_display = ['id', 'name']


class OrderIDAdmin(admin.ModelAdmin):
    list_display = ['id', 'game_maker', 'order_id']
    list_filter = ['game_maker']

    def has_change_permission(self, request, obj=None):
        return False

    def has_delete_permission(self, request, obj=None):
        return False


admin.site.register(RealtimeServer, RealtimeServerAdmin)
admin.site.register(Invitation)
admin.site.register(Reward)
admin.site.register(Transaction, TransactionAdmin)
# admin.site.register(GameServerTransaction, GameServerTransactionAdmin)
admin.site.register(Game, GameAdmin)
admin.site.register(GameTableType, GameTableTypeAdmin)
admin.site.register(ThirdPartyGameMakerModel, ThirdPartyGameMakerModelAdmin)
admin.site.register(OrderID, OrderIDAdmin)
admin.site.register(GameTable, GameTableAdmin)
admin.site.register(GameTableHistory)
admin.site.register(Round, RoundAdmin)

admin.site.site_header = "AB GOLD"
admin.site.site_title = "AB GOLD"
admin.site.index_title = "AB GOLD"
