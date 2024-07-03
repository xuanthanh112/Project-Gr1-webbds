# Generated by Django 4.1.1 on 2024-06-22 18:23

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0017_rename_category_product_category_for_rent_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('is_sub', models.BooleanField(default=False)),
                ('is_rent', models.BooleanField(default=False)),
                ('name', models.CharField(max_length=200, null=True)),
                ('slug', models.SlugField(max_length=200, unique=True)),
                ('sub_category', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='sub_categories', to='app.category')),
            ],
        ),
        migrations.RemoveField(
            model_name='categoryforsale',
            name='sub_category',
        ),
        migrations.RemoveField(
            model_name='product',
            name='category_for_rent',
        ),
        migrations.RemoveField(
            model_name='product',
            name='category_for_sale',
        ),
        migrations.DeleteModel(
            name='CategoryForRent',
        ),
        migrations.DeleteModel(
            name='CategoryForSale',
        ),
        migrations.AddField(
            model_name='product',
            name='category',
            field=models.ManyToManyField(related_name='product', to='app.category'),
        ),
    ]
