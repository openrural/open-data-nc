from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse
from django.views.decorators.http import require_POST
from suggestions.models import *
from suggestions.forms import SearchForm, SuggestionForm
from djangoratings.exceptions import CannotDeleteVote


def list_suggestions(request):
    "List current suggestions"
    suggestions = Suggestion.objects.order_by("-rating_score")
    if request.method == 'GET':
        form = SearchForm(request.GET)
        if form.is_valid():
            query = form.cleaned_data['text']
            suggestions = suggestions.filter(title__icontains=query)
    else:
        form = SearchForm()
    context = {
        'form': form,
        'suggestions': suggestions,
    }
    return render(request, 'suggestions/list.html', context)


@login_required
def add_suggestion(request):
    "Add new suggestion"
    if request.method == 'POST':
        form = SuggestionForm(request.POST)
        if form.is_valid():
            suggestion = form.save(commit=False)
            suggestion.suggested_by = request.user
            suggestion.save()
            suggestion.rating.add(score=1, user=request.user,
                                  ip_address=request.META['REMOTE_ADDR'])
            return redirect(reverse('suggestion-list'))
    else: 
        form = SuggestionForm()
    context = {
        'form': form
    }
    return render(request, 'suggestions/create_edit.html', context)


@login_required
@require_POST
def vote(request, suggestion_id):
    "Vote for a suggestion"
    suggestion = get_object_or_404(Suggestion, pk=suggestion_id)
    voted = suggestion.rating.get_rating_for_user(request.user,
                                                  request.META['REMOTE_ADDR'])
    if not voted:
        suggestion.rating.add(score=1, user=request.user,
                              ip_address=request.META['REMOTE_ADDR'])
    return redirect(reverse('suggestion-list'))


@login_required
@require_POST
def remove_vote(request, suggestion_id):
    "Remove pre-existing vote for suggestion"
    suggestion = get_object_or_404(Suggestion, pk=suggestion_id)
    try:
        suggestion.rating.delete(request.user, request.META['REMOTE_ADDR'])
    except CannotDeleteVote:
        # vote didn't exist, just move on
        pass
    return redirect(reverse('suggestion-list'))
