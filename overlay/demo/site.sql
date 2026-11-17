--
-- PostgreSQL database dump
--


-- Dumped from database version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: enum__pages_v_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_archive_populate_by AS ENUM (
    'collection',
    'selection'
);


--
-- Name: enum__pages_v_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_archive_relation_to AS ENUM (
    'posts'
);


--
-- Name: enum__pages_v_blocks_content_columns_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum__pages_v_blocks_content_columns_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_blocks_content_columns_size; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_size AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


--
-- Name: enum__pages_v_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_cta_links_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum__pages_v_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_cta_links_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_blocks_features_columns; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_features_columns AS ENUM (
    '2',
    '3',
    '4'
);


--
-- Name: enum__pages_v_blocks_gallery_columns; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_gallery_columns AS ENUM (
    '2',
    '3',
    '4'
);


--
-- Name: enum__pages_v_blocks_pricing_plans_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_pricing_plans_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_blocks_split_image_position; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_blocks_split_image_position AS ENUM (
    'right',
    'left'
);


--
-- Name: enum__pages_v_version_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum__pages_v_version_hero_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_version_hero_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_hero_type AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


--
-- Name: enum__pages_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum__posts_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__posts_v_version_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum__properties_v_version_ber; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__properties_v_version_ber AS ENUM (
    'A1',
    'A2',
    'A3',
    'B1',
    'B2',
    'B3',
    'C1',
    'C2',
    'C3',
    'D1',
    'D2',
    'E1',
    'E2',
    'F',
    'G',
    'Exempt'
);


--
-- Name: enum__properties_v_version_property_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__properties_v_version_property_type AS ENUM (
    'house',
    'apartment',
    'newBuild'
);


--
-- Name: enum__properties_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__properties_v_version_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_activity_log_action; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_activity_log_action AS ENUM (
    'created',
    'updated',
    'deleted',
    'published',
    'logged in',
    'security'
);


--
-- Name: enum_comments_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_comments_status AS ENUM (
    'pending',
    'approved',
    'spam'
);


--
-- Name: enum_email_log_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_email_log_status AS ENUM (
    'sent',
    'failed',
    'logged'
);


--
-- Name: enum_footer_nav_items_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_footer_nav_items_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_footer_social_platform; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_footer_social_platform AS ENUM (
    'Facebook',
    'Instagram',
    'X',
    'LinkedIn',
    'YouTube',
    'TikTok',
    'WhatsApp'
);


--
-- Name: enum_forms_confirmation_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_forms_confirmation_type AS ENUM (
    'message',
    'redirect'
);


--
-- Name: enum_header_nav_items_children_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_header_nav_items_children_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_header_nav_items_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_header_nav_items_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_archive_populate_by AS ENUM (
    'collection',
    'selection'
);


--
-- Name: enum_pages_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_archive_relation_to AS ENUM (
    'posts'
);


--
-- Name: enum_pages_blocks_content_columns_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_content_columns_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum_pages_blocks_content_columns_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_content_columns_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_blocks_content_columns_size; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_content_columns_size AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


--
-- Name: enum_pages_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_cta_links_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum_pages_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_cta_links_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_blocks_features_columns; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_features_columns AS ENUM (
    '2',
    '3',
    '4'
);


--
-- Name: enum_pages_blocks_gallery_columns; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_gallery_columns AS ENUM (
    '2',
    '3',
    '4'
);


--
-- Name: enum_pages_blocks_pricing_plans_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_pricing_plans_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_blocks_split_image_position; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_blocks_split_image_position AS ENUM (
    'right',
    'left'
);


--
-- Name: enum_pages_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_hero_links_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum_pages_hero_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_hero_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_hero_type AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


--
-- Name: enum_pages_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_payload_folders_folder_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_payload_folders_folder_type AS ENUM (
    'media'
);


--
-- Name: enum_payload_jobs_log_state; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_payload_jobs_log_state AS ENUM (
    'failed',
    'succeeded'
);


--
-- Name: enum_payload_jobs_log_task_slug; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_payload_jobs_log_task_slug AS ENUM (
    'inline',
    'schedulePublish'
);


--
-- Name: enum_payload_jobs_task_slug; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_payload_jobs_task_slug AS ENUM (
    'inline',
    'schedulePublish'
);


--
-- Name: enum_posts_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_posts_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_private_settings_smtp_security; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_private_settings_smtp_security AS ENUM (
    'auto',
    'ssl',
    'starttls'
);


--
-- Name: enum_properties_ber; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_properties_ber AS ENUM (
    'A1',
    'A2',
    'A3',
    'B1',
    'B2',
    'B3',
    'C1',
    'C2',
    'C3',
    'D1',
    'D2',
    'E1',
    'E2',
    'F',
    'G',
    'Exempt'
);


--
-- Name: enum_properties_property_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_properties_property_type AS ENUM (
    'house',
    'apartment',
    'newBuild'
);


--
-- Name: enum_properties_sale_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_properties_sale_status AS ENUM (
    'forSale',
    'saleAgreed',
    'sold'
);


--
-- Name: enum_properties_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_properties_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_property_enquiries_interest; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_property_enquiries_interest AS ENUM (
    'viewing',
    'question',
    'offer'
);


--
-- Name: enum_property_enquiries_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_property_enquiries_status AS ENUM (
    'new',
    'contacted',
    'closed',
    'spam'
);


--
-- Name: enum_redirects_to_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_redirects_to_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_redirects_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_redirects_type AS ENUM (
    '301',
    '302'
);


--
-- Name: enum_site_settings_announcement_style; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_site_settings_announcement_style AS ENUM (
    'brand',
    'dark',
    'light'
);


--
-- Name: enum_site_settings_body_font; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_site_settings_body_font AS ENUM (
    'Inter',
    'Manrope',
    'DM Sans',
    'Plus Jakarta Sans',
    'Outfit',
    'Space Grotesk',
    'Playfair Display',
    'Cormorant Garamond',
    'Fraunces',
    'Lora',
    'Merriweather',
    'Archivo'
);


--
-- Name: enum_site_settings_business_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_site_settings_business_type AS ENUM (
    'Organization',
    'LocalBusiness',
    'ProfessionalService',
    'Store',
    'Restaurant',
    'RealEstateAgent',
    'HealthAndBeautyBusiness',
    'HomeAndConstructionBusiness',
    'LodgingBusiness',
    'Person'
);


--
-- Name: enum_site_settings_code_snippets_location; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_site_settings_code_snippets_location AS ENUM (
    'head',
    'bodyStart',
    'bodyEnd'
);


--
-- Name: enum_site_settings_cookie_banner; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_site_settings_cookie_banner AS ENUM (
    'auto',
    'always',
    'never'
);


--
-- Name: enum_site_settings_date_format; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_site_settings_date_format AS ENUM (
    'long',
    'numeric',
    'iso'
);


--
-- Name: enum_site_settings_heading_font; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_site_settings_heading_font AS ENUM (
    'Inter',
    'Manrope',
    'DM Sans',
    'Plus Jakarta Sans',
    'Outfit',
    'Space Grotesk',
    'Playfair Display',
    'Cormorant Garamond',
    'Fraunces',
    'Lora',
    'Merriweather',
    'Archivo'
);


--
-- Name: enum_site_settings_homepage_displays; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_site_settings_homepage_displays AS ENUM (
    'page',
    'posts'
);


--
-- Name: enum_site_settings_template; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_site_settings_template AS ENUM (
    'editorial',
    'bright',
    'dark',
    'swiss'
);


--
-- Name: enum_users_menu_style; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_users_menu_style AS ENUM (
    'spine',
    'sidebar'
);


--
-- Name: enum_users_role; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_users_role AS ENUM (
    'admin',
    'editor',
    'author'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _pages_v; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_hero_type public.enum__pages_v_version_hero_type DEFAULT 'lowImpact'::public.enum__pages_v_version_hero_type,
    version_hero_rich_text jsonb,
    version_hero_media_id integer,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying,
    version_published_at timestamp(3) with time zone,
    version_generate_slug boolean DEFAULT true,
    version_slug character varying,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__pages_v_version_status DEFAULT 'draft'::public.enum__pages_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean,
    version_meta_focus_keyword character varying,
    version_meta_og_title character varying,
    version_meta_og_description character varying,
    version_meta_canonical_u_r_l character varying,
    version_meta_noindex boolean DEFAULT false
);


--
-- Name: _pages_v_blocks_archive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_archive (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    intro_content jsonb,
    populate_by public.enum__pages_v_blocks_archive_populate_by DEFAULT 'collection'::public.enum__pages_v_blocks_archive_populate_by,
    relation_to public.enum__pages_v_blocks_archive_relation_to DEFAULT 'posts'::public.enum__pages_v_blocks_archive_relation_to,
    "limit" numeric DEFAULT 10,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_archive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_archive_id_seq OWNED BY public._pages_v_blocks_archive.id;


--
-- Name: _pages_v_blocks_content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_content_columns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_content_columns (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    size public.enum__pages_v_blocks_content_columns_size DEFAULT 'oneThird'::public.enum__pages_v_blocks_content_columns_size,
    rich_text jsonb,
    enable_link boolean,
    link_type public.enum__pages_v_blocks_content_columns_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_content_columns_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_content_columns_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_content_columns_link_appearance,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_content_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_content_columns_id_seq OWNED BY public._pages_v_blocks_content_columns.id;


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_content_id_seq OWNED BY public._pages_v_blocks_content.id;


--
-- Name: _pages_v_blocks_cta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_cta (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    rich_text jsonb,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_cta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_cta_id_seq OWNED BY public._pages_v_blocks_cta.id;


--
-- Name: _pages_v_blocks_cta_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_cta_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_blocks_cta_links_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_cta_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_cta_links_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_cta_links_link_appearance,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_cta_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_cta_links_id_seq OWNED BY public._pages_v_blocks_cta_links.id;


--
-- Name: _pages_v_blocks_design; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_design (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    html character varying,
    css character varying,
    full_width boolean DEFAULT true,
    _uuid character varying,
    block_name character varying,
    synced_id integer
);


--
-- Name: _pages_v_blocks_design_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_design_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_design_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_design_id_seq OWNED BY public._pages_v_blocks_design.id;


--
-- Name: _pages_v_blocks_embed; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_embed (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    url character varying,
    caption character varying,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_embed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_embed_id_seq OWNED BY public._pages_v_blocks_embed.id;


--
-- Name: _pages_v_blocks_faq; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_faq (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    heading character varying DEFAULT 'Frequently asked questions'::character varying,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_faq_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_faq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_faq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_faq_id_seq OWNED BY public._pages_v_blocks_faq.id;


--
-- Name: _pages_v_blocks_faq_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_faq_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    question character varying,
    answer character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_faq_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_faq_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_faq_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_faq_items_id_seq OWNED BY public._pages_v_blocks_faq_items.id;


--
-- Name: _pages_v_blocks_features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_features (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    eyebrow character varying,
    heading character varying,
    intro character varying,
    columns public.enum__pages_v_blocks_features_columns DEFAULT '3'::public.enum__pages_v_blocks_features_columns,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_features_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_features_id_seq OWNED BY public._pages_v_blocks_features.id;


--
-- Name: _pages_v_blocks_features_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_features_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    icon character varying,
    title character varying,
    description character varying,
    _uuid character varying,
    image_id integer
);


--
-- Name: _pages_v_blocks_features_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_features_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_features_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_features_items_id_seq OWNED BY public._pages_v_blocks_features_items.id;


--
-- Name: _pages_v_blocks_form_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_form_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    form_id integer,
    enable_intro boolean,
    intro_content jsonb,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_form_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_form_block_id_seq OWNED BY public._pages_v_blocks_form_block.id;


--
-- Name: _pages_v_blocks_gallery; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_gallery (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    heading character varying,
    columns public.enum__pages_v_blocks_gallery_columns DEFAULT '3'::public.enum__pages_v_blocks_gallery_columns,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_gallery_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_gallery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_gallery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_gallery_id_seq OWNED BY public._pages_v_blocks_gallery.id;


--
-- Name: _pages_v_blocks_loop_grid; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_loop_grid (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    heading character varying,
    collection character varying DEFAULT 'posts'::character varying,
    "limit" numeric DEFAULT 6,
    show_filter boolean DEFAULT false,
    load_more boolean DEFAULT true,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_loop_grid_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_loop_grid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_loop_grid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_loop_grid_id_seq OWNED BY public._pages_v_blocks_loop_grid.id;


--
-- Name: _pages_v_blocks_media_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    media_id integer,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_media_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_media_block_id_seq OWNED BY public._pages_v_blocks_media_block.id;


--
-- Name: _pages_v_blocks_pricing; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_pricing (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    eyebrow character varying,
    heading character varying,
    intro character varying,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_pricing_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_pricing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_pricing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_pricing_id_seq OWNED BY public._pages_v_blocks_pricing.id;


--
-- Name: _pages_v_blocks_pricing_plans; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_pricing_plans (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    name character varying,
    price character varying,
    period character varying,
    description character varying,
    highlighted boolean,
    link_type public.enum__pages_v_blocks_pricing_plans_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_pricing_plans_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_pricing_plans_features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_pricing_plans_features (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    feature character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_pricing_plans_features_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_pricing_plans_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_pricing_plans_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_pricing_plans_features_id_seq OWNED BY public._pages_v_blocks_pricing_plans_features.id;


--
-- Name: _pages_v_blocks_pricing_plans_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_pricing_plans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_pricing_plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_pricing_plans_id_seq OWNED BY public._pages_v_blocks_pricing_plans.id;


--
-- Name: _pages_v_blocks_split; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_split (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    media_id integer,
    image_position public.enum__pages_v_blocks_split_image_position DEFAULT 'right'::public.enum__pages_v_blocks_split_image_position,
    eyebrow character varying,
    heading character varying,
    text character varying,
    button_label character varying,
    button_url character varying,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_split_bullets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_split_bullets (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    text character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_split_bullets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_split_bullets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_split_bullets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_split_bullets_id_seq OWNED BY public._pages_v_blocks_split_bullets.id;


--
-- Name: _pages_v_blocks_split_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_split_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_split_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_split_id_seq OWNED BY public._pages_v_blocks_split.id;


--
-- Name: _pages_v_blocks_stats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_stats (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_stats_id_seq OWNED BY public._pages_v_blocks_stats.id;


--
-- Name: _pages_v_blocks_stats_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_stats_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    value character varying,
    label character varying,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_stats_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_stats_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_stats_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_stats_items_id_seq OWNED BY public._pages_v_blocks_stats_items.id;


--
-- Name: _pages_v_blocks_testimonials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_testimonials (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    eyebrow character varying,
    heading character varying,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_testimonials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_testimonials_id_seq OWNED BY public._pages_v_blocks_testimonials.id;


--
-- Name: _pages_v_blocks_testimonials_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_testimonials_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    quote character varying,
    name character varying,
    role character varying,
    photo_id integer,
    rating numeric,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_testimonials_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_testimonials_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_testimonials_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_testimonials_items_id_seq OWNED BY public._pages_v_blocks_testimonials_items.id;


--
-- Name: _pages_v_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_id_seq OWNED BY public._pages_v.id;


--
-- Name: _pages_v_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    media_id integer,
    categories_id integer
);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_rels_id_seq OWNED BY public._pages_v_rels.id;


--
-- Name: _pages_v_version_hero_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_version_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_version_hero_links_link_type DEFAULT 'reference'::public.enum__pages_v_version_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_version_hero_links_link_appearance DEFAULT 'default'::public.enum__pages_v_version_hero_links_link_appearance,
    _uuid character varying
);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_version_hero_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_version_hero_links_id_seq OWNED BY public._pages_v_version_hero_links.id;


--
-- Name: _posts_v; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._posts_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_hero_image_id integer,
    version_content jsonb,
    version_excerpt character varying,
    version_sticky boolean DEFAULT false,
    version_allow_comments boolean DEFAULT true,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying,
    version_published_at timestamp(3) with time zone,
    version_generate_slug boolean DEFAULT true,
    version_slug character varying,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__posts_v_version_status DEFAULT 'draft'::public.enum__posts_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean,
    version_meta_focus_keyword character varying,
    version_meta_og_title character varying,
    version_meta_og_description character varying,
    version_meta_canonical_u_r_l character varying,
    version_meta_noindex boolean DEFAULT false
);


--
-- Name: _posts_v_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._posts_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _posts_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._posts_v_id_seq OWNED BY public._posts_v.id;


--
-- Name: _posts_v_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._posts_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer,
    categories_id integer,
    tags_id integer,
    users_id integer
);


--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._posts_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._posts_v_rels_id_seq OWNED BY public._posts_v_rels.id;


--
-- Name: _posts_v_version_populated_authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._posts_v_version_populated_authors (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    name character varying
);


--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._posts_v_version_populated_authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._posts_v_version_populated_authors_id_seq OWNED BY public._posts_v_version_populated_authors.id;


--
-- Name: activity_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.activity_log (
    id integer NOT NULL,
    summary character varying,
    who character varying,
    user_id integer,
    action public.enum_activity_log_action,
    area character varying,
    doc_id character varying,
    ip character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: activity_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.activity_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: activity_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.activity_log_id_seq OWNED BY public.activity_log.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    title character varying NOT NULL,
    description character varying,
    generate_slug boolean DEFAULT true,
    slug character varying NOT NULL,
    parent_id integer,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: categories_breadcrumbs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categories_breadcrumbs (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    doc_id integer,
    url character varying,
    label character varying
);


--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    post_id integer NOT NULL,
    parent_id integer,
    author_name character varying NOT NULL,
    author_email character varying NOT NULL,
    content character varying NOT NULL,
    status public.enum_comments_status DEFAULT 'pending'::public.enum_comments_status NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: email_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.email_log (
    id integer NOT NULL,
    subject character varying,
    "to" character varying,
    status public.enum_email_log_status,
    error character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: email_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.email_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: email_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.email_log_id_seq OWNED BY public.email_log.id;


--
-- Name: footer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.footer (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone,
    about character varying,
    phone character varying,
    email character varying,
    address character varying,
    hours character varying,
    designed boolean DEFAULT false,
    design_html character varying,
    design_css character varying
);


--
-- Name: footer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.footer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: footer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.footer_id_seq OWNED BY public.footer.id;


--
-- Name: footer_nav_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.footer_nav_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_footer_nav_items_link_type DEFAULT 'reference'::public.enum_footer_nav_items_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


--
-- Name: footer_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.footer_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


--
-- Name: footer_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.footer_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: footer_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.footer_rels_id_seq OWNED BY public.footer_rels.id;


--
-- Name: footer_social; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.footer_social (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    platform public.enum_footer_social_platform NOT NULL,
    url character varying NOT NULL
);


--
-- Name: form_submissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.form_submissions (
    id integer NOT NULL,
    form_id integer NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: form_submissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.form_submissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: form_submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.form_submissions_id_seq OWNED BY public.form_submissions.id;


--
-- Name: form_submissions_submission_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.form_submissions_submission_data (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    field character varying NOT NULL,
    value character varying NOT NULL
);


--
-- Name: forms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms (
    id integer NOT NULL,
    title character varying NOT NULL,
    submit_button_label character varying,
    confirmation_type public.enum_forms_confirmation_type DEFAULT 'message'::public.enum_forms_confirmation_type,
    confirmation_message jsonb,
    redirect_url character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: forms_blocks_checkbox; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_checkbox (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    default_value boolean,
    block_name character varying
);


--
-- Name: forms_blocks_country; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_country (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


--
-- Name: forms_blocks_email; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_email (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


--
-- Name: forms_blocks_message; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_message (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    message jsonb,
    block_name character varying
);


--
-- Name: forms_blocks_number; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_number (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value numeric,
    required boolean,
    block_name character varying
);


--
-- Name: forms_blocks_select; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_select (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    placeholder character varying,
    required boolean,
    block_name character varying
);


--
-- Name: forms_blocks_select_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_select_options (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    label character varying NOT NULL,
    value character varying NOT NULL
);


--
-- Name: forms_blocks_state; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_state (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


--
-- Name: forms_blocks_text; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_text (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    required boolean,
    block_name character varying
);


--
-- Name: forms_blocks_textarea; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_blocks_textarea (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    required boolean,
    block_name character varying
);


--
-- Name: forms_emails; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forms_emails (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    email_to character varying,
    cc character varying,
    bcc character varying,
    reply_to character varying,
    email_from character varying,
    subject character varying DEFAULT 'You''ve received a new message.'::character varying NOT NULL,
    message jsonb
);


--
-- Name: forms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.forms_id_seq OWNED BY public.forms.id;


--
-- Name: header; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.header (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone,
    button_label character varying,
    button_url character varying,
    designed boolean DEFAULT false,
    design_html character varying,
    design_css character varying
);


--
-- Name: header_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.header_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: header_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.header_id_seq OWNED BY public.header.id;


--
-- Name: header_nav_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.header_nav_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_header_nav_items_link_type DEFAULT 'reference'::public.enum_header_nav_items_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


--
-- Name: header_nav_items_children; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.header_nav_items_children (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_header_nav_items_children_link_type DEFAULT 'reference'::public.enum_header_nav_items_children_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


--
-- Name: header_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.header_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


--
-- Name: header_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.header_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: header_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.header_rels_id_seq OWNED BY public.header_rels.id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.media (
    id integer NOT NULL,
    alt character varying,
    caption jsonb,
    folder_id integer,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    url character varying,
    thumbnail_u_r_l character varying,
    filename character varying,
    mime_type character varying,
    filesize numeric,
    width numeric,
    height numeric,
    focal_x numeric,
    focal_y numeric,
    sizes_thumbnail_url character varying,
    sizes_thumbnail_width numeric,
    sizes_thumbnail_height numeric,
    sizes_thumbnail_mime_type character varying,
    sizes_thumbnail_filesize numeric,
    sizes_thumbnail_filename character varying,
    sizes_square_url character varying,
    sizes_square_width numeric,
    sizes_square_height numeric,
    sizes_square_mime_type character varying,
    sizes_square_filesize numeric,
    sizes_square_filename character varying,
    sizes_small_url character varying,
    sizes_small_width numeric,
    sizes_small_height numeric,
    sizes_small_mime_type character varying,
    sizes_small_filesize numeric,
    sizes_small_filename character varying,
    sizes_medium_url character varying,
    sizes_medium_width numeric,
    sizes_medium_height numeric,
    sizes_medium_mime_type character varying,
    sizes_medium_filesize numeric,
    sizes_medium_filename character varying,
    sizes_large_url character varying,
    sizes_large_width numeric,
    sizes_large_height numeric,
    sizes_large_mime_type character varying,
    sizes_large_filesize numeric,
    sizes_large_filename character varying,
    sizes_xlarge_url character varying,
    sizes_xlarge_width numeric,
    sizes_xlarge_height numeric,
    sizes_xlarge_mime_type character varying,
    sizes_xlarge_filesize numeric,
    sizes_xlarge_filename character varying,
    sizes_og_url character varying,
    sizes_og_width numeric,
    sizes_og_height numeric,
    sizes_og_mime_type character varying,
    sizes_og_filesize numeric,
    sizes_og_filename character varying
);


--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: not_found_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.not_found_log (
    id integer NOT NULL,
    path character varying NOT NULL,
    hits numeric DEFAULT 1,
    last_seen timestamp(3) with time zone,
    last_referrer character varying,
    redirected boolean DEFAULT false,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: not_found_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.not_found_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: not_found_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.not_found_log_id_seq OWNED BY public.not_found_log.id;


--
-- Name: page_views; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.page_views (
    id integer NOT NULL,
    day character varying NOT NULL,
    path character varying NOT NULL,
    referrer character varying,
    device character varying,
    browser character varying,
    country character varying,
    visitor character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: page_views_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.page_views_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: page_views_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.page_views_id_seq OWNED BY public.page_views.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    title character varying,
    hero_type public.enum_pages_hero_type DEFAULT 'lowImpact'::public.enum_pages_hero_type,
    hero_rich_text jsonb,
    hero_media_id integer,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying,
    published_at timestamp(3) with time zone,
    generate_slug boolean DEFAULT true,
    slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_pages_status DEFAULT 'draft'::public.enum_pages_status,
    meta_focus_keyword character varying,
    meta_og_title character varying,
    meta_og_description character varying,
    meta_canonical_u_r_l character varying,
    meta_noindex boolean DEFAULT false
);


--
-- Name: pages_blocks_archive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_archive (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    intro_content jsonb,
    populate_by public.enum_pages_blocks_archive_populate_by DEFAULT 'collection'::public.enum_pages_blocks_archive_populate_by,
    relation_to public.enum_pages_blocks_archive_relation_to DEFAULT 'posts'::public.enum_pages_blocks_archive_relation_to,
    "limit" numeric DEFAULT 10,
    block_name character varying
);


--
-- Name: pages_blocks_content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


--
-- Name: pages_blocks_content_columns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_content_columns (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    size public.enum_pages_blocks_content_columns_size DEFAULT 'oneThird'::public.enum_pages_blocks_content_columns_size,
    rich_text jsonb,
    enable_link boolean,
    link_type public.enum_pages_blocks_content_columns_link_type DEFAULT 'reference'::public.enum_pages_blocks_content_columns_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_content_columns_link_appearance DEFAULT 'default'::public.enum_pages_blocks_content_columns_link_appearance
);


--
-- Name: pages_blocks_cta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_cta (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    rich_text jsonb,
    block_name character varying
);


--
-- Name: pages_blocks_cta_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_cta_links (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_blocks_cta_links_link_type DEFAULT 'reference'::public.enum_pages_blocks_cta_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_cta_links_link_appearance DEFAULT 'default'::public.enum_pages_blocks_cta_links_link_appearance
);


--
-- Name: pages_blocks_design; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_design (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    html character varying,
    css character varying,
    full_width boolean DEFAULT true,
    block_name character varying,
    synced_id integer
);


--
-- Name: pages_blocks_embed; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_embed (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    url character varying,
    caption character varying,
    block_name character varying
);


--
-- Name: pages_blocks_faq; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_faq (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    heading character varying DEFAULT 'Frequently asked questions'::character varying,
    block_name character varying
);


--
-- Name: pages_blocks_faq_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_faq_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    question character varying,
    answer character varying
);


--
-- Name: pages_blocks_features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_features (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    eyebrow character varying,
    heading character varying,
    intro character varying,
    columns public.enum_pages_blocks_features_columns DEFAULT '3'::public.enum_pages_blocks_features_columns,
    block_name character varying
);


--
-- Name: pages_blocks_features_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_features_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    icon character varying,
    title character varying,
    description character varying,
    image_id integer
);


--
-- Name: pages_blocks_form_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_form_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    form_id integer,
    enable_intro boolean,
    intro_content jsonb,
    block_name character varying
);


--
-- Name: pages_blocks_gallery; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_gallery (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    heading character varying,
    columns public.enum_pages_blocks_gallery_columns DEFAULT '3'::public.enum_pages_blocks_gallery_columns,
    block_name character varying
);


--
-- Name: pages_blocks_loop_grid; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_loop_grid (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    heading character varying,
    collection character varying DEFAULT 'posts'::character varying,
    "limit" numeric DEFAULT 6,
    show_filter boolean DEFAULT false,
    load_more boolean DEFAULT true,
    block_name character varying
);


--
-- Name: pages_blocks_media_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    media_id integer,
    block_name character varying
);


--
-- Name: pages_blocks_pricing; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_pricing (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    eyebrow character varying,
    heading character varying,
    intro character varying,
    block_name character varying
);


--
-- Name: pages_blocks_pricing_plans; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_pricing_plans (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    name character varying,
    price character varying,
    period character varying,
    description character varying,
    highlighted boolean,
    link_type public.enum_pages_blocks_pricing_plans_link_type DEFAULT 'reference'::public.enum_pages_blocks_pricing_plans_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying
);


--
-- Name: pages_blocks_pricing_plans_features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_pricing_plans_features (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    feature character varying
);


--
-- Name: pages_blocks_split; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_split (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    media_id integer,
    image_position public.enum_pages_blocks_split_image_position DEFAULT 'right'::public.enum_pages_blocks_split_image_position,
    eyebrow character varying,
    heading character varying,
    text character varying,
    button_label character varying,
    button_url character varying,
    block_name character varying
);


--
-- Name: pages_blocks_split_bullets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_split_bullets (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    text character varying
);


--
-- Name: pages_blocks_stats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_stats (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


--
-- Name: pages_blocks_stats_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_stats_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    value character varying,
    label character varying
);


--
-- Name: pages_blocks_testimonials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_testimonials (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    eyebrow character varying,
    heading character varying,
    block_name character varying
);


--
-- Name: pages_blocks_testimonials_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_testimonials_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    quote character varying,
    name character varying,
    role character varying,
    photo_id integer,
    rating numeric
);


--
-- Name: pages_hero_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_hero_links_link_type DEFAULT 'reference'::public.enum_pages_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_hero_links_link_appearance DEFAULT 'default'::public.enum_pages_hero_links_link_appearance
);


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: pages_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    media_id integer,
    categories_id integer
);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_rels_id_seq OWNED BY public.pages_rels.id;


--
-- Name: payload_folders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_folders (
    id integer NOT NULL,
    name character varying NOT NULL,
    folder_id integer,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_folders_folder_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_folders_folder_type (
    "order" integer NOT NULL,
    parent_id integer NOT NULL,
    value public.enum_payload_folders_folder_type,
    id integer NOT NULL
);


--
-- Name: payload_folders_folder_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_folders_folder_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_folders_folder_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_folders_folder_type_id_seq OWNED BY public.payload_folders_folder_type.id;


--
-- Name: payload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_folders_id_seq OWNED BY public.payload_folders.id;


--
-- Name: payload_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_jobs (
    id integer NOT NULL,
    input jsonb,
    completed_at timestamp(3) with time zone,
    total_tried numeric DEFAULT 0,
    has_error boolean DEFAULT false,
    error jsonb,
    task_slug public.enum_payload_jobs_task_slug,
    queue character varying DEFAULT 'default'::character varying,
    wait_until timestamp(3) with time zone,
    processing boolean DEFAULT false,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_jobs_id_seq OWNED BY public.payload_jobs.id;


--
-- Name: payload_jobs_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_jobs_log (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    executed_at timestamp(3) with time zone NOT NULL,
    completed_at timestamp(3) with time zone NOT NULL,
    task_slug public.enum_payload_jobs_log_task_slug NOT NULL,
    task_i_d character varying NOT NULL,
    input jsonb,
    output jsonb,
    state public.enum_payload_jobs_log_state NOT NULL,
    error jsonb
);


--
-- Name: payload_kv; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_kv (
    id integer NOT NULL,
    key character varying NOT NULL,
    data jsonb NOT NULL
);


--
-- Name: payload_kv_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_kv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_kv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_kv_id_seq OWNED BY public.payload_kv.id;


--
-- Name: payload_locked_documents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_locked_documents (
    id integer NOT NULL,
    global_slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_locked_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_locked_documents_id_seq OWNED BY public.payload_locked_documents.id;


--
-- Name: payload_locked_documents_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_locked_documents_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    media_id integer,
    categories_id integer,
    tags_id integer,
    comments_id integer,
    users_id integer,
    redirects_id integer,
    forms_id integer,
    form_submissions_id integer,
    search_id integer,
    payload_folders_id integer,
    payload_mcp_api_keys_id integer,
    properties_id integer,
    property_enquiries_id integer,
    section_templates_id integer,
    synced_sections_id integer,
    page_views_id integer,
    not_found_log_id integer,
    activity_log_id integer,
    email_log_id integer
);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_locked_documents_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNED BY public.payload_locked_documents_rels.id;


--
-- Name: payload_mcp_api_keys; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_mcp_api_keys (
    id integer NOT NULL,
    user_id integer NOT NULL,
    label character varying,
    description character varying,
    pages_find boolean DEFAULT false,
    pages_create boolean DEFAULT false,
    pages_update boolean DEFAULT false,
    pages_delete boolean DEFAULT false,
    posts_find boolean DEFAULT false,
    posts_create boolean DEFAULT false,
    posts_update boolean DEFAULT false,
    posts_delete boolean DEFAULT false,
    categories_find boolean DEFAULT false,
    categories_create boolean DEFAULT false,
    categories_update boolean DEFAULT false,
    categories_delete boolean DEFAULT false,
    tags_find boolean DEFAULT false,
    tags_create boolean DEFAULT false,
    tags_update boolean DEFAULT false,
    tags_delete boolean DEFAULT false,
    comments_find boolean DEFAULT false,
    comments_update boolean DEFAULT false,
    comments_delete boolean DEFAULT false,
    media_find boolean DEFAULT false,
    media_update boolean DEFAULT false,
    redirects_find boolean DEFAULT false,
    redirects_create boolean DEFAULT false,
    redirects_update boolean DEFAULT false,
    redirects_delete boolean DEFAULT false,
    forms_find boolean DEFAULT false,
    forms_create boolean DEFAULT false,
    forms_update boolean DEFAULT false,
    forms_delete boolean DEFAULT false,
    form_submissions_find boolean DEFAULT false,
    site_settings_find boolean DEFAULT false,
    site_settings_update boolean DEFAULT false,
    header_find boolean DEFAULT false,
    header_update boolean DEFAULT false,
    footer_find boolean DEFAULT false,
    footer_update boolean DEFAULT false,
    payload_mcp_tool_write_post boolean DEFAULT true,
    payload_mcp_tool_write_page boolean DEFAULT true,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    enable_a_p_i_key boolean,
    api_key character varying,
    api_key_index character varying,
    payload_mcp_tool_add_image boolean DEFAULT true,
    properties_find boolean DEFAULT false,
    properties_create boolean DEFAULT false,
    properties_update boolean DEFAULT false,
    properties_delete boolean DEFAULT false,
    property_enquiries_find boolean DEFAULT false,
    property_enquiries_update boolean DEFAULT false
);


--
-- Name: payload_mcp_api_keys_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_mcp_api_keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_mcp_api_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_mcp_api_keys_id_seq OWNED BY public.payload_mcp_api_keys.id;


--
-- Name: payload_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_migrations (
    id integer NOT NULL,
    name character varying,
    batch numeric,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_migrations_id_seq OWNED BY public.payload_migrations.id;


--
-- Name: payload_preferences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_preferences (
    id integer NOT NULL,
    key character varying,
    value jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_preferences_id_seq OWNED BY public.payload_preferences.id;


--
-- Name: payload_preferences_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_preferences_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer,
    payload_mcp_api_keys_id integer
);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_preferences_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNED BY public.payload_preferences_rels.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying,
    hero_image_id integer,
    content jsonb,
    excerpt character varying,
    sticky boolean DEFAULT false,
    allow_comments boolean DEFAULT true,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying,
    published_at timestamp(3) with time zone,
    generate_slug boolean DEFAULT true,
    slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_posts_status DEFAULT 'draft'::public.enum_posts_status,
    meta_focus_keyword character varying,
    meta_og_title character varying,
    meta_og_description character varying,
    meta_canonical_u_r_l character varying,
    meta_noindex boolean DEFAULT false
);


--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: posts_populated_authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.posts_populated_authors (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    name character varying
);


--
-- Name: posts_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.posts_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer,
    categories_id integer,
    tags_id integer,
    users_id integer
);


--
-- Name: posts_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.posts_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.posts_rels_id_seq OWNED BY public.posts_rels.id;


--
-- Name: private_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.private_settings (
    id integer NOT NULL,
    smtp_host character varying,
    smtp_port numeric DEFAULT 465,
    smtp_security public.enum_private_settings_smtp_security DEFAULT 'auto'::public.enum_private_settings_smtp_security,
    smtp_user character varying,
    smtp_pass character varying,
    from_address character varying,
    from_name character varying,
    turnstile_site_key character varying,
    turnstile_secret character varying,
    backups_enabled boolean DEFAULT true,
    backup_hour numeric DEFAULT 3,
    backup_keep_days numeric DEFAULT 30,
    backup_media boolean DEFAULT true,
    offsite_enabled boolean DEFAULT false,
    s3_endpoint character varying,
    s3_region character varying DEFAULT 'auto'::character varying,
    s3_bucket character varying,
    s3_access_key character varying,
    s3_secret_key character varying,
    s3_prefix character varying DEFAULT 'ultimapress-backups'::character varying,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


--
-- Name: private_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.private_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: private_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.private_settings_id_seq OWNED BY public.private_settings.id;


--
-- Name: redirects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.redirects (
    id integer NOT NULL,
    "from" character varying NOT NULL,
    to_type public.enum_redirects_to_type DEFAULT 'reference'::public.enum_redirects_to_type,
    to_url character varying,
    type public.enum_redirects_type DEFAULT '301'::public.enum_redirects_type NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: redirects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.redirects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: redirects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.redirects_id_seq OWNED BY public.redirects.id;


--
-- Name: redirects_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.redirects_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


--
-- Name: redirects_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.redirects_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: redirects_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.redirects_rels_id_seq OWNED BY public.redirects_rels.id;


--
-- Name: search; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.search (
    id integer NOT NULL,
    title character varying,
    priority numeric,
    slug character varying,
    meta_title character varying,
    meta_description character varying,
    meta_image_id integer,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: search_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.search_categories (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    relation_to character varying,
    category_i_d character varying,
    title character varying
);


--
-- Name: search_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.search_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: search_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.search_id_seq OWNED BY public.search.id;


--
-- Name: search_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.search_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer
);


--
-- Name: search_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.search_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: search_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.search_rels_id_seq OWNED BY public.search_rels.id;


--
-- Name: section_templates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.section_templates (
    id integer NOT NULL,
    name character varying NOT NULL,
    html character varying NOT NULL,
    css character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: section_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.section_templates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: section_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.section_templates_id_seq OWNED BY public.section_templates.id;


--
-- Name: site_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_settings (
    id integer NOT NULL,
    site_title character varying DEFAULT 'My UltimaPress Site'::character varying NOT NULL,
    tagline character varying DEFAULT 'Just another UltimaPress site'::character varying,
    logo_id integer,
    site_icon_id integer,
    language character varying DEFAULT 'en'::character varying,
    timezone character varying DEFAULT 'UTC'::character varying,
    date_format public.enum_site_settings_date_format DEFAULT 'long'::public.enum_site_settings_date_format,
    template public.enum_site_settings_template DEFAULT 'bright'::public.enum_site_settings_template NOT NULL,
    primary_color character varying DEFAULT '#7B2BFF'::character varying,
    accent_color character varying DEFAULT '#F21CD9'::character varying,
    heading_font public.enum_site_settings_heading_font DEFAULT 'Manrope'::public.enum_site_settings_heading_font,
    body_font public.enum_site_settings_body_font DEFAULT 'Inter'::public.enum_site_settings_body_font,
    custom_c_s_s character varying,
    homepage_displays public.enum_site_settings_homepage_displays DEFAULT 'page'::public.enum_site_settings_homepage_displays,
    homepage_id integer,
    posts_per_page numeric DEFAULT 12,
    discourage_search_engines boolean DEFAULT false,
    enable_blog boolean DEFAULT true,
    enable_comments boolean DEFAULT true,
    moderate_comments boolean DEFAULT true,
    enable_search boolean DEFAULT true,
    enable_r_s_s boolean DEFAULT true,
    enable_theme_switcher boolean DEFAULT false,
    maintenance_mode boolean DEFAULT false,
    maintenance_message character varying DEFAULT 'We are making some improvements. Back very soon.'::character varying,
    privacy_policy_page_id integer,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone,
    business_type public.enum_site_settings_business_type DEFAULT 'Organization'::public.enum_site_settings_business_type,
    business_name character varying,
    price_range character varying,
    default_share_image_id integer,
    enable_llms_txt boolean DEFAULT true,
    google_verification character varying,
    bing_verification character varying,
    enable_analytics boolean DEFAULT true,
    analytics_retention_days numeric DEFAULT 395,
    ga4_id character varying,
    gtm_id character varying,
    meta_pixel_id character varying,
    plausible_domain character varying,
    cookie_banner public.enum_site_settings_cookie_banner DEFAULT 'auto'::public.enum_site_settings_cookie_banner,
    cookie_banner_text character varying DEFAULT 'We use cookies to understand how our site is used and to improve it. You can accept or decline; the site works either way.'::character varying,
    announcement_enabled boolean DEFAULT false,
    announcement_text character varying,
    announcement_link_label character varying,
    announcement_link_u_r_l character varying,
    announcement_start timestamp(3) with time zone,
    announcement_end timestamp(3) with time zone,
    announcement_style public.enum_site_settings_announcement_style DEFAULT 'brand'::public.enum_site_settings_announcement_style,
    announcement_dismissible boolean DEFAULT true
);


--
-- Name: site_settings_code_snippets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_settings_code_snippets (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    location public.enum_site_settings_code_snippets_location DEFAULT 'head'::public.enum_site_settings_code_snippets_location NOT NULL,
    enabled boolean DEFAULT true,
    code character varying NOT NULL,
    needs_consent boolean DEFAULT false
);


--
-- Name: site_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.site_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: site_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.site_settings_id_seq OWNED BY public.site_settings.id;


--
-- Name: synced_sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.synced_sections (
    id integer NOT NULL,
    name character varying NOT NULL,
    html character varying NOT NULL,
    css character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: synced_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.synced_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: synced_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.synced_sections_id_seq OWNED BY public.synced_sections.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    title character varying NOT NULL,
    generate_slug boolean DEFAULT true,
    slug character varying NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    role public.enum_users_role DEFAULT 'author'::public.enum_users_role NOT NULL,
    photo_id integer,
    bio character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    email character varying NOT NULL,
    reset_password_token character varying,
    reset_password_expiration timestamp(3) with time zone,
    salt character varying,
    hash character varying,
    reset_password_requested_at timestamp(3) with time zone,
    login_attempts numeric DEFAULT 0,
    lock_until timestamp(3) with time zone,
    menu_style public.enum_users_menu_style DEFAULT 'spine'::public.enum_users_menu_style,
    two_factor_enabled boolean DEFAULT false,
    two_factor_secret character varying,
    two_factor_pending character varying
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users_sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_sessions (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    created_at timestamp(3) with time zone,
    expires_at timestamp(3) with time zone NOT NULL
);


--
-- Name: _pages_v id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v ALTER COLUMN id SET DEFAULT nextval('public._pages_v_id_seq'::regclass);


--
-- Name: _pages_v_blocks_archive id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_archive ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_archive_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content_columns id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_columns_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_cta ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_links_id_seq'::regclass);


--
-- Name: _pages_v_blocks_design id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_design ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_design_id_seq'::regclass);


--
-- Name: _pages_v_blocks_embed id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_embed ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_embed_id_seq'::regclass);


--
-- Name: _pages_v_blocks_faq id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_faq ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_faq_id_seq'::regclass);


--
-- Name: _pages_v_blocks_faq_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_faq_items ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_faq_items_id_seq'::regclass);


--
-- Name: _pages_v_blocks_features id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_features ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_features_id_seq'::regclass);


--
-- Name: _pages_v_blocks_features_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_features_items ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_features_items_id_seq'::regclass);


--
-- Name: _pages_v_blocks_form_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_form_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_form_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_gallery id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_gallery ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_gallery_id_seq'::regclass);


--
-- Name: _pages_v_blocks_loop_grid id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_loop_grid ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_loop_grid_id_seq'::regclass);


--
-- Name: _pages_v_blocks_media_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_media_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_media_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_pricing id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_pricing ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_pricing_id_seq'::regclass);


--
-- Name: _pages_v_blocks_pricing_plans id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_pricing_plans ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_pricing_plans_id_seq'::regclass);


--
-- Name: _pages_v_blocks_pricing_plans_features id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_pricing_plans_features ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_pricing_plans_features_id_seq'::regclass);


--
-- Name: _pages_v_blocks_split id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_split ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_split_id_seq'::regclass);


--
-- Name: _pages_v_blocks_split_bullets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_split_bullets ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_split_bullets_id_seq'::regclass);


--
-- Name: _pages_v_blocks_stats id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_stats ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_stats_id_seq'::regclass);


--
-- Name: _pages_v_blocks_stats_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_stats_items ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_stats_items_id_seq'::regclass);


--
-- Name: _pages_v_blocks_testimonials id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_testimonials_id_seq'::regclass);


--
-- Name: _pages_v_blocks_testimonials_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_items ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_testimonials_items_id_seq'::regclass);


--
-- Name: _pages_v_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels ALTER COLUMN id SET DEFAULT nextval('public._pages_v_rels_id_seq'::regclass);


--
-- Name: _pages_v_version_hero_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_version_hero_links_id_seq'::regclass);


--
-- Name: _posts_v id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v ALTER COLUMN id SET DEFAULT nextval('public._posts_v_id_seq'::regclass);


--
-- Name: _posts_v_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v_rels ALTER COLUMN id SET DEFAULT nextval('public._posts_v_rels_id_seq'::regclass);


--
-- Name: _posts_v_version_populated_authors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v_version_populated_authors ALTER COLUMN id SET DEFAULT nextval('public._posts_v_version_populated_authors_id_seq'::regclass);


--
-- Name: activity_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.activity_log ALTER COLUMN id SET DEFAULT nextval('public.activity_log_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: email_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_log ALTER COLUMN id SET DEFAULT nextval('public.email_log_id_seq'::regclass);


--
-- Name: footer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer ALTER COLUMN id SET DEFAULT nextval('public.footer_id_seq'::regclass);


--
-- Name: footer_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_rels ALTER COLUMN id SET DEFAULT nextval('public.footer_rels_id_seq'::regclass);


--
-- Name: form_submissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_submissions ALTER COLUMN id SET DEFAULT nextval('public.form_submissions_id_seq'::regclass);


--
-- Name: forms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms ALTER COLUMN id SET DEFAULT nextval('public.forms_id_seq'::regclass);


--
-- Name: header id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header ALTER COLUMN id SET DEFAULT nextval('public.header_id_seq'::regclass);


--
-- Name: header_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_rels ALTER COLUMN id SET DEFAULT nextval('public.header_rels_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: not_found_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.not_found_log ALTER COLUMN id SET DEFAULT nextval('public.not_found_log_id_seq'::regclass);


--
-- Name: page_views id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_views ALTER COLUMN id SET DEFAULT nextval('public.page_views_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels ALTER COLUMN id SET DEFAULT nextval('public.pages_rels_id_seq'::regclass);


--
-- Name: payload_folders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_folders ALTER COLUMN id SET DEFAULT nextval('public.payload_folders_id_seq'::regclass);


--
-- Name: payload_folders_folder_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_folders_folder_type ALTER COLUMN id SET DEFAULT nextval('public.payload_folders_folder_type_id_seq'::regclass);


--
-- Name: payload_jobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_jobs ALTER COLUMN id SET DEFAULT nextval('public.payload_jobs_id_seq'::regclass);


--
-- Name: payload_kv id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_kv ALTER COLUMN id SET DEFAULT nextval('public.payload_kv_id_seq'::regclass);


--
-- Name: payload_locked_documents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_id_seq'::regclass);


--
-- Name: payload_locked_documents_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_rels_id_seq'::regclass);


--
-- Name: payload_mcp_api_keys id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_mcp_api_keys ALTER COLUMN id SET DEFAULT nextval('public.payload_mcp_api_keys_id_seq'::regclass);


--
-- Name: payload_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_migrations ALTER COLUMN id SET DEFAULT nextval('public.payload_migrations_id_seq'::regclass);


--
-- Name: payload_preferences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_id_seq'::regclass);


--
-- Name: payload_preferences_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_rels_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: posts_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_rels ALTER COLUMN id SET DEFAULT nextval('public.posts_rels_id_seq'::regclass);


--
-- Name: private_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.private_settings ALTER COLUMN id SET DEFAULT nextval('public.private_settings_id_seq'::regclass);


--
-- Name: redirects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redirects ALTER COLUMN id SET DEFAULT nextval('public.redirects_id_seq'::regclass);


--
-- Name: redirects_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redirects_rels ALTER COLUMN id SET DEFAULT nextval('public.redirects_rels_id_seq'::regclass);


--
-- Name: search id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.search ALTER COLUMN id SET DEFAULT nextval('public.search_id_seq'::regclass);


--
-- Name: search_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.search_rels ALTER COLUMN id SET DEFAULT nextval('public.search_rels_id_seq'::regclass);


--
-- Name: section_templates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.section_templates ALTER COLUMN id SET DEFAULT nextval('public.section_templates_id_seq'::regclass);


--
-- Name: site_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings ALTER COLUMN id SET DEFAULT nextval('public.site_settings_id_seq'::regclass);


--
-- Name: synced_sections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.synced_sections ALTER COLUMN id SET DEFAULT nextval('public.synced_sections_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: _pages_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v (id, parent_id, version_title, version_hero_type, version_hero_rich_text, version_hero_media_id, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_generate_slug, version_slug, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave, version_meta_focus_keyword, version_meta_og_title, version_meta_og_description, version_meta_canonical_u_r_l, version_meta_noindex) FROM stdin;
7	4	Home	none	\N	\N	Linden & Vale | Dublin estate agents for period homes and new builds	18	Boutique Dublin estate agency selling Georgian, Victorian and Edwardian homes and new builds. Book a free, no-obligation valuation with a senior valuer.	\N	f	home	2026-11-13 02:52:03.543+00	2026-11-13 01:42:32.174+00	published	2026-11-13 02:52:03.58+00	2026-11-13 02:52:03.58+00	t	f	\N	\N	\N	\N	f
6	4	Home	none	\N	\N	Linden & Vale | Dublin estate agents for period homes and new builds	18	Boutique Dublin estate agency selling Georgian, Victorian and Edwardian homes and new builds. Book a free, no-obligation valuation with a senior valuer.	\N	f	home	2026-11-13 01:42:32.174+00	2026-11-13 01:42:32.174+00	published	2026-11-13 01:42:32.216+00	2026-11-13 01:42:32.216+00	f	f	\N	\N	\N	\N	f
\.


--
-- Data for Name: _pages_v_blocks_archive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_content (_order, _parent_id, _path, id, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_cta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_cta (_order, _parent_id, _path, id, rich_text, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_design; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_design (_order, _parent_id, _path, id, html, css, full_width, _uuid, block_name, synced_id) FROM stdin;
1	6	version.layout	8	<section class="lv hero"><img class="hero-img" src="/api/media/file/modern-new-build-home-exterior-with-clean-lines.jpg" alt="Contemporary Dublin home at dusk, lit from within behind floor-to-ceiling glass"><div class="shade"></div><div class="inner"><p class="eyebrow"><span class="rule"></span>Linden &amp; Vale · Estate agents, Dublin</p><h1><span class="l1">Homes with a story.</span><em class="l2">And homes about to start one.</em></h1><div class="bottom"><p class="lede">Georgian, Victorian and Edwardian houses, and the best new builds in the city. Priced with care, presented beautifully, and handled by one agent from valuation to keys.</p><div class="actions"><a class="btn solid" href="#request">Book a free valuation</a><a class="btn line" href="#homes">See featured homes <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M12 5v14M5 12l7 7 7-7"></path></svg></a></div></div></div><div class="strip" aria-label="Areas we cover"><div class="track"><span>Ranelagh</span><span>Rathgar</span><span>Ballsbridge</span><span>Sandymount</span><span>Donnybrook</span><span>Rathmines</span><span>Clontarf</span><span>Monkstown</span><span>Dalkey</span><span>Foxrock</span><span>Ranelagh</span><span>Rathgar</span><span>Ballsbridge</span><span>Sandymount</span><span>Donnybrook</span><span>Rathmines</span><span>Clontarf</span><span>Monkstown</span><span>Dalkey</span><span>Foxrock</span></div></div></section>	@import url('https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;1,400;1,500&family=Manrope:wght@400;500;600;700&display=swap');\n.lv{--ink:#121816;--stone:#F3EEE5;--brass:#B08A52;--brassl:#D2B27E;font-family:'Manrope',system-ui,sans-serif}\n.hero{position:relative;min-height:94svh;display:flex;flex-direction:column;justify-content:flex-end;overflow:hidden;color:#fff;background:var(--ink)}\n.hero-img{position:absolute;inset:0;width:100%;height:100%;object-fit:cover;object-position:center 60%}\n.shade{position:absolute;inset:0;background:linear-gradient(180deg,rgba(10,14,12,.55) 0%,rgba(10,14,12,.05) 35%,rgba(10,14,12,.25) 60%,rgba(10,14,12,.88) 100%)}\n.inner{position:relative;z-index:2;width:min(1320px,92vw);margin:0 auto;padding:18vh 0 4.5rem}\n.eyebrow{display:flex;align-items:center;gap:.9rem;font-size:.78rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brassl);margin:0 0 1.6rem}\n.rule{display:inline-block;width:56px;height:1px;background:var(--brassl)}\nh1{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(3rem,8.4vw,8.6rem);line-height:.92;letter-spacing:-.02em;margin:0;color:#fff}\nh1 span,h1 em{display:block}\nh1 em{font-style:italic;font-weight:400;color:#EADBC2}\n.bottom{display:flex;justify-content:space-between;align-items:flex-end;gap:3rem;margin-top:2.6rem;flex-wrap:wrap}\n.lede{max-width:34rem;font-size:1.08rem;line-height:1.7;color:rgba(255,255,255,.86);margin:0}\n.actions{display:flex;gap:.8rem;flex-wrap:wrap}\n.btn{display:inline-flex;align-items:center;gap:.6rem;padding:1.05rem 1.7rem;font-size:.82rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;text-decoration:none;transition:background .35s,color .35s,border-color .35s,transform .35s}\n.btn.solid{background:var(--brass);color:#fff;border:1px solid var(--brass)}\n.btn.solid:hover{background:#fff;color:var(--ink);border-color:#fff;transform:translateY(-2px)}\n.btn.line{color:#fff;border:1px solid rgba(255,255,255,.5)}\n.btn.line:hover{border-color:#fff;background:rgba(255,255,255,.1);transform:translateY(-2px)}\n.strip{position:relative;z-index:2;border-top:1px solid rgba(255,255,255,.18);overflow:hidden;padding:1.1rem 0;background:rgba(10,14,12,.35);backdrop-filter:blur(6px)}\n.track{display:flex;gap:3.2rem;width:max-content;font-family:'Cormorant Garamond',Georgia,serif;font-style:italic;font-size:1.35rem;color:rgba(255,255,255,.8)}\n.track span{display:inline-flex;align-items:center;gap:3.2rem}\n.track span::after{content:'';width:6px;height:6px;border:1px solid var(--brassl);transform:rotate(45deg)}\n@media (prefers-reduced-motion:no-preference){.hero-img{animation:lvHeroZoom 2.4s cubic-bezier(.2,.7,.2,1) both}.eyebrow,.l1,.l2,.bottom{animation:lvHeroRise 1.1s cubic-bezier(.2,.7,.2,1) both}.l1{animation-delay:.15s}.l2{animation-delay:.3s}.bottom{animation-delay:.5s}.track{animation:lvMarquee 48s linear infinite}}\n@keyframes lvHeroZoom{from{transform:scale(1.12)}to{transform:scale(1)}}\n@keyframes lvHeroRise{from{opacity:0;transform:translateY(28px)}to{opacity:1;transform:none}}\n@keyframes lvMarquee{to{transform:translateX(-50%)}}\n@media (max-width:700px){.hero{min-height:92svh}.inner{padding:14vh 0 2.6rem}.bottom{margin-top:1.8rem;gap:1.6rem}.lede{font-size:1rem}.actions{width:100%}.btn{flex:1 1 100%;justify-content:center}.track{font-size:1.1rem}}	t	6af66b08ff7f070016860990	top	\N
2	6	version.layout	9	<section class="lv homes"><div class="wrap"><header class="head reveal"><div><p class="eyebrow">01 · Featured homes</p><h2>On our books <em>this season</em></h2></div><p class="intro">A short list, chosen carefully. Every home we take on gets architectural photography, a floor plan and a written brochure before it goes live.</p></header><div class="grid"><a class="card big reveal" href="#contact"><figure><img src="/api/media/file/red-brick-victorian-houses-in-rathgar-dublin.jpg" alt="Victorian red-brick end-of-terrace house in Rathgar"><span class="tag">Period · For sale</span></figure><div class="info"><div><h3>Victorian end-of-terrace</h3><p class="place">Rathgar, Dublin 6</p></div><p class="price">€1,450,000</p></div><ul class="spec"><li>5 bed</li><li>3 bath</li><li>248 m²</li><li>BER E1</li></ul></a><a class="card reveal" href="#contact"><figure><img src="/api/media/file/elegant-kitchen-and-dining-space-with-natural-light.jpg" alt="Contemporary timber-clad new-build house"><span class="tag">New build · For sale</span></figure><div class="info"><div><h3>Timber-clad family home</h3><p class="place">Clonskeagh, Dublin 14</p></div><p class="price">€1,295,000</p></div><ul class="spec"><li>4 bed</li><li>3 bath</li><li>196 m²</li><li>BER A2</li></ul></a><a class="card reveal" href="#contact"><figure><img src="/api/media/file/detached-family-home-exterior.jpg" alt="Detached new-build home with brick and render facade"><span class="tag">New release</span></figure><div class="info"><div><h3>Detached new build</h3><p class="place">Foxrock, Dublin 18</p></div><p class="price">€1,650,000</p></div><ul class="spec"><li>5 bed</li><li>4 bath</li><li>265 m²</li><li>BER A1</li></ul></a><a class="card wide reveal" href="#contact"><figure><img src="/api/media/file/bright-open-plan-living-room-with-large-windows.jpg" alt="Open-plan living room with timber wall and full-height glazing"><span class="tag dark">Sale agreed</span></figure><div class="wide-text"><p class="eyebrow">Penthouse</p><h3>Light on three sides, above the trees</h3><p class="place">Ballsbridge, Dublin 4</p><ul class="spec"><li>3 bed</li><li>2 bath</li><li>142 m²</li><li>BER A2</li></ul><p class="price">€995,000</p></div></a></div><div class="register reveal"><p>Most of our homes go to buyers on our register before they reach the portals.</p><a href="#contact">Join the buyer register <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M5 12h14M13 6l6 6-6 6"></path></svg></a></div></div></section>	.lv{--ink:#121816;--stone:#F3EEE5;--paper:#FAF7F1;--brass:#B08A52;--muted:#5F655F;--rule:rgba(18,24,22,.14);font-family:'Manrope',system-ui,sans-serif;color:var(--ink)}\n.homes{background:var(--paper);padding:clamp(4.5rem,10vw,8.5rem) 0}\n.wrap{width:min(1320px,92vw);margin:0 auto}\n.head{display:grid;grid-template-columns:1.2fr 1fr;gap:3rem;align-items:end;padding-bottom:2.6rem;border-bottom:1px solid var(--rule);margin-bottom:3rem}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brass);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.6rem,5.6vw,5.2rem);line-height:.98;letter-spacing:-.015em;margin:0}\nh2 em,h3 em{font-style:italic;font-weight:400;color:var(--brass)}\n.intro{color:var(--muted);line-height:1.75;margin:0;max-width:30rem;justify-self:end}\n.grid{display:grid;grid-template-columns:1.45fr 1fr;grid-template-rows:auto auto auto;gap:2.4rem 2.4rem}\n.card{display:flex;flex-direction:column;text-decoration:none;color:inherit}\n.card.big{grid-row:span 2}\nfigure{position:relative;margin:0;overflow:hidden;background:#ddd}\n.card figure{aspect-ratio:4/3}\n.card.big figure{aspect-ratio:auto;flex:1;min-height:420px}\nfigure img{width:100%;height:100%;object-fit:cover;display:block;transition:transform 1.2s cubic-bezier(.2,.7,.2,1)}\n.card.big img{object-position:72% center}\n.card:hover img{transform:scale(1.05)}\n.tag{position:absolute;top:1rem;left:1rem;background:rgba(250,247,241,.94);color:var(--ink);font-size:.7rem;font-weight:600;letter-spacing:.16em;text-transform:uppercase;padding:.55rem .8rem}\n.tag.dark{background:var(--ink);color:#fff}\n.info{display:flex;justify-content:space-between;align-items:flex-start;gap:1rem;padding-top:1.3rem}\nh3{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(1.5rem,2.2vw,2rem);line-height:1.1;margin:0;transition:color .3s}\n.card:hover h3{color:var(--brass)}\n.place{margin:.35rem 0 0;color:var(--muted);font-size:.92rem}\n.price{font-family:'Cormorant Garamond',Georgia,serif;font-size:1.55rem;margin:0;white-space:nowrap}\n.spec{list-style:none;display:flex;flex-wrap:wrap;gap:0;margin:1rem 0 0;padding:.9rem 0 0;border-top:1px solid var(--rule);font-size:.8rem;letter-spacing:.06em;color:var(--muted)}\n.spec li{padding-right:1rem;margin-right:1rem;border-right:1px solid var(--rule)}\n.spec li:last-child{border:0}\n.card.wide{grid-column:1 / -1;display:grid;grid-template-columns:1.45fr 1fr;gap:0;background:var(--ink);color:#fff}\n.card.wide figure{aspect-ratio:16/9}\n.wide-text{padding:clamp(2rem,4vw,3.6rem);display:flex;flex-direction:column;justify-content:center}\n.wide-text h3{font-size:clamp(1.9rem,3vw,2.8rem);color:#fff}\n.card.wide:hover h3{color:#D2B27E}\n.wide-text .place,.wide-text .spec{color:rgba(255,255,255,.7)}\n.wide-text .spec{border-color:rgba(255,255,255,.18)}\n.wide-text .spec li{border-color:rgba(255,255,255,.18)}\n.wide-text .price{margin-top:1.6rem;font-size:2rem;color:#D2B27E}\n.register{display:flex;justify-content:space-between;align-items:center;gap:2rem;margin-top:3.2rem;padding-top:2rem;border-top:1px solid var(--rule)}\n.register p{margin:0;font-family:'Cormorant Garamond',Georgia,serif;font-style:italic;font-size:1.5rem}\n.register a{display:inline-flex;align-items:center;gap:.6rem;color:var(--ink);text-decoration:none;font-size:.82rem;font-weight:600;letter-spacing:.14em;text-transform:uppercase;border-bottom:1px solid var(--brass);padding-bottom:.35rem;transition:gap .3s,color .3s}\n.register a:hover{gap:1rem;color:var(--brass)}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealH linear both;animation-timeline:view();animation-range:entry 0% cover 28%}}}\n@keyframes lvRevealH{from{opacity:0;transform:translateY(48px)}to{opacity:1;transform:none}}\n@media (max-width:900px){.head{grid-template-columns:1fr;gap:1.2rem}.intro{justify-self:start}.grid{grid-template-columns:1fr}.card.big{grid-row:auto}.card.big figure{aspect-ratio:4/3;min-height:0;flex:none}.card.wide{grid-template-columns:1fr}.register{flex-direction:column;align-items:flex-start}}\n@media (max-width:520px){.info{flex-direction:column;gap:.4rem}.spec li{padding-right:.7rem;margin-right:.7rem}}	t	6af66b08ff7f070016860991	homes	\N
3	6	version.layout	10	<section class="lv svc"><div class="wrap"><header class="head reveal"><p class="eyebrow">02 · Services</p><h2>Selling or buying, <em>you deal with one person.</em></h2></header><div class="cols"><figure class="pic reveal"><img src="/api/media/file/interior-with-classic-details.jpg" alt="Restored hallway with cornicing and herringbone oak floor"><figcaption>Every listing is photographed by an architectural photographer.</figcaption></figure><div class="col reveal"><h3>For sellers</h3><ol><li><span>01</span><div><strong>An honest valuation</strong><p>A senior valuer walks the house with you and puts a figure in writing, backed by recent comparable sales.</p></div></li><li><span>02</span><div><strong>Preparation and styling</strong><p>A practical list of what is worth doing before launch, and what is not. Styling advice included.</p></div></li><li><span>03</span><div><strong>Photography, film and floor plans</strong><p>Architectural photography, a measured floor plan and a printed brochure for every home.</p></div></li><li><span>04</span><div><strong>Accompanied viewings</strong><p>We show the house ourselves, by appointment, and report back after every viewing.</p></div></li><li><span>05</span><div><strong>Negotiation to closing</strong><p>We work with your solicitor until the keys change hands.</p></div></li></ol></div><div class="col reveal"><h3>For buyers</h3><ol><li><span>01</span><div><strong>Early access</strong><p>Register once and hear about new homes before they go to the portals.</p></div></li><li><span>02</span><div><strong>Period home guidance</strong><p>Straight answers on surveys, protected structures, BER upgrades and what a renovation really involves.</p></div></li><li><span>03</span><div><strong>New build guidance</strong><p>Specifications, stage payments, snagging and handover, explained before you commit.</p></div></li><li><span>04</span><div><strong>Clear bidding</strong><p>Transparent offers, recorded and confirmed in writing, every time.</p></div></li></ol><a class="link" href="#contact">Talk to us about buying <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M5 12h14M13 6l6 6-6 6"></path></svg></a></div></div></div></section>	.lv{--ink:#121816;--brass:#B08A52;--brassl:#D2B27E;font-family:'Manrope',system-ui,sans-serif}\n.svc{background:var(--ink);color:#fff;padding:clamp(4.5rem,10vw,8.5rem) 0}\n.wrap{width:min(1320px,92vw);margin:0 auto}\n.head{max-width:62rem;margin-bottom:4rem}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brassl);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.6rem,5.6vw,5.2rem);line-height:.98;letter-spacing:-.015em;margin:0}\nh2 em{font-style:italic;font-weight:400;color:var(--brassl)}\n.cols{display:grid;grid-template-columns:.85fr 1fr 1fr;gap:clamp(2rem,4vw,4rem);align-items:start}\n.pic{margin:0;position:sticky;top:2rem}\n.pic img{width:100%;aspect-ratio:3/4.4;object-fit:cover;display:block;filter:saturate(.9)}\nfigcaption{margin-top:1rem;font-size:.85rem;color:rgba(255,255,255,.6);font-style:italic;font-family:'Cormorant Garamond',Georgia,serif;font-size:1.1rem}\nh3{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:2.2rem;margin:0 0 1.2rem;padding-bottom:1rem;border-bottom:1px solid var(--brass)}\nol{list-style:none;margin:0;padding:0}\nli{display:grid;grid-template-columns:2.6rem 1fr;gap:.6rem;padding:1.3rem 0;border-bottom:1px solid rgba(255,255,255,.12);transition:padding-left .35s}\nli:hover{padding-left:.5rem}\nli span{font-family:'Cormorant Garamond',Georgia,serif;font-style:italic;color:var(--brassl);font-size:1.2rem}\nstrong{display:block;font-weight:600;font-size:1rem;letter-spacing:.01em;margin-bottom:.35rem}\nli p{margin:0;color:rgba(255,255,255,.68);line-height:1.65;font-size:.94rem}\n.link{display:inline-flex;align-items:center;gap:.6rem;margin-top:2rem;color:#fff;text-decoration:none;font-size:.82rem;font-weight:600;letter-spacing:.14em;text-transform:uppercase;border-bottom:1px solid var(--brassl);padding-bottom:.35rem;transition:gap .3s,color .3s}\n.link:hover{gap:1rem;color:var(--brassl)}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealS linear both;animation-timeline:view();animation-range:entry 0% cover 25%}}}\n@keyframes lvRevealS{from{opacity:0;transform:translateY(48px)}to{opacity:1;transform:none}}\n@media (max-width:1000px){.cols{grid-template-columns:1fr 1fr}.pic{grid-column:1 / -1;position:static}.pic img{aspect-ratio:16/10}}\n@media (max-width:680px){.cols{grid-template-columns:1fr}.head{margin-bottom:2.6rem}}	t	6af66b08ff7f070016860992	services	\N
4	6	version.layout	11	<section class="lv why"><div class="wrap"><div class="visual reveal"><img class="a" src="/api/media/file/georgian-house-with-fanlight-doorway-dublin.jpg" alt="Archive photograph of a Georgian Dublin house with fanlight doorway"><img class="b" src="/api/media/file/living-room-interior-with-natural-light.jpg" alt="Contemporary living room with a mustard armchair and brass floor lamp"><p class="cap">Two hundred years apart. <em>Same care.</em></p></div><div class="text"><p class="eyebrow reveal">03 · Why Linden &amp; Vale</p><h2 class="reveal">We take on fewer homes. <em>On purpose.</em></h2><p class="lead reveal">Big agencies spread their time thinly. We keep our list short so every home gets the attention it would get if it were our own.</p><ol class="points"><li class="reveal"><span class="n">I</span><div><h3>Two specialisms, one standard</h3><p>We know the difference between a granite step and a cast-iron railing, and between an A1 and an A2 rating. Period homes and new builds are all we do.</p></div></li><li class="reveal"><span class="n">II</span><div><h3>The same person, start to finish</h3><p>The valuer who walks your house is the agent who runs your viewings, takes your offers and calls you on closing day.</p></div></li><li class="reveal"><span class="n">III</span><div><h3>Presentation that does the selling</h3><p>Architectural photography, honest copy and a printed brochure. Homes that look right attract buyers who are ready.</p></div></li></ol></div></div></section>	.lv{--ink:#121816;--stone:#F1EBE1;--brass:#B08A52;--muted:#5F655F;--rule:rgba(18,24,22,.14);font-family:'Manrope',system-ui,sans-serif;color:var(--ink)}\n.why{background:var(--stone);padding:clamp(4.5rem,10vw,8.5rem) 0;overflow:hidden}\n.wrap{width:min(1320px,92vw);margin:0 auto;display:grid;grid-template-columns:1fr 1fr;gap:clamp(3rem,6vw,6rem);align-items:center}\n.visual{position:relative;padding-bottom:18%;padding-right:12%}\n.visual img{display:block;object-fit:cover;transition:transform 1s cubic-bezier(.2,.7,.2,1)}\n.a{width:100%;aspect-ratio:1/1.08;filter:contrast(1.05)}\n.b{position:absolute;right:0;bottom:0;width:52%;aspect-ratio:4/5;outline:10px solid var(--stone);box-shadow:24px 24px 0 -10px var(--brass)}\n.visual:hover .b{transform:translate(-8px,-8px)}\n.cap{position:absolute;left:0;bottom:2%;margin:0;font-family:'Cormorant Garamond',Georgia,serif;font-size:1.25rem;max-width:40%}\n.cap em{color:var(--brass)}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brass);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.6rem,5vw,4.8rem);line-height:.98;letter-spacing:-.015em;margin:0}\nh2 em{font-style:italic;font-weight:400;color:var(--brass);display:block}\n.lead{font-size:1.1rem;line-height:1.75;color:var(--muted);margin:1.6rem 0 2.2rem;max-width:34rem}\n.points{list-style:none;margin:0;padding:0;border-top:1px solid var(--rule)}\n.points li{display:grid;grid-template-columns:3.4rem 1fr;gap:1rem;padding:1.5rem 0;border-bottom:1px solid var(--rule)}\n.n{font-family:'Cormorant Garamond',Georgia,serif;font-style:italic;font-size:1.6rem;color:var(--brass);line-height:1}\nh3{font-family:'Cormorant Garamond',Georgia,serif;font-weight:600;font-size:1.55rem;margin:0 0 .4rem;line-height:1.15}\n.points p{margin:0;color:var(--muted);line-height:1.7;font-size:.96rem}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealW linear both;animation-timeline:view();animation-range:entry 0% cover 25%}}}\n@keyframes lvRevealW{from{opacity:0;transform:translateY(44px)}to{opacity:1;transform:none}}\n@media (max-width:900px){.wrap{grid-template-columns:1fr}.visual{max-width:560px}}\n@media (max-width:520px){.cap{position:static;max-width:none;margin-top:1.2rem}.visual{padding-bottom:0;padding-right:0}.b{position:relative;width:60%;margin:-30% 0 0 auto}}	t	6af66b08ff7f070016860993	why	\N
5	6	version.layout	12	<section class="lv val"><img class="bg" src="/api/media/file/georgian-terraces-along-dublin-s-georgian-mile.jpg" alt="Georgian red-brick terraces along Dublin's Georgian Mile"><div class="shade"></div><div class="wrap"><div class="panel reveal"><p class="eyebrow">04 · Free valuation</p><h2>What is your home worth <em>this season?</em></h2><p class="lead">Book a free, no-obligation valuation. A senior valuer visits, walks every room with you and sends a written figure with the reasoning behind it.</p><ul><li><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 12l5 5L20 6"></path></svg>A visit at a time that suits you</li><li><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 12l5 5L20 6"></path></svg>A written valuation with recent comparable sales</li><li><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 12l5 5L20 6"></path></svg>Honest advice on what to do before you list</li><li><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 12l5 5L20 6"></path></svg>No obligation and no pressure</li></ul><a class="btn" href="#request">Request my valuation</a></div></div></section>	.lv{--ink:#121816;--brass:#B08A52;--brassl:#D2B27E;--paper:#FAF7F1;font-family:'Manrope',system-ui,sans-serif;color:var(--ink)}\n.val{position:relative;min-height:88svh;display:flex;align-items:center;overflow:hidden;padding:clamp(4rem,9vw,7rem) 0}\n.bg{position:absolute;inset:0;width:100%;height:100%;object-fit:cover}\n.shade{position:absolute;inset:0;background:linear-gradient(90deg,rgba(12,16,14,.55),rgba(12,16,14,.1) 70%)}\n.wrap{position:relative;z-index:2;width:min(1320px,92vw);margin:0 auto}\n.panel{background:var(--paper);max-width:560px;padding:clamp(2rem,4.5vw,3.8rem);border-top:4px solid var(--brass);box-shadow:0 40px 80px -30px rgba(0,0,0,.45)}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brass);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.3rem,4.4vw,3.8rem);line-height:1;margin:0}\nh2 em{font-style:italic;font-weight:400;color:var(--brass);display:block}\n.lead{line-height:1.75;color:#5F655F;margin:1.3rem 0 1.6rem}\nul{list-style:none;margin:0 0 2rem;padding:0}\nli{display:flex;gap:.8rem;align-items:flex-start;padding:.7rem 0;border-bottom:1px solid rgba(18,24,22,.1);font-size:.96rem}\nli svg{flex:none;color:var(--brass);margin-top:.15rem}\n.btn{display:inline-block;background:var(--ink);color:#fff;text-decoration:none;padding:1.05rem 1.8rem;font-size:.82rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;transition:background .35s,transform .35s}\n.btn:hover{background:var(--brass);transform:translateY(-2px)}\n@media (prefers-reduced-motion:no-preference){.bg{transition:transform 1.6s}.val:hover .bg{transform:scale(1.03)}}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealV linear both;animation-timeline:view();animation-range:entry 0% cover 30%}}}\n@keyframes lvRevealV{from{opacity:0;transform:translateX(-48px)}to{opacity:1;transform:none}}\n@media (max-width:600px){.val{min-height:0;padding:40vh 0 0}.wrap{width:100%}.panel{max-width:none;box-shadow:none}.shade{background:linear-gradient(180deg,rgba(12,16,14,0),rgba(12,16,14,.3))}.btn{display:block;text-align:center}}	t	6af66b08ff7f070016860994	valuation	\N
6	6	version.layout	13	<section class="lv faq"><div class="wrap"><div class="side reveal"><p class="eyebrow">05 · Questions</p><h2>Good to <em>know</em></h2><p>Anything else, call us. We would rather answer a question than lose a client to guesswork.</p><a href="#contact">Contact the team</a></div><div class="list"><details open=""><summary>How do you value a home?<span></span></summary><p>We visit, measure and look at the condition, the setting and the details that buyers pay for. We then compare against recent sales on the Property Price Register and what we are seeing at viewings, and give you a figure in writing with the reasoning.</p></details><details><summary>What are your fees?<span></span></summary><p>Our fee is a percentage of the sale price, agreed and written into your terms before we start. You pay nothing unless your home sells.</p></details><details><summary>Do you only sell period homes and new builds?<span></span></summary><p>They are our specialism, and most of our list. We are happy to talk about any well-kept home in the areas we cover.</p></details><details><summary>My home is a protected structure. Does that change anything?<span></span></summary><p>It can affect what buyers are allowed to change, so we make sure the paperwork, planning history and conservation details are ready before launch. Prepared buyers bid with confidence.</p></details><details><summary>How long does a sale usually take?<span></span></summary><p>It depends on the home and the market. We give you a realistic timeline at the valuation, from launch to sale agreed and through to closing.</p></details><details><summary>I am buying a new build. Can you help with that?<span></span></summary><p>Yes. We explain the specification, stage payments, snagging and handover so there are no surprises, and we keep you updated through the build.</p></details></div></div></section>	.lv{--ink:#121816;--paper:#FAF7F1;--brass:#B08A52;--muted:#5F655F;--rule:rgba(18,24,22,.14);font-family:'Manrope',system-ui,sans-serif;color:var(--ink)}\n.faq{background:var(--paper);padding:clamp(4.5rem,10vw,8.5rem) 0}\n.wrap{width:min(1320px,92vw);margin:0 auto;display:grid;grid-template-columns:.8fr 1.2fr;gap:clamp(2.5rem,6vw,6rem);align-items:start}\n.side{position:sticky;top:2rem}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brass);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.6rem,5vw,4.8rem);line-height:.98;margin:0 0 1.4rem}\nh2 em{font-style:italic;font-weight:400;color:var(--brass)}\n.side p{color:var(--muted);line-height:1.75;margin:0 0 1.6rem;max-width:24rem}\n.side a{color:var(--ink);text-decoration:none;font-size:.82rem;font-weight:600;letter-spacing:.14em;text-transform:uppercase;border-bottom:1px solid var(--brass);padding-bottom:.35rem;transition:color .3s}\n.side a:hover{color:var(--brass)}\n.list{border-top:1px solid var(--rule)}\ndetails{border-bottom:1px solid var(--rule)}\nsummary{list-style:none;cursor:pointer;display:flex;justify-content:space-between;align-items:center;gap:1.5rem;padding:1.6rem 0;font-family:'Cormorant Garamond',Georgia,serif;font-size:clamp(1.35rem,2vw,1.7rem);font-weight:500;transition:color .3s}\nsummary::-webkit-details-marker{display:none}\nsummary:hover{color:var(--brass)}\nsummary span{position:relative;flex:none;width:18px;height:18px}\nsummary span::before,summary span::after{content:'';position:absolute;left:0;top:50%;width:18px;height:1.5px;background:var(--brass);transition:transform .35s}\nsummary span::after{transform:rotate(90deg)}\ndetails[open] summary span::after{transform:rotate(0)}\ndetails p{margin:0 0 1.7rem;color:var(--muted);line-height:1.8;max-width:42rem}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealF linear both;animation-timeline:view();animation-range:entry 0% cover 25%}}}\n@keyframes lvRevealF{from{opacity:0;transform:translateY(40px)}to{opacity:1;transform:none}}\n@media (max-width:860px){.wrap{grid-template-columns:1fr}.side{position:static}}	t	6af66b08ff7f070016860995	faq	\N
7	6	version.layout	14	<section class="lv contact"><div class="wrap"><div class="big reveal"><p class="eyebrow">06 · Contact</p><h2>Let’s talk about <em>your home.</em></h2></div><div class="grid reveal"><div class="item"><span>Call</span><a href="tel:+35310000000">+353 1 000 0000</a></div><div class="item"><span>Email</span><a href="mailto:hello@lindenandvale.ie">hello@lindenandvale.ie</a></div><div class="item"><span>Office</span><p>Address to be confirmed<br>Dublin</p></div><div class="item"><span>Hours</span><p>Mon to Fri, 9am to 6pm<br>Saturday by appointment</p></div></div><div class="cue reveal"><p>Request your free valuation below. We reply within one working day.</p><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.4"><path d="M12 4v16M5 13l7 7 7-7"></path></svg></div></div></section>	.lv{--ink:#121816;--brass:#B08A52;--brassl:#D2B27E;font-family:'Manrope',system-ui,sans-serif}\n.contact{background:var(--ink);color:#fff;padding:clamp(4.5rem,10vw,8rem) 0 clamp(3rem,6vw,4.5rem)}\n.wrap{width:min(1320px,92vw);margin:0 auto}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brassl);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(3rem,8vw,7.6rem);line-height:.92;letter-spacing:-.02em;margin:0}\nh2 em{font-style:italic;font-weight:400;color:var(--brassl);display:block}\n.grid{display:grid;grid-template-columns:repeat(4,1fr);margin-top:clamp(3rem,6vw,5rem);border-top:1px solid rgba(255,255,255,.16)}\n.item{padding:1.8rem 1.6rem 1.8rem 0;border-right:1px solid rgba(255,255,255,.16);margin-right:1.6rem}\n.item:last-child{border:0;margin:0}\n.item span{display:block;font-size:.72rem;letter-spacing:.2em;text-transform:uppercase;color:rgba(255,255,255,.55);margin-bottom:.8rem}\n.item a,.item p{font-family:'Cormorant Garamond',Georgia,serif;font-size:1.45rem;line-height:1.3;color:#fff;text-decoration:none;margin:0;transition:color .3s;word-break:break-word}\n.item a:hover{color:var(--brassl)}\n.cue{display:flex;align-items:center;justify-content:space-between;gap:1.5rem;margin-top:2.5rem;padding:1.6rem 2rem;border:1px solid rgba(210,178,126,.45);color:var(--brassl)}\n.cue p{margin:0;color:#fff;font-size:1rem}\n@media (prefers-reduced-motion:no-preference){.cue svg{animation:lvNudge 2.2s ease-in-out infinite}}\n@keyframes lvNudge{0%,100%{transform:translateY(0)}50%{transform:translateY(6px)}}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealC linear both;animation-timeline:view();animation-range:entry 0% cover 25%}}}\n@keyframes lvRevealC{from{opacity:0;transform:translateY(40px)}to{opacity:1;transform:none}}\n@media (max-width:900px){.grid{grid-template-columns:1fr 1fr}.item:nth-child(2){border:0;margin-right:0}.item{border-bottom:1px solid rgba(255,255,255,.16)}}\n@media (max-width:520px){.grid{grid-template-columns:1fr}.item{border-right:0;margin-right:0}.cue{padding:1.3rem}}	t	6af66b08ff7f070016860996	contact	\N
1	7	version.layout	15	<section class="lv hero"><img class="hero-img" src="/api/media/file/modern-new-build-home-exterior-with-clean-lines.jpg" alt="Contemporary Dublin home at dusk, lit from within behind floor-to-ceiling glass"><div class="shade"></div><div class="inner"><p class="eyebrow"><span class="rule"></span>Linden &amp; Vale · Estate agents, Dublin</p><h1><span class="l1">Homes with a story.</span><em class="l2">And homes about to start one.</em></h1><div class="bottom"><p class="lede">Georgian, Victorian and Edwardian houses, and the best new builds in the city. Priced with care, presented beautifully, and handled by one agent from valuation to keys.</p><div class="actions"><a class="btn solid" href="#request">Book a free valuation</a><a class="btn line" href="#homes">See featured homes <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M12 5v14M5 12l7 7 7-7"></path></svg></a></div></div></div><div class="strip" aria-label="Areas we cover"><div class="track"><span>Ranelagh</span><span>Rathgar</span><span>Ballsbridge</span><span>Sandymount</span><span>Donnybrook</span><span>Rathmines</span><span>Clontarf</span><span>Monkstown</span><span>Dalkey</span><span>Foxrock</span><span>Ranelagh</span><span>Rathgar</span><span>Ballsbridge</span><span>Sandymount</span><span>Donnybrook</span><span>Rathmines</span><span>Clontarf</span><span>Monkstown</span><span>Dalkey</span><span>Foxrock</span></div></div></section>	@import url('https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;1,400;1,500&family=Manrope:wght@400;500;600;700&display=swap');\n.lv{--ink:#121816;--stone:#F3EEE5;--brass:#B08A52;--brassl:#D2B27E;font-family:'Manrope',system-ui,sans-serif}\n.hero{position:relative;min-height:94svh;display:flex;flex-direction:column;justify-content:flex-end;overflow:hidden;color:#fff;background:var(--ink)}\n.hero-img{position:absolute;inset:0;width:100%;height:100%;object-fit:cover;object-position:center 60%}\n.shade{position:absolute;inset:0;background:linear-gradient(180deg,rgba(10,14,12,.55) 0%,rgba(10,14,12,.05) 35%,rgba(10,14,12,.25) 60%,rgba(10,14,12,.88) 100%)}\n.inner{position:relative;z-index:2;width:min(1320px,92vw);margin:0 auto;padding:18vh 0 4.5rem}\n.eyebrow{display:flex;align-items:center;gap:.9rem;font-size:.78rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brassl);margin:0 0 1.6rem}\n.rule{display:inline-block;width:56px;height:1px;background:var(--brassl)}\nh1{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(3rem,8.4vw,8.6rem);line-height:.92;letter-spacing:-.02em;margin:0;color:#fff}\nh1 span,h1 em{display:block}\nh1 em{font-style:italic;font-weight:400;color:#EADBC2}\n.bottom{display:flex;justify-content:space-between;align-items:flex-end;gap:3rem;margin-top:2.6rem;flex-wrap:wrap}\n.lede{max-width:34rem;font-size:1.08rem;line-height:1.7;color:rgba(255,255,255,.86);margin:0}\n.actions{display:flex;gap:.8rem;flex-wrap:wrap}\n.btn{display:inline-flex;align-items:center;gap:.6rem;padding:1.05rem 1.7rem;font-size:.82rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;text-decoration:none;transition:background .35s,color .35s,border-color .35s,transform .35s}\n.btn.solid{background:var(--brass);color:#fff;border:1px solid var(--brass)}\n.btn.solid:hover{background:#fff;color:var(--ink);border-color:#fff;transform:translateY(-2px)}\n.btn.line{color:#fff;border:1px solid rgba(255,255,255,.5)}\n.btn.line:hover{border-color:#fff;background:rgba(255,255,255,.1);transform:translateY(-2px)}\n.strip{position:relative;z-index:2;border-top:1px solid rgba(255,255,255,.18);overflow:hidden;padding:1.1rem 0;background:rgba(10,14,12,.35);backdrop-filter:blur(6px)}\n.track{display:flex;gap:3.2rem;width:max-content;font-family:'Cormorant Garamond',Georgia,serif;font-style:italic;font-size:1.35rem;color:rgba(255,255,255,.8)}\n.track span{display:inline-flex;align-items:center;gap:3.2rem}\n.track span::after{content:'';width:6px;height:6px;border:1px solid var(--brassl);transform:rotate(45deg)}\n@media (prefers-reduced-motion:no-preference){.hero-img{animation:lvHeroZoom 2.4s cubic-bezier(.2,.7,.2,1) both}.eyebrow,.l1,.l2,.bottom{animation:lvHeroRise 1.1s cubic-bezier(.2,.7,.2,1) both}.l1{animation-delay:.15s}.l2{animation-delay:.3s}.bottom{animation-delay:.5s}.track{animation:lvMarquee 48s linear infinite}}\n@keyframes lvHeroZoom{from{transform:scale(1.12)}to{transform:scale(1)}}\n@keyframes lvHeroRise{from{opacity:0;transform:translateY(28px)}to{opacity:1;transform:none}}\n@keyframes lvMarquee{to{transform:translateX(-50%)}}\n@media (max-width:700px){.hero{min-height:92svh}.inner{padding:14vh 0 2.6rem}.bottom{margin-top:1.8rem;gap:1.6rem}.lede{font-size:1rem}.actions{width:100%}.btn{flex:1 1 100%;justify-content:center}.track{font-size:1.1rem}}	t	6af66b08ff7f070016860990	top	\N
3	7	version.layout	16	<section class="lv svc"><div class="wrap"><header class="head reveal"><p class="eyebrow">02 · Services</p><h2>Selling or buying, <em>you deal with one person.</em></h2></header><div class="cols"><figure class="pic reveal"><img src="/api/media/file/interior-with-classic-details.jpg" alt="Restored hallway with cornicing and herringbone oak floor"><figcaption>Every listing is photographed by an architectural photographer.</figcaption></figure><div class="col reveal"><h3>For sellers</h3><ol><li><span>01</span><div><strong>An honest valuation</strong><p>A senior valuer walks the house with you and puts a figure in writing, backed by recent comparable sales.</p></div></li><li><span>02</span><div><strong>Preparation and styling</strong><p>A practical list of what is worth doing before launch, and what is not. Styling advice included.</p></div></li><li><span>03</span><div><strong>Photography, film and floor plans</strong><p>Architectural photography, a measured floor plan and a printed brochure for every home.</p></div></li><li><span>04</span><div><strong>Accompanied viewings</strong><p>We show the house ourselves, by appointment, and report back after every viewing.</p></div></li><li><span>05</span><div><strong>Negotiation to closing</strong><p>We work with your solicitor until the keys change hands.</p></div></li></ol></div><div class="col reveal"><h3>For buyers</h3><ol><li><span>01</span><div><strong>Early access</strong><p>Register once and hear about new homes before they go to the portals.</p></div></li><li><span>02</span><div><strong>Period home guidance</strong><p>Straight answers on surveys, protected structures, BER upgrades and what a renovation really involves.</p></div></li><li><span>03</span><div><strong>New build guidance</strong><p>Specifications, stage payments, snagging and handover, explained before you commit.</p></div></li><li><span>04</span><div><strong>Clear bidding</strong><p>Transparent offers, recorded and confirmed in writing, every time.</p></div></li></ol><a class="link" href="#contact">Talk to us about buying <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M5 12h14M13 6l6 6-6 6"></path></svg></a></div></div></div></section>	.lv{--ink:#121816;--brass:#B08A52;--brassl:#D2B27E;font-family:'Manrope',system-ui,sans-serif}\n.svc{background:var(--ink);color:#fff;padding:clamp(4.5rem,10vw,8.5rem) 0}\n.wrap{width:min(1320px,92vw);margin:0 auto}\n.head{max-width:62rem;margin-bottom:4rem}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brassl);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.6rem,5.6vw,5.2rem);line-height:.98;letter-spacing:-.015em;margin:0}\nh2 em{font-style:italic;font-weight:400;color:var(--brassl)}\n.cols{display:grid;grid-template-columns:.85fr 1fr 1fr;gap:clamp(2rem,4vw,4rem);align-items:start}\n.pic{margin:0;position:sticky;top:2rem}\n.pic img{width:100%;aspect-ratio:3/4.4;object-fit:cover;display:block;filter:saturate(.9)}\nfigcaption{margin-top:1rem;font-size:.85rem;color:rgba(255,255,255,.6);font-style:italic;font-family:'Cormorant Garamond',Georgia,serif;font-size:1.1rem}\nh3{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:2.2rem;margin:0 0 1.2rem;padding-bottom:1rem;border-bottom:1px solid var(--brass)}\nol{list-style:none;margin:0;padding:0}\nli{display:grid;grid-template-columns:2.6rem 1fr;gap:.6rem;padding:1.3rem 0;border-bottom:1px solid rgba(255,255,255,.12);transition:padding-left .35s}\nli:hover{padding-left:.5rem}\nli span{font-family:'Cormorant Garamond',Georgia,serif;font-style:italic;color:var(--brassl);font-size:1.2rem}\nstrong{display:block;font-weight:600;font-size:1rem;letter-spacing:.01em;margin-bottom:.35rem}\nli p{margin:0;color:rgba(255,255,255,.68);line-height:1.65;font-size:.94rem}\n.link{display:inline-flex;align-items:center;gap:.6rem;margin-top:2rem;color:#fff;text-decoration:none;font-size:.82rem;font-weight:600;letter-spacing:.14em;text-transform:uppercase;border-bottom:1px solid var(--brassl);padding-bottom:.35rem;transition:gap .3s,color .3s}\n.link:hover{gap:1rem;color:var(--brassl)}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealS linear both;animation-timeline:view();animation-range:entry 0% cover 25%}}}\n@keyframes lvRevealS{from{opacity:0;transform:translateY(48px)}to{opacity:1;transform:none}}\n@media (max-width:1000px){.cols{grid-template-columns:1fr 1fr}.pic{grid-column:1 / -1;position:static}.pic img{aspect-ratio:16/10}}\n@media (max-width:680px){.cols{grid-template-columns:1fr}.head{margin-bottom:2.6rem}}	t	6af66b08ff7f070016860992	services	\N
4	7	version.layout	17	<section class="lv why"><div class="wrap"><div class="visual reveal"><img class="a" src="/api/media/file/georgian-house-with-fanlight-doorway-dublin.jpg" alt="Archive photograph of a Georgian Dublin house with fanlight doorway"><img class="b" src="/api/media/file/living-room-interior-with-natural-light.jpg" alt="Contemporary living room with a mustard armchair and brass floor lamp"><p class="cap">Two hundred years apart. <em>Same care.</em></p></div><div class="text"><p class="eyebrow reveal">03 · Why Linden &amp; Vale</p><h2 class="reveal">We take on fewer homes. <em>On purpose.</em></h2><p class="lead reveal">Big agencies spread their time thinly. We keep our list short so every home gets the attention it would get if it were our own.</p><ol class="points"><li class="reveal"><span class="n">I</span><div><h3>Two specialisms, one standard</h3><p>We know the difference between a granite step and a cast-iron railing, and between an A1 and an A2 rating. Period homes and new builds are all we do.</p></div></li><li class="reveal"><span class="n">II</span><div><h3>The same person, start to finish</h3><p>The valuer who walks your house is the agent who runs your viewings, takes your offers and calls you on closing day.</p></div></li><li class="reveal"><span class="n">III</span><div><h3>Presentation that does the selling</h3><p>Architectural photography, honest copy and a printed brochure. Homes that look right attract buyers who are ready.</p></div></li></ol></div></div></section>	.lv{--ink:#121816;--stone:#F1EBE1;--brass:#B08A52;--muted:#5F655F;--rule:rgba(18,24,22,.14);font-family:'Manrope',system-ui,sans-serif;color:var(--ink)}\n.why{background:var(--stone);padding:clamp(4.5rem,10vw,8.5rem) 0;overflow:hidden}\n.wrap{width:min(1320px,92vw);margin:0 auto;display:grid;grid-template-columns:1fr 1fr;gap:clamp(3rem,6vw,6rem);align-items:center}\n.visual{position:relative;padding-bottom:18%;padding-right:12%}\n.visual img{display:block;object-fit:cover;transition:transform 1s cubic-bezier(.2,.7,.2,1)}\n.a{width:100%;aspect-ratio:1/1.08;filter:contrast(1.05)}\n.b{position:absolute;right:0;bottom:0;width:52%;aspect-ratio:4/5;outline:10px solid var(--stone);box-shadow:24px 24px 0 -10px var(--brass)}\n.visual:hover .b{transform:translate(-8px,-8px)}\n.cap{position:absolute;left:0;bottom:2%;margin:0;font-family:'Cormorant Garamond',Georgia,serif;font-size:1.25rem;max-width:40%}\n.cap em{color:var(--brass)}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brass);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.6rem,5vw,4.8rem);line-height:.98;letter-spacing:-.015em;margin:0}\nh2 em{font-style:italic;font-weight:400;color:var(--brass);display:block}\n.lead{font-size:1.1rem;line-height:1.75;color:var(--muted);margin:1.6rem 0 2.2rem;max-width:34rem}\n.points{list-style:none;margin:0;padding:0;border-top:1px solid var(--rule)}\n.points li{display:grid;grid-template-columns:3.4rem 1fr;gap:1rem;padding:1.5rem 0;border-bottom:1px solid var(--rule)}\n.n{font-family:'Cormorant Garamond',Georgia,serif;font-style:italic;font-size:1.6rem;color:var(--brass);line-height:1}\nh3{font-family:'Cormorant Garamond',Georgia,serif;font-weight:600;font-size:1.55rem;margin:0 0 .4rem;line-height:1.15}\n.points p{margin:0;color:var(--muted);line-height:1.7;font-size:.96rem}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealW linear both;animation-timeline:view();animation-range:entry 0% cover 25%}}}\n@keyframes lvRevealW{from{opacity:0;transform:translateY(44px)}to{opacity:1;transform:none}}\n@media (max-width:900px){.wrap{grid-template-columns:1fr}.visual{max-width:560px}}\n@media (max-width:520px){.cap{position:static;max-width:none;margin-top:1.2rem}.visual{padding-bottom:0;padding-right:0}.b{position:relative;width:60%;margin:-30% 0 0 auto}}	t	6af66b08ff7f070016860993	why	\N
5	7	version.layout	18	<section class="lv val"><img class="bg" src="/api/media/file/georgian-terraces-along-dublin-s-georgian-mile.jpg" alt="Georgian red-brick terraces along Dublin's Georgian Mile"><div class="shade"></div><div class="wrap"><div class="panel reveal"><p class="eyebrow">04 · Free valuation</p><h2>What is your home worth <em>this season?</em></h2><p class="lead">Book a free, no-obligation valuation. A senior valuer visits, walks every room with you and sends a written figure with the reasoning behind it.</p><ul><li><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 12l5 5L20 6"></path></svg>A visit at a time that suits you</li><li><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 12l5 5L20 6"></path></svg>A written valuation with recent comparable sales</li><li><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 12l5 5L20 6"></path></svg>Honest advice on what to do before you list</li><li><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 12l5 5L20 6"></path></svg>No obligation and no pressure</li></ul><a class="btn" href="#request">Request my valuation</a></div></div></section>	.lv{--ink:#121816;--brass:#B08A52;--brassl:#D2B27E;--paper:#FAF7F1;font-family:'Manrope',system-ui,sans-serif;color:var(--ink)}\n.val{position:relative;min-height:88svh;display:flex;align-items:center;overflow:hidden;padding:clamp(4rem,9vw,7rem) 0}\n.bg{position:absolute;inset:0;width:100%;height:100%;object-fit:cover}\n.shade{position:absolute;inset:0;background:linear-gradient(90deg,rgba(12,16,14,.55),rgba(12,16,14,.1) 70%)}\n.wrap{position:relative;z-index:2;width:min(1320px,92vw);margin:0 auto}\n.panel{background:var(--paper);max-width:560px;padding:clamp(2rem,4.5vw,3.8rem);border-top:4px solid var(--brass);box-shadow:0 40px 80px -30px rgba(0,0,0,.45)}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brass);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.3rem,4.4vw,3.8rem);line-height:1;margin:0}\nh2 em{font-style:italic;font-weight:400;color:var(--brass);display:block}\n.lead{line-height:1.75;color:#5F655F;margin:1.3rem 0 1.6rem}\nul{list-style:none;margin:0 0 2rem;padding:0}\nli{display:flex;gap:.8rem;align-items:flex-start;padding:.7rem 0;border-bottom:1px solid rgba(18,24,22,.1);font-size:.96rem}\nli svg{flex:none;color:var(--brass);margin-top:.15rem}\n.btn{display:inline-block;background:var(--ink);color:#fff;text-decoration:none;padding:1.05rem 1.8rem;font-size:.82rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;transition:background .35s,transform .35s}\n.btn:hover{background:var(--brass);transform:translateY(-2px)}\n@media (prefers-reduced-motion:no-preference){.bg{transition:transform 1.6s}.val:hover .bg{transform:scale(1.03)}}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealV linear both;animation-timeline:view();animation-range:entry 0% cover 30%}}}\n@keyframes lvRevealV{from{opacity:0;transform:translateX(-48px)}to{opacity:1;transform:none}}\n@media (max-width:600px){.val{min-height:0;padding:40vh 0 0}.wrap{width:100%}.panel{max-width:none;box-shadow:none}.shade{background:linear-gradient(180deg,rgba(12,16,14,0),rgba(12,16,14,.3))}.btn{display:block;text-align:center}}	t	6af66b08ff7f070016860994	valuation	\N
6	7	version.layout	19	<section class="lv faq"><div class="wrap"><div class="side reveal"><p class="eyebrow">05 · Questions</p><h2>Good to <em>know</em></h2><p>Anything else, call us. We would rather answer a question than lose a client to guesswork.</p><a href="#contact">Contact the team</a></div><div class="list"><details open=""><summary>How do you value a home?<span></span></summary><p>We visit, measure and look at the condition, the setting and the details that buyers pay for. We then compare against recent sales on the Property Price Register and what we are seeing at viewings, and give you a figure in writing with the reasoning.</p></details><details><summary>What are your fees?<span></span></summary><p>Our fee is a percentage of the sale price, agreed and written into your terms before we start. You pay nothing unless your home sells.</p></details><details><summary>Do you only sell period homes and new builds?<span></span></summary><p>They are our specialism, and most of our list. We are happy to talk about any well-kept home in the areas we cover.</p></details><details><summary>My home is a protected structure. Does that change anything?<span></span></summary><p>It can affect what buyers are allowed to change, so we make sure the paperwork, planning history and conservation details are ready before launch. Prepared buyers bid with confidence.</p></details><details><summary>How long does a sale usually take?<span></span></summary><p>It depends on the home and the market. We give you a realistic timeline at the valuation, from launch to sale agreed and through to closing.</p></details><details><summary>I am buying a new build. Can you help with that?<span></span></summary><p>Yes. We explain the specification, stage payments, snagging and handover so there are no surprises, and we keep you updated through the build.</p></details></div></div></section>	.lv{--ink:#121816;--paper:#FAF7F1;--brass:#B08A52;--muted:#5F655F;--rule:rgba(18,24,22,.14);font-family:'Manrope',system-ui,sans-serif;color:var(--ink)}\n.faq{background:var(--paper);padding:clamp(4.5rem,10vw,8.5rem) 0}\n.wrap{width:min(1320px,92vw);margin:0 auto;display:grid;grid-template-columns:.8fr 1.2fr;gap:clamp(2.5rem,6vw,6rem);align-items:start}\n.side{position:sticky;top:2rem}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brass);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.6rem,5vw,4.8rem);line-height:.98;margin:0 0 1.4rem}\nh2 em{font-style:italic;font-weight:400;color:var(--brass)}\n.side p{color:var(--muted);line-height:1.75;margin:0 0 1.6rem;max-width:24rem}\n.side a{color:var(--ink);text-decoration:none;font-size:.82rem;font-weight:600;letter-spacing:.14em;text-transform:uppercase;border-bottom:1px solid var(--brass);padding-bottom:.35rem;transition:color .3s}\n.side a:hover{color:var(--brass)}\n.list{border-top:1px solid var(--rule)}\ndetails{border-bottom:1px solid var(--rule)}\nsummary{list-style:none;cursor:pointer;display:flex;justify-content:space-between;align-items:center;gap:1.5rem;padding:1.6rem 0;font-family:'Cormorant Garamond',Georgia,serif;font-size:clamp(1.35rem,2vw,1.7rem);font-weight:500;transition:color .3s}\nsummary::-webkit-details-marker{display:none}\nsummary:hover{color:var(--brass)}\nsummary span{position:relative;flex:none;width:18px;height:18px}\nsummary span::before,summary span::after{content:'';position:absolute;left:0;top:50%;width:18px;height:1.5px;background:var(--brass);transition:transform .35s}\nsummary span::after{transform:rotate(90deg)}\ndetails[open] summary span::after{transform:rotate(0)}\ndetails p{margin:0 0 1.7rem;color:var(--muted);line-height:1.8;max-width:42rem}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealF linear both;animation-timeline:view();animation-range:entry 0% cover 25%}}}\n@keyframes lvRevealF{from{opacity:0;transform:translateY(40px)}to{opacity:1;transform:none}}\n@media (max-width:860px){.wrap{grid-template-columns:1fr}.side{position:static}}	t	6af66b08ff7f070016860995	faq	\N
7	7	version.layout	20	<section class="lv contact"><div class="wrap"><div class="big reveal"><p class="eyebrow">06 · Contact</p><h2>Let’s talk about <em>your home.</em></h2></div><div class="grid reveal"><div class="item"><span>Call</span><a href="tel:+35310000000">+353 1 000 0000</a></div><div class="item"><span>Email</span><a href="mailto:hello@lindenandvale.ie">hello@lindenandvale.ie</a></div><div class="item"><span>Office</span><p>Address to be confirmed<br>Dublin</p></div><div class="item"><span>Hours</span><p>Mon to Fri, 9am to 6pm<br>Saturday by appointment</p></div></div><div class="cue reveal"><p>Request your free valuation below. We reply within one working day.</p><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.4"><path d="M12 4v16M5 13l7 7 7-7"></path></svg></div></div></section>	.lv{--ink:#121816;--brass:#B08A52;--brassl:#D2B27E;font-family:'Manrope',system-ui,sans-serif}\n.contact{background:var(--ink);color:#fff;padding:clamp(4.5rem,10vw,8rem) 0 clamp(3rem,6vw,4.5rem)}\n.wrap{width:min(1320px,92vw);margin:0 auto}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brassl);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(3rem,8vw,7.6rem);line-height:.92;letter-spacing:-.02em;margin:0}\nh2 em{font-style:italic;font-weight:400;color:var(--brassl);display:block}\n.grid{display:grid;grid-template-columns:repeat(4,1fr);margin-top:clamp(3rem,6vw,5rem);border-top:1px solid rgba(255,255,255,.16)}\n.item{padding:1.8rem 1.6rem 1.8rem 0;border-right:1px solid rgba(255,255,255,.16);margin-right:1.6rem}\n.item:last-child{border:0;margin:0}\n.item span{display:block;font-size:.72rem;letter-spacing:.2em;text-transform:uppercase;color:rgba(255,255,255,.55);margin-bottom:.8rem}\n.item a,.item p{font-family:'Cormorant Garamond',Georgia,serif;font-size:1.45rem;line-height:1.3;color:#fff;text-decoration:none;margin:0;transition:color .3s;word-break:break-word}\n.item a:hover{color:var(--brassl)}\n.cue{display:flex;align-items:center;justify-content:space-between;gap:1.5rem;margin-top:2.5rem;padding:1.6rem 2rem;border:1px solid rgba(210,178,126,.45);color:var(--brassl)}\n.cue p{margin:0;color:#fff;font-size:1rem}\n@media (prefers-reduced-motion:no-preference){.cue svg{animation:lvNudge 2.2s ease-in-out infinite}}\n@keyframes lvNudge{0%,100%{transform:translateY(0)}50%{transform:translateY(6px)}}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealC linear both;animation-timeline:view();animation-range:entry 0% cover 25%}}}\n@keyframes lvRevealC{from{opacity:0;transform:translateY(40px)}to{opacity:1;transform:none}}\n@media (max-width:900px){.grid{grid-template-columns:1fr 1fr}.item:nth-child(2){border:0;margin-right:0}.item{border-bottom:1px solid rgba(255,255,255,.16)}}\n@media (max-width:520px){.grid{grid-template-columns:1fr}.item{border-right:0;margin-right:0}.cue{padding:1.3rem}}	t	6af66b08ff7f070016860996	contact	\N
\.


--
-- Data for Name: _pages_v_blocks_embed; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_embed (_order, _parent_id, _path, id, url, caption, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_faq; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_faq (_order, _parent_id, _path, id, heading, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_faq_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_faq_items (_order, _parent_id, id, question, answer, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_features (_order, _parent_id, _path, id, eyebrow, heading, intro, columns, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_features_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_features_items (_order, _parent_id, id, icon, title, description, _uuid, image_id) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_form_block (_order, _parent_id, _path, id, form_id, enable_intro, intro_content, _uuid, block_name) FROM stdin;
8	6	version.layout	3	2	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Request your free valuation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Tell us a little about your home and a senior valuer will call to arrange a visit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	6af66b08ff7f070016860997	request
8	7	version.layout	4	2	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Request your free valuation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Tell us a little about your home and a senior valuer will call to arrange a visit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	6af66b08ff7f070016860997	request
\.


--
-- Data for Name: _pages_v_blocks_gallery; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_gallery (_order, _parent_id, _path, id, heading, columns, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_loop_grid; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_loop_grid (_order, _parent_id, _path, id, heading, collection, "limit", show_filter, load_more, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_media_block (_order, _parent_id, _path, id, media_id, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_pricing; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_pricing (_order, _parent_id, _path, id, eyebrow, heading, intro, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_pricing_plans; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_pricing_plans (_order, _parent_id, id, name, price, period, description, highlighted, link_type, link_new_tab, link_url, link_label, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_pricing_plans_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_pricing_plans_features (_order, _parent_id, id, feature, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_split; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_split (_order, _parent_id, _path, id, media_id, image_position, eyebrow, heading, text, button_label, button_url, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_split_bullets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_split_bullets (_order, _parent_id, id, text, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_stats; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_stats (_order, _parent_id, _path, id, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_stats_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_stats_items (_order, _parent_id, id, value, label, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_testimonials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_testimonials (_order, _parent_id, _path, id, eyebrow, heading, _uuid, block_name) FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_testimonials_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_testimonials_items (_order, _parent_id, id, quote, name, role, photo_id, rating, _uuid) FROM stdin;
\.


--
-- Data for Name: _pages_v_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_rels (id, "order", parent_id, path, pages_id, posts_id, media_id, categories_id) FROM stdin;
\.


--
-- Data for Name: _pages_v_version_hero_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_version_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
\.


--
-- Data for Name: _posts_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._posts_v (id, parent_id, version_title, version_hero_image_id, version_content, version_excerpt, version_sticky, version_allow_comments, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_generate_slug, version_slug, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave, version_meta_focus_keyword, version_meta_og_title, version_meta_og_description, version_meta_canonical_u_r_l, version_meta_noindex) FROM stdin;
\.


--
-- Data for Name: _posts_v_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._posts_v_rels (id, "order", parent_id, path, posts_id, categories_id, tags_id, users_id) FROM stdin;
\.


--
-- Data for Name: _posts_v_version_populated_authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._posts_v_version_populated_authors (_order, _parent_id, id, _uuid, name) FROM stdin;
\.


--
-- Data for Name: activity_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.activity_log (id, summary, who, user_id, action, area, doc_id, ip, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categories (id, title, description, generate_slug, slug, parent_id, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: categories_breadcrumbs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categories_breadcrumbs (_order, _parent_id, id, doc_id, url, label) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.comments (id, post_id, parent_id, author_name, author_email, content, status, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: email_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.email_log (id, subject, "to", status, error, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: footer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.footer (id, updated_at, created_at, about, phone, email, address, hours, designed, design_html, design_css) FROM stdin;
1	2026-11-13 01:42:58.261+00	2026-11-13 01:12:55.629+00	Linden & Vale is a boutique Dublin estate agency for period homes and new builds. One agent, from valuation to keys. PSRA licence no. to be added.	+353 1 000 0000	hello@lindenandvale.ie	Address to be confirmed, Dublin	Mon to Fri: 9am to 6pm\nSaturday: by appointment	f	\N	\N
\.


--
-- Data for Name: footer_nav_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.footer_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	6af66b22ff7f07001686099e	custom	\N	/#homes	Featured homes
2	1	6af66b22ff7f07001686099f	custom	\N	/#services	Services
3	1	6af66b22ff7f0700168609a0	custom	\N	/#faq	FAQ
4	1	6af66b22ff7f0700168609a1	custom	\N	/#request	Free valuation
\.


--
-- Data for Name: footer_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.footer_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: footer_social; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.footer_social (_order, _parent_id, id, platform, url) FROM stdin;
\.


--
-- Data for Name: form_submissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.form_submissions (id, form_id, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: form_submissions_submission_data; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.form_submissions_submission_data (_order, _parent_id, id, field, value) FROM stdin;
\.


--
-- Data for Name: forms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms (id, title, submit_button_label, confirmation_type, confirmation_message, redirect_url, updated_at, created_at) FROM stdin;
1	Happy Paws booking request	Request a booking	message	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Thanks! We'll be in touch within one working day to confirm your dog's appointment.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	\N	2026-11-13 00:14:24.891+00	2026-11-13 00:14:24.891+00
2	Linden & Vale valuation request	Request my free valuation	message	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Thank you. One of our valuers will call you within one working day to arrange a time to see your home.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	2026-11-13 01:38:44.665+00	2026-11-13 01:38:44.664+00
\.


--
-- Data for Name: forms_blocks_checkbox; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_checkbox (_order, _parent_id, _path, id, name, label, width, required, default_value, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_country; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_country (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_email; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_email (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
2	1	fields	6af65660dbbd8a001699b33b	email	Email	50	t	\N
2	2	fields	6af66a24ff7f070016860981	email	Email	50	t	\N
\.


--
-- Data for Name: forms_blocks_message; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_message (_order, _parent_id, _path, id, message, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_number; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_number (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_select; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_select (_order, _parent_id, _path, id, name, label, width, default_value, placeholder, required, block_name) FROM stdin;
5	1	fields	6af65660dbbd8a001699b341	service	Service	100	\N	\N	t	\N
5	2	fields	6af66a24ff7f070016860989	propertyType	Property type	50	\N	\N	\N	\N
6	2	fields	6af66a24ff7f07001686098e	timeframe	When are you thinking of selling?	50	\N	\N	\N	\N
\.


--
-- Data for Name: forms_blocks_select_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_select_options (_order, _parent_id, id, label, value) FROM stdin;
1	6af65660dbbd8a001699b341	6af65660dbbd8a001699b33e	Full Groom	full-groom
2	6af65660dbbd8a001699b341	6af65660dbbd8a001699b33f	Bath & Tidy	bath-tidy
3	6af65660dbbd8a001699b341	6af65660dbbd8a001699b340	Puppy's First Groom	puppy
1	6af66a24ff7f070016860989	6af66a24ff7f070016860984	Georgian or Victorian period home	period
2	6af66a24ff7f070016860989	6af66a24ff7f070016860985	Edwardian or 1930s home	early-20th
3	6af66a24ff7f070016860989	6af66a24ff7f070016860986	New build or recent home	new-build
4	6af66a24ff7f070016860989	6af66a24ff7f070016860987	Apartment or penthouse	apartment
5	6af66a24ff7f070016860989	6af66a24ff7f070016860988	Other	other
1	6af66a24ff7f07001686098e	6af66a24ff7f07001686098a	Within 3 months	0-3
2	6af66a24ff7f07001686098e	6af66a24ff7f07001686098b	3 to 6 months	3-6
3	6af66a24ff7f07001686098e	6af66a24ff7f07001686098c	6 to 12 months	6-12
4	6af66a24ff7f07001686098e	6af66a24ff7f07001686098d	Just curious for now	curious
\.


--
-- Data for Name: forms_blocks_state; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_state (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_text; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_text (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
1	1	fields	6af65660dbbd8a001699b33a	name	Your name	50	\N	t	\N
3	1	fields	6af65660dbbd8a001699b33c	phone	Phone	50	\N	t	\N
4	1	fields	6af65660dbbd8a001699b33d	dog	Dog's name and breed	50	\N	t	\N
1	2	fields	6af66a24ff7f070016860980	name	Full name	50	\N	t	\N
3	2	fields	6af66a24ff7f070016860982	phone	Phone	50	\N	t	\N
4	2	fields	6af66a24ff7f070016860983	address	Property address or Eircode	50	\N	t	\N
\.


--
-- Data for Name: forms_blocks_textarea; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_blocks_textarea (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
6	1	fields	6af65660dbbd8a001699b342	notes	Preferred days and anything we should know	100	\N	f	\N
7	2	fields	6af66a24ff7f07001686098f	message	Anything we should know? (optional)	100	\N	\N	\N
\.


--
-- Data for Name: forms_emails; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.forms_emails (_order, _parent_id, id, email_to, cc, bcc, reply_to, email_from, subject, message) FROM stdin;
\.


--
-- Data for Name: header; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.header (id, updated_at, created_at, button_label, button_url, designed, design_html, design_css) FROM stdin;
1	2026-11-13 01:42:56.339+00	2026-11-13 00:15:01.575+00	Free valuation	/#request	f	\N	\N
\.


--
-- Data for Name: header_nav_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.header_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	6af66b20ff7f070016860998	custom	\N	/#homes	Homes
2	1	6af66b20ff7f070016860999	custom	\N	/#services	Sell & buy
3	1	6af66b20ff7f07001686099a	custom	\N	/#why	Why us
4	1	6af66b20ff7f07001686099b	custom	\N	/#valuation	Valuation
5	1	6af66b20ff7f07001686099c	custom	\N	/#faq	FAQ
6	1	6af66b20ff7f07001686099d	custom	\N	/#contact	Contact
\.


--
-- Data for Name: header_nav_items_children; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.header_nav_items_children (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
\.


--
-- Data for Name: header_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.header_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.media (id, alt, caption, folder_id, updated_at, created_at, url, thumbnail_u_r_l, filename, mime_type, filesize, width, height, focal_x, focal_y, sizes_thumbnail_url, sizes_thumbnail_width, sizes_thumbnail_height, sizes_thumbnail_mime_type, sizes_thumbnail_filesize, sizes_thumbnail_filename, sizes_square_url, sizes_square_width, sizes_square_height, sizes_square_mime_type, sizes_square_filesize, sizes_square_filename, sizes_small_url, sizes_small_width, sizes_small_height, sizes_small_mime_type, sizes_small_filesize, sizes_small_filename, sizes_medium_url, sizes_medium_width, sizes_medium_height, sizes_medium_mime_type, sizes_medium_filesize, sizes_medium_filename, sizes_large_url, sizes_large_width, sizes_large_height, sizes_large_mime_type, sizes_large_filesize, sizes_large_filename, sizes_xlarge_url, sizes_xlarge_width, sizes_xlarge_height, sizes_xlarge_mime_type, sizes_xlarge_filesize, sizes_xlarge_filename, sizes_og_url, sizes_og_width, sizes_og_height, sizes_og_mime_type, sizes_og_filesize, sizes_og_filename) FROM stdin;
17	Contemporary family home at dusk with warm lights glowing through large windows	\N	\N	2026-11-13 01:36:23.093+00	2026-11-13 01:36:23.093+00	/api/media/file/contemporary-family-home-at-dusk-with-warm-lights-glowing-th.jpg	\N	contemporary-family-home-at-dusk-with-warm-lights-glowing-th.jpg	image/jpeg	558922	2400	1592	50	50	/api/media/file/contemporary-family-home-at-dusk-with-warm-lights-glowing-th-300x199.jpg	300	199	image/jpeg	12969	contemporary-family-home-at-dusk-with-warm-lights-glowing-th-300x199.jpg	/api/media/file/contemporary-family-home-at-dusk-with-warm-lights-glowing-th-500x500.jpg	500	500	image/jpeg	42170	contemporary-family-home-at-dusk-with-warm-lights-glowing-th-500x500.jpg	/api/media/file/contemporary-family-home-at-dusk-with-warm-lights-glowing-th-600x398.jpg	600	398	image/jpeg	40067	contemporary-family-home-at-dusk-with-warm-lights-glowing-th-600x398.jpg	/api/media/file/contemporary-family-home-at-dusk-with-warm-lights-glowing-th-900x597.jpg	900	597	image/jpeg	81031	contemporary-family-home-at-dusk-with-warm-lights-glowing-th-900x597.jpg	/api/media/file/contemporary-family-home-at-dusk-with-warm-lights-glowing-th-1400x929.jpg	1400	929	image/jpeg	171418	contemporary-family-home-at-dusk-with-warm-lights-glowing-th-1400x929.jpg	/api/media/file/contemporary-family-home-at-dusk-with-warm-lights-glowing-th-1920x1274.jpg	1920	1274	image/jpeg	293835	contemporary-family-home-at-dusk-with-warm-lights-glowing-th-1920x1274.jpg	/api/media/file/contemporary-family-home-at-dusk-with-warm-lights-glowing-th-1200x630.jpg	1200	630	image/jpeg	112178	contemporary-family-home-at-dusk-with-warm-lights-glowing-th-1200x630.jpg
18	Modern new-build home exterior with clean lines	\N	\N	2026-11-13 01:36:28.913+00	2026-11-13 01:36:28.912+00	/api/media/file/modern-new-build-home-exterior-with-clean-lines.jpg	\N	modern-new-build-home-exterior-with-clean-lines.jpg	image/jpeg	500808	1800	1200	50	50	/api/media/file/modern-new-build-home-exterior-with-clean-lines-300x200.jpg	300	200	image/jpeg	17913	modern-new-build-home-exterior-with-clean-lines-300x200.jpg	/api/media/file/modern-new-build-home-exterior-with-clean-lines-500x500.jpg	500	500	image/jpeg	61993	modern-new-build-home-exterior-with-clean-lines-500x500.jpg	/api/media/file/modern-new-build-home-exterior-with-clean-lines-600x400.jpg	600	400	image/jpeg	60356	modern-new-build-home-exterior-with-clean-lines-600x400.jpg	/api/media/file/modern-new-build-home-exterior-with-clean-lines-900x600.jpg	900	600	image/jpeg	125352	modern-new-build-home-exterior-with-clean-lines-900x600.jpg	/api/media/file/modern-new-build-home-exterior-with-clean-lines-1400x933.jpg	1400	933	image/jpeg	276598	modern-new-build-home-exterior-with-clean-lines-1400x933.jpg	\N	\N	\N	\N	\N	\N	/api/media/file/modern-new-build-home-exterior-with-clean-lines-1200x630.jpg	1200	630	image/jpeg	168186	modern-new-build-home-exterior-with-clean-lines-1200x630.jpg
19	Bright open-plan living room with large windows	\N	\N	2026-11-13 01:36:31.984+00	2026-11-13 01:36:31.984+00	/api/media/file/bright-open-plan-living-room-with-large-windows.jpg	\N	bright-open-plan-living-room-with-large-windows.jpg	image/jpeg	376925	1800	1224	50	50	/api/media/file/bright-open-plan-living-room-with-large-windows-300x204.jpg	300	204	image/jpeg	14018	bright-open-plan-living-room-with-large-windows-300x204.jpg	/api/media/file/bright-open-plan-living-room-with-large-windows-500x500.jpg	500	500	image/jpeg	42507	bright-open-plan-living-room-with-large-windows-500x500.jpg	/api/media/file/bright-open-plan-living-room-with-large-windows-600x408.jpg	600	408	image/jpeg	44205	bright-open-plan-living-room-with-large-windows-600x408.jpg	/api/media/file/bright-open-plan-living-room-with-large-windows-900x612.jpg	900	612	image/jpeg	90773	bright-open-plan-living-room-with-large-windows-900x612.jpg	/api/media/file/bright-open-plan-living-room-with-large-windows-1400x952.jpg	1400	952	image/jpeg	197384	bright-open-plan-living-room-with-large-windows-1400x952.jpg	\N	\N	\N	\N	\N	\N	/api/media/file/bright-open-plan-living-room-with-large-windows-1200x630.jpg	1200	630	image/jpeg	116465	bright-open-plan-living-room-with-large-windows-1200x630.jpg
21	Calm living room with sofa and soft daylight	\N	\N	2026-11-13 01:36:38.058+00	2026-11-13 01:36:38.058+00	/api/media/file/calm-living-room-with-sofa-and-soft-daylight.jpg	\N	calm-living-room-with-sofa-and-soft-daylight.jpg	image/jpeg	415338	1800	1350	50	50	/api/media/file/calm-living-room-with-sofa-and-soft-daylight-300x225.jpg	300	225	image/jpeg	17702	calm-living-room-with-sofa-and-soft-daylight-300x225.jpg	/api/media/file/calm-living-room-with-sofa-and-soft-daylight-500x500.jpg	500	500	image/jpeg	51085	calm-living-room-with-sofa-and-soft-daylight-500x500.jpg	/api/media/file/calm-living-room-with-sofa-and-soft-daylight-600x450.jpg	600	450	image/jpeg	54949	calm-living-room-with-sofa-and-soft-daylight-600x450.jpg	/api/media/file/calm-living-room-with-sofa-and-soft-daylight-900x675.jpg	900	675	image/jpeg	107246	calm-living-room-with-sofa-and-soft-daylight-900x675.jpg	/api/media/file/calm-living-room-with-sofa-and-soft-daylight-1400x1050.jpg	1400	1050	image/jpeg	219726	calm-living-room-with-sofa-and-soft-daylight-1400x1050.jpg	\N	\N	\N	\N	\N	\N	/api/media/file/calm-living-room-with-sofa-and-soft-daylight-1200x630.jpg	1200	630	image/jpeg	134754	calm-living-room-with-sofa-and-soft-daylight-1200x630.jpg
22	Period interior with tall windows and classic details	\N	\N	2026-11-13 01:36:41.821+00	2026-11-13 01:36:41.821+00	/api/media/file/period-interior-with-tall-windows-and-classic-details.jpg	\N	period-interior-with-tall-windows-and-classic-details.jpg	image/jpeg	200454	1800	1202	50	50	/api/media/file/period-interior-with-tall-windows-and-classic-details-300x200.jpg	300	200	image/jpeg	8879	period-interior-with-tall-windows-and-classic-details-300x200.jpg	/api/media/file/period-interior-with-tall-windows-and-classic-details-500x500.jpg	500	500	image/jpeg	27523	period-interior-with-tall-windows-and-classic-details-500x500.jpg	/api/media/file/period-interior-with-tall-windows-and-classic-details-600x401.jpg	600	401	image/jpeg	26504	period-interior-with-tall-windows-and-classic-details-600x401.jpg	/api/media/file/period-interior-with-tall-windows-and-classic-details-900x601.jpg	900	601	image/jpeg	51586	period-interior-with-tall-windows-and-classic-details-900x601.jpg	/api/media/file/period-interior-with-tall-windows-and-classic-details-1400x935.jpg	1400	935	image/jpeg	104032	period-interior-with-tall-windows-and-classic-details-1400x935.jpg	\N	\N	\N	\N	\N	\N	/api/media/file/period-interior-with-tall-windows-and-classic-details-1200x630.jpg	1200	630	image/jpeg	66095	period-interior-with-tall-windows-and-classic-details-1200x630.jpg
23	Georgian red-brick terrace on Henrietta Street, Dublin	\N	\N	2026-11-13 01:37:09.608+00	2026-11-13 01:37:09.608+00	/api/media/file/georgian-red-brick-terrace-on-henrietta-street-dublin.jpg	\N	georgian-red-brick-terrace-on-henrietta-street-dublin.jpg	image/jpeg	2978036	3840	2560	50	50	/api/media/file/georgian-red-brick-terrace-on-henrietta-street-dublin-300x200.jpg	300	200	image/jpeg	17950	georgian-red-brick-terrace-on-henrietta-street-dublin-300x200.jpg	/api/media/file/georgian-red-brick-terrace-on-henrietta-street-dublin-500x500.jpg	500	500	image/jpeg	65085	georgian-red-brick-terrace-on-henrietta-street-dublin-500x500.jpg	/api/media/file/georgian-red-brick-terrace-on-henrietta-street-dublin-600x400.jpg	600	400	image/jpeg	63771	georgian-red-brick-terrace-on-henrietta-street-dublin-600x400.jpg	/api/media/file/georgian-red-brick-terrace-on-henrietta-street-dublin-900x600.jpg	900	600	image/jpeg	137896	georgian-red-brick-terrace-on-henrietta-street-dublin-900x600.jpg	/api/media/file/georgian-red-brick-terrace-on-henrietta-street-dublin-1400x933.jpg	1400	933	image/jpeg	329742	georgian-red-brick-terrace-on-henrietta-street-dublin-1400x933.jpg	/api/media/file/georgian-red-brick-terrace-on-henrietta-street-dublin-1920x1280.jpg	1920	1280	image/jpeg	610525	georgian-red-brick-terrace-on-henrietta-street-dublin-1920x1280.jpg	/api/media/file/georgian-red-brick-terrace-on-henrietta-street-dublin-1200x630.jpg	1200	630	image/jpeg	193525	georgian-red-brick-terrace-on-henrietta-street-dublin-1200x630.jpg
24	Georgian terraces along Dublin's Georgian Mile	\N	\N	2026-11-13 01:37:21.94+00	2026-11-13 01:37:21.94+00	/api/media/file/georgian-terraces-along-dublin-s-georgian-mile.jpg	\N	georgian-terraces-along-dublin-s-georgian-mile.jpg	image/jpeg	1537994	3840	2401	50	50	/api/media/file/georgian-terraces-along-dublin-s-georgian-mile-300x188.jpg	300	188	image/jpeg	17164	georgian-terraces-along-dublin-s-georgian-mile-300x188.jpg	/api/media/file/georgian-terraces-along-dublin-s-georgian-mile-500x500.jpg	500	500	image/jpeg	53725	georgian-terraces-along-dublin-s-georgian-mile-500x500.jpg	/api/media/file/georgian-terraces-along-dublin-s-georgian-mile-600x375.jpg	600	375	image/jpeg	60228	georgian-terraces-along-dublin-s-georgian-mile-600x375.jpg	/api/media/file/georgian-terraces-along-dublin-s-georgian-mile-900x563.jpg	900	563	image/jpeg	126884	georgian-terraces-along-dublin-s-georgian-mile-900x563.jpg	/api/media/file/georgian-terraces-along-dublin-s-georgian-mile-1400x875.jpg	1400	875	image/jpeg	271114	georgian-terraces-along-dublin-s-georgian-mile-1400x875.jpg	/api/media/file/georgian-terraces-along-dublin-s-georgian-mile-1920x1201.jpg	1920	1201	image/jpeg	445495	georgian-terraces-along-dublin-s-georgian-mile-1920x1201.jpg	/api/media/file/georgian-terraces-along-dublin-s-georgian-mile-1200x630.jpg	1200	630	image/jpeg	188445	georgian-terraces-along-dublin-s-georgian-mile-1200x630.jpg
26	Living room interior with natural light	\N	\N	2026-11-13 01:37:30.979+00	2026-11-13 01:37:30.979+00	/api/media/file/living-room-interior-with-natural-light.jpg	\N	living-room-interior-with-natural-light.jpg	image/jpeg	336875	1800	1588	50	50	/api/media/file/living-room-interior-with-natural-light-300x265.jpg	300	265	image/jpeg	11097	living-room-interior-with-natural-light-300x265.jpg	/api/media/file/living-room-interior-with-natural-light-500x500.jpg	500	500	image/jpeg	28446	living-room-interior-with-natural-light-500x500.jpg	/api/media/file/living-room-interior-with-natural-light-600x529.jpg	600	529	image/jpeg	33359	living-room-interior-with-natural-light-600x529.jpg	/api/media/file/living-room-interior-with-natural-light-900x794.jpg	900	794	image/jpeg	67913	living-room-interior-with-natural-light-900x794.jpg	/api/media/file/living-room-interior-with-natural-light-1400x1235.jpg	1400	1235	image/jpeg	153586	living-room-interior-with-natural-light-1400x1235.jpg	\N	\N	\N	\N	\N	\N	/api/media/file/living-room-interior-with-natural-light-1200x630.jpg	1200	630	image/jpeg	66904	living-room-interior-with-natural-light-1200x630.jpg
27	White kitchen with timber worktops and natural light	\N	\N	2026-11-13 01:37:34.052+00	2026-11-13 01:37:34.051+00	/api/media/file/white-kitchen-with-timber-worktops-and-natural-light.jpg	\N	white-kitchen-with-timber-worktops-and-natural-light.jpg	image/jpeg	229096	1800	1196	50	50	/api/media/file/white-kitchen-with-timber-worktops-and-natural-light-300x199.jpg	300	199	image/jpeg	10853	white-kitchen-with-timber-worktops-and-natural-light-300x199.jpg	/api/media/file/white-kitchen-with-timber-worktops-and-natural-light-500x500.jpg	500	500	image/jpeg	30879	white-kitchen-with-timber-worktops-and-natural-light-500x500.jpg	/api/media/file/white-kitchen-with-timber-worktops-and-natural-light-600x399.jpg	600	399	image/jpeg	30739	white-kitchen-with-timber-worktops-and-natural-light-600x399.jpg	/api/media/file/white-kitchen-with-timber-worktops-and-natural-light-900x598.jpg	900	598	image/jpeg	58484	white-kitchen-with-timber-worktops-and-natural-light-900x598.jpg	/api/media/file/white-kitchen-with-timber-worktops-and-natural-light-1400x930.jpg	1400	930	image/jpeg	116985	white-kitchen-with-timber-worktops-and-natural-light-1400x930.jpg	\N	\N	\N	\N	\N	\N	/api/media/file/white-kitchen-with-timber-worktops-and-natural-light-1200x630.jpg	1200	630	image/jpeg	73831	white-kitchen-with-timber-worktops-and-natural-light-1200x630.jpg
28	Victorian red-brick townhouses on Leinster Road, Rathmines	\N	\N	2026-11-13 01:37:42.031+00	2026-11-13 01:37:42.031+00	/api/media/file/victorian-red-brick-townhouses-on-leinster-road-rathmines.jpg	\N	victorian-red-brick-townhouses-on-leinster-road-rathmines.jpg	image/jpeg	3460551	3840	2560	50	50	/api/media/file/victorian-red-brick-townhouses-on-leinster-road-rathmines-300x200.jpg	300	200	image/jpeg	20935	victorian-red-brick-townhouses-on-leinster-road-rathmines-300x200.jpg	/api/media/file/victorian-red-brick-townhouses-on-leinster-road-rathmines-500x500.jpg	500	500	image/jpeg	84841	victorian-red-brick-townhouses-on-leinster-road-rathmines-500x500.jpg	/api/media/file/victorian-red-brick-townhouses-on-leinster-road-rathmines-600x400.jpg	600	400	image/jpeg	82755	victorian-red-brick-townhouses-on-leinster-road-rathmines-600x400.jpg	/api/media/file/victorian-red-brick-townhouses-on-leinster-road-rathmines-900x600.jpg	900	600	image/jpeg	185320	victorian-red-brick-townhouses-on-leinster-road-rathmines-900x600.jpg	/api/media/file/victorian-red-brick-townhouses-on-leinster-road-rathmines-1400x933.jpg	1400	933	image/jpeg	438406	victorian-red-brick-townhouses-on-leinster-road-rathmines-1400x933.jpg	/api/media/file/victorian-red-brick-townhouses-on-leinster-road-rathmines-1920x1280.jpg	1920	1280	image/jpeg	789793	victorian-red-brick-townhouses-on-leinster-road-rathmines-1920x1280.jpg	/api/media/file/victorian-red-brick-townhouses-on-leinster-road-rathmines-1200x630.jpg	1200	630	image/jpeg	273082	victorian-red-brick-townhouses-on-leinster-road-rathmines-1200x630.jpg
29	Georgian house with fanlight doorway, Dublin	\N	\N	2026-11-13 01:37:46.398+00	2026-11-13 01:37:46.398+00	/api/media/file/georgian-house-with-fanlight-doorway-dublin.jpg	\N	georgian-house-with-fanlight-doorway-dublin.jpg	image/jpeg	2460411	2000	1987	50	50	/api/media/file/georgian-house-with-fanlight-doorway-dublin-300x298.jpg	300	298	image/jpeg	24587	georgian-house-with-fanlight-doorway-dublin-300x298.jpg	/api/media/file/georgian-house-with-fanlight-doorway-dublin-500x500.jpg	500	500	image/jpeg	70356	georgian-house-with-fanlight-doorway-dublin-500x500.jpg	/api/media/file/georgian-house-with-fanlight-doorway-dublin-600x596.jpg	600	596	image/jpeg	99445	georgian-house-with-fanlight-doorway-dublin-600x596.jpg	/api/media/file/georgian-house-with-fanlight-doorway-dublin-900x894.jpg	900	894	image/jpeg	211996	georgian-house-with-fanlight-doorway-dublin-900x894.jpg	/api/media/file/georgian-house-with-fanlight-doorway-dublin-1400x1391.jpg	1400	1391	image/jpeg	445248	georgian-house-with-fanlight-doorway-dublin-1400x1391.jpg	/api/media/file/georgian-house-with-fanlight-doorway-dublin-1920x1908.jpg	1920	1908	image/jpeg	721316	georgian-house-with-fanlight-doorway-dublin-1920x1908.jpg	/api/media/file/georgian-house-with-fanlight-doorway-dublin-1200x630.jpg	1200	630	image/jpeg	185648	georgian-house-with-fanlight-doorway-dublin-1200x630.jpg
30	Red-brick Victorian houses in Rathgar, Dublin	\N	\N	2026-11-13 01:37:51.623+00	2026-11-13 01:37:51.623+00	/api/media/file/red-brick-victorian-houses-in-rathgar-dublin.jpg	\N	red-brick-victorian-houses-in-rathgar-dublin.jpg	image/jpeg	2979164	3840	2246	50	50	/api/media/file/red-brick-victorian-houses-in-rathgar-dublin-300x175.jpg	300	175	image/jpeg	15825	red-brick-victorian-houses-in-rathgar-dublin-300x175.jpg	/api/media/file/red-brick-victorian-houses-in-rathgar-dublin-500x500.jpg	500	500	image/jpeg	61472	red-brick-victorian-houses-in-rathgar-dublin-500x500.jpg	/api/media/file/red-brick-victorian-houses-in-rathgar-dublin-600x351.jpg	600	351	image/jpeg	59266	red-brick-victorian-houses-in-rathgar-dublin-600x351.jpg	/api/media/file/red-brick-victorian-houses-in-rathgar-dublin-900x526.jpg	900	526	image/jpeg	132399	red-brick-victorian-houses-in-rathgar-dublin-900x526.jpg	/api/media/file/red-brick-victorian-houses-in-rathgar-dublin-1400x819.jpg	1400	819	image/jpeg	330461	red-brick-victorian-houses-in-rathgar-dublin-1400x819.jpg	/api/media/file/red-brick-victorian-houses-in-rathgar-dublin-1920x1123.jpg	1920	1123	image/jpeg	629156	red-brick-victorian-houses-in-rathgar-dublin-1920x1123.jpg	/api/media/file/red-brick-victorian-houses-in-rathgar-dublin-1200x630.jpg	1200	630	image/jpeg	218342	red-brick-victorian-houses-in-rathgar-dublin-1200x630.jpg
31	Victorian terraced houses on Shandon Crescent, Dublin	\N	\N	2026-11-13 01:38:03.627+00	2026-11-13 01:38:03.627+00	/api/media/file/victorian-terraced-houses-on-shandon-crescent-dublin.jpg	\N	victorian-terraced-houses-on-shandon-crescent-dublin.jpg	image/jpeg	3890434	3840	2564	50	50	/api/media/file/victorian-terraced-houses-on-shandon-crescent-dublin-300x200.jpg	300	200	image/jpeg	20334	victorian-terraced-houses-on-shandon-crescent-dublin-300x200.jpg	/api/media/file/victorian-terraced-houses-on-shandon-crescent-dublin-500x500.jpg	500	500	image/jpeg	81602	victorian-terraced-houses-on-shandon-crescent-dublin-500x500.jpg	/api/media/file/victorian-terraced-houses-on-shandon-crescent-dublin-600x401.jpg	600	401	image/jpeg	78399	victorian-terraced-houses-on-shandon-crescent-dublin-600x401.jpg	/api/media/file/victorian-terraced-houses-on-shandon-crescent-dublin-900x601.jpg	900	601	image/jpeg	175288	victorian-terraced-houses-on-shandon-crescent-dublin-900x601.jpg	/api/media/file/victorian-terraced-houses-on-shandon-crescent-dublin-1400x935.jpg	1400	935	image/jpeg	434231	victorian-terraced-houses-on-shandon-crescent-dublin-1400x935.jpg	/api/media/file/victorian-terraced-houses-on-shandon-crescent-dublin-1920x1282.jpg	1920	1282	image/jpeg	826332	victorian-terraced-houses-on-shandon-crescent-dublin-1920x1282.jpg	/api/media/file/victorian-terraced-houses-on-shandon-crescent-dublin-1200x630.jpg	1200	630	image/jpeg	246755	victorian-terraced-houses-on-shandon-crescent-dublin-1200x630.jpg
32	Detached family home exterior	\N	\N	2026-11-13 01:38:11.7+00	2026-11-13 01:38:11.7+00	/api/media/file/detached-family-home-exterior.jpg	\N	detached-family-home-exterior.jpg	image/jpeg	528476	1800	1510	50	50	/api/media/file/detached-family-home-exterior-300x252.jpg	300	252	image/jpeg	14903	detached-family-home-exterior-300x252.jpg	/api/media/file/detached-family-home-exterior-500x500.jpg	500	500	image/jpeg	44461	detached-family-home-exterior-500x500.jpg	/api/media/file/detached-family-home-exterior-600x503.jpg	600	503	image/jpeg	50866	detached-family-home-exterior-600x503.jpg	/api/media/file/detached-family-home-exterior-900x755.jpg	900	755	image/jpeg	114753	detached-family-home-exterior-900x755.jpg	/api/media/file/detached-family-home-exterior-1400x1174.jpg	1400	1174	image/jpeg	268941	detached-family-home-exterior-1400x1174.jpg	\N	\N	\N	\N	\N	\N	/api/media/file/detached-family-home-exterior-1200x630.jpg	1200	630	image/jpeg	110325	detached-family-home-exterior-1200x630.jpg
34	Bright home interior	\N	\N	2026-11-13 01:38:17.613+00	2026-11-13 01:38:17.613+00	/api/media/file/bright-home-interior.jpg	\N	bright-home-interior.jpg	image/jpeg	313986	1800	1200	50	50	/api/media/file/bright-home-interior-300x200.jpg	300	200	image/jpeg	14404	bright-home-interior-300x200.jpg	/api/media/file/bright-home-interior-500x500.jpg	500	500	image/jpeg	42025	bright-home-interior-500x500.jpg	/api/media/file/bright-home-interior-600x400.jpg	600	400	image/jpeg	45001	bright-home-interior-600x400.jpg	/api/media/file/bright-home-interior-900x600.jpg	900	600	image/jpeg	87985	bright-home-interior-900x600.jpg	/api/media/file/bright-home-interior-1400x933.jpg	1400	933	image/jpeg	177608	bright-home-interior-1400x933.jpg	\N	\N	\N	\N	\N	\N	/api/media/file/bright-home-interior-1200x630.jpg	1200	630	image/jpeg	120566	bright-home-interior-1200x630.jpg
35	Hallway with cornicing and herringbone oak floor	\N	\N	2026-11-13 02:49:34.852+00	2026-11-13 01:38:22.561+00	/api/media/file/interior-with-classic-details.jpg	/api/media/file/interior-with-classic-details-300x533.jpg	interior-with-classic-details.jpg	image/jpeg	982173	1800	3200	50	50	/api/media/file/interior-with-classic-details-300x533.jpg	300	533	image/jpeg	33881	interior-with-classic-details-300x533.jpg	/api/media/file/interior-with-classic-details-500x500.jpg	500	500	image/jpeg	47664	interior-with-classic-details-500x500.jpg	/api/media/file/interior-with-classic-details-600x1067.jpg	600	1067	image/jpeg	122887	interior-with-classic-details-600x1067.jpg	/api/media/file/interior-with-classic-details-900x1600.jpg	900	1600	image/jpeg	260539	interior-with-classic-details-900x1600.jpg	/api/media/file/interior-with-classic-details-1400x2489.jpg	1400	2489	image/jpeg	546522	interior-with-classic-details-1400x2489.jpg	\N	\N	\N	\N	\N	\N	/api/media/file/interior-with-classic-details-1200x630.jpg	1200	630	image/jpeg	104456	interior-with-classic-details-1200x630.jpg
36	Large kitchen with a centre island and marble worktops	\N	\N	2026-11-13 02:43:59.526+00	2026-11-13 02:43:59.524+00	/api/media/file/large-kitchen-with-a-centre-island-and-marble-worktops.jpg	\N	large-kitchen-with-a-centre-island-and-marble-worktops.jpg	image/jpeg	402010	2000	1333	50	50	/api/media/file/large-kitchen-with-a-centre-island-and-marble-worktops-300x200.jpg	300	200	image/jpeg	10899	large-kitchen-with-a-centre-island-and-marble-worktops-300x200.jpg	/api/media/file/large-kitchen-with-a-centre-island-and-marble-worktops-500x500.jpg	500	500	image/jpeg	35230	large-kitchen-with-a-centre-island-and-marble-worktops-500x500.jpg	/api/media/file/large-kitchen-with-a-centre-island-and-marble-worktops-600x400.jpg	600	400	image/jpeg	34979	large-kitchen-with-a-centre-island-and-marble-worktops-600x400.jpg	/api/media/file/large-kitchen-with-a-centre-island-and-marble-worktops-900x600.jpg	900	600	image/jpeg	71840	large-kitchen-with-a-centre-island-and-marble-worktops-900x600.jpg	/api/media/file/large-kitchen-with-a-centre-island-and-marble-worktops-1400x933.jpg	1400	933	image/jpeg	160274	large-kitchen-with-a-centre-island-and-marble-worktops-1400x933.jpg	/api/media/file/large-kitchen-with-a-centre-island-and-marble-worktops-1920x1280.jpg	1920	1280	image/jpeg	285850	large-kitchen-with-a-centre-island-and-marble-worktops-1920x1280.jpg	/api/media/file/large-kitchen-with-a-centre-island-and-marble-worktops-1200x630.jpg	1200	630	image/jpeg	103308	large-kitchen-with-a-centre-island-and-marble-worktops-1200x630.jpg
37	Kitchen with white cabinets and wide-plank timber floors	\N	\N	2026-11-13 02:44:04.341+00	2026-11-13 02:44:04.341+00	/api/media/file/kitchen-with-white-cabinets-and-wide-plank-timber-floors.jpg	\N	kitchen-with-white-cabinets-and-wide-plank-timber-floors.jpg	image/jpeg	315068	2000	1333	50	50	/api/media/file/kitchen-with-white-cabinets-and-wide-plank-timber-floors-300x200.jpg	300	200	image/jpeg	10602	kitchen-with-white-cabinets-and-wide-plank-timber-floors-300x200.jpg	/api/media/file/kitchen-with-white-cabinets-and-wide-plank-timber-floors-500x500.jpg	500	500	image/jpeg	33026	kitchen-with-white-cabinets-and-wide-plank-timber-floors-500x500.jpg	/api/media/file/kitchen-with-white-cabinets-and-wide-plank-timber-floors-600x400.jpg	600	400	image/jpeg	30523	kitchen-with-white-cabinets-and-wide-plank-timber-floors-600x400.jpg	/api/media/file/kitchen-with-white-cabinets-and-wide-plank-timber-floors-900x600.jpg	900	600	image/jpeg	58238	kitchen-with-white-cabinets-and-wide-plank-timber-floors-900x600.jpg	/api/media/file/kitchen-with-white-cabinets-and-wide-plank-timber-floors-1400x933.jpg	1400	933	image/jpeg	122639	kitchen-with-white-cabinets-and-wide-plank-timber-floors-1400x933.jpg	/api/media/file/kitchen-with-white-cabinets-and-wide-plank-timber-floors-1920x1280.jpg	1920	1280	image/jpeg	217081	kitchen-with-white-cabinets-and-wide-plank-timber-floors-1920x1280.jpg	/api/media/file/kitchen-with-white-cabinets-and-wide-plank-timber-floors-1200x630.jpg	1200	630	image/jpeg	74839	kitchen-with-white-cabinets-and-wide-plank-timber-floors-1200x630.jpg
38	Bright white kitchen with island and glazed garden door	\N	\N	2026-11-13 02:44:08.62+00	2026-11-13 02:44:08.62+00	/api/media/file/bright-white-kitchen-with-island-and-glazed-garden-door.jpg	\N	bright-white-kitchen-with-island-and-glazed-garden-door.jpg	image/jpeg	759248	2000	3000	50	50	/api/media/file/bright-white-kitchen-with-island-and-glazed-garden-door-300x450.jpg	300	450	image/jpeg	18842	bright-white-kitchen-with-island-and-glazed-garden-door-300x450.jpg	/api/media/file/bright-white-kitchen-with-island-and-glazed-garden-door-500x500.jpg	500	500	image/jpeg	35622	bright-white-kitchen-with-island-and-glazed-garden-door-500x500.jpg	/api/media/file/bright-white-kitchen-with-island-and-glazed-garden-door-600x900.jpg	600	900	image/jpeg	61204	bright-white-kitchen-with-island-and-glazed-garden-door-600x900.jpg	/api/media/file/bright-white-kitchen-with-island-and-glazed-garden-door-900x1350.jpg	900	1350	image/jpeg	127387	bright-white-kitchen-with-island-and-glazed-garden-door-900x1350.jpg	/api/media/file/bright-white-kitchen-with-island-and-glazed-garden-door-1400x2100.jpg	1400	2100	image/jpeg	291819	bright-white-kitchen-with-island-and-glazed-garden-door-1400x2100.jpg	/api/media/file/bright-white-kitchen-with-island-and-glazed-garden-door-1920x2880.jpg	1920	2880	image/jpeg	529904	bright-white-kitchen-with-island-and-glazed-garden-door-1920x2880.jpg	/api/media/file/bright-white-kitchen-with-island-and-glazed-garden-door-1200x630.jpg	1200	630	image/jpeg	107048	bright-white-kitchen-with-island-and-glazed-garden-door-1200x630.jpg
39	Reception room with a white fireplace mantel	\N	\N	2026-11-13 02:44:12.796+00	2026-11-13 02:44:12.796+00	/api/media/file/reception-room-with-a-white-fireplace-mantel.jpg	\N	reception-room-with-a-white-fireplace-mantel.jpg	image/jpeg	800177	2000	3000	50	50	/api/media/file/reception-room-with-a-white-fireplace-mantel-300x450.jpg	300	450	image/jpeg	22542	reception-room-with-a-white-fireplace-mantel-300x450.jpg	/api/media/file/reception-room-with-a-white-fireplace-mantel-500x500.jpg	500	500	image/jpeg	38432	reception-room-with-a-white-fireplace-mantel-500x500.jpg	/api/media/file/reception-room-with-a-white-fireplace-mantel-600x900.jpg	600	900	image/jpeg	73039	reception-room-with-a-white-fireplace-mantel-600x900.jpg	/api/media/file/reception-room-with-a-white-fireplace-mantel-900x1350.jpg	900	1350	image/jpeg	148641	reception-room-with-a-white-fireplace-mantel-900x1350.jpg	/api/media/file/reception-room-with-a-white-fireplace-mantel-1400x2100.jpg	1400	2100	image/jpeg	325360	reception-room-with-a-white-fireplace-mantel-1400x2100.jpg	/api/media/file/reception-room-with-a-white-fireplace-mantel-1920x2880.jpg	1920	2880	image/jpeg	573845	reception-room-with-a-white-fireplace-mantel-1920x2880.jpg	/api/media/file/reception-room-with-a-white-fireplace-mantel-1200x630.jpg	1200	630	image/jpeg	96132	reception-room-with-a-white-fireplace-mantel-1200x630.jpg
40	Period dining room with timber table, mirror and tall window	\N	\N	2026-11-13 02:44:18.129+00	2026-11-13 02:44:18.129+00	/api/media/file/period-dining-room-with-timber-table-mirror-and-tall-window.jpg	\N	period-dining-room-with-timber-table-mirror-and-tall-window.jpg	image/jpeg	445910	2000	1333	50	50	/api/media/file/period-dining-room-with-timber-table-mirror-and-tall-window-300x200.jpg	300	200	image/jpeg	14110	period-dining-room-with-timber-table-mirror-and-tall-window-300x200.jpg	/api/media/file/period-dining-room-with-timber-table-mirror-and-tall-window-500x500.jpg	500	500	image/jpeg	48859	period-dining-room-with-timber-table-mirror-and-tall-window-500x500.jpg	/api/media/file/period-dining-room-with-timber-table-mirror-and-tall-window-600x400.jpg	600	400	image/jpeg	45115	period-dining-room-with-timber-table-mirror-and-tall-window-600x400.jpg	/api/media/file/period-dining-room-with-timber-table-mirror-and-tall-window-900x600.jpg	900	600	image/jpeg	90874	period-dining-room-with-timber-table-mirror-and-tall-window-900x600.jpg	/api/media/file/period-dining-room-with-timber-table-mirror-and-tall-window-1400x933.jpg	1400	933	image/jpeg	192313	period-dining-room-with-timber-table-mirror-and-tall-window-1400x933.jpg	/api/media/file/period-dining-room-with-timber-table-mirror-and-tall-window-1920x1280.jpg	1920	1280	image/jpeg	323704	period-dining-room-with-timber-table-mirror-and-tall-window-1920x1280.jpg	/api/media/file/period-dining-room-with-timber-table-mirror-and-tall-window-1200x630.jpg	1200	630	image/jpeg	109900	period-dining-room-with-timber-table-mirror-and-tall-window-1200x630.jpg
41	Bedroom with fireplace and tall sash window	\N	\N	2026-11-13 02:44:22.182+00	2026-11-13 02:44:22.182+00	/api/media/file/bedroom-with-fireplace-and-tall-sash-window.jpg	\N	bedroom-with-fireplace-and-tall-sash-window.jpg	image/jpeg	461699	2000	1333	50	50	/api/media/file/bedroom-with-fireplace-and-tall-sash-window-300x200.jpg	300	200	image/jpeg	13830	bedroom-with-fireplace-and-tall-sash-window-300x200.jpg	/api/media/file/bedroom-with-fireplace-and-tall-sash-window-500x500.jpg	500	500	image/jpeg	41440	bedroom-with-fireplace-and-tall-sash-window-500x500.jpg	/api/media/file/bedroom-with-fireplace-and-tall-sash-window-600x400.jpg	600	400	image/jpeg	45252	bedroom-with-fireplace-and-tall-sash-window-600x400.jpg	/api/media/file/bedroom-with-fireplace-and-tall-sash-window-900x600.jpg	900	600	image/jpeg	91950	bedroom-with-fireplace-and-tall-sash-window-900x600.jpg	/api/media/file/bedroom-with-fireplace-and-tall-sash-window-1400x933.jpg	1400	933	image/jpeg	197933	bedroom-with-fireplace-and-tall-sash-window-1400x933.jpg	/api/media/file/bedroom-with-fireplace-and-tall-sash-window-1920x1280.jpg	1920	1280	image/jpeg	336913	bedroom-with-fireplace-and-tall-sash-window-1920x1280.jpg	/api/media/file/bedroom-with-fireplace-and-tall-sash-window-1200x630.jpg	1200	630	image/jpeg	124235	bedroom-with-fireplace-and-tall-sash-window-1200x630.jpg
42	Calm bedroom with dresser and window	\N	\N	2026-11-13 02:44:25.784+00	2026-11-13 02:44:25.783+00	/api/media/file/calm-bedroom-with-dresser-and-window.jpg	\N	calm-bedroom-with-dresser-and-window.jpg	image/jpeg	341624	2000	1333	50	50	/api/media/file/calm-bedroom-with-dresser-and-window-300x200.jpg	300	200	image/jpeg	12697	calm-bedroom-with-dresser-and-window-300x200.jpg	/api/media/file/calm-bedroom-with-dresser-and-window-500x500.jpg	500	500	image/jpeg	35034	calm-bedroom-with-dresser-and-window-500x500.jpg	/api/media/file/calm-bedroom-with-dresser-and-window-600x400.jpg	600	400	image/jpeg	37429	calm-bedroom-with-dresser-and-window-600x400.jpg	/api/media/file/calm-bedroom-with-dresser-and-window-900x600.jpg	900	600	image/jpeg	72061	calm-bedroom-with-dresser-and-window-900x600.jpg	/api/media/file/calm-bedroom-with-dresser-and-window-1400x933.jpg	1400	933	image/jpeg	147984	calm-bedroom-with-dresser-and-window-1400x933.jpg	/api/media/file/calm-bedroom-with-dresser-and-window-1920x1280.jpg	1920	1280	image/jpeg	244767	calm-bedroom-with-dresser-and-window-1920x1280.jpg	/api/media/file/calm-bedroom-with-dresser-and-window-1200x630.jpg	1200	630	image/jpeg	96198	calm-bedroom-with-dresser-and-window-1200x630.jpg
43	Bathroom with green cabinetry and a marble-tiled shower	\N	\N	2026-11-13 02:44:30.16+00	2026-11-13 02:44:30.159+00	/api/media/file/bathroom-with-green-cabinetry-and-a-marble-tiled-shower.jpg	\N	bathroom-with-green-cabinetry-and-a-marble-tiled-shower.jpg	image/jpeg	376867	2000	1333	50	50	/api/media/file/bathroom-with-green-cabinetry-and-a-marble-tiled-shower-300x200.jpg	300	200	image/jpeg	11408	bathroom-with-green-cabinetry-and-a-marble-tiled-shower-300x200.jpg	/api/media/file/bathroom-with-green-cabinetry-and-a-marble-tiled-shower-500x500.jpg	500	500	image/jpeg	40577	bathroom-with-green-cabinetry-and-a-marble-tiled-shower-500x500.jpg	/api/media/file/bathroom-with-green-cabinetry-and-a-marble-tiled-shower-600x400.jpg	600	400	image/jpeg	36231	bathroom-with-green-cabinetry-and-a-marble-tiled-shower-600x400.jpg	/api/media/file/bathroom-with-green-cabinetry-and-a-marble-tiled-shower-900x600.jpg	900	600	image/jpeg	70996	bathroom-with-green-cabinetry-and-a-marble-tiled-shower-900x600.jpg	/api/media/file/bathroom-with-green-cabinetry-and-a-marble-tiled-shower-1400x933.jpg	1400	933	image/jpeg	153505	bathroom-with-green-cabinetry-and-a-marble-tiled-shower-1400x933.jpg	/api/media/file/bathroom-with-green-cabinetry-and-a-marble-tiled-shower-1920x1280.jpg	1920	1280	image/jpeg	267943	bathroom-with-green-cabinetry-and-a-marble-tiled-shower-1920x1280.jpg	/api/media/file/bathroom-with-green-cabinetry-and-a-marble-tiled-shower-1200x630.jpg	1200	630	image/jpeg	95058	bathroom-with-green-cabinetry-and-a-marble-tiled-shower-1200x630.jpg
44	Bathroom with vanity basin and mirror	\N	\N	2026-11-13 02:44:31.45+00	2026-11-13 02:44:31.449+00	/api/media/file/bathroom-with-vanity-basin-and-mirror.jpg	\N	bathroom-with-vanity-basin-and-mirror.jpg	image/jpeg	230929	2000	1335	50	50	/api/media/file/bathroom-with-vanity-basin-and-mirror-300x200.jpg	300	200	image/jpeg	8006	bathroom-with-vanity-basin-and-mirror-300x200.jpg	/api/media/file/bathroom-with-vanity-basin-and-mirror-500x500.jpg	500	500	image/jpeg	23241	bathroom-with-vanity-basin-and-mirror-500x500.jpg	/api/media/file/bathroom-with-vanity-basin-and-mirror-600x400.jpg	600	400	image/jpeg	24040	bathroom-with-vanity-basin-and-mirror-600x400.jpg	/api/media/file/bathroom-with-vanity-basin-and-mirror-900x601.jpg	900	601	image/jpeg	48285	bathroom-with-vanity-basin-and-mirror-900x601.jpg	/api/media/file/bathroom-with-vanity-basin-and-mirror-1400x934.jpg	1400	934	image/jpeg	99391	bathroom-with-vanity-basin-and-mirror-1400x934.jpg	/api/media/file/bathroom-with-vanity-basin-and-mirror-1920x1282.jpg	1920	1282	image/jpeg	166873	bathroom-with-vanity-basin-and-mirror-1920x1282.jpg	/api/media/file/bathroom-with-vanity-basin-and-mirror-1200x630.jpg	1200	630	image/jpeg	60020	bathroom-with-vanity-basin-and-mirror-1200x630.jpg
45	Contemporary apartment building with curved balconies	\N	\N	2026-11-13 02:44:37.072+00	2026-11-13 02:44:37.072+00	/api/media/file/contemporary-apartment-building-with-curved-balconies.jpg	\N	contemporary-apartment-building-with-curved-balconies.jpg	image/jpeg	952649	2000	2667	50	50	/api/media/file/contemporary-apartment-building-with-curved-balconies-300x400.jpg	300	400	image/jpeg	30287	contemporary-apartment-building-with-curved-balconies-300x400.jpg	/api/media/file/contemporary-apartment-building-with-curved-balconies-500x500.jpg	500	500	image/jpeg	52055	contemporary-apartment-building-with-curved-balconies-500x500.jpg	/api/media/file/contemporary-apartment-building-with-curved-balconies-600x800.jpg	600	800	image/jpeg	95707	contemporary-apartment-building-with-curved-balconies-600x800.jpg	/api/media/file/contemporary-apartment-building-with-curved-balconies-900x1200.jpg	900	1200	image/jpeg	197100	contemporary-apartment-building-with-curved-balconies-900x1200.jpg	/api/media/file/contemporary-apartment-building-with-curved-balconies-1400x1867.jpg	1400	1867	image/jpeg	431385	contemporary-apartment-building-with-curved-balconies-1400x1867.jpg	/api/media/file/contemporary-apartment-building-with-curved-balconies-1920x2560.jpg	1920	2560	image/jpeg	734827	contemporary-apartment-building-with-curved-balconies-1920x2560.jpg	/api/media/file/contemporary-apartment-building-with-curved-balconies-1200x630.jpg	1200	630	image/jpeg	125655	contemporary-apartment-building-with-curved-balconies-1200x630.jpg
46	Dining area with timber table and four chairs	\N	\N	2026-11-13 02:44:39.242+00	2026-11-13 02:44:39.241+00	/api/media/file/dining-area-with-timber-table-and-four-chairs.jpg	\N	dining-area-with-timber-table-and-four-chairs.jpg	image/jpeg	357340	2000	1629	50	50	/api/media/file/dining-area-with-timber-table-and-four-chairs-300x244.jpg	300	244	image/jpeg	14093	dining-area-with-timber-table-and-four-chairs-300x244.jpg	/api/media/file/dining-area-with-timber-table-and-four-chairs-500x500.jpg	500	500	image/jpeg	31761	dining-area-with-timber-table-and-four-chairs-500x500.jpg	/api/media/file/dining-area-with-timber-table-and-four-chairs-600x489.jpg	600	489	image/jpeg	39100	dining-area-with-timber-table-and-four-chairs-600x489.jpg	/api/media/file/dining-area-with-timber-table-and-four-chairs-900x733.jpg	900	733	image/jpeg	70284	dining-area-with-timber-table-and-four-chairs-900x733.jpg	/api/media/file/dining-area-with-timber-table-and-four-chairs-1400x1140.jpg	1400	1140	image/jpeg	144047	dining-area-with-timber-table-and-four-chairs-1400x1140.jpg	/api/media/file/dining-area-with-timber-table-and-four-chairs-1920x1564.jpg	1920	1564	image/jpeg	249841	dining-area-with-timber-table-and-four-chairs-1920x1564.jpg	/api/media/file/dining-area-with-timber-table-and-four-chairs-1200x630.jpg	1200	630	image/jpeg	76002	dining-area-with-timber-table-and-four-chairs-1200x630.jpg
47	Red-brick house with a painted front door and sash windows	\N	\N	2026-11-13 02:44:42.163+00	2026-11-13 02:44:42.163+00	/api/media/file/red-brick-house-with-a-painted-front-door-and-sash-windows.jpg	\N	red-brick-house-with-a-painted-front-door-and-sash-windows.jpg	image/jpeg	1382899	2000	3000	50	50	/api/media/file/red-brick-house-with-a-painted-front-door-and-sash-windows-300x450.jpg	300	450	image/jpeg	38506	red-brick-house-with-a-painted-front-door-and-sash-windows-300x450.jpg	/api/media/file/red-brick-house-with-a-painted-front-door-and-sash-windows-500x500.jpg	500	500	image/jpeg	59160	red-brick-house-with-a-painted-front-door-and-sash-windows-500x500.jpg	/api/media/file/red-brick-house-with-a-painted-front-door-and-sash-windows-600x900.jpg	600	900	image/jpeg	129540	red-brick-house-with-a-painted-front-door-and-sash-windows-600x900.jpg	/api/media/file/red-brick-house-with-a-painted-front-door-and-sash-windows-900x1350.jpg	900	1350	image/jpeg	267243	red-brick-house-with-a-painted-front-door-and-sash-windows-900x1350.jpg	/api/media/file/red-brick-house-with-a-painted-front-door-and-sash-windows-1400x2100.jpg	1400	2100	image/jpeg	599667	red-brick-house-with-a-painted-front-door-and-sash-windows-1400x2100.jpg	/api/media/file/red-brick-house-with-a-painted-front-door-and-sash-windows-1920x2880.jpg	1920	2880	image/jpeg	1049420	red-brick-house-with-a-painted-front-door-and-sash-windows-1920x2880.jpg	/api/media/file/red-brick-house-with-a-painted-front-door-and-sash-windows-1200x630.jpg	1200	630	image/jpeg	159867	red-brick-house-with-a-painted-front-door-and-sash-windows-1200x630.jpg
48	Modern kitchen with island and three stools	\N	\N	2026-11-13 02:44:43.816+00	2026-11-13 02:44:43.816+00	/api/media/file/modern-kitchen-with-island-and-three-stools.jpg	\N	modern-kitchen-with-island-and-three-stools.jpg	image/jpeg	222672	2000	882	50	50	/api/media/file/modern-kitchen-with-island-and-three-stools-300x132.jpg	300	132	image/jpeg	8335	modern-kitchen-with-island-and-three-stools-300x132.jpg	/api/media/file/modern-kitchen-with-island-and-three-stools-500x500.jpg	500	500	image/jpeg	36529	modern-kitchen-with-island-and-three-stools-500x500.jpg	/api/media/file/modern-kitchen-with-island-and-three-stools-600x265.jpg	600	265	image/jpeg	25461	modern-kitchen-with-island-and-three-stools-600x265.jpg	/api/media/file/modern-kitchen-with-island-and-three-stools-900x397.jpg	900	397	image/jpeg	48631	modern-kitchen-with-island-and-three-stools-900x397.jpg	/api/media/file/modern-kitchen-with-island-and-three-stools-1400x617.jpg	1400	617	image/jpeg	99093	modern-kitchen-with-island-and-three-stools-1400x617.jpg	/api/media/file/modern-kitchen-with-island-and-three-stools-1920x847.jpg	1920	847	image/jpeg	163405	modern-kitchen-with-island-and-three-stools-1920x847.jpg	/api/media/file/modern-kitchen-with-island-and-three-stools-1200x630.jpg	1200	630	image/jpeg	88123	modern-kitchen-with-island-and-three-stools-1200x630.jpg
49	Sunlit bedroom with white linen	\N	\N	2026-11-13 02:44:46.262+00	2026-11-13 02:44:46.262+00	/api/media/file/sunlit-bedroom-with-white-linen.jpg	\N	sunlit-bedroom-with-white-linen.jpg	image/jpeg	896684	2000	3011	50	50	/api/media/file/sunlit-bedroom-with-white-linen-300x452.jpg	300	452	image/jpeg	17084	sunlit-bedroom-with-white-linen-300x452.jpg	/api/media/file/sunlit-bedroom-with-white-linen-500x500.jpg	500	500	image/jpeg	27633	sunlit-bedroom-with-white-linen-500x500.jpg	/api/media/file/sunlit-bedroom-with-white-linen-600x903.jpg	600	903	image/jpeg	53882	sunlit-bedroom-with-white-linen-600x903.jpg	/api/media/file/sunlit-bedroom-with-white-linen-900x1355.jpg	900	1355	image/jpeg	119893	sunlit-bedroom-with-white-linen-900x1355.jpg	/api/media/file/sunlit-bedroom-with-white-linen-1400x2108.jpg	1400	2108	image/jpeg	310316	sunlit-bedroom-with-white-linen-1400x2108.jpg	/api/media/file/sunlit-bedroom-with-white-linen-1920x2891.jpg	1920	2891	image/jpeg	616563	sunlit-bedroom-with-white-linen-1920x2891.jpg	/api/media/file/sunlit-bedroom-with-white-linen-1200x630.jpg	1200	630	image/jpeg	73979	sunlit-bedroom-with-white-linen-1200x630.jpg
50	Kitchen with white cabinets and a range cooker	\N	\N	2026-11-13 02:45:11.56+00	2026-11-13 02:45:11.559+00	/api/media/file/kitchen-with-white-cabinets-and-a-range-cooker.jpg	\N	kitchen-with-white-cabinets-and-a-range-cooker.jpg	image/jpeg	333371	2000	1333	50	50	/api/media/file/kitchen-with-white-cabinets-and-a-range-cooker-300x200.jpg	300	200	image/jpeg	10993	kitchen-with-white-cabinets-and-a-range-cooker-300x200.jpg	/api/media/file/kitchen-with-white-cabinets-and-a-range-cooker-500x500.jpg	500	500	image/jpeg	37546	kitchen-with-white-cabinets-and-a-range-cooker-500x500.jpg	/api/media/file/kitchen-with-white-cabinets-and-a-range-cooker-600x400.jpg	600	400	image/jpeg	33245	kitchen-with-white-cabinets-and-a-range-cooker-600x400.jpg	/api/media/file/kitchen-with-white-cabinets-and-a-range-cooker-900x600.jpg	900	600	image/jpeg	65662	kitchen-with-white-cabinets-and-a-range-cooker-900x600.jpg	/api/media/file/kitchen-with-white-cabinets-and-a-range-cooker-1400x933.jpg	1400	933	image/jpeg	136591	kitchen-with-white-cabinets-and-a-range-cooker-1400x933.jpg	/api/media/file/kitchen-with-white-cabinets-and-a-range-cooker-1920x1280.jpg	1920	1280	image/jpeg	234307	kitchen-with-white-cabinets-and-a-range-cooker-1920x1280.jpg	/api/media/file/kitchen-with-white-cabinets-and-a-range-cooker-1200x630.jpg	1200	630	image/jpeg	89824	kitchen-with-white-cabinets-and-a-range-cooker-1200x630.jpg
51	Kitchen island beside a red range cooker	\N	\N	2026-11-13 02:45:13.517+00	2026-11-13 02:45:13.517+00	/api/media/file/kitchen-island-beside-a-red-range-cooker.jpg	\N	kitchen-island-beside-a-red-range-cooker.jpg	image/jpeg	520045	2000	1336	50	50	/api/media/file/kitchen-island-beside-a-red-range-cooker-300x200.jpg	300	200	image/jpeg	13078	kitchen-island-beside-a-red-range-cooker-300x200.jpg	/api/media/file/kitchen-island-beside-a-red-range-cooker-500x500.jpg	500	500	image/jpeg	41962	kitchen-island-beside-a-red-range-cooker-500x500.jpg	/api/media/file/kitchen-island-beside-a-red-range-cooker-600x401.jpg	600	401	image/jpeg	43844	kitchen-island-beside-a-red-range-cooker-600x401.jpg	/api/media/file/kitchen-island-beside-a-red-range-cooker-900x601.jpg	900	601	image/jpeg	91070	kitchen-island-beside-a-red-range-cooker-900x601.jpg	/api/media/file/kitchen-island-beside-a-red-range-cooker-1400x935.jpg	1400	935	image/jpeg	206893	kitchen-island-beside-a-red-range-cooker-1400x935.jpg	/api/media/file/kitchen-island-beside-a-red-range-cooker-1920x1283.jpg	1920	1283	image/jpeg	375903	kitchen-island-beside-a-red-range-cooker-1920x1283.jpg	/api/media/file/kitchen-island-beside-a-red-range-cooker-1200x630.jpg	1200	630	image/jpeg	131271	kitchen-island-beside-a-red-range-cooker-1200x630.jpg
52	View over rooftops from a private balcony	\N	\N	2026-11-13 02:45:15.901+00	2026-11-13 02:45:15.901+00	/api/media/file/view-over-rooftops-from-a-private-balcony.jpg	\N	view-over-rooftops-from-a-private-balcony.jpg	image/jpeg	457500	2000	1335	50	50	/api/media/file/view-over-rooftops-from-a-private-balcony-300x200.jpg	300	200	image/jpeg	11345	view-over-rooftops-from-a-private-balcony-300x200.jpg	/api/media/file/view-over-rooftops-from-a-private-balcony-500x500.jpg	500	500	image/jpeg	42458	view-over-rooftops-from-a-private-balcony-500x500.jpg	/api/media/file/view-over-rooftops-from-a-private-balcony-600x400.jpg	600	400	image/jpeg	40097	view-over-rooftops-from-a-private-balcony-600x400.jpg	/api/media/file/view-over-rooftops-from-a-private-balcony-900x601.jpg	900	601	image/jpeg	86041	view-over-rooftops-from-a-private-balcony-900x601.jpg	/api/media/file/view-over-rooftops-from-a-private-balcony-1400x934.jpg	1400	934	image/jpeg	193609	view-over-rooftops-from-a-private-balcony-1400x934.jpg	/api/media/file/view-over-rooftops-from-a-private-balcony-1920x1282.jpg	1920	1282	image/jpeg	343473	view-over-rooftops-from-a-private-balcony-1920x1282.jpg	/api/media/file/view-over-rooftops-from-a-private-balcony-1200x630.jpg	1200	630	image/jpeg	123517	view-over-rooftops-from-a-private-balcony-1200x630.jpg
53	Living room with grey sofa and large window	\N	\N	2026-11-13 02:45:17.915+00	2026-11-13 02:45:17.915+00	/api/media/file/living-room-with-grey-sofa-and-large-window.jpg	\N	living-room-with-grey-sofa-and-large-window.jpg	image/jpeg	339173	2000	1333	50	50	/api/media/file/living-room-with-grey-sofa-and-large-window-300x200.jpg	300	200	image/jpeg	12408	living-room-with-grey-sofa-and-large-window-300x200.jpg	/api/media/file/living-room-with-grey-sofa-and-large-window-500x500.jpg	500	500	image/jpeg	36765	living-room-with-grey-sofa-and-large-window-500x500.jpg	/api/media/file/living-room-with-grey-sofa-and-large-window-600x400.jpg	600	400	image/jpeg	38026	living-room-with-grey-sofa-and-large-window-600x400.jpg	/api/media/file/living-room-with-grey-sofa-and-large-window-900x600.jpg	900	600	image/jpeg	74348	living-room-with-grey-sofa-and-large-window-900x600.jpg	/api/media/file/living-room-with-grey-sofa-and-large-window-1400x933.jpg	1400	933	image/jpeg	150984	living-room-with-grey-sofa-and-large-window-1400x933.jpg	/api/media/file/living-room-with-grey-sofa-and-large-window-1920x1280.jpg	1920	1280	image/jpeg	245911	living-room-with-grey-sofa-and-large-window-1920x1280.jpg	/api/media/file/living-room-with-grey-sofa-and-large-window-1200x630.jpg	1200	630	image/jpeg	97116	living-room-with-grey-sofa-and-large-window-1200x630.jpg
54	Dining table with green chairs	\N	\N	2026-11-13 02:45:19.859+00	2026-11-13 02:45:19.859+00	/api/media/file/dining-table-with-green-chairs.jpg	\N	dining-table-with-green-chairs.jpg	image/jpeg	485081	2000	2500	50	50	/api/media/file/dining-table-with-green-chairs-300x375.jpg	300	375	image/jpeg	16557	dining-table-with-green-chairs-300x375.jpg	/api/media/file/dining-table-with-green-chairs-500x500.jpg	500	500	image/jpeg	30712	dining-table-with-green-chairs-500x500.jpg	/api/media/file/dining-table-with-green-chairs-600x750.jpg	600	750	image/jpeg	49126	dining-table-with-green-chairs-600x750.jpg	/api/media/file/dining-table-with-green-chairs-900x1125.jpg	900	1125	image/jpeg	94944	dining-table-with-green-chairs-900x1125.jpg	/api/media/file/dining-table-with-green-chairs-1400x1750.jpg	1400	1750	image/jpeg	200449	dining-table-with-green-chairs-1400x1750.jpg	/api/media/file/dining-table-with-green-chairs-1920x2400.jpg	1920	2400	image/jpeg	344996	dining-table-with-green-chairs-1920x2400.jpg	/api/media/file/dining-table-with-green-chairs-1200x630.jpg	1200	630	image/jpeg	55985	dining-table-with-green-chairs-1200x630.jpg
55	Bedroom with a yellow throw and evening light	\N	\N	2026-11-13 02:45:22.901+00	2026-11-13 02:45:22.901+00	/api/media/file/bedroom-with-a-yellow-throw-and-evening-light.jpg	\N	bedroom-with-a-yellow-throw-and-evening-light.jpg	image/jpeg	934334	2000	3000	50	50	/api/media/file/bedroom-with-a-yellow-throw-and-evening-light-300x450.jpg	300	450	image/jpeg	23691	bedroom-with-a-yellow-throw-and-evening-light-300x450.jpg	/api/media/file/bedroom-with-a-yellow-throw-and-evening-light-500x500.jpg	500	500	image/jpeg	38970	bedroom-with-a-yellow-throw-and-evening-light-500x500.jpg	/api/media/file/bedroom-with-a-yellow-throw-and-evening-light-600x900.jpg	600	900	image/jpeg	76927	bedroom-with-a-yellow-throw-and-evening-light-600x900.jpg	/api/media/file/bedroom-with-a-yellow-throw-and-evening-light-900x1350.jpg	900	1350	image/jpeg	157378	bedroom-with-a-yellow-throw-and-evening-light-900x1350.jpg	/api/media/file/bedroom-with-a-yellow-throw-and-evening-light-1400x2100.jpg	1400	2100	image/jpeg	355602	bedroom-with-a-yellow-throw-and-evening-light-1400x2100.jpg	/api/media/file/bedroom-with-a-yellow-throw-and-evening-light-1920x2880.jpg	1920	2880	image/jpeg	650110	bedroom-with-a-yellow-throw-and-evening-light-1920x2880.jpg	/api/media/file/bedroom-with-a-yellow-throw-and-evening-light-1200x630.jpg	1200	630	image/jpeg	83287	bedroom-with-a-yellow-throw-and-evening-light-1200x630.jpg
56	Kitchen with sink beneath a window	\N	\N	2026-11-13 02:45:25.369+00	2026-11-13 02:45:25.369+00	/api/media/file/kitchen-with-sink-beneath-a-window.jpg	\N	kitchen-with-sink-beneath-a-window.jpg	image/jpeg	270416	2000	1333	50	50	/api/media/file/kitchen-with-sink-beneath-a-window-300x200.jpg	300	200	image/jpeg	10503	kitchen-with-sink-beneath-a-window-300x200.jpg	/api/media/file/kitchen-with-sink-beneath-a-window-500x500.jpg	500	500	image/jpeg	31961	kitchen-with-sink-beneath-a-window-500x500.jpg	/api/media/file/kitchen-with-sink-beneath-a-window-600x400.jpg	600	400	image/jpeg	30807	kitchen-with-sink-beneath-a-window-600x400.jpg	/api/media/file/kitchen-with-sink-beneath-a-window-900x600.jpg	900	600	image/jpeg	58722	kitchen-with-sink-beneath-a-window-900x600.jpg	/api/media/file/kitchen-with-sink-beneath-a-window-1400x933.jpg	1400	933	image/jpeg	118949	kitchen-with-sink-beneath-a-window-1400x933.jpg	/api/media/file/kitchen-with-sink-beneath-a-window-1920x1280.jpg	1920	1280	image/jpeg	196093	kitchen-with-sink-beneath-a-window-1920x1280.jpg	/api/media/file/kitchen-with-sink-beneath-a-window-1200x630.jpg	1200	630	image/jpeg	75278	kitchen-with-sink-beneath-a-window-1200x630.jpg
57	Modern dining area with designer chairs	\N	\N	2026-11-13 02:45:26.973+00	2026-11-13 02:45:26.973+00	/api/media/file/modern-dining-area-with-designer-chairs.jpg	\N	modern-dining-area-with-designer-chairs.jpg	image/jpeg	351291	2000	1125	50	50	/api/media/file/modern-dining-area-with-designer-chairs-300x169.jpg	300	169	image/jpeg	11374	modern-dining-area-with-designer-chairs-300x169.jpg	/api/media/file/modern-dining-area-with-designer-chairs-500x500.jpg	500	500	image/jpeg	45813	modern-dining-area-with-designer-chairs-500x500.jpg	/api/media/file/modern-dining-area-with-designer-chairs-600x338.jpg	600	338	image/jpeg	36314	modern-dining-area-with-designer-chairs-600x338.jpg	/api/media/file/modern-dining-area-with-designer-chairs-900x506.jpg	900	506	image/jpeg	71412	modern-dining-area-with-designer-chairs-900x506.jpg	/api/media/file/modern-dining-area-with-designer-chairs-1400x788.jpg	1400	788	image/jpeg	152030	modern-dining-area-with-designer-chairs-1400x788.jpg	/api/media/file/modern-dining-area-with-designer-chairs-1920x1080.jpg	1920	1080	image/jpeg	257304	modern-dining-area-with-designer-chairs-1920x1080.jpg	/api/media/file/modern-dining-area-with-designer-chairs-1200x630.jpg	1200	630	image/jpeg	109484	modern-dining-area-with-designer-chairs-1200x630.jpg
20	Contemporary timber-clad family home with full-height glazing	\N	\N	2026-11-13 02:49:33.227+00	2026-11-13 01:36:34.683+00	/api/media/file/elegant-kitchen-and-dining-space-with-natural-light.jpg	/api/media/file/elegant-kitchen-and-dining-space-with-natural-light-300x200.jpg	elegant-kitchen-and-dining-space-with-natural-light.jpg	image/jpeg	355467	1800	1200	50	50	/api/media/file/elegant-kitchen-and-dining-space-with-natural-light-300x200.jpg	300	200	image/jpeg	13087	elegant-kitchen-and-dining-space-with-natural-light-300x200.jpg	/api/media/file/elegant-kitchen-and-dining-space-with-natural-light-500x500.jpg	500	500	image/jpeg	39574	elegant-kitchen-and-dining-space-with-natural-light-500x500.jpg	/api/media/file/elegant-kitchen-and-dining-space-with-natural-light-600x400.jpg	600	400	image/jpeg	42864	elegant-kitchen-and-dining-space-with-natural-light-600x400.jpg	/api/media/file/elegant-kitchen-and-dining-space-with-natural-light-900x600.jpg	900	600	image/jpeg	89153	elegant-kitchen-and-dining-space-with-natural-light-900x600.jpg	/api/media/file/elegant-kitchen-and-dining-space-with-natural-light-1400x933.jpg	1400	933	image/jpeg	193387	elegant-kitchen-and-dining-space-with-natural-light-1400x933.jpg	\N	\N	\N	\N	\N	\N	/api/media/file/elegant-kitchen-and-dining-space-with-natural-light-1200x630.jpg	1200	630	image/jpeg	113909	elegant-kitchen-and-dining-space-with-natural-light-1200x630.jpg
33	Living room with grey sofa and tall windows	\N	\N	2026-11-13 02:49:34.22+00	2026-11-13 01:38:14.901+00	/api/media/file/kitchen-interior-with-island.jpg	/api/media/file/kitchen-interior-with-island-300x200.jpg	kitchen-interior-with-island.jpg	image/jpeg	377371	1800	1200	50	50	/api/media/file/kitchen-interior-with-island-300x200.jpg	300	200	image/jpeg	13508	kitchen-interior-with-island-300x200.jpg	/api/media/file/kitchen-interior-with-island-500x500.jpg	500	500	image/jpeg	44975	kitchen-interior-with-island-500x500.jpg	/api/media/file/kitchen-interior-with-island-600x400.jpg	600	400	image/jpeg	43042	kitchen-interior-with-island-600x400.jpg	/api/media/file/kitchen-interior-with-island-900x600.jpg	900	600	image/jpeg	88950	kitchen-interior-with-island-900x600.jpg	/api/media/file/kitchen-interior-with-island-1400x933.jpg	1400	933	image/jpeg	196488	kitchen-interior-with-island-1400x933.jpg	\N	\N	\N	\N	\N	\N	/api/media/file/kitchen-interior-with-island-1200x630.jpg	1200	630	image/jpeg	114267	kitchen-interior-with-island-1200x630.jpg
25	Bedroom with floor-to-ceiling windows and city views	\N	\N	2026-11-13 02:49:35.527+00	2026-11-13 01:37:27.082+00	/api/media/file/classic-drawing-room-with-tall-windows.jpg	/api/media/file/classic-drawing-room-with-tall-windows-300x300.jpg	classic-drawing-room-with-tall-windows.jpg	image/jpeg	622555	1800	1800	50	50	/api/media/file/classic-drawing-room-with-tall-windows-300x300.jpg	300	300	image/jpeg	18942	classic-drawing-room-with-tall-windows-300x300.jpg	/api/media/file/classic-drawing-room-with-tall-windows-500x500.jpg	500	500	image/jpeg	47818	classic-drawing-room-with-tall-windows-500x500.jpg	/api/media/file/classic-drawing-room-with-tall-windows-600x600.jpg	600	600	image/jpeg	67668	classic-drawing-room-with-tall-windows-600x600.jpg	/api/media/file/classic-drawing-room-with-tall-windows-900x900.jpg	900	900	image/jpeg	150323	classic-drawing-room-with-tall-windows-900x900.jpg	/api/media/file/classic-drawing-room-with-tall-windows-1400x1400.jpg	1400	1400	image/jpeg	338824	classic-drawing-room-with-tall-windows-1400x1400.jpg	\N	\N	\N	\N	\N	\N	/api/media/file/classic-drawing-room-with-tall-windows-1200x630.jpg	1200	630	image/jpeg	111311	classic-drawing-room-with-tall-windows-1200x630.jpg
\.


--
-- Data for Name: not_found_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.not_found_log (id, path, hits, last_seen, last_referrer, redirected, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: page_views; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.page_views (id, day, path, referrer, device, browser, country, visitor, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages (id, title, hero_type, hero_rich_text, hero_media_id, meta_title, meta_image_id, meta_description, published_at, generate_slug, slug, updated_at, created_at, _status, meta_focus_keyword, meta_og_title, meta_og_description, meta_canonical_u_r_l, meta_noindex) FROM stdin;
4	Home	none	\N	\N	Linden & Vale | Dublin estate agents for period homes and new builds	18	Boutique Dublin estate agency selling Georgian, Victorian and Edwardian homes and new builds. Book a free, no-obligation valuation with a senior valuer.	\N	f	home	2026-11-13 02:52:03.543+00	2026-11-13 01:42:32.174+00	published	\N	\N	\N	\N	f
\.


--
-- Data for Name: pages_blocks_archive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content (_order, _parent_id, _path, id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_blocks_cta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_cta (_order, _parent_id, _path, id, rich_text, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_blocks_design; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_design (_order, _parent_id, _path, id, html, css, full_width, block_name, synced_id) FROM stdin;
1	4	layout	6af66b08ff7f070016860990	<section class="lv hero"><img class="hero-img" src="/api/media/file/modern-new-build-home-exterior-with-clean-lines.jpg" alt="Contemporary Dublin home at dusk, lit from within behind floor-to-ceiling glass"><div class="shade"></div><div class="inner"><p class="eyebrow"><span class="rule"></span>Linden &amp; Vale · Estate agents, Dublin</p><h1><span class="l1">Homes with a story.</span><em class="l2">And homes about to start one.</em></h1><div class="bottom"><p class="lede">Georgian, Victorian and Edwardian houses, and the best new builds in the city. Priced with care, presented beautifully, and handled by one agent from valuation to keys.</p><div class="actions"><a class="btn solid" href="#request">Book a free valuation</a><a class="btn line" href="#homes">See featured homes <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M12 5v14M5 12l7 7 7-7"></path></svg></a></div></div></div><div class="strip" aria-label="Areas we cover"><div class="track"><span>Ranelagh</span><span>Rathgar</span><span>Ballsbridge</span><span>Sandymount</span><span>Donnybrook</span><span>Rathmines</span><span>Clontarf</span><span>Monkstown</span><span>Dalkey</span><span>Foxrock</span><span>Ranelagh</span><span>Rathgar</span><span>Ballsbridge</span><span>Sandymount</span><span>Donnybrook</span><span>Rathmines</span><span>Clontarf</span><span>Monkstown</span><span>Dalkey</span><span>Foxrock</span></div></div></section>	@import url('https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;1,400;1,500&family=Manrope:wght@400;500;600;700&display=swap');\n.lv{--ink:#121816;--stone:#F3EEE5;--brass:#B08A52;--brassl:#D2B27E;font-family:'Manrope',system-ui,sans-serif}\n.hero{position:relative;min-height:94svh;display:flex;flex-direction:column;justify-content:flex-end;overflow:hidden;color:#fff;background:var(--ink)}\n.hero-img{position:absolute;inset:0;width:100%;height:100%;object-fit:cover;object-position:center 60%}\n.shade{position:absolute;inset:0;background:linear-gradient(180deg,rgba(10,14,12,.55) 0%,rgba(10,14,12,.05) 35%,rgba(10,14,12,.25) 60%,rgba(10,14,12,.88) 100%)}\n.inner{position:relative;z-index:2;width:min(1320px,92vw);margin:0 auto;padding:18vh 0 4.5rem}\n.eyebrow{display:flex;align-items:center;gap:.9rem;font-size:.78rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brassl);margin:0 0 1.6rem}\n.rule{display:inline-block;width:56px;height:1px;background:var(--brassl)}\nh1{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(3rem,8.4vw,8.6rem);line-height:.92;letter-spacing:-.02em;margin:0;color:#fff}\nh1 span,h1 em{display:block}\nh1 em{font-style:italic;font-weight:400;color:#EADBC2}\n.bottom{display:flex;justify-content:space-between;align-items:flex-end;gap:3rem;margin-top:2.6rem;flex-wrap:wrap}\n.lede{max-width:34rem;font-size:1.08rem;line-height:1.7;color:rgba(255,255,255,.86);margin:0}\n.actions{display:flex;gap:.8rem;flex-wrap:wrap}\n.btn{display:inline-flex;align-items:center;gap:.6rem;padding:1.05rem 1.7rem;font-size:.82rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;text-decoration:none;transition:background .35s,color .35s,border-color .35s,transform .35s}\n.btn.solid{background:var(--brass);color:#fff;border:1px solid var(--brass)}\n.btn.solid:hover{background:#fff;color:var(--ink);border-color:#fff;transform:translateY(-2px)}\n.btn.line{color:#fff;border:1px solid rgba(255,255,255,.5)}\n.btn.line:hover{border-color:#fff;background:rgba(255,255,255,.1);transform:translateY(-2px)}\n.strip{position:relative;z-index:2;border-top:1px solid rgba(255,255,255,.18);overflow:hidden;padding:1.1rem 0;background:rgba(10,14,12,.35);backdrop-filter:blur(6px)}\n.track{display:flex;gap:3.2rem;width:max-content;font-family:'Cormorant Garamond',Georgia,serif;font-style:italic;font-size:1.35rem;color:rgba(255,255,255,.8)}\n.track span{display:inline-flex;align-items:center;gap:3.2rem}\n.track span::after{content:'';width:6px;height:6px;border:1px solid var(--brassl);transform:rotate(45deg)}\n@media (prefers-reduced-motion:no-preference){.hero-img{animation:lvHeroZoom 2.4s cubic-bezier(.2,.7,.2,1) both}.eyebrow,.l1,.l2,.bottom{animation:lvHeroRise 1.1s cubic-bezier(.2,.7,.2,1) both}.l1{animation-delay:.15s}.l2{animation-delay:.3s}.bottom{animation-delay:.5s}.track{animation:lvMarquee 48s linear infinite}}\n@keyframes lvHeroZoom{from{transform:scale(1.12)}to{transform:scale(1)}}\n@keyframes lvHeroRise{from{opacity:0;transform:translateY(28px)}to{opacity:1;transform:none}}\n@keyframes lvMarquee{to{transform:translateX(-50%)}}\n@media (max-width:700px){.hero{min-height:92svh}.inner{padding:14vh 0 2.6rem}.bottom{margin-top:1.8rem;gap:1.6rem}.lede{font-size:1rem}.actions{width:100%}.btn{flex:1 1 100%;justify-content:center}.track{font-size:1.1rem}}	t	top	\N
3	4	layout	6af66b08ff7f070016860992	<section class="lv svc"><div class="wrap"><header class="head reveal"><p class="eyebrow">02 · Services</p><h2>Selling or buying, <em>you deal with one person.</em></h2></header><div class="cols"><figure class="pic reveal"><img src="/api/media/file/interior-with-classic-details.jpg" alt="Restored hallway with cornicing and herringbone oak floor"><figcaption>Every listing is photographed by an architectural photographer.</figcaption></figure><div class="col reveal"><h3>For sellers</h3><ol><li><span>01</span><div><strong>An honest valuation</strong><p>A senior valuer walks the house with you and puts a figure in writing, backed by recent comparable sales.</p></div></li><li><span>02</span><div><strong>Preparation and styling</strong><p>A practical list of what is worth doing before launch, and what is not. Styling advice included.</p></div></li><li><span>03</span><div><strong>Photography, film and floor plans</strong><p>Architectural photography, a measured floor plan and a printed brochure for every home.</p></div></li><li><span>04</span><div><strong>Accompanied viewings</strong><p>We show the house ourselves, by appointment, and report back after every viewing.</p></div></li><li><span>05</span><div><strong>Negotiation to closing</strong><p>We work with your solicitor until the keys change hands.</p></div></li></ol></div><div class="col reveal"><h3>For buyers</h3><ol><li><span>01</span><div><strong>Early access</strong><p>Register once and hear about new homes before they go to the portals.</p></div></li><li><span>02</span><div><strong>Period home guidance</strong><p>Straight answers on surveys, protected structures, BER upgrades and what a renovation really involves.</p></div></li><li><span>03</span><div><strong>New build guidance</strong><p>Specifications, stage payments, snagging and handover, explained before you commit.</p></div></li><li><span>04</span><div><strong>Clear bidding</strong><p>Transparent offers, recorded and confirmed in writing, every time.</p></div></li></ol><a class="link" href="#contact">Talk to us about buying <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M5 12h14M13 6l6 6-6 6"></path></svg></a></div></div></div></section>	.lv{--ink:#121816;--brass:#B08A52;--brassl:#D2B27E;font-family:'Manrope',system-ui,sans-serif}\n.svc{background:var(--ink);color:#fff;padding:clamp(4.5rem,10vw,8.5rem) 0}\n.wrap{width:min(1320px,92vw);margin:0 auto}\n.head{max-width:62rem;margin-bottom:4rem}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brassl);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.6rem,5.6vw,5.2rem);line-height:.98;letter-spacing:-.015em;margin:0}\nh2 em{font-style:italic;font-weight:400;color:var(--brassl)}\n.cols{display:grid;grid-template-columns:.85fr 1fr 1fr;gap:clamp(2rem,4vw,4rem);align-items:start}\n.pic{margin:0;position:sticky;top:2rem}\n.pic img{width:100%;aspect-ratio:3/4.4;object-fit:cover;display:block;filter:saturate(.9)}\nfigcaption{margin-top:1rem;font-size:.85rem;color:rgba(255,255,255,.6);font-style:italic;font-family:'Cormorant Garamond',Georgia,serif;font-size:1.1rem}\nh3{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:2.2rem;margin:0 0 1.2rem;padding-bottom:1rem;border-bottom:1px solid var(--brass)}\nol{list-style:none;margin:0;padding:0}\nli{display:grid;grid-template-columns:2.6rem 1fr;gap:.6rem;padding:1.3rem 0;border-bottom:1px solid rgba(255,255,255,.12);transition:padding-left .35s}\nli:hover{padding-left:.5rem}\nli span{font-family:'Cormorant Garamond',Georgia,serif;font-style:italic;color:var(--brassl);font-size:1.2rem}\nstrong{display:block;font-weight:600;font-size:1rem;letter-spacing:.01em;margin-bottom:.35rem}\nli p{margin:0;color:rgba(255,255,255,.68);line-height:1.65;font-size:.94rem}\n.link{display:inline-flex;align-items:center;gap:.6rem;margin-top:2rem;color:#fff;text-decoration:none;font-size:.82rem;font-weight:600;letter-spacing:.14em;text-transform:uppercase;border-bottom:1px solid var(--brassl);padding-bottom:.35rem;transition:gap .3s,color .3s}\n.link:hover{gap:1rem;color:var(--brassl)}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealS linear both;animation-timeline:view();animation-range:entry 0% cover 25%}}}\n@keyframes lvRevealS{from{opacity:0;transform:translateY(48px)}to{opacity:1;transform:none}}\n@media (max-width:1000px){.cols{grid-template-columns:1fr 1fr}.pic{grid-column:1 / -1;position:static}.pic img{aspect-ratio:16/10}}\n@media (max-width:680px){.cols{grid-template-columns:1fr}.head{margin-bottom:2.6rem}}	t	services	\N
4	4	layout	6af66b08ff7f070016860993	<section class="lv why"><div class="wrap"><div class="visual reveal"><img class="a" src="/api/media/file/georgian-house-with-fanlight-doorway-dublin.jpg" alt="Archive photograph of a Georgian Dublin house with fanlight doorway"><img class="b" src="/api/media/file/living-room-interior-with-natural-light.jpg" alt="Contemporary living room with a mustard armchair and brass floor lamp"><p class="cap">Two hundred years apart. <em>Same care.</em></p></div><div class="text"><p class="eyebrow reveal">03 · Why Linden &amp; Vale</p><h2 class="reveal">We take on fewer homes. <em>On purpose.</em></h2><p class="lead reveal">Big agencies spread their time thinly. We keep our list short so every home gets the attention it would get if it were our own.</p><ol class="points"><li class="reveal"><span class="n">I</span><div><h3>Two specialisms, one standard</h3><p>We know the difference between a granite step and a cast-iron railing, and between an A1 and an A2 rating. Period homes and new builds are all we do.</p></div></li><li class="reveal"><span class="n">II</span><div><h3>The same person, start to finish</h3><p>The valuer who walks your house is the agent who runs your viewings, takes your offers and calls you on closing day.</p></div></li><li class="reveal"><span class="n">III</span><div><h3>Presentation that does the selling</h3><p>Architectural photography, honest copy and a printed brochure. Homes that look right attract buyers who are ready.</p></div></li></ol></div></div></section>	.lv{--ink:#121816;--stone:#F1EBE1;--brass:#B08A52;--muted:#5F655F;--rule:rgba(18,24,22,.14);font-family:'Manrope',system-ui,sans-serif;color:var(--ink)}\n.why{background:var(--stone);padding:clamp(4.5rem,10vw,8.5rem) 0;overflow:hidden}\n.wrap{width:min(1320px,92vw);margin:0 auto;display:grid;grid-template-columns:1fr 1fr;gap:clamp(3rem,6vw,6rem);align-items:center}\n.visual{position:relative;padding-bottom:18%;padding-right:12%}\n.visual img{display:block;object-fit:cover;transition:transform 1s cubic-bezier(.2,.7,.2,1)}\n.a{width:100%;aspect-ratio:1/1.08;filter:contrast(1.05)}\n.b{position:absolute;right:0;bottom:0;width:52%;aspect-ratio:4/5;outline:10px solid var(--stone);box-shadow:24px 24px 0 -10px var(--brass)}\n.visual:hover .b{transform:translate(-8px,-8px)}\n.cap{position:absolute;left:0;bottom:2%;margin:0;font-family:'Cormorant Garamond',Georgia,serif;font-size:1.25rem;max-width:40%}\n.cap em{color:var(--brass)}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brass);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.6rem,5vw,4.8rem);line-height:.98;letter-spacing:-.015em;margin:0}\nh2 em{font-style:italic;font-weight:400;color:var(--brass);display:block}\n.lead{font-size:1.1rem;line-height:1.75;color:var(--muted);margin:1.6rem 0 2.2rem;max-width:34rem}\n.points{list-style:none;margin:0;padding:0;border-top:1px solid var(--rule)}\n.points li{display:grid;grid-template-columns:3.4rem 1fr;gap:1rem;padding:1.5rem 0;border-bottom:1px solid var(--rule)}\n.n{font-family:'Cormorant Garamond',Georgia,serif;font-style:italic;font-size:1.6rem;color:var(--brass);line-height:1}\nh3{font-family:'Cormorant Garamond',Georgia,serif;font-weight:600;font-size:1.55rem;margin:0 0 .4rem;line-height:1.15}\n.points p{margin:0;color:var(--muted);line-height:1.7;font-size:.96rem}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealW linear both;animation-timeline:view();animation-range:entry 0% cover 25%}}}\n@keyframes lvRevealW{from{opacity:0;transform:translateY(44px)}to{opacity:1;transform:none}}\n@media (max-width:900px){.wrap{grid-template-columns:1fr}.visual{max-width:560px}}\n@media (max-width:520px){.cap{position:static;max-width:none;margin-top:1.2rem}.visual{padding-bottom:0;padding-right:0}.b{position:relative;width:60%;margin:-30% 0 0 auto}}	t	why	\N
5	4	layout	6af66b08ff7f070016860994	<section class="lv val"><img class="bg" src="/api/media/file/georgian-terraces-along-dublin-s-georgian-mile.jpg" alt="Georgian red-brick terraces along Dublin's Georgian Mile"><div class="shade"></div><div class="wrap"><div class="panel reveal"><p class="eyebrow">04 · Free valuation</p><h2>What is your home worth <em>this season?</em></h2><p class="lead">Book a free, no-obligation valuation. A senior valuer visits, walks every room with you and sends a written figure with the reasoning behind it.</p><ul><li><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 12l5 5L20 6"></path></svg>A visit at a time that suits you</li><li><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 12l5 5L20 6"></path></svg>A written valuation with recent comparable sales</li><li><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 12l5 5L20 6"></path></svg>Honest advice on what to do before you list</li><li><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M4 12l5 5L20 6"></path></svg>No obligation and no pressure</li></ul><a class="btn" href="#request">Request my valuation</a></div></div></section>	.lv{--ink:#121816;--brass:#B08A52;--brassl:#D2B27E;--paper:#FAF7F1;font-family:'Manrope',system-ui,sans-serif;color:var(--ink)}\n.val{position:relative;min-height:88svh;display:flex;align-items:center;overflow:hidden;padding:clamp(4rem,9vw,7rem) 0}\n.bg{position:absolute;inset:0;width:100%;height:100%;object-fit:cover}\n.shade{position:absolute;inset:0;background:linear-gradient(90deg,rgba(12,16,14,.55),rgba(12,16,14,.1) 70%)}\n.wrap{position:relative;z-index:2;width:min(1320px,92vw);margin:0 auto}\n.panel{background:var(--paper);max-width:560px;padding:clamp(2rem,4.5vw,3.8rem);border-top:4px solid var(--brass);box-shadow:0 40px 80px -30px rgba(0,0,0,.45)}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brass);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.3rem,4.4vw,3.8rem);line-height:1;margin:0}\nh2 em{font-style:italic;font-weight:400;color:var(--brass);display:block}\n.lead{line-height:1.75;color:#5F655F;margin:1.3rem 0 1.6rem}\nul{list-style:none;margin:0 0 2rem;padding:0}\nli{display:flex;gap:.8rem;align-items:flex-start;padding:.7rem 0;border-bottom:1px solid rgba(18,24,22,.1);font-size:.96rem}\nli svg{flex:none;color:var(--brass);margin-top:.15rem}\n.btn{display:inline-block;background:var(--ink);color:#fff;text-decoration:none;padding:1.05rem 1.8rem;font-size:.82rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;transition:background .35s,transform .35s}\n.btn:hover{background:var(--brass);transform:translateY(-2px)}\n@media (prefers-reduced-motion:no-preference){.bg{transition:transform 1.6s}.val:hover .bg{transform:scale(1.03)}}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealV linear both;animation-timeline:view();animation-range:entry 0% cover 30%}}}\n@keyframes lvRevealV{from{opacity:0;transform:translateX(-48px)}to{opacity:1;transform:none}}\n@media (max-width:600px){.val{min-height:0;padding:40vh 0 0}.wrap{width:100%}.panel{max-width:none;box-shadow:none}.shade{background:linear-gradient(180deg,rgba(12,16,14,0),rgba(12,16,14,.3))}.btn{display:block;text-align:center}}	t	valuation	\N
6	4	layout	6af66b08ff7f070016860995	<section class="lv faq"><div class="wrap"><div class="side reveal"><p class="eyebrow">05 · Questions</p><h2>Good to <em>know</em></h2><p>Anything else, call us. We would rather answer a question than lose a client to guesswork.</p><a href="#contact">Contact the team</a></div><div class="list"><details open=""><summary>How do you value a home?<span></span></summary><p>We visit, measure and look at the condition, the setting and the details that buyers pay for. We then compare against recent sales on the Property Price Register and what we are seeing at viewings, and give you a figure in writing with the reasoning.</p></details><details><summary>What are your fees?<span></span></summary><p>Our fee is a percentage of the sale price, agreed and written into your terms before we start. You pay nothing unless your home sells.</p></details><details><summary>Do you only sell period homes and new builds?<span></span></summary><p>They are our specialism, and most of our list. We are happy to talk about any well-kept home in the areas we cover.</p></details><details><summary>My home is a protected structure. Does that change anything?<span></span></summary><p>It can affect what buyers are allowed to change, so we make sure the paperwork, planning history and conservation details are ready before launch. Prepared buyers bid with confidence.</p></details><details><summary>How long does a sale usually take?<span></span></summary><p>It depends on the home and the market. We give you a realistic timeline at the valuation, from launch to sale agreed and through to closing.</p></details><details><summary>I am buying a new build. Can you help with that?<span></span></summary><p>Yes. We explain the specification, stage payments, snagging and handover so there are no surprises, and we keep you updated through the build.</p></details></div></div></section>	.lv{--ink:#121816;--paper:#FAF7F1;--brass:#B08A52;--muted:#5F655F;--rule:rgba(18,24,22,.14);font-family:'Manrope',system-ui,sans-serif;color:var(--ink)}\n.faq{background:var(--paper);padding:clamp(4.5rem,10vw,8.5rem) 0}\n.wrap{width:min(1320px,92vw);margin:0 auto;display:grid;grid-template-columns:.8fr 1.2fr;gap:clamp(2.5rem,6vw,6rem);align-items:start}\n.side{position:sticky;top:2rem}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brass);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(2.6rem,5vw,4.8rem);line-height:.98;margin:0 0 1.4rem}\nh2 em{font-style:italic;font-weight:400;color:var(--brass)}\n.side p{color:var(--muted);line-height:1.75;margin:0 0 1.6rem;max-width:24rem}\n.side a{color:var(--ink);text-decoration:none;font-size:.82rem;font-weight:600;letter-spacing:.14em;text-transform:uppercase;border-bottom:1px solid var(--brass);padding-bottom:.35rem;transition:color .3s}\n.side a:hover{color:var(--brass)}\n.list{border-top:1px solid var(--rule)}\ndetails{border-bottom:1px solid var(--rule)}\nsummary{list-style:none;cursor:pointer;display:flex;justify-content:space-between;align-items:center;gap:1.5rem;padding:1.6rem 0;font-family:'Cormorant Garamond',Georgia,serif;font-size:clamp(1.35rem,2vw,1.7rem);font-weight:500;transition:color .3s}\nsummary::-webkit-details-marker{display:none}\nsummary:hover{color:var(--brass)}\nsummary span{position:relative;flex:none;width:18px;height:18px}\nsummary span::before,summary span::after{content:'';position:absolute;left:0;top:50%;width:18px;height:1.5px;background:var(--brass);transition:transform .35s}\nsummary span::after{transform:rotate(90deg)}\ndetails[open] summary span::after{transform:rotate(0)}\ndetails p{margin:0 0 1.7rem;color:var(--muted);line-height:1.8;max-width:42rem}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealF linear both;animation-timeline:view();animation-range:entry 0% cover 25%}}}\n@keyframes lvRevealF{from{opacity:0;transform:translateY(40px)}to{opacity:1;transform:none}}\n@media (max-width:860px){.wrap{grid-template-columns:1fr}.side{position:static}}	t	faq	\N
7	4	layout	6af66b08ff7f070016860996	<section class="lv contact"><div class="wrap"><div class="big reveal"><p class="eyebrow">06 · Contact</p><h2>Let’s talk about <em>your home.</em></h2></div><div class="grid reveal"><div class="item"><span>Call</span><a href="tel:+35310000000">+353 1 000 0000</a></div><div class="item"><span>Email</span><a href="mailto:hello@lindenandvale.ie">hello@lindenandvale.ie</a></div><div class="item"><span>Office</span><p>Address to be confirmed<br>Dublin</p></div><div class="item"><span>Hours</span><p>Mon to Fri, 9am to 6pm<br>Saturday by appointment</p></div></div><div class="cue reveal"><p>Request your free valuation below. We reply within one working day.</p><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.4"><path d="M12 4v16M5 13l7 7 7-7"></path></svg></div></div></section>	.lv{--ink:#121816;--brass:#B08A52;--brassl:#D2B27E;font-family:'Manrope',system-ui,sans-serif}\n.contact{background:var(--ink);color:#fff;padding:clamp(4.5rem,10vw,8rem) 0 clamp(3rem,6vw,4.5rem)}\n.wrap{width:min(1320px,92vw);margin:0 auto}\n.eyebrow{font-size:.76rem;letter-spacing:.22em;text-transform:uppercase;color:var(--brassl);margin:0 0 1rem;font-weight:600}\nh2{font-family:'Cormorant Garamond',Georgia,serif;font-weight:500;font-size:clamp(3rem,8vw,7.6rem);line-height:.92;letter-spacing:-.02em;margin:0}\nh2 em{font-style:italic;font-weight:400;color:var(--brassl);display:block}\n.grid{display:grid;grid-template-columns:repeat(4,1fr);margin-top:clamp(3rem,6vw,5rem);border-top:1px solid rgba(255,255,255,.16)}\n.item{padding:1.8rem 1.6rem 1.8rem 0;border-right:1px solid rgba(255,255,255,.16);margin-right:1.6rem}\n.item:last-child{border:0;margin:0}\n.item span{display:block;font-size:.72rem;letter-spacing:.2em;text-transform:uppercase;color:rgba(255,255,255,.55);margin-bottom:.8rem}\n.item a,.item p{font-family:'Cormorant Garamond',Georgia,serif;font-size:1.45rem;line-height:1.3;color:#fff;text-decoration:none;margin:0;transition:color .3s;word-break:break-word}\n.item a:hover{color:var(--brassl)}\n.cue{display:flex;align-items:center;justify-content:space-between;gap:1.5rem;margin-top:2.5rem;padding:1.6rem 2rem;border:1px solid rgba(210,178,126,.45);color:var(--brassl)}\n.cue p{margin:0;color:#fff;font-size:1rem}\n@media (prefers-reduced-motion:no-preference){.cue svg{animation:lvNudge 2.2s ease-in-out infinite}}\n@keyframes lvNudge{0%,100%{transform:translateY(0)}50%{transform:translateY(6px)}}\n@supports (animation-timeline:view()){@media (prefers-reduced-motion:no-preference){.reveal{animation:lvRevealC linear both;animation-timeline:view();animation-range:entry 0% cover 25%}}}\n@keyframes lvRevealC{from{opacity:0;transform:translateY(40px)}to{opacity:1;transform:none}}\n@media (max-width:900px){.grid{grid-template-columns:1fr 1fr}.item:nth-child(2){border:0;margin-right:0}.item{border-bottom:1px solid rgba(255,255,255,.16)}}\n@media (max-width:520px){.grid{grid-template-columns:1fr}.item{border-right:0;margin-right:0}.cue{padding:1.3rem}}	t	contact	\N
\.


--
-- Data for Name: pages_blocks_embed; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_embed (_order, _parent_id, _path, id, url, caption, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_faq; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_faq (_order, _parent_id, _path, id, heading, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_faq_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_faq_items (_order, _parent_id, id, question, answer) FROM stdin;
\.


--
-- Data for Name: pages_blocks_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_features (_order, _parent_id, _path, id, eyebrow, heading, intro, columns, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_features_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_features_items (_order, _parent_id, id, icon, title, description, image_id) FROM stdin;
\.


--
-- Data for Name: pages_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_form_block (_order, _parent_id, _path, id, form_id, enable_intro, intro_content, block_name) FROM stdin;
8	4	layout	6af66b08ff7f070016860997	2	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Request your free valuation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Tell us a little about your home and a senior valuer will call to arrange a visit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	request
\.


--
-- Data for Name: pages_blocks_gallery; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_gallery (_order, _parent_id, _path, id, heading, columns, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_loop_grid; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_loop_grid (_order, _parent_id, _path, id, heading, collection, "limit", show_filter, load_more, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_media_block (_order, _parent_id, _path, id, media_id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_pricing; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_pricing (_order, _parent_id, _path, id, eyebrow, heading, intro, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_pricing_plans; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_pricing_plans (_order, _parent_id, id, name, price, period, description, highlighted, link_type, link_new_tab, link_url, link_label) FROM stdin;
\.


--
-- Data for Name: pages_blocks_pricing_plans_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_pricing_plans_features (_order, _parent_id, id, feature) FROM stdin;
\.


--
-- Data for Name: pages_blocks_split; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_split (_order, _parent_id, _path, id, media_id, image_position, eyebrow, heading, text, button_label, button_url, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_split_bullets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_split_bullets (_order, _parent_id, id, text) FROM stdin;
\.


--
-- Data for Name: pages_blocks_stats; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_stats (_order, _parent_id, _path, id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_stats_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_stats_items (_order, _parent_id, id, value, label) FROM stdin;
\.


--
-- Data for Name: pages_blocks_testimonials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_testimonials (_order, _parent_id, _path, id, eyebrow, heading, block_name) FROM stdin;
\.


--
-- Data for Name: pages_blocks_testimonials_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_testimonials_items (_order, _parent_id, id, quote, name, role, photo_id, rating) FROM stdin;
\.


--
-- Data for Name: pages_hero_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_rels (id, "order", parent_id, path, pages_id, posts_id, media_id, categories_id) FROM stdin;
\.


--
-- Data for Name: payload_folders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_folders (id, name, folder_id, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_folders_folder_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_folders_folder_type ("order", parent_id, value, id) FROM stdin;
\.


--
-- Data for Name: payload_jobs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_jobs (id, input, completed_at, total_tried, has_error, error, task_slug, queue, wait_until, processing, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_jobs_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_jobs_log (_order, _parent_id, id, executed_at, completed_at, task_slug, task_i_d, input, output, state, error) FROM stdin;
\.


--
-- Data for Name: payload_kv; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_kv (id, key, data) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents (id, global_slug, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents_rels (id, "order", parent_id, path, pages_id, posts_id, media_id, categories_id, tags_id, comments_id, users_id, redirects_id, forms_id, form_submissions_id, search_id, payload_folders_id, payload_mcp_api_keys_id, properties_id, property_enquiries_id, section_templates_id, synced_sections_id, page_views_id, not_found_log_id, activity_log_id, email_log_id) FROM stdin;
\.


--
-- Data for Name: payload_mcp_api_keys; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_mcp_api_keys (id, user_id, label, description, pages_find, pages_create, pages_update, pages_delete, posts_find, posts_create, posts_update, posts_delete, categories_find, categories_create, categories_update, categories_delete, tags_find, tags_create, tags_update, tags_delete, comments_find, comments_update, comments_delete, media_find, media_update, redirects_find, redirects_create, redirects_update, redirects_delete, forms_find, forms_create, forms_update, forms_delete, form_submissions_find, site_settings_find, site_settings_update, header_find, header_update, footer_find, footer_update, payload_mcp_tool_write_post, payload_mcp_tool_write_page, updated_at, created_at, enable_a_p_i_key, api_key, api_key_index, payload_mcp_tool_add_image, properties_find, properties_create, properties_update, properties_delete, property_enquiries_find, property_enquiries_update) FROM stdin;
\.


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_migrations (id, name, batch, updated_at, created_at) FROM stdin;
1	20261111_152432_initial	1	2026-11-12 23:08:51.311+00	2026-11-12 23:08:51.304+00
2	20261111_171055_claude_connections	1	2026-11-12 23:08:51.362+00	2026-11-12 23:08:51.362+00
3	20261111_205754_brand_colours	1	2026-11-12 23:08:51.383+00	2026-11-12 23:08:51.382+00
4	20261112_235053_add_image_tool	2	2026-11-13 00:05:52.18+00	2026-11-13 00:05:52.179+00
5	20261113_002024_design_blocks	3	2026-11-13 00:36:48.753+00	2026-11-13 00:36:48.752+00
6	20261113_004837_designed_sections	4	2026-11-13 01:02:30.304+00	2026-11-13 01:02:30.303+00
7	20261113_020632_property_listings	5	2026-11-13 02:34:56.4+00	2026-11-13 02:34:56.399+00
8	20261113_030731_mortgage_calculator	6	2026-11-13 03:21:55.963+00	2026-11-13 03:21:55.962+00
9	20261114_162748_menu_style	7	2026-11-16 01:39:10.956+00	2026-11-16 01:39:10.955+00
10	20261114_185025_section_templates	7	2026-11-16 01:39:11.119+00	2026-11-16 01:39:11.119+00
11	20261114_193813_builder_widgets	7	2026-11-16 01:39:11.35+00	2026-11-16 01:39:11.349+00
12	20261114_211632_base_features	7	2026-11-16 01:39:11.449+00	2026-11-16 01:39:11.449+00
\.


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences (id, key, value, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences_rels (id, "order", parent_id, path, users_id, payload_mcp_api_keys_id) FROM stdin;
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.posts (id, title, hero_image_id, content, excerpt, sticky, allow_comments, meta_title, meta_image_id, meta_description, published_at, generate_slug, slug, updated_at, created_at, _status, meta_focus_keyword, meta_og_title, meta_og_description, meta_canonical_u_r_l, meta_noindex) FROM stdin;
\.


--
-- Data for Name: posts_populated_authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.posts_populated_authors (_order, _parent_id, id, name) FROM stdin;
\.


--
-- Data for Name: posts_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.posts_rels (id, "order", parent_id, path, posts_id, categories_id, tags_id, users_id) FROM stdin;
\.


--
-- Data for Name: private_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.private_settings (id, smtp_host, smtp_port, smtp_security, smtp_user, smtp_pass, from_address, from_name, turnstile_site_key, turnstile_secret, backups_enabled, backup_hour, backup_keep_days, backup_media, offsite_enabled, s3_endpoint, s3_region, s3_bucket, s3_access_key, s3_secret_key, s3_prefix, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: redirects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.redirects (id, "from", to_type, to_url, type, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: redirects_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.redirects_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: search; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.search (id, title, priority, slug, meta_title, meta_description, meta_image_id, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: search_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.search_categories (_order, _parent_id, id, relation_to, category_i_d, title) FROM stdin;
\.


--
-- Data for Name: search_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.search_rels (id, "order", parent_id, path, posts_id) FROM stdin;
\.


--
-- Data for Name: section_templates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.section_templates (id, name, html, css, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: site_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_settings (id, site_title, tagline, logo_id, site_icon_id, language, timezone, date_format, template, primary_color, accent_color, heading_font, body_font, custom_c_s_s, homepage_displays, homepage_id, posts_per_page, discourage_search_engines, enable_blog, enable_comments, moderate_comments, enable_search, enable_r_s_s, enable_theme_switcher, maintenance_mode, maintenance_message, privacy_policy_page_id, updated_at, created_at, business_type, business_name, price_range, default_share_image_id, enable_llms_txt, google_verification, bing_verification, enable_analytics, analytics_retention_days, ga4_id, gtm_id, meta_pixel_id, plausible_domain, cookie_banner, cookie_banner_text, announcement_enabled, announcement_text, announcement_link_label, announcement_link_u_r_l, announcement_start, announcement_end, announcement_style, announcement_dismissible) FROM stdin;
1	Linden & Vale	Dublin estate agents for period homes and new builds	\N	\N	en	Europe/Dublin	long	editorial	#121816	#B08A52	Cormorant Garamond	Manrope	\N	page	4	12	f	t	t	t	t	t	f	f	We are making some improvements. Back very soon.	\N	2026-11-13 11:02:24.866+00	2026-11-13 00:14:58.981+00	Organization	\N	\N	\N	t	\N	\N	t	395	\N	\N	\N	\N	auto	We use cookies to understand how our site is used and to improve it. You can accept or decline; the site works either way.	f	\N	\N	\N	\N	\N	brand	t
\.


--
-- Data for Name: site_settings_code_snippets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_settings_code_snippets (_order, _parent_id, id, name, location, enabled, code, needs_consent) FROM stdin;
\.


--
-- Data for Name: synced_sections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.synced_sections (id, name, html, css, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tags (id, title, generate_slug, slug, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, name, role, photo_id, bio, updated_at, created_at, email, reset_password_token, reset_password_expiration, salt, hash, reset_password_requested_at, login_attempts, lock_until, menu_style, two_factor_enabled, two_factor_secret, two_factor_pending) FROM stdin;
\.


--
-- Data for Name: users_sessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_sessions (_order, _parent_id, id, created_at, expires_at) FROM stdin;
\.


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_archive_id_seq', 1, false);


--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_columns_id_seq', 1, true);


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_id_seq', 1, true);


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_id_seq', 3, true);


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_links_id_seq', 3, true);


--
-- Name: _pages_v_blocks_design_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_design_id_seq', 20, true);


--
-- Name: _pages_v_blocks_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_embed_id_seq', 1, false);


--
-- Name: _pages_v_blocks_faq_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_faq_id_seq', 1, true);


--
-- Name: _pages_v_blocks_faq_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_faq_items_id_seq', 4, true);


--
-- Name: _pages_v_blocks_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_features_id_seq', 3, true);


--
-- Name: _pages_v_blocks_features_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_features_items_id_seq', 9, true);


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_form_block_id_seq', 4, true);


--
-- Name: _pages_v_blocks_gallery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_gallery_id_seq', 1, true);


--
-- Name: _pages_v_blocks_loop_grid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_loop_grid_id_seq', 1, false);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_media_block_id_seq', 1, true);


--
-- Name: _pages_v_blocks_pricing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_pricing_id_seq', 1, true);


--
-- Name: _pages_v_blocks_pricing_plans_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_pricing_plans_features_id_seq', 10, true);


--
-- Name: _pages_v_blocks_pricing_plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_pricing_plans_id_seq', 3, true);


--
-- Name: _pages_v_blocks_split_bullets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_split_bullets_id_seq', 1, false);


--
-- Name: _pages_v_blocks_split_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_split_id_seq', 1, false);


--
-- Name: _pages_v_blocks_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_stats_id_seq', 1, false);


--
-- Name: _pages_v_blocks_stats_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_stats_items_id_seq', 1, false);


--
-- Name: _pages_v_blocks_testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_testimonials_id_seq', 1, false);


--
-- Name: _pages_v_blocks_testimonials_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_testimonials_items_id_seq', 1, false);


--
-- Name: _pages_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_id_seq', 7, true);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_rels_id_seq', 9, true);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_version_hero_links_id_seq', 6, true);


--
-- Name: _posts_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._posts_v_id_seq', 1, false);


--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._posts_v_rels_id_seq', 1, false);


--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._posts_v_version_populated_authors_id_seq', 1, false);


--
-- Name: activity_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.activity_log_id_seq', 4, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: email_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.email_log_id_seq', 1, false);


--
-- Name: footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.footer_id_seq', 1, true);


--
-- Name: footer_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.footer_rels_id_seq', 1, false);


--
-- Name: form_submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.form_submissions_id_seq', 1, false);


--
-- Name: forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.forms_id_seq', 2, true);


--
-- Name: header_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.header_id_seq', 1, true);


--
-- Name: header_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.header_rels_id_seq', 1, true);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.media_id_seq', 57, true);


--
-- Name: not_found_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.not_found_log_id_seq', 1, false);


--
-- Name: page_views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.page_views_id_seq', 1, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_id_seq', 4, true);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_rels_id_seq', 9, true);


--
-- Name: payload_folders_folder_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_folders_folder_type_id_seq', 1, false);


--
-- Name: payload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_folders_id_seq', 1, false);


--
-- Name: payload_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_jobs_id_seq', 1, false);


--
-- Name: payload_kv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_kv_id_seq', 1, false);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_id_seq', 3, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_rels_id_seq', 4, true);


--
-- Name: payload_mcp_api_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_mcp_api_keys_id_seq', 9, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_migrations_id_seq', 12, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_id_seq', 5, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_rels_id_seq', 10, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: posts_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.posts_rels_id_seq', 1, false);


--
-- Name: private_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.private_settings_id_seq', 1, false);


--
-- Name: redirects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.redirects_id_seq', 1, false);


--
-- Name: redirects_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.redirects_rels_id_seq', 1, false);


--
-- Name: search_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.search_id_seq', 1, false);


--
-- Name: search_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.search_rels_id_seq', 1, false);


--
-- Name: section_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.section_templates_id_seq', 1, false);


--
-- Name: site_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_id_seq', 1, true);


--
-- Name: synced_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.synced_sections_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_archive
    ADD CONSTRAINT _pages_v_blocks_archive_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content_columns _pages_v_blocks_content_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns
    ADD CONSTRAINT _pages_v_blocks_content_columns_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links
    ADD CONSTRAINT _pages_v_blocks_cta_links_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_cta
    ADD CONSTRAINT _pages_v_blocks_cta_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_design _pages_v_blocks_design_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_design
    ADD CONSTRAINT _pages_v_blocks_design_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_embed _pages_v_blocks_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_embed
    ADD CONSTRAINT _pages_v_blocks_embed_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_faq_items _pages_v_blocks_faq_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_faq_items
    ADD CONSTRAINT _pages_v_blocks_faq_items_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_faq _pages_v_blocks_faq_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_faq
    ADD CONSTRAINT _pages_v_blocks_faq_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_features_items _pages_v_blocks_features_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_features_items
    ADD CONSTRAINT _pages_v_blocks_features_items_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_features _pages_v_blocks_features_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_features
    ADD CONSTRAINT _pages_v_blocks_features_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_gallery _pages_v_blocks_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_gallery
    ADD CONSTRAINT _pages_v_blocks_gallery_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_loop_grid _pages_v_blocks_loop_grid_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_loop_grid
    ADD CONSTRAINT _pages_v_blocks_loop_grid_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_pricing _pages_v_blocks_pricing_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_pricing
    ADD CONSTRAINT _pages_v_blocks_pricing_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_pricing_plans_features _pages_v_blocks_pricing_plans_features_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_pricing_plans_features
    ADD CONSTRAINT _pages_v_blocks_pricing_plans_features_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_pricing_plans _pages_v_blocks_pricing_plans_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_pricing_plans
    ADD CONSTRAINT _pages_v_blocks_pricing_plans_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_split_bullets _pages_v_blocks_split_bullets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_split_bullets
    ADD CONSTRAINT _pages_v_blocks_split_bullets_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_split _pages_v_blocks_split_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_split
    ADD CONSTRAINT _pages_v_blocks_split_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_stats_items _pages_v_blocks_stats_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_stats_items
    ADD CONSTRAINT _pages_v_blocks_stats_items_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_stats _pages_v_blocks_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_stats
    ADD CONSTRAINT _pages_v_blocks_stats_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_testimonials_items _pages_v_blocks_testimonials_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_items
    ADD CONSTRAINT _pages_v_blocks_testimonials_items_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_testimonials _pages_v_blocks_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials
    ADD CONSTRAINT _pages_v_blocks_testimonials_pkey PRIMARY KEY (id);


--
-- Name: _pages_v _pages_v_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_rels _pages_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_pkey PRIMARY KEY (id);


--
-- Name: _posts_v _posts_v_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_pkey PRIMARY KEY (id);


--
-- Name: _posts_v_rels _posts_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _posts_v_version_populated_authors _posts_v_version_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v_version_populated_authors
    ADD CONSTRAINT _posts_v_version_populated_authors_pkey PRIMARY KEY (id);


--
-- Name: activity_log activity_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.activity_log
    ADD CONSTRAINT activity_log_pkey PRIMARY KEY (id);


--
-- Name: categories_breadcrumbs categories_breadcrumbs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: email_log email_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_log
    ADD CONSTRAINT email_log_pkey PRIMARY KEY (id);


--
-- Name: footer_nav_items footer_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_nav_items
    ADD CONSTRAINT footer_nav_items_pkey PRIMARY KEY (id);


--
-- Name: footer footer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer
    ADD CONSTRAINT footer_pkey PRIMARY KEY (id);


--
-- Name: footer_rels footer_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_pkey PRIMARY KEY (id);


--
-- Name: footer_social footer_social_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_social
    ADD CONSTRAINT footer_social_pkey PRIMARY KEY (id);


--
-- Name: form_submissions form_submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_submissions
    ADD CONSTRAINT form_submissions_pkey PRIMARY KEY (id);


--
-- Name: form_submissions_submission_data form_submissions_submission_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_submissions_submission_data
    ADD CONSTRAINT form_submissions_submission_data_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_checkbox forms_blocks_checkbox_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_checkbox
    ADD CONSTRAINT forms_blocks_checkbox_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_country forms_blocks_country_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_country
    ADD CONSTRAINT forms_blocks_country_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_email forms_blocks_email_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_email
    ADD CONSTRAINT forms_blocks_email_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_message forms_blocks_message_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_message
    ADD CONSTRAINT forms_blocks_message_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_number forms_blocks_number_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_number
    ADD CONSTRAINT forms_blocks_number_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_select_options forms_blocks_select_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_select_options
    ADD CONSTRAINT forms_blocks_select_options_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_select forms_blocks_select_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_select
    ADD CONSTRAINT forms_blocks_select_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_state forms_blocks_state_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_state
    ADD CONSTRAINT forms_blocks_state_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_text forms_blocks_text_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_text
    ADD CONSTRAINT forms_blocks_text_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_textarea forms_blocks_textarea_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_textarea
    ADD CONSTRAINT forms_blocks_textarea_pkey PRIMARY KEY (id);


--
-- Name: forms_emails forms_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_emails
    ADD CONSTRAINT forms_emails_pkey PRIMARY KEY (id);


--
-- Name: forms forms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms
    ADD CONSTRAINT forms_pkey PRIMARY KEY (id);


--
-- Name: header_nav_items_children header_nav_items_children_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_nav_items_children
    ADD CONSTRAINT header_nav_items_children_pkey PRIMARY KEY (id);


--
-- Name: header_nav_items header_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_nav_items
    ADD CONSTRAINT header_nav_items_pkey PRIMARY KEY (id);


--
-- Name: header header_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header
    ADD CONSTRAINT header_pkey PRIMARY KEY (id);


--
-- Name: header_rels header_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: not_found_log not_found_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.not_found_log
    ADD CONSTRAINT not_found_log_pkey PRIMARY KEY (id);


--
-- Name: page_views page_views_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.page_views
    ADD CONSTRAINT page_views_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_archive pages_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_archive
    ADD CONSTRAINT pages_blocks_archive_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_columns pages_blocks_content_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_columns
    ADD CONSTRAINT pages_blocks_content_columns_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content pages_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta_links
    ADD CONSTRAINT pages_blocks_cta_links_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta pages_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta
    ADD CONSTRAINT pages_blocks_cta_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_design pages_blocks_design_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_design
    ADD CONSTRAINT pages_blocks_design_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_embed pages_blocks_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_embed
    ADD CONSTRAINT pages_blocks_embed_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_faq_items pages_blocks_faq_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_faq_items
    ADD CONSTRAINT pages_blocks_faq_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_faq pages_blocks_faq_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_faq
    ADD CONSTRAINT pages_blocks_faq_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_features_items pages_blocks_features_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_features_items
    ADD CONSTRAINT pages_blocks_features_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_features pages_blocks_features_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_features
    ADD CONSTRAINT pages_blocks_features_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_form_block pages_blocks_form_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_gallery pages_blocks_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_gallery
    ADD CONSTRAINT pages_blocks_gallery_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_loop_grid pages_blocks_loop_grid_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_loop_grid
    ADD CONSTRAINT pages_blocks_loop_grid_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_block pages_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_pricing pages_blocks_pricing_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_pricing
    ADD CONSTRAINT pages_blocks_pricing_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_pricing_plans_features pages_blocks_pricing_plans_features_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_pricing_plans_features
    ADD CONSTRAINT pages_blocks_pricing_plans_features_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_pricing_plans pages_blocks_pricing_plans_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_pricing_plans
    ADD CONSTRAINT pages_blocks_pricing_plans_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_split_bullets pages_blocks_split_bullets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_split_bullets
    ADD CONSTRAINT pages_blocks_split_bullets_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_split pages_blocks_split_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_split
    ADD CONSTRAINT pages_blocks_split_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_stats_items pages_blocks_stats_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_stats_items
    ADD CONSTRAINT pages_blocks_stats_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_stats pages_blocks_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_stats
    ADD CONSTRAINT pages_blocks_stats_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_testimonials_items pages_blocks_testimonials_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_testimonials_items
    ADD CONSTRAINT pages_blocks_testimonials_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_testimonials pages_blocks_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_testimonials
    ADD CONSTRAINT pages_blocks_testimonials_pkey PRIMARY KEY (id);


--
-- Name: pages_hero_links pages_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages_rels pages_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_folders_folder_type payload_folders_folder_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_folders_folder_type
    ADD CONSTRAINT payload_folders_folder_type_pkey PRIMARY KEY (id);


--
-- Name: payload_folders payload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_folders
    ADD CONSTRAINT payload_folders_pkey PRIMARY KEY (id);


--
-- Name: payload_jobs_log payload_jobs_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_jobs_log
    ADD CONSTRAINT payload_jobs_log_pkey PRIMARY KEY (id);


--
-- Name: payload_jobs payload_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_jobs
    ADD CONSTRAINT payload_jobs_pkey PRIMARY KEY (id);


--
-- Name: payload_kv payload_kv_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_kv
    ADD CONSTRAINT payload_kv_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents payload_locked_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents
    ADD CONSTRAINT payload_locked_documents_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_mcp_api_keys payload_mcp_api_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_mcp_api_keys
    ADD CONSTRAINT payload_mcp_api_keys_pkey PRIMARY KEY (id);


--
-- Name: payload_migrations payload_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_migrations
    ADD CONSTRAINT payload_migrations_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences payload_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences
    ADD CONSTRAINT payload_preferences_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences_rels payload_preferences_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: posts_populated_authors posts_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_populated_authors
    ADD CONSTRAINT posts_populated_authors_pkey PRIMARY KEY (id);


--
-- Name: posts_rels posts_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_pkey PRIMARY KEY (id);


--
-- Name: private_settings private_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.private_settings
    ADD CONSTRAINT private_settings_pkey PRIMARY KEY (id);


--
-- Name: redirects redirects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redirects
    ADD CONSTRAINT redirects_pkey PRIMARY KEY (id);


--
-- Name: redirects_rels redirects_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_pkey PRIMARY KEY (id);


--
-- Name: search_categories search_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.search_categories
    ADD CONSTRAINT search_categories_pkey PRIMARY KEY (id);


--
-- Name: search search_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_pkey PRIMARY KEY (id);


--
-- Name: search_rels search_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.search_rels
    ADD CONSTRAINT search_rels_pkey PRIMARY KEY (id);


--
-- Name: section_templates section_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.section_templates
    ADD CONSTRAINT section_templates_pkey PRIMARY KEY (id);


--
-- Name: site_settings_code_snippets site_settings_code_snippets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_code_snippets
    ADD CONSTRAINT site_settings_code_snippets_pkey PRIMARY KEY (id);


--
-- Name: site_settings site_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings
    ADD CONSTRAINT site_settings_pkey PRIMARY KEY (id);


--
-- Name: synced_sections synced_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.synced_sections
    ADD CONSTRAINT synced_sections_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_sessions users_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_autosave_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_autosave_idx ON public._pages_v USING btree (autosave);


--
-- Name: _pages_v_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_archive_order_idx ON public._pages_v_blocks_archive USING btree (_order);


--
-- Name: _pages_v_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_archive_parent_id_idx ON public._pages_v_blocks_archive USING btree (_parent_id);


--
-- Name: _pages_v_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_archive_path_idx ON public._pages_v_blocks_archive USING btree (_path);


--
-- Name: _pages_v_blocks_content_columns_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_columns_order_idx ON public._pages_v_blocks_content_columns USING btree (_order);


--
-- Name: _pages_v_blocks_content_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_columns_parent_id_idx ON public._pages_v_blocks_content_columns USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_order_idx ON public._pages_v_blocks_content USING btree (_order);


--
-- Name: _pages_v_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_parent_id_idx ON public._pages_v_blocks_content USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_path_idx ON public._pages_v_blocks_content USING btree (_path);


--
-- Name: _pages_v_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_cta_links_order_idx ON public._pages_v_blocks_cta_links USING btree (_order);


--
-- Name: _pages_v_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_cta_links_parent_id_idx ON public._pages_v_blocks_cta_links USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_cta_order_idx ON public._pages_v_blocks_cta USING btree (_order);


--
-- Name: _pages_v_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_cta_parent_id_idx ON public._pages_v_blocks_cta USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_cta_path_idx ON public._pages_v_blocks_cta USING btree (_path);


--
-- Name: _pages_v_blocks_design_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_design_order_idx ON public._pages_v_blocks_design USING btree (_order);


--
-- Name: _pages_v_blocks_design_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_design_parent_id_idx ON public._pages_v_blocks_design USING btree (_parent_id);


--
-- Name: _pages_v_blocks_design_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_design_path_idx ON public._pages_v_blocks_design USING btree (_path);


--
-- Name: _pages_v_blocks_design_synced_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_design_synced_idx ON public._pages_v_blocks_design USING btree (synced_id);


--
-- Name: _pages_v_blocks_embed_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_embed_order_idx ON public._pages_v_blocks_embed USING btree (_order);


--
-- Name: _pages_v_blocks_embed_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_embed_parent_id_idx ON public._pages_v_blocks_embed USING btree (_parent_id);


--
-- Name: _pages_v_blocks_embed_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_embed_path_idx ON public._pages_v_blocks_embed USING btree (_path);


--
-- Name: _pages_v_blocks_faq_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_faq_items_order_idx ON public._pages_v_blocks_faq_items USING btree (_order);


--
-- Name: _pages_v_blocks_faq_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_faq_items_parent_id_idx ON public._pages_v_blocks_faq_items USING btree (_parent_id);


--
-- Name: _pages_v_blocks_faq_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_faq_order_idx ON public._pages_v_blocks_faq USING btree (_order);


--
-- Name: _pages_v_blocks_faq_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_faq_parent_id_idx ON public._pages_v_blocks_faq USING btree (_parent_id);


--
-- Name: _pages_v_blocks_faq_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_faq_path_idx ON public._pages_v_blocks_faq USING btree (_path);


--
-- Name: _pages_v_blocks_features_items_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_features_items_image_idx ON public._pages_v_blocks_features_items USING btree (image_id);


--
-- Name: _pages_v_blocks_features_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_features_items_order_idx ON public._pages_v_blocks_features_items USING btree (_order);


--
-- Name: _pages_v_blocks_features_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_features_items_parent_id_idx ON public._pages_v_blocks_features_items USING btree (_parent_id);


--
-- Name: _pages_v_blocks_features_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_features_order_idx ON public._pages_v_blocks_features USING btree (_order);


--
-- Name: _pages_v_blocks_features_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_features_parent_id_idx ON public._pages_v_blocks_features USING btree (_parent_id);


--
-- Name: _pages_v_blocks_features_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_features_path_idx ON public._pages_v_blocks_features USING btree (_path);


--
-- Name: _pages_v_blocks_form_block_form_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_form_block_form_idx ON public._pages_v_blocks_form_block USING btree (form_id);


--
-- Name: _pages_v_blocks_form_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_form_block_order_idx ON public._pages_v_blocks_form_block USING btree (_order);


--
-- Name: _pages_v_blocks_form_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_form_block_parent_id_idx ON public._pages_v_blocks_form_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_form_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_form_block_path_idx ON public._pages_v_blocks_form_block USING btree (_path);


--
-- Name: _pages_v_blocks_gallery_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_gallery_order_idx ON public._pages_v_blocks_gallery USING btree (_order);


--
-- Name: _pages_v_blocks_gallery_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_gallery_parent_id_idx ON public._pages_v_blocks_gallery USING btree (_parent_id);


--
-- Name: _pages_v_blocks_gallery_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_gallery_path_idx ON public._pages_v_blocks_gallery USING btree (_path);


--
-- Name: _pages_v_blocks_loop_grid_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_loop_grid_order_idx ON public._pages_v_blocks_loop_grid USING btree (_order);


--
-- Name: _pages_v_blocks_loop_grid_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_loop_grid_parent_id_idx ON public._pages_v_blocks_loop_grid USING btree (_parent_id);


--
-- Name: _pages_v_blocks_loop_grid_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_loop_grid_path_idx ON public._pages_v_blocks_loop_grid USING btree (_path);


--
-- Name: _pages_v_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_media_block_media_idx ON public._pages_v_blocks_media_block USING btree (media_id);


--
-- Name: _pages_v_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_media_block_order_idx ON public._pages_v_blocks_media_block USING btree (_order);


--
-- Name: _pages_v_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_media_block_parent_id_idx ON public._pages_v_blocks_media_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_media_block_path_idx ON public._pages_v_blocks_media_block USING btree (_path);


--
-- Name: _pages_v_blocks_pricing_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_pricing_order_idx ON public._pages_v_blocks_pricing USING btree (_order);


--
-- Name: _pages_v_blocks_pricing_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_pricing_parent_id_idx ON public._pages_v_blocks_pricing USING btree (_parent_id);


--
-- Name: _pages_v_blocks_pricing_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_pricing_path_idx ON public._pages_v_blocks_pricing USING btree (_path);


--
-- Name: _pages_v_blocks_pricing_plans_features_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_pricing_plans_features_order_idx ON public._pages_v_blocks_pricing_plans_features USING btree (_order);


--
-- Name: _pages_v_blocks_pricing_plans_features_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_pricing_plans_features_parent_id_idx ON public._pages_v_blocks_pricing_plans_features USING btree (_parent_id);


--
-- Name: _pages_v_blocks_pricing_plans_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_pricing_plans_order_idx ON public._pages_v_blocks_pricing_plans USING btree (_order);


--
-- Name: _pages_v_blocks_pricing_plans_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_pricing_plans_parent_id_idx ON public._pages_v_blocks_pricing_plans USING btree (_parent_id);


--
-- Name: _pages_v_blocks_split_bullets_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_split_bullets_order_idx ON public._pages_v_blocks_split_bullets USING btree (_order);


--
-- Name: _pages_v_blocks_split_bullets_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_split_bullets_parent_id_idx ON public._pages_v_blocks_split_bullets USING btree (_parent_id);


--
-- Name: _pages_v_blocks_split_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_split_media_idx ON public._pages_v_blocks_split USING btree (media_id);


--
-- Name: _pages_v_blocks_split_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_split_order_idx ON public._pages_v_blocks_split USING btree (_order);


--
-- Name: _pages_v_blocks_split_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_split_parent_id_idx ON public._pages_v_blocks_split USING btree (_parent_id);


--
-- Name: _pages_v_blocks_split_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_split_path_idx ON public._pages_v_blocks_split USING btree (_path);


--
-- Name: _pages_v_blocks_stats_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_stats_items_order_idx ON public._pages_v_blocks_stats_items USING btree (_order);


--
-- Name: _pages_v_blocks_stats_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_stats_items_parent_id_idx ON public._pages_v_blocks_stats_items USING btree (_parent_id);


--
-- Name: _pages_v_blocks_stats_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_stats_order_idx ON public._pages_v_blocks_stats USING btree (_order);


--
-- Name: _pages_v_blocks_stats_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_stats_parent_id_idx ON public._pages_v_blocks_stats USING btree (_parent_id);


--
-- Name: _pages_v_blocks_stats_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_stats_path_idx ON public._pages_v_blocks_stats USING btree (_path);


--
-- Name: _pages_v_blocks_testimonials_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_testimonials_items_order_idx ON public._pages_v_blocks_testimonials_items USING btree (_order);


--
-- Name: _pages_v_blocks_testimonials_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_testimonials_items_parent_id_idx ON public._pages_v_blocks_testimonials_items USING btree (_parent_id);


--
-- Name: _pages_v_blocks_testimonials_items_photo_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_testimonials_items_photo_idx ON public._pages_v_blocks_testimonials_items USING btree (photo_id);


--
-- Name: _pages_v_blocks_testimonials_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_testimonials_order_idx ON public._pages_v_blocks_testimonials USING btree (_order);


--
-- Name: _pages_v_blocks_testimonials_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_testimonials_parent_id_idx ON public._pages_v_blocks_testimonials USING btree (_parent_id);


--
-- Name: _pages_v_blocks_testimonials_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_testimonials_path_idx ON public._pages_v_blocks_testimonials USING btree (_path);


--
-- Name: _pages_v_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_created_at_idx ON public._pages_v USING btree (created_at);


--
-- Name: _pages_v_latest_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_latest_idx ON public._pages_v USING btree (latest);


--
-- Name: _pages_v_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_parent_idx ON public._pages_v USING btree (parent_id);


--
-- Name: _pages_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_categories_id_idx ON public._pages_v_rels USING btree (categories_id);


--
-- Name: _pages_v_rels_media_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_media_id_idx ON public._pages_v_rels USING btree (media_id);


--
-- Name: _pages_v_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_order_idx ON public._pages_v_rels USING btree ("order");


--
-- Name: _pages_v_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_pages_id_idx ON public._pages_v_rels USING btree (pages_id);


--
-- Name: _pages_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_parent_idx ON public._pages_v_rels USING btree (parent_id);


--
-- Name: _pages_v_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_path_idx ON public._pages_v_rels USING btree (path);


--
-- Name: _pages_v_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_posts_id_idx ON public._pages_v_rels USING btree (posts_id);


--
-- Name: _pages_v_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_updated_at_idx ON public._pages_v USING btree (updated_at);


--
-- Name: _pages_v_version_hero_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_hero_links_order_idx ON public._pages_v_version_hero_links USING btree (_order);


--
-- Name: _pages_v_version_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_hero_links_parent_id_idx ON public._pages_v_version_hero_links USING btree (_parent_id);


--
-- Name: _pages_v_version_hero_version_hero_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_hero_version_hero_media_idx ON public._pages_v USING btree (version_hero_media_id);


--
-- Name: _pages_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_meta_version_meta_image_idx ON public._pages_v USING btree (version_meta_image_id);


--
-- Name: _pages_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_version__status_idx ON public._pages_v USING btree (version__status);


--
-- Name: _pages_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_version_created_at_idx ON public._pages_v USING btree (version_created_at);


--
-- Name: _pages_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_version_slug_idx ON public._pages_v USING btree (version_slug);


--
-- Name: _pages_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_version_updated_at_idx ON public._pages_v USING btree (version_updated_at);


--
-- Name: _posts_v_autosave_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_autosave_idx ON public._posts_v USING btree (autosave);


--
-- Name: _posts_v_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_created_at_idx ON public._posts_v USING btree (created_at);


--
-- Name: _posts_v_latest_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_latest_idx ON public._posts_v USING btree (latest);


--
-- Name: _posts_v_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_parent_idx ON public._posts_v USING btree (parent_id);


--
-- Name: _posts_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_rels_categories_id_idx ON public._posts_v_rels USING btree (categories_id);


--
-- Name: _posts_v_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_rels_order_idx ON public._posts_v_rels USING btree ("order");


--
-- Name: _posts_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_rels_parent_idx ON public._posts_v_rels USING btree (parent_id);


--
-- Name: _posts_v_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_rels_path_idx ON public._posts_v_rels USING btree (path);


--
-- Name: _posts_v_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_rels_posts_id_idx ON public._posts_v_rels USING btree (posts_id);


--
-- Name: _posts_v_rels_tags_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_rels_tags_id_idx ON public._posts_v_rels USING btree (tags_id);


--
-- Name: _posts_v_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_rels_users_id_idx ON public._posts_v_rels USING btree (users_id);


--
-- Name: _posts_v_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_updated_at_idx ON public._posts_v USING btree (updated_at);


--
-- Name: _posts_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_version_meta_version_meta_image_idx ON public._posts_v USING btree (version_meta_image_id);


--
-- Name: _posts_v_version_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_version_populated_authors_order_idx ON public._posts_v_version_populated_authors USING btree (_order);


--
-- Name: _posts_v_version_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_version_populated_authors_parent_id_idx ON public._posts_v_version_populated_authors USING btree (_parent_id);


--
-- Name: _posts_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_version_version__status_idx ON public._posts_v USING btree (version__status);


--
-- Name: _posts_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_version_version_created_at_idx ON public._posts_v USING btree (version_created_at);


--
-- Name: _posts_v_version_version_hero_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_version_version_hero_image_idx ON public._posts_v USING btree (version_hero_image_id);


--
-- Name: _posts_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_version_version_slug_idx ON public._posts_v USING btree (version_slug);


--
-- Name: _posts_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _posts_v_version_version_updated_at_idx ON public._posts_v USING btree (version_updated_at);


--
-- Name: activity_log_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX activity_log_created_at_idx ON public.activity_log USING btree (created_at);


--
-- Name: activity_log_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX activity_log_updated_at_idx ON public.activity_log USING btree (updated_at);


--
-- Name: activity_log_user_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX activity_log_user_idx ON public.activity_log USING btree (user_id);


--
-- Name: categories_breadcrumbs_doc_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_breadcrumbs_doc_idx ON public.categories_breadcrumbs USING btree (doc_id);


--
-- Name: categories_breadcrumbs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_breadcrumbs_order_idx ON public.categories_breadcrumbs USING btree (_order);


--
-- Name: categories_breadcrumbs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_breadcrumbs_parent_id_idx ON public.categories_breadcrumbs USING btree (_parent_id);


--
-- Name: categories_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_created_at_idx ON public.categories USING btree (created_at);


--
-- Name: categories_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_parent_idx ON public.categories USING btree (parent_id);


--
-- Name: categories_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX categories_slug_idx ON public.categories USING btree (slug);


--
-- Name: categories_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX categories_updated_at_idx ON public.categories USING btree (updated_at);


--
-- Name: comments_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_created_at_idx ON public.comments USING btree (created_at);


--
-- Name: comments_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_parent_idx ON public.comments USING btree (parent_id);


--
-- Name: comments_post_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_post_idx ON public.comments USING btree (post_id);


--
-- Name: comments_status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_status_idx ON public.comments USING btree (status);


--
-- Name: comments_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_updated_at_idx ON public.comments USING btree (updated_at);


--
-- Name: email_log_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX email_log_created_at_idx ON public.email_log USING btree (created_at);


--
-- Name: email_log_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX email_log_updated_at_idx ON public.email_log USING btree (updated_at);


--
-- Name: footer_nav_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_nav_items_order_idx ON public.footer_nav_items USING btree (_order);


--
-- Name: footer_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_nav_items_parent_id_idx ON public.footer_nav_items USING btree (_parent_id);


--
-- Name: footer_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_rels_order_idx ON public.footer_rels USING btree ("order");


--
-- Name: footer_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_rels_pages_id_idx ON public.footer_rels USING btree (pages_id);


--
-- Name: footer_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_rels_parent_idx ON public.footer_rels USING btree (parent_id);


--
-- Name: footer_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_rels_path_idx ON public.footer_rels USING btree (path);


--
-- Name: footer_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_rels_posts_id_idx ON public.footer_rels USING btree (posts_id);


--
-- Name: footer_social_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_social_order_idx ON public.footer_social USING btree (_order);


--
-- Name: footer_social_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX footer_social_parent_id_idx ON public.footer_social USING btree (_parent_id);


--
-- Name: form_submissions_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX form_submissions_created_at_idx ON public.form_submissions USING btree (created_at);


--
-- Name: form_submissions_form_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX form_submissions_form_idx ON public.form_submissions USING btree (form_id);


--
-- Name: form_submissions_submission_data_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX form_submissions_submission_data_order_idx ON public.form_submissions_submission_data USING btree (_order);


--
-- Name: form_submissions_submission_data_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX form_submissions_submission_data_parent_id_idx ON public.form_submissions_submission_data USING btree (_parent_id);


--
-- Name: form_submissions_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX form_submissions_updated_at_idx ON public.form_submissions USING btree (updated_at);


--
-- Name: forms_blocks_checkbox_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_checkbox_order_idx ON public.forms_blocks_checkbox USING btree (_order);


--
-- Name: forms_blocks_checkbox_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_checkbox_parent_id_idx ON public.forms_blocks_checkbox USING btree (_parent_id);


--
-- Name: forms_blocks_checkbox_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_checkbox_path_idx ON public.forms_blocks_checkbox USING btree (_path);


--
-- Name: forms_blocks_country_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_country_order_idx ON public.forms_blocks_country USING btree (_order);


--
-- Name: forms_blocks_country_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_country_parent_id_idx ON public.forms_blocks_country USING btree (_parent_id);


--
-- Name: forms_blocks_country_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_country_path_idx ON public.forms_blocks_country USING btree (_path);


--
-- Name: forms_blocks_email_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_email_order_idx ON public.forms_blocks_email USING btree (_order);


--
-- Name: forms_blocks_email_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_email_parent_id_idx ON public.forms_blocks_email USING btree (_parent_id);


--
-- Name: forms_blocks_email_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_email_path_idx ON public.forms_blocks_email USING btree (_path);


--
-- Name: forms_blocks_message_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_message_order_idx ON public.forms_blocks_message USING btree (_order);


--
-- Name: forms_blocks_message_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_message_parent_id_idx ON public.forms_blocks_message USING btree (_parent_id);


--
-- Name: forms_blocks_message_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_message_path_idx ON public.forms_blocks_message USING btree (_path);


--
-- Name: forms_blocks_number_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_number_order_idx ON public.forms_blocks_number USING btree (_order);


--
-- Name: forms_blocks_number_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_number_parent_id_idx ON public.forms_blocks_number USING btree (_parent_id);


--
-- Name: forms_blocks_number_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_number_path_idx ON public.forms_blocks_number USING btree (_path);


--
-- Name: forms_blocks_select_options_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_select_options_order_idx ON public.forms_blocks_select_options USING btree (_order);


--
-- Name: forms_blocks_select_options_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_select_options_parent_id_idx ON public.forms_blocks_select_options USING btree (_parent_id);


--
-- Name: forms_blocks_select_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_select_order_idx ON public.forms_blocks_select USING btree (_order);


--
-- Name: forms_blocks_select_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_select_parent_id_idx ON public.forms_blocks_select USING btree (_parent_id);


--
-- Name: forms_blocks_select_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_select_path_idx ON public.forms_blocks_select USING btree (_path);


--
-- Name: forms_blocks_state_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_state_order_idx ON public.forms_blocks_state USING btree (_order);


--
-- Name: forms_blocks_state_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_state_parent_id_idx ON public.forms_blocks_state USING btree (_parent_id);


--
-- Name: forms_blocks_state_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_state_path_idx ON public.forms_blocks_state USING btree (_path);


--
-- Name: forms_blocks_text_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_text_order_idx ON public.forms_blocks_text USING btree (_order);


--
-- Name: forms_blocks_text_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_text_parent_id_idx ON public.forms_blocks_text USING btree (_parent_id);


--
-- Name: forms_blocks_text_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_text_path_idx ON public.forms_blocks_text USING btree (_path);


--
-- Name: forms_blocks_textarea_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_textarea_order_idx ON public.forms_blocks_textarea USING btree (_order);


--
-- Name: forms_blocks_textarea_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_textarea_parent_id_idx ON public.forms_blocks_textarea USING btree (_parent_id);


--
-- Name: forms_blocks_textarea_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_blocks_textarea_path_idx ON public.forms_blocks_textarea USING btree (_path);


--
-- Name: forms_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_created_at_idx ON public.forms USING btree (created_at);


--
-- Name: forms_emails_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_emails_order_idx ON public.forms_emails USING btree (_order);


--
-- Name: forms_emails_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_emails_parent_id_idx ON public.forms_emails USING btree (_parent_id);


--
-- Name: forms_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX forms_updated_at_idx ON public.forms USING btree (updated_at);


--
-- Name: header_nav_items_children_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_nav_items_children_order_idx ON public.header_nav_items_children USING btree (_order);


--
-- Name: header_nav_items_children_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_nav_items_children_parent_id_idx ON public.header_nav_items_children USING btree (_parent_id);


--
-- Name: header_nav_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_nav_items_order_idx ON public.header_nav_items USING btree (_order);


--
-- Name: header_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_nav_items_parent_id_idx ON public.header_nav_items USING btree (_parent_id);


--
-- Name: header_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_rels_order_idx ON public.header_rels USING btree ("order");


--
-- Name: header_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_rels_pages_id_idx ON public.header_rels USING btree (pages_id);


--
-- Name: header_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_rels_parent_idx ON public.header_rels USING btree (parent_id);


--
-- Name: header_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_rels_path_idx ON public.header_rels USING btree (path);


--
-- Name: header_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX header_rels_posts_id_idx ON public.header_rels USING btree (posts_id);


--
-- Name: media_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_created_at_idx ON public.media USING btree (created_at);


--
-- Name: media_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX media_filename_idx ON public.media USING btree (filename);


--
-- Name: media_folder_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_folder_idx ON public.media USING btree (folder_id);


--
-- Name: media_sizes_large_sizes_large_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_sizes_large_sizes_large_filename_idx ON public.media USING btree (sizes_large_filename);


--
-- Name: media_sizes_medium_sizes_medium_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_sizes_medium_sizes_medium_filename_idx ON public.media USING btree (sizes_medium_filename);


--
-- Name: media_sizes_og_sizes_og_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_sizes_og_sizes_og_filename_idx ON public.media USING btree (sizes_og_filename);


--
-- Name: media_sizes_small_sizes_small_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_sizes_small_sizes_small_filename_idx ON public.media USING btree (sizes_small_filename);


--
-- Name: media_sizes_square_sizes_square_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_sizes_square_sizes_square_filename_idx ON public.media USING btree (sizes_square_filename);


--
-- Name: media_sizes_thumbnail_sizes_thumbnail_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_sizes_thumbnail_sizes_thumbnail_filename_idx ON public.media USING btree (sizes_thumbnail_filename);


--
-- Name: media_sizes_xlarge_sizes_xlarge_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_sizes_xlarge_sizes_xlarge_filename_idx ON public.media USING btree (sizes_xlarge_filename);


--
-- Name: media_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_updated_at_idx ON public.media USING btree (updated_at);


--
-- Name: not_found_log_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX not_found_log_created_at_idx ON public.not_found_log USING btree (created_at);


--
-- Name: not_found_log_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX not_found_log_path_idx ON public.not_found_log USING btree (path);


--
-- Name: not_found_log_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX not_found_log_updated_at_idx ON public.not_found_log USING btree (updated_at);


--
-- Name: page_views_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX page_views_created_at_idx ON public.page_views USING btree (created_at);


--
-- Name: page_views_day_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX page_views_day_idx ON public.page_views USING btree (day);


--
-- Name: page_views_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX page_views_path_idx ON public.page_views USING btree (path);


--
-- Name: page_views_referrer_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX page_views_referrer_idx ON public.page_views USING btree (referrer);


--
-- Name: page_views_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX page_views_updated_at_idx ON public.page_views USING btree (updated_at);


--
-- Name: page_views_visitor_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX page_views_visitor_idx ON public.page_views USING btree (visitor);


--
-- Name: pages__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages__status_idx ON public.pages USING btree (_status);


--
-- Name: pages_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_archive_order_idx ON public.pages_blocks_archive USING btree (_order);


--
-- Name: pages_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_archive_parent_id_idx ON public.pages_blocks_archive USING btree (_parent_id);


--
-- Name: pages_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_archive_path_idx ON public.pages_blocks_archive USING btree (_path);


--
-- Name: pages_blocks_content_columns_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_columns_order_idx ON public.pages_blocks_content_columns USING btree (_order);


--
-- Name: pages_blocks_content_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_columns_parent_id_idx ON public.pages_blocks_content_columns USING btree (_parent_id);


--
-- Name: pages_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_order_idx ON public.pages_blocks_content USING btree (_order);


--
-- Name: pages_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_parent_id_idx ON public.pages_blocks_content USING btree (_parent_id);


--
-- Name: pages_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_path_idx ON public.pages_blocks_content USING btree (_path);


--
-- Name: pages_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_links_order_idx ON public.pages_blocks_cta_links USING btree (_order);


--
-- Name: pages_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_links_parent_id_idx ON public.pages_blocks_cta_links USING btree (_parent_id);


--
-- Name: pages_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_order_idx ON public.pages_blocks_cta USING btree (_order);


--
-- Name: pages_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_parent_id_idx ON public.pages_blocks_cta USING btree (_parent_id);


--
-- Name: pages_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_cta_path_idx ON public.pages_blocks_cta USING btree (_path);


--
-- Name: pages_blocks_design_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_design_order_idx ON public.pages_blocks_design USING btree (_order);


--
-- Name: pages_blocks_design_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_design_parent_id_idx ON public.pages_blocks_design USING btree (_parent_id);


--
-- Name: pages_blocks_design_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_design_path_idx ON public.pages_blocks_design USING btree (_path);


--
-- Name: pages_blocks_design_synced_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_design_synced_idx ON public.pages_blocks_design USING btree (synced_id);


--
-- Name: pages_blocks_embed_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_embed_order_idx ON public.pages_blocks_embed USING btree (_order);


--
-- Name: pages_blocks_embed_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_embed_parent_id_idx ON public.pages_blocks_embed USING btree (_parent_id);


--
-- Name: pages_blocks_embed_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_embed_path_idx ON public.pages_blocks_embed USING btree (_path);


--
-- Name: pages_blocks_faq_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_faq_items_order_idx ON public.pages_blocks_faq_items USING btree (_order);


--
-- Name: pages_blocks_faq_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_faq_items_parent_id_idx ON public.pages_blocks_faq_items USING btree (_parent_id);


--
-- Name: pages_blocks_faq_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_faq_order_idx ON public.pages_blocks_faq USING btree (_order);


--
-- Name: pages_blocks_faq_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_faq_parent_id_idx ON public.pages_blocks_faq USING btree (_parent_id);


--
-- Name: pages_blocks_faq_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_faq_path_idx ON public.pages_blocks_faq USING btree (_path);


--
-- Name: pages_blocks_features_items_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_features_items_image_idx ON public.pages_blocks_features_items USING btree (image_id);


--
-- Name: pages_blocks_features_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_features_items_order_idx ON public.pages_blocks_features_items USING btree (_order);


--
-- Name: pages_blocks_features_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_features_items_parent_id_idx ON public.pages_blocks_features_items USING btree (_parent_id);


--
-- Name: pages_blocks_features_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_features_order_idx ON public.pages_blocks_features USING btree (_order);


--
-- Name: pages_blocks_features_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_features_parent_id_idx ON public.pages_blocks_features USING btree (_parent_id);


--
-- Name: pages_blocks_features_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_features_path_idx ON public.pages_blocks_features USING btree (_path);


--
-- Name: pages_blocks_form_block_form_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_form_block_form_idx ON public.pages_blocks_form_block USING btree (form_id);


--
-- Name: pages_blocks_form_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_form_block_order_idx ON public.pages_blocks_form_block USING btree (_order);


--
-- Name: pages_blocks_form_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_form_block_parent_id_idx ON public.pages_blocks_form_block USING btree (_parent_id);


--
-- Name: pages_blocks_form_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_form_block_path_idx ON public.pages_blocks_form_block USING btree (_path);


--
-- Name: pages_blocks_gallery_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_gallery_order_idx ON public.pages_blocks_gallery USING btree (_order);


--
-- Name: pages_blocks_gallery_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_gallery_parent_id_idx ON public.pages_blocks_gallery USING btree (_parent_id);


--
-- Name: pages_blocks_gallery_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_gallery_path_idx ON public.pages_blocks_gallery USING btree (_path);


--
-- Name: pages_blocks_loop_grid_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_loop_grid_order_idx ON public.pages_blocks_loop_grid USING btree (_order);


--
-- Name: pages_blocks_loop_grid_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_loop_grid_parent_id_idx ON public.pages_blocks_loop_grid USING btree (_parent_id);


--
-- Name: pages_blocks_loop_grid_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_loop_grid_path_idx ON public.pages_blocks_loop_grid USING btree (_path);


--
-- Name: pages_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_block_media_idx ON public.pages_blocks_media_block USING btree (media_id);


--
-- Name: pages_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_block_order_idx ON public.pages_blocks_media_block USING btree (_order);


--
-- Name: pages_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_block_parent_id_idx ON public.pages_blocks_media_block USING btree (_parent_id);


--
-- Name: pages_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_block_path_idx ON public.pages_blocks_media_block USING btree (_path);


--
-- Name: pages_blocks_pricing_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_pricing_order_idx ON public.pages_blocks_pricing USING btree (_order);


--
-- Name: pages_blocks_pricing_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_pricing_parent_id_idx ON public.pages_blocks_pricing USING btree (_parent_id);


--
-- Name: pages_blocks_pricing_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_pricing_path_idx ON public.pages_blocks_pricing USING btree (_path);


--
-- Name: pages_blocks_pricing_plans_features_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_pricing_plans_features_order_idx ON public.pages_blocks_pricing_plans_features USING btree (_order);


--
-- Name: pages_blocks_pricing_plans_features_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_pricing_plans_features_parent_id_idx ON public.pages_blocks_pricing_plans_features USING btree (_parent_id);


--
-- Name: pages_blocks_pricing_plans_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_pricing_plans_order_idx ON public.pages_blocks_pricing_plans USING btree (_order);


--
-- Name: pages_blocks_pricing_plans_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_pricing_plans_parent_id_idx ON public.pages_blocks_pricing_plans USING btree (_parent_id);


--
-- Name: pages_blocks_split_bullets_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_split_bullets_order_idx ON public.pages_blocks_split_bullets USING btree (_order);


--
-- Name: pages_blocks_split_bullets_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_split_bullets_parent_id_idx ON public.pages_blocks_split_bullets USING btree (_parent_id);


--
-- Name: pages_blocks_split_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_split_media_idx ON public.pages_blocks_split USING btree (media_id);


--
-- Name: pages_blocks_split_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_split_order_idx ON public.pages_blocks_split USING btree (_order);


--
-- Name: pages_blocks_split_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_split_parent_id_idx ON public.pages_blocks_split USING btree (_parent_id);


--
-- Name: pages_blocks_split_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_split_path_idx ON public.pages_blocks_split USING btree (_path);


--
-- Name: pages_blocks_stats_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_stats_items_order_idx ON public.pages_blocks_stats_items USING btree (_order);


--
-- Name: pages_blocks_stats_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_stats_items_parent_id_idx ON public.pages_blocks_stats_items USING btree (_parent_id);


--
-- Name: pages_blocks_stats_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_stats_order_idx ON public.pages_blocks_stats USING btree (_order);


--
-- Name: pages_blocks_stats_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_stats_parent_id_idx ON public.pages_blocks_stats USING btree (_parent_id);


--
-- Name: pages_blocks_stats_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_stats_path_idx ON public.pages_blocks_stats USING btree (_path);


--
-- Name: pages_blocks_testimonials_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_testimonials_items_order_idx ON public.pages_blocks_testimonials_items USING btree (_order);


--
-- Name: pages_blocks_testimonials_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_testimonials_items_parent_id_idx ON public.pages_blocks_testimonials_items USING btree (_parent_id);


--
-- Name: pages_blocks_testimonials_items_photo_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_testimonials_items_photo_idx ON public.pages_blocks_testimonials_items USING btree (photo_id);


--
-- Name: pages_blocks_testimonials_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_testimonials_order_idx ON public.pages_blocks_testimonials USING btree (_order);


--
-- Name: pages_blocks_testimonials_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_testimonials_parent_id_idx ON public.pages_blocks_testimonials USING btree (_parent_id);


--
-- Name: pages_blocks_testimonials_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_testimonials_path_idx ON public.pages_blocks_testimonials USING btree (_path);


--
-- Name: pages_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_created_at_idx ON public.pages USING btree (created_at);


--
-- Name: pages_hero_hero_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_hero_media_idx ON public.pages USING btree (hero_media_id);


--
-- Name: pages_hero_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_links_order_idx ON public.pages_hero_links USING btree (_order);


--
-- Name: pages_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_links_parent_id_idx ON public.pages_hero_links USING btree (_parent_id);


--
-- Name: pages_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_meta_meta_image_idx ON public.pages USING btree (meta_image_id);


--
-- Name: pages_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_categories_id_idx ON public.pages_rels USING btree (categories_id);


--
-- Name: pages_rels_media_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_media_id_idx ON public.pages_rels USING btree (media_id);


--
-- Name: pages_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_order_idx ON public.pages_rels USING btree ("order");


--
-- Name: pages_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_pages_id_idx ON public.pages_rels USING btree (pages_id);


--
-- Name: pages_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_parent_idx ON public.pages_rels USING btree (parent_id);


--
-- Name: pages_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_path_idx ON public.pages_rels USING btree (path);


--
-- Name: pages_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_posts_id_idx ON public.pages_rels USING btree (posts_id);


--
-- Name: pages_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_slug_idx ON public.pages USING btree (slug);


--
-- Name: pages_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_updated_at_idx ON public.pages USING btree (updated_at);


--
-- Name: payload_folders_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_folders_created_at_idx ON public.payload_folders USING btree (created_at);


--
-- Name: payload_folders_folder_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_folders_folder_idx ON public.payload_folders USING btree (folder_id);


--
-- Name: payload_folders_folder_type_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_folders_folder_type_order_idx ON public.payload_folders_folder_type USING btree ("order");


--
-- Name: payload_folders_folder_type_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_folders_folder_type_parent_idx ON public.payload_folders_folder_type USING btree (parent_id);


--
-- Name: payload_folders_name_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_folders_name_idx ON public.payload_folders USING btree (name);


--
-- Name: payload_folders_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_folders_updated_at_idx ON public.payload_folders USING btree (updated_at);


--
-- Name: payload_jobs_completed_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_jobs_completed_at_idx ON public.payload_jobs USING btree (completed_at);


--
-- Name: payload_jobs_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_jobs_created_at_idx ON public.payload_jobs USING btree (created_at);


--
-- Name: payload_jobs_has_error_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_jobs_has_error_idx ON public.payload_jobs USING btree (has_error);


--
-- Name: payload_jobs_log_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_jobs_log_order_idx ON public.payload_jobs_log USING btree (_order);


--
-- Name: payload_jobs_log_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_jobs_log_parent_id_idx ON public.payload_jobs_log USING btree (_parent_id);


--
-- Name: payload_jobs_processing_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_jobs_processing_idx ON public.payload_jobs USING btree (processing);


--
-- Name: payload_jobs_queue_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_jobs_queue_idx ON public.payload_jobs USING btree (queue);


--
-- Name: payload_jobs_task_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_jobs_task_slug_idx ON public.payload_jobs USING btree (task_slug);


--
-- Name: payload_jobs_total_tried_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_jobs_total_tried_idx ON public.payload_jobs USING btree (total_tried);


--
-- Name: payload_jobs_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_jobs_updated_at_idx ON public.payload_jobs USING btree (updated_at);


--
-- Name: payload_jobs_wait_until_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_jobs_wait_until_idx ON public.payload_jobs USING btree (wait_until);


--
-- Name: payload_kv_key_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX payload_kv_key_idx ON public.payload_kv USING btree (key);


--
-- Name: payload_locked_documents_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_created_at_idx ON public.payload_locked_documents USING btree (created_at);


--
-- Name: payload_locked_documents_global_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_global_slug_idx ON public.payload_locked_documents USING btree (global_slug);


--
-- Name: payload_locked_documents_rels_activity_log_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_activity_log_id_idx ON public.payload_locked_documents_rels USING btree (activity_log_id);


--
-- Name: payload_locked_documents_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_categories_id_idx ON public.payload_locked_documents_rels USING btree (categories_id);


--
-- Name: payload_locked_documents_rels_comments_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_comments_id_idx ON public.payload_locked_documents_rels USING btree (comments_id);


--
-- Name: payload_locked_documents_rels_email_log_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_email_log_id_idx ON public.payload_locked_documents_rels USING btree (email_log_id);


--
-- Name: payload_locked_documents_rels_form_submissions_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_form_submissions_id_idx ON public.payload_locked_documents_rels USING btree (form_submissions_id);


--
-- Name: payload_locked_documents_rels_forms_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_forms_id_idx ON public.payload_locked_documents_rels USING btree (forms_id);


--
-- Name: payload_locked_documents_rels_media_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_media_id_idx ON public.payload_locked_documents_rels USING btree (media_id);


--
-- Name: payload_locked_documents_rels_not_found_log_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_not_found_log_id_idx ON public.payload_locked_documents_rels USING btree (not_found_log_id);


--
-- Name: payload_locked_documents_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_order_idx ON public.payload_locked_documents_rels USING btree ("order");


--
-- Name: payload_locked_documents_rels_page_views_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_page_views_id_idx ON public.payload_locked_documents_rels USING btree (page_views_id);


--
-- Name: payload_locked_documents_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_pages_id_idx ON public.payload_locked_documents_rels USING btree (pages_id);


--
-- Name: payload_locked_documents_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_parent_idx ON public.payload_locked_documents_rels USING btree (parent_id);


--
-- Name: payload_locked_documents_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_path_idx ON public.payload_locked_documents_rels USING btree (path);


--
-- Name: payload_locked_documents_rels_payload_folders_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_payload_folders_id_idx ON public.payload_locked_documents_rels USING btree (payload_folders_id);


--
-- Name: payload_locked_documents_rels_payload_mcp_api_keys_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_payload_mcp_api_keys_id_idx ON public.payload_locked_documents_rels USING btree (payload_mcp_api_keys_id);


--
-- Name: payload_locked_documents_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_posts_id_idx ON public.payload_locked_documents_rels USING btree (posts_id);


--
-- Name: payload_locked_documents_rels_properties_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_properties_id_idx ON public.payload_locked_documents_rels USING btree (properties_id);


--
-- Name: payload_locked_documents_rels_property_enquiries_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_property_enquiries_id_idx ON public.payload_locked_documents_rels USING btree (property_enquiries_id);


--
-- Name: payload_locked_documents_rels_redirects_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_redirects_id_idx ON public.payload_locked_documents_rels USING btree (redirects_id);


--
-- Name: payload_locked_documents_rels_search_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_search_id_idx ON public.payload_locked_documents_rels USING btree (search_id);


--
-- Name: payload_locked_documents_rels_section_templates_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_section_templates_id_idx ON public.payload_locked_documents_rels USING btree (section_templates_id);


--
-- Name: payload_locked_documents_rels_synced_sections_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_synced_sections_id_idx ON public.payload_locked_documents_rels USING btree (synced_sections_id);


--
-- Name: payload_locked_documents_rels_tags_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_tags_id_idx ON public.payload_locked_documents_rels USING btree (tags_id);


--
-- Name: payload_locked_documents_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_users_id_idx ON public.payload_locked_documents_rels USING btree (users_id);


--
-- Name: payload_locked_documents_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_updated_at_idx ON public.payload_locked_documents USING btree (updated_at);


--
-- Name: payload_mcp_api_keys_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_mcp_api_keys_created_at_idx ON public.payload_mcp_api_keys USING btree (created_at);


--
-- Name: payload_mcp_api_keys_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_mcp_api_keys_updated_at_idx ON public.payload_mcp_api_keys USING btree (updated_at);


--
-- Name: payload_mcp_api_keys_user_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_mcp_api_keys_user_idx ON public.payload_mcp_api_keys USING btree (user_id);


--
-- Name: payload_migrations_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_migrations_created_at_idx ON public.payload_migrations USING btree (created_at);


--
-- Name: payload_migrations_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_migrations_updated_at_idx ON public.payload_migrations USING btree (updated_at);


--
-- Name: payload_preferences_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_created_at_idx ON public.payload_preferences USING btree (created_at);


--
-- Name: payload_preferences_key_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_key_idx ON public.payload_preferences USING btree (key);


--
-- Name: payload_preferences_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_order_idx ON public.payload_preferences_rels USING btree ("order");


--
-- Name: payload_preferences_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_parent_idx ON public.payload_preferences_rels USING btree (parent_id);


--
-- Name: payload_preferences_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_path_idx ON public.payload_preferences_rels USING btree (path);


--
-- Name: payload_preferences_rels_payload_mcp_api_keys_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_payload_mcp_api_keys_id_idx ON public.payload_preferences_rels USING btree (payload_mcp_api_keys_id);


--
-- Name: payload_preferences_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_users_id_idx ON public.payload_preferences_rels USING btree (users_id);


--
-- Name: payload_preferences_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_updated_at_idx ON public.payload_preferences USING btree (updated_at);


--
-- Name: posts__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts__status_idx ON public.posts USING btree (_status);


--
-- Name: posts_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_created_at_idx ON public.posts USING btree (created_at);


--
-- Name: posts_hero_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_hero_image_idx ON public.posts USING btree (hero_image_id);


--
-- Name: posts_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_meta_meta_image_idx ON public.posts USING btree (meta_image_id);


--
-- Name: posts_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_populated_authors_order_idx ON public.posts_populated_authors USING btree (_order);


--
-- Name: posts_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_populated_authors_parent_id_idx ON public.posts_populated_authors USING btree (_parent_id);


--
-- Name: posts_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_rels_categories_id_idx ON public.posts_rels USING btree (categories_id);


--
-- Name: posts_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_rels_order_idx ON public.posts_rels USING btree ("order");


--
-- Name: posts_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_rels_parent_idx ON public.posts_rels USING btree (parent_id);


--
-- Name: posts_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_rels_path_idx ON public.posts_rels USING btree (path);


--
-- Name: posts_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_rels_posts_id_idx ON public.posts_rels USING btree (posts_id);


--
-- Name: posts_rels_tags_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_rels_tags_id_idx ON public.posts_rels USING btree (tags_id);


--
-- Name: posts_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_rels_users_id_idx ON public.posts_rels USING btree (users_id);


--
-- Name: posts_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX posts_slug_idx ON public.posts USING btree (slug);


--
-- Name: posts_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX posts_updated_at_idx ON public.posts USING btree (updated_at);


--
-- Name: redirects_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX redirects_created_at_idx ON public.redirects USING btree (created_at);


--
-- Name: redirects_from_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX redirects_from_idx ON public.redirects USING btree ("from");


--
-- Name: redirects_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX redirects_rels_order_idx ON public.redirects_rels USING btree ("order");


--
-- Name: redirects_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX redirects_rels_pages_id_idx ON public.redirects_rels USING btree (pages_id);


--
-- Name: redirects_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX redirects_rels_parent_idx ON public.redirects_rels USING btree (parent_id);


--
-- Name: redirects_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX redirects_rels_path_idx ON public.redirects_rels USING btree (path);


--
-- Name: redirects_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX redirects_rels_posts_id_idx ON public.redirects_rels USING btree (posts_id);


--
-- Name: redirects_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX redirects_updated_at_idx ON public.redirects USING btree (updated_at);


--
-- Name: search_categories_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX search_categories_order_idx ON public.search_categories USING btree (_order);


--
-- Name: search_categories_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX search_categories_parent_id_idx ON public.search_categories USING btree (_parent_id);


--
-- Name: search_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX search_created_at_idx ON public.search USING btree (created_at);


--
-- Name: search_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX search_meta_meta_image_idx ON public.search USING btree (meta_image_id);


--
-- Name: search_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX search_rels_order_idx ON public.search_rels USING btree ("order");


--
-- Name: search_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX search_rels_parent_idx ON public.search_rels USING btree (parent_id);


--
-- Name: search_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX search_rels_path_idx ON public.search_rels USING btree (path);


--
-- Name: search_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX search_rels_posts_id_idx ON public.search_rels USING btree (posts_id);


--
-- Name: search_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX search_slug_idx ON public.search USING btree (slug);


--
-- Name: search_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX search_updated_at_idx ON public.search USING btree (updated_at);


--
-- Name: section_templates_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX section_templates_created_at_idx ON public.section_templates USING btree (created_at);


--
-- Name: section_templates_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX section_templates_updated_at_idx ON public.section_templates USING btree (updated_at);


--
-- Name: site_settings_code_snippets_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_code_snippets_order_idx ON public.site_settings_code_snippets USING btree (_order);


--
-- Name: site_settings_code_snippets_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_code_snippets_parent_id_idx ON public.site_settings_code_snippets USING btree (_parent_id);


--
-- Name: site_settings_default_share_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_default_share_image_idx ON public.site_settings USING btree (default_share_image_id);


--
-- Name: site_settings_homepage_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_homepage_idx ON public.site_settings USING btree (homepage_id);


--
-- Name: site_settings_logo_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_logo_idx ON public.site_settings USING btree (logo_id);


--
-- Name: site_settings_privacy_policy_page_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_privacy_policy_page_idx ON public.site_settings USING btree (privacy_policy_page_id);


--
-- Name: site_settings_site_icon_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_settings_site_icon_idx ON public.site_settings USING btree (site_icon_id);


--
-- Name: synced_sections_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX synced_sections_created_at_idx ON public.synced_sections USING btree (created_at);


--
-- Name: synced_sections_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX synced_sections_updated_at_idx ON public.synced_sections USING btree (updated_at);


--
-- Name: tags_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tags_created_at_idx ON public.tags USING btree (created_at);


--
-- Name: tags_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX tags_slug_idx ON public.tags USING btree (slug);


--
-- Name: tags_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tags_updated_at_idx ON public.tags USING btree (updated_at);


--
-- Name: users_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_created_at_idx ON public.users USING btree (created_at);


--
-- Name: users_email_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX users_email_idx ON public.users USING btree (email);


--
-- Name: users_photo_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_photo_idx ON public.users USING btree (photo_id);


--
-- Name: users_sessions_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_sessions_order_idx ON public.users_sessions USING btree (_order);


--
-- Name: users_sessions_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_sessions_parent_id_idx ON public.users_sessions USING btree (_parent_id);


--
-- Name: users_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_updated_at_idx ON public.users USING btree (updated_at);


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_archive
    ADD CONSTRAINT _pages_v_blocks_archive_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content_columns _pages_v_blocks_content_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns
    ADD CONSTRAINT _pages_v_blocks_content_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_content(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links
    ADD CONSTRAINT _pages_v_blocks_cta_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_cta(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_cta
    ADD CONSTRAINT _pages_v_blocks_cta_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_design _pages_v_blocks_design_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_design
    ADD CONSTRAINT _pages_v_blocks_design_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_design _pages_v_blocks_design_synced_id_synced_sections_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_design
    ADD CONSTRAINT _pages_v_blocks_design_synced_id_synced_sections_id_fk FOREIGN KEY (synced_id) REFERENCES public.synced_sections(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_embed _pages_v_blocks_embed_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_embed
    ADD CONSTRAINT _pages_v_blocks_embed_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_faq_items _pages_v_blocks_faq_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_faq_items
    ADD CONSTRAINT _pages_v_blocks_faq_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_faq(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_faq _pages_v_blocks_faq_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_faq
    ADD CONSTRAINT _pages_v_blocks_faq_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_features_items _pages_v_blocks_features_items_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_features_items
    ADD CONSTRAINT _pages_v_blocks_features_items_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_features_items _pages_v_blocks_features_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_features_items
    ADD CONSTRAINT _pages_v_blocks_features_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_features(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_features _pages_v_blocks_features_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_features
    ADD CONSTRAINT _pages_v_blocks_features_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_gallery _pages_v_blocks_gallery_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_gallery
    ADD CONSTRAINT _pages_v_blocks_gallery_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_loop_grid _pages_v_blocks_loop_grid_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_loop_grid
    ADD CONSTRAINT _pages_v_blocks_loop_grid_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_pricing _pages_v_blocks_pricing_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_pricing
    ADD CONSTRAINT _pages_v_blocks_pricing_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_pricing_plans_features _pages_v_blocks_pricing_plans_features_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_pricing_plans_features
    ADD CONSTRAINT _pages_v_blocks_pricing_plans_features_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_pricing_plans(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_pricing_plans _pages_v_blocks_pricing_plans_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_pricing_plans
    ADD CONSTRAINT _pages_v_blocks_pricing_plans_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_pricing(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_split_bullets _pages_v_blocks_split_bullets_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_split_bullets
    ADD CONSTRAINT _pages_v_blocks_split_bullets_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_split(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_split _pages_v_blocks_split_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_split
    ADD CONSTRAINT _pages_v_blocks_split_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_split _pages_v_blocks_split_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_split
    ADD CONSTRAINT _pages_v_blocks_split_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_stats_items _pages_v_blocks_stats_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_stats_items
    ADD CONSTRAINT _pages_v_blocks_stats_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_stats(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_stats _pages_v_blocks_stats_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_stats
    ADD CONSTRAINT _pages_v_blocks_stats_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_testimonials_items _pages_v_blocks_testimonials_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_items
    ADD CONSTRAINT _pages_v_blocks_testimonials_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_testimonials(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_testimonials_items _pages_v_blocks_testimonials_items_photo_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials_items
    ADD CONSTRAINT _pages_v_blocks_testimonials_items_photo_id_media_id_fk FOREIGN KEY (photo_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_testimonials _pages_v_blocks_testimonials_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_testimonials
    ADD CONSTRAINT _pages_v_blocks_testimonials_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_parent_id_pages_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_parent_id_pages_id_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE SET NULL;


--
-- Name: _pages_v_rels _pages_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_media_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_version_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_hero_media_id_media_id_fk FOREIGN KEY (version_hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v _pages_v_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v _posts_v_parent_id_posts_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_parent_id_posts_id_fk FOREIGN KEY (parent_id) REFERENCES public.posts(id) ON DELETE SET NULL;


--
-- Name: _posts_v_rels _posts_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._posts_v(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_tags_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_tags_fk FOREIGN KEY (tags_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: _posts_v _posts_v_version_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_version_hero_image_id_media_id_fk FOREIGN KEY (version_hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v _posts_v_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v_version_populated_authors _posts_v_version_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._posts_v_version_populated_authors
    ADD CONSTRAINT _posts_v_version_populated_authors_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._posts_v(id) ON DELETE CASCADE;


--
-- Name: activity_log activity_log_user_id_users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.activity_log
    ADD CONSTRAINT activity_log_user_id_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: categories_breadcrumbs categories_breadcrumbs_doc_id_categories_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_doc_id_categories_id_fk FOREIGN KEY (doc_id) REFERENCES public.categories(id) ON DELETE SET NULL;


--
-- Name: categories_breadcrumbs categories_breadcrumbs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: categories categories_parent_id_categories_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parent_id_categories_id_fk FOREIGN KEY (parent_id) REFERENCES public.categories(id) ON DELETE SET NULL;


--
-- Name: comments comments_parent_id_comments_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_parent_id_comments_id_fk FOREIGN KEY (parent_id) REFERENCES public.comments(id) ON DELETE SET NULL;


--
-- Name: comments comments_post_id_posts_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_post_id_posts_id_fk FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE SET NULL;


--
-- Name: footer_nav_items footer_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_nav_items
    ADD CONSTRAINT footer_nav_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: footer_social footer_social_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.footer_social
    ADD CONSTRAINT footer_social_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: form_submissions form_submissions_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_submissions
    ADD CONSTRAINT form_submissions_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: form_submissions_submission_data form_submissions_submission_data_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_submissions_submission_data
    ADD CONSTRAINT form_submissions_submission_data_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.form_submissions(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_checkbox forms_blocks_checkbox_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_checkbox
    ADD CONSTRAINT forms_blocks_checkbox_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_country forms_blocks_country_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_country
    ADD CONSTRAINT forms_blocks_country_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_email forms_blocks_email_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_email
    ADD CONSTRAINT forms_blocks_email_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_message forms_blocks_message_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_message
    ADD CONSTRAINT forms_blocks_message_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_number forms_blocks_number_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_number
    ADD CONSTRAINT forms_blocks_number_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_select_options forms_blocks_select_options_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_select_options
    ADD CONSTRAINT forms_blocks_select_options_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms_blocks_select(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_select forms_blocks_select_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_select
    ADD CONSTRAINT forms_blocks_select_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_state forms_blocks_state_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_state
    ADD CONSTRAINT forms_blocks_state_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_text forms_blocks_text_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_text
    ADD CONSTRAINT forms_blocks_text_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_textarea forms_blocks_textarea_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_blocks_textarea
    ADD CONSTRAINT forms_blocks_textarea_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_emails forms_emails_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forms_emails
    ADD CONSTRAINT forms_emails_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: header_nav_items_children header_nav_items_children_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_nav_items_children
    ADD CONSTRAINT header_nav_items_children_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.header_nav_items(id) ON DELETE CASCADE;


--
-- Name: header_nav_items header_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_nav_items
    ADD CONSTRAINT header_nav_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.header(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.header(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: media media_folder_id_payload_folders_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_folder_id_payload_folders_id_fk FOREIGN KEY (folder_id) REFERENCES public.payload_folders(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_archive pages_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_archive
    ADD CONSTRAINT pages_blocks_archive_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content_columns pages_blocks_content_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_columns
    ADD CONSTRAINT pages_blocks_content_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_content(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content pages_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta_links
    ADD CONSTRAINT pages_blocks_cta_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_cta(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta pages_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_cta
    ADD CONSTRAINT pages_blocks_cta_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_design pages_blocks_design_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_design
    ADD CONSTRAINT pages_blocks_design_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_design pages_blocks_design_synced_id_synced_sections_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_design
    ADD CONSTRAINT pages_blocks_design_synced_id_synced_sections_id_fk FOREIGN KEY (synced_id) REFERENCES public.synced_sections(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_embed pages_blocks_embed_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_embed
    ADD CONSTRAINT pages_blocks_embed_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_faq_items pages_blocks_faq_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_faq_items
    ADD CONSTRAINT pages_blocks_faq_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_faq(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_faq pages_blocks_faq_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_faq
    ADD CONSTRAINT pages_blocks_faq_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_features_items pages_blocks_features_items_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_features_items
    ADD CONSTRAINT pages_blocks_features_items_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_features_items pages_blocks_features_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_features_items
    ADD CONSTRAINT pages_blocks_features_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_features(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_features pages_blocks_features_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_features
    ADD CONSTRAINT pages_blocks_features_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_form_block pages_blocks_form_block_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_form_block pages_blocks_form_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_gallery pages_blocks_gallery_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_gallery
    ADD CONSTRAINT pages_blocks_gallery_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_loop_grid pages_blocks_loop_grid_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_loop_grid
    ADD CONSTRAINT pages_blocks_loop_grid_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_pricing pages_blocks_pricing_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_pricing
    ADD CONSTRAINT pages_blocks_pricing_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_pricing_plans_features pages_blocks_pricing_plans_features_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_pricing_plans_features
    ADD CONSTRAINT pages_blocks_pricing_plans_features_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_pricing_plans(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_pricing_plans pages_blocks_pricing_plans_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_pricing_plans
    ADD CONSTRAINT pages_blocks_pricing_plans_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_pricing(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_split_bullets pages_blocks_split_bullets_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_split_bullets
    ADD CONSTRAINT pages_blocks_split_bullets_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_split(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_split pages_blocks_split_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_split
    ADD CONSTRAINT pages_blocks_split_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_split pages_blocks_split_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_split
    ADD CONSTRAINT pages_blocks_split_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_stats_items pages_blocks_stats_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_stats_items
    ADD CONSTRAINT pages_blocks_stats_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_stats(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_stats pages_blocks_stats_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_stats
    ADD CONSTRAINT pages_blocks_stats_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_testimonials_items pages_blocks_testimonials_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_testimonials_items
    ADD CONSTRAINT pages_blocks_testimonials_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_testimonials(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_testimonials_items pages_blocks_testimonials_items_photo_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_testimonials_items
    ADD CONSTRAINT pages_blocks_testimonials_items_photo_id_media_id_fk FOREIGN KEY (photo_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_testimonials pages_blocks_testimonials_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_testimonials
    ADD CONSTRAINT pages_blocks_testimonials_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_hero_links pages_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_hero_media_id_media_id_fk FOREIGN KEY (hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages pages_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_rels pages_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_media_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: payload_folders payload_folders_folder_id_payload_folders_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_folders
    ADD CONSTRAINT payload_folders_folder_id_payload_folders_id_fk FOREIGN KEY (folder_id) REFERENCES public.payload_folders(id) ON DELETE SET NULL;


--
-- Name: payload_folders_folder_type payload_folders_folder_type_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_folders_folder_type
    ADD CONSTRAINT payload_folders_folder_type_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_folders(id) ON DELETE CASCADE;


--
-- Name: payload_jobs_log payload_jobs_log_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_jobs_log
    ADD CONSTRAINT payload_jobs_log_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.payload_jobs(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_activity_log_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_activity_log_fk FOREIGN KEY (activity_log_id) REFERENCES public.activity_log(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_comments_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_comments_fk FOREIGN KEY (comments_id) REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_email_log_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_email_log_fk FOREIGN KEY (email_log_id) REFERENCES public.email_log(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_form_submissions_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_form_submissions_fk FOREIGN KEY (form_submissions_id) REFERENCES public.form_submissions(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_forms_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_forms_fk FOREIGN KEY (forms_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_media_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_not_found_log_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_not_found_log_fk FOREIGN KEY (not_found_log_id) REFERENCES public.not_found_log(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_page_views_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_page_views_fk FOREIGN KEY (page_views_id) REFERENCES public.page_views(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_locked_documents(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_payload_folders_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_payload_folders_fk FOREIGN KEY (payload_folders_id) REFERENCES public.payload_folders(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_payload_mcp_api_keys_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_payload_mcp_api_keys_fk FOREIGN KEY (payload_mcp_api_keys_id) REFERENCES public.payload_mcp_api_keys(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_redirects_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_redirects_fk FOREIGN KEY (redirects_id) REFERENCES public.redirects(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_search_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_search_fk FOREIGN KEY (search_id) REFERENCES public.search(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_section_templates_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_section_templates_fk FOREIGN KEY (section_templates_id) REFERENCES public.section_templates(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_synced_sections_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_synced_sections_fk FOREIGN KEY (synced_sections_id) REFERENCES public.synced_sections(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_tags_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_tags_fk FOREIGN KEY (tags_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: payload_mcp_api_keys payload_mcp_api_keys_user_id_users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_mcp_api_keys
    ADD CONSTRAINT payload_mcp_api_keys_user_id_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: payload_preferences_rels payload_preferences_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_preferences(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_payload_mcp_api_keys_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_payload_mcp_api_keys_fk FOREIGN KEY (payload_mcp_api_keys_id) REFERENCES public.payload_mcp_api_keys(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: posts posts_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_hero_image_id_media_id_fk FOREIGN KEY (hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: posts posts_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: posts_populated_authors posts_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_populated_authors
    ADD CONSTRAINT posts_populated_authors_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_tags_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_tags_fk FOREIGN KEY (tags_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.redirects(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: search_categories search_categories_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.search_categories
    ADD CONSTRAINT search_categories_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.search(id) ON DELETE CASCADE;


--
-- Name: search search_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: search_rels search_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.search_rels
    ADD CONSTRAINT search_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.search(id) ON DELETE CASCADE;


--
-- Name: search_rels search_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.search_rels
    ADD CONSTRAINT search_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: site_settings_code_snippets site_settings_code_snippets_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings_code_snippets
    ADD CONSTRAINT site_settings_code_snippets_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.site_settings(id) ON DELETE CASCADE;


--
-- Name: site_settings site_settings_default_share_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings
    ADD CONSTRAINT site_settings_default_share_image_id_media_id_fk FOREIGN KEY (default_share_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: site_settings site_settings_homepage_id_pages_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings
    ADD CONSTRAINT site_settings_homepage_id_pages_id_fk FOREIGN KEY (homepage_id) REFERENCES public.pages(id) ON DELETE SET NULL;


--
-- Name: site_settings site_settings_logo_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings
    ADD CONSTRAINT site_settings_logo_id_media_id_fk FOREIGN KEY (logo_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: site_settings site_settings_privacy_policy_page_id_pages_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings
    ADD CONSTRAINT site_settings_privacy_policy_page_id_pages_id_fk FOREIGN KEY (privacy_policy_page_id) REFERENCES public.pages(id) ON DELETE SET NULL;


--
-- Name: site_settings site_settings_site_icon_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_settings
    ADD CONSTRAINT site_settings_site_icon_id_media_id_fk FOREIGN KEY (site_icon_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: users users_photo_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_photo_id_media_id_fk FOREIGN KEY (photo_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: users_sessions users_sessions_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--


