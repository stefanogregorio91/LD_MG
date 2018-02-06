# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2018-02-05 21:36
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('myBookingApp_2', '0004_auto_20180205_2131'),
    ]

    operations = [
        migrations.AlterField(
            model_name='voto',
            name='hotel_voto',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myBookingApp_2.Hotel'),
        ),
        migrations.AlterField(
            model_name='voto',
            name='user_vote',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AlterField(
            model_name='voto',
            name='voto_value',
            field=models.FloatField(),
        ),
    ]