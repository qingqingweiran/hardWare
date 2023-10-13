from django.urls import path
from . import views

app_name = 'business'

urlpatterns = [
    # Retrieve task list
    path('begin', views.beginTask, name='begin'),
    path('filter', views.filterData, name='filter'),
]