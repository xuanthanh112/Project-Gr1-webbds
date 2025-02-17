# Generated by Django 4.1.1 on 2024-05-19 16:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0010_alter_customer_gender'),
    ]

    operations = [
        migrations.RenameField(
            model_name='order',
            old_name='conplete',
            new_name='complete',
        ),
        migrations.AlterField(
            model_name='customer',
            name='gender',
            field=models.CharField(choices=[('woman', 'nu'), ('man', 'nam')], default='man', max_length=50, null=True),
        ),
    ]
