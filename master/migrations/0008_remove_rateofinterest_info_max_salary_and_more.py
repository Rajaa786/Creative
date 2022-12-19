# Generated by Django 4.1.2 on 2022-12-19 05:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("master", "0007_additionalrate_info_rateofinterest_info_and_more"),
    ]

    operations = [
        migrations.RemoveField(model_name="rateofinterest_info", name="max_salary",),
        migrations.RemoveField(model_name="rateofinterest_info", name="min_salary",),
        migrations.AddField(
            model_name="additionalrate_info",
            name="max_salary",
            field=models.BigIntegerField(null=True),
        ),
        migrations.AddField(
            model_name="additionalrate_info",
            name="min_salary",
            field=models.BigIntegerField(null=True),
        ),
        migrations.AddField(
            model_name="rateofinterest_info",
            name="cocat_type",
            field=models.CharField(max_length=250, null=True),
        ),
    ]