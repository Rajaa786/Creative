from django.shortcuts import render, redirect
# dic = {
#     'f' : 78,
#     'g' : 45
# }
def personal_loan_next_step_handler(lead_id):
    return redirect("check_eligibility", lead_id)


def car_refinance_loan_next_step_handler(lead_id):
    return redirect("car_refinance",lead_id)

def home_loan_next_step_handler(lead_id):
    return redirect("property_details",lead_id)






loan_info_dict = {
    'Personal Loan' : personal_loan_next_step_handler,
    'Car Refinance' : car_refinance_loan_next_step_handler,
    'Home Loan' : home_loan_next_step_handler,

    # Add Car Refinance product name as it is then write the next redirect step in the function for car refinance
    # 'Example Loan' : car_refinance_loan_next_step_handler,
}