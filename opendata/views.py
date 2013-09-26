from django.views.generic import TemplateView

from opendata.catalog.models import UrlImage


class Home(TemplateView):
    template_name = 'home.html'

    def get_context_data(self, **kwargs):
        context = super(Home, self).get_context_data(**kwargs)
        random_feature = UrlImage.objects.select_random()
        context["feature_images"] = random_feature
        return context
