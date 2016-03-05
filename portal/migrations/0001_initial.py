# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='PaymentGateway',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=20)),
                ('image', models.TextField()),
                ('description', models.TextField()),
                ('branding', models.BooleanField()),
                ('rating', models.FloatField()),
                ('setup_fee', models.BooleanField()),
                ('transaction_fee', models.TextField()),
                ('how_to_url', models.TextField()),
                ('currencies', models.TextField()),
            ],
        ),
    ]
