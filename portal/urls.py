from django.conf.urls import url

from . import views

urlpatterns = [
	url(r'^count/', views.count, name='count'),
	url(r'^search/', views.search, name='search'),
]
