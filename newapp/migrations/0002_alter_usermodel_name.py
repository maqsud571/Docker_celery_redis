# Generated by Django 3.2.16 on 2023-12-26 13:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('newapp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usermodel',
            name='name',
            field=models.CharField(max_length=60, unique=True),
        ),
    ]