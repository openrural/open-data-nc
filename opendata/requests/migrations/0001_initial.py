# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Request'
        db.create_table(u'requests_request', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('date', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, blank=True)),
            ('date_last_modified', self.gf('django.db.models.fields.DateTimeField')(auto_now=True, blank=True)),
            ('suggested_by', self.gf('django.db.models.fields.related.ForeignKey')(related_name='suggested_by', to=orm['auth.User'])),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('description', self.gf('django.db.models.fields.TextField')()),
            ('relevance', self.gf('django.db.models.fields.TextField')()),
            ('url', self.gf('django.db.models.fields.URLField')(max_length=200)),
            ('agency_type', self.gf('django.db.models.fields.CharField')(max_length=16)),
            ('city', self.gf('django.db.models.fields.related.ForeignKey')(blank=True, related_name='requests', null=True, to=orm['catalog.City'])),
            ('county', self.gf('django.db.models.fields.related.ForeignKey')(blank=True, related_name='requests', null=True, to=orm['catalog.County'])),
            ('agency_name', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('agency_division', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('update_frequency', self.gf('django.db.models.fields.CharField')(max_length=16)),
            ('agency_contact', self.gf('django.db.models.fields.CharField')(max_length=255, blank=True)),
            ('other_category', self.gf('django.db.models.fields.CharField')(max_length=255, blank=True)),
            ('rating_votes', self.gf('django.db.models.fields.PositiveIntegerField')(default=0, blank=True)),
            ('rating_score', self.gf('django.db.models.fields.IntegerField')(default=0, blank=True)),
        ))
        db.send_create_signal(u'requests', ['Request'])

        # Adding M2M table for field categories on 'Request'
        m2m_table_name = db.shorten_name(u'requests_request_categories')
        db.create_table(m2m_table_name, (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('request', models.ForeignKey(orm[u'requests.request'], null=False)),
            ('category', models.ForeignKey(orm[u'catalog.category'], null=False))
        ))
        db.create_unique(m2m_table_name, ['request_id', 'category_id'])

        # Adding M2M table for field resources on 'Request'
        m2m_table_name = db.shorten_name(u'requests_request_resources')
        db.create_table(m2m_table_name, (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('request', models.ForeignKey(orm[u'requests.request'], null=False)),
            ('resource', models.ForeignKey(orm[u'catalog.resource'], null=False))
        ))
        db.create_unique(m2m_table_name, ['request_id', 'resource_id'])


    def backwards(self, orm):
        # Deleting model 'Request'
        db.delete_table(u'requests_request')

        # Removing M2M table for field categories on 'Request'
        db.delete_table(db.shorten_name(u'requests_request_categories'))

        # Removing M2M table for field resources on 'Request'
        db.delete_table(db.shorten_name(u'requests_request_resources'))


    models = {
        u'auth.group': {
            'Meta': {'object_name': 'Group'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '80'}),
            'permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'})
        },
        u'auth.permission': {
            'Meta': {'ordering': "(u'content_type__app_label', u'content_type__model', u'codename')", 'unique_together': "((u'content_type', u'codename'),)", 'object_name': 'Permission'},
            'codename': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['contenttypes.ContentType']"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        u'auth.user': {
            'Meta': {'object_name': 'User'},
            'date_joined': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'groups': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['auth.Group']", 'symmetrical': 'False', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'is_staff': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_superuser': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'last_login': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'password': ('django.db.models.fields.CharField', [], {'max_length': '128'}),
            'user_permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'}),
            'username': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '30'})
        },
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
        u'catalog.coordsystem': {
            'EPSG_code': ('django.db.models.fields.IntegerField', [], {'blank': 'True'}),
            'Meta': {'ordering': "['EPSG_code']", 'object_name': 'CoordSystem'},
            'description': ('django.db.models.fields.TextField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '255'})
        },
        u'catalog.county': {
            'Meta': {'object_name': 'County'},
            'cities': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'counties'", 'symmetrical': 'False', 'to': u"orm['catalog.City']"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        u'catalog.datatype': {
            'Meta': {'object_name': 'DataType'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        u'catalog.resource': {
            'Meta': {'object_name': 'Resource'},
            'area_of_interest': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'categories': ('django.db.models.fields.related.ManyToManyField', [], {'blank': 'True', 'related_name': "'resources'", 'null': 'True', 'symmetrical': 'False', 'to': u"orm['catalog.Category']"}),
            'cities': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': u"orm['catalog.City']", 'null': 'True', 'blank': 'True'}),
            'contact_email': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'contact_phone': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
            'contact_url': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'coord_sys': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': u"orm['catalog.CoordSystem']", 'null': 'True', 'blank': 'True'}),
            'counties': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': u"orm['catalog.County']", 'null': 'True', 'blank': 'True'}),
            'created': ('django.db.models.fields.DateTimeField', [], {}),
            'created_by': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'created_by'", 'to': u"orm['auth.User']"}),
            'csw_anytext': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'csw_mdsource': ('django.db.models.fields.CharField', [], {'default': "'local'", 'max_length': '100'}),
            'csw_schema': ('django.db.models.fields.CharField', [], {'default': "'http://www.opengis.net/cat/csw/2.0.2'", 'max_length': '200'}),
            'csw_typename': ('django.db.models.fields.CharField', [], {'default': "'csw:Record'", 'max_length': '200'}),
            'csw_xml': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'data_formats': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'data_types': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'to': u"orm['catalog.DataType']", 'null': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.TextField', [], {}),
            'division': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_published': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'last_updated': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'}),
            'last_updated_by': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'updated_by'", 'to': u"orm['auth.User']"}),
            'metadata_contact': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'metadata_notes': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'organization': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'proj_coord_sys': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'rating_score': ('django.db.models.fields.IntegerField', [], {'default': '0', 'blank': 'True'}),
            'rating_votes': ('django.db.models.fields.PositiveIntegerField', [], {'default': '0', 'blank': 'True'}),
            'release_date': ('django.db.models.fields.DateField', [], {'null': 'True', 'blank': 'True'}),
            'short_description': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'slug': ('django.db.models.fields.SlugField', [], {'max_length': '50'}),
            'time_period': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
            'update_frequency': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'updates': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['catalog.UpdateFrequency']", 'null': 'True', 'blank': 'True'}),
            'usage': ('django.db.models.fields.TextField', [], {}),
            'wkt_geometry': ('django.db.models.fields.TextField', [], {'blank': 'True'})
        },
        u'catalog.updatefrequency': {
            'Meta': {'ordering': "['update_frequency']", 'object_name': 'UpdateFrequency'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'update_frequency': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        u'contenttypes.contenttype': {
            'Meta': {'ordering': "('name',)", 'unique_together': "(('app_label', 'model'),)", 'object_name': 'ContentType', 'db_table': "'django_content_type'"},
            'app_label': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'model': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        u'requests.request': {
            'Meta': {'object_name': 'Request'},
            'agency_contact': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'agency_division': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'agency_name': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'agency_type': ('django.db.models.fields.CharField', [], {'max_length': '16'}),
            'categories': ('django.db.models.fields.related.ManyToManyField', [], {'blank': 'True', 'related_name': "'requests'", 'null': 'True', 'symmetrical': 'False', 'to': u"orm['catalog.Category']"}),
            'city': ('django.db.models.fields.related.ForeignKey', [], {'blank': 'True', 'related_name': "'requests'", 'null': 'True', 'to': u"orm['catalog.City']"}),
            'county': ('django.db.models.fields.related.ForeignKey', [], {'blank': 'True', 'related_name': "'requests'", 'null': 'True', 'to': u"orm['catalog.County']"}),
            'date': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'blank': 'True'}),
            'date_last_modified': ('django.db.models.fields.DateTimeField', [], {'auto_now': 'True', 'blank': 'True'}),
            'description': ('django.db.models.fields.TextField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'other_category': ('django.db.models.fields.CharField', [], {'max_length': '255', 'blank': 'True'}),
            'rating_score': ('django.db.models.fields.IntegerField', [], {'default': '0', 'blank': 'True'}),
            'rating_votes': ('django.db.models.fields.PositiveIntegerField', [], {'default': '0', 'blank': 'True'}),
            'relevance': ('django.db.models.fields.TextField', [], {}),
            'resources': ('django.db.models.fields.related.ManyToManyField', [], {'blank': 'True', 'related_name': "'requests'", 'null': 'True', 'symmetrical': 'False', 'to': u"orm['catalog.Resource']"}),
            'suggested_by': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'suggested_by'", 'to': u"orm['auth.User']"}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'update_frequency': ('django.db.models.fields.CharField', [], {'max_length': '16'}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200'})
        }
    }

    complete_apps = ['requests']