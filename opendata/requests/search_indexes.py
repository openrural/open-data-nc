from haystack import indexes
from .models import Request


class RequestIndex(indexes.SearchIndex, indexes.Indexable):
    text = indexes.NgramField(document=True, use_template=True)
    name = indexes.CharField(model_attr='title')

    def get_model(self):
        return Request

    def index_queryset(self, using=None):
        return self.get_model().objects.all()
