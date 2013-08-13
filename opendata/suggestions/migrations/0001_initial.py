# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Suggestion'
        db.create_table(u'suggestions_suggestion', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('date', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
            ('date_last_modified', self.gf('django.db.models.fields.DateTimeField')(auto_now=True, blank=True)),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('short_description', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('description', self.gf('django.db.models.fields.TextField')()),
            ('url', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('data_format', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('other_format', self.gf('django.db.models.fields.CharField')(max_length=255, blank=True)),
            ('agency_name', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('agency_division', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('agency_type', self.gf('django.db.models.fields.CharField')(max_length=16)),
            ('city', self.gf('django.db.models.fields.related.ForeignKey')(blank=True, related_name='suggestions', null=True, to=orm['catalog.City'])),
            ('county', self.gf('django.db.models.fields.related.ForeignKey')(blank=True, related_name='suggestions', null=True, to=orm['catalog.County'])),
            ('last_updated', self.gf('django.db.models.fields.DateField')(null=True, blank=True)),
            ('update_frequency', self.gf('django.db.models.fields.CharField')(max_length=16)),
            ('keywords', self.gf('django.db.models.fields.CommaSeparatedIntegerField')(max_length=255, blank=True)),
            ('contact_name', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('phone_number', self.gf('django.db.models.fields.CharField')(max_length=30)),
            ('street_address', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('contact_city', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('zipcode', self.gf('django.db.models.fields.CharField')(max_length=30)),
            ('email_address', self.gf('django.db.models.fields.CharField')(max_length=100)),
        ))
        db.send_create_signal(u'suggestions', ['Suggestion'])

        # Adding M2M table for field categories on 'Suggestion'
        m2m_table_name = db.shorten_name(u'suggestions_suggestion_categories')
        db.create_table(m2m_table_name, (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('suggestion', models.ForeignKey(orm[u'suggestions.suggestion'], null=False)),
            ('category', models.ForeignKey(orm[u'catalog.category'], null=False))
        ))
        db.create_unique(m2m_table_name, ['suggestion_id', 'category_id'])


    def backwards(self, orm):
        # Deleting model 'Suggestion'
        db.delete_table(u'suggestions_suggestion')

        # Removing M2M table for field categories on 'Suggestion'
        db.delete_table(db.shorten_name(u'suggestions_suggestion_categories'))


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