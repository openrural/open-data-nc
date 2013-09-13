--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT worker_id_refs_id_6fd8ce95;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT user_id_refs_id_4dc23c39;
ALTER TABLE ONLY public.djangoratings_ignoredobject DROP CONSTRAINT user_id_refs_id_4cea1bfb;
ALTER TABLE ONLY public.djangoratings_vote DROP CONSTRAINT user_id_refs_id_4ce71293;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT user_id_refs_id_40c41112;
ALTER TABLE ONLY public.catalog_url DROP CONSTRAINT url_type_id_refs_id_9e1e46c6;
ALTER TABLE ONLY public.catalog_resource DROP CONSTRAINT updates_id_refs_id_5c42f832;
ALTER TABLE ONLY public.suggestions_suggestion DROP CONSTRAINT updates_id_refs_id_3e5079e5;
ALTER TABLE ONLY public.requests_request DROP CONSTRAINT updates_id_refs_id_3a4e622b;
ALTER TABLE ONLY public.djangoratings_similaruser DROP CONSTRAINT to_user_id_refs_id_ff79a0a1;
ALTER TABLE ONLY public.suggestions_suggestion_categories DROP CONSTRAINT suggestion_id_refs_id_5d7c4277;
ALTER TABLE ONLY public.requests_request DROP CONSTRAINT suggested_by_id_refs_id_08212898;
ALTER TABLE ONLY public.catalog_resource_coord_sys DROP CONSTRAINT resource_id_refs_id_fa56d5f5;
ALTER TABLE ONLY public.requests_request_resources DROP CONSTRAINT resource_id_refs_id_f139139d;
ALTER TABLE ONLY public.catalog_url DROP CONSTRAINT resource_id_refs_id_ed4c6da7;
ALTER TABLE ONLY public.catalog_resource_counties DROP CONSTRAINT resource_id_refs_id_dede1b38;
ALTER TABLE ONLY public.catalog_resource_data_types DROP CONSTRAINT resource_id_refs_id_6d0fb48c;
ALTER TABLE ONLY public.catalog_urlimage DROP CONSTRAINT resource_id_refs_id_29105c18;
ALTER TABLE ONLY public.catalog_resource_cities DROP CONSTRAINT resource_id_refs_id_193497b7;
ALTER TABLE ONLY public.catalog_resource_categories DROP CONSTRAINT resource_id_refs_id_002a62ac;
ALTER TABLE ONLY public.requests_request_resources DROP CONSTRAINT request_id_refs_id_e884bfc6;
ALTER TABLE ONLY public.requests_request_categories DROP CONSTRAINT request_id_refs_id_6e0b99c0;
ALTER TABLE ONLY public.catalog_resource DROP CONSTRAINT last_updated_by_id_refs_id_e6ae9264;
ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT interval_id_refs_id_1829f358;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT group_id_refs_id_f4b32aac;
ALTER TABLE ONLY public.djangoratings_similaruser DROP CONSTRAINT from_user_id_refs_id_ff79a0a1;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_user_id_fkey;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_site_id_fkey;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_content_type_id_fkey;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_user_id_fkey;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_comment_id_fkey;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_fkey;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_fkey;
ALTER TABLE ONLY public.catalog_department_divisions DROP CONSTRAINT division_id_refs_id_f967fce3;
ALTER TABLE ONLY public.catalog_resource DROP CONSTRAINT division_id_refs_id_e01d1338;
ALTER TABLE ONLY public.catalog_resource DROP CONSTRAINT department_id_refs_id_bf0b39ad;
ALTER TABLE ONLY public.catalog_department_divisions DROP CONSTRAINT department_id_refs_id_1d423ba1;
ALTER TABLE ONLY public.catalog_resource_data_types DROP CONSTRAINT datatype_id_refs_id_7e7300ee;
ALTER TABLE ONLY public.suggestions_suggestion DROP CONSTRAINT data_format_id_refs_id_11a65d94;
ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT crontab_id_refs_id_286da0d1;
ALTER TABLE ONLY public.catalog_resource DROP CONSTRAINT created_by_id_refs_id_e6ae9264;
ALTER TABLE ONLY public.catalog_resource_counties DROP CONSTRAINT county_id_refs_id_fe34ca12;
ALTER TABLE ONLY public.suggestions_suggestion DROP CONSTRAINT county_id_refs_id_a2998ca6;
ALTER TABLE ONLY public.requests_request DROP CONSTRAINT county_id_refs_id_5d35ae45;
ALTER TABLE ONLY public.catalog_county_cities DROP CONSTRAINT county_id_refs_id_1729b5f2;
ALTER TABLE ONLY public.catalog_resource_coord_sys DROP CONSTRAINT coordsystem_id_refs_id_45a16939;
ALTER TABLE ONLY public.djangoratings_ignoredobject DROP CONSTRAINT content_type_id_refs_id_f28bca0f;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT content_type_id_refs_id_d043b34a;
ALTER TABLE ONLY public.djangoratings_vote DROP CONSTRAINT content_type_id_refs_id_c2843220;
ALTER TABLE ONLY public.djangoratings_score DROP CONSTRAINT content_type_id_refs_id_bc7f6186;
ALTER TABLE ONLY public.comments_commentwithrating DROP CONSTRAINT comments_commentwithrating_comment_ptr_id_fkey;
ALTER TABLE ONLY public.suggestions_suggestion DROP CONSTRAINT city_id_refs_id_fb88dd47;
ALTER TABLE ONLY public.catalog_resource_cities DROP CONSTRAINT city_id_refs_id_c7bc2909;
ALTER TABLE ONLY public.catalog_county_cities DROP CONSTRAINT city_id_refs_id_63cbde27;
ALTER TABLE ONLY public.requests_request DROP CONSTRAINT city_id_refs_id_2d99f755;
ALTER TABLE ONLY public.suggestions_suggestion_categories DROP CONSTRAINT category_id_refs_id_e1e66a7f;
ALTER TABLE ONLY public.catalog_resource_categories DROP CONSTRAINT category_id_refs_id_79b2276b;
ALTER TABLE ONLY public.requests_request_categories DROP CONSTRAINT category_id_refs_id_52997a64;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_permission_id_fkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_fkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_permission_id_fkey;
DROP INDEX public.thumbnail_kvstore_key_like;
DROP INDEX public.suggestions_suggestion_updates_id;
DROP INDEX public.suggestions_suggestion_data_format_id;
DROP INDEX public.suggestions_suggestion_county_id;
DROP INDEX public.suggestions_suggestion_city_id;
DROP INDEX public.suggestions_suggestion_categories_suggestion_id;
DROP INDEX public.suggestions_suggestion_categories_category_id;
DROP INDEX public.scribbler_scribble_slug_like;
DROP INDEX public.scribbler_scribble_slug;
DROP INDEX public.requests_request_updates_id;
DROP INDEX public.requests_request_suggested_by_id;
DROP INDEX public.requests_request_resources_resource_id;
DROP INDEX public.requests_request_resources_request_id;
DROP INDEX public.requests_request_county_id;
DROP INDEX public.requests_request_city_id;
DROP INDEX public.requests_request_categories_request_id;
DROP INDEX public.requests_request_categories_category_id;
DROP INDEX public.djcelery_workerstate_last_heartbeat;
DROP INDEX public.djcelery_workerstate_hostname_like;
DROP INDEX public.djcelery_taskstate_worker_id;
DROP INDEX public.djcelery_taskstate_tstamp;
DROP INDEX public.djcelery_taskstate_task_id_like;
DROP INDEX public.djcelery_taskstate_state_like;
DROP INDEX public.djcelery_taskstate_state;
DROP INDEX public.djcelery_taskstate_name_like;
DROP INDEX public.djcelery_taskstate_name;
DROP INDEX public.djcelery_taskstate_hidden;
DROP INDEX public.djcelery_periodictask_name_like;
DROP INDEX public.djcelery_periodictask_interval_id;
DROP INDEX public.djcelery_periodictask_crontab_id;
DROP INDEX public.djangoratings_vote_user_id;
DROP INDEX public.djangoratings_vote_content_type_id;
DROP INDEX public.djangoratings_similaruser_to_user_id;
DROP INDEX public.djangoratings_similaruser_from_user_id;
DROP INDEX public.djangoratings_score_content_type_id;
DROP INDEX public.djangoratings_ignoredobject_user_id;
DROP INDEX public.djangoratings_ignoredobject_content_type_id;
DROP INDEX public.django_session_session_key_like;
DROP INDEX public.django_session_expire_date;
DROP INDEX public.django_comments_user_id;
DROP INDEX public.django_comments_site_id;
DROP INDEX public.django_comments_content_type_id;
DROP INDEX public.django_comment_flags_user_id;
DROP INDEX public.django_comment_flags_flag_like;
DROP INDEX public.django_comment_flags_flag;
DROP INDEX public.django_comment_flags_comment_id;
DROP INDEX public.django_admin_log_user_id;
DROP INDEX public.django_admin_log_content_type_id;
DROP INDEX public.celery_tasksetmeta_taskset_id_like;
DROP INDEX public.celery_tasksetmeta_hidden;
DROP INDEX public.celery_taskmeta_task_id_like;
DROP INDEX public.celery_taskmeta_hidden;
DROP INDEX public.catalog_urlimage_resource_id;
DROP INDEX public.catalog_url_url_type_id;
DROP INDEX public.catalog_url_resource_id;
DROP INDEX public.catalog_resource_updates_id;
DROP INDEX public.catalog_resource_slug_like;
DROP INDEX public.catalog_resource_slug;
DROP INDEX public.catalog_resource_last_updated_by_id;
DROP INDEX public.catalog_resource_division_id;
DROP INDEX public.catalog_resource_department_id;
DROP INDEX public.catalog_resource_data_types_resource_id;
DROP INDEX public.catalog_resource_data_types_datatype_id;
DROP INDEX public.catalog_resource_created_by_id;
DROP INDEX public.catalog_resource_counties_resource_id;
DROP INDEX public.catalog_resource_counties_county_id;
DROP INDEX public.catalog_resource_coord_sys_resource_id;
DROP INDEX public.catalog_resource_coord_sys_coordsystem_id;
DROP INDEX public.catalog_resource_cities_resource_id;
DROP INDEX public.catalog_resource_cities_city_id;
DROP INDEX public.catalog_resource_categories_resource_id;
DROP INDEX public.catalog_resource_categories_category_id;
DROP INDEX public.catalog_department_divisions_division_id;
DROP INDEX public.catalog_department_divisions_department_id;
DROP INDEX public.catalog_county_cities_county_id;
DROP INDEX public.catalog_county_cities_city_id;
DROP INDEX public.auth_user_username_like;
DROP INDEX public.auth_user_user_permissions_user_id;
DROP INDEX public.auth_user_user_permissions_permission_id;
DROP INDEX public.auth_user_groups_user_id;
DROP INDEX public.auth_user_groups_group_id;
DROP INDEX public.auth_permission_content_type_id;
DROP INDEX public.auth_group_permissions_permission_id;
DROP INDEX public.auth_group_permissions_group_id;
DROP INDEX public.auth_group_name_like;
ALTER TABLE ONLY public.thumbnail_kvstore DROP CONSTRAINT thumbnail_kvstore_pkey;
ALTER TABLE ONLY public.suggestions_suggestion DROP CONSTRAINT suggestions_suggestion_pkey;
ALTER TABLE ONLY public.suggestions_suggestion_categories DROP CONSTRAINT suggestions_suggestion_categories_pkey;
ALTER TABLE ONLY public.suggestions_suggestion_categories DROP CONSTRAINT suggestions_suggestion_cate_suggestion_id_45b080e8781aa4b8_uniq;
ALTER TABLE ONLY public.south_migrationhistory DROP CONSTRAINT south_migrationhistory_pkey;
ALTER TABLE ONLY public.scribbler_scribble DROP CONSTRAINT scribbler_scribble_url_6e7518efcb758418_uniq;
ALTER TABLE ONLY public.scribbler_scribble DROP CONSTRAINT scribbler_scribble_pkey;
ALTER TABLE ONLY public.requests_request_resources DROP CONSTRAINT requests_request_resources_request_id_75c92e7ee85f7aba_uniq;
ALTER TABLE ONLY public.requests_request_resources DROP CONSTRAINT requests_request_resources_pkey;
ALTER TABLE ONLY public.requests_request DROP CONSTRAINT requests_request_pkey;
ALTER TABLE ONLY public.requests_request_categories DROP CONSTRAINT requests_request_categories_request_id_60d814e2f6a1898a_uniq;
ALTER TABLE ONLY public.requests_request_categories DROP CONSTRAINT requests_request_categories_pkey;
ALTER TABLE ONLY public.djcelery_workerstate DROP CONSTRAINT djcelery_workerstate_pkey;
ALTER TABLE ONLY public.djcelery_workerstate DROP CONSTRAINT djcelery_workerstate_hostname_key;
ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_task_id_key;
ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_pkey;
ALTER TABLE ONLY public.djcelery_periodictasks DROP CONSTRAINT djcelery_periodictasks_pkey;
ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_pkey;
ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_name_key;
ALTER TABLE ONLY public.djcelery_intervalschedule DROP CONSTRAINT djcelery_intervalschedule_pkey;
ALTER TABLE ONLY public.djcelery_crontabschedule DROP CONSTRAINT djcelery_crontabschedule_pkey;
ALTER TABLE ONLY public.djangoratings_vote DROP CONSTRAINT djangoratings_vote_pkey;
ALTER TABLE ONLY public.djangoratings_vote DROP CONSTRAINT djangoratings_vote_content_type_id_69d497af3324806f_uniq;
ALTER TABLE ONLY public.djangoratings_similaruser DROP CONSTRAINT djangoratings_similaruser_pkey;
ALTER TABLE ONLY public.djangoratings_score DROP CONSTRAINT djangoratings_score_pkey;
ALTER TABLE ONLY public.djangoratings_score DROP CONSTRAINT djangoratings_score_content_type_id_34080b82db03891b_uniq;
ALTER TABLE ONLY public.djangoratings_ignoredobject DROP CONSTRAINT djangoratings_ignoredobject_pkey;
ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_key;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_pkey;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_user_id_comment_id_flag_key;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_pkey;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.comments_commentwithrating DROP CONSTRAINT comments_commentwithrating_pkey;
ALTER TABLE ONLY public.celery_tasksetmeta DROP CONSTRAINT celery_tasksetmeta_taskset_id_key;
ALTER TABLE ONLY public.celery_tasksetmeta DROP CONSTRAINT celery_tasksetmeta_pkey;
ALTER TABLE ONLY public.celery_taskmeta DROP CONSTRAINT celery_taskmeta_task_id_key;
ALTER TABLE ONLY public.celery_taskmeta DROP CONSTRAINT celery_taskmeta_pkey;
ALTER TABLE ONLY public.catalog_urltype DROP CONSTRAINT catalog_urltype_pkey;
ALTER TABLE ONLY public.catalog_urlimage DROP CONSTRAINT catalog_urlimage_pkey;
ALTER TABLE ONLY public.catalog_url DROP CONSTRAINT catalog_url_pkey;
ALTER TABLE ONLY public.catalog_updatefrequency DROP CONSTRAINT catalog_updatefrequency_pkey;
ALTER TABLE ONLY public.catalog_resource DROP CONSTRAINT catalog_resource_pkey;
ALTER TABLE ONLY public.catalog_resource_data_types DROP CONSTRAINT catalog_resource_data_types_resource_id_36049a106385e980_uniq;
ALTER TABLE ONLY public.catalog_resource_data_types DROP CONSTRAINT catalog_resource_data_types_pkey;
ALTER TABLE ONLY public.catalog_resource_counties DROP CONSTRAINT catalog_resource_counties_resource_id_25bc529b8b7e664e_uniq;
ALTER TABLE ONLY public.catalog_resource_counties DROP CONSTRAINT catalog_resource_counties_pkey;
ALTER TABLE ONLY public.catalog_resource_coord_sys DROP CONSTRAINT catalog_resource_coord_sys_resource_id_30c10da65df1830d_uniq;
ALTER TABLE ONLY public.catalog_resource_coord_sys DROP CONSTRAINT catalog_resource_coord_sys_pkey;
ALTER TABLE ONLY public.catalog_resource_cities DROP CONSTRAINT catalog_resource_cities_resource_id_2451af359ee5738a_uniq;
ALTER TABLE ONLY public.catalog_resource_cities DROP CONSTRAINT catalog_resource_cities_pkey;
ALTER TABLE ONLY public.catalog_resource_categories DROP CONSTRAINT catalog_resource_categories_resource_id_53ac8f8b3cbe75d6_uniq;
ALTER TABLE ONLY public.catalog_resource_categories DROP CONSTRAINT catalog_resource_categories_pkey;
ALTER TABLE ONLY public.catalog_division DROP CONSTRAINT catalog_division_pkey;
ALTER TABLE ONLY public.catalog_department DROP CONSTRAINT catalog_department_pkey;
ALTER TABLE ONLY public.catalog_department_divisions DROP CONSTRAINT catalog_department_divisions_pkey;
ALTER TABLE ONLY public.catalog_department_divisions DROP CONSTRAINT catalog_department_division_department_id_39f9cbe9db1d4714_uniq;
ALTER TABLE ONLY public.catalog_datatype DROP CONSTRAINT catalog_datatype_pkey;
ALTER TABLE ONLY public.catalog_county DROP CONSTRAINT catalog_county_pkey;
ALTER TABLE ONLY public.catalog_county_cities DROP CONSTRAINT catalog_county_cities_pkey;
ALTER TABLE ONLY public.catalog_county_cities DROP CONSTRAINT catalog_county_cities_county_id_3199dc690a36b346_uniq;
ALTER TABLE ONLY public.catalog_coordsystem DROP CONSTRAINT catalog_coordsystem_pkey;
ALTER TABLE ONLY public.catalog_city DROP CONSTRAINT catalog_city_pkey;
ALTER TABLE ONLY public.catalog_category DROP CONSTRAINT catalog_category_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.suggestions_suggestion_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.suggestions_suggestion ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.south_migrationhistory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.scribbler_scribble ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.requests_request_resources ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.requests_request_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.requests_request ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_workerstate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_taskstate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_periodictask ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_intervalschedule ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_crontabschedule ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djangoratings_vote ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djangoratings_similaruser ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djangoratings_score ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djangoratings_ignoredobject ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_comments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_comment_flags ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.celery_tasksetmeta ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.celery_taskmeta ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_urltype ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_urlimage ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_url ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_updatefrequency ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_resource_data_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_resource_counties ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_resource_coord_sys ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_resource_cities ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_resource_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_resource ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_division ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_department_divisions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_department ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_datatype ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_county_cities ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_county ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_coordsystem ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_city ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_category ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP TABLE public.thumbnail_kvstore;
DROP SEQUENCE public.suggestions_suggestion_id_seq;
DROP SEQUENCE public.suggestions_suggestion_categories_id_seq;
DROP TABLE public.suggestions_suggestion_categories;
DROP TABLE public.suggestions_suggestion;
DROP SEQUENCE public.south_migrationhistory_id_seq;
DROP TABLE public.south_migrationhistory;
DROP SEQUENCE public.scribbler_scribble_id_seq;
DROP TABLE public.scribbler_scribble;
DROP SEQUENCE public.requests_request_resources_id_seq;
DROP TABLE public.requests_request_resources;
DROP SEQUENCE public.requests_request_id_seq;
DROP SEQUENCE public.requests_request_categories_id_seq;
DROP TABLE public.requests_request_categories;
DROP TABLE public.requests_request;
DROP SEQUENCE public.djcelery_workerstate_id_seq;
DROP TABLE public.djcelery_workerstate;
DROP SEQUENCE public.djcelery_taskstate_id_seq;
DROP TABLE public.djcelery_taskstate;
DROP TABLE public.djcelery_periodictasks;
DROP SEQUENCE public.djcelery_periodictask_id_seq;
DROP TABLE public.djcelery_periodictask;
DROP SEQUENCE public.djcelery_intervalschedule_id_seq;
DROP TABLE public.djcelery_intervalschedule;
DROP SEQUENCE public.djcelery_crontabschedule_id_seq;
DROP TABLE public.djcelery_crontabschedule;
DROP SEQUENCE public.djangoratings_vote_id_seq;
DROP TABLE public.djangoratings_vote;
DROP SEQUENCE public.djangoratings_similaruser_id_seq;
DROP TABLE public.djangoratings_similaruser;
DROP SEQUENCE public.djangoratings_score_id_seq;
DROP TABLE public.djangoratings_score;
DROP SEQUENCE public.djangoratings_ignoredobject_id_seq;
DROP TABLE public.djangoratings_ignoredobject;
DROP SEQUENCE public.django_site_id_seq;
DROP TABLE public.django_site;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_comments_id_seq;
DROP TABLE public.django_comments;
DROP SEQUENCE public.django_comment_flags_id_seq;
DROP TABLE public.django_comment_flags;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP TABLE public.comments_commentwithrating;
DROP SEQUENCE public.celery_tasksetmeta_id_seq;
DROP TABLE public.celery_tasksetmeta;
DROP SEQUENCE public.celery_taskmeta_id_seq;
DROP TABLE public.celery_taskmeta;
DROP SEQUENCE public.catalog_urltype_id_seq;
DROP TABLE public.catalog_urltype;
DROP SEQUENCE public.catalog_urlimage_id_seq;
DROP TABLE public.catalog_urlimage;
DROP SEQUENCE public.catalog_url_id_seq;
DROP TABLE public.catalog_url;
DROP SEQUENCE public.catalog_updatefrequency_id_seq;
DROP TABLE public.catalog_updatefrequency;
DROP SEQUENCE public.catalog_resource_id_seq;
DROP SEQUENCE public.catalog_resource_data_types_id_seq;
DROP TABLE public.catalog_resource_data_types;
DROP SEQUENCE public.catalog_resource_counties_id_seq;
DROP TABLE public.catalog_resource_counties;
DROP SEQUENCE public.catalog_resource_coord_sys_id_seq;
DROP TABLE public.catalog_resource_coord_sys;
DROP SEQUENCE public.catalog_resource_cities_id_seq;
DROP TABLE public.catalog_resource_cities;
DROP SEQUENCE public.catalog_resource_categories_id_seq;
DROP TABLE public.catalog_resource_categories;
DROP TABLE public.catalog_resource;
DROP SEQUENCE public.catalog_division_id_seq;
DROP TABLE public.catalog_division;
DROP SEQUENCE public.catalog_department_id_seq;
DROP SEQUENCE public.catalog_department_divisions_id_seq;
DROP TABLE public.catalog_department_divisions;
DROP TABLE public.catalog_department;
DROP SEQUENCE public.catalog_datatype_id_seq;
DROP TABLE public.catalog_datatype;
DROP SEQUENCE public.catalog_county_id_seq;
DROP SEQUENCE public.catalog_county_cities_id_seq;
DROP TABLE public.catalog_county_cities;
DROP TABLE public.catalog_county;
DROP SEQUENCE public.catalog_coordsystem_id_seq;
DROP TABLE public.catalog_coordsystem;
DROP SEQUENCE public.catalog_city_id_seq;
DROP TABLE public.catalog_city;
DROP SEQUENCE public.catalog_category_id_seq;
DROP TABLE public.catalog_category;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: catalog_category; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_category (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- Name: catalog_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_category_id_seq OWNED BY catalog_category.id;


--
-- Name: catalog_city; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_city (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


--
-- Name: catalog_city_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_city_id_seq OWNED BY catalog_city.id;


--
-- Name: catalog_coordsystem; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_coordsystem (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    "EPSG_code" integer NOT NULL
);


--
-- Name: catalog_coordsystem_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_coordsystem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_coordsystem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_coordsystem_id_seq OWNED BY catalog_coordsystem.id;


--
-- Name: catalog_county; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_county (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


--
-- Name: catalog_county_cities; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_county_cities (
    id integer NOT NULL,
    county_id integer NOT NULL,
    city_id integer NOT NULL
);


--
-- Name: catalog_county_cities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_county_cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_county_cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_county_cities_id_seq OWNED BY catalog_county_cities.id;


--
-- Name: catalog_county_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_county_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_county_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_county_id_seq OWNED BY catalog_county.id;


--
-- Name: catalog_datatype; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_datatype (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


--
-- Name: catalog_datatype_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_datatype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_datatype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_datatype_id_seq OWNED BY catalog_datatype.id;


--
-- Name: catalog_department; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_department (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(40) NOT NULL
);


--
-- Name: catalog_department_divisions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_department_divisions (
    id integer NOT NULL,
    department_id integer NOT NULL,
    division_id integer NOT NULL
);


--
-- Name: catalog_department_divisions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_department_divisions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_department_divisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_department_divisions_id_seq OWNED BY catalog_department_divisions.id;


--
-- Name: catalog_department_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_department_id_seq OWNED BY catalog_department.id;


--
-- Name: catalog_division; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_division (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


--
-- Name: catalog_division_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_division_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_division_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_division_id_seq OWNED BY catalog_division.id;


--
-- Name: catalog_resource; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_resource (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(50) NOT NULL,
    short_description character varying(255) NOT NULL,
    release_date date,
    time_period character varying(50) NOT NULL,
    usage text NOT NULL,
    description text NOT NULL,
    contact_phone character varying(50) NOT NULL,
    contact_email character varying(255) NOT NULL,
    contact_url character varying(255) NOT NULL,
    updates_id integer,
    area_of_interest character varying(255) NOT NULL,
    is_published boolean NOT NULL,
    created_by_id integer NOT NULL,
    last_updated_by_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    metadata_contact character varying(255) NOT NULL,
    metadata_notes text NOT NULL,
    update_frequency character varying(255) NOT NULL,
    data_formats character varying(255) NOT NULL,
    proj_coord_sys character varying(255) NOT NULL,
    wkt_geometry text NOT NULL,
    csw_typename character varying(200) NOT NULL,
    csw_schema character varying(200) NOT NULL,
    csw_mdsource character varying(100) NOT NULL,
    csw_xml text NOT NULL,
    csw_anytext text NOT NULL,
    rating_votes integer NOT NULL,
    rating_score integer NOT NULL,
    agency_type character varying(16) NOT NULL,
    keywords character varying(255) NOT NULL,
    department_id integer NOT NULL,
    division_id integer,
    newest_record date,
    oldest_record date,
    CONSTRAINT catalog_resource_rating_votes_check CHECK ((rating_votes >= 0))
);


--
-- Name: catalog_resource_categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_resource_categories (
    id integer NOT NULL,
    resource_id integer NOT NULL,
    category_id integer NOT NULL
);


--
-- Name: catalog_resource_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_resource_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_resource_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_resource_categories_id_seq OWNED BY catalog_resource_categories.id;


--
-- Name: catalog_resource_cities; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_resource_cities (
    id integer NOT NULL,
    resource_id integer NOT NULL,
    city_id integer NOT NULL
);


--
-- Name: catalog_resource_cities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_resource_cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_resource_cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_resource_cities_id_seq OWNED BY catalog_resource_cities.id;


--
-- Name: catalog_resource_coord_sys; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_resource_coord_sys (
    id integer NOT NULL,
    resource_id integer NOT NULL,
    coordsystem_id integer NOT NULL
);


--
-- Name: catalog_resource_coord_sys_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_resource_coord_sys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_resource_coord_sys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_resource_coord_sys_id_seq OWNED BY catalog_resource_coord_sys.id;


--
-- Name: catalog_resource_counties; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_resource_counties (
    id integer NOT NULL,
    resource_id integer NOT NULL,
    county_id integer NOT NULL
);


--
-- Name: catalog_resource_counties_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_resource_counties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_resource_counties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_resource_counties_id_seq OWNED BY catalog_resource_counties.id;


--
-- Name: catalog_resource_data_types; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_resource_data_types (
    id integer NOT NULL,
    resource_id integer NOT NULL,
    datatype_id integer NOT NULL
);


--
-- Name: catalog_resource_data_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_resource_data_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_resource_data_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_resource_data_types_id_seq OWNED BY catalog_resource_data_types.id;


--
-- Name: catalog_resource_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_resource_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_resource_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_resource_id_seq OWNED BY catalog_resource.id;


--
-- Name: catalog_updatefrequency; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_updatefrequency (
    id integer NOT NULL,
    update_frequency character varying(50) NOT NULL
);


--
-- Name: catalog_updatefrequency_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_updatefrequency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_updatefrequency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_updatefrequency_id_seq OWNED BY catalog_updatefrequency.id;


--
-- Name: catalog_url; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_url (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    url_label character varying(255) NOT NULL,
    url_type_id integer NOT NULL,
    resource_id integer NOT NULL
);


--
-- Name: catalog_url_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_url_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_url_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_url_id_seq OWNED BY catalog_url.id;


--
-- Name: catalog_urlimage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_urlimage (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    title character varying(255) NOT NULL,
    source character varying(255) NOT NULL,
    source_url character varying(255) NOT NULL,
    resource_id integer NOT NULL
);


--
-- Name: catalog_urlimage_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_urlimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_urlimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_urlimage_id_seq OWNED BY catalog_urlimage.id;


--
-- Name: catalog_urltype; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_urltype (
    id integer NOT NULL,
    url_type character varying(50) NOT NULL
);


--
-- Name: catalog_urltype_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_urltype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_urltype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_urltype_id_seq OWNED BY catalog_urltype.id;


--
-- Name: celery_taskmeta; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE celery_taskmeta (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    hidden boolean NOT NULL,
    meta text
);


--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE celery_taskmeta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE celery_taskmeta_id_seq OWNED BY celery_taskmeta.id;


--
-- Name: celery_tasksetmeta; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE celery_tasksetmeta (
    id integer NOT NULL,
    taskset_id character varying(255) NOT NULL,
    result text NOT NULL,
    date_done timestamp with time zone NOT NULL,
    hidden boolean NOT NULL
);


--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE celery_tasksetmeta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE celery_tasksetmeta_id_seq OWNED BY celery_tasksetmeta.id;


--
-- Name: comments_commentwithrating; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE comments_commentwithrating (
    comment_ptr_id integer NOT NULL,
    rating integer NOT NULL
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_comment_flags; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_comment_flags (
    id integer NOT NULL,
    user_id integer NOT NULL,
    comment_id integer NOT NULL,
    flag character varying(30) NOT NULL,
    flag_date timestamp with time zone NOT NULL
);


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_comment_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_comment_flags_id_seq OWNED BY django_comment_flags.id;


--
-- Name: django_comments; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_comments (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_pk text NOT NULL,
    site_id integer NOT NULL,
    user_id integer,
    user_name character varying(50) NOT NULL,
    user_email character varying(75) NOT NULL,
    user_url character varying(200) NOT NULL,
    comment text NOT NULL,
    submit_date timestamp with time zone NOT NULL,
    ip_address inet,
    is_public boolean NOT NULL,
    is_removed boolean NOT NULL
);


--
-- Name: django_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_comments_id_seq OWNED BY django_comments.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: django_site; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: djangoratings_ignoredobject; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djangoratings_ignoredobject (
    object_id integer NOT NULL,
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT djangoratings_ignoredobject_object_id_check CHECK ((object_id >= 0))
);


--
-- Name: djangoratings_ignoredobject_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djangoratings_ignoredobject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djangoratings_ignoredobject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djangoratings_ignoredobject_id_seq OWNED BY djangoratings_ignoredobject.id;


--
-- Name: djangoratings_score; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djangoratings_score (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_id integer NOT NULL,
    key character varying(32) NOT NULL,
    score integer NOT NULL,
    votes integer NOT NULL,
    CONSTRAINT djangoratings_score_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT djangoratings_score_votes_check CHECK ((votes >= 0))
);


--
-- Name: djangoratings_score_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djangoratings_score_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djangoratings_score_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djangoratings_score_id_seq OWNED BY djangoratings_score.id;


--
-- Name: djangoratings_similaruser; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djangoratings_similaruser (
    to_user_id integer NOT NULL,
    agrees integer NOT NULL,
    id integer NOT NULL,
    disagrees integer NOT NULL,
    from_user_id integer NOT NULL,
    exclude boolean NOT NULL,
    CONSTRAINT djangoratings_similaruser_agrees_check CHECK ((agrees >= 0)),
    CONSTRAINT djangoratings_similaruser_disagrees_check CHECK ((disagrees >= 0))
);


--
-- Name: djangoratings_similaruser_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djangoratings_similaruser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djangoratings_similaruser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djangoratings_similaruser_id_seq OWNED BY djangoratings_similaruser.id;


--
-- Name: djangoratings_vote; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djangoratings_vote (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_id integer NOT NULL,
    key character varying(32) NOT NULL,
    score integer NOT NULL,
    user_id integer,
    ip_address inet NOT NULL,
    date_added timestamp with time zone NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    cookie character varying(32),
    CONSTRAINT djangoratings_vote_object_id_check CHECK ((object_id >= 0))
);


--
-- Name: djangoratings_vote_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djangoratings_vote_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djangoratings_vote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djangoratings_vote_id_seq OWNED BY djangoratings_vote.id;


--
-- Name: djcelery_crontabschedule; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djcelery_crontabschedule (
    id integer NOT NULL,
    minute character varying(64) NOT NULL,
    hour character varying(64) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(64) NOT NULL,
    month_of_year character varying(64) NOT NULL
);


--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djcelery_crontabschedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djcelery_crontabschedule_id_seq OWNED BY djcelery_crontabschedule.id;


--
-- Name: djcelery_intervalschedule; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djcelery_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);


--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djcelery_intervalschedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djcelery_intervalschedule_id_seq OWNED BY djcelery_intervalschedule.id;


--
-- Name: djcelery_periodictask; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djcelery_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    interval_id integer,
    crontab_id integer,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    CONSTRAINT djcelery_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);


--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djcelery_periodictask_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djcelery_periodictask_id_seq OWNED BY djcelery_periodictask.id;


--
-- Name: djcelery_periodictasks; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djcelery_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);


--
-- Name: djcelery_taskstate; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djcelery_taskstate (
    id integer NOT NULL,
    state character varying(64) NOT NULL,
    task_id character varying(36) NOT NULL,
    name character varying(200),
    tstamp timestamp with time zone NOT NULL,
    args text,
    kwargs text,
    eta timestamp with time zone,
    expires timestamp with time zone,
    result text,
    traceback text,
    runtime double precision,
    retries integer NOT NULL,
    worker_id integer,
    hidden boolean NOT NULL
);


--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djcelery_taskstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djcelery_taskstate_id_seq OWNED BY djcelery_taskstate.id;


--
-- Name: djcelery_workerstate; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djcelery_workerstate (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    last_heartbeat timestamp with time zone
);


--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djcelery_workerstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djcelery_workerstate_id_seq OWNED BY djcelery_workerstate.id;


--
-- Name: requests_request; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE requests_request (
    id integer NOT NULL,
    suggested_by_id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    relevance text NOT NULL,
    url character varying(200) NOT NULL,
    agency_type character varying(16) NOT NULL,
    city_id integer,
    county_id integer,
    agency_name character varying(255) NOT NULL,
    agency_division character varying(255) NOT NULL,
    agency_contact character varying(255) NOT NULL,
    other_category character varying(255) NOT NULL,
    rating_votes integer NOT NULL,
    rating_score integer NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    last_modified timestamp with time zone NOT NULL,
    updates_id integer,
    CONSTRAINT requests_request_rating_votes_check CHECK ((rating_votes >= 0))
);


--
-- Name: requests_request_categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE requests_request_categories (
    id integer NOT NULL,
    request_id integer NOT NULL,
    category_id integer NOT NULL
);


--
-- Name: requests_request_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE requests_request_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: requests_request_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE requests_request_categories_id_seq OWNED BY requests_request_categories.id;


--
-- Name: requests_request_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE requests_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: requests_request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE requests_request_id_seq OWNED BY requests_request.id;


--
-- Name: requests_request_resources; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE requests_request_resources (
    id integer NOT NULL,
    request_id integer NOT NULL,
    resource_id integer NOT NULL
);


--
-- Name: requests_request_resources_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE requests_request_resources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: requests_request_resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE requests_request_resources_id_seq OWNED BY requests_request_resources.id;


--
-- Name: scribbler_scribble; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE scribbler_scribble (
    id integer NOT NULL,
    created_time timestamp with time zone NOT NULL,
    modified_time timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(64) NOT NULL,
    url character varying(255) NOT NULL,
    content text NOT NULL
);


--
-- Name: scribbler_scribble_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE scribbler_scribble_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: scribbler_scribble_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE scribbler_scribble_id_seq OWNED BY scribbler_scribble.id;


--
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- Name: suggestions_suggestion; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE suggestions_suggestion (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    date_last_modified timestamp with time zone NOT NULL,
    title character varying(255) NOT NULL,
    short_description character varying(255) NOT NULL,
    description text NOT NULL,
    url character varying(255) NOT NULL,
    other_format character varying(255) NOT NULL,
    agency_name character varying(255) NOT NULL,
    agency_division character varying(255) NOT NULL,
    agency_type character varying(16) NOT NULL,
    city_id integer,
    county_id integer,
    last_updated date,
    keywords character varying(255) NOT NULL,
    contact_name character varying(255) NOT NULL,
    phone_number character varying(30) NOT NULL,
    street_address character varying(100) NOT NULL,
    contact_city character varying(50) NOT NULL,
    zipcode character varying(30) NOT NULL,
    email_address character varying(100) NOT NULL,
    other_category character varying(255) NOT NULL,
    data_format_id integer,
    updates_id integer
);


--
-- Name: suggestions_suggestion_categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE suggestions_suggestion_categories (
    id integer NOT NULL,
    suggestion_id integer NOT NULL,
    category_id integer NOT NULL
);


--
-- Name: suggestions_suggestion_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE suggestions_suggestion_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: suggestions_suggestion_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE suggestions_suggestion_categories_id_seq OWNED BY suggestions_suggestion_categories.id;


--
-- Name: suggestions_suggestion_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE suggestions_suggestion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: suggestions_suggestion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE suggestions_suggestion_id_seq OWNED BY suggestions_suggestion.id;


--
-- Name: thumbnail_kvstore; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE thumbnail_kvstore (
    key character varying(200) NOT NULL,
    value text NOT NULL
);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_category ALTER COLUMN id SET DEFAULT nextval('catalog_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_city ALTER COLUMN id SET DEFAULT nextval('catalog_city_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_coordsystem ALTER COLUMN id SET DEFAULT nextval('catalog_coordsystem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_county ALTER COLUMN id SET DEFAULT nextval('catalog_county_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_county_cities ALTER COLUMN id SET DEFAULT nextval('catalog_county_cities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_datatype ALTER COLUMN id SET DEFAULT nextval('catalog_datatype_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_department ALTER COLUMN id SET DEFAULT nextval('catalog_department_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_department_divisions ALTER COLUMN id SET DEFAULT nextval('catalog_department_divisions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_division ALTER COLUMN id SET DEFAULT nextval('catalog_division_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource ALTER COLUMN id SET DEFAULT nextval('catalog_resource_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_categories ALTER COLUMN id SET DEFAULT nextval('catalog_resource_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_cities ALTER COLUMN id SET DEFAULT nextval('catalog_resource_cities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_coord_sys ALTER COLUMN id SET DEFAULT nextval('catalog_resource_coord_sys_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_counties ALTER COLUMN id SET DEFAULT nextval('catalog_resource_counties_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_data_types ALTER COLUMN id SET DEFAULT nextval('catalog_resource_data_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_updatefrequency ALTER COLUMN id SET DEFAULT nextval('catalog_updatefrequency_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_url ALTER COLUMN id SET DEFAULT nextval('catalog_url_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_urlimage ALTER COLUMN id SET DEFAULT nextval('catalog_urlimage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_urltype ALTER COLUMN id SET DEFAULT nextval('catalog_urltype_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY celery_taskmeta ALTER COLUMN id SET DEFAULT nextval('celery_taskmeta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY celery_tasksetmeta ALTER COLUMN id SET DEFAULT nextval('celery_tasksetmeta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comment_flags ALTER COLUMN id SET DEFAULT nextval('django_comment_flags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comments ALTER COLUMN id SET DEFAULT nextval('django_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_ignoredobject ALTER COLUMN id SET DEFAULT nextval('djangoratings_ignoredobject_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_score ALTER COLUMN id SET DEFAULT nextval('djangoratings_score_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_similaruser ALTER COLUMN id SET DEFAULT nextval('djangoratings_similaruser_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_vote ALTER COLUMN id SET DEFAULT nextval('djangoratings_vote_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_crontabschedule ALTER COLUMN id SET DEFAULT nextval('djcelery_crontabschedule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_intervalschedule ALTER COLUMN id SET DEFAULT nextval('djcelery_intervalschedule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_periodictask ALTER COLUMN id SET DEFAULT nextval('djcelery_periodictask_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_taskstate ALTER COLUMN id SET DEFAULT nextval('djcelery_taskstate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_workerstate ALTER COLUMN id SET DEFAULT nextval('djcelery_workerstate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request ALTER COLUMN id SET DEFAULT nextval('requests_request_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request_categories ALTER COLUMN id SET DEFAULT nextval('requests_request_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request_resources ALTER COLUMN id SET DEFAULT nextval('requests_request_resources_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY scribbler_scribble ALTER COLUMN id SET DEFAULT nextval('scribbler_scribble_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion ALTER COLUMN id SET DEFAULT nextval('suggestions_suggestion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion_categories ALTER COLUMN id SET DEFAULT nextval('suggestions_suggestion_categories_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_group (id, name) FROM stdin;
1	Students
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
37	1	35
38	1	36
39	1	37
40	1	38
41	1	39
42	1	40
43	1	41
44	1	42
45	1	43
46	1	44
47	1	45
48	1	46
49	1	47
50	1	48
51	1	49
52	1	50
53	1	51
54	1	52
55	1	53
56	1	54
57	1	55
58	1	56
59	1	57
60	1	58
61	1	59
62	1	60
63	1	61
64	1	62
65	1	63
66	1	64
67	1	65
68	1	66
69	1	67
70	1	68
71	1	69
72	1	70
73	1	110
74	1	111
75	1	112
76	1	113
77	1	114
78	1	115
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 78, true);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
19	Can add comment	7	add_comment
20	Can change comment	7	change_comment
21	Can delete comment	7	delete_comment
22	Can moderate comments	7	can_moderate
23	Can add comment flag	8	add_commentflag
24	Can change comment flag	8	change_commentflag
25	Can delete comment flag	8	delete_commentflag
26	Can add comment with rating	9	add_commentwithrating
27	Can change comment with rating	9	change_commentwithrating
28	Can delete comment with rating	9	delete_commentwithrating
29	Can add log entry	10	add_logentry
30	Can change log entry	10	change_logentry
31	Can delete log entry	10	delete_logentry
32	Can add migration history	11	add_migrationhistory
33	Can change migration history	11	change_migrationhistory
34	Can delete migration history	11	delete_migrationhistory
35	Can add city	12	add_city
36	Can change city	12	change_city
37	Can delete city	12	delete_city
38	Can add county	13	add_county
39	Can change county	13	change_county
40	Can delete county	13	delete_county
41	Can add category	14	add_category
42	Can change category	14	change_category
43	Can delete category	14	delete_category
44	Can add data type	15	add_datatype
45	Can change data type	15	change_datatype
46	Can delete data type	15	delete_datatype
47	Can add url type	16	add_urltype
48	Can change url type	16	change_urltype
49	Can delete url type	16	delete_urltype
50	Can add update frequency	17	add_updatefrequency
51	Can change update frequency	17	change_updatefrequency
52	Can delete update frequency	17	delete_updatefrequency
53	Can add Coordinate system	18	add_coordsystem
54	Can change Coordinate system	18	change_coordsystem
55	Can delete Coordinate system	18	delete_coordsystem
56	Can add resource	19	add_resource
57	Can change resource	19	change_resource
58	Can delete resource	19	delete_resource
59	Can add url	20	add_url
60	Can change url	20	change_url
61	Can delete url	20	delete_url
62	Can add url image	21	add_urlimage
63	Can change url image	21	change_urlimage
64	Can delete url image	21	delete_urlimage
65	Can add request	22	add_request
66	Can change request	22	change_request
67	Can delete request	22	delete_request
68	Can add suggestion	23	add_suggestion
69	Can change suggestion	23	change_suggestion
70	Can delete suggestion	23	delete_suggestion
71	Can add scribble	24	add_scribble
72	Can change scribble	24	change_scribble
73	Can delete scribble	24	delete_scribble
74	Can add task state	25	add_taskmeta
75	Can change task state	25	change_taskmeta
76	Can delete task state	25	delete_taskmeta
77	Can add saved group result	26	add_tasksetmeta
78	Can change saved group result	26	change_tasksetmeta
79	Can delete saved group result	26	delete_tasksetmeta
80	Can add interval	27	add_intervalschedule
81	Can change interval	27	change_intervalschedule
82	Can delete interval	27	delete_intervalschedule
83	Can add crontab	28	add_crontabschedule
84	Can change crontab	28	change_crontabschedule
85	Can delete crontab	28	delete_crontabschedule
86	Can add periodic tasks	29	add_periodictasks
87	Can change periodic tasks	29	change_periodictasks
88	Can delete periodic tasks	29	delete_periodictasks
89	Can add periodic task	30	add_periodictask
90	Can change periodic task	30	change_periodictask
91	Can delete periodic task	30	delete_periodictask
92	Can add worker	31	add_workerstate
93	Can change worker	31	change_workerstate
94	Can delete worker	31	delete_workerstate
95	Can add task	32	add_taskstate
96	Can change task	32	change_taskstate
97	Can delete task	32	delete_taskstate
98	Can add vote	33	add_vote
99	Can change vote	33	change_vote
100	Can delete vote	33	delete_vote
101	Can add score	34	add_score
102	Can change score	34	change_score
103	Can delete score	34	delete_score
104	Can add similar user	35	add_similaruser
105	Can change similar user	35	change_similaruser
106	Can delete similar user	35	delete_similaruser
107	Can add ignored object	36	add_ignoredobject
108	Can change ignored object	36	change_ignoredobject
109	Can delete ignored object	36	delete_ignoredobject
110	Can add division	37	add_division
111	Can change division	37	change_division
112	Can delete division	37	delete_division
113	Can add department	38	add_department
114	Can change department	38	change_department
115	Can delete department	38	delete_department
116	Can add kv store	39	add_kvstore
117	Can change kv store	39	change_kvstore
118	Can delete kv store	39	delete_kvstore
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_permission_id_seq', 118, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$10000$nahvdz7S9fiH$YtnSLBW3TeqlgWAAACgGV9PgrNME1YjtkLGPn9ZId00=	2013-08-15 16:44:24.045565+00	t	ben				t	t	2013-08-15 16:40:30+00
4	pbkdf2_sha256$10000$u4QJHSJyiu7M$zmnh9zGRj5oNcpk14yDtkIUMMSDhmmUrC6mTv/L/CuY=	2013-08-16 14:51:30.866763+00	t	copelco				t	t	2013-08-15 17:13:26+00
5	pbkdf2_sha256$10000$iFfzthS1AW5M$zC7/xALNfqsSfiZZH/Nwld/0NOOFf933z7PQQ6YKNh8=	2013-08-21 16:49:06.931402+00	f	ryan_thornburg			ryan_thornburg@yahoo.com	t	t	2013-08-21 15:38:33+00
6	pbkdf2_sha256$10000$Pd41hJWKLx11$yOKydAH+Wpxk7pQnJWTht1vUA1x9fszdC6KDe4mzly8=	2013-08-21 18:21:35.419852+00	f	victor_student				t	t	2013-08-21 18:21:08+00
2	pbkdf2_sha256$10000$qGnq5quwuq4V$qqhFBs1fsEV1jab6m9734fsjEwkxnWkldqzWtREZ0u0=	2013-08-21 22:38:10.209978+00	t	ryan				t	t	2013-08-14 18:10:26+00
1	pbkdf2_sha256$10000$LOiZ6YuhscME$SG15ZY9KwC0blmqEFrtd7MdCNwlXK2bKHq/eIXU/UEk=	2013-08-28 19:16:21.024331+00	t	vrocha			vrocha@caktusgroup.com	t	t	2013-08-14 18:02:14.847135+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
2	5	1
3	6	1
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 3, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_id_seq', 6, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: catalog_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_category (id, name) FROM stdin;
1	Arts/Culture/History
2	Business and economy
3	Government spending and taxes
4	Communications
5	Courts and prisons
6	Crime, fire and public safety
7	Education
8	Energy and utilities
9	Elections, voting and lobbying
10	Environment and natural resources
11	Health
12	Jobs, employment and occupations
13	Parks and recreation
14	Permits
15	Planning and zoning
16	Property/real estate
17	Social services
18	Transportation and motor vehicles
\.


--
-- Name: catalog_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_category_id_seq', 18, true);


--
-- Data for Name: catalog_city; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_city (id, name) FROM stdin;
1	Aberdeen
2	Ahoskie
3	Alamance
4	Albemarle
5	Alliance
6	Andrews
7	Angier
8	Ansonville
9	Apex
10	Arapahoe
11	Archdale
12	Archer Lodge
13	Asheboro
14	Asheville
15	Askewville
16	Atkinson
17	Atlantic Beach
18	Aulander
19	Aurora
20	Autryville
21	Ayden
22	Badin
23	Bailey
24	Bakersville
25	Bald Head Island
26	Banner Elk
27	Bath
28	Bayboro
29	Bear Grass
30	Beaufort
31	Beech Mountain
32	Belhaven
33	Belmont
34	Belville
35	Belwood
36	Benson
37	Bermuda Run
38	Bessemer City
39	Bethania
40	Bethel
41	Beulaville
42	Biltmore Forest
43	Biscoe
44	Black Creek
45	Black Mountain
46	Bladenboro
47	Blowing Rock
48	Boardman
49	Bogue
50	Boiling Spring Lakes
51	Boiling Springs
52	Bolivia
53	Bolton
54	Boone
55	Boonville
56	Bostic
57	Brevard
58	Bridgeton
59	Broadway
60	Brookford
61	Brunswick
62	Bryson City
63	Bunn
64	Burgaw
65	Burlington
66	Burnsville
67	Butner
68	Cajah's Mountain
69	Calabash
70	Calypso
71	Cameron
72	Candor
73	Canton
74	Cape Carteret
75	Carolina Beach
76	Carolina Shores
77	Carrboro
78	Carthage
79	Cary
80	Casar
81	Castalia
82	Caswell Beach
83	Catawba
84	Cedar Point
85	Cedar Rock
86	Centerville
87	Cerro Gordo
88	Chadbourn
89	Chapel Hill
90	Charlotte
91	Cherryville
92	Chimney Rock Village
93	China Grove
94	Chocowinity
95	Claremont
96	Clarkton
97	Clayton
98	Clemmons
99	Cleveland
100	Clinton
101	Clyde
102	Coats
103	Cofield
104	Colerain
105	Columbia
106	Columbus
107	Como
108	Concord
109	Conetoe
110	Connelly Springs
111	Conover
112	Conway
113	Cooleemee
114	Cornelius
115	Cove City
116	Cramerton
117	Creedmoor
118	Creswell
119	Crossnore
120	Dallas
121	Danbury
122	Davidson
123	Denton
124	Dillsboro
125	Dobbins Heights
126	Dobson
127	Dortches
128	Dover
129	Drexel
130	Dublin
131	Duck
132	Dunn
133	Durham
134	Earl
135	East Arcadia
136	East Bend
137	East Laurinburg
138	East Spencer
139	Eastover
140	Eden
141	Edenton
142	Elizabeth City
143	Elizabethtown
144	Elk Park
145	Elkin
146	Ellenboro
147	Ellerbe
148	Elm City
149	Elon
150	Emerald Isle
151	Enfield
152	Erwin
153	Eureka
154	Everetts
155	Fair Bluff
156	Fairmont
157	Fairview
158	Faison
159	Faith
160	Falcon
161	Falkland
162	Fallston
163	Farmville
164	Fayetteville
165	Flat Rock
166	Fletcher
167	Fontana Dam
168	Forest City
169	Forest Hills
170	Fountain
171	Four Oaks
172	Foxfire Village
173	Franklin
174	Franklinton
175	Franklinville
176	Fremont
177	Fuquay-Varina
178	Gamewell
179	Garland
180	Garner
181	Garysburg
182	Gaston
183	Gastonia
184	Gatesville
185	Gibson
186	Gibsonville
187	Glen Alpine
188	Godwin
189	Goldsboro
190	Goldston
191	Graham
192	Grandfather Village
193	Granite Falls
194	Granite Quarry
195	Grantsboro
196	Green Level
197	Greenevers
198	Greensboro
199	Greenville
200	Grifton
201	Grimesland
202	Grover
203	Halifax
204	Hamilton
205	Hamlet
206	Harmony
207	Harrells
208	Harrellsville
209	Harrisburg
210	Hassell
211	Havelock
212	Haw River
213	Hayesville
214	Hemby Bridge
215	Henderson
216	Hendersonville
217	Hertford
218	Hickory
219	High Point
220	High Shoals
221	Highlands
222	Hildebran
223	Hillsborough
224	Hobgood
225	Hoffman
226	Holden Beach
227	Holly Ridge
228	Holly Springs
229	Hookerton
230	Hope Mills
231	Hot Springs
232	Hudson
233	Huntersville
234	Indian Beach
235	Indian Trail
236	Jackson
237	Jacksonville
238	Jamestown
239	Jamesville
240	Jefferson
241	Jonesville
242	Kannapolis
243	Kelford
244	Kenansville
245	Kenly
246	Kernersville
247	Kill Devil Hills
248	King
249	Kings Mountain
250	Kingstown
251	Kinston
252	Kittrell
253	Kitty Hawk
254	Knightdale
255	Kure Beach
256	La Grange
257	Lake Lure
258	Lake Park
259	Lake Santeetlah
260	Lake Waccamaw
261	Landis
262	Lansing
263	Lasker
264	Lattimore
265	Laurel Park
266	Laurinburg
267	Lawndale
268	Leggett
269	Leland
270	Lenoir
271	Lewiston Woodville
272	Lewisville
273	Lexington
274	Liberty
275	Lilesville
276	Lillington
277	Lincolnton
278	Linden
279	Littleton
280	Locust
281	Long View
282	Louisburg
283	Love Valley
284	Lowell
285	Lucama
286	Lumber Bridge
287	Lumberton
288	Macclesfield
289	Macon
290	Madison
291	Maggie Valley
292	Magnolia
293	Maiden
294	Manteo
295	Marietta
296	Marion
297	Mars Hill
298	Marshall
299	Marshville
300	Marvin
301	Matthews
302	Maxton
303	Mayodan
304	Maysville
305	McAdenville
306	McDonald
307	McFarlan
308	Mebane
309	Mesic
310	Micro
311	Middleburg
312	Middlesex
313	Midland
314	Midway
315	Mills River
316	Milton
317	Mineral Springs
318	Minnesott Beach
319	Mint Hill
320	Misenheimer
321	Mocksville
322	Momeyer
323	Monroe
324	Montreat
325	Mooresboro
326	Mooresville
327	Morehead City
328	Morganton
329	Morrisville
330	Morven
331	Mount Airy
332	Mount Gilead
333	Mount Holly
334	Mount Olive
335	Mount Pleasant
336	Murfreesboro
337	Murphy
338	Nags Head
339	Nashville
340	Navassa
341	New Bern
342	New London
343	Newland
344	Newport
345	Newton
346	Newton Grove
347	Norlina
348	Norman
349	North Topsail Beach
350	North Wilkesboro
351	Northwest
352	Norwood
353	Oak City
354	Oak Island
355	Oak Ridge
356	Oakboro
357	Ocean Isle Beach
358	Old Fort
359	Oriental
360	Orrum
361	Ossipee
362	Oxford
363	Pantego
364	Parkton
365	Parmele
366	Patterson Springs
367	Peachland
368	Peletier
369	Pembroke
370	Pikeville
371	Pilot Mountain
372	Pine Knoll Shores
373	Pine Level
374	Pinebluff
375	Pinehurst
376	Pinetops
377	Pineville
378	Pink Hill
379	Pittsboro
380	Pleasant Garden
381	Plymouth
382	Polkton
383	Polkville
384	Pollocksville
385	Powellsville
386	Princeton
387	Princeville
388	Proctorville
389	Raeford
390	Raleigh
391	Ramseur
392	Randleman
393	Ranlo
394	Raynham
395	Red Cross
396	Red Oak
397	Red Springs
398	Reidsville
399	Rennert
400	Rhodhiss
401	Rich Square
402	Richfield
403	Richlands
404	River Bend
405	Roanoke Rapids
406	Robbins
407	Robbinsville
408	Robersonville
409	Rockingham
410	Rockwell
411	Rocky Mount
412	Rolesville
413	Ronda
414	Roper
415	Rose Hill
416	Roseboro
417	Rosman
418	Rowland
419	Roxboro
420	Roxobel
421	Rural Hall
422	Ruth
423	Rutherford College
424	Rutherfordton
425	Saint Helena
426	Saint Pauls
427	Salemburg
428	Salisbury
429	Saluda
430	Sandy Creek
431	Sandyfield
432	Sanford
433	Saratoga
434	Sawmills
435	Scotland Neck
436	Seaboard
437	Seagrove
438	Sedalia
439	Selma
440	Seven Devils
441	Seven Springs
442	Severn
443	Shallotte
444	Sharpsburg
445	Shelby
446	Siler City
447	Simpson
448	Sims
449	Smithfield
450	Snow Hill
451	Southern Pines
452	Southern Shores
453	Southport
454	Sparta
455	Speed
456	Spencer
457	Spencer Mountain
458	Spindale
459	Spring Hope
460	Spring Lake
461	Spruce Pine
462	St. James
463	Staley
464	Stallings
465	Stanfield
466	Stanley
467	Stantonsburg
468	Star
469	Statesville
470	Stedman
471	Stem
472	Stokesdale
473	Stoneville
474	Stonewall
475	Stovall
476	Sugar Mountain
477	Summerfield
478	Sunset Beach
479	Surf City
480	Swansboro
481	Swepsonville
482	Sylva
483	Tabor City
484	Tar Heel
485	Tarboro
486	Taylorsville
487	Taylortown
488	Teachey
489	Thomasville
490	Tobaccoville
491	Topsail Beach
492	Trent Woods
493	Trenton
494	Trinity
495	Troutman
496	Troy
497	Tryon
498	Turkey
499	Unionville
500	Valdese
501	Vanceboro
502	Vandemere
503	Varnamtown
504	Vass
505	Waco
506	Wade
507	Wadesboro
508	Wagram
509	Wake Forest
510	Walkertown
511	Wallace
512	Wallburg
513	Walnut Cove
514	Walnut Creek
515	Walstonburg
516	Warrenton
517	Warsaw
518	Washington
519	Washington Park
520	Watha
521	Waxhaw
522	Waynesville
523	Weaverville
524	Webster
525	Weddington
526	Weldon
527	Wendell
528	Wentworth
529	Wesley Chapel
530	West Jefferson
531	Whispering Pines
532	Whitakers
533	White Lake
534	Whiteville
535	Whitsett
536	Wilkesboro
537	Williamston
538	Wilmington
539	Wilson
540	Wilson's Mills
541	Windsor
542	Winfall
543	Wingate
544	Winston-Salem
545	Winterville
546	Winton
547	Woodfin
548	Woodland
549	Wrightsville Beach
550	Yadkinville
551	Yanceyville
552	Youngsville
553	Zebulon
\.


--
-- Name: catalog_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_city_id_seq', 553, true);


--
-- Data for Name: catalog_coordsystem; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_coordsystem (id, name, description, "EPSG_code") FROM stdin;
\.


--
-- Name: catalog_coordsystem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_coordsystem_id_seq', 1, false);


--
-- Data for Name: catalog_county; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_county (id, name) FROM stdin;
1	Moore
2	Hertford
3	Alamance
4	Stanly
5	Pamlico
6	Cherokee
7	Harnett
8	Wake
9	Anson
10	Guilford
11	Randolph
12	Johnston
13	Buncombe
14	Bertie
15	Pender
16	Carteret
17	Beaufort
18	Sampson
19	Pitt
20	Nash
21	Mitchell
22	Brunswick
23	Avery
24	Martin
25	Watauga
26	Gaston
27	Cleveland
28	Davie
29	Forsyth
30	Duplin
31	Montgomery
32	Wilson
33	Bladen
34	Caldwell
35	Columbus
36	Yadkin
37	Rutherford
38	Transylvania
39	Craven
40	Lee
41	Catawba
42	Swain
43	Franklin
44	Yancey
45	Granville
46	Haywood
47	New Hanover
48	Orange
49	Chatham
50	Franlkin
51	Durham
52	Mecklenburg
53	Rowan
54	Tyrrell
55	Polk
56	Cabarrus
57	Edgecombe
58	Burke
59	Northampton
60	Washington
61	Stokes
62	Iredell
63	Davidson
64	Jackson
65	Richmond
66	Surry
67	Dare
68	Scotland
69	Cumberland
70	Rockingham
71	Chowan
72	Camden
73	Pasquotank
74	Wilkes
75	Halifax
76	Wayne
77	Robeson
78	Union
79	Henderson
80	Graham
81	Macon
82	Gates
83	Lenoir
84	Clay
85	Vance
86	Perquimans
87	Lincoln
88	Onslow
89	Greene
90	Madison
91	Ashe
92	Warren
93	Mcdowell
94	Jones
95	Caswell
96	Hoke
97	Person
98	Alleghany
99	Alexander
\.


--
-- Data for Name: catalog_county_cities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_county_cities (id, county_id, city_id) FROM stdin;
1	1	531
2	1	451
3	1	374
4	1	1
5	1	406
6	1	71
7	1	487
8	1	504
9	1	375
10	1	172
11	1	78
12	2	208
13	2	336
14	2	2
15	2	546
16	2	103
17	2	107
18	3	308
19	3	212
20	3	196
21	3	191
22	3	149
23	3	3
24	3	186
25	3	65
26	3	481
27	3	361
28	4	342
29	4	22
30	4	465
31	4	352
32	4	356
33	4	320
34	4	402
35	4	395
36	4	280
37	4	4
38	5	10
39	5	318
40	5	309
41	5	195
42	5	28
43	5	5
44	5	474
45	5	502
46	5	359
47	6	337
48	6	6
49	7	152
50	7	59
51	7	7
52	7	132
53	7	276
54	7	102
55	8	527
56	8	228
57	8	553
58	8	7
59	8	133
60	8	9
61	8	180
62	8	390
63	8	97
64	8	254
65	8	412
66	8	509
67	8	177
68	8	329
69	8	79
70	9	330
71	9	307
72	9	382
73	9	275
74	9	8
75	9	367
76	9	507
77	10	11
78	10	380
79	10	198
80	10	355
81	10	219
82	10	472
83	10	535
84	10	246
85	10	238
86	10	65
87	10	438
88	10	186
89	10	477
90	11	11
91	11	13
92	11	463
93	11	219
94	11	392
95	11	391
96	11	274
97	11	489
98	11	494
99	11	437
100	11	175
101	12	449
102	12	12
103	12	310
104	12	36
105	12	553
106	12	245
107	12	540
108	12	171
109	12	386
110	12	439
111	12	373
112	12	97
113	13	14
114	13	45
115	13	42
116	13	547
117	13	324
118	13	523
119	14	15
120	14	18
121	14	271
122	14	541
123	14	385
124	14	243
125	14	420
126	14	104
127	15	16
128	15	520
129	15	511
130	15	64
131	15	479
132	15	425
133	15	491
134	16	150
135	16	17
136	16	49
137	16	30
138	16	344
139	16	74
140	16	327
141	16	368
142	16	234
143	16	372
144	16	84
145	17	27
146	17	19
147	17	32
148	17	94
149	17	519
150	17	518
151	17	363
152	18	20
153	18	207
154	18	158
155	18	346
156	18	416
157	18	498
158	18	179
159	18	100
160	18	160
161	18	427
162	19	201
163	19	200
164	19	199
165	19	21
166	19	447
167	19	40
168	19	545
169	19	170
170	19	161
171	19	163
172	20	459
173	20	339
174	20	411
175	20	23
176	20	312
177	20	444
178	20	322
179	20	396
180	20	127
181	20	81
182	20	532
183	21	24
184	21	461
185	22	25
186	22	34
187	22	443
188	22	453
189	22	50
190	22	478
191	22	52
192	22	357
193	22	76
194	22	354
195	22	340
196	22	351
197	22	69
198	22	82
199	22	226
200	22	269
201	22	462
202	22	503
203	22	430
204	23	144
205	23	31
206	23	440
207	23	26
208	23	192
209	23	476
210	23	343
211	23	119
212	24	204
213	24	210
214	24	29
215	24	537
216	24	353
217	24	239
218	24	154
219	24	365
220	24	408
221	25	47
222	25	31
223	25	440
224	25	54
225	26	120
226	26	38
227	26	33
228	26	466
229	26	305
230	26	333
231	26	457
232	26	393
233	26	183
234	26	116
235	26	91
236	26	249
237	26	284
238	26	220
239	27	202
240	27	134
241	27	325
242	27	51
243	27	445
244	27	383
245	27	267
246	27	35
247	27	264
248	27	366
249	27	80
250	27	505
251	27	249
252	27	250
253	27	162
254	28	321
255	28	37
256	28	113
257	29	39
258	29	219
259	29	98
260	29	272
261	29	246
262	29	544
263	29	421
264	29	510
265	29	490
266	29	248
267	30	207
268	30	244
269	30	158
270	30	197
271	30	70
272	30	41
273	30	415
274	30	517
275	30	488
276	30	511
277	30	334
278	30	292
279	31	72
280	31	496
281	31	43
282	31	468
283	31	332
284	32	448
285	32	467
286	32	148
287	32	444
288	32	245
289	32	433
290	32	285
291	32	44
292	32	539
293	33	143
294	33	46
295	33	130
296	33	533
297	33	135
298	33	484
299	33	96
300	34	47
301	34	400
302	34	193
303	34	270
304	34	218
305	34	178
306	34	68
307	34	434
308	34	232
309	34	85
310	35	155
311	35	48
312	35	260
313	35	53
314	35	61
315	35	88
316	35	534
317	35	483
318	35	87
319	35	431
320	36	55
321	36	241
322	36	136
323	36	550
324	37	146
325	37	458
326	37	422
327	37	56
328	37	257
329	37	168
330	37	92
331	37	424
332	38	57
333	38	417
334	39	58
335	39	211
336	39	115
337	39	404
338	39	341
339	39	128
340	39	492
341	39	501
342	40	59
343	40	432
344	41	218
345	41	60
346	41	345
347	41	111
348	41	281
349	41	83
350	41	95
351	41	293
352	42	62
353	42	167
354	43	63
355	43	282
356	43	509
357	43	174
358	43	552
359	44	66
360	45	67
361	45	117
362	45	471
363	45	362
364	45	475
365	46	101
366	46	73
367	46	522
368	46	291
369	47	255
370	47	75
371	47	549
372	47	538
373	48	77
374	48	133
375	48	223
376	48	89
377	48	308
378	49	379
379	49	190
380	49	79
381	49	446
382	50	86
383	51	133
384	51	89
385	51	390
386	51	329
387	52	319
388	52	114
389	52	313
390	52	301
391	52	525
392	52	122
393	52	464
394	52	90
395	52	377
396	52	233
397	53	159
398	53	194
399	53	456
400	53	99
401	53	428
402	53	261
403	53	410
404	53	242
405	53	93
406	53	138
407	54	105
408	55	429
409	55	497
410	55	106
411	56	465
412	56	209
413	56	108
414	56	242
415	56	280
416	56	313
417	56	335
418	57	455
419	57	444
420	57	376
421	57	288
422	57	109
423	57	411
424	57	387
425	57	485
426	57	268
427	57	532
428	58	218
429	58	222
430	58	110
431	58	400
432	58	281
433	58	129
434	58	423
435	58	328
436	58	500
437	58	187
438	59	182
439	59	442
440	59	263
441	59	181
442	59	401
443	59	112
444	59	436
445	59	236
446	59	548
447	60	414
448	60	381
449	60	118
450	61	121
451	61	513
452	61	490
453	61	248
454	62	469
455	62	206
456	62	122
457	62	326
458	62	495
459	62	283
460	63	273
461	63	314
462	63	219
463	63	123
464	63	489
465	63	512
466	64	524
467	64	124
468	64	169
469	64	221
470	64	482
471	65	147
472	65	205
473	65	125
474	65	225
475	65	348
476	65	409
477	66	371
478	66	145
479	66	331
480	66	126
481	67	338
482	67	452
483	67	131
484	67	247
485	67	253
486	67	294
487	68	302
488	68	137
489	68	266
490	68	508
491	68	185
492	69	230
493	69	460
494	69	164
495	69	470
496	69	278
497	69	139
498	69	160
499	69	188
500	69	506
501	70	140
502	70	303
503	70	473
504	70	398
505	70	528
506	70	290
507	71	141
508	72	142
509	73	142
510	74	536
511	74	350
512	74	145
513	74	413
514	75	151
515	75	203
516	75	224
517	75	405
518	75	526
519	75	279
520	75	435
521	76	153
522	76	334
523	76	441
524	76	370
525	76	176
526	76	189
527	76	514
528	77	156
529	77	302
530	77	369
531	77	306
532	77	397
533	77	287
534	77	394
535	77	388
536	77	286
537	77	364
538	77	295
539	77	418
540	77	399
541	77	360
542	77	426
543	78	323
544	78	214
545	78	157
546	78	525
547	78	300
548	78	464
549	78	317
550	78	319
551	78	543
552	78	258
553	78	499
554	78	299
555	78	235
556	78	529
557	78	521
558	79	216
559	79	315
560	79	429
561	79	265
562	79	165
563	79	166
564	80	407
565	80	167
566	80	259
567	81	173
568	81	221
569	82	184
570	83	200
571	83	251
572	83	256
573	83	378
574	84	213
575	85	252
576	85	311
577	85	215
578	86	542
579	86	217
580	87	220
581	87	293
582	87	277
583	88	237
584	88	403
585	88	227
586	88	479
587	88	349
588	88	480
589	89	450
590	89	515
591	89	229
592	90	297
593	90	231
594	90	298
595	91	262
596	91	240
597	91	530
598	92	289
599	92	347
600	92	516
601	93	296
602	93	358
603	94	304
604	94	384
605	94	493
606	95	551
607	95	316
608	96	389
609	96	397
610	97	419
611	98	454
612	99	486
\.


--
-- Name: catalog_county_cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_county_cities_id_seq', 612, true);


--
-- Name: catalog_county_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_county_id_seq', 99, true);


--
-- Data for Name: catalog_datatype; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_datatype (id, name) FROM stdin;
2	API
3	App
1	Data
\.


--
-- Name: catalog_datatype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_datatype_id_seq', 3, true);


--
-- Data for Name: catalog_department; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_department (id, name, type) FROM stdin;
1	County Manager's Office	county
2	County Attorney's Office	county
3	Register of Deeds	county
4	Clerk of Courts	county
5	Sheriff's Department	county
6	Finance Department	county
7	Department of Social Services	county
8	Health Department	county
9	Mental Health Department	county
10	Board of Elections	county
11	Emergency Medical Services	county
12	Parks and Recreation	county
13	Human Resources Department	county
14	Alcoholic Beverage Control Board	county
15	Cooperative Extension Service	county
16	Solid Waste Management Department	county
17	City/Town Manager's Office	city
18	Mayor's Office	city
19	City/Town Attorney's Office	city
20	City/Town Clerk's Office	city
21	Police Department	city
22	Fire Department	city
23	Finance Department	city
24	Human Resources Department	city
25	Parks and Recreation	city
26	Public Works	city
27	Office of the Governor	state
28	Secretary of State	state
29	Office of the State Auditor	state
30	Treasurer	state
31	Department of Justice	state
32	Department of Public Instruction	state
33	Agriculture & Consumer Services	state
34	Department of Insurance	state
35	Department of Labor	state
36	Department of Administration	state
37	Commerce	state
38	Cultural Resources	state
39	Environment & Natural Resources	state
40	Health & Human Services	state
41	Department of Public Safety	state
42	Department of Revenue	state
43	Transportation	state
44	Office of the State Controller	state
45	State Board of Elections	state
46	Office of State Human Resources	state
47	University of North Carolina System	state
48	Office of Adminstrative Hearings	state
49	N.C. Administrative Office of the Courts	state
50	N.C. General Assembly	state
51	Housing Finance Agency	state
52	NC Acupuncture Licensing Board\n	state
53	NC Alarm Systems Licensing Board	state
54	NC Appraisal Board	state
55	NC Board of Architecture\n	state
56	NC Auctioneer Licensing Board	state
57	NC Board of Barber Examiners	state
58	NC Board of Certified Public Accountant Examiners	state
59	NC Board of Chiropractic Examiners	state
60	NC Board of Cosmetic Art Examiners	state
61	NC Board of Dental Examiners	state
62	NC Board of Dietetics/Nutrition	state
63	NC Board of Examiners of Electrical Contractors	state
64	NC Board of Electrolysis Examiners	state
65	NC Board of Examiners for Engineers and Surveyors	state
66	NC State Board of Environmental Health Specialist Examiners	state
67	NC Ethics Commission	state
68	NC State Board of Examiners of Fee-Based\nPracticing Pastoral Counselors	state
69	NC Board of Registration for Foresters	state
70	NC Board of Funeral Service	state
71	NC Hearing Aid Dealers and Fitters Board	state
72	NC Home Inspector Licensure Board	state
73	NC Interpreters and Transliterators Licensing Board	state
74	NC Licensing Board for General Contractors	state
75	NC Board for Licensing of Geologists	state
76	NC Board of Landscape Architects	state
77	NC Landscape Contractors Registration Board	state
78	NC Board of Law Examiners	state
79	NC Board of Licensed Professional Counselors	state
80	NC Board of Marriage and Family Therapy	state
81	NC Board of Massage and Bodywork Therapy	state
82	NC Medical Board	state
83	NC Midwifery Joint Committee	state
84	NC Board of Nursing	state
85	NC State Board of Examiners for Nursing Home Administrators	state
86	NC Board of Occupational Therapy	state
87	NC Board of Opticians	state
88	NC Board of Optometry	state
89	NC Board of Pharmacy	state
90	NC Board of Physical Therapy Examiners	state
91	NC State Board of Examiners of Plumbing, Heating and Fire Sprinkler Contractors	state
92	NC Board of Podiatry Examiners	state
93	NC Private Protective Services Board	state
94	NC Psychology Board	state
95	NC Public Librarian Certification Commission	state
96	NC Real Estate Commission	state
97	NC Board of Recreational Therapy Licensure	state
98	NC State Board of Refrigeration Examiners	state
99	NC Social Work Certification and Licensure Board	state
100	NC Board for Licensing of Soil Scientists	state
101	NC Board of Examiners for Speech and Language Pathologists and Audiologists	state
102	NC Substance Abuse Professional Practice Board	state
103	NC Veterinary Medical Board	state
104	Office of Information Technology Services	state
105	Development Services	county
\.


--
-- Data for Name: catalog_department_divisions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_department_divisions (id, department_id, division_id) FROM stdin;
1	27	1
2	27	3
3	27	2
4	28	11
5	28	10
6	28	13
7	28	12
8	28	15
9	28	14
10	28	17
11	28	16
12	28	5
13	28	4
14	28	7
15	28	6
16	28	9
17	28	8
18	29	19
19	29	18
20	29	20
21	29	21
22	30	24
23	30	25
24	30	26
25	30	27
26	30	22
27	30	23
28	31	37
29	31	39
30	31	38
31	31	41
32	31	33
33	31	32
34	31	31
35	31	30
36	31	28
37	31	43
38	31	40
39	31	29
40	31	2
41	31	35
42	31	36
43	31	45
44	31	34
45	31	44
46	31	42
47	32	38
48	32	59
49	32	58
50	32	48
51	32	49
52	32	46
53	32	47
54	32	57
55	32	56
56	32	51
57	32	50
58	32	53
59	32	52
60	32	60
61	32	55
62	32	62
63	32	63
64	32	54
65	32	61
66	33	72
67	33	66
68	33	79
69	33	73
70	33	67
71	33	77
72	33	76
73	33	75
74	33	74
75	33	64
76	33	65
77	33	71
78	33	70
79	33	82
80	33	83
81	33	80
82	33	81
83	33	69
84	33	68
85	33	84
86	33	78
87	34	91
88	34	93
89	34	92
90	34	86
91	34	85
92	34	88
93	34	87
94	34	99
95	34	98
96	34	96
97	34	89
98	34	97
99	34	90
100	34	102
101	34	103
102	34	100
103	34	101
104	34	95
105	34	94
106	34	104
107	34	105
108	35	109
109	35	108
110	35	115
111	35	114
112	35	117
113	35	116
114	35	111
115	35	110
116	35	113
117	35	112
118	35	106
119	35	107
120	36	120
121	36	123
122	36	38
123	36	126
124	36	121
125	36	127
126	36	122
127	36	133
128	36	132
129	36	131
130	36	130
131	36	124
132	36	125
133	36	135
134	36	134
135	36	128
136	36	129
137	36	119
138	36	118
139	36	136
140	37	151
141	37	150
142	37	153
143	37	152
144	37	155
145	37	154
146	37	157
147	37	156
148	37	159
149	37	158
150	37	137
151	37	139
152	37	138
153	37	146
154	37	147
155	37	144
156	37	145
157	37	142
158	37	143
159	37	140
160	37	141
161	37	148
162	37	149
163	37	164
164	37	165
165	37	166
166	37	160
167	37	161
168	37	162
169	37	163
170	38	167
171	38	180
172	38	168
173	38	169
174	38	179
175	38	178
176	38	177
177	38	176
178	38	175
179	38	174
180	38	173
181	38	172
182	38	171
183	38	170
184	39	199
185	39	198
186	39	210
187	39	195
188	39	194
189	39	197
190	39	196
191	39	191
192	39	190
193	39	193
194	39	192
195	39	118
196	39	182
197	39	183
198	39	181
199	39	186
200	39	187
201	39	184
202	39	185
203	39	188
204	39	189
205	39	201
206	39	200
207	39	203
208	39	202
209	39	205
210	39	204
211	39	207
212	39	206
213	39	209
214	39	208
215	39	38
216	40	216
217	40	217
218	40	214
219	40	215
220	40	212
221	40	213
222	40	211
223	40	218
224	40	219
225	40	62
226	40	234
227	40	230
228	40	231
229	40	232
230	40	233
231	40	118
232	40	181
233	40	77
234	40	229
235	40	228
236	40	227
237	40	226
238	40	225
239	40	224
240	40	223
241	40	222
242	40	221
243	40	220
244	41	235
245	41	237
246	41	248
247	41	245
248	41	244
249	41	247
250	41	246
251	41	238
252	41	239
253	41	243
254	41	242
255	41	252
256	41	241
257	41	250
258	41	251
259	41	249
260	41	236
261	41	240
262	42	263
263	42	202
264	42	262
265	42	259
266	42	258
267	42	261
268	42	270
269	42	271
270	42	272
271	42	260
272	42	267
273	42	266
274	42	265
275	42	264
276	42	253
277	42	269
278	42	268
279	42	256
280	42	257
281	42	254
282	42	255
283	43	273
284	43	274
285	43	275
286	43	276
287	43	277
288	43	278
289	43	279
290	43	289
291	43	288
292	43	2
293	43	281
294	43	280
295	43	283
296	43	282
297	43	285
298	43	284
299	43	287
300	43	286
301	43	38
302	43	292
303	43	290
304	43	291
305	44	300
306	44	301
307	44	2
308	44	298
309	44	299
310	44	296
311	44	297
312	44	294
313	44	295
314	44	293
315	45	302
316	45	2
317	45	304
318	45	305
319	45	303
320	46	308
321	46	309
322	46	313
323	46	312
324	46	311
325	46	310
326	46	306
327	46	307
328	46	2
329	47	319
330	47	318
331	47	339
332	47	338
333	47	335
334	47	334
335	47	337
336	47	336
337	47	331
338	47	330
339	47	333
340	47	332
341	47	322
342	47	323
343	47	320
344	47	321
345	47	326
346	47	327
347	47	324
348	47	325
349	47	328
350	47	329
351	47	317
352	47	316
353	47	315
354	47	314
355	48	340
356	48	341
357	48	342
358	49	38
359	49	343
360	49	37
361	49	344
362	49	345
363	49	346
364	49	347
365	49	350
366	49	348
367	49	349
368	50	39
369	50	356
370	50	355
371	50	354
372	50	353
373	50	352
374	50	351
375	104	358
376	105	359
\.


--
-- Name: catalog_department_divisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_department_divisions_id_seq', 376, true);


--
-- Name: catalog_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_department_id_seq', 105, true);


--
-- Data for Name: catalog_division; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_division (id, name) FROM stdin;
1	Office of State Budget and Management
2	Information Technology
3	Office of State Personnel
4	Corporations Division
5	Charitable Solicitation Licensing Section
6	Lobbying Compliance Division
7	Notary Public Section
8	Securities Division
9	Uniform Commercial Code Section
10	Athlete Agent Registration Office
11	Authentication Office
12	Office of International Services
13	Land Records Management Section
14	Publications Division
15	Trademarks Section
16	Certification and Filing Division
17	Information Technology Division
18	Division of Audits
19	Management Information Systems
20	Information Systems Audit
21	Investigative Division
22	Financial Operations
23	Investment Management
24	Retirement Systems
25	State and Local Government Finance Division
26	State Health Plan for Teachers and State Employees
27	Unclaimed Property and Escheats Division
28	Attorney General’s Office
29	Legal Services Division
30	State Bureau of Investigation
31	Sheriffs Training & Standards
32	Criminal Justice Training & Standards
33	NC Justice Academy
34	Private Protective Services
35	Alarm Systems Licensing
36	Medicaid Fraud Investigations Unit
37	Financial Services
38	Human Resources
39	Administrative Division
40	Criminal Division
41	Consumer Protection
42	Civil Division
43	Environmental Division
44	Law Enforcement and Prosecutions Division
45	Special Litigation DIvision
46	Center for Advancement of Teaching
47	N.C. Virtual Public School
48	Communication and Information Division
49	Data, Research and Federal Policy Division
50	Race to the Top
51	Academic Services and Instructional Support
52	Accountability Services
53	Career and Technical Education
54	Office of Charter Schools
55	District and School Transformation Division
56	Educator Effectiveness Division
57	Exceptional Children Division
58	Federal Program Monitoring and Support Services Division
59	Financial and Business Services
60	Healthy Schools
61	Digital Teaching and Learning
62	Internal Audit
63	IT Program Management Office
64	Agricultural Statistics
65	Agronomic Services
66	Budget & Finance
67	Emergency Programs
68	Environmental Programs
69	Food Distribution
70	Food and Drug Protection
71	Human Resources Office
72	Marketing
73	Meat and Poultry Inspection
74	Forest Service
75	State Fair
76	Plant Industry
77	Property and Construction
78	Public Affairs
79	Research Stations
80	Small Farms
81	Soil and Water Conservation
82	Standards
83	Structural Pest Control And Pesticides Division
84	Veterinary Division
85	Office of the State Fire Marshall
86	Consumer Services Division
87	Health Insurance Smart NC
88	Seniors' Health Insurance Information Program (SHIIP/Medicare)
89	Criminal Investigations
90	Agent Services
91	Property and Casualty
92	Life and Health
93	Market Regulation Division
94	Financial Evaluation Division
95	Regulatory Actions Division
96	Actuarial Services Division
97	Legislative Services Office
98	Engineering and Codes Division
99	Risk Management Division
100	Manufactured Building Division
101	Fire and Rescue Commission
102	Fire and Rescue Training
103	Safe Kids North Carolina
104	Ratings and Inspections Division
105	Research and Program Development Division
106	Occupational Safety and Health Division
107	Communications Division
108	Individual Development Accounts (IDA) Program
109	Legal Affairs Division
110	Research and Policy Division
111	N.C. Department of Labor Library
112	Apprenticeship and Training Bureau
113	Boiler Safety Bureau
114	Elevator and Amusement Device standards and inspections
115	Employment Discrimination Bureau
116	Mine and Quarry Bureau
117	Wage and Hour Bureau
118	Office of the Secretary
119	Division of Surplus Property
120	Purchase and Contract Division
121	Office for Historically Underutilitized Businesses
122	Commission of Indian Affairs
123	Council for Women
124	Youth Advocacy and Involvement Office
125	Division of Non-Public Education
126	State Parking
127	State Property Office
128	State Construction Office
129	Human Relations Commission
130	Division of Veterans Affairs
131	Motor Fleet Management
132	Justice for Sterlization Victims Foundation
133	Facility Management
134	Mail Service Center
135	Office of Fiscal Management
136	License to Give Trust Fund
137	Fiscal Management Division
138	Division of Employment Security
139	Business and Industry Division
140	Division of Community Assistance
141	Energy Division
142	N.C. Film Office/Film Council
143	International Trade Division
144	Labor and Economic Analysis Division
145	Office of Science & Technology
146	Division of Tourism, Film, and Sports Development 
147	Division of Workforce Solutions
148	Board of Science & Technology
149	 Commission on Workforce Development
150	Economic Development Board
151	Alcoholic Beverage Control Commission
152	Banking Commission
153	Community Development Council
154	Credit Union Division
155	Energy Policy Council
156	Industrial Commission
157	Utilities Commission
158	Rural Electrification Authority
159	Travel and Tourism Board
160	Office of the Commissioner for Small Business
161	NC Rural Development Council
162	Commerce Finance Center
163	Marketing and Customer Services Division
164	Policy, Research and Strategic Planning Division
165	Cemetary Commission
166	State Ports Authority
167	Archives and Records
168	Division of State History Museums
169	Division of State Historic Sites
170	Division of Historical Resources
171	N.C. Museum of Art
172	N.C. Arts Council
173	Southeastern Center for Contemporary Art
174	N.C. Symphony
175	State Library of North Carolina
176	Office of State Archeology
177	Historic Preservation Office
178	Historical Publications
179	N.C. Maritime Museums
180	Library for the Blind and Physically Handicapped
181	General Counsel
182	Ombudsman
183	Division of Water Infrastructure
184	Information Technology Services
185	Budget & Planning
186	Controller
187	Purchase and Contracts
188	Property Management
189	Division of Air Quality
190	N.C. Aquariums
191	Office of Conservation, Planning and Community Affairs
192	Environmental Assistance Center
193	Office of Environmental Education and Public Affairs
194	Division of Energy, Mineral and Land Resources
195	Legislative and Intergovernmental Affairs office
196	Division of Marine Fisheries
197	Museum of Natural Sciences
198	Division of Parks and Recreation
199	Division of Waste Management
200	Division of Water Resources (including Division of Water Quality)
201	N.C. Zoo
202	Financial Services Division
203	Albemarle-Pamlico National Estuary Partnership
204	Clean Water Management Trust Fund
205	Division of Coastal Management
206	Environmental Management Commission
207	Mining and Energy Commission
208	Natural Heritage Trust Fund
209	Ecosystem Enhancement Program
210	Wildlife Resources Commission
211	Aging and Adult Services
212	Services for the Blind
213	Child Development and Early Education
214	Services for the Deaf and Hard of Hearing
215	Council on Developmental Disabilities
216	Office of Economic Opportunity
217	Education Services
218	Division of Public Health (including vital records and environmental health)
219	Division of Health Service Regulation
220	Division of Medical Assistance
221	Division of Mental Health, Developmental Disabilities, and Substance Abuse Services
222	Office of Rural Health and Community Care
223	Division of Social Services
224	State Center for Health Statistics
225	Division of State Operated Healthcare Facilities
226	Division of Budget and Analysis
227	Office of the Controller
228	Division of Human Resources
229	Intergovernmental Relations
230	Division of Information Resource Management
231	Office of Medicaid Management Information System Services
232	Office of Privacy and Security
233	Office of Procurement and Contract Services
234	Office of Public Affairs
235	Division of Adult Correction
236	Alcoholism and Chemical Dependency Programs
237	North Carolina Correction Enterprises\n
238	\nCommunity Corrections\n
239	North Carolina Inmate Grievance Resolution Board
240	Post Release Supervision and Parole Commission
241	Prisons
242	Division of Juvenile Justice
243	Division of Law Enforcement
244	Emergency Management
245	Boxing Authority
246	Civil Air Patrol
247	National Guard
248	Butner Public Safety
249	State Capitol Police
250	State Highway Patrol
251	Governor's Crime Commission
252	Victim's Services
253	Internal Audit Division
254	Business Operations Division
255	Collection Division
256	Examinations Division
257	Special Corporate Compliance Initiatives Division
258	Tax Enforcement Division
259	Excise Tax Division
260	Income Tax Division
261	Local Government Division
262	Sales and Use Tax Division
263	Taxpayer Assistance
264	Applications Development and Support Division
265	Business Support Services Division
266	Contract Administration
267	Enterprise Project Management Division
268	Information Security Division
269	Technology Services and Support
270	Documents and Payments Processing Division
271	Human Resources Division
272	Business Solutions Division
273	Division of Motor Vehicles
274	Facilities Management
275	Support Services
276	Division of Highways
277	Prioritization Office
278	Program Development Branch
279	Technical Services
280	Rail Division
281	Division of Aviation
282	Ferry Division
283	Public Transportation Division
284	Bicycle and Pedestrian Division
285	Turnpike Authority
286	Financial Management Division
287	Intergovernmental Affairs and Budget Coordination
288	Strategic Planning
289	Attorney General's Office
290	Communications Office
291	Governance Office
292	Office of Inspector General
293	Administration
294	Personnel
295	Business Services
296	Communications and Government Relations
297	Risk Mitigation Services
298	Data Integration
299	CJLeads
300	Fraud, Waste and Abuse
301	Government Business Intelligence Competency Center
302	Executive Division
303	Elections Administration
304	Campaign Finance
305	Voting Systems Division
306	Director's Office
307	Deputy Director's Office
308	Classification & Compensation
309	Equal Employment Opportunity, Diversity and Inclusion
310	Employee Relations and Local Government
311	Learning & Development
312	Operations and Benefits
313	Recruitment and Staffing
314	Appalacian State University
315	 East Carolina University
316	Fayetteville State University
317	Elizabeth City State University
318	NC Agricultural and Technical State University
319	North Carolina Central University
320	 NC State University
321	 UNC Asheville
322	 UNC-Chapel Hill
323	 UNC Charlotte
324	 UNC Greensboro
325	 UNC Pembroke
326	 UNC Wilmington
327	 UNC School of the Arts
328	 Western Carolina University
329	 Winston-Salem State University
330	 North Carolina School of Science and Mathematics
331	UNC Center for Public Television (UNC-TV)
332	The North Carolina Arboretum
333	The North Carolina State Approving Agency (NCSAA)
334	The North Carolina Center for International Understanding (NCCIU)
335	The North Carolina State Education Assistance Authority (NCSEAA)
336	North Carolina Center for the Advancement of Teaching (NCCAT)
337	UNC Press
338	UNC Health Care System
339	N.C. Area Health Education Centers Program
340	Rules Division
341	Hearings Division
342	Civil Rights Division
343	Court Programs and Management Services Division
344	Court Services Division
345	Guardian ad Litem
346	Legal and Legislative Services
347	Organizational Development Division
348	Purchasing Office
349	Research and Planning Division
350	Technology Services Division
351	Legislative Services
352	Bill Drafting Division
353	Fiscal Research Division
354	Information Systems Division
355	Program Evaluation Division
356	Research Division
357	asdf
358	Center for Geographic Information and Analysis
359	GIS
\.


--
-- Name: catalog_division_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_division_id_seq', 359, true);


--
-- Data for Name: catalog_resource; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_resource (id, name, slug, short_description, release_date, time_period, usage, description, contact_phone, contact_email, contact_url, updates_id, area_of_interest, is_published, created_by_id, last_updated_by_id, created, last_updated, metadata_contact, metadata_notes, update_frequency, data_formats, proj_coord_sys, wkt_geometry, csw_typename, csw_schema, csw_mdsource, csw_xml, csw_anytext, rating_votes, rating_score, agency_type, keywords, department_id, division_id, newest_record, oldest_record) FROM stdin;
8	Police Reports	police-reports	Incident, arrest and accident	\N			The RMS of the Chapel Hill Police Department contains information about arrests, incidents and accidents. The name of the database is the ONESolution Records Management System and the vendor is SunGard Public Sector. \r\n\r\nThe website allows visitors to search accidents, incidents and arrests. Results of report index information are returned in HTML format with links to PDF versions of the paper reports. PDFs of accident reports are not available online.	919-968-2760	kgunter@townofchapelhill.org	http://www.ci.chapel-hill.nc.us/index.aspx?page=668	1		t	2	2	2013-08-22 01:14:12.276525+00	2013-08-22 01:14:12.277291+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-08-21	2011-08-31
1	Property Sales	property-sales	Property sales in Columbus County	\N			Property sales in Columbus County				1		f	4	5	2013-08-16 14:56:13.332506+00	2013-08-21 16:48:10.011587+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
2	Parcels	parcels	Parcel data for Columbus County	\N			Parcel data for Columbus County				2		f	4	1	2013-08-16 15:04:33.743972+00	2013-08-21 16:57:32.548883+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		36	127	\N	\N
3	admin sugg	admin-sugg	brief des	\N	sweet pickles		long de				\N		t	5	5	2013-08-21 17:33:03.348356+00	2013-08-21 18:42:06.194817+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	state		14	357	\N	\N
4	DHHS Restaurant Inspections	dhhs-restaurant-inspections	Spreadsheet of restaurant inspections in all counties.	\N			The state Department of Health and Human Services has an Oracle database called BETS. \r\n\r\nAt the department's discretion it posts to the Web two tab-delimited .ttx files that contain a subset of the data within BETS. \r\n\r\nEach month the file receives a new, unique name based on the date. The file names that contain the string "Part1" contain data about the restaurants themselves. The files with "Part2" in the name includes information about the inspection events. Each row in the file is an individual inspection item, so there may be several rows for a single inspection if there were multiple point deductions at that inspection.\r\n\r\n	919-855-4816	kevin.howell@dhhs.nc.gov	http://ehs.ncpublichealth.com/	4		t	2	2	2013-08-21 23:40:47.941955+00	2013-08-21 23:44:56.332118+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	state		40	218	2013-03-12	2009-05-28
5	N.C. Master Addresses Dataset	nc-master-addresses-dataset	"the best available representation of situs addresses and their location"	\N			"The NC Master Address Dataset represents a compilation of the best available representation of situs addresses and their location. CGIA contacted county and municipal governments to acquire this information, and insight on how each local jurisdiction manages address assignment and maintenance."\r\n\r\n"The NC Master Address Dataset products are available in the Census Master Address File (MAF) file format (a pipe delimited ASCII file) and as shapefile in a GIS-ready form. The state has been broken into ten regions to accommodate the volume of data. "\r\n\r\n	(919) 754-6580	tim.johnson@nc.gov	http://www.cgia.state.nc.us/ContactUs/tabid/72/Default.aspx	5		t	2	2	2013-08-21 23:59:13.738598+00	2013-08-21 23:59:13.739374+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	state		104	358	2009-10-31	2009-10-31
6	Corporations List	corporations-list	Daily list of new corporations registered with the Secretary of State	\N			This web search form can be used to query the N.C. Secretary of State's database of corporations and retrieve up to a year's worth of records. The results can be downloaded in a tab-delimited zipped text file.\r\n\r\nData includes the corporation name, date of incorporation, registrant's name and address, principle's name and address, whether it is foreign or domestically controlled, and the type of corporation. It does not include information about the actual physical location of the corporations or the types of industries they are in.	919-807-2225		http://www.secretary.state.nc.us/corporations/	1		t	2	2	2013-08-22 00:16:29.691688+00	2013-08-22 00:16:29.692496+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	state		28	4	2013-08-21	1929-08-24
7	Real Property Tax Data	real-property-tax-data	ArcGIS geodatabase of property data, including sales	\N			"Each geodatabase consists of a polygon layer(bitek_view_fc) and (5) tables(buildings, building sub ‐ areas, sale, land, and obxf). The records in each table are related to the parcel polygons through a Parcelid field. In this way, the parcels can be viewed on the map, and each table can be opened and queried for specific data like number of bedrooms, number of bathrooms, year built, etc... The geodatabase was selected as the preferred method of distributing the data in order to preserve the one ‐ to ‐ many relationship between parcel polygons and the appraisal data. In addition, the Appraisal Manual is also available for download. The manual lists code values and descriptions for the content in the appraisal tables."	336 ‐ 753 ‐ 6056	john.gallimore @ co.davie.nc.us	http://www.daviecountync.gov/index.aspx?NID=322	3		t	2	2	2013-08-22 00:36:31.880534+00	2013-08-22 00:36:31.882525+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		105	359	2013-08-21	\N
\.


--
-- Data for Name: catalog_resource_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_resource_categories (id, resource_id, category_id) FROM stdin;
3	1	16
5	2	15
10	3	2
11	3	7
15	4	2
16	4	11
17	4	14
18	5	16
19	6	2
20	7	16
21	8	6
\.


--
-- Name: catalog_resource_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_categories_id_seq', 21, true);


--
-- Data for Name: catalog_resource_cities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_resource_cities (id, resource_id, city_id) FROM stdin;
1	3	1
2	3	10
3	8	89
\.


--
-- Name: catalog_resource_cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_cities_id_seq', 3, true);


--
-- Data for Name: catalog_resource_coord_sys; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_resource_coord_sys (id, resource_id, coordsystem_id) FROM stdin;
\.


--
-- Name: catalog_resource_coord_sys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_coord_sys_id_seq', 1, false);


--
-- Data for Name: catalog_resource_counties; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_resource_counties (id, resource_id, county_id) FROM stdin;
6	1	35
8	2	35
9	3	1
10	3	3
11	7	28
\.


--
-- Name: catalog_resource_counties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_counties_id_seq', 11, true);


--
-- Data for Name: catalog_resource_data_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_resource_data_types (id, resource_id, datatype_id) FROM stdin;
6	1	1
8	2	1
11	3	2
13	4	1
14	5	1
15	6	1
16	7	1
17	8	3
\.


--
-- Name: catalog_resource_data_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_data_types_id_seq', 17, true);


--
-- Name: catalog_resource_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_id_seq', 8, true);


--
-- Data for Name: catalog_updatefrequency; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_updatefrequency (id, update_frequency) FROM stdin;
1	At least once a day
2	At least once a week
3	At least once a month
4	At least once a year
5	It is not updated after it's created
\.


--
-- Name: catalog_updatefrequency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_updatefrequency_id_seq', 5, true);


--
-- Data for Name: catalog_url; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_url (id, url, url_label, url_type_id, resource_id) FROM stdin;
1	http://www.columbusco.org/sales.xls	2013 Property Sales	11	1
2	http://www.columbusco.org/GISData/parcels.zip	Parcels	15	2
3	http:suggestion.com2	urllabelsug	9	3
4	http://ehs.ncpublichealth.com/browsablemedia/	.ttx files on DHHS website	16	4
5	ftp://ftp.nconemap.com/outgoing/vector/NCMasterAddress_area01_shp.zip	Area 1 Shapefile	15	5
6	ftp://ftp.nconemap.com/outgoing/vector/NCMasterAddress_area01_maf.zip	Area 1 MAF	17	5
7	http://www.secretary.state.nc.us/corporations/SearchChgs.aspx	Web search app	16	6
8	http://maps.co.davie.nc.us/developmentservices/gisftp/DavieCo_parceldata_pgdb.zip	GIS Geodatabase	18	7
9	http://maps.co.davie.nc.us/developmentservices/gisftp/DavieCo_parceldata_filegdb.zip	Microsoft Access file	19	7
10	https://api.scraperwiki.com/api/1.0/datastore/sqlite?format=csv&name=chapel_hill_police_reports&query=select+*+from+%60swdata%60&apikey=	Open-NC.org's ScraperWiki CSV	9	8
11	https://api.scraperwiki.com/api/1.0/datastore/sqlite?format=json&name=chapel_hill_police_reports&query=select+*+from+%60swdata%60&apikey=	Open-NC.org's ScraperWiki JSON	12	8
12	https://classic.scraperwiki.com/scrapers/export_sqlite/chapel_hill_police_reports/	Open-NC.org's ScraperWiki SQLite database	20	8
13	http://p2c.chpd.us/Summary.aspx	Chapel Hill PD Web App	1	8
\.


--
-- Name: catalog_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_url_id_seq', 13, true);


--
-- Data for Name: catalog_urlimage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_urlimage (id, image, title, source, source_url, resource_id) FROM stdin;
1	url_images/4/Screen Shot 2013-08-21 at 7_1.39	title	source	sourceurl	4
2	url_images/5/Screen Shot 2013-08-21 at 7_1.58	title	source	sourceurl	5
3	url_images/6/Screen Shot 2013-08-21 at 8_1.16	title	source	sourceurl	6
4	url_images/7/Screen Shot 2013-08-21 at 8_1.35	title	source	sourceurl	7
5	url_images/8/Screen Shot 2013-08-21 at 9_1.13	title	source	sourceurl	8
6	url_images/8/Screen Shot 2013-08-21 at 9_1_1.13	titel	source	sourceurl	8
\.


--
-- Name: catalog_urlimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_urlimage_id_seq', 6, true);


--
-- Data for Name: catalog_urltype; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_urltype (id, url_type) FROM stdin;
1	HTML
2	XML
3	WMS
4	WCS
5	TIFF
6	ZIP
7	MrSID
8	KML
9	CSV
10	WFS
11	Excel
12	JSON
13	PDF
14	XLS
15	Shapefile
16	TTX
17	MAF-ASCII
18	ArcGIS Geodatabase
19	Microsoft Access .mdb
20	SQLite
\.


--
-- Name: catalog_urltype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_urltype_id_seq', 20, true);


--
-- Data for Name: celery_taskmeta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY celery_taskmeta (id, task_id, status, result, date_done, traceback, hidden, meta) FROM stdin;
325	7f2c7650-0b27-4611-bbfb-95e7b2787828	SUCCESS	\N	2013-08-27 08:00:00.342627+00	\N	f	eJxrYKotZAzlSM7IzEkpSs0rZIotZC7WAwBREgb9
326	fb3c257a-54b6-437e-9416-fbec7442f4fc	SUCCESS	\N	2013-08-28 08:00:00.043767+00	\N	f	eJxrYKotZAzlSM7IzEkpSs0rZIotZC7WAwBREgb9
\.


--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('celery_taskmeta_id_seq', 326, true);


--
-- Data for Name: celery_tasksetmeta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY celery_tasksetmeta (id, taskset_id, result, date_done, hidden) FROM stdin;
\.


--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('celery_tasksetmeta_id_seq', 1, false);


--
-- Data for Name: comments_commentwithrating; Type: TABLE DATA; Schema: public; Owner: -
--

COPY comments_commentwithrating (comment_ptr_id, rating) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2013-08-14 18:05:26.697888+00	1	2	1	Students	1	
2	2013-08-14 18:10:26.483559+00	1	3	2	ryan	1	
3	2013-08-14 18:10:50.8718+00	1	3	2	ryan	2	Changed password, is_staff and is_superuser.
4	2013-08-15 16:40:30.92632+00	1	3	3	ben	1	
5	2013-08-15 16:43:45.287607+00	1	3	3	ben	2	Changed password, is_staff and is_superuser.
6	2013-08-15 17:13:26.61998+00	1	3	4	copelco	1	
7	2013-08-15 17:13:30.929772+00	1	3	4	copelco	2	Changed password, is_staff and is_superuser.
8	2013-08-16 14:56:13.720808+00	4	19	1	Property Sales	1	
9	2013-08-16 15:04:21.914454+00	4	16	15	Shapefile	1	
10	2013-08-16 15:04:34.087098+00	4	19	2	Parcels	1	
11	2013-08-16 15:04:46.615414+00	4	19	2	Parcels	2	Changed url_type for url "Parcels - Shapefile - http://www.columbusco.org/GISData/parcels.zip".
12	2013-08-16 15:15:21.101011+00	4	19	2	Parcels	2	Changed categories.
13	2013-08-16 15:15:33.090383+00	4	19	1	Property Sales	2	Changed categories.
14	2013-08-16 17:28:09.637846+00	4	15	3	App	2	Changed name.
15	2013-08-16 17:28:16.769517+00	4	15	1	Data	2	Changed name.
16	2013-08-21 15:46:18.965552+00	2	3	5	ryan_thornburg	2	Changed password, is_staff and groups.
17	2013-08-21 15:47:54.563776+00	2	3	5	ryan_thornburg	2	Changed password.
18	2013-08-21 16:28:50.820931+00	2	23	1	admin sugg	1	
19	2013-08-21 16:48:10.370256+00	5	19	1	Property Sales	2	Changed is_published.
20	2013-08-21 16:56:05.72077+00	1	19	2	Parcels	2	Changed is_published.
21	2013-08-21 16:56:52.319956+00	1	6	1	open-nc.org	2	Changed domain and name.
22	2013-08-21 16:57:32.67076+00	1	19	2	Parcels	2	Changed department and division.
23	2013-08-21 17:00:29.209122+00	1	2	1	Students	2	Changed permissions.
24	2013-08-21 17:23:16.774764+00	5	37	357	asdf	1	
25	2013-08-21 17:33:03.609429+00	5	19	3	admin sugg	1	
26	2013-08-21 17:50:49.044316+00	5	19	3	admin sugg	2	Changed time_period.
27	2013-08-21 18:21:08.530601+00	1	3	6	victor_student	1	
28	2013-08-21 18:21:17.345498+00	1	3	6	victor_student	2	Changed password, is_staff and groups.
29	2013-08-21 18:42:06.421344+00	5	19	3	admin sugg	2	Changed counties and cities.
30	2013-08-21 23:10:00.501269+00	2	22	2	BETS Database of Food Establishment Inspections	1	
31	2013-08-21 23:18:09.598285+00	2	22	2	BETS Database of Food Establishment Inspections	2	Changed description and url.
32	2013-08-21 23:37:32.683437+00	2	16	16	TTX	1	
33	2013-08-21 23:40:48.204454+00	2	19	4	DHHS Restaurant Inspections	1	
34	2013-08-21 23:44:56.602533+00	2	19	4	DHHS Restaurant Inspections	2	No fields changed.
35	2013-08-21 23:54:34.765902+00	2	37	358	Center for Geographic Information and Analysis	1	
36	2013-08-21 23:54:40.889573+00	2	38	104	Office of Information Technology Services	1	
37	2013-08-21 23:58:28.227518+00	2	16	17	MAF-ASCII	1	
38	2013-08-21 23:59:14.029178+00	2	19	5	N.C. Master Addresses Dataset	1	
39	2013-08-22 00:16:30.024763+00	2	19	6	Corporations List	1	
40	2013-08-22 00:32:22.118765+00	2	37	359	GIS	1	
41	2013-08-22 00:32:27.677727+00	2	38	105	Development Services	1	
42	2013-08-22 00:34:37.630782+00	2	16	18	ArcGIS Geodatabase	1	
43	2013-08-22 00:35:43.377603+00	2	16	19	Microsoft Access .mdb	1	
44	2013-08-22 00:36:32.205261+00	2	19	7	Real Property Tax Data	1	
45	2013-08-22 00:50:04.810159+00	2	22	3	Police Incident Reports	1	
46	2013-08-22 00:55:05.204404+00	2	22	3	Police Incident Reports	2	No fields changed.
47	2013-08-22 00:55:28.500212+00	2	22	4	Police Incident Reports	1	
48	2013-08-22 01:04:06.842553+00	2	22	5	Police Reports	1	
49	2013-08-22 01:12:18.110675+00	2	16	20	SQLite	1	
50	2013-08-22 01:14:12.439903+00	2	19	8	Police Reports	1	
51	2013-08-22 15:28:41.549441+00	1	22	5	Police Reports	2	No fields changed.
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 51, true);


--
-- Data for Name: django_comment_flags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_comment_flags (id, user_id, comment_id, flag, flag_date) FROM stdin;
\.


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_comment_flags_id_seq', 1, false);


--
-- Data for Name: django_comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_comments (id, content_type_id, object_pk, site_id, user_id, user_name, user_email, user_url, comment, submit_date, ip_address, is_public, is_removed) FROM stdin;
\.


--
-- Name: django_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_comments_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	content type	contenttypes	contenttype
5	session	sessions	session
6	site	sites	site
7	comment	comments	comment
8	comment flag	comments	commentflag
9	comment with rating	comments	commentwithrating
10	log entry	admin	logentry
11	migration history	south	migrationhistory
12	city	catalog	city
13	county	catalog	county
14	category	catalog	category
15	data type	catalog	datatype
16	url type	catalog	urltype
17	update frequency	catalog	updatefrequency
18	Coordinate system	catalog	coordsystem
19	resource	catalog	resource
20	url	catalog	url
21	url image	catalog	urlimage
22	request	requests	request
23	suggestion	suggestions	suggestion
24	scribble	scribbler	scribble
25	task state	djcelery	taskmeta
26	saved group result	djcelery	tasksetmeta
27	interval	djcelery	intervalschedule
28	crontab	djcelery	crontabschedule
29	periodic tasks	djcelery	periodictasks
30	periodic task	djcelery	periodictask
31	worker	djcelery	workerstate
32	task	djcelery	taskstate
33	vote	djangoratings	vote
34	score	djangoratings	score
35	similar user	djangoratings	similaruser
36	ignored object	djangoratings	ignoredobject
37	division	catalog	division
38	department	catalog	department
39	kv store	thumbnail	kvstore
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_content_type_id_seq', 39, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
i3mslrhlme4p5rwy7z1ryk9z6zdelbmm	NWI4MTllMmE5MjFhZDRmZWQxOWYzZTExZGMwMDdlMjlmODRmZWNiOTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLA3Uu	2013-08-29 16:44:24.051346+00
gtgi8dcy7xwdrew2ctmf6nar01xurakb	NDgyMWM2OWEwMTQ3MmIzN2UyOGUwNDQ5ODYzYzIyNWM0MzkyMDY5YTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLBHUu	2013-08-30 14:51:30.870775+00
h920k9dp3cmldjlu5zotah9oxvfdsif4	YWYyN2E3MzgwY2VhMWNkMTliODI4MzJiNmM4ODkyMTJjZjlmOWQxZjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-09-04 18:22:14.670679+00
l7va8jw9xsuf9aprpecomnk01346def2	OTA1YmQ0MTBhNmI2MTdlNmExY2U1ZDExMjY4YWJjZDYxMTA5M2IyMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2013-09-04 22:38:10.213101+00
tovc5bk0qu5rvl0nl9zb0om2szld5vwv	NTgxMzE1YzlmNWJjOTUzODNiMGE1NmE5ZTE0NDAxMmM0MWQ4YjE1ZDqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==	2013-09-11 17:26:18.144982+00
y5227e3si0pu1gq33cx64dsuhpbmnuro	YWYyN2E3MzgwY2VhMWNkMTliODI4MzJiNmM4ODkyMTJjZjlmOWQxZjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-09-11 19:16:21.028167+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_site (id, domain, name) FROM stdin;
1	open-nc.org	open-nc.org
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: djangoratings_ignoredobject; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djangoratings_ignoredobject (object_id, id, content_type_id, user_id) FROM stdin;
\.


--
-- Name: djangoratings_ignoredobject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djangoratings_ignoredobject_id_seq', 1, false);


--
-- Data for Name: djangoratings_score; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djangoratings_score (id, content_type_id, object_id, key, score, votes) FROM stdin;
1	22	1	2c5504ab9a86164db22a92dc8793843d	1	1
2	22	2	2c5504ab9a86164db22a92dc8793843d	1	1
\.


--
-- Name: djangoratings_score_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djangoratings_score_id_seq', 2, true);


--
-- Data for Name: djangoratings_similaruser; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djangoratings_similaruser (to_user_id, agrees, id, disagrees, from_user_id, exclude) FROM stdin;
\.


--
-- Name: djangoratings_similaruser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djangoratings_similaruser_id_seq', 1, false);


--
-- Data for Name: djangoratings_vote; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djangoratings_vote (id, content_type_id, object_id, key, score, user_id, ip_address, date_added, date_changed, cookie) FROM stdin;
1	22	1	2c5504ab9a86164db22a92dc8793843d	1	5	152.2.212.53	2013-08-21 15:44:30.450027+00	2013-08-21 15:44:30.45008+00	\N
2	22	2	2c5504ab9a86164db22a92dc8793843d	1	2	152.2.212.53	2013-08-21 23:11:12.377882+00	2013-08-21 23:11:12.377927+00	\N
\.


--
-- Name: djangoratings_vote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djangoratings_vote_id_seq', 2, true);


--
-- Data for Name: djcelery_crontabschedule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) FROM stdin;
\.


--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djcelery_crontabschedule_id_seq', 1, false);


--
-- Data for Name: djcelery_intervalschedule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djcelery_intervalschedule (id, every, period) FROM stdin;
\.


--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djcelery_intervalschedule_id_seq', 1, false);


--
-- Data for Name: djcelery_periodictask; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djcelery_periodictask (id, name, task, interval_id, crontab_id, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description) FROM stdin;
\.


--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djcelery_periodictask_id_seq', 1, false);


--
-- Data for Name: djcelery_periodictasks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djcelery_periodictasks (ident, last_update) FROM stdin;
\.


--
-- Data for Name: djcelery_taskstate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djcelery_taskstate (id, state, task_id, name, tstamp, args, kwargs, eta, expires, result, traceback, runtime, retries, worker_id, hidden) FROM stdin;
\.


--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djcelery_taskstate_id_seq', 1, false);


--
-- Data for Name: djcelery_workerstate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djcelery_workerstate (id, hostname, last_heartbeat) FROM stdin;
\.


--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djcelery_workerstate_id_seq', 1, false);


--
-- Data for Name: requests_request; Type: TABLE DATA; Schema: public; Owner: -
--

COPY requests_request (id, suggested_by_id, title, description, relevance, url, agency_type, city_id, county_id, agency_name, agency_division, agency_contact, other_category, rating_votes, rating_score, creation_date, last_modified, updates_id) FROM stdin;
1	5	chippy	Desc	Relevance	http://url.com/	city	\N	\N	agency	division	contact	more, than one,	1	1	2013-08-22 04:00:00+00	2013-08-22 04:00:00+00	\N
2	2	BETS Database of Food Establishment Inspections	This database, called BETS, contains records of health inspections of restaurants, school cafeterias and other food service establishments in all 100 counties. It shows the date and location of inspections, inspectors' names and individual comments and point deductions for each inspection. It is an Oracle database.\r\n\r\nA subset of the fields in the database has been published monthly in .ttx format at http://ehs.ncpublichealth.com/browsablemedia/ but it would be useful to have the entire database, especially these tables:\r\n\r\nDD_BETS_Form_Item_field\r\nDD_BETS_Form_Item\r\nDD_BETS_Activity_Item_Field\r\nDD_BETS_Activity_Item\r\nDD_Visit_Items_Marked\r\nDD_BETS_Form\r\nDD_BETS_Activity\r\n\r\nWe have a data dictionary that describes the tables and the fields they contain.	This data is used to determine the food safety of restaurants, and is used to create those restaurant scorecards with which all patrons are familiar. This database can help North Carolinians make healthy choices about the food they eat.	https://www.muckrock.com/foi/north-carolina-153/public-records-request-for-bets-database-4914/	state	\N	\N	Department of Health and Human Services	Division of Public Health	Kevin V. Howell		1	1	2013-08-22 04:00:00+00	2013-08-22 04:00:00+00	\N
3	2	Police Incident Reports	This database contains information about incidents to which the Aberdeen Police Department responds. The department's RMS vendor is Southern Software, which previously referred to its product as "Police-Pak" which resides on a department server running Microsoft SQL Server.	Police incident reports provide important information about public safety issues and police activity in their communities.	http://townofaberdeen.net/pView.aspx?id=2092&catID=29	city	1	\N	Aberdeen Police Department	none	(910) 944-9721		0	0	2013-08-22 04:00:00+00	2013-08-22 04:00:00+00	\N
4	2	Police Incident Reports	This database contains information about incidents to which the Ahoskie Police Department responds.	Police incident reports provide important information about public safety issues and police activity in their communities.	http://www.ahoskiepd.com/information/requesting-a-police-report/	city	2	\N	Police Department	Records Clerk	(252) 332-5012		0	0	2013-08-22 04:00:00+00	2013-08-22 04:00:00+00	\N
5	2	Police Reports	The RMS of the Chapel Hill Police Department contains information about arrests, incidents and accidents. The name of the database is the ONESolution Records Management System and the vendor is SunGard Public Sector.	Police incident and arrest reports provide important information about public safety issues and police activity in their communities.	http://p2c.chpd.us/Summary.aspx	city	89	\N	Police Department	Public Information officer	kgunter@townofchapelhill.org		0	0	2013-08-22 04:00:00+00	2013-08-22 15:28:41.42903+00	\N
\.


--
-- Data for Name: requests_request_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY requests_request_categories (id, request_id, category_id) FROM stdin;
3	2	2
4	2	11
6	3	6
8	5	6
\.


--
-- Name: requests_request_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('requests_request_categories_id_seq', 8, true);


--
-- Name: requests_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('requests_request_id_seq', 5, true);


--
-- Data for Name: requests_request_resources; Type: TABLE DATA; Schema: public; Owner: -
--

COPY requests_request_resources (id, request_id, resource_id) FROM stdin;
\.


--
-- Name: requests_request_resources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('requests_request_resources_id_seq', 1, false);


--
-- Data for Name: scribbler_scribble; Type: TABLE DATA; Schema: public; Owner: -
--

COPY scribbler_scribble (id, created_time, modified_time, name, slug, url, content) FROM stdin;
\.


--
-- Name: scribbler_scribble_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('scribbler_scribble_id_seq', 1, false);


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	catalog	0001_initial	2013-08-13 18:39:22.774026+00
2	requests	0001_initial	2013-08-13 18:39:23.259473+00
3	suggestions	0001_initial	2013-08-13 18:39:23.483636+00
4	suggestions	0002_auto__add_field_suggestion_other_category	2013-08-13 18:39:23.548886+00
5	scribbler	0001_initial	2013-08-13 18:39:23.663987+00
6	scribbler	0002_auto__add_unique_scribble_url_slug	2013-08-13 18:39:23.686825+00
7	scribbler	0003_auto__chg_field_scribble_slug	2013-08-13 18:39:23.948038+00
8	djcelery	0001_initial	2013-08-13 18:39:24.413834+00
9	djcelery	0002_v25_changes	2013-08-13 18:39:24.608575+00
10	djcelery	0003_v26_changes	2013-08-13 18:39:24.675989+00
11	djcelery	0004_v30_changes	2013-08-13 18:39:24.696726+00
12	djangoratings	0001_initial	2013-08-13 18:39:24.975459+00
13	djangoratings	0002_add_mean_and_stddev	2013-08-13 18:39:25.709182+00
14	djangoratings	0003_add_correlations	2013-08-13 18:39:25.848725+00
15	djangoratings	0004_rethink_recommendations	2013-08-13 18:39:25.901792+00
16	djangoratings	0005_add_exclusions	2013-08-13 18:39:25.987054+00
17	djangoratings	0006_add_cookies	2013-08-13 18:39:26.167251+00
18	catalog	0002_auto__add_field_resource_agency_type	2013-08-15 16:36:15.668167+00
19	catalog	0003_auto__add_field_resource_keywords	2013-08-15 16:36:15.900576+00
20	catalog	0004_auto__add_division__add_department__del_field_resource_division__del_f	2013-08-15 16:36:16.037181+00
21	catalog	0005_auto__add_field_resource_department__add_field_resource_division	2013-08-15 16:36:16.203521+00
22	catalog	0006_auto__add_field_urlimage_resource	2013-08-15 16:36:16.393249+00
23	catalog	0007_auto__del_field_urlimage_url	2013-08-15 16:36:16.446754+00
24	catalog	0008_auto__add_field_resource_newest_record__add_field_resource_oldest_reco	2013-08-21 20:02:11.734097+00
25	requests	0002_auto__del_field_request_date__add_field_request_creation_date	2013-08-22 13:51:47.412774+00
26	requests	0003_auto__del_field_request_date_last_modified__add_field_request_last_mod	2013-08-22 13:51:47.661017+00
27	requests	0004_auto__del_field_request_update_frequency__add_field_request_updates	2013-08-23 20:15:22.678369+00
28	suggestions	0003_auto__del_field_suggestion_data_format	2013-08-23 20:15:22.917342+00
29	suggestions	0004_auto__add_field_suggestion_data_format	2013-08-23 20:15:22.947768+00
30	suggestions	0005_auto__del_field_suggestion_update_frequency	2013-08-23 20:15:22.963286+00
31	suggestions	0006_auto__add_field_suggestion_updates	2013-08-23 20:15:23.05588+00
\.


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 31, true);


--
-- Data for Name: suggestions_suggestion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY suggestions_suggestion (id, date, date_last_modified, title, short_description, description, url, other_format, agency_name, agency_division, agency_type, city_id, county_id, last_updated, keywords, contact_name, phone_number, street_address, contact_city, zipcode, email_address, other_category, data_format_id, updates_id) FROM stdin;
1	2013-08-21 16:28:50.813781+00	2013-08-21 16:28:50.813824+00	admin sugg	brief des	long de	http:suggestion.com2	none	agency	division	state	16	2	2013-08-21	1,2	contact	phone	street	city	zip	email	no, other category	\N	\N
2	2013-08-21 18:24:25.61737+00	2013-08-21 18:24:25.617412+00	Title New	THis is required	so is this	http://caktusgroup.com	other	Police	ANother	state	4	13	2013-01-01		Police	919-90209988	151 E Rosemary St	Chapel Hill	27514	vrocha@caktusgroup.com		\N	\N
\.


--
-- Data for Name: suggestions_suggestion_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY suggestions_suggestion_categories (id, suggestion_id, category_id) FROM stdin;
1	1	2
2	1	4
3	2	3
4	2	4
\.


--
-- Name: suggestions_suggestion_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('suggestions_suggestion_categories_id_seq', 4, true);


--
-- Name: suggestions_suggestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('suggestions_suggestion_id_seq', 2, true);


--
-- Data for Name: thumbnail_kvstore; Type: TABLE DATA; Schema: public; Owner: -
--

COPY thumbnail_kvstore (key, value) FROM stdin;
sorl-thumbnail||image||23583dc715e4eb394aa09199a373918b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/6/Screen Shot 2013-08-21 at 8_1.16", "size": [1015, 784]}
sorl-thumbnail||image||3a898446b41968e960221c54772cefab	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/01/0a/010afddf82e72ef2ee4fede7803c6442.jpg", "size": [400, 250]}
sorl-thumbnail||thumbnails||3b4a38fadef7f0112ce087fa1033a40c	["59aaf0cf601f2953dedca6d42a11572e", "dca56eecd800b8f7086448f47d7359fb"]
sorl-thumbnail||image||4345d02da426ae51668ef207d15a7c17	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/5/Screen Shot 2013-08-21 at 7_1.58", "size": [824, 865]}
sorl-thumbnail||image||11bfa73ebebf6ee16d74cf411562df36	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fb/c9/fbc9f459a150b657b71e0e3f7d8aac04.jpg", "size": [400, 250]}
sorl-thumbnail||image||083e650439c8cdc3702b95d240568533	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/8/Screen Shot 2013-08-21 at 9_1.13", "size": [981, 510]}
sorl-thumbnail||image||73142c86019ef3843bcc084c206607fc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/50/dc/50dcdb4e47bd993230dec3e8cde6ec64.jpg", "size": [400, 250]}
sorl-thumbnail||image||17862384785b2925dbe36a59e8d89ebd	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/74/b4/74b4735c6855f6a4f7ee21c0b701818a.jpg", "size": [869, 400]}
sorl-thumbnail||image||9a57006f34c688131b143d61645a83b8	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/7/Screen Shot 2013-08-21 at 8_1.35", "size": [998, 843]}
sorl-thumbnail||image||4655f3fde78f4e79fbdb8b06b8bf9e27	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/da/16/da164bed4f211f5bac4aee79dec56138.jpg", "size": [400, 250]}
sorl-thumbnail||image||3b4a38fadef7f0112ce087fa1033a40c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/8/Screen Shot 2013-08-21 at 9_1_1.13", "size": [704, 699]}
sorl-thumbnail||image||dca56eecd800b8f7086448f47d7359fb	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/68/6e/686e763b908810322b1c4499f68a0fdd.jpg", "size": [400, 250]}
sorl-thumbnail||image||1c7d636e20348e12c36ec452f866fd22	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/4/Screen Shot 2013-08-21 at 7_1.39", "size": [1572, 518]}
sorl-thumbnail||image||0c67e0e527a8f0676ab6ac5b283c84d7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/bb/c6/bbc62b07fa2c1f72335517e4736dc69c.jpg", "size": [400, 250]}
sorl-thumbnail||thumbnails||9a57006f34c688131b143d61645a83b8	["17862384785b2925dbe36a59e8d89ebd", "4655f3fde78f4e79fbdb8b06b8bf9e27"]
sorl-thumbnail||image||4502e1181fb9d0ea24f88aea08023573	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c6/d8/c6d89ef719bb56a1f9667a5dab12b619.jpg", "size": [869, 400]}
sorl-thumbnail||thumbnails||1c7d636e20348e12c36ec452f866fd22	["4502e1181fb9d0ea24f88aea08023573", "0c67e0e527a8f0676ab6ac5b283c84d7"]
sorl-thumbnail||image||3f6c8bb9dbbedd6c2d2f559ee99fb5e9	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5f/0e/5f0e6d9d8f8c96ba3c9b9f635ca3b4e0.jpg", "size": [869, 400]}
sorl-thumbnail||thumbnails||23583dc715e4eb394aa09199a373918b	["3a898446b41968e960221c54772cefab", "3f6c8bb9dbbedd6c2d2f559ee99fb5e9"]
sorl-thumbnail||image||fc28017bcf214245ca6906c6d5712bf0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1d/c0/1dc09473ab7f92498e7952f23660444c.jpg", "size": [869, 400]}
sorl-thumbnail||thumbnails||4345d02da426ae51668ef207d15a7c17	["11bfa73ebebf6ee16d74cf411562df36", "fc28017bcf214245ca6906c6d5712bf0"]
sorl-thumbnail||image||a404a844d4ad2fea90aa88a268ed9a66	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/db/ea/dbead6cad1ef4672001dbe299df3360e.jpg", "size": [869, 400]}
sorl-thumbnail||thumbnails||083e650439c8cdc3702b95d240568533	["a404a844d4ad2fea90aa88a268ed9a66", "73142c86019ef3843bcc084c206607fc"]
sorl-thumbnail||image||59aaf0cf601f2953dedca6d42a11572e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e4/65/e465eea0ddbc307846a8e1699c28a012.jpg", "size": [869, 400]}
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: catalog_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_category
    ADD CONSTRAINT catalog_category_pkey PRIMARY KEY (id);


--
-- Name: catalog_city_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_city
    ADD CONSTRAINT catalog_city_pkey PRIMARY KEY (id);


--
-- Name: catalog_coordsystem_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_coordsystem
    ADD CONSTRAINT catalog_coordsystem_pkey PRIMARY KEY (id);


--
-- Name: catalog_county_cities_county_id_3199dc690a36b346_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_county_cities
    ADD CONSTRAINT catalog_county_cities_county_id_3199dc690a36b346_uniq UNIQUE (county_id, city_id);


--
-- Name: catalog_county_cities_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_county_cities
    ADD CONSTRAINT catalog_county_cities_pkey PRIMARY KEY (id);


--
-- Name: catalog_county_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_county
    ADD CONSTRAINT catalog_county_pkey PRIMARY KEY (id);


--
-- Name: catalog_datatype_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_datatype
    ADD CONSTRAINT catalog_datatype_pkey PRIMARY KEY (id);


--
-- Name: catalog_department_division_department_id_39f9cbe9db1d4714_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_department_divisions
    ADD CONSTRAINT catalog_department_division_department_id_39f9cbe9db1d4714_uniq UNIQUE (department_id, division_id);


--
-- Name: catalog_department_divisions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_department_divisions
    ADD CONSTRAINT catalog_department_divisions_pkey PRIMARY KEY (id);


--
-- Name: catalog_department_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_department
    ADD CONSTRAINT catalog_department_pkey PRIMARY KEY (id);


--
-- Name: catalog_division_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_division
    ADD CONSTRAINT catalog_division_pkey PRIMARY KEY (id);


--
-- Name: catalog_resource_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_categories
    ADD CONSTRAINT catalog_resource_categories_pkey PRIMARY KEY (id);


--
-- Name: catalog_resource_categories_resource_id_53ac8f8b3cbe75d6_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_categories
    ADD CONSTRAINT catalog_resource_categories_resource_id_53ac8f8b3cbe75d6_uniq UNIQUE (resource_id, category_id);


--
-- Name: catalog_resource_cities_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_cities
    ADD CONSTRAINT catalog_resource_cities_pkey PRIMARY KEY (id);


--
-- Name: catalog_resource_cities_resource_id_2451af359ee5738a_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_cities
    ADD CONSTRAINT catalog_resource_cities_resource_id_2451af359ee5738a_uniq UNIQUE (resource_id, city_id);


--
-- Name: catalog_resource_coord_sys_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_coord_sys
    ADD CONSTRAINT catalog_resource_coord_sys_pkey PRIMARY KEY (id);


--
-- Name: catalog_resource_coord_sys_resource_id_30c10da65df1830d_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_coord_sys
    ADD CONSTRAINT catalog_resource_coord_sys_resource_id_30c10da65df1830d_uniq UNIQUE (resource_id, coordsystem_id);


--
-- Name: catalog_resource_counties_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_counties
    ADD CONSTRAINT catalog_resource_counties_pkey PRIMARY KEY (id);


--
-- Name: catalog_resource_counties_resource_id_25bc529b8b7e664e_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_counties
    ADD CONSTRAINT catalog_resource_counties_resource_id_25bc529b8b7e664e_uniq UNIQUE (resource_id, county_id);


--
-- Name: catalog_resource_data_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_data_types
    ADD CONSTRAINT catalog_resource_data_types_pkey PRIMARY KEY (id);


--
-- Name: catalog_resource_data_types_resource_id_36049a106385e980_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_data_types
    ADD CONSTRAINT catalog_resource_data_types_resource_id_36049a106385e980_uniq UNIQUE (resource_id, datatype_id);


--
-- Name: catalog_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource
    ADD CONSTRAINT catalog_resource_pkey PRIMARY KEY (id);


--
-- Name: catalog_updatefrequency_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_updatefrequency
    ADD CONSTRAINT catalog_updatefrequency_pkey PRIMARY KEY (id);


--
-- Name: catalog_url_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_url
    ADD CONSTRAINT catalog_url_pkey PRIMARY KEY (id);


--
-- Name: catalog_urlimage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_urlimage
    ADD CONSTRAINT catalog_urlimage_pkey PRIMARY KEY (id);


--
-- Name: catalog_urltype_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_urltype
    ADD CONSTRAINT catalog_urltype_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta_task_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_task_id_key UNIQUE (task_id);


--
-- Name: celery_tasksetmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_tasksetmeta_taskset_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_taskset_id_key UNIQUE (taskset_id);


--
-- Name: comments_commentwithrating_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY comments_commentwithrating
    ADD CONSTRAINT comments_commentwithrating_pkey PRIMARY KEY (comment_ptr_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_user_id_comment_id_flag_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_comment_id_flag_key UNIQUE (user_id, comment_id, flag);


--
-- Name: django_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: djangoratings_ignoredobject_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djangoratings_ignoredobject
    ADD CONSTRAINT djangoratings_ignoredobject_pkey PRIMARY KEY (id);


--
-- Name: djangoratings_score_content_type_id_34080b82db03891b_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djangoratings_score
    ADD CONSTRAINT djangoratings_score_content_type_id_34080b82db03891b_uniq UNIQUE (content_type_id, object_id, key);


--
-- Name: djangoratings_score_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djangoratings_score
    ADD CONSTRAINT djangoratings_score_pkey PRIMARY KEY (id);


--
-- Name: djangoratings_similaruser_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djangoratings_similaruser
    ADD CONSTRAINT djangoratings_similaruser_pkey PRIMARY KEY (id);


--
-- Name: djangoratings_vote_content_type_id_69d497af3324806f_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djangoratings_vote
    ADD CONSTRAINT djangoratings_vote_content_type_id_69d497af3324806f_uniq UNIQUE (content_type_id, object_id, cookie, user_id, key, ip_address);


--
-- Name: djangoratings_vote_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djangoratings_vote
    ADD CONSTRAINT djangoratings_vote_pkey PRIMARY KEY (id);


--
-- Name: djcelery_crontabschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_crontabschedule
    ADD CONSTRAINT djcelery_crontabschedule_pkey PRIMARY KEY (id);


--
-- Name: djcelery_intervalschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_intervalschedule
    ADD CONSTRAINT djcelery_intervalschedule_pkey PRIMARY KEY (id);


--
-- Name: djcelery_periodictask_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_name_key UNIQUE (name);


--
-- Name: djcelery_periodictask_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_pkey PRIMARY KEY (id);


--
-- Name: djcelery_periodictasks_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_periodictasks
    ADD CONSTRAINT djcelery_periodictasks_pkey PRIMARY KEY (ident);


--
-- Name: djcelery_taskstate_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_pkey PRIMARY KEY (id);


--
-- Name: djcelery_taskstate_task_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_task_id_key UNIQUE (task_id);


--
-- Name: djcelery_workerstate_hostname_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_hostname_key UNIQUE (hostname);


--
-- Name: djcelery_workerstate_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_pkey PRIMARY KEY (id);


--
-- Name: requests_request_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY requests_request_categories
    ADD CONSTRAINT requests_request_categories_pkey PRIMARY KEY (id);


--
-- Name: requests_request_categories_request_id_60d814e2f6a1898a_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY requests_request_categories
    ADD CONSTRAINT requests_request_categories_request_id_60d814e2f6a1898a_uniq UNIQUE (request_id, category_id);


--
-- Name: requests_request_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY requests_request
    ADD CONSTRAINT requests_request_pkey PRIMARY KEY (id);


--
-- Name: requests_request_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY requests_request_resources
    ADD CONSTRAINT requests_request_resources_pkey PRIMARY KEY (id);


--
-- Name: requests_request_resources_request_id_75c92e7ee85f7aba_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY requests_request_resources
    ADD CONSTRAINT requests_request_resources_request_id_75c92e7ee85f7aba_uniq UNIQUE (request_id, resource_id);


--
-- Name: scribbler_scribble_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY scribbler_scribble
    ADD CONSTRAINT scribbler_scribble_pkey PRIMARY KEY (id);


--
-- Name: scribbler_scribble_url_6e7518efcb758418_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY scribbler_scribble
    ADD CONSTRAINT scribbler_scribble_url_6e7518efcb758418_uniq UNIQUE (url, slug);


--
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- Name: suggestions_suggestion_cate_suggestion_id_45b080e8781aa4b8_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY suggestions_suggestion_categories
    ADD CONSTRAINT suggestions_suggestion_cate_suggestion_id_45b080e8781aa4b8_uniq UNIQUE (suggestion_id, category_id);


--
-- Name: suggestions_suggestion_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY suggestions_suggestion_categories
    ADD CONSTRAINT suggestions_suggestion_categories_pkey PRIMARY KEY (id);


--
-- Name: suggestions_suggestion_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY suggestions_suggestion
    ADD CONSTRAINT suggestions_suggestion_pkey PRIMARY KEY (id);


--
-- Name: thumbnail_kvstore_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY thumbnail_kvstore
    ADD CONSTRAINT thumbnail_kvstore_pkey PRIMARY KEY (key);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: catalog_county_cities_city_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_county_cities_city_id ON catalog_county_cities USING btree (city_id);


--
-- Name: catalog_county_cities_county_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_county_cities_county_id ON catalog_county_cities USING btree (county_id);


--
-- Name: catalog_department_divisions_department_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_department_divisions_department_id ON catalog_department_divisions USING btree (department_id);


--
-- Name: catalog_department_divisions_division_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_department_divisions_division_id ON catalog_department_divisions USING btree (division_id);


--
-- Name: catalog_resource_categories_category_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_categories_category_id ON catalog_resource_categories USING btree (category_id);


--
-- Name: catalog_resource_categories_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_categories_resource_id ON catalog_resource_categories USING btree (resource_id);


--
-- Name: catalog_resource_cities_city_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_cities_city_id ON catalog_resource_cities USING btree (city_id);


--
-- Name: catalog_resource_cities_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_cities_resource_id ON catalog_resource_cities USING btree (resource_id);


--
-- Name: catalog_resource_coord_sys_coordsystem_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_coord_sys_coordsystem_id ON catalog_resource_coord_sys USING btree (coordsystem_id);


--
-- Name: catalog_resource_coord_sys_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_coord_sys_resource_id ON catalog_resource_coord_sys USING btree (resource_id);


--
-- Name: catalog_resource_counties_county_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_counties_county_id ON catalog_resource_counties USING btree (county_id);


--
-- Name: catalog_resource_counties_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_counties_resource_id ON catalog_resource_counties USING btree (resource_id);


--
-- Name: catalog_resource_created_by_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_created_by_id ON catalog_resource USING btree (created_by_id);


--
-- Name: catalog_resource_data_types_datatype_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_data_types_datatype_id ON catalog_resource_data_types USING btree (datatype_id);


--
-- Name: catalog_resource_data_types_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_data_types_resource_id ON catalog_resource_data_types USING btree (resource_id);


--
-- Name: catalog_resource_department_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_department_id ON catalog_resource USING btree (department_id);


--
-- Name: catalog_resource_division_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_division_id ON catalog_resource USING btree (division_id);


--
-- Name: catalog_resource_last_updated_by_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_last_updated_by_id ON catalog_resource USING btree (last_updated_by_id);


--
-- Name: catalog_resource_slug; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_slug ON catalog_resource USING btree (slug);


--
-- Name: catalog_resource_slug_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_slug_like ON catalog_resource USING btree (slug varchar_pattern_ops);


--
-- Name: catalog_resource_updates_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_updates_id ON catalog_resource USING btree (updates_id);


--
-- Name: catalog_url_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_url_resource_id ON catalog_url USING btree (resource_id);


--
-- Name: catalog_url_url_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_url_url_type_id ON catalog_url USING btree (url_type_id);


--
-- Name: catalog_urlimage_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_urlimage_resource_id ON catalog_urlimage USING btree (resource_id);


--
-- Name: celery_taskmeta_hidden; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX celery_taskmeta_hidden ON celery_taskmeta USING btree (hidden);


--
-- Name: celery_taskmeta_task_id_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX celery_taskmeta_task_id_like ON celery_taskmeta USING btree (task_id varchar_pattern_ops);


--
-- Name: celery_tasksetmeta_hidden; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX celery_tasksetmeta_hidden ON celery_tasksetmeta USING btree (hidden);


--
-- Name: celery_tasksetmeta_taskset_id_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX celery_tasksetmeta_taskset_id_like ON celery_tasksetmeta USING btree (taskset_id varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_comment_flags_comment_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comment_flags_comment_id ON django_comment_flags USING btree (comment_id);


--
-- Name: django_comment_flags_flag; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comment_flags_flag ON django_comment_flags USING btree (flag);


--
-- Name: django_comment_flags_flag_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comment_flags_flag_like ON django_comment_flags USING btree (flag varchar_pattern_ops);


--
-- Name: django_comment_flags_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comment_flags_user_id ON django_comment_flags USING btree (user_id);


--
-- Name: django_comments_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comments_content_type_id ON django_comments USING btree (content_type_id);


--
-- Name: django_comments_site_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comments_site_id ON django_comments USING btree (site_id);


--
-- Name: django_comments_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comments_user_id ON django_comments USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: djangoratings_ignoredobject_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_ignoredobject_content_type_id ON djangoratings_ignoredobject USING btree (content_type_id);


--
-- Name: djangoratings_ignoredobject_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_ignoredobject_user_id ON djangoratings_ignoredobject USING btree (user_id);


--
-- Name: djangoratings_score_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_score_content_type_id ON djangoratings_score USING btree (content_type_id);


--
-- Name: djangoratings_similaruser_from_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_similaruser_from_user_id ON djangoratings_similaruser USING btree (from_user_id);


--
-- Name: djangoratings_similaruser_to_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_similaruser_to_user_id ON djangoratings_similaruser USING btree (to_user_id);


--
-- Name: djangoratings_vote_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_vote_content_type_id ON djangoratings_vote USING btree (content_type_id);


--
-- Name: djangoratings_vote_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_vote_user_id ON djangoratings_vote USING btree (user_id);


--
-- Name: djcelery_periodictask_crontab_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_periodictask_crontab_id ON djcelery_periodictask USING btree (crontab_id);


--
-- Name: djcelery_periodictask_interval_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_periodictask_interval_id ON djcelery_periodictask USING btree (interval_id);


--
-- Name: djcelery_periodictask_name_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_periodictask_name_like ON djcelery_periodictask USING btree (name varchar_pattern_ops);


--
-- Name: djcelery_taskstate_hidden; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_hidden ON djcelery_taskstate USING btree (hidden);


--
-- Name: djcelery_taskstate_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_name ON djcelery_taskstate USING btree (name);


--
-- Name: djcelery_taskstate_name_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_name_like ON djcelery_taskstate USING btree (name varchar_pattern_ops);


--
-- Name: djcelery_taskstate_state; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_state ON djcelery_taskstate USING btree (state);


--
-- Name: djcelery_taskstate_state_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_state_like ON djcelery_taskstate USING btree (state varchar_pattern_ops);


--
-- Name: djcelery_taskstate_task_id_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_task_id_like ON djcelery_taskstate USING btree (task_id varchar_pattern_ops);


--
-- Name: djcelery_taskstate_tstamp; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_tstamp ON djcelery_taskstate USING btree (tstamp);


--
-- Name: djcelery_taskstate_worker_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_worker_id ON djcelery_taskstate USING btree (worker_id);


--
-- Name: djcelery_workerstate_hostname_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_workerstate_hostname_like ON djcelery_workerstate USING btree (hostname varchar_pattern_ops);


--
-- Name: djcelery_workerstate_last_heartbeat; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_workerstate_last_heartbeat ON djcelery_workerstate USING btree (last_heartbeat);


--
-- Name: requests_request_categories_category_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_categories_category_id ON requests_request_categories USING btree (category_id);


--
-- Name: requests_request_categories_request_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_categories_request_id ON requests_request_categories USING btree (request_id);


--
-- Name: requests_request_city_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_city_id ON requests_request USING btree (city_id);


--
-- Name: requests_request_county_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_county_id ON requests_request USING btree (county_id);


--
-- Name: requests_request_resources_request_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_resources_request_id ON requests_request_resources USING btree (request_id);


--
-- Name: requests_request_resources_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_resources_resource_id ON requests_request_resources USING btree (resource_id);


--
-- Name: requests_request_suggested_by_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_suggested_by_id ON requests_request USING btree (suggested_by_id);


--
-- Name: requests_request_updates_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_updates_id ON requests_request USING btree (updates_id);


--
-- Name: scribbler_scribble_slug; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX scribbler_scribble_slug ON scribbler_scribble USING btree (slug);


--
-- Name: scribbler_scribble_slug_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX scribbler_scribble_slug_like ON scribbler_scribble USING btree (slug varchar_pattern_ops);


--
-- Name: suggestions_suggestion_categories_category_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX suggestions_suggestion_categories_category_id ON suggestions_suggestion_categories USING btree (category_id);


--
-- Name: suggestions_suggestion_categories_suggestion_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX suggestions_suggestion_categories_suggestion_id ON suggestions_suggestion_categories USING btree (suggestion_id);


--
-- Name: suggestions_suggestion_city_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX suggestions_suggestion_city_id ON suggestions_suggestion USING btree (city_id);


--
-- Name: suggestions_suggestion_county_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX suggestions_suggestion_county_id ON suggestions_suggestion USING btree (county_id);


--
-- Name: suggestions_suggestion_data_format_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX suggestions_suggestion_data_format_id ON suggestions_suggestion USING btree (data_format_id);


--
-- Name: suggestions_suggestion_updates_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX suggestions_suggestion_updates_id ON suggestions_suggestion USING btree (updates_id);


--
-- Name: thumbnail_kvstore_key_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX thumbnail_kvstore_key_like ON thumbnail_kvstore USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_52997a64; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request_categories
    ADD CONSTRAINT category_id_refs_id_52997a64 FOREIGN KEY (category_id) REFERENCES catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_79b2276b; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_categories
    ADD CONSTRAINT category_id_refs_id_79b2276b FOREIGN KEY (category_id) REFERENCES catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_e1e66a7f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion_categories
    ADD CONSTRAINT category_id_refs_id_e1e66a7f FOREIGN KEY (category_id) REFERENCES catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: city_id_refs_id_2d99f755; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request
    ADD CONSTRAINT city_id_refs_id_2d99f755 FOREIGN KEY (city_id) REFERENCES catalog_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: city_id_refs_id_63cbde27; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_county_cities
    ADD CONSTRAINT city_id_refs_id_63cbde27 FOREIGN KEY (city_id) REFERENCES catalog_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: city_id_refs_id_c7bc2909; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_cities
    ADD CONSTRAINT city_id_refs_id_c7bc2909 FOREIGN KEY (city_id) REFERENCES catalog_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: city_id_refs_id_fb88dd47; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion
    ADD CONSTRAINT city_id_refs_id_fb88dd47 FOREIGN KEY (city_id) REFERENCES catalog_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comments_commentwithrating_comment_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY comments_commentwithrating
    ADD CONSTRAINT comments_commentwithrating_comment_ptr_id_fkey FOREIGN KEY (comment_ptr_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_bc7f6186; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_score
    ADD CONSTRAINT content_type_id_refs_id_bc7f6186 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_c2843220; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_vote
    ADD CONSTRAINT content_type_id_refs_id_c2843220 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_f28bca0f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_ignoredobject
    ADD CONSTRAINT content_type_id_refs_id_f28bca0f FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coordsystem_id_refs_id_45a16939; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_coord_sys
    ADD CONSTRAINT coordsystem_id_refs_id_45a16939 FOREIGN KEY (coordsystem_id) REFERENCES catalog_coordsystem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: county_id_refs_id_1729b5f2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_county_cities
    ADD CONSTRAINT county_id_refs_id_1729b5f2 FOREIGN KEY (county_id) REFERENCES catalog_county(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: county_id_refs_id_5d35ae45; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request
    ADD CONSTRAINT county_id_refs_id_5d35ae45 FOREIGN KEY (county_id) REFERENCES catalog_county(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: county_id_refs_id_a2998ca6; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion
    ADD CONSTRAINT county_id_refs_id_a2998ca6 FOREIGN KEY (county_id) REFERENCES catalog_county(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: county_id_refs_id_fe34ca12; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_counties
    ADD CONSTRAINT county_id_refs_id_fe34ca12 FOREIGN KEY (county_id) REFERENCES catalog_county(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: created_by_id_refs_id_e6ae9264; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource
    ADD CONSTRAINT created_by_id_refs_id_e6ae9264 FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crontab_id_refs_id_286da0d1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT crontab_id_refs_id_286da0d1 FOREIGN KEY (crontab_id) REFERENCES djcelery_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: data_format_id_refs_id_11a65d94; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion
    ADD CONSTRAINT data_format_id_refs_id_11a65d94 FOREIGN KEY (data_format_id) REFERENCES catalog_urltype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: datatype_id_refs_id_7e7300ee; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_data_types
    ADD CONSTRAINT datatype_id_refs_id_7e7300ee FOREIGN KEY (datatype_id) REFERENCES catalog_datatype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: department_id_refs_id_1d423ba1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_department_divisions
    ADD CONSTRAINT department_id_refs_id_1d423ba1 FOREIGN KEY (department_id) REFERENCES catalog_department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: department_id_refs_id_bf0b39ad; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource
    ADD CONSTRAINT department_id_refs_id_bf0b39ad FOREIGN KEY (department_id) REFERENCES catalog_department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: division_id_refs_id_e01d1338; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource
    ADD CONSTRAINT division_id_refs_id_e01d1338 FOREIGN KEY (division_id) REFERENCES catalog_division(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: division_id_refs_id_f967fce3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_department_divisions
    ADD CONSTRAINT division_id_refs_id_f967fce3 FOREIGN KEY (division_id) REFERENCES catalog_division(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: from_user_id_refs_id_ff79a0a1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_similaruser
    ADD CONSTRAINT from_user_id_refs_id_ff79a0a1 FOREIGN KEY (from_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: interval_id_refs_id_1829f358; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT interval_id_refs_id_1829f358 FOREIGN KEY (interval_id) REFERENCES djcelery_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: last_updated_by_id_refs_id_e6ae9264; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource
    ADD CONSTRAINT last_updated_by_id_refs_id_e6ae9264 FOREIGN KEY (last_updated_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: request_id_refs_id_6e0b99c0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request_categories
    ADD CONSTRAINT request_id_refs_id_6e0b99c0 FOREIGN KEY (request_id) REFERENCES requests_request(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: request_id_refs_id_e884bfc6; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request_resources
    ADD CONSTRAINT request_id_refs_id_e884bfc6 FOREIGN KEY (request_id) REFERENCES requests_request(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_002a62ac; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_categories
    ADD CONSTRAINT resource_id_refs_id_002a62ac FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_193497b7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_cities
    ADD CONSTRAINT resource_id_refs_id_193497b7 FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_29105c18; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_urlimage
    ADD CONSTRAINT resource_id_refs_id_29105c18 FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_6d0fb48c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_data_types
    ADD CONSTRAINT resource_id_refs_id_6d0fb48c FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_dede1b38; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_counties
    ADD CONSTRAINT resource_id_refs_id_dede1b38 FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_ed4c6da7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_url
    ADD CONSTRAINT resource_id_refs_id_ed4c6da7 FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_f139139d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request_resources
    ADD CONSTRAINT resource_id_refs_id_f139139d FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_fa56d5f5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_coord_sys
    ADD CONSTRAINT resource_id_refs_id_fa56d5f5 FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: suggested_by_id_refs_id_08212898; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request
    ADD CONSTRAINT suggested_by_id_refs_id_08212898 FOREIGN KEY (suggested_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: suggestion_id_refs_id_5d7c4277; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion_categories
    ADD CONSTRAINT suggestion_id_refs_id_5d7c4277 FOREIGN KEY (suggestion_id) REFERENCES suggestions_suggestion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: to_user_id_refs_id_ff79a0a1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_similaruser
    ADD CONSTRAINT to_user_id_refs_id_ff79a0a1 FOREIGN KEY (to_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: updates_id_refs_id_3a4e622b; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request
    ADD CONSTRAINT updates_id_refs_id_3a4e622b FOREIGN KEY (updates_id) REFERENCES catalog_updatefrequency(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: updates_id_refs_id_3e5079e5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion
    ADD CONSTRAINT updates_id_refs_id_3e5079e5 FOREIGN KEY (updates_id) REFERENCES catalog_updatefrequency(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: updates_id_refs_id_5c42f832; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource
    ADD CONSTRAINT updates_id_refs_id_5c42f832 FOREIGN KEY (updates_id) REFERENCES catalog_updatefrequency(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: url_type_id_refs_id_9e1e46c6; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_url
    ADD CONSTRAINT url_type_id_refs_id_9e1e46c6 FOREIGN KEY (url_type_id) REFERENCES catalog_urltype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4ce71293; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_vote
    ADD CONSTRAINT user_id_refs_id_4ce71293 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4cea1bfb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_ignoredobject
    ADD CONSTRAINT user_id_refs_id_4cea1bfb FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: worker_id_refs_id_6fd8ce95; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT worker_id_refs_id_6fd8ce95 FOREIGN KEY (worker_id) REFERENCES djcelery_workerstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

