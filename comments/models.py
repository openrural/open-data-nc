from django.db import models
from django.contrib.comments.models import Comment


class CommentWithRating(Comment):
    rating = models.IntegerField()

    def save(self, *args, **kwargs):
        # import pdb; pdb.set_trace()
        self.content_object.rating.add(
            score=self.rating, user=self.user, ip_address=self.ip_address
        )
        super(CommentWithRating, self).save(*args, **kwargs)
