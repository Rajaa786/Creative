from django import template

register = template.Library()

@register.filter(name='is_incomplete')
def is_incomplete(value, arg):
    return value[arg]['incomplete']