from celery import task
from django.core.mail import send_mail


@task
def send_email(subject, message, from_email, recipient_list):
    """Send email async using a celery worker

        args: Take sames args as django send_mail function.
    """
    send_mail(subject, message, from_email, recipient_list)

@task
def update_object(index, instance, using=None):
    index.update_object(instance, using=using)

@task
def remove_object(index, instance, using=None):
    index.remove_object(instance, using=using)