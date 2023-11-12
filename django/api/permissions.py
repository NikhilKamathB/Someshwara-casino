from rest_framework import permissions
from django.conf import settings


class IsOwnerOrReadOnly(permissions.BasePermission):

    def has_object_permission(self, request, view, obj):
        if request.user.is_superuser:
            return True
        return obj == request.user
    

class IsCustomAuthenticated(permissions.IsAuthenticated):

    def has_permission(self, request, view):
        print("call from haspermsiion")
        return True
        return bool(request.user and request.user.is_authenticated and request.user.groups.filter(name=settings.TRANSACTION_GROUP).exists())
