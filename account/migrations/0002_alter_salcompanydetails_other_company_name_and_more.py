# Generated by Django 4.0.3 on 2023-01-02 19:01

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('master', '0002_remove_foir_info_foir_data_and_more'),
        ('account', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='salcompanydetails',
            name='other_company_name',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='salexistingcreditcard',
            name='other_bank_name',
            field=models.CharField(blank=True, default=None, max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='salexistingloandetails',
            name='other_bank_name',
            field=models.CharField(blank=True, default=None, max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='salpersonaldetails',
            name='tenure',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='master.tenure'),
        ),
    ]
