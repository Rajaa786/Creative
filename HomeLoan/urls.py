from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('eligibility/<int:id>', views.eligibility, name="eligibility"),
    path('ajax/cities/',views.load_cities,name = "ajax_load_cities"),
    path('ajax/subproducts/',views.load_subProduct,name = "ajax_load_subproducts"),
    #product policy master
    path('editproductandpolicy/<int:ppid>/age', views.PPage, name='PPage'),
    path('editproductandpolicy/<int:ppid>/editage/<int:ageid>', views.PPeditAge, name='PPeditAge'),
    path('editproductandpolicy/<int:ppid>/negativearea', views.PPnegativearea, name='PPnegativearea'),
    path('editproductandpolicy/<int:ppid>/editnegativearea/<int:negativeareaid>', views.PPeditNegativearea, name='PPeditnegativearea'),
    path('bank', views.PPbank, name='PPbank'),
    path('editproductandpolicy/<int:ppid>/negativeemployerprofile', views.PPnegativeemployerprofile, name='PPnegativeemployerprofile'),
    path('editproductandpolicy/<int:ppid>/editnegativeemployerprofile/<int:negativeemployerprofileid>', views.PPeditnegativeemployerprofile, name='PPeditnegativeemployerprofile'),
    path('editproductandpolicy/<int:ppid>/Cibil', views.PPCibil, name='PPCibil'),
    path('editproductandpolicy/<int:ppid>/editCibil/<int:cibilid>', views.PPeditCibil, name='PPeditCibil'),
    path('editproductandpolicy/<int:ppid>/obligation', views.PPobligation, name='PPobligation'),
    path('editproductandpolicy/<int:ppid>/editobligation/<int:obligationid>', views.PPeditobligation, name='PPeditobligation'),
    path('editproductandpolicy/<int:ppid>/company', views.PPcompany, name='PPcompany'),
    path('editproductandpolicy/<int:ppid>/editcompany/<int:companyid>', views.PPeditcompany, name='PPeditcompany'),
    path('editproductandpolicy/<int:ppid>/OtherDetails', views.PPotherdetails, name='PPotherdetails'),
    path('editproductandpolicy/<int:ppid>/OtherDetailsRoi', views.PPOtherDetailsRoi, name='PPOtherDetailsRoi'),
    path('editproductandpolicy/<int:ppid>/editOtherDetailsRoi/<int:otherdetailsroiid>', views.PPeditotherdetailsroi, name='PPeditotherdetailsroi'),
    path('editproductandpolicy/<int:ppid>/costsheet', views.PPcostsheet, name='PPcostsheet'),
    path('editproductandpolicy/<int:ppid>/editcostsheet/<int:costsheetid>', views.PPeditcostsheet, name='PPeditcostsheet'),
    path('Products', views.PPProduct, name='PPProducts'),
    path('editproductandpolicy/<int:ppid>/customerdesignation', views.PPcustomerdesignation, name='PPcustomerdesignation'),
    path('editproductandpolicy/<int:ppid>/Property', views.PPProperty, name='PPProperty'),
    path('editproductandpolicy/<int:ppid>/customer', views.PPcustomer, name='PPcustomer'),
    path('editproductandpolicy/<int:ppid>/editcustomer/<int:customerid>', views.PPeditcustomer, name='PPeditcustomer'),
    path('editproductandpolicy/<int:ppid>/PropertyType', views.PPPropertyType, name='PPPropertyType'),
    path('editproductandpolicy/<int:ppid>/editPropertyType/<int:propertytypeid>', views.PPeditPropertyType, name='PPeditPropertyType'),
    path('editproductandpolicy/<int:ppid>/customernationality', views.PPcustomernationality, name='PPcustomernationality'),
    path('editproductandpolicy/<int:ppid>/editcustomernationality/<int:customernationalityid>', views.PPeditcustomernationality, name='PPeditcustomernationality'),
    path('editproductandpolicy/<int:ppid>/fees', views.PPfees, name='PPfees'),
    path('Remarks', views.PPRemarks, name='PPRemarks'),
    path('editproductandpolicy/<int:ppid>/incomefoir', views.PPincomefoir, name='PPincomefoir'),
    path('editproductandpolicy/<int:ppid>/editincomefoir/<int:incomefoirid>', views.PPeditincomefoir, name='PPeditincomefoir'),
    path('editproductandpolicy/<int:ppid>/RoomType', views.PPRoomType, name='PPRoomType'),
    path('editproductandpolicy/<int:ppid>/editRoomType/<int:roomtypeid>', views.PPediRoomType, name='PPediRoomType'),
    path('editproductandpolicy/<int:ppid>/income', views.PPincome, name='PPincome'),
    path('editproductandpolicy/<int:ppid>/StageOfConstruction', views.PPStageOfConstruction, name='PPStageOfConstruction'),
    path('editproductandpolicy/<int:ppid>/editStageOfConstruction/<int:stageofconstructionid>', views.PPeditstageofconstruction, name='PPeditstageofconstruction'),
    path('editproductandpolicy/<int:ppid>/LoanAmount', views.PPLoanAmount, name='PPLoanAmount'),
    path('editproductandpolicy/<int:ppid>/editLoanAmount/<int:loanamountid>', views.PPeditLoanAmount, name='PPeditLoanAmount'),
    path('editproductandpolicy/<int:ppid>/Loantowardsvaluation', views.PPLoantowardsvaluation, name='PPLoantowardsvaluation'),
    path('editproductandpolicy/<int:ppid>/LtvResale', views.PPLtvResale, name='PPLtvResale'),
    path('editproductandpolicy/<int:ppid>/editLtvResale/<int:ltvresaleid>', views.PPeditLtvResale, name='PPeditLtvResale'),
    path('productsandpolicy/<str:action>', views.Productandpolicy, name='AddProductsAndPolicy'),
    path('listproductandpolicy', views.listproductandpolicy, name='listproductandpolicy'),
    path('editproductandpolicy/<int:id>', views.editproductandpolicy, name='editproductandpolicy'),
    path('editproductandpolicy/<int:ppid>/editproperty/<int:propertyid>', views.PPeditproperty, name='PPeditproperty'),
    path('editproductandpolicy/<int:ppid>/editloantowardsevalution/<int:ltvid>', views.PPeditloantowardsvalution, name='PPeditloantowardsvalution'),
    path('editproductandpolicy/<int:ppid>/editfee/<int:feeid>', views.PPeditfee, name='PPeditfee'),
    path('editproductandpolicy/<int:ppid>/editincome/<int:incomeid>', views.PPeditincome, name='PPeditincome'),
    path('editproductandpolicy/<int:ppid>/editcustomerdesignation/<int:customerdesignationid>', views.ppeditcustomerdesignation, name='ppeditcustomerdesignation'),
    path('editproductandpolicy/<int:ppid>/editotherdetails/<int:otherdetailid>', views.ppeditotherdetail, name='ppeditotherdetail'),
    path('basicdetails/<int:id>',views.Productandpolicy_basicdetails, name='ProductsAndPolicyBasicDetails'),
    path('incomedetails/<int:id>',views.Productandpolicy_incomedetails, name='ProductsAndPolicyIncomeDetails'),
    path('incomefoirdetails/<int:id>', views.Productandpolicy_incomefoirdetails, name='ProductsAndPolicyIncomeFoirDetails'),
    path('obligations/<int:id>',views.Productandpolicy_obligation,name='ProductsAndPolicyObligationDetails'),
    path('otherdetails/<int:id>',views.Productandpolicy_otherdetails,name='ProductsAndPolicyOtherDetails'),
    path('propertydetails/<int:id>',views.Productandpolicy_propertydetails,name='ProductsAndPolicyPropertyDetails'),
    path('loantovalue1details/<int:id>',views.Productandpolicy_loantovalue_1_details,name='ProductsAndPolicyLoanToValue1Details'),
    path('loantovalue2details/<int:id>',views.Productandpolicy_loantovalue_2_details,name='ProductsAndPolicyLoanToValue2Details'),
    path('revieworedit/<int:id>',views.Productandpolicy_revieworedit,name='ProductsAndPolicyReviewOrEdit'),
    path('cibildetails/<int:id>',views.Productandpolicy_cibildetails,name='ProductsAndPolicyCibilDetails'),
    path('editbasicdetails',views.editbasicdetails,name='EditBasicDetails'),
    path('editincomedetails',views.editincomedetails,name='EditIncomeDetails'),
    path('editcibildetails',views.editcibildetails,name='EditCibilDetails'),
    path('editobligations',views.editobligations,name='EditObligationDetails'),
    path('editotherdetails',views.editotherdetails,name='EditOtherDetails'),
    path('editpropertydetails',views.editpropertydetails,name='EditPropertyDetails'),
    path('editloantovaluedetails',views.editloantovaluedetails,name='EditLoanToValueDetails'),
    path('editincomefoirdetails',views.editincomefoirdetails,name='EditIncomeFoirDetails'),
    path('editloanvaluetype1',views.editloanvaluetype1,name='EditHltvt1i'),
    path('editloanvaluetype2',views.editloanvaluetype2,name='EditHltvtli2'),
    path('submitproductandpolicy/<int:id>',views.submitproductandpolicy,name='SubmitProductAndPolicy'),
    path('deleteincomefoirdetials/<int:id>',views.deleteincomefoirdetails,name='DeleteIncomeFoirDetails'),
]