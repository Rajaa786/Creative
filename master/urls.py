from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [

    #vipul
    path('addCarmake/', views.Carmake_form, name="Carmake_form"),
    path('addSubmodel/', views.Submodel_form, name="Submodel_form"),
    path('editcarmake/<int:id>', views.editcarmake, name="editcarmake"),
    path('editsubmodel/<int:id>', views.editsubmodel, name="editsubmodel"),
    path('addAreain/', views.Areain_form, name="Areain_form"),
    path('addAreatype/', views.Areatype_form, name="Areatype_form"),
    path('addRoomtype/', views.Roomtype_form, name="Roomtype_form"),
    path('addLessetype/', views.Lessetype_form, name="Lessetype_form"),
    path('editareain/<int:id>', views.editareain, name="editareain"),
    path('editareatype/<int:id>', views.editareatype, name="editareatype"),
    path('editroomtype/<int:id>', views.editroomtype, name="editroomtype"),
    path('editlessetype/<int:id>', views.editlessetype, name="editlessetype"), 
    path('addAgreementtype/', views.Agreementtype_form, name="Agreementtype_form"),
    path('addApplicanttype/', views.Applicanttype_form, name="Applicanttype_form"),
    path('addAYyear/', views.AYyear_form, name="AYyear_form"),
    path('addNatureOfBusiness/', views.NatureOfBusiness_form, name="NatureOfBusiness_form"),
    path('addPropertyIn/', views.PropertyIn_form, name="PropertyIn_form"),
    path('addRejectionType/', views.RejectionType_form, name="RejectionType_form"),
    path('addStageOfConstruction/', views.StageOfConstruction_form, name="StageOfConstruction_form"),
    path('addStatus/', views.Status_form, name="Status_form"),
    path('addCompanyType/', views.CompanyType_form, name="CompanyType_form"),
    path('addCompanyName/', views.CompanyName_form, name="CompanyName_form"),
    path('addPrefix/', views.Prefix_form, name="Prefix_form"),
    path('addCompanyCat/', views.CompanyCat_form, name="CompanyCat_form"),
    path('addTenure/', views.Tenure_form, name="Tenure_form"),
    path('addCustomerType/', views.CustomerType_form, name="CustomerType_form"),
    path('addDesignationType/', views.DesignationType_form, name="DesignationType_form"),
    path('addProduct/', views.Product_form, name="Product_form"),
    path('addProfession/', views.Profession_form, name="Profession_form"),
    path('addQualification/', views.Qualification_form, name="Qualification_form"),
    path('addRole/', views.Role_form, name="Role_form"),
    path('addBankName/', views.BankName_form, name="BankName_form"),
    path('addDegree/', views.Degree_form, name="Degree_form"),
    path('addLeadSource/', views.LeadSource_form, name="LeadSource_form"),
    path('addNationality/', views.Nationality_form, name="Nationality_form"),
    path('addResidenceType/', views.ResidenceType_form, name="ResidenceType_form"),
    path('addSalaryType/', views.SalaryType_form, name="SalaryType_form"),
    path('addState/', views.State_form, name="State_form"),
    path('addSubProduct/', views.SubProduct_form, name="SubProduct_form"),
    path('addCity/', views.City_form, name="City_form"),
    path('Masterdetails/', views.Masterdetails, name="Master_details"),
    path('editprofession/<int:id>', views.editprofession, name="editprofession"),
    path('editrole/<int:id>', views.editrole, name="editrole"),
    path('editproduct/<int:id>', views.editproduct, name="editproduct"),
    path('editsubproduct/<int:id>', views.editsubproduct, name="editsubproduct"),
    path('editcustomertype/<int:id>', views.editcustomertype, name="editcustomertype"),
    path('editdegree/<int:id>', views.editdegree, name="editdegree"),
    path('editnationality/<int:id>', views.editnationality, name="editnationality"),
    path('editdesignationtype/<int:id>', views.editdesignationtype, name="editdesignationtype"),
    path('editcompanytype/<int:id>', views.editcompanytype, name="editcompanytype"),
    path('editcompanyname/<int:id>', views.editcompanyname, name="editcompanyname"),
    path('editCompanyCat/<int:id>', views.editcompanycat, name="editcompanycat"),
    path('editTenure/<int:id>', views.edittenure, name="edittenure"),
    path('editsalarytype/<int:id>', views.editsalarytype, name="editsalarytype"),
    path('editresidencetype/<int:id>', views.editresidencetype, name="editresidencetype"),
    path('editbankname/<int:id>', views.editbankname, name="editbankname"),
    path('editleadsource/<int:id>', views.editleadsource, name="editleadsource"),
    path('editstate/<int:id>', views.editstate, name="editstate"),
    path('editcity/<int:id>', views.editcity, name="editcity"),
    path('editapplicanttype/<int:id>', views.editapplicanttype, name="editapplicanttype"),
    path('editpropertyln/<int:id>', views.editpropertyln, name="editpropertyln"),
    path('editstatus/<int:id>', views.editstatus, name="editstatus"),
    path('editnatureofbusiness/<int:id>', views.editnatureofbusiness, name="editnatureofbusiness"),
    path('editayyear/<int:id>', views.editayyear, name="editayyear"),
    path('editagreementtype/<int:id>', views.editagreementtype, name="editagreementtype"),
    path('editstageofconstruction/<int:id>', views.editstageofconstruction, name="editstageofconstruction"),
    path('editrejectiontype/<int:id>', views.editrejectiontype, name="editrejectiontype"),
    path('addCommission/', views.Commission_form, name="Commission_form"),


    path('editqualification/<int:id>', views.editqualification, name="editqualification"),

    path('add_products_and_policy_view/',
         views.addProductAndPolicyView, name='add_products_and_policy_view'),

    path('products_and_policy/<str:action>',
         views.Productandpolicy, name='action_products_and_policy'),

    path('listproductsandpolicy/',
         views.listProductAndPolicy, name='list_product_and_policy'),

    path('delete_product_and_policy/<int:id>',
         views.deleteProductAndPolicy, name='delete_product_and_policy'),

    path('get_company_categories_data/',
         views.companyCategoryData, name='get_company_categories_data'),






]


