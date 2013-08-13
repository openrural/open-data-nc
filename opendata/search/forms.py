from haystack.forms import FacetedSearchForm


class FacetedSearchListingForm(FacetedSearchForm):

    def no_query_found(self):
        """
        Return all results for search queries with no parameter
        """
        return self.searchqueryset.all()