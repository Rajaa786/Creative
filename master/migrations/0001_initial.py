# Generated by Django 4.0.3 on 2022-11-18 13:50

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AgreementType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('agreement_type', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='ApplicantType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('applicant_type', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='AreaIn',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('area_in', models.CharField(max_length=50)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='AreaType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('area_type', models.CharField(max_length=50)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='AYYear',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ay_year', models.CharField(max_length=7)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='BankName',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('bank_name', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='BonusType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('bonus_type', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Cibil',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cibil_score', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='CibilLoanType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cibil_loan_type', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='CibilType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cibil_type', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Commission',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Commissiontype', models.CharField(max_length=100)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='CompanyCatergoryTypes',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cocat_type', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='CompanyName',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('company_name', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='CompanyType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('company_type', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Country',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('country', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='CustomerType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cust_type', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='DeductionType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('deduction_type', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='DefaultYear',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('default_year', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Degree',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('degree', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='DesignationType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('desg_type', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='EmploymentType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('employment_type', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='FoirCategory',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cocat_type', models.CharField(max_length=200)),
                ('cutoff', models.IntegerField()),
                ('roi', models.FloatField()),
                ('min_loan_amt', models.BigIntegerField()),
                ('max_loan_amt', models.BigIntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Gender',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('gender', models.CharField(max_length=10)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='IncentivesType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('incentives_type', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='InvestmentType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('investment_type', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='LawyerType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('lawyer_type', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='LeadSource',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('lead_source', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='LesseType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('lesse_type', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='LoanAmount',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('loan_amount', models.CharField(max_length=30)),
                ('min_loan_amount', models.IntegerField()),
                ('max_loan_amount', models.IntegerField()),
                ('total_exp', models.IntegerField()),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='MaritalStatus',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('marital_status', models.CharField(max_length=10)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='MultiplierCategory',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cocat_type', models.CharField(max_length=200)),
                ('multiplier_number', models.IntegerField()),
                ('roi', models.FloatField()),
                ('min_loan_amt', models.BigIntegerField()),
                ('max_loan_amt', models.BigIntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Nationality',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nationality', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='NatureOfBusiness',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nature_business', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='NegativeArea',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('negative_area', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='PaymentDelayYear',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('payment_delay_year', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Prefix',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('prefix', models.CharField(max_length=5)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('product', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='ProductsOrServices',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('products_or_services', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Profession',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('profession', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='PropertyIn',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('property_in', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='PropertyType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('property_type', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Qualification',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('qualification', models.CharField(max_length=25)),
                ('degree', models.BooleanField(default=False)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='RateOfInterest',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('rate_of_interest', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='RejectionType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('rejection_type', models.CharField(max_length=45)),
                ('rejection_reason', models.CharField(max_length=60)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Relation',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='ResidenceType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('residence_type', models.CharField(max_length=25)),
            ],
        ),
        migrations.CreateModel(
            name='Role',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('role', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='RoomType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('room_type', models.CharField(max_length=30)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='SalaryType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('salary_type', models.CharField(max_length=25)),
            ],
        ),
        migrations.CreateModel(
            name='StageOfConstruction',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('stage', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='State',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('state', models.CharField(max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Status',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status', models.CharField(max_length=55)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Tenure',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ten_type', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='SubProduct',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sub_product', models.CharField(max_length=50)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='master.product')),
            ],
        ),
        migrations.CreateModel(
            name='product_and_policy_master',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('is_salary_account', models.BooleanField(choices=[(None, 'Select Yes Or No'), (True, 'Yes'), (False, 'No')])),
                ('min_age', models.IntegerField()),
                ('max_age', models.IntegerField()),
                ('internal_customer', models.BigIntegerField()),
                ('external_customer', models.BigIntegerField()),
                ('current_experience', models.IntegerField()),
                ('total_experience', models.IntegerField()),
                ('cibil_score', models.BigIntegerField()),
                ('processing_fee', models.BigIntegerField()),
                ('months_for_foir', models.BigIntegerField()),
                ('effective_date', models.DateField(blank=True, null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
                ('gross_min', models.BigIntegerField()),
                ('gross_max', models.BigIntegerField()),
                ('net_min', models.BigIntegerField()),
                ('net_max', models.BigIntegerField()),
                ('multiple_enquiry', models.IntegerField()),
                ('emi_bounces', models.IntegerField()),
                ('credit_card_dpd', models.IntegerField()),
                ('credit_card_obligation', models.IntegerField()),
                ('emi_obligation', models.IntegerField()),
                ('bank_names', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='master.bankname')),
                ('company_type', models.ManyToManyField(to='master.companytype')),
                ('customer_type', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='cust_types', to='master.customertype')),
                ('designation', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='master.designationtype')),
                ('foir_bt', models.ManyToManyField(related_name='foir_bt', to='master.foircategory')),
                ('foir_fresh', models.ManyToManyField(related_name='foir_fresh', to='master.foircategory')),
                ('multiplier_bt', models.ManyToManyField(related_name='multiplier_bt', to='master.multipliercategory')),
                ('multiplier_fresh', models.ManyToManyField(related_name='multiplier_fresh', to='master.multipliercategory')),
                ('product_name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='master.product')),
                ('residence_type', models.ManyToManyField(to='master.residencetype')),
                ('salary_type', models.ManyToManyField(to='master.salarytype')),
                ('tenure', models.ManyToManyField(to='master.tenure')),
            ],
        ),
        migrations.CreateModel(
            name='Comissionrates',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Commissionrate', models.IntegerField(null=True)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
                ('Commissiontype', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='master.commission')),
            ],
        ),
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('city_name', models.CharField(default='', max_length=25)),
                ('effective_date', models.DateField(null=True)),
                ('ineffective_date', models.DateField(blank=True, null=True)),
                ('state', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='master.state')),
            ],
        ),
        migrations.CreateModel(
            name='BankCategory',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('effective_date', models.DateField(blank=True, null=True)),
                ('bank_name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='master.bankname')),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='master.companycatergorytypes')),
                ('company_name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='master.companyname')),
            ],
        ),
    ]
