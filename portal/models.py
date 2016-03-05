from django.db import models
from django.db.models.signals import m2m_changed
from django.dispatch import receiver
from datetime import datetime, timedelta
from django.db import IntegrityError



class PaymentGateway(models.Model):
	
	name = models.CharField(max_length=20)
	image = models.TextField()
	description = models.TextField()
	branding = models.BooleanField()
	rating = models.FloatField()
	setup_fee = models.BooleanField()
	transaction_fee = models.TextField()
	how_to_url = models.TextField()
	currencies = models.TextField()


	def __str__(self):
		return self.name


	

