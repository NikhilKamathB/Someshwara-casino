from api.views import *
from django.contrib import admin
from django.urls import path, include


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('misc.urls')),
    path('api/', include('api.urls')),
    path('api/v1/rest-auth/', include('dj_rest_auth.urls')),
    path('api/v1/rest-auth/otp-login/',
         UserOTPCreateAPIView.as_view(), name='otp_login'),
    path('api/v1/rest-auth/otp-resend/',
         UserResendOTPAPIView.as_view(), name='otp_resend'),
    path('api/v1/rest-auth/otp-verify/',
         UserOTPVerifyAPIView.as_view(), name='otp_resend'),
    path('api/v1/rest-auth/facebook-login/',
         FacebookLogin.as_view(), name='fb_login'),
]
