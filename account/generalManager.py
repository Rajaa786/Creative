from django.shortcuts import render, redirect
# dic = {
#     'f' : 78,
#     'g' : 45
# }
def personal_loan_next_step_handler(lead_id):
    return redirect("check_eligibility", lead_id)


def car_refinance_loan_next_step_handler(lead_id):

    # TO-DO
    # return redirect("")
    pass





loan_info_dict = {
    'Personal Loan' : personal_loan_next_step_handler,


    # Add Car Refinance product name as it is then write the next redirect step in the function for car refinance
    # 'Example Loan' : car_refinance_loan_next_step_handler,
}