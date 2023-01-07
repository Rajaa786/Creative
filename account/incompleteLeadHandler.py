# from master.models import Product
from .models import Leads, Applicant_fill, Salaried_fill, Documents_fill, AdditionalDetails, SalPersonalDetails, SalCompanyDetails, SalIncomeDetails, SalExistingCreditCard, SalExistingLoanDetails, SalResidenceDetails, SalAdditionalDetails, SalAdditionalOtherIncomes, SalInvestments, SalOtherIncomes
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect
from django.urls import reverse
from .utils import detail_check_list_dict


# for product in Product.objects.all():
#     incomplete_lead_helper_dict[product.product] = product.product


def incomplete_personal_loan_handler(request, lead_id, completion_status, loan_type):
    print(lead_id, loan_type)

    if completion_status == Applicant_fill:
        return redirect('additionaldetails', lead_id)

    if completion_status == Salaried_fill:
        applicants = AdditionalDetails.objects.filter(
            lead_id__id=lead_id).order_by('id')

        for applicant in applicants:

            for detail_check in detail_check_list_dict:
                if not detail_check_list_dict[detail_check].objects.filter(addi_details_id__id = applicant.id).exists():
                    return redirect("salaried", lead_id, applicant.id)

    
    if completion_status == Documents_fill:
        # applicants_ = AdditionalDetails.objects.filter(
        #     lead_id__id=lead_id).order_by('id')
        return redirect("upload_documents" , lead_id)

            # for applicant_ in applicants_:
            #     for detail_doc_check in detail_doc_check_list_dict:





incomplete_lead_helper_dict = {
    'Personal Loan': incomplete_personal_loan_handler
}
