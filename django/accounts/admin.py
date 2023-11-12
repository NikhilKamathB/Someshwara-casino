from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import PhoneVerification, User, UserCurrencyHistory


class UserAdmin(UserAdmin):
    model = User
    list_display = ['id', 'ref_code', 'reference_code', 'username', 'full_name', 'is_staff', 'phone', 'currency', 'is_bot', 'is_bot_playing','won_currency','lose_currency']
    readonly_fields = ['id', 'currency', 'level', 'ref_code', 'won_currency', 'lose_currency']
    list_filter = ['is_superuser', 'is_staff', 'is_active', 'is_bot', 'is_bot_playing']
    search_fields = ['reference_code','phone']
    fieldsets = (
        *UserAdmin.fieldsets,
        (
            'Custom Fields',
            {
                'fields': ('id', 'phone', 'avatar', 'avatar2', 'currency', 'level', 'ref_code','initial_currency_awarded','won_currency','lose_currency',),
            },
        ),
    )

admin.site.register(User, UserAdmin)
admin.site.register(PhoneVerification)
#admin.site.register(UserCurrencyHistory)
