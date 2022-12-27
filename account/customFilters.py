from django import template

register = template.Library()

@register.filter
def find_gst(processing_fee, arg):
    return processing_fee * 1.18