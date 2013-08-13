from django import template

from urllib import urlencode

register = template.Library()


@register.simple_tag
def remove_facet(request, facet_value):
    """"Returns a string that extracts the supplied facet_value's facet from
        the current querystring

        Example:
            {% load facet_tags %}
            {% remove_facet request value %}

        Renders:
            ?q=text&page=N
        or
            ?q=text&page=N&selected_facets=facet2:value
        if additional selected_facets are in the current querystring
    """
    params = []
    for param in request.GET.lists():
        # reconstruct the non-selected_facets params
        # import pdb; pdb.set_trace()
        if param[0] != 'selected_facets':
            for v in param[1]:
                params.append((param[0], v))
        else:
            for v in param[1]:
                # exclude the selected_facet param that matches the supplied
                # facet_value
                if facet_value != v.split(':')[1]:
                    params.append((param[0], v))
    qs = '?%s' % urlencode(params)
    return qs


@register.simple_tag
def faceted_next_prev_querystring(request, page_number):
    """"Returns a string that provides the querystring required to paginate in
        search results while retaining the selected facets

        Example:
            {% load facet_tags %}
            {% faceted_next_prev_querystring request page_number %}

        Renders:
           ?q=text&page=N&selected_facets=facet:value
    """
    q_dict = request.GET.copy()
    q_dict['page'] = page_number
    qs = '?%s' % q_dict.urlencode()
    return qs