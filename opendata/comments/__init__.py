from .models import CommentWithRating
from .forms import CommentFormWithRating


def get_model():
    return CommentWithRating


def get_form():
    return CommentFormWithRating
