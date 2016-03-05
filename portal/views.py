from django.shortcuts import render
from django.shortcuts import render,redirect
from django.http import Http404
from django.views.decorators.csrf import csrf_exempt
from datetime import date
import datetime
from datetime import date
from django.conf.urls.static import static
from django.conf import settings
from django.conf.urls import include, patterns, url
#from django.contrib import admin
from django.http import HttpResponse
import mimetypes
import os
import urllib
from  portal.models import *
# Create your views here.

def index(request):
	context = {}
	return render(request,'view-profile.html', context)
    #return HttpResponse("Hello, world. You're at the polls index.")


def search(request):
	context = {}
	

	
	page_type = 1

	
	

	if 'search' in request.GET:
		gateways = search_name(name=request.GET['query'], currencies = request.GET['currency'])
		context['gateways'] = gateways
		page_type = 0
		

	elif 'id' in request.GET:
		gateways = get_payment_gateway(id=request.GET['id'])
		context['gateways'] = gateways
		page_type = 2


	context['page_type'] = page_type
	return render(request,'search.html', context)


def search_name(name='', currencies=''):
	# TODO Think of optimisation (probably using indexes
	names = PaymentGateway.objects.filter(name__icontains = name, currencies__icontains = currencies )
	
	gateway_list = []
	for i in names:
		gateway_dict = {}
		gateway_dict['id'] = i.id
		gateway_dict['name'] = i.name
		gateway_dict['currencies'] = i.currencies
		
		gateway_dict['description'] = i.description									
		gateway_dict['branding'] = i.branding
		gateway_dict['rating'] = i.rating
		gateway_dict['how_to_url'] = i.how_to_url
		gateway_dict['transaction_fee'] = i.transaction_fee
		gateway_dict['setup_fee'] = i.setup_fee
		gateway_dict['image'] = i.image

		gateway_list.append(gateway_dict)
	return gateway_list	


def get_payment_gateway(id = None):

	is_none_id = id == None
	if not is_none_id:
		names = PaymentGateway.objects.get(id = id)
		
		gateway_list = []
		
		gateway_dict = {}
		gateway_dict['id'] = names.id
		gateway_dict['name'] = names.name
		gateway_dict['currencies'] = names.currencies
		gateway_dict['description'] = names.description									
		gateway_dict['branding'] = names.branding
		gateway_dict['rating'] = names.rating
		gateway_dict['how_to_url'] = names.how_to_url
		gateway_dict['transaction_fee'] = names.transaction_fee
		gateway_dict['setup_fee'] = names.setup_fee
		gateway_dict['image'] = names.image
		
		gateway_list.append(gateway_dict)
		return gateway_list		