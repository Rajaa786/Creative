from django.contrib.auth.tokens import PasswordResetTokenGenerator
from six import text_type
from io import BytesIO
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
import os
from .models import *

Personal_Details = "personal_details"
Income_Details = "income_details"
Company_Details = "company_details"
Additional_Details = "additional_details"
Additional_Other_Income_Details = "additional_other_income_details"
Existing_Loan_Details = "existing_loan_details"
Existing_Credit_Card_Details = "existing_credit_card_details"
Investment_Details = "investment_details"
Residence_Details = "residence_details"
Other_Income_Details = "other_income_details"

detail_check_list_dict = {
    Personal_Details: SalPersonalDetails,
    Income_Details: SalIncomeDetails,
    Company_Details: SalCompanyDetails,
    Additional_Details: SalAdditionalDetails,
    Additional_Other_Income_Details: SalAdditionalOtherIncomes,
    Existing_Loan_Details: SalExistingLoanDetails,
    Existing_Credit_Card_Details: SalExistingCreditCard,
    Investment_Details: SalInvestments,
    Residence_Details: SalResidenceDetails,
    Other_Income_Details: SalOtherIncomes,
}

detail_doc_check_list_dict = {
    
}


class AppTokenGenerator(PasswordResetTokenGenerator):

    def _make_hash_value(self, user, timestamp):
        return (text_type(user.is_active) + text_type(user.pk) + text_type(timestamp))


token_generator = AppTokenGenerator()


def link_callback(uri, rel, request):
    uri = uri[1:]
    base = request.build_absolute_uri('/')
    path = os.path.join(base, uri)

    return path


def render_to_pdf(template_src, request, context_dict={}):

    template = get_template(template_src)
    html = template.render(context_dict)

    result = BytesIO()
    pdf = pisa.pisaDocument(BytesIO(html.encode("utf-8")), result,
                            link_callback=lambda uri, rel: link_callback(uri, rel, request))
    if not pdf.err:
        return result.getvalue()
    return None

    # template = get_template(template_src)
    # html  = template.render(context_dict)
    # result = BytesIO()
    # pdf = pisa.pisaDocument(BytesIO(html.encode("utf-8")), result)
    # if not pdf.err:
    #     return HttpResponse(result.getvalue(), content_type='application/pdf')
    # return None
