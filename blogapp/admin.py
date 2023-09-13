from django.contrib import admin
from . import models


# Register your models here.

admin.site.register(models.poonam)
admin.site.register(models.sa1)
admin.site.register(models.sa2)
admin.site.register(models.sa3)
admin.site.register(models.sa4)
admin.site.register(models.kulddep)
admin.site.register(models.Data_model)
admin.site.register(models.new_model)
admin.site.register(models.data)
@admin.register(models.Blog)


# The BlogAdmin class is a subclass of the admin.ModelAdmin class. 
class BlogAdmin(admin.ModelAdmin):
    
    fields = [
        'user',
        'title',
        'blog_text',
        'main_image',
    ]
    list_display = [
        'title', 
        'user',
        'blog_text',
        'main_image',
        'created_at',
        'updated_at',
        
    ]

