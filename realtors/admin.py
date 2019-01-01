from django.contrib import admin
from .models import Realtor

class RealtorAdmin(admin.ModelAdmin):
    list_display = ('id','name', 'email','hire_date')
    list_display_links = ('id','name','email')
    search_fields = ('name','email','hire_date')
    list_per_page = 20

# Register your models here.
admin.site.register(Realtor, RealtorAdmin)