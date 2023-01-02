from django.contrib.auth.tokens import PasswordResetTokenGenerator
from six import text_type
from io import BytesIO
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
import os


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
