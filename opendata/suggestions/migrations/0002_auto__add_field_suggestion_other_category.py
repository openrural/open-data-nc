# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'Suggestion.other_category'
        db.add_column(u'suggestions_suggestion', 'other_category',
                      self.gf('django.db.models.fields.CharField')(default='', max_length=255, blank=True),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting field 'Suggestion.other_category'
        db.delete_column(u'suggestions_suggestion', 'other_category')


    models = {
        u'catalog.category': {
            'Meta': {'object_name': 'Category'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '150'})
        },
        u'catalog.city': {
            'Meta': {'object_name': 'City'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        u'catalog.county': {
            'Meta': {'object_name': 'County'},
            'cities': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'counties'", 'symmetrical': 'False', 'to': u"orm['catalog.City']"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        u'suggestions.suggestion': {
            'Meta': {'object_name': 'Suggestion'},
            'agency_division': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'agency_name': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'agency_type': ('django.db.models.fields.CharField', [], {'max_length': '16'}),
            'categories': ('django.db.models.fields.related.ManyToManyField', [], {'blank': 'True', 'related_name': "'suggestions'", 'null': 'True', 'symmetrical': 'False', 'to': u"orm['catalog.Category']"}),
            'city': ('django.db.models.fields.related.ForeignKey', [], {'blank': 'True', 'related_name': "'suggestions'", 'null': 'True', 'to': u"orm['catalog.City']"}),
            'contact_city': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'contact_name': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'county': ('django.db.models.fields.related.ForeignKey', [], {'blank': 'True', 'related_name': "'suggestions'", 'null': 'True', 'to': u"orm['catalog.County']"}),
            'data_format': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'date': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'date_last_modified': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.TextField', [], {}),
            'email_address': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'keywords': ('django.db.models.fields.CommaSeparatedIntegerField', [], {'max_length': '255', 'blank': 'True'}),
            'last_updated': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'other_category': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'other_format': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'phone_number': ('django.db.models.fields.CharField', [], {'max_length': '30'}),
            'short_description': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'street_address': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'update_frequency': ('django.db.models.fields.CharField', [], {'max_length': '16'}),
            'url': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'zipcode': ('django.db.models.fields.CharField', [], {'max_length': '30'})
        }
    }

    complete_apps = ['suggestions']