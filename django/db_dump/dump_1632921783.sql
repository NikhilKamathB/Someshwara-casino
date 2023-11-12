--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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

ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_social_user_id_8146e70c_fk_accounts_;
ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc;
ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si;
ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc;
ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc;
ALTER TABLE ONLY public.misc_transaction DROP CONSTRAINT misc_transaction_sender_id_76cdd937_fk_accounts_user_id;
ALTER TABLE ONLY public.misc_transaction DROP CONSTRAINT misc_transaction_round_id_6cf2b680_fk_misc_round_id;
ALTER TABLE ONLY public.misc_transaction DROP CONSTRAINT misc_transaction_reward_id_e30912dc_fk_misc_reward_id;
ALTER TABLE ONLY public.misc_transaction DROP CONSTRAINT misc_transaction_receiver_id_f858a84b_fk_accounts_user_id;
ALTER TABLE ONLY public.misc_round_players DROP CONSTRAINT misc_round_players_user_id_13fc39ef_fk_accounts_user_id;
ALTER TABLE ONLY public.misc_round_players DROP CONSTRAINT misc_round_players_round_id_7cfc619a_fk_misc_round_id;
ALTER TABLE ONLY public.misc_round DROP CONSTRAINT misc_round_game_table_id_d79feb5a_fk_misc_gametable_id;
ALTER TABLE ONLY public.misc_realtimeserver DROP CONSTRAINT misc_realtimeserver_game_id_83eb104d_fk_misc_game_id;
ALTER TABLE ONLY public.misc_orderid DROP CONSTRAINT misc_orderid_transaction_id_83e6c619_fk_misc_transaction_id;
ALTER TABLE ONLY public.misc_orderid DROP CONSTRAINT misc_orderid_game_maker_id_c79a5d33_fk_misc_thir;
ALTER TABLE ONLY public.misc_level DROP CONSTRAINT misc_level_game_id_7ce5244b_fk_misc_game_id;
ALTER TABLE ONLY public.misc_invitation DROP CONSTRAINT misc_invitation_sender_id_816d9b35_fk_accounts_user_id;
ALTER TABLE ONLY public.misc_invitation DROP CONSTRAINT misc_invitation_receiver_id_26a01ee7_fk_accounts_user_id;
ALTER TABLE ONLY public.misc_inapppurchase DROP CONSTRAINT misc_inapppurchase_game_id_82fdf7a6_fk_misc_game_id;
ALTER TABLE ONLY public.misc_gametabletype DROP CONSTRAINT misc_gametabletype_game_id_1ef96afa_fk_misc_game_id;
ALTER TABLE ONLY public.misc_gametablehistory DROP CONSTRAINT misc_gametablehistor_game_table_id_157f1eed_fk_misc_game;
ALTER TABLE ONLY public.misc_gametable DROP CONSTRAINT misc_gametable_server_url_id_8b198b95_fk_misc_realtimeserver_id;
ALTER TABLE ONLY public.misc_gametable_joined_users DROP CONSTRAINT misc_gametable_joine_user_id_b945fbd5_fk_accounts_;
ALTER TABLE ONLY public.misc_gametable_joined_users DROP CONSTRAINT misc_gametable_joine_gametable_id_72a992d3_fk_misc_game;
ALTER TABLE ONLY public.misc_gametable DROP CONSTRAINT misc_gametable_game_table_type_id_bc72ab5f_fk_misc_game;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_accounts_user_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
ALTER TABLE ONLY public.accounts_user_user_permissions DROP CONSTRAINT accounts_user_user_p_user_id_e4f0a161_fk_accounts_;
ALTER TABLE ONLY public.accounts_user_user_permissions DROP CONSTRAINT accounts_user_user_p_permission_id_113bb443_fk_auth_perm;
ALTER TABLE ONLY public.accounts_user_groups DROP CONSTRAINT accounts_user_groups_user_id_52b62117_fk_accounts_user_id;
ALTER TABLE ONLY public.accounts_user_groups DROP CONSTRAINT accounts_user_groups_group_id_bd11a704_fk_auth_group_id;
ALTER TABLE ONLY public.accounts_phoneverification DROP CONSTRAINT accounts_phoneverification_user_id_2b159574_fk_accounts_user_id;
ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_accounts_user_id;
DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
DROP INDEX public.socialaccount_socialapp_sites_socialapp_id_97fb6e7d;
DROP INDEX public.socialaccount_socialapp_sites_site_id_2579dee5;
DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
DROP INDEX public.rest_framework_api_key_apikey_prefix_4e0db5f8_like;
DROP INDEX public.rest_framework_api_key_apikey_id_6e07e68e_like;
DROP INDEX public.rest_framework_api_key_apikey_created_c61872d9;
DROP INDEX public.misc_transaction_sender_id_76cdd937;
DROP INDEX public.misc_transaction_round_id_6cf2b680;
DROP INDEX public.misc_transaction_reward_id_e30912dc;
DROP INDEX public.misc_transaction_receiver_id_f858a84b;
DROP INDEX public.misc_round_players_user_id_13fc39ef;
DROP INDEX public.misc_round_players_round_id_7cfc619a;
DROP INDEX public.misc_round_game_table_id_d79feb5a;
DROP INDEX public.misc_realtimeserver_game_id_83eb104d;
DROP INDEX public.misc_orderid_transaction_id_83e6c619;
DROP INDEX public.misc_orderid_game_maker_id_c79a5d33;
DROP INDEX public.misc_level_game_id_7ce5244b;
DROP INDEX public.misc_invitation_sender_id_816d9b35;
DROP INDEX public.misc_invitation_receiver_id_26a01ee7;
DROP INDEX public.misc_inapppurchase_game_id_82fdf7a6;
DROP INDEX public.misc_gametabletype_game_id_1ef96afa;
DROP INDEX public.misc_gametablehistory_game_table_id_157f1eed;
DROP INDEX public.misc_gametable_server_url_id_8b198b95;
DROP INDEX public.misc_gametable_joined_users_user_id_b945fbd5;
DROP INDEX public.misc_gametable_joined_users_gametable_id_72a992d3;
DROP INDEX public.misc_gametable_game_table_id_0d239483;
DROP INDEX public.django_site_domain_a2e37b91_like;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.authtoken_token_key_10f0b77e_like;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
DROP INDEX public.accounts_user_username_6088629e_like;
DROP INDEX public.accounts_user_user_permissions_user_id_e4f0a161;
DROP INDEX public.accounts_user_user_permissions_permission_id_113bb443;
DROP INDEX public.accounts_user_reference_code_21790859_like;
DROP INDEX public.accounts_user_groups_user_id_52b62117;
DROP INDEX public.accounts_user_groups_group_id_bd11a704;
DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
DROP INDEX public.account_emailaddress_user_id_2c513194;
DROP INDEX public.account_emailaddress_email_03be32b2_like;
ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq;
ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
ALTER TABLE ONLY public.rest_framework_api_key_apikey DROP CONSTRAINT rest_framework_api_key_apikey_prefix_key;
ALTER TABLE ONLY public.rest_framework_api_key_apikey DROP CONSTRAINT rest_framework_api_key_apikey_pkey;
ALTER TABLE ONLY public.misc_transaction DROP CONSTRAINT misc_transaction_pkey;
ALTER TABLE ONLY public.misc_thirdpartygamemakermodel DROP CONSTRAINT misc_thirdpartygamemakermodel_pkey;
ALTER TABLE ONLY public.misc_round_players DROP CONSTRAINT misc_round_players_round_id_user_id_cfa07966_uniq;
ALTER TABLE ONLY public.misc_round_players DROP CONSTRAINT misc_round_players_pkey;
ALTER TABLE ONLY public.misc_round DROP CONSTRAINT misc_round_pkey;
ALTER TABLE ONLY public.misc_reward DROP CONSTRAINT misc_reward_pkey;
ALTER TABLE ONLY public.misc_realtimeserver DROP CONSTRAINT misc_realtimeserver_pkey;
ALTER TABLE ONLY public.misc_orderid DROP CONSTRAINT misc_orderid_pkey;
ALTER TABLE ONLY public.misc_level DROP CONSTRAINT misc_level_pkey;
ALTER TABLE ONLY public.misc_invitation DROP CONSTRAINT misc_invitation_pkey;
ALTER TABLE ONLY public.misc_inapppurchase DROP CONSTRAINT misc_inapppurchase_pkey;
ALTER TABLE ONLY public.misc_gametabletype DROP CONSTRAINT misc_gametabletype_pkey;
ALTER TABLE ONLY public.misc_gametablehistory DROP CONSTRAINT misc_gametablehistory_pkey;
ALTER TABLE ONLY public.misc_gametable DROP CONSTRAINT misc_gametable_pkey;
ALTER TABLE ONLY public.misc_gametable_joined_users DROP CONSTRAINT misc_gametable_joined_users_pkey;
ALTER TABLE ONLY public.misc_gametable_joined_users DROP CONSTRAINT misc_gametable_joined_users_gametable_id_user_id_351ef67c_uniq;
ALTER TABLE ONLY public.misc_game DROP CONSTRAINT misc_game_pkey;
ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE ONLY public.accounts_user DROP CONSTRAINT accounts_user_username_key;
ALTER TABLE ONLY public.accounts_user_user_permissions DROP CONSTRAINT accounts_user_user_permissions_pkey;
ALTER TABLE ONLY public.accounts_user_user_permissions DROP CONSTRAINT accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq;
ALTER TABLE ONLY public.accounts_user DROP CONSTRAINT accounts_user_reference_code_21790859_uniq;
ALTER TABLE ONLY public.accounts_user DROP CONSTRAINT accounts_user_pkey;
ALTER TABLE ONLY public.accounts_user_groups DROP CONSTRAINT accounts_user_groups_user_id_group_id_59c0b32f_uniq;
ALTER TABLE ONLY public.accounts_user_groups DROP CONSTRAINT accounts_user_groups_pkey;
ALTER TABLE ONLY public.accounts_phoneverification DROP CONSTRAINT accounts_phoneverification_user_id_2b159574_uniq;
ALTER TABLE ONLY public.accounts_phoneverification DROP CONSTRAINT accounts_phoneverification_pkey;
ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_transaction ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_thirdpartygamemakermodel ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_round_players ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_round ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_reward ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_realtimeserver ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_orderid ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_level ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_invitation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_inapppurchase ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_gametabletype ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_gametablehistory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_gametable_joined_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_gametable ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.misc_game ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.accounts_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.accounts_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.accounts_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.accounts_phoneverification ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
DROP TABLE public.socialaccount_socialtoken;
DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
DROP TABLE public.socialaccount_socialapp_sites;
DROP SEQUENCE public.socialaccount_socialapp_id_seq;
DROP TABLE public.socialaccount_socialapp;
DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
DROP TABLE public.socialaccount_socialaccount;
DROP TABLE public.rest_framework_api_key_apikey;
DROP SEQUENCE public.misc_transaction_id_seq;
DROP SEQUENCE public.misc_thirdpartygamemakermodel_id_seq;
DROP TABLE public.misc_thirdpartygamemakermodel;
DROP SEQUENCE public.misc_round_players_id_seq;
DROP TABLE public.misc_round_players;
DROP SEQUENCE public.misc_round_id_seq;
DROP TABLE public.misc_round;
DROP SEQUENCE public.misc_reward_id_seq;
DROP TABLE public.misc_reward;
DROP SEQUENCE public.misc_realtimeserver_id_seq;
DROP TABLE public.misc_realtimeserver;
DROP SEQUENCE public.misc_orderid_id_seq;
DROP TABLE public.misc_orderid;
DROP SEQUENCE public.misc_level_id_seq;
DROP TABLE public.misc_level;
DROP SEQUENCE public.misc_invitation_id_seq;
DROP TABLE public.misc_invitation;
DROP SEQUENCE public.misc_inapppurchase_id_seq;
DROP TABLE public.misc_inapppurchase;
DROP SEQUENCE public.misc_gametabletype_id_seq;
DROP TABLE public.misc_gametabletype;
DROP SEQUENCE public.misc_gametablehistory_id_seq;
DROP TABLE public.misc_gametablehistory;
DROP SEQUENCE public.misc_gametable_joined_users_id_seq;
DROP TABLE public.misc_gametable_joined_users;
DROP SEQUENCE public.misc_gametable_id_seq;
DROP TABLE public.misc_gametable;
DROP SEQUENCE public.misc_game_id_seq;
DROP TABLE public.misc_game;
DROP SEQUENCE public.django_site_id_seq;
DROP TABLE public.django_site;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP TABLE public.authtoken_token;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
DROP VIEW public.analytics_tx;
DROP VIEW public.casino_sent;
DROP VIEW public.casino_received;
DROP TABLE public.misc_transaction;
DROP SEQUENCE public.accounts_user_user_permissions_id_seq;
DROP TABLE public.accounts_user_user_permissions;
DROP SEQUENCE public.accounts_user_id_seq;
DROP SEQUENCE public.accounts_user_groups_id_seq;
DROP TABLE public.accounts_user_groups;
DROP TABLE public.accounts_user;
DROP SEQUENCE public.accounts_phoneverification_id_seq;
DROP TABLE public.accounts_phoneverification;
DROP SEQUENCE public.account_emailconfirmation_id_seq;
DROP TABLE public.account_emailconfirmation;
DROP SEQUENCE public.account_emailaddress_id_seq;
DROP TABLE public.account_emailaddress;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO casino_dev;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO casino_dev;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO casino_dev;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO casino_dev;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: accounts_phoneverification; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.accounts_phoneverification (
    id integer NOT NULL,
    otp character varying(20) NOT NULL,
    is_verified boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.accounts_phoneverification OWNER TO casino_dev;

--
-- Name: accounts_phoneverification_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.accounts_phoneverification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_phoneverification_id_seq OWNER TO casino_dev;

--
-- Name: accounts_phoneverification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.accounts_phoneverification_id_seq OWNED BY public.accounts_phoneverification.id;


--
-- Name: accounts_user; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.accounts_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    phone character varying(17) NOT NULL,
    avatar character varying(100),
    currency integer NOT NULL,
    level integer NOT NULL,
    is_bot boolean NOT NULL,
    is_bot_playing boolean NOT NULL,
    full_name character varying(250),
    reference_code character varying(250)
);


ALTER TABLE public.accounts_user OWNER TO casino_dev;

--
-- Name: accounts_user_groups; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.accounts_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.accounts_user_groups OWNER TO casino_dev;

--
-- Name: accounts_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.accounts_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_user_groups_id_seq OWNER TO casino_dev;

--
-- Name: accounts_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.accounts_user_groups_id_seq OWNED BY public.accounts_user_groups.id;


--
-- Name: accounts_user_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.accounts_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_user_id_seq OWNER TO casino_dev;

--
-- Name: accounts_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.accounts_user_id_seq OWNED BY public.accounts_user.id;


--
-- Name: accounts_user_user_permissions; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.accounts_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.accounts_user_user_permissions OWNER TO casino_dev;

--
-- Name: accounts_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.accounts_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_user_user_permissions_id_seq OWNER TO casino_dev;

--
-- Name: accounts_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.accounts_user_user_permissions_id_seq OWNED BY public.accounts_user_user_permissions.id;


--
-- Name: misc_transaction; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_transaction (
    id integer NOT NULL,
    amount integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    receiver_id integer,
    reward_id integer,
    sender_id integer,
    round_id integer,
    bank_transaction_id character varying(250),
    receiver_ref_code character varying(250)
);


ALTER TABLE public.misc_transaction OWNER TO casino_dev;

--
-- Name: casino_received; Type: VIEW; Schema: public; Owner: casino_dev
--

CREATE VIEW public.casino_received AS
 SELECT date(misc_transaction.created_at) AS date,
    sum(misc_transaction.amount) AS received
   FROM public.misc_transaction
  WHERE ((misc_transaction.receiver_id = 1) AND (misc_transaction.round_id IS NOT NULL))
  GROUP BY (date(misc_transaction.created_at));


ALTER TABLE public.casino_received OWNER TO casino_dev;

--
-- Name: casino_sent; Type: VIEW; Schema: public; Owner: casino_dev
--

CREATE VIEW public.casino_sent AS
 SELECT date(misc_transaction.created_at) AS date,
    sum(misc_transaction.amount) AS sent
   FROM public.misc_transaction
  WHERE ((misc_transaction.sender_id = 1) AND (misc_transaction.round_id IS NOT NULL))
  GROUP BY (date(misc_transaction.created_at));


ALTER TABLE public.casino_sent OWNER TO casino_dev;

--
-- Name: analytics_tx; Type: VIEW; Schema: public; Owner: casino_dev
--

CREATE VIEW public.analytics_tx AS
 SELECT COALESCE(casino_sent.date, casino_received.date) AS date,
    casino_sent.sent,
    casino_received.received
   FROM (public.casino_received
     FULL JOIN public.casino_sent ON ((casino_received.date = casino_sent.date)));


ALTER TABLE public.analytics_tx OWNER TO casino_dev;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO casino_dev;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO casino_dev;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO casino_dev;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO casino_dev;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO casino_dev;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO casino_dev;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO casino_dev;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO casino_dev;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO casino_dev;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO casino_dev;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO casino_dev;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO casino_dev;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO casino_dev;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO casino_dev;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO casino_dev;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO casino_dev;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: misc_game; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_game (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    description character varying(1500),
    winning_percentage double precision NOT NULL,
    image character varying(5000),
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.misc_game OWNER TO casino_dev;

--
-- Name: misc_game_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_game_id_seq OWNER TO casino_dev;

--
-- Name: misc_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_game_id_seq OWNED BY public.misc_game.id;


--
-- Name: misc_gametable; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_gametable (
    id integer NOT NULL,
    is_closed boolean NOT NULL,
    game_table_type_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    server_url_id integer
);


ALTER TABLE public.misc_gametable OWNER TO casino_dev;

--
-- Name: misc_gametable_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_gametable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_gametable_id_seq OWNER TO casino_dev;

--
-- Name: misc_gametable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_gametable_id_seq OWNED BY public.misc_gametable.id;


--
-- Name: misc_gametable_joined_users; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_gametable_joined_users (
    id integer NOT NULL,
    gametable_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.misc_gametable_joined_users OWNER TO casino_dev;

--
-- Name: misc_gametable_joined_users_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_gametable_joined_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_gametable_joined_users_id_seq OWNER TO casino_dev;

--
-- Name: misc_gametable_joined_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_gametable_joined_users_id_seq OWNED BY public.misc_gametable_joined_users.id;


--
-- Name: misc_gametablehistory; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_gametablehistory (
    id integer NOT NULL,
    data text NOT NULL,
    game_table_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.misc_gametablehistory OWNER TO casino_dev;

--
-- Name: misc_gametablehistory_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_gametablehistory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_gametablehistory_id_seq OWNER TO casino_dev;

--
-- Name: misc_gametablehistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_gametablehistory_id_seq OWNED BY public.misc_gametablehistory.id;


--
-- Name: misc_gametabletype; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_gametabletype (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    image character varying(5000),
    min_currency integer NOT NULL,
    max_currency integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    game_id integer NOT NULL,
    extra_1 character varying(100),
    extra_2 character varying(100),
    extra_3 character varying(100),
    max_users integer NOT NULL,
    reference_note text
);


ALTER TABLE public.misc_gametabletype OWNER TO casino_dev;

--
-- Name: misc_gametabletype_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_gametabletype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_gametabletype_id_seq OWNER TO casino_dev;

--
-- Name: misc_gametabletype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_gametabletype_id_seq OWNED BY public.misc_gametabletype.id;


--
-- Name: misc_inapppurchase; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_inapppurchase (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    image character varying(5000),
    sku character varying(100) NOT NULL,
    reward integer NOT NULL,
    game_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.misc_inapppurchase OWNER TO casino_dev;

--
-- Name: misc_inapppurchase_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_inapppurchase_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_inapppurchase_id_seq OWNER TO casino_dev;

--
-- Name: misc_inapppurchase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_inapppurchase_id_seq OWNED BY public.misc_inapppurchase.id;


--
-- Name: misc_invitation; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_invitation (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    receiver_id integer NOT NULL,
    sender_id integer NOT NULL
);


ALTER TABLE public.misc_invitation OWNER TO casino_dev;

--
-- Name: misc_invitation_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_invitation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_invitation_id_seq OWNER TO casino_dev;

--
-- Name: misc_invitation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_invitation_id_seq OWNED BY public.misc_invitation.id;


--
-- Name: misc_level; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_level (
    id integer NOT NULL,
    number integer NOT NULL,
    points integer NOT NULL,
    reward integer NOT NULL,
    game_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.misc_level OWNER TO casino_dev;

--
-- Name: misc_level_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_level_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_level_id_seq OWNER TO casino_dev;

--
-- Name: misc_level_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_level_id_seq OWNED BY public.misc_level.id;


--
-- Name: misc_orderid; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_orderid (
    id integer NOT NULL,
    order_id character varying(250) NOT NULL,
    game_maker_id integer NOT NULL,
    transaction_id integer NOT NULL,
    response jsonb
);


ALTER TABLE public.misc_orderid OWNER TO casino_dev;

--
-- Name: misc_orderid_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_orderid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_orderid_id_seq OWNER TO casino_dev;

--
-- Name: misc_orderid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_orderid_id_seq OWNED BY public.misc_orderid.id;


--
-- Name: misc_realtimeserver; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_realtimeserver (
    id integer NOT NULL,
    url character varying(5000) NOT NULL,
    is_closed boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    max_rooms integer NOT NULL,
    game_id integer
);


ALTER TABLE public.misc_realtimeserver OWNER TO casino_dev;

--
-- Name: misc_realtimeserver_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_realtimeserver_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_realtimeserver_id_seq OWNER TO casino_dev;

--
-- Name: misc_realtimeserver_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_realtimeserver_id_seq OWNED BY public.misc_realtimeserver.id;


--
-- Name: misc_reward; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_reward (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    amount integer NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.misc_reward OWNER TO casino_dev;

--
-- Name: misc_reward_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_reward_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_reward_id_seq OWNER TO casino_dev;

--
-- Name: misc_reward_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_reward_id_seq OWNED BY public.misc_reward.id;


--
-- Name: misc_round; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_round (
    id integer NOT NULL,
    result jsonb,
    created_at timestamp with time zone NOT NULL,
    game_table_id integer NOT NULL
);


ALTER TABLE public.misc_round OWNER TO casino_dev;

--
-- Name: misc_round_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_round_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_round_id_seq OWNER TO casino_dev;

--
-- Name: misc_round_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_round_id_seq OWNED BY public.misc_round.id;


--
-- Name: misc_round_players; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_round_players (
    id integer NOT NULL,
    round_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.misc_round_players OWNER TO casino_dev;

--
-- Name: misc_round_players_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_round_players_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_round_players_id_seq OWNER TO casino_dev;

--
-- Name: misc_round_players_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_round_players_id_seq OWNED BY public.misc_round_players.id;


--
-- Name: misc_thirdpartygamemakermodel; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.misc_thirdpartygamemakermodel (
    id integer NOT NULL,
    name character varying(250) NOT NULL
);


ALTER TABLE public.misc_thirdpartygamemakermodel OWNER TO casino_dev;

--
-- Name: misc_thirdpartygamemakermodel_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_thirdpartygamemakermodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_thirdpartygamemakermodel_id_seq OWNER TO casino_dev;

--
-- Name: misc_thirdpartygamemakermodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_thirdpartygamemakermodel_id_seq OWNED BY public.misc_thirdpartygamemakermodel.id;


--
-- Name: misc_transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.misc_transaction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_transaction_id_seq OWNER TO casino_dev;

--
-- Name: misc_transaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.misc_transaction_id_seq OWNED BY public.misc_transaction.id;


--
-- Name: rest_framework_api_key_apikey; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.rest_framework_api_key_apikey (
    id character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    name character varying(50) NOT NULL,
    revoked boolean NOT NULL,
    expiry_date timestamp with time zone,
    hashed_key character varying(100) NOT NULL,
    prefix character varying(8) NOT NULL
);


ALTER TABLE public.rest_framework_api_key_apikey OWNER TO casino_dev;

--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO casino_dev;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO casino_dev;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO casino_dev;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO casino_dev;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO casino_dev;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO casino_dev;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: casino_dev
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO casino_dev;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: casino_dev
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO casino_dev;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: casino_dev
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: accounts_phoneverification id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_phoneverification ALTER COLUMN id SET DEFAULT nextval('public.accounts_phoneverification_id_seq'::regclass);


--
-- Name: accounts_user id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user ALTER COLUMN id SET DEFAULT nextval('public.accounts_user_id_seq'::regclass);


--
-- Name: accounts_user_groups id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user_groups ALTER COLUMN id SET DEFAULT nextval('public.accounts_user_groups_id_seq'::regclass);


--
-- Name: accounts_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.accounts_user_user_permissions_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: misc_game id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_game ALTER COLUMN id SET DEFAULT nextval('public.misc_game_id_seq'::regclass);


--
-- Name: misc_gametable id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametable ALTER COLUMN id SET DEFAULT nextval('public.misc_gametable_id_seq'::regclass);


--
-- Name: misc_gametable_joined_users id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametable_joined_users ALTER COLUMN id SET DEFAULT nextval('public.misc_gametable_joined_users_id_seq'::regclass);


--
-- Name: misc_gametablehistory id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametablehistory ALTER COLUMN id SET DEFAULT nextval('public.misc_gametablehistory_id_seq'::regclass);


--
-- Name: misc_gametabletype id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametabletype ALTER COLUMN id SET DEFAULT nextval('public.misc_gametabletype_id_seq'::regclass);


--
-- Name: misc_inapppurchase id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_inapppurchase ALTER COLUMN id SET DEFAULT nextval('public.misc_inapppurchase_id_seq'::regclass);


--
-- Name: misc_invitation id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_invitation ALTER COLUMN id SET DEFAULT nextval('public.misc_invitation_id_seq'::regclass);


--
-- Name: misc_level id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_level ALTER COLUMN id SET DEFAULT nextval('public.misc_level_id_seq'::regclass);


--
-- Name: misc_orderid id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_orderid ALTER COLUMN id SET DEFAULT nextval('public.misc_orderid_id_seq'::regclass);


--
-- Name: misc_realtimeserver id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_realtimeserver ALTER COLUMN id SET DEFAULT nextval('public.misc_realtimeserver_id_seq'::regclass);


--
-- Name: misc_reward id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_reward ALTER COLUMN id SET DEFAULT nextval('public.misc_reward_id_seq'::regclass);


--
-- Name: misc_round id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_round ALTER COLUMN id SET DEFAULT nextval('public.misc_round_id_seq'::regclass);


--
-- Name: misc_round_players id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_round_players ALTER COLUMN id SET DEFAULT nextval('public.misc_round_players_id_seq'::regclass);


--
-- Name: misc_thirdpartygamemakermodel id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_thirdpartygamemakermodel ALTER COLUMN id SET DEFAULT nextval('public.misc_thirdpartygamemakermodel_id_seq'::regclass);


--
-- Name: misc_transaction id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_transaction ALTER COLUMN id SET DEFAULT nextval('public.misc_transaction_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	jayadevbs@gmail.com	f	t	5
3	mahichintu93@yahoo.com	f	t	7
4	sujansannashe785266@gmail.com	f	t	8
5	palashbasak12@gmail.com	f	t	9
6	sujansannashe7@gmail.com	f	t	10
7	sibad1190@gmail.com	f	t	11
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: accounts_phoneverification; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.accounts_phoneverification (id, otp, is_verified, user_id) FROM stdin;
30	286251	f	43
9	499321	t	22
116	120045	t	132
119	282669	t	137
20	726513	t	33
54	505370	f	68
2	185876	t	15
71	535529	f	86
55	828810	f	69
53	083723	f	67
85	903122	f	101
18	743813	t	31
42	037364	t	56
43	339466	t	57
72	593421	f	87
19	653299	t	32
12	332865	t	25
86	879203	t	102
129	365855	t	559
22	775483	f	35
34	694403	f	47
23	167086	t	36
24	806479	f	37
16	707740	t	29
5	957586	t	18
44	122293	t	58
41	599947	t	55
64	625835	f	78
45	696804	t	59
25	834982	t	38
94	426789	t	110
26	099564	t	39
27	069248	f	40
28	490927	f	41
29	759715	f	42
46	631653	t	60
35	709917	f	48
31	948819	f	44
32	111572	f	45
106	030217	f	122
33	096532	f	46
36	718596	f	49
47	750861	t	61
107	169828	f	123
56	194416	t	70
48	267713	f	62
57	064125	t	71
49	495458	t	63
40	968459	t	54
93	068829	t	109
59	954144	t	73
117	527689	t	133
50	776263	t	64
60	635847	f	74
133	003606	f	2500
51	213746	t	65
87	501146	t	103
52	940633	t	66
4	162891	t	17
88	072374	f	104
39	999689	t	53
66	007618	f	80
67	971229	f	81
61	499514	f	75
62	896266	t	76
92	514591	f	108
95	048225	t	111
68	035782	t	82
74	620807	f	90
63	023891	t	77
96	495026	t	112
121	349119	t	139
109	388536	f	125
65	809982	t	79
89	954249	f	105
76	962498	f	92
130	035082	t	2332
75	634390	t	91
134	347105	t	2531
77	976737	t	93
70	169338	t	85
90	382908	f	106
37	412186	t	51
69	231518	t	84
38	112626	t	52
108	329977	f	124
78	008268	f	94
131	089555	f	2415
73	753659	t	88
58	840717	t	72
110	222335	f	126
97	953463	t	113
80	307721	f	96
81	845490	f	97
82	839306	f	98
83	169973	f	99
84	648932	f	100
126	714077	f	508
17	702040	t	30
111	239349	t	127
14	171196	t	27
122	741611	t	397
98	150933	f	114
112	095563	t	128
100	227864	f	116
113	877735	f	129
91	677051	f	107
118	765636	f	134
3	988304	t	16
101	042849	t	117
15	013836	t	28
102	355043	t	118
114	485971	t	130
123	830876	f	503
103	454744	f	119
104	740752	t	120
127	947066	t	517
105	417439	t	121
115	600925	t	131
124	363966	t	504
79	280466	f	95
125	812144	t	505
128	334232	t	520
132	395878	t	2416
99	468020	f	115
21	085110	t	34
120	951159	t	138
13	449976	t	26
\.


--
-- Data for Name: accounts_user; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.accounts_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, phone, avatar, currency, level, is_bot, is_bot_playing, full_name, reference_code) FROM stdin;
3	pbkdf2_sha256$216000$ba9h5Pmcd7j8$/A5vd5o4oGz/my8fp+jiGaa94qtlj3e4jO8Q1w9mVMc=	\N	f	niravmodi				f	t	2021-03-16 12:44:58.176099+00			7	0	f	f	\N	\N
11	!zNRskWfaMLLeBnqM73QnBvtyepBSEj31kkazRXCA	2021-05-24 06:33:25.703592+00	f	siba	Siba	Das	sibad1190@gmail.com	f	t	2021-03-26 14:19:47.243774+00			0	0	f	f	\N	\N
5	!ypMYaFH2uL4HdviuezwwQ1JlSgttI6FO5HVGY1z8	2021-05-11 11:14:57.495612+00	f	jayadev	Jayadev	BS	jayadevbs@gmail.com	f	t	2021-03-23 06:22:29.223812+00			0	0	f	f	\N	\N
28		\N	f	+917001821472				f	t	2021-07-18 19:42:56.969952+00	+917001821472		0	0	f	f	palash	PALA4095
32		\N	f	+919660326332				f	t	2021-07-21 10:14:59.845232+00	+919660326332		0	0	f	f	mahi	\N
12	!eQKgqNyWlrakpC8HbsZbT1tDbLaS8jmjYDMr5aFq	2021-07-08 12:17:32.946807+00	f	kumaresan	Kumaresan	Kumsu		f	t	2021-06-07 11:45:17.446107+00			0	0	f	f	\N	\N
33		\N	f	+918130139552				f	t	2021-07-21 10:15:44.284644+00	+918130139552		0	0	f	f	rajan	\N
65		\N	f	+919800053586				f	t	2021-08-14 07:42:31.240505+00	+919800053586		0	0	f	f	Mitesh	\N
1	pbkdf2_sha256$216000$G3xmwWv8lXpv$Qq8Vb5K0oLDyoLpsRMKLBuKz60WKoo2HJA1136pDc64=	2021-09-27 03:09:15.417076+00	t	casino				t	t	2021-03-16 12:43:39.112591+00			-41936145	0	f	f	\N	\N
15		\N	f	+919632159466				f	t	2021-07-07 16:43:03.570126+00	+919632159466		71549	0	f	f	basavaraj66666	BASA3670
17		\N	f	+917001144594				f	t	2021-07-08 13:24:54.803072+00	+917001144594		0	0	f	f	\N	\N
27		\N	f	+919654514784				f	t	2021-07-11 14:13:35.718346+00	+919654514784		0	0	f	f	aman	AMAN5448
39		\N	f	+918168255600				f	t	2021-07-28 15:52:28.534121+00	+918168255600		0	0	f	f	kapil	\N
40		\N	f	+9103153183772				f	t	2021-07-28 16:26:17.696805+00	+9103153183772		0	0	f	f	\N	\N
16		\N	f	+916294583350				f	t	2021-07-08 13:23:44.363212+00	+916294583350		0	0	f	f	sujan	SUJA7858
41		\N	f	+91009197290027				f	t	2021-07-28 16:27:12.816102+00	+91009197290027		0	0	f	f	\N	\N
42		\N	f	+9100923183772				f	t	2021-07-28 16:28:26.057646+00	+9100923183772		0	0	f	f	\N	\N
10	!yJYNhzYTqxlaOnmuPlsp9rwKjEzzVNKv8btVNm00	2021-08-28 05:16:33.185674+00	f	sujan9	Sujan	Sarkar	sujansannashe7@gmail.com	f	t	2021-03-26 13:52:24.791323+00			0	0	f	f	\N	\N
25		\N	f	+919019979582				f	t	2021-07-10 12:27:48.511207+00	+919019979582		0	0	f	f	kumsu	\N
43		\N	f	+9101797674330				f	t	2021-07-28 17:41:13.809086+00	+9101797674330		0	0	f	f	\N	\N
51		\N	f	+919916026616				f	t	2021-08-05 07:34:09.15083+00	+919916026616		0	0	f	f	Navneet	NAVN5792
44		\N	f	+9101811460952				f	t	2021-07-28 17:49:17.429988+00	+9101811460952		0	0	f	f	\N	\N
30		\N	f	+919920084061				f	t	2021-07-20 12:41:10.75096+00	+919920084061		0	0	f	f	kapil	KAPI6791
26		\N	f	+918660902821				f	t	2021-07-11 09:15:29.316368+00	+918660902821		0	0	f	f	Sandy	SAND6115
29		\N	f	+918127711886				f	t	2021-07-19 14:14:26.691588+00	+918127711886		0	0	f	f	aamir	\N
52		\N	f	+916295211015				f	t	2021-08-05 12:21:39.713329+00	+916295211015		0	0	f	f	Goutam	GOUT1793
31		\N	f	+918169689401				f	t	2021-07-21 10:08:40.322797+00	+918169689401		0	0	f	f	kamlash	\N
35		\N	f	+919611743226				f	t	2021-07-23 06:54:58.833735+00	+919611743226		0	0	f	f	\N	\N
36		\N	f	+917204645395				f	t	2021-07-23 06:55:45.713911+00	+917204645395		0	0	f	f	srikanta	\N
37		\N	f	+91992008401				f	t	2021-07-24 18:40:14.653064+00	+91992008401		0	0	f	f	\N	\N
38		\N	f	+917418521593				f	t	2021-07-26 11:46:26.559467+00	+917418521593		0	0	f	f	kumsu	\N
45		\N	f	+9101706191904				f	t	2021-07-28 17:50:08.188858+00	+9101706191904		0	0	f	f	\N	\N
46		\N	f	+9101796408255				f	t	2021-07-28 17:51:44.533769+00	+9101796408255		0	0	f	f	\N	\N
56		\N	f	+919641677780				f	t	2021-08-10 16:13:14.914282+00	+919641677780		0	0	f	f	Kuntal Das	\N
58		\N	f	+918391837189				f	t	2021-08-13 04:27:34.466296+00	+918391837189		0	0	f	f	popi	\N
47		\N	f	+9101712378290				f	t	2021-07-30 08:15:37.300301+00	+9101712378290		0	0	f	f	\N	\N
48		\N	f	+9101612378290				f	t	2021-07-30 08:23:45.605349+00	+9101612378290		0	0	f	f	\N	\N
49		\N	f	+918801612378290				f	t	2021-07-30 08:23:55.584812+00	+918801612378290		0	0	f	f	\N	\N
57		\N	f	+918906211619				f	t	2021-08-10 16:18:01.976275+00	+918906211619		0	0	f	f	polo4245	\N
63		\N	f	+88001719595033				f	t	2021-08-13 06:48:01.132407+00	+88001719595033		8	0	f	f	masud	\N
59		\N	f	+88001798175484				f	t	2021-08-13 05:14:11.295902+00	+88001798175484		0	0	f	f	jhumasd	\N
4	!Zc0QHsnfyquWO9pyLR6rfwsCQDuuwMFztOK8qSuk	2021-08-27 05:16:28.493229+00	f	basavaraj	Basavaraj	Pujar		f	t	2021-03-16 15:08:26.263857+00			0	0	f	f	\N	\N
55		\N	f	+917406767366				f	t	2021-08-09 19:33:08.586046+00	+917406767366		0	0	f	f	aroon	\N
60		\N	f	+88001757970963				f	t	2021-08-13 06:15:51.916239+00	+88001757970963		0	0	f	f	parimal	\N
2	pbkdf2_sha256$216000$P4UHFnFti5Ab$30IgYVQqXTE5Kwz2SUYYqhLjyl4zVal4/NUQ3N5P+BE=	\N	f	vijaymallya				f	t	2021-03-16 12:44:44.090755+00			0	0	f	f	BIPO	\N
7	!O2WfhrjrI35DlaBSjTos2rCkD8QBnkKARUPuBP5n	2021-09-12 17:13:36.27905+00	f	aman	Aman	Singh	mahichintu93@yahoo.com	f	t	2021-03-26 13:27:57.65424+00			0	0	f	f	\N	\N
61		\N	f	+88001732842755				f	t	2021-08-13 06:25:12.4131+00	+88001732842755		0	0	f	f	Md sumon	\N
62		\N	f	+9101719595033				f	t	2021-08-13 06:46:28.116533+00	+9101719595033		0	0	f	f	\N	\N
9	!Yq0ojNnRnMwzS3w0j9mImo71KYYvotNf45H9mlmp	2021-08-28 06:34:41.813196+00	f	palash	Palash	Basak	palashbasak12@gmail.com	f	t	2021-03-26 13:41:11.249393+00			0	0	f	f	\N	\N
66		\N	f	+88001716702122				f	t	2021-08-15 12:52:58.234407+00	+88001716702122		0	0	f	f	Ismail	\N
64		\N	f	+88001818821945				f	t	2021-08-14 04:57:28.907278+00	+88001818821945		0	0	f	f	Babo Patwary	\N
70		\N	f	+918092000255				f	t	2021-08-19 12:07:26.346721+00	+918092000255		0	0	f	f	r11144	\N
67		\N	f	+8801741127987				f	t	2021-08-16 22:45:54.819561+00	+8801741127987		0	0	f	f	\N	\N
68		\N	f	+88001741127987				f	t	2021-08-16 22:47:30.977455+00	+88001741127987		0	0	f	f	\N	\N
69		\N	f	+88001766132441				f	t	2021-08-16 22:49:46.560648+00	+88001766132441		0	0	f	f	\N	\N
18		\N	f	+919845067969				f	t	2021-07-08 14:13:44.817056+00	+919845067969		210	0	f	f	Niranjan	NIRA4394
71		\N	f	+919840599299				f	t	2021-08-19 14:12:39.946099+00	+919840599299		0	0	f	f	goldie	\N
72		\N	f	+919008787369				f	t	2021-08-19 14:32:03.547771+00	+919008787369		0	0	f	f	ahmed	\N
73		\N	f	+919739991769				f	t	2021-08-20 16:52:29.010366+00	+919739991769		0	0	f	f	test	\N
74		\N	f	+9198632159466				f	t	2021-08-23 17:29:01.15683+00	+9198632159466		0	0	f	f	\N	\N
22		\N	f	+917011534006				f	t	2021-07-08 14:58:23.048708+00	+917011534006		0	0	f	f	one	ONEN7028
34		\N	f	+918050656455				f	t	2021-07-21 11:34:47.127381+00	+918050656455		28	0	f	f	yoda	YODA4335
117		\N	f	+919382397792				f	t	2021-09-17 17:20:24.93868+00	+919382397792		0	0	f	f	ARIYAN SK	ARIY5740
75		\N	f	+9101930876687				f	t	2021-08-24 13:22:36.953714+00	+9101930876687		0	0	f	f	\N	\N
76		\N	f	+88001930876687				f	t	2021-08-24 13:22:46.072182+00	+88001930876687		0	0	f	f	Rasel	\N
77		\N	f	+918252238359				f	t	2021-08-24 14:53:33.650581+00	+918252238359		0	0	f	f	ezio	\N
134		\N	f	+910630312516				f	t	2021-09-22 11:49:53.94732+00	+910630312516		0	0	f	f	\N	\N
137		\N	f	+919986222833				f	t	2021-09-22 16:24:26.929345+00	+919986222833		0	0	f	f	vinay	VINA7917
78		\N	f	+9199916026616				f	t	2021-08-27 05:20:51.236501+00	+9199916026616		0	0	f	f	\N	\N
90		\N	f	+91987189703				f	t	2021-09-13 13:15:22.80087+00	+91987189703		0	0	f	f	\N	\N
8	!5OhJnYSmQUvSZi9RRniTyc6t1KnHbnmh1fGjjEvB	2021-08-28 05:10:58.251509+00	f	sujan	Sujan	Sannashe	sujansannashe785266@gmail.com	f	t	2021-03-26 13:33:28.85168+00			0	0	f	f	\N	\N
397		\N	f	+916392229118				f	t	2021-09-24 03:21:25.846001+00	+916392229118		0	0	f	f	Vimal verma	VIMA4748
118		\N	f	+917065982079				f	t	2021-09-17 19:21:49.228149+00	+917065982079		0	0	f	f	krishna123	KRIS0129
80		\N	f	+9101712178737				f	t	2021-08-31 05:15:38.185206+00	+9101712178737		0	0	f	f	\N	\N
81		\N	f	+916364784047				f	t	2021-09-02 13:50:13.742589+00	+916364784047		0	0	f	f	\N	\N
110		\N	f	+918789743174				f	t	2021-09-15 18:21:59.463521+00	+918789743174		0	0	f	f	PIN2	PIN25027
92		\N	f	+919660205624				f	t	2021-09-14 05:38:02.768368+00	+919660205624		0	0	f	f	\N	\N
91		\N	f	+919660205324				f	t	2021-09-14 05:36:23.686868+00	+919660205324		0	0	f	f	Jaat	JAAT2902
83	pbkdf2_sha256$216000$ZAjbwddj5D62$/gqEMhR1ODGVY6uaNE66nx3Wz4CpGptk4ondspsUitk=	\N	f	sashfd				f	t	2021-09-08 06:01:04.764169+00	1234567890		18	0	f	f	Saurabh	SAUR8298
54		\N	f	+88001710134999				f	t	2021-08-08 14:27:19.660614+00	+88001710134999		0	0	f	f	sumon opu	\N
82		\N	f	+919700990158				f	t	2021-09-06 10:03:15.43027+00	+919700990158		0	0	f	f	sp69	\N
93		\N	f	+919871897703				f	t	2021-09-14 06:26:37.556653+00	+919871897703		0	0	f	f	mohit	MOHI6707
94		\N	f	+91988698860				f	t	2021-09-14 07:21:16.212072+00	+91988698860		0	0	f	f	\N	\N
95		\N	f	+919886098860				f	t	2021-09-14 07:24:28.211157+00	+919886098860		0	0	f	f	\N	\N
88		\N	f	+918640951988				f	t	2021-09-13 07:33:02.432171+00	+918640951988		0	0	f	f	8640951988	86407520
96		\N	f	+911231231235				f	t	2021-09-14 08:35:33.609201+00	+911231231235		0	0	f	f	\N	\N
97		\N	f	+91123123123588				f	t	2021-09-14 08:35:55.709562+00	+91123123123588		0	0	f	f	\N	\N
98		\N	f	+918888888888				f	t	2021-09-14 08:36:08.729342+00	+918888888888		0	0	f	f	\N	\N
84		\N	f	+919986744280				f	t	2021-09-10 15:41:46.899891+00	+919986744280		0	0	f	f	Spoorthy	SPOO0686
85		\N	f	+918660517293				f	t	2021-09-11 06:06:23.200366+00	+918660517293		0	0	f	f	tom	TOMR7704
86		\N	f	+919606970087				f	t	2021-09-12 04:44:26.338309+00	+919606970087		0	0	f	f	\N	\N
87		\N	f	+91805065455				f	t	2021-09-12 06:25:03.083236+00	+91805065455		0	0	f	f	\N	\N
99		\N	f	+91888889000000				f	t	2021-09-14 08:36:20.349914+00	+91888889000000		0	0	f	f	\N	\N
100		\N	f	+918888890000002				f	t	2021-09-14 08:36:30.7893+00	+918888890000002		0	0	f	f	\N	\N
119		\N	f	+919009542659				f	t	2021-09-19 01:56:34.041207+00	+919009542659		0	0	f	f	\N	\N
101		\N	f	+8800900990000				f	t	2021-09-14 08:37:28.930538+00	+8800900990000		0	0	f	f	\N	\N
102		\N	f	+919953929709				f	t	2021-09-14 10:22:30.170395+00	+919953929709		0	0	f	f	kapil	KAPI5958
103		\N	f	+916366859308				f	t	2021-09-14 11:00:04.050412+00	+916366859308		0	0	f	f	new	NEWR7014
104		\N	f	+917935753346				f	t	2021-09-14 14:28:38.044445+00	+917935753346		0	0	f	f	\N	\N
105		\N	f	+88001400412204				f	t	2021-09-14 20:48:16.000904+00	+88001400412204		0	0	f	f	\N	\N
106		\N	f	+919060333564				f	t	2021-09-15 06:48:31.80246+00	+919060333564		0	0	f	f	\N	\N
107		\N	f	+88001712178737				f	t	2021-09-15 08:10:44.531331+00	+88001712178737		0	0	f	f	\N	\N
79		\N	f	+917001257668				f	t	2021-08-28 06:59:15.312922+00	+917001257668		0	0	f	f	saidul	SAID2258
108		\N	f	+88001706191904				f	t	2021-09-15 09:31:20.282361+00	+88001706191904		0	0	f	f	\N	\N
109		\N	f	+919653781011				f	t	2021-09-15 17:23:40.036544+00	+919653781011		0	0	f	f	pintu meena	PINT8911
111		\N	f	+918708792353				f	t	2021-09-16 03:53:37.244623+00	+918708792353		0	0	f	f	renu	RENU5264
112		\N	f	+916393487165				f	t	2021-09-16 11:20:06.122631+00	+916393487165		0	0	f	f	vishal	VISH8128
113		\N	f	+919512340464				f	t	2021-09-16 18:05:27.439762+00	+919512340464		0	0	f	f	jasakiya	JASA3724
114		\N	f	+91984506969				f	t	2021-09-17 00:52:13.259615+00	+91984506969		0	0	f	f	\N	\N
115		\N	f	+919605844782				f	t	2021-09-17 04:04:47.837051+00	+919605844782		0	0	f	f	\N	\N
116		\N	f	+88001316476973				f	t	2021-09-17 13:01:36.928616+00	+88001316476973		0	0	f	f	\N	\N
120		\N	f	+917096935373				f	t	2021-09-19 02:00:24.660909+00	+917096935373		0	0	f	f	ritesh	RITE4052
121		\N	f	+916302996420				f	t	2021-09-19 05:30:39.393733+00	+916302996420		0	0	f	f	6302996420	63024005
122		\N	f	+916366223332				f	t	2021-09-19 05:40:55.101941+00	+916366223332		0	0	f	f	\N	\N
123		\N	f	+9101309352629				f	t	2021-09-19 05:51:20.031827+00	+9101309352629		0	0	f	f	\N	\N
124		\N	f	+88001309352629				f	t	2021-09-19 05:51:36.769591+00	+88001309352629		0	0	f	f	\N	\N
125		\N	f	+919005807593				f	t	2021-09-19 07:03:24.482999+00	+919005807593		0	0	f	f	\N	\N
126		\N	f	+88001914022155				f	t	2021-09-19 12:02:19.418701+00	+88001914022155		0	0	f	f	\N	\N
127		\N	f	+919740606728				f	t	2021-09-19 13:27:23.309175+00	+919740606728		0	0	f	f	sam	SAME3860
128		\N	f	+660640587481				f	t	2021-09-19 13:44:03.3904+00	+660640587481		0	0	f	f	kolf95	KOLF4240
129		\N	f	+917778812923				f	t	2021-09-19 15:07:56.63004+00	+917778812923		0	0	f	f	\N	\N
130		\N	f	+916358026305				f	t	2021-09-20 01:18:21.620044+00	+916358026305		0	0	f	f	sanju	SANJ8248
131		\N	f	+88001932053019				f	t	2021-09-20 11:21:34.233468+00	+88001932053019		0	0	f	f	md shafiqul	MDSH5263
53		\N	f	+88001612378290				f	t	2021-08-08 01:37:00.549699+00	+88001612378290		21	0	f	f	BIPO	BIPO999409
132		\N	f	+917569335251				f	t	2021-09-21 04:05:04.293545+00	+917569335251		0	0	f	f	pratimesh143	PRAT6462
133		\N	f	+919168784972				f	t	2021-09-21 15:15:43.176149+00	+919168784972		0	0	f	f	devil	DEVI2114
135	pbkdf2_sha256$216000$YPyIv6G0hU9R$gJd5V/rii7Q6Wez7CoUL01JlWfo3ucW6khBNH2Iqpc0=	\N	f	Bot-4	Bot			f	t	2021-09-22 14:21:13.655346+00			0	0	t	f	\N	\N
138		\N	f	+840368190543				f	t	2021-09-23 05:37:08.010514+00	+840368190543		0	0	f	f	362216	36225009
139		\N	f	+660809642911				f	t	2021-09-23 16:42:08.091414+00	+660809642911		0	0	f	f	nj192110	NJ199562
144	pbkdf2_sha256$216000$rwJjbRyvA17j$2Fxg48kHdw/+L3b40kL7mEmUrWYJv9M8NceiAenPQ74=	\N	f	a0715feb-6cd3-4476-8504-1e217fb60c43	Bot1			f	t	2021-09-23 17:15:18.827737+00			0	0	t	f	Bot1	\N
145	pbkdf2_sha256$216000$1TrIvgXKLIrQ$RTSIYLLEzfL9zSXt5HzRH6I5UxCqYHCTsZ9BPQsl0Ko=	\N	f	a32676a4-294b-405e-b991-99302f8dc7e1	Bot1			f	t	2021-09-23 17:15:33.979826+00			0	0	t	f	Bot1	\N
146	pbkdf2_sha256$216000$MqamSJN6KEFt$PKSPqoP2jFVezrv7LRPPBHayLNLW6sWNjwuRWLeIcKI=	\N	f	d86ab87b-8cff-464b-9b93-e9cac23511a6	Bot1			f	t	2021-09-23 17:16:26.730909+00			0	0	t	f	Bot1	\N
451	pbkdf2_sha256$216000$z98hz2qr8JPs$/PJl4gcd+m+TIPNPu6gXzOBIzPnsVw3Wfu/naARwIaQ=	\N	f	325d765a-2852-4894-a968-f95f8aab4e7f	Bot1			f	t	2021-09-24 06:10:57.21318+00			0	0	t	f	Bot1	\N
452	pbkdf2_sha256$216000$Psd1zB7eN3FM$E8hwmP+qC3xHhwf5eOxibv8fkc0Myz4qRRbKGKzXurA=	\N	f	6d6f3d70-59a3-44a4-8ed5-b18c103071ae	Bot1			f	t	2021-09-24 06:11:22.021707+00			0	0	t	f	Bot1	\N
453	pbkdf2_sha256$216000$I2UFBfYjAG2E$gND5fR59eKsKpmxhKPTk2vex4+nP3m8h4ZBT4c60hmw=	\N	f	ba841af1-eea1-4b65-8ccd-bebff3828b48	Bot1			f	t	2021-09-24 06:11:54.207956+00			0	0	t	f	Bot1	\N
455	pbkdf2_sha256$216000$6NwUnozi3UAE$E8jJh0GsYoqfg/rDzPPDHfrcIxaDq0Ho4OzHV8vOoJ8=	\N	f	17ebe8ac-8255-4475-aad2-d9a45707a0ff	Bot1			f	t	2021-09-24 06:27:41.746889+00			0	0	t	f	Bot1	\N
456	pbkdf2_sha256$216000$gaRmIq5GvwZS$KbNygg0/2tEG+Uf390gFYxsKc0l5vf70Z6xr7PvmLME=	\N	f	d3b2294b-bff8-4f41-b602-eefb93508b6c	Bot1			f	t	2021-09-24 06:28:02.099185+00			0	0	t	f	Bot1	\N
457	pbkdf2_sha256$216000$GeRpgpQnK9gD$7Wu6QHUtIZDanflJ28KoNR7begwmtR37VyPmC3pcIMQ=	\N	f	18b1832b-44a4-4193-a0ed-8befc5c640c4	Bot1			f	t	2021-09-24 06:28:35.022308+00			0	0	t	f	Bot1	\N
458	pbkdf2_sha256$216000$ZfmiApTf6gc0$TbFgHuTwIuB322L7nYfAnfml3HSbFe0UBTkLJc0CUyQ=	\N	f	6bd970ae-e018-4936-be07-6cdd98b6f1c6	Bot1			f	t	2021-09-24 06:29:52.064119+00			0	0	t	f	Bot1	\N
459	pbkdf2_sha256$216000$WwBcyxCxvCR2$e4Ib/Fd78jKx+w/CNgkAQm4hBCd/h3+u9j+OzylVfho=	\N	f	97f2d250-2cd4-4169-ad3b-382fb4b1b3f3	Bot1			f	t	2021-09-24 06:30:09.524602+00			0	0	t	f	Bot1	\N
460	pbkdf2_sha256$216000$xHnjq6tSRN73$Fk2PfceQri7uJX5yMpBl9PtzRF9Xzss0xJlB8DbtnBI=	\N	f	289d628a-5f6a-4a78-a5e3-6749fb0b8032	Bot1			f	t	2021-09-24 06:30:21.466576+00			0	0	t	f	Bot1	\N
461	pbkdf2_sha256$216000$EEPDf5y9upF7$NEsUYmEkGLSbTa2aUYXpiCFEN0aDmqHLUeI21uORwPA=	\N	f	448f234c-e090-4599-a1e6-e179398f972d	Bot1			f	t	2021-09-24 06:30:22.735785+00			0	0	t	f	Bot1	\N
462	pbkdf2_sha256$216000$CI4OUh2OWWGT$ZnPhoiz0dEqeLUxR1FyN2NsVl+QTS8tL/l0tGlE9WVI=	\N	f	bca34af3-69e5-4e19-91f3-6837e2ea8461	Bot1			f	t	2021-09-24 06:30:23.823873+00			0	0	t	f	Bot1	\N
463	pbkdf2_sha256$216000$FEFl9SKyzdhg$MaeKH/ZO27nRDg+i9yvywLqVp+/hfVhD/IxG+sDCjgk=	\N	f	cbd646b9-3e1e-44c0-82ce-70f65a6a01e6	Bot1			f	t	2021-09-24 06:30:34.991787+00			0	0	t	f	Bot1	\N
464	pbkdf2_sha256$216000$i5MJsMSSaskt$8FugIQgVM8RrqfBio673maQ0iiuAp4xBlRgev01k/4A=	\N	f	824125d8-12b5-400f-924d-e922cacbf997	Bot1			f	t	2021-09-24 06:30:39.944777+00			0	0	t	f	Bot1	\N
465	pbkdf2_sha256$216000$gzP4sl85wOec$WHxbR+Rwi8hglqj7Z/Pk/BfflYyF6ZOwxiK6rp/7338=	\N	f	ad1a197e-7cb8-478d-b127-165a198dcc46	Bot1			f	t	2021-09-24 06:30:47.406363+00			0	0	t	f	Bot1	\N
466	pbkdf2_sha256$216000$N5K1X4CRyoCS$Htjq+QqGrzAe+I5japjxU0xzzA6OFTPs6OzWj3XINi0=	\N	f	5caa8d0c-5938-46b9-b154-4c6b3d8686de	Bot1			f	t	2021-09-24 07:09:40.056977+00			0	0	t	f	Bot1	\N
467	pbkdf2_sha256$216000$nIXw9DYvTeDE$6nUopprla+4/kF2DG9Y/0WQyUGvesHgOUGax0QN1Fbc=	\N	f	32f48c27-2791-4af6-8e54-9440da9a29f3	Bot1			f	t	2021-09-24 07:09:56.778862+00			0	0	t	f	Bot1	\N
468	pbkdf2_sha256$216000$SPpZlDQrhuOW$ekSv2x6L3v1Mnlg2KIGlP1Y0UIO+qOvAtfuvyewepQ8=	\N	f	7f84eb69-5a51-47c3-a7cc-bb19402b21cc	Bot1			f	t	2021-09-24 07:10:02.75057+00			0	0	t	f	Bot1	\N
469	pbkdf2_sha256$216000$sLAw1UrKDJKZ$twj3fJnHvHKEUqszp4d6++YV4v3WB9vDJGSigH5uN4g=	\N	f	c0363aff-bebb-4080-bd28-41ec6993b186	Bot1			f	t	2021-09-24 07:10:08.229577+00			0	0	t	f	Bot1	\N
470	pbkdf2_sha256$216000$r9PusrT32q0L$KxotXXFFEwFTWUO4oUzOFlr6uxrmix3KXIlJtewthKY=	\N	f	dcce794a-395e-4f08-98c1-0bcd136fdb12	Bot1			f	t	2021-09-24 07:10:10.589626+00			0	0	t	f	Bot1	\N
471	pbkdf2_sha256$216000$qLlUtqugnT1k$66Uf+sgCkhMSNzdn8ag4jd4Y/dgaJXTt1XKbVmbafqA=	\N	f	954066a5-aae7-4901-ad21-02b0e82a588c	Bot1			f	t	2021-09-24 07:10:12.272207+00			0	0	t	f	Bot1	\N
472	pbkdf2_sha256$216000$PqMbHMuEgjFv$PtXVVHbIsIQyR7qFLWDksraPUklIS4LlMSDNDkSPrMo=	\N	f	7bd25db3-8cca-4cde-a1b9-edea2f1248ba	Bot1			f	t	2021-09-24 07:10:15.291762+00			0	0	t	f	Bot1	\N
474	pbkdf2_sha256$216000$5wxdkAkmU58z$PfN0pjnQaUxla9vhqTl4xA9DYV/rT05BXzax3heC/Ns=	\N	f	a5c7c172-a06f-4b35-a569-96338be8cfae	Bot1			f	t	2021-09-24 07:10:19.537165+00			0	0	t	f	Bot1	\N
475	pbkdf2_sha256$216000$h3iA88zicFAX$sVi38sAQgDeIYawGnQM52N6s7FdFwPRivlgcYxXtEq4=	\N	f	test_user_1				f	t	2021-09-24 07:46:28.981206+00			0	0	f	f	\N	\N
476	pbkdf2_sha256$216000$dOH61M29lxU1$emtbm180lcdBRYfidDXpvu1f+0TvUejBfE9G8ORqZ+c=	\N	f	test_user_2				f	t	2021-09-24 07:47:03.35209+00			0	0	f	f	\N	\N
477	pbkdf2_sha256$216000$itJGmB8wDcVp$rNj/85hAptJQgYJKBmo6bO4lDRPSjMKwl4y92BCqhqY=	\N	f	test_user_4				f	t	2021-09-24 07:47:31.713628+00			0	0	f	f	\N	\N
398	pbkdf2_sha256$216000$S1zdiMqqJb9Z$uKzVmk9R9y8aHvmNy5BjSOylBoV7w/BKT0jxlQkcv8g=	\N	f					f	t	2021-09-24 04:35:18.880727+00			0	0	t	f	Bot name	\N
478	pbkdf2_sha256$216000$g90cQso2h7tC$Wtkrywh1Q0f1W9VqTRC7Zx/G/SKnLfoXjTJJSsQODtM=	\N	f	test_user_3				f	t	2021-09-24 07:49:42.452903+00			0	0	f	f	\N	\N
479	pbkdf2_sha256$216000$j9gXeTVNK59a$eBzhvVNzb0hFn8Fi9MdlmZjvcWYOaxJXNgEC301jwYM=	\N	f	bbb97cc5-398f-4e1e-ad33-1a211c28bbba	Bot1			f	t	2021-09-24 11:54:46.346293+00			0	0	t	f	Bot1	\N
480	pbkdf2_sha256$216000$bUWlycQPngOU$TNeV2lsMXe9VjNR6qVVQ1az79VFk9vWvNcWGhq1Mx1U=	\N	f	67e9f598-b12e-49d1-a1d5-50df57fc7fbf	Bot1			f	t	2021-09-24 11:55:02.28865+00			0	0	t	f	Bot1	\N
481	pbkdf2_sha256$216000$G4jhGtQZj87Z$ywtW7wol0RFYk0h5s9xKKfYaJSPsoMdzDu0dWgsWwXw=	\N	f	8b27f192-9657-4117-9f1d-7e5e05f9e9c6	Bot1			f	t	2021-09-24 11:55:15.676471+00			0	0	t	f	Bot1	\N
482	pbkdf2_sha256$216000$PWEZbQPGxGI6$+d+5H2xh16z5VwJEipxmQCHmXRlWgL22Z3xeIm9zRs4=	\N	f	92fb2104-58cf-4812-9ec8-053ad6625c95	Bot1			f	t	2021-09-24 11:55:17.657308+00			0	0	t	f	Bot1	\N
405	pbkdf2_sha256$216000$W9zb0xVqZGXj$P7vjGBCnB/bSfOo+AA5ahPHXKQrITTfzUajnuB6T/hc=	\N	f	Botnam21e				f	t	2021-09-24 04:37:29.426496+00			0	0	t	f	Botnam21e	\N
406	pbkdf2_sha256$216000$11K40Zmr89c8$imFpq8qTe/b2/iziZGUvr0zqvZMehnwduRuJZLY1XQ0=	\N	f	cfa371f0-a99d-4243-9817-793b2c5f0670	Bot1			f	t	2021-09-24 04:46:08.381433+00			0	0	t	f	Bot1	\N
407	pbkdf2_sha256$216000$hyGk4wWazeVP$R7MpOz3AUzhPo9LjA6TXBEU/YpAKnFcW8ybXVdayyU8=	\N	f	b3fcc131-b7d2-4eea-bf75-ed906886988c	Bot1			f	t	2021-09-24 04:49:21.951051+00			0	0	t	f	Bot1	\N
483	pbkdf2_sha256$216000$HZmrFJYNajyo$cWNv9S7mr1IVPYP/73tnK+NO/o6e2m5k99hgC4mcFFY=	\N	f	851a04fe-a8d4-46ac-b18e-92a293c187cd	Bot1			f	t	2021-09-24 11:55:19.317428+00			0	0	t	f	Bot1	\N
484	pbkdf2_sha256$216000$CQVTQOLUbl6g$ozXo52aVX6ao1h9Sba+1Qenk3XQG6nXjnC8HQQq8t6s=	\N	f	fc7d57ba-719b-45d8-b1a4-4023914c9832	Bot1			f	t	2021-09-24 11:55:21.27132+00			0	0	t	f	Bot1	\N
485	pbkdf2_sha256$216000$UWPz4nPuxgKd$PgFeYSOe4WO21dki/emJG0A4YEEEWrrBoGA3RMpbsZY=	\N	f	285eeb63-0277-46ea-88ed-6bef2fbca4b9	Bot1			f	t	2021-09-24 11:55:30.862285+00			0	0	t	f	Bot1	\N
486	pbkdf2_sha256$216000$TtdskVlp35xq$0P4YtcOUW7JZhXZ0oH0MqAXWha6U612mKdfZJUv+/+0=	\N	f	0901d8d4-3a80-41d7-8b02-41838a9082b9	Bot1			f	t	2021-09-24 11:56:22.478911+00			0	0	t	f	Bot1	\N
487	pbkdf2_sha256$216000$wLXkXKFn0d9r$eDWyaCdHLtgu67R2RUamdkm5peJurlmxn8e68vWwL+A=	\N	f	28e6e870-8e89-48e3-aa8b-2193ef674538	Bot1			f	t	2021-09-24 11:56:23.775575+00			0	0	t	f	Bot1	\N
488	pbkdf2_sha256$216000$HogYVwSgTjdO$O4l38JDABiVTxYp9MUsxBUtP5OJfO+ya0VQkmaUgaCY=	\N	f	ff49a892-542b-4541-a3b8-06433909b0eb	Bot1			f	t	2021-09-24 11:56:24.836518+00			0	0	t	f	Bot1	\N
489	pbkdf2_sha256$216000$Gr0f139zCSJa$+5Xu6leVw1zQdoB/J9NQQYRlmj/LxoT9To9h5j7yStE=	\N	f	5ded76cd-f97d-4a21-9df8-b733b88fd116	Bot1			f	t	2021-09-24 11:56:30.501163+00			0	0	t	f	Bot1	\N
490	pbkdf2_sha256$216000$Oai2yykj3RJE$AIVTenSFhoW50V0X9JhsR5vfYmXuJmOpVbJLrR4el5A=	\N	f	20ef6630-aac6-4c6c-b270-8f71644a810f	Bot1			f	t	2021-09-24 11:56:31.681109+00			0	0	t	f	Bot1	\N
491	pbkdf2_sha256$216000$fU3xltqjLxqZ$4PPOJUHKcdW2CrhGN5FxFxy45Nhias0KRpCizsIcDWo=	\N	f	3a732fa1-08e9-42a5-8165-35cf5ae497ed	Bot1			f	t	2021-09-24 11:56:32.877647+00			0	0	t	f	Bot1	\N
492	pbkdf2_sha256$216000$dgRGuvQU4dZn$qWy0GxcdQj3bfowtN7xOvldOC8cvJTOuQfn2Mj0D6+Q=	\N	f	d1284bc3-2269-46d4-8d68-7eaae6fe8403	Bot1			f	t	2021-09-24 11:56:40.180705+00			0	0	t	f	Bot1	\N
493	pbkdf2_sha256$216000$yWWA6p7If88c$OeiE5wzOuOY1shuSaPxxXgvrsynqSqhu7egP9vp2dTs=	\N	f	e316d2ee-7b04-45b0-889e-7da3d644d040	Bot1			f	t	2021-09-24 11:56:42.344592+00			0	0	t	f	Bot1	\N
494	pbkdf2_sha256$216000$WJ2NrkExDAiu$GpH3kPbTUNUUTxEGThS74beMZsKCmJUAMzHYiwIWZNQ=	\N	f	13a2dcfd-ef05-409f-bb28-ed257c67b5be	Bot1			f	t	2021-09-24 11:56:43.467981+00			0	0	t	f	Bot1	\N
495	pbkdf2_sha256$216000$m8KVnFAuGk5I$7HpodAjCgClFPNrdozAm4jUR0ZlkKEotFmTsRfrNr2s=	\N	f	6a3175b0-184d-4008-a5e9-2873500a2f90	Bot1			f	t	2021-09-24 11:56:44.566459+00			0	0	t	f	Bot1	\N
496	pbkdf2_sha256$216000$2lwCwzPQlbm1$cDDFa07W98IK35UJ4tTtkxZYZKZHLHUHtyNS70N3kjs=	\N	f	35ac6847-a411-42a7-94bf-deaa6a1be919	Bot1			f	t	2021-09-24 11:56:45.636093+00			0	0	t	f	Bot1	\N
498	pbkdf2_sha256$216000$q7YEoEl1q8gf$30FE8XfCj1sgC+vQMjoUhkzjQxZFloxaPnKHmZuniec=	\N	f	9ec23e7a-8bcd-42be-a767-8673173c4d11	Bot1			f	t	2021-09-24 11:56:53.52318+00			0	0	t	f	Bot1	\N
499	pbkdf2_sha256$216000$Wmn0GjP9l3IF$UoRfSrL86h5S1zqlkoPmfev081JSDHTKBvcGtBBCvLw=	\N	f	b1e55915-a600-4ae7-b0cf-818c66f36fd8	Bot1			f	t	2021-09-24 11:56:55.328653+00			0	0	t	f	Bot1	\N
500	pbkdf2_sha256$216000$2AaFdyEtjkOK$zQDgAOqnU6yf1ysAOYAFdEAkFZmp2WZimSLV5XH05ls=	\N	f	325815ba-a0fe-4542-a3d4-a88520b59d89	Bot1			f	t	2021-09-24 11:57:18.484582+00			0	0	t	f	Bot1	\N
501	pbkdf2_sha256$216000$TbvmdC14jQvP$cQmcTw7A+qnxFWz0V0Pa+mOPxZDSVkeHpZcnBxvOIXA=	\N	f	c267c623-dee3-4336-87e5-596bccf37e97	Bot1			f	t	2021-09-24 11:57:20.282186+00			0	0	t	f	Bot1	\N
502	pbkdf2_sha256$216000$qCfT03rFuEG9$ZPDlOmc9f1ONAnFIZe+cOprKXItlTk02N+M4JUJGi6c=	\N	f	14ab12a3-8d49-43ea-9ff7-1817c8dcb17a	Bot1			f	t	2021-09-24 11:57:50.302245+00			0	0	t	f	Bot1	\N
503		\N	f	+8801912101827				f	t	2021-09-24 20:14:51.538826+00	+8801912101827		0	0	f	f	\N	\N
504		\N	f	+6281387246091				f	t	2021-09-24 22:20:07.61467+00	+6281387246091		0	0	f	f	pends	PEND5855
505		\N	f	+918957024280				f	t	2021-09-25 00:56:15.676897+00	+918957024280		0	0	f	f	Nikhil Gautam	NIKH0287
509	pbkdf2_sha256$216000$SHdYYOmp9R8P$dkG3N0n6zQK5GfN+9tjKEI12Bq2PbWkjQRyEAEyBbuc=	\N	f	efade273-a829-4f72-98b2-e5245720232a	NewBot			f	t	2021-09-26 16:03:14.041143+00			0	0	t	f	NewBot	\N
510	pbkdf2_sha256$216000$hxhgSaG9iunt$0M3d+JV59pZqXDomwTcy8dnL6HC/+aQwIS7LPnqtpDU=	\N	f	e9474e56-c44c-48a7-b713-3f901feefbee	NewBot			f	t	2021-09-26 16:04:47.223756+00			0	0	t	f	NewBot	\N
511	pbkdf2_sha256$216000$8tDhD6MXJCov$5lWOPu28p3mvelgP9Uix/JbTP6eQhDa5ScS2B2qF0E4=	\N	f	96e39c5b-d322-4824-8129-cf6c8df553d9	NewBot			f	t	2021-09-26 16:06:24.089034+00			0	0	t	f	NewBot	\N
512	pbkdf2_sha256$216000$tHLikiDdzooE$OdWDXH7bU8nSGzyU/9rDc4p9W5uSRrKzHC/SFPcYm+U=	\N	f	5f4f1bc8-081e-4683-8fcc-09fcad187185	NewBot			f	t	2021-09-26 16:08:53.445661+00			0	0	t	f	NewBot	\N
89	pbkdf2_sha256$216000$49vBuT9BjvdQ$DAimpihO5FhHAHMQdUzgCw2ugkrkIkAK/AeG8k1LOdY=	\N	f	test_user				f	t	2021-09-13 07:42:29.879301+00	9999999999		14	0	f	f	Test User	TEST8322
517		\N	f	+380637910573				f	t	2021-09-26 16:18:37.937271+00	+380637910573		0	0	f	f	097052	09704705
518	pbkdf2_sha256$216000$WrHdlhpMFbZt$qtZtrUByuVKpT8ZVRa8nY0c1Ck1ROOSdlICV6MpsCFc=	\N	f	0ca79ffa-6cd2-4c8e-adfc-d3cdaeab4c11	John			f	t	2021-09-26 17:15:52.695911+00			0	0	t	f	John	\N
507	pbkdf2_sha256$216000$AkkdsEL9I6mO$NCnMoOUG8bCEwrOkNwKrSW3VbtDpm52FN402hPss7QQ=	\N	f	592b662d-94ac-47a9-9f21-8ac6f9b66b1e	Bot1			f	t	2021-09-26 03:24:46.780917+00			8300	0	t	f	Bot1	\N
519	pbkdf2_sha256$216000$dAYr9fwDALyz$pto9w7mLtrrt+JHJEslV9AtfCyN+z17nvgM4ADCLqHo=	\N	f	fac0cd67-e5ae-435c-a2d1-607bb2c9314a	Winner			f	t	2021-09-26 17:20:54.229974+00			0	0	t	f	Winner	\N
508		\N	f	+919091361829				f	t	2021-09-26 15:22:06.905808+00	+919091361829		0	0	f	f	\N	\N
520		\N	f	+919612751978				f	t	2021-09-26 17:27:40.501661+00	+919612751978		0	0	f	f	swadesh sharma	SWAD0354
521	pbkdf2_sha256$216000$8J7WEZ4kaG20$dhhFHQ6Y0z8RQc9zPbGMeaNrl/pCUdEUIR3gbcvbyFs=	\N	f	d1985560-608f-464d-8f70-126716f082f3	Raju			f	t	2021-09-26 17:49:01.349111+00			0	0	t	f	Raju	\N
522	pbkdf2_sha256$216000$il6amWddjtU3$0r+pVNRF7IvCaNF3M2cZke36tSBrNjZhya5FJ3gGbA0=	\N	f	e83090eb-4003-4286-bbb7-0c7c2717b4db	Rani			f	t	2021-09-26 17:49:51.877525+00			0	0	t	f	Rani	\N
523	pbkdf2_sha256$216000$nUKqdy60DYzf$t5SdQh09ZWqlx5FdlMMqErXYNnt/ZmevlgcS1jsdRr4=	\N	f	66205535-dbb3-468a-aca2-d075f3dd5200	Diamond			f	t	2021-09-26 17:49:52.080511+00			0	0	t	f	Diamond	\N
524	pbkdf2_sha256$216000$vGMSTys2ssAi$tXvEjO3GLIRTqzWDyZ+MOn5xLt9MjeDQ6aztsvnQmMk=	\N	f	c4cca4c0-6299-4ceb-8c48-840cd41f6bc9	Vijay			f	t	2021-09-26 18:38:59.81091+00			0	0	t	f	Vijay	\N
525	pbkdf2_sha256$216000$SfGAasCqC70r$HxKKTWVs6ZszvEgzMouVFgfFxYW5sRt5LPsOwa3OC7k=	\N	f	7ac87364-0fa0-4a3e-88c4-dbb5436c2d00	Shahrukh			f	t	2021-09-26 18:39:00.147721+00			0	0	t	f	Shahrukh	\N
526	pbkdf2_sha256$216000$3iw9wFk3ey4n$i+lPANFcYOjDseWK3kHFA0uOgO5ogg9lsdfItiacl8g=	\N	f	abc1a80f-2c1d-45d9-8439-222b43faf419	Krishna			f	t	2021-09-26 18:40:14.623208+00			0	0	t	f	Krishna	\N
527	pbkdf2_sha256$216000$lapSINKcWUoB$zg5hpHTzB4u7WaejqNyF8H2o60bjhkyKsbc3/wY5WRU=	\N	f	6628ef50-408e-4eea-a7c8-5e2a9a975ede	Loser			f	t	2021-09-26 18:40:14.820358+00			0	0	t	f	Loser	\N
528	pbkdf2_sha256$216000$trCa9GpqjvFC$QaXAaigKhfNZJLdZQ+06MlE3ZoLVEm3gGnfql5Fh6aQ=	\N	f	91de2253-ebe0-45e2-89cc-450afbd2d3f5	Vijay			f	t	2021-09-26 18:44:22.333688+00			0	0	t	f	Vijay	\N
529	pbkdf2_sha256$216000$wkJyYqT77VXS$jFA/YlWYg9SvXm/xl2rEwPPTZeZByvy+QlVvq1F+AM4=	\N	f	e486af6b-8966-4ebd-9859-b3c65dd14a08	Rani			f	t	2021-09-26 18:44:22.532838+00			0	0	t	f	Rani	\N
530	pbkdf2_sha256$216000$ButLaKOIMBOM$joC8k9coJT6euyetoiq79tRjWGEI4jn+auwBq33kANw=	\N	f	f11c9b88-43ec-4025-b5f7-c8f12b3a7e83	Loser			f	t	2021-09-26 18:49:39.72573+00			0	0	t	f	Loser	\N
531	pbkdf2_sha256$216000$ADg8WI6fuy1t$IW64qg5FmSf7FNggxGyP2B1aLk9A32BLTg99d7gRndI=	\N	f	9a40cb0f-be81-42b6-a0a1-074651b9d786	Gambler			f	t	2021-09-26 18:49:39.931801+00			0	0	t	f	Gambler	\N
532	pbkdf2_sha256$216000$35TXD23d47Ca$GlTbOWOZj1OgT1T+ctZMXNyLyHdYWSN7IwWLWuTRJig=	\N	f	09fe86d1-c216-4be9-aa83-b5e07f74ee21	Roja			f	t	2021-09-26 18:49:53.216023+00			0	0	t	f	Roja	\N
533	pbkdf2_sha256$216000$uiWNOgMIbfZN$0+JKk5i6wcY5XkBd9QWTXe8r0qjq8qsjjcz1FBgPPqU=	\N	f	ae299acb-ca0d-416d-9f91-aa200638841b	Diamond			f	t	2021-09-26 18:49:53.406307+00			0	0	t	f	Diamond	\N
534	pbkdf2_sha256$216000$tPPjVwDUnxVW$+Gz7ZpKQpiukNPISSLYOeViQI70Ptr40fZxaTaTIpXA=	\N	f	b783a9d5-a37f-4649-bd8d-4f3a89fdb7a1	Winner			f	t	2021-09-26 18:50:35.534684+00			0	0	t	f	Winner	\N
535	pbkdf2_sha256$216000$YmZciYhiXwIe$FmkNiPYhnMOmMJMfHNzYnW00zckeaeu3TSSvrPCJzPw=	\N	f	76603273-4a6b-4d69-b667-f3888efdda3b	Loser			f	t	2021-09-26 18:50:35.725333+00			0	0	t	f	Loser	\N
536	pbkdf2_sha256$216000$2RJlcWMRtF2a$6r2qODz7SAlSSoWDX9un3B7h4XZLVZqRl7ob8ga+vLk=	\N	f	eaba0d28-31ad-460a-a45c-c918dc7c7d17	Gambler			f	t	2021-09-27 02:26:10.293506+00			0	0	t	f	Gambler	\N
537	pbkdf2_sha256$216000$TnqbiKLVM4uf$dkDGAsmJICrN4J904x21Dkp8touuFzuXQCwCRsxAnyA=	\N	f	ad38bbec-9687-42c7-8382-b3604bd11825	Loser			f	t	2021-09-27 02:26:10.519546+00			0	0	t	f	Loser	\N
538	pbkdf2_sha256$216000$ceaGbS7u2OHx$8292zGzBRZr4HMMv6439/GUqehcZWt+PuvRFDjtkZB8=	\N	f	a476e07c-9080-4ccb-a6fe-4e6ef5bdb819	John			f	t	2021-09-27 03:09:47.693529+00			0	0	t	f	John	\N
539	pbkdf2_sha256$216000$kPuE87nxHzzi$yOkaVAjujxak3KD0d0Alj9zFHgujuwo3DgKXOG6/D8Q=	\N	f	e8674e5a-9c6a-4fd7-abf2-46edad6c09b9	Shivaraj			f	t	2021-09-27 03:09:48.008668+00			0	0	t	f	Shivaraj	\N
540	pbkdf2_sha256$216000$TGdPOn7MJyER$9GT6XBg9wQ8wMmPL6hNTG5dMyLANFeYzWjUl/Czg03w=	\N	f	65b93ae0-ce23-4c5b-95a2-c99e2035651a	Major			f	t	2021-09-27 03:10:16.865941+00			0	0	t	f	Major	\N
541	pbkdf2_sha256$216000$139ArYQWN3bG$cutWj8kkLpAiOmkTQ9VkIHsc1/LoYx5H5f6YF5kiq04=	\N	f	5cffb1d5-26ba-4066-8618-065e9d7d78ae	Rani			f	t	2021-09-27 03:10:17.14226+00			0	0	t	f	Rani	\N
542	pbkdf2_sha256$216000$WZpqPoA0K3Df$gv3eWazXHWPWP5yquBHDT1AlNmwcwSU5TeQhh7XWoFU=	\N	f	NK1				f	t	2021-09-27 03:21:30.122943+00			0	0	f	f	\N	\N
543	pbkdf2_sha256$216000$RNpYXGLCCBKW$ED260fdoRNmz5BE+qx/Hr7YQyjsCa/i9PwxlOQiCu8A=	\N	f	2516a3a4-d7fc-4622-abc6-375841e7c2cc	Krishna			f	t	2021-09-27 10:09:46.710807+00			0	0	t	f	Krishna	\N
544	pbkdf2_sha256$216000$oqxFyjnb99vX$HWSvU3PVePK4ayaJ+lroXpylTAww3X1X3eWtcOhpDk4=	\N	f	281534f8-6478-44d2-806f-2c1a9eb52d67	Loser			f	t	2021-09-27 10:09:46.917933+00			0	0	t	f	Loser	\N
545	pbkdf2_sha256$216000$MgHEzCZKYNU3$/9Uo5JzIZFJG7HD6UHyXjL0rEQh5jYPeV9YLSTnfY0E=	\N	f	116844b5-47b6-4045-a108-c3546c0c76ec	Avenger			f	t	2021-09-27 10:10:12.594109+00			0	0	t	f	Avenger	\N
546	pbkdf2_sha256$216000$tjc9PD64rRy7$DmtCCGmgn9iKz9/pga67jrpFrZMcccLf2K72hn55dyQ=	\N	f	4a10f6c1-6f1f-4360-8d95-a37cec05a23a	Ruby			f	t	2021-09-27 10:10:12.783677+00			0	0	t	f	Ruby	\N
547	pbkdf2_sha256$216000$1dCgrBf3AwFE$1HvIz/D5c890VdBiufjQQTayc1m6mlad/32joHfTn9Y=	\N	f	c11cc9b0-dd23-4e23-b929-f056d110d764	Akshay			f	t	2021-09-27 10:10:17.282864+00			0	0	t	f	Akshay	\N
548	pbkdf2_sha256$216000$tvIkqGciuIcf$Ip0S5ovYno4s0Ut+KyiJOP2nhLV/+0GC4XBVSYOqWNk=	\N	f	4277db7e-0e34-4ff2-a727-f0c5c66d5357	Number 1			f	t	2021-09-27 10:10:17.481067+00			0	0	t	f	Number 1	\N
549	pbkdf2_sha256$216000$JgLgcqLnJoPG$eBwACLCTfkBhrcteJS1UebnmlOASgw+e4RuD0eqhEhE=	\N	f	9ad945ac-3042-4869-97cc-3cd3f5482e0f	Mara			f	t	2021-09-27 10:10:19.533287+00			0	0	t	f	Mara	\N
550	pbkdf2_sha256$216000$zOmDfekP0NeK$UbyyrfTYBnZmNuvEYY0KhXSh1sls4fdDO1jw1Vvy4yY=	\N	f	e140c783-7baf-49d6-a588-3b313c1bc976	Diamond			f	t	2021-09-27 10:10:19.724929+00			0	0	t	f	Diamond	\N
551	pbkdf2_sha256$216000$xN1Kzn0ZIfiR$kYDzCNdFJW7zvXndHzEAncnB6sYl3e3gKkSqUYR55Bc=	\N	f	fb986884-7de8-4b01-87be-43fbff83138a	Hero			f	t	2021-09-27 10:10:58.934973+00			0	0	t	f	Hero	\N
552	pbkdf2_sha256$216000$wkAxR4n8yifi$+O23/0ZYX0a/JmQUUxuC2o/KYmdJw2EKVc9PHH/QBuw=	\N	f	24f71c65-92fb-4727-962d-4579cae438e9	Master			f	t	2021-09-27 10:10:59.12482+00			0	0	t	f	Master	\N
553	pbkdf2_sha256$216000$jJqmVTgP9L7y$UhfvBKPvM+xIq0wtn1VI5/DO8q+Qysc8ufRGgA5Jpl4=	\N	f	e09cb1dc-26d5-45db-9686-ed6bc180afda	Gambler			f	t	2021-09-27 11:06:17.126638+00			0	0	t	f	Gambler	\N
554	pbkdf2_sha256$216000$t69CzUkWlE3Y$340K+z7ZbYAtgmO22BKMlhmlc3RMCVP9LF0XrACa9lE=	\N	f	6125951d-0f17-4ffe-9cc8-cbd711382041	Shivaraj			f	t	2021-09-27 11:06:17.318611+00			0	0	t	f	Shivaraj	\N
555	pbkdf2_sha256$216000$1YxkSUfJEMxd$8HGmmmj08wvQv9GH8oMWni0D3a5tBzXPCKxCDqRbubM=	\N	f	cf7e4658-ad65-4e4d-a813-fbac01b60c14	Ruby			f	t	2021-09-27 11:06:30.416072+00			0	0	t	f	Ruby	\N
556	pbkdf2_sha256$216000$lJ5Ce4DEnOMV$B7WHhMZ28H73o6oT+wMxl5Bi5ip9oRqBuqqveYFXThU=	\N	f	c920c693-e03d-46c8-8744-07b09d05aa41	Raju			f	t	2021-09-27 11:06:30.839472+00			0	0	t	f	Raju	\N
557	pbkdf2_sha256$216000$iGkOlY2o7gPr$7LTTzUyenAVaw+dnIffXMEfLVedJ8nqsaRLZuic/qoM=	\N	f	db48e2ff-026f-41b2-92ac-5489bdfbdc7c	Diamond			f	t	2021-09-27 11:08:29.81964+00			0	0	t	f	Diamond	\N
558	pbkdf2_sha256$216000$dcZRpwLOfmbf$A9tAbYr7480g6cOUwdDEiCdqTx9heHhA0OFKW0s1olc=	\N	f	1c3305ec-343d-49d2-b3ac-e7ced1277e50	Vijay			f	t	2021-09-27 11:08:30.010867+00			0	0	t	f	Vijay	\N
560	pbkdf2_sha256$216000$FskRb7SDVym1$EUxA9NYc+Aiv7s1glsVbi14aIlJyz+qp61fmMe7qeK8=	\N	f	19988328-33e7-4c3a-a404-77b32125ef72	Shahrukh			f	t	2021-09-27 11:10:21.985293+00			0	0	t	f	Shahrukh	\N
561	pbkdf2_sha256$216000$Io3pyQtkSg5h$LIfw2Csi+WJIZztW0+uulJwnZ5ROjfD7PusC0KlgPrA=	\N	f	d87cfa74-99fd-4e83-9bcc-27716142c0fd	Hero			f	t	2021-09-27 11:10:22.17614+00			0	0	t	f	Hero	\N
562	pbkdf2_sha256$216000$XbA0058pwDFt$e0zgbdWeVvc4zBco6lJqP/JRUxLJ+aiIJZ7bCcLjhjw=	\N	f	0fcbd88c-2917-484b-a847-623b64f96c80	Avenger			f	t	2021-09-27 11:10:35.667476+00			0	0	t	f	Avenger	\N
563	pbkdf2_sha256$216000$0e14Gqr36zeX$azVS1IkiS/wNkyn1tMnbgv2ctfdJBCF5YFpI+vgk3hA=	\N	f	259520fb-1eef-42c4-9dbe-e476b5c0047e	Roja			f	t	2021-09-27 11:10:35.858763+00			0	0	t	f	Roja	\N
559		\N	f	+66645171109				f	t	2021-09-27 11:08:58.912609+00	+66645171109		0	0	f	f	khanitta	KHAN8110
564	pbkdf2_sha256$216000$nKc9a39516of$eumaToAkCBjz8G7UUKIsUIYRmjeKlCZiTsPIHQ3XHsE=	\N	f	a425d509-2320-4bdf-a2b0-2dad3f3f746b	Shahrukh			f	t	2021-09-27 11:11:54.531782+00			0	0	t	f	Shahrukh	\N
565	pbkdf2_sha256$216000$htqt3EO4K4vA$X4id7rWvUZCqEPylAH9tkb7OH+EcTWzLhM9lWaKu2Fc=	\N	f	3de6293c-5569-49fc-b627-776f99885da9	Master			f	t	2021-09-27 11:11:54.732455+00			0	0	t	f	Master	\N
566	pbkdf2_sha256$216000$E9PDHtMulCWM$A5G7kK7zR+3jyc22Ru3fOudETvfYA7E4/2TfENr47rY=	\N	f	22f87e25-8c15-4371-a08a-8f1c5d30b854	Diamond			f	t	2021-09-27 11:12:35.25485+00			0	0	t	f	Diamond	\N
567	pbkdf2_sha256$216000$zAiZypNnbW8F$iAlW4COlrRBQ9RXQRwKnVtUf5LUdcEFkW26cgtoSjJI=	\N	f	99bc8919-6c73-4981-8120-e224344e8238	Akshay			f	t	2021-09-27 11:12:35.449996+00			0	0	t	f	Akshay	\N
568	pbkdf2_sha256$216000$9AHadUIJZmYX$Mx9+rnxjSvApoQMMRJPNDHLvQYIEu1sghtwXZY/QGTY=	\N	f	eb9aefd8-9489-47e3-aa69-a997296d4d02	Shivaraj			f	t	2021-09-27 11:14:09.776627+00			0	0	t	f	Shivaraj	\N
569	pbkdf2_sha256$216000$eqXkhdkT4gTs$z5y7D8fDpk8R7t4ris86nZa85ITIsdNLH+Am1AMnvQk=	\N	f	8e3cc1d6-f30c-4573-b9e5-0f25e60e5fe2	Gambler			f	t	2021-09-27 11:14:09.977244+00			0	0	t	f	Gambler	\N
2500		\N	f	+919098779409				f	t	2021-09-29 07:30:43.113953+00	+919098779409		0	0	f	f	\N	\N
570	pbkdf2_sha256$216000$B6mvZKf8suAn$DCjSgnbrwEFYfMUu6ntA5sb4g06afZxuGDe2pAot9uU=	\N	f	6c29d3d5-fd4e-4542-bbdf-b5a595223f29	Krishna			f	t	2021-09-27 11:15:17.9415+00			0	0	t	f	Krishna	\N
571	pbkdf2_sha256$216000$ptYgS1wQaJ9s$2XB9Zu/VzERpiJRjCW/1Ky5f2tn/tksbV3i9sYyAd8A=	\N	f	159156ea-bed5-4bd9-bd6e-d576883fcde3	Shahrukh			f	t	2021-09-27 11:15:21.631429+00			0	0	t	f	Shahrukh	\N
572	pbkdf2_sha256$216000$UP0S45qLcqnO$ey525C/KQ6aZi5lENyyRCkgGfT70sO333Sf3uTwg1CM=	\N	f	6bb720c1-196e-4558-82e5-ff48f32ad283	Shivaraj			f	t	2021-09-27 11:47:57.602361+00			0	0	t	f	Shivaraj	\N
573	pbkdf2_sha256$216000$dzT1VzBmtnUc$uLguVCfd853svIOdNtuertkoSd/H89Uwi7RSETlbW1k=	\N	f	47da7c94-6084-479b-a4f3-2a221c4ca49b	Sheetal			f	t	2021-09-27 11:47:58.338356+00			0	0	t	f	Sheetal	\N
574	pbkdf2_sha256$216000$ogsWRQvpoULW$vG/EEUg2zR3P9xsC34PB8qCJa1YuMXvalNwQPAN8i/M=	\N	f	cc10e56c-2360-42aa-8208-cd6406880f94	Akshay			f	t	2021-09-27 12:05:11.542793+00			0	0	t	f	Akshay	\N
575	pbkdf2_sha256$216000$tyE7FKFD4Gnp$mFUfiDxbQ7fYL4q1akLVTpgi11MtI4kZxYtiKPanUjM=	\N	f	e94d9c4e-acef-4ff9-8d26-2947d5118896	Rani			f	t	2021-09-27 12:05:11.80812+00			0	0	t	f	Rani	\N
576	pbkdf2_sha256$216000$g8StK7jSUFWB$V9NpN9PnCGuhyC+9ySOW5wrotg1PDTIH3Pp0d04d1NQ=	\N	f	159a8d12-e80f-4319-89ba-9cce89935f06	Roja			f	t	2021-09-27 12:10:06.611309+00			0	0	t	f	Roja	\N
577	pbkdf2_sha256$216000$4SZyvh4a9ijY$ooR8IRDchAk7s4uD6DNW6+Gc0Z3OdqQBMdM3O6eQ/Go=	\N	f	3f6de294-2ec0-45ab-9aaf-98919fddce19	John			f	t	2021-09-27 12:10:06.991461+00			0	0	t	f	John	\N
578	pbkdf2_sha256$216000$foRPQWnBcG9m$wm34mQy7sROB4jZiY5UNsALRnbzMFPJ5NFeqhq/MNyw=	\N	f	61774838-504a-4a6f-b6f1-aa4712bb81c2	Major			f	t	2021-09-27 12:10:33.016445+00			0	0	t	f	Major	\N
579	pbkdf2_sha256$216000$AxAww9YFCaPH$XmmULXX6rd9M9jD/3KI05LoXf3EItyIBS+ToAM1GW3Y=	\N	f	2e5b0fb8-1890-4791-988e-ff456396507f	Sheetal			f	t	2021-09-27 12:10:33.53186+00			0	0	t	f	Sheetal	\N
580	pbkdf2_sha256$216000$FMO0yPFNvm0U$rE7iBiqB6ZbKsmaAoMyQK/LNu13M+M1xDppK9ybeI3Y=	\N	f	6c8b31ed-5c0d-4fcb-9791-340653640364	Gambler			f	t	2021-09-27 12:10:41.53668+00			0	0	t	f	Gambler	\N
581	pbkdf2_sha256$216000$4utweA6r2Jhj$VYmam/0NkgjHL1+rJ/FN3tGKqwibp/Z4MBrGcd6iQpg=	\N	f	4f25eb50-5833-4c92-b1f2-be110ca37725	Winner			f	t	2021-09-27 12:10:41.806732+00			0	0	t	f	Winner	\N
582	pbkdf2_sha256$216000$rFRTGENHeZkD$0ECDFHqhv7nocd9fqPR5eJP6VEUd7N76/xAr2P5KP1E=	\N	f	852d490b-f746-470e-abd9-3f744512b758	Roja			f	t	2021-09-27 12:10:47.477678+00			0	0	t	f	Roja	\N
583	pbkdf2_sha256$216000$v01TlgN2Ecw8$2Ow/0oukeie8aqZUQwGyKuq1LgKbCZIHH4BeQv2gvT4=	\N	f	11248588-23af-41a0-89cb-30ccadcc3de1	Loser			f	t	2021-09-27 12:10:47.747474+00			0	0	t	f	Loser	\N
584	pbkdf2_sha256$216000$8gmmAl4H5dHV$zKzvziODl8SiK9iTBGjqof7pLHQQScMqEXgI4K1K8VI=	\N	f	3fc6d129-4743-4e0e-9da7-a2cf0c1bdb15	Loser			f	t	2021-09-27 12:10:53.401542+00			0	0	t	f	Loser	\N
585	pbkdf2_sha256$216000$l3pEWzyfRt0m$X01+qvQNpma7jzfhYIrAsBWX9rDgDtc0uZU9N0vBYdk=	\N	f	b0ab0223-ee49-4a2c-8f56-756d4d64889f	Winner			f	t	2021-09-27 12:10:53.66199+00			0	0	t	f	Winner	\N
586	pbkdf2_sha256$216000$Ms1jNRTZlorT$ZUzjvKJ9+b5KoWbEmlQ9uv50sIsxLBgoWduKkxLoQ58=	\N	f	0976d8d6-00d6-4a20-9cc1-469d1b7ac793	Vijay			f	t	2021-09-27 12:10:59.307502+00			0	0	t	f	Vijay	\N
587	pbkdf2_sha256$216000$94yl3TuAmq7a$fmI1F4HLH0XVLqVctPItlMCs26o05eHH5pZ9Rfxiazw=	\N	f	0230acb3-9040-4ad4-9b30-8525ea6fd4a9	Raju			f	t	2021-09-27 12:10:59.577624+00			0	0	t	f	Raju	\N
588	pbkdf2_sha256$216000$6xkvbA30ODeZ$aCp7gTH8Y+gFLbkBeUHZPORYhD/euTymFylEPH0+mcQ=	\N	f	8c52affa-8f09-4b16-bd1f-c11d116b0049	Winner			f	t	2021-09-27 12:11:05.246868+00			0	0	t	f	Winner	\N
589	pbkdf2_sha256$216000$LAO2pdErGqBg$i3YCALmdpSNrJBdYZHexOqKytjp/V79ZBTvID2OoNQM=	\N	f	eb453851-ee25-4e3d-ae93-4a6667a9869e	Krishna			f	t	2021-09-27 12:11:05.51666+00			0	0	t	f	Krishna	\N
590	pbkdf2_sha256$216000$mv8YKSEfFbeW$UPcT8KqWkfryXpj2ZXjjrsdXUEUmZcRbywDIqjuOq+E=	\N	f	ed927d02-6ee5-4758-bba6-4e19ff7ac9d9	Roja			f	t	2021-09-27 12:11:11.753746+00			0	0	t	f	Roja	\N
591	pbkdf2_sha256$216000$dVzE8yrhXn97$QaukTeWjm1c7hP4mIsUZ6gqN87i/CTvAvsQ1PVaTRgE=	\N	f	8b7e1397-c3eb-453d-bd44-4353a1e4580f	John			f	t	2021-09-27 12:11:12.013841+00			0	0	t	f	John	\N
592	pbkdf2_sha256$216000$4Bl8ocBKs4B2$4TL8G5mgWvbY/nS9J+YeojVD7q+y/pzLZv8QPahrYAc=	\N	f	a4869802-fcde-4d2d-8d18-d92b4599b4b7	John			f	t	2021-09-27 12:11:18.430981+00			0	0	t	f	John	\N
593	pbkdf2_sha256$216000$jYeB0zvs11CE$DxYarcjVAI4DmgXhlrAIYr7IJqYMlqJN/V441lOPQnA=	\N	f	4d6331ae-c3bf-4802-9c60-699e0b25d2f9	Avenger			f	t	2021-09-27 12:11:18.678846+00			0	0	t	f	Avenger	\N
594	pbkdf2_sha256$216000$TFmvrPb4nIvb$A3Nk2kp1p6BfDg+mSjnt5hAPabsGwrgxutcTIwUUB/A=	\N	f	0e3ac543-47c2-4f21-8f0a-f76e3a55faa5	Raju			f	t	2021-09-27 12:11:24.53788+00			0	0	t	f	Raju	\N
595	pbkdf2_sha256$216000$lJf7Is5FIWNT$V5FR6Nje87C66akKk1pfoOgDteLrnQoCHYkM/HnDKuo=	\N	f	61e60e58-e15e-47ab-ad14-36320b688537	Master			f	t	2021-09-27 12:11:24.797724+00			0	0	t	f	Master	\N
596	pbkdf2_sha256$216000$GLdr065f0y7Y$LCZ1bzkjuwsNXHubVoNsSx9L+cscv4Pj9v+HovOX+jc=	\N	f	1262da7a-c4ef-480b-beaa-cd2c69376d9d	Hero			f	t	2021-09-27 12:11:30.986819+00			0	0	t	f	Hero	\N
597	pbkdf2_sha256$216000$RyvIGrMwJc1Q$Be6y1k4W3z0J+FlLs+gCiATubJD7iWX1xSU28y9x5Wk=	\N	f	abd539e4-488a-42fc-8652-85b0b479ce77	Sheetal			f	t	2021-09-27 12:11:31.26234+00			0	0	t	f	Sheetal	\N
598	pbkdf2_sha256$216000$iz0JayzqemDj$/G6ixMCZuFfJ70kE9cP3EWUU2YRScLY1uDj3pf9kmWM=	\N	f	8b1d8364-c87d-4776-86a0-7e201af5f925	Shivaraj			f	t	2021-09-27 12:11:37.100779+00			0	0	t	f	Shivaraj	\N
599	pbkdf2_sha256$216000$UTB5RzDbrBDk$1Q8PndVFGVcKaHgBMFUZtVAoEyUUe0zL+2P4HzVFWdo=	\N	f	49b27159-5f65-496f-bb8f-a6aaac081173	Sheetal			f	t	2021-09-27 12:11:37.426974+00			0	0	t	f	Sheetal	\N
600	pbkdf2_sha256$216000$aSsLaUYcwHgt$qyQs71aNgry+CvZ94l2SR/1PCuV0DwW89DLdcYMTs9o=	\N	f	92eaaaff-b53e-4889-b914-42630eaef1f9	Raju			f	t	2021-09-27 12:11:43.553762+00			0	0	t	f	Raju	\N
601	pbkdf2_sha256$216000$RS6TnBeaHuAS$is/TWPcaVSk8NVlgO73k9Hb/Hs8aDQ64bbKJ1yBhlsU=	\N	f	8619f6b8-2cfc-4407-a9fe-ad89ec00a88e	John			f	t	2021-09-27 12:11:43.798871+00			0	0	t	f	John	\N
602	pbkdf2_sha256$216000$C2aZloU6I13u$PmtOqVZxJa8kqkjgAOytzsoUIowKwHXq+CmJLWaN8Cg=	\N	f	15914438-add8-4a59-a1bf-3db9f1a96fde	Raju			f	t	2021-09-27 12:11:49.716283+00			0	0	t	f	Raju	\N
603	pbkdf2_sha256$216000$BWTpnjqDCjpQ$bOzmkcUVvEQFLv7Ib9CNN5FtZ0uKYkbIWvHW0LDCbog=	\N	f	d5220d53-b063-4701-bbe1-e5c0014ba53b	Mara			f	t	2021-09-27 12:11:50.074199+00			0	0	t	f	Mara	\N
604	pbkdf2_sha256$216000$78BhnIXjrJaz$nkSwvymQxPhjA09h48wX7U1jxw4uUlu76cOFdW4HdLo=	\N	f	a3f226a6-0e1e-41e6-8c12-6335bc0e5fa9	Roja			f	t	2021-09-27 12:11:56.136488+00			0	0	t	f	Roja	\N
605	pbkdf2_sha256$216000$9HfOvAKQRoZb$1fNV51Wv5o6Np75BIpo3bQX4EbiHx1e481FQbRVtSh0=	\N	f	595236fe-edbc-4bfc-a640-d29c4d1d4c03	Hero			f	t	2021-09-27 12:11:56.422643+00			0	0	t	f	Hero	\N
606	pbkdf2_sha256$216000$1yVjdktNQ08S$e0evNSA5K/PgWweddXeSwET5rtdRz3f+pGOXNJRyZ/4=	\N	f	62fbf912-e094-4bf3-8fc3-d01219a418b0	Vijay			f	t	2021-09-27 12:12:02.617651+00			0	0	t	f	Vijay	\N
607	pbkdf2_sha256$216000$7QsjnnIc8UBm$fNZhn+9TfafN37OVkmRRvYM5CENWzrTRzkenDCTLbBY=	\N	f	628f2f7f-2898-4e0a-840e-8aa0a7fef9f6	Ruby			f	t	2021-09-27 12:12:02.888628+00			0	0	t	f	Ruby	\N
608	pbkdf2_sha256$216000$O0DF6lPcpK3V$Dqwvd4iJryBwxa6V1TSkpdnH4rACrzSkz5U8R0q1EcI=	\N	f	e9294d6d-1448-4d8a-8394-8b1c282026d0	Poker Raja			f	t	2021-09-27 12:12:08.669832+00			0	0	t	f	Poker Raja	\N
609	pbkdf2_sha256$216000$JG0Y74KrhPIN$jXhsOGaqcXodCqMgeyVuYxql049zuMT9itDrNnbAf2s=	\N	f	324fa77b-534c-4d59-a547-ec619400ee0e	Gambler			f	t	2021-09-27 12:12:08.937655+00			0	0	t	f	Gambler	\N
610	pbkdf2_sha256$216000$RyIiGYxueHNe$Hk9bAKMvVKGXhxbz6UHP6NATWLJ+mn7nzf0yu/pYy3Y=	\N	f	d0e3cd26-90ec-446c-9499-9b03e6beefb3	Rani			f	t	2021-09-27 12:12:15.254649+00			0	0	t	f	Rani	\N
611	pbkdf2_sha256$216000$k3KM2I53eqBB$HG2K9bxq/7MagWDi9UoPhwvYKgXUPLUlH1kcSDEAyG8=	\N	f	475514e1-2c6b-4194-a263-b9bd5ec49787	Diamond			f	t	2021-09-27 12:12:15.50645+00			0	0	t	f	Diamond	\N
612	pbkdf2_sha256$216000$0KzbsRUkAzvX$jtWMjb2hn5sPtgrngiO9FdGXgl1sXoO2ejV91o3LOsA=	\N	f	4178f2bf-af46-4a9c-b0c6-e151eec71bbe	Sheetal			f	t	2021-09-27 12:12:21.357622+00			0	0	t	f	Sheetal	\N
613	pbkdf2_sha256$216000$YCRhfStOXHnI$rMz2D88ApYdzhUU5Tmus6mNXmMTnnL9f2Pces2VBXk4=	\N	f	33854ef6-39b9-45b8-b296-91d0fc0c3522	Winner			f	t	2021-09-27 12:12:21.62671+00			0	0	t	f	Winner	\N
614	pbkdf2_sha256$216000$JZag9zsg28JH$6LmCrhCWFCvBeGsrSUjsm9rJv+v/BPZvMIaC6hkeqdw=	\N	f	ebb95785-ac8f-4fa3-9134-e6cc885af62d	Hero			f	t	2021-09-27 12:12:27.877904+00			0	0	t	f	Hero	\N
615	pbkdf2_sha256$216000$1u9qP2FzzsB9$FCO/xak7o0gVvFqnj+UZ7JTK7gKEo02Yg6js3YoNFEI=	\N	f	a0347268-03be-4ea8-a962-7cfbec2a2c12	Raju			f	t	2021-09-27 12:12:28.137517+00			0	0	t	f	Raju	\N
616	pbkdf2_sha256$216000$fS7rMXHBCJOB$9t3YNE0kCxWDovC/aqJNd4tdmKURvkJIwoANKWjU3r4=	\N	f	d321d019-4723-4a2e-8088-4eecc8ff25c0	Sheetal			f	t	2021-09-27 12:12:33.910584+00			0	0	t	f	Sheetal	\N
617	pbkdf2_sha256$216000$idSdUzOTp8kK$0Yy/DiBbTlZ8pcfChSCCVe8v1tT/I2/8+z6K06Cvg9M=	\N	f	1c34629f-e672-4868-8815-0972946e5282	Diamond			f	t	2021-09-27 12:12:34.158078+00			0	0	t	f	Diamond	\N
618	pbkdf2_sha256$216000$CumxNbmqAZAG$jliOr5BP00iXfyyng4/Xaz55VKGUMKZz1eaO8cqIqJ4=	\N	f	213fd4cb-4732-4de2-9fd7-fae7054038e1	Roja			f	t	2021-09-27 12:12:40.534302+00			0	0	t	f	Roja	\N
619	pbkdf2_sha256$216000$iRcVDjZcKecK$S/RQzoEF8jo3FNBZNkUmaeS2YGSBpYOw5+14MotPWKs=	\N	f	15b1b848-da90-412e-8f1b-acfbaccf88ca	Poker Raja			f	t	2021-09-27 12:12:40.792043+00			0	0	t	f	Poker Raja	\N
620	pbkdf2_sha256$216000$SBRl76vMO4fp$ICyZ3I6wOk5/3hZvgdnzE5nHVMPV6Szkwgv75jvuCkM=	\N	f	0895f046-04f9-4f6e-b361-6ff54ea267d2	Roja			f	t	2021-09-27 12:12:46.47971+00			0	0	t	f	Roja	\N
621	pbkdf2_sha256$216000$jEnozBraUTfa$GyeVD6gDaOL90DoB8UOMO2oyOKGY6nzUBDk9Gk26O58=	\N	f	ba754b5f-1e3b-46b9-9e6f-0e64398a139d	Roja			f	t	2021-09-27 12:12:46.73764+00			0	0	t	f	Roja	\N
622	pbkdf2_sha256$216000$edcpsouhyneJ$rGmWkFa/pl836xE+qC1XBVbYF9jUnPaC96fcTWNXvpw=	\N	f	0ae971e5-1f00-40dc-af20-b21d1db695b1	Shivaraj			f	t	2021-09-27 12:12:53.006862+00			0	0	t	f	Shivaraj	\N
623	pbkdf2_sha256$216000$YIvMLUgAB3B6$YAPcZSTeVSgyGp/VDY6umG0S0v0RR118rDDi5FsOra0=	\N	f	2755c34b-86d6-4204-89b2-6e2235c83d94	Hero			f	t	2021-09-27 12:12:53.28541+00			0	0	t	f	Hero	\N
624	pbkdf2_sha256$216000$yebLFgJvUkyY$XiyKEBfpvyERSuTqxmorvRk0KAK/qmQ6SQ/a9oyWBps=	\N	f	20b62d52-9f02-4aed-b181-497247ed0e4d	Number 1			f	t	2021-09-27 12:12:59.078604+00			0	0	t	f	Number 1	\N
625	pbkdf2_sha256$216000$4A5i4ICoeuI1$W8PnjQyhVUzd7yg3RvwN88YqUp2phsVC7iVPzs1As7s=	\N	f	8b01716a-40a3-4a36-ae4b-e1046d548e20	Diamond			f	t	2021-09-27 12:12:59.320564+00			0	0	t	f	Diamond	\N
626	pbkdf2_sha256$216000$XaUWB54UfcCc$qAxwdtdR+bNgXzecMS0FBPhzQnyT3cCdCY6IRbhc5os=	\N	f	87801dd7-1e6d-4376-b0c1-a22f197a4c9a	Poker Raja			f	t	2021-09-27 12:13:05.478623+00			0	0	t	f	Poker Raja	\N
627	pbkdf2_sha256$216000$pkdgBrw4Og4N$LmQn55UcUE7AJSwVo2bg1Hx+wFHUQEbMpvKumyUjmDM=	\N	f	4e2f4a23-55cf-4061-8997-c45df585515d	Avenger			f	t	2021-09-27 12:13:05.754798+00			0	0	t	f	Avenger	\N
628	pbkdf2_sha256$216000$jPiYPUAiv6d0$3++kZCS9SNEl30YplInVh1I2HwwoogWLuAoMfkaFc5s=	\N	f	b56ff1c9-88ab-4759-8462-2eaadcbd5477	Roja			f	t	2021-09-27 12:13:11.734573+00			0	0	t	f	Roja	\N
629	pbkdf2_sha256$216000$4NKGiO8oLmv1$igHU/KB0Civ5z3iF11eKkrTuyDe0GEKLsO8pEsjrQOI=	\N	f	ba8e015b-8ab3-4efb-a480-23917778f7b5	Gambler			f	t	2021-09-27 12:13:11.99652+00			0	0	t	f	Gambler	\N
630	pbkdf2_sha256$216000$zCdnXSEaw3EZ$RzFBrqzw1x7GWxYkoKwpinf/Tk8nyuL2lPjwsyURPdc=	\N	f	e681e457-a97c-4926-a56a-74129f6d6717	Gambler			f	t	2021-09-27 12:13:17.940821+00			0	0	t	f	Gambler	\N
631	pbkdf2_sha256$216000$nXF6j7Hdmd7j$jEaGfnROS3xQjjSRs2XBIY2UNOPyp4kSFSBk23YuGzY=	\N	f	0969c99f-ab25-49f4-a688-5e83913b7b9a	Rani			f	t	2021-09-27 12:13:18.199485+00			0	0	t	f	Rani	\N
632	pbkdf2_sha256$216000$G1gefN1bdhBM$1hymCbiF8KZOGdzWIAL3XEnv9rngQNSUJbEr0NxEevc=	\N	f	c4cee90d-d1a3-4d56-be44-717135f4e283	Roja			f	t	2021-09-27 12:13:24.129412+00			0	0	t	f	Roja	\N
633	pbkdf2_sha256$216000$dXR9V4zOVmNH$6rM9X9mrznoBE56fomkI8//d+6rjF6w488My8WOAmT0=	\N	f	0909457c-41e8-452b-a335-eb609ec0ae5b	Ruby			f	t	2021-09-27 12:13:24.375695+00			0	0	t	f	Ruby	\N
634	pbkdf2_sha256$216000$3w5leLrQxoiD$g52nHCB7bYd2u141bNdqAE9Ed6WqAWN9Qekxpi8IiHE=	\N	f	8c6849e1-69a6-44d8-87c2-5a03f8eb504b	Gambler			f	t	2021-09-27 12:13:30.39452+00			0	0	t	f	Gambler	\N
635	pbkdf2_sha256$216000$SI7bAZyomN88$MYghJ+0Sy//l7wDUVdENxc9O8jjtHpl7d2t3yAo0mro=	\N	f	cdf7dbd8-9f12-48fa-914b-439c6b19aecd	Master			f	t	2021-09-27 12:13:30.654305+00			0	0	t	f	Master	\N
636	pbkdf2_sha256$216000$Gj4xdmaiNhXo$rJ3ePz0F/S0fV+Nyld0bsGw0B9olQGnZsoNGkVYEiaA=	\N	f	e78fc513-f044-4abf-9a0d-6641f928109b	Major			f	t	2021-09-27 12:13:36.674731+00			0	0	t	f	Major	\N
637	pbkdf2_sha256$216000$mnXwIP9TYjxq$+C+zXd+qC4xLjXHHOtnh6OPkgd1S30UdlolN8ovK5TA=	\N	f	5c7dbbd8-f063-43b0-b594-d5ef6c9d0d4b	Akshay			f	t	2021-09-27 12:13:36.925559+00			0	0	t	f	Akshay	\N
638	pbkdf2_sha256$216000$zX9fBs031mX8$09TNV5VX2PJ/yZso7OFJCJl2DZzJOV0wFohrBNwtYmE=	\N	f	622a42a1-9177-4d6e-9f1e-77a9e4af23d2	Shahrukh			f	t	2021-09-27 12:13:42.988128+00			0	0	t	f	Shahrukh	\N
639	pbkdf2_sha256$216000$BTwnE9NLGc2y$Y1hn3KZfHlSX3mtX++2fV86qOQpC8q1+N0bzTje/XD0=	\N	f	13156240-7639-472a-8485-eca6d8966e67	Major			f	t	2021-09-27 12:13:43.230396+00			0	0	t	f	Major	\N
640	pbkdf2_sha256$216000$KANExpAzckAJ$6cPoByBCIrnCzcF8eso7/9KImmXoolvjnM11XBVP8os=	\N	f	c5b7917f-ad43-42cf-9153-6af608a8250b	Poker Raja			f	t	2021-09-27 12:13:49.349844+00			0	0	t	f	Poker Raja	\N
641	pbkdf2_sha256$216000$90k0y4OZrxRk$bL6YhOnB3LkcNIY6Yi0k/8zek7YYU7jvdbEQg+F+7x8=	\N	f	5b67b04d-df6f-4f9d-ab95-b1d34be9778d	Number 1			f	t	2021-09-27 12:13:49.58762+00			0	0	t	f	Number 1	\N
642	pbkdf2_sha256$216000$Fn6Zi2Kv7E0G$xQyKGk7Pm63zgfFiV+qqRQGLquzWAWI8LNZhp4fMH+Q=	\N	f	0f3824e9-7970-4106-80d2-f8d9125f0db5	Sheetal			f	t	2021-09-27 12:13:55.410242+00			0	0	t	f	Sheetal	\N
643	pbkdf2_sha256$216000$2148gUgSPxZG$G7r2B2LJdze7XHJrlKMZiFIO/b1B/nVV96RFSAgIpYI=	\N	f	6f8c4a7c-0016-4074-8769-444403c0e856	Sheetal			f	t	2021-09-27 12:13:55.680385+00			0	0	t	f	Sheetal	\N
644	pbkdf2_sha256$216000$j1ebUjfZO1kr$hMYXUM1kV7LHDNXvtG3AiaNecVermdWwTj0a3M8iG0M=	\N	f	1cb850c6-21a1-4ce8-bbb8-b38f22748130	Vijay			f	t	2021-09-27 12:14:01.905962+00			0	0	t	f	Vijay	\N
645	pbkdf2_sha256$216000$V6APi7K2z2MF$UhtvdqYzTw9RWjydbm1jg3LnNCo49POab3b5ObRIkZ0=	\N	f	81db5d9a-7fba-4a8a-b320-cee27a74334d	Akshay			f	t	2021-09-27 12:14:02.163589+00			0	0	t	f	Akshay	\N
646	pbkdf2_sha256$216000$9FzPkxrVvSfj$yeZH/U9192DwnqmtuDZAnGfaDuhCMMI0U54vIh4/xLE=	\N	f	270ccc98-961a-4f47-a199-7fde7ec01fda	Shahrukh			f	t	2021-09-27 12:14:08.148054+00			0	0	t	f	Shahrukh	\N
647	pbkdf2_sha256$216000$Cj5nJnJ4tmMg$C/S63rqktPHS+dAnlhLWLRlRi4xpsZPMcFp97xtwzTw=	\N	f	06f61314-5ada-4c43-8ca2-200cfd3d3814	Rani			f	t	2021-09-27 12:14:08.389954+00			0	0	t	f	Rani	\N
648	pbkdf2_sha256$216000$8KyE7tLu714N$vaXZug5h1WCcD7c+k7cjzcSA1sSgkz09NJ9aOh6GqU8=	\N	f	d885e99d-6629-4d63-b50f-51111f0683d0	Vijay			f	t	2021-09-27 12:14:14.516577+00			0	0	t	f	Vijay	\N
649	pbkdf2_sha256$216000$Y98Nt5M6OSZR$8QELg4YhtSr5yKT1JRlZ0H4Fq8OB2p5IKfRzZRAAp7U=	\N	f	f6f926b1-9444-4bde-acf2-0b26f00084ba	Poker Raja			f	t	2021-09-27 12:14:14.750559+00			0	0	t	f	Poker Raja	\N
650	pbkdf2_sha256$216000$Dl5GV0yZ8Za0$+s9qQIDVEbivHoMSBsl97FLEIwIed4bFUQ1807AOUwg=	\N	f	07527fc6-f2f5-4fd4-a987-eeac0b4758fc	Gambler			f	t	2021-09-27 12:14:20.549875+00			0	0	t	f	Gambler	\N
651	pbkdf2_sha256$216000$zXGdJy9b1JW4$yj2lgs3VFFh6EQlX9nIumt3bC6l9TRHguUmHre+KGRc=	\N	f	01a55c0e-f92e-4140-9e5d-bb71b61e9b2e	Winner			f	t	2021-09-27 12:14:20.789684+00			0	0	t	f	Winner	\N
652	pbkdf2_sha256$216000$HTQiqSLzBM7T$m2WK9mHWyTfBsWwOLxwPnHDFK9gLNOt650WAYtHMnPE=	\N	f	667d23fc-5d71-4b2d-9e70-978be3aa27db	Mara			f	t	2021-09-27 12:14:26.994455+00			0	0	t	f	Mara	\N
653	pbkdf2_sha256$216000$pJrHwzS3Lock$rwZ9RiJJL5GeH1htFfgpXr0xz2zKKQZWctn5S1t7QDE=	\N	f	77b1fbf3-cd31-4d14-b173-12c1b77af2e2	Rani			f	t	2021-09-27 12:14:27.244647+00			0	0	t	f	Rani	\N
654	pbkdf2_sha256$216000$mrlfeKqzOwmt$j+dhguAl0Ou9tlh3XUO+ynvAtEJz863OEFFvnI/A6g0=	\N	f	01834cb8-7e1d-498b-91d1-2d11912468ec	Vijay			f	t	2021-09-27 12:14:33.121454+00			0	0	t	f	Vijay	\N
655	pbkdf2_sha256$216000$jITY0df3t0vB$315P5L6n9xtharEGolapDqo6djtWes2aV0urs5aXJUk=	\N	f	711bc982-e36f-4616-9190-0d8fcfa863df	Number 1			f	t	2021-09-27 12:14:33.404668+00			0	0	t	f	Number 1	\N
656	pbkdf2_sha256$216000$jA62pfkt8d4x$3UmMxTQ4Hc3LrHmF3gpZHsNNfLu5h7nXePFoMjRC2Zo=	\N	f	bc6405f2-742a-4ae7-b013-37a9eda1ae62	Gambler			f	t	2021-09-27 12:14:39.506433+00			0	0	t	f	Gambler	\N
657	pbkdf2_sha256$216000$LXYCCmviOsIK$ekTbTWpEB+u94saSryNeK5VRlhD9CdyNZ9e+/XkNg94=	\N	f	9386fa33-293a-47c5-ab71-96625f34e103	Major			f	t	2021-09-27 12:14:39.755977+00			0	0	t	f	Major	\N
658	pbkdf2_sha256$216000$devNbVm7ZY65$E5viuVs76UhF0G+ZtHF2I7vaS0QAOlUmZqx2gewWzNY=	\N	f	d8f0be08-4479-4517-8880-f01d4e7d612a	Rani			f	t	2021-09-27 12:14:45.695289+00			0	0	t	f	Rani	\N
659	pbkdf2_sha256$216000$3LYEyTq38o8B$lCWnaJCkUyt98UtqbI+FmbrNzhvewqOzhXvSaTVnd9A=	\N	f	b378308c-1405-440b-8872-c8f6b693d3a6	Akshay			f	t	2021-09-27 12:14:45.956194+00			0	0	t	f	Akshay	\N
660	pbkdf2_sha256$216000$xW6q5lNuNlzl$NQ/EOEw4Ors6aJ5MomPZtCeWJFFZRUUn+UDCJ+b9SWs=	\N	f	7e7c6fa6-8d58-4dcd-87c2-1dba1f9e7206	Mara			f	t	2021-09-27 12:14:51.946192+00			0	0	t	f	Mara	\N
661	pbkdf2_sha256$216000$Ww9MQKWmVcUv$bZOw5V/YF3VQHuQmLykmpbQneG6Tm3jFS1dQ9E64J00=	\N	f	eb0adb0b-cdd3-46d9-a3f4-641ccec82938	Shahrukh			f	t	2021-09-27 12:14:52.204339+00			0	0	t	f	Shahrukh	\N
662	pbkdf2_sha256$216000$Mh2g8YnkRwUo$HeYppmRj4oJzeIoa6mmH8l/h424Rr4CY80jfRdWjv5k=	\N	f	55cdbd5e-0948-4f8f-9854-bbd6c021cd0c	Major			f	t	2021-09-27 12:14:58.217699+00			0	0	t	f	Major	\N
663	pbkdf2_sha256$216000$Fus42mT54P3w$t5gSliDOCy1gKC5Kx3xFOvWEgU15cgh90z1vbPDrIWI=	\N	f	992aa94e-74dc-4f11-aa5c-aeac36731385	Mara			f	t	2021-09-27 12:14:58.457398+00			0	0	t	f	Mara	\N
664	pbkdf2_sha256$216000$EPXV75NZc2rZ$LtyvzVJsSJmJuyN2RIgYStYhV5sgaVkP+1k3J+/cdjE=	\N	f	eb62aee0-4ab3-4132-aea0-98b9798a261c	Winner			f	t	2021-09-27 12:15:04.445911+00			0	0	t	f	Winner	\N
665	pbkdf2_sha256$216000$aQUzjLne41nq$JhmXuJI3sogeT2igXB2MHj97vLBEhvK0wwk3ISJJn3M=	\N	f	eba295b4-ad38-4c40-8246-69c7aa208c8e	Poker Raja			f	t	2021-09-27 12:15:04.713688+00			0	0	t	f	Poker Raja	\N
666	pbkdf2_sha256$216000$P4pkDVONVWqt$rReww+tTP5p6KiZjlU/SCFloU8PhbKuTo+aTHyUKi9Q=	\N	f	ce6c2cb5-305c-4fef-ac85-34b71e12d1c7	Ruby			f	t	2021-09-27 12:15:10.874338+00			0	0	t	f	Ruby	\N
667	pbkdf2_sha256$216000$n4RyOtpRxZJK$MlV+8tQU+msOhXx4qByi0PjALp1r/SoU7Ol7vfIoWtI=	\N	f	d104a391-aaff-4589-98e6-71426c958559	Mara			f	t	2021-09-27 12:15:11.124277+00			0	0	t	f	Mara	\N
668	pbkdf2_sha256$216000$OI0JhgPUwNHq$9wF6704qCQE2bq4dJMQz3MHm57ptCkCfrKjW5Cf2AjM=	\N	f	22eedfe8-fc4e-4887-b633-14d10e0d2dbf	Shivaraj			f	t	2021-09-27 12:15:16.993415+00			0	0	t	f	Shivaraj	\N
669	pbkdf2_sha256$216000$RE7EIhwwODWq$w7HQDNEPX2vnIUBQMSK38bkgw8Em/70MSMx1zschfNk=	\N	f	0334358d-d1a9-48c5-9be4-3f5a58ba868b	Sheetal			f	t	2021-09-27 12:15:17.255374+00			0	0	t	f	Sheetal	\N
670	pbkdf2_sha256$216000$EzuptoE89K9l$CxXwQLF31VCiec30ceey+9OTUn9Qja1yCpQnuTyN2Zw=	\N	f	56b19eda-da13-4052-9c68-214c55942adf	Krishna			f	t	2021-09-27 12:15:23.515549+00			0	0	t	f	Krishna	\N
671	pbkdf2_sha256$216000$7M6H559Khft0$39riiNRcJ6CRC4oI2rOQcgHP9pqFwy6WWQh+QutptLY=	\N	f	b6533c58-6ddd-4620-8e51-15b53505d027	Ruby			f	t	2021-09-27 12:15:23.765392+00			0	0	t	f	Ruby	\N
672	pbkdf2_sha256$216000$RuoWqSRGupt9$09xvcSQ7Rh3oY7KTWoKQLlPD/UX+lmZV+LD0D7r12qw=	\N	f	a9e1c7a4-af54-48d1-85af-8aed7a7b35c9	Poker Raja			f	t	2021-09-27 12:15:29.565342+00			0	0	t	f	Poker Raja	\N
673	pbkdf2_sha256$216000$6kqK9Q1hxJ6V$66ACoHz/Or9kVAi7zEUCpTA4u+5UhpwQ589R9+22Qwk=	\N	f	17c7b37f-3e15-4862-a4e7-522b272c0e77	Poker Raja			f	t	2021-09-27 12:15:29.825663+00			0	0	t	f	Poker Raja	\N
674	pbkdf2_sha256$216000$80a2uWcg3F60$QejlaGZUHVztDSm4zlFTUw94iHiFqfLxRGpucktlmnc=	\N	f	15df8e67-a309-4dbc-bbb4-2a5ef0b4db14	Raju			f	t	2021-09-27 12:15:36.036254+00			0	0	t	f	Raju	\N
675	pbkdf2_sha256$216000$8bHWyskOELDf$XspzHby/JJ+ieosySsXtM5Zu0dXl3Nrjw+2tsh1kcsI=	\N	f	61232bd4-7477-475e-b040-c4648a6f8316	Vijay			f	t	2021-09-27 12:15:36.286443+00			0	0	t	f	Vijay	\N
676	pbkdf2_sha256$216000$lgErxWFwO7OM$Lnv5KBXljh2NW8eVI2nnzsCBnkVLltUJYfPRBU6IoTQ=	\N	f	d0b0bfab-1652-4e2d-ac6d-ef4544f320ba	Roja			f	t	2021-09-27 12:15:42.027161+00			0	0	t	f	Roja	\N
677	pbkdf2_sha256$216000$ZbCIlGwEIg1a$mekf4l6Hr67p7jK3Mq7wiXc/eF19byyt3hcR/GtCrxw=	\N	f	942d6df9-3f62-4c89-939e-eb579033fb19	Sheetal			f	t	2021-09-27 12:15:42.294112+00			0	0	t	f	Sheetal	\N
678	pbkdf2_sha256$216000$VauvZzhQ0Xsu$ds2GSCtp41vQT8L8gr2rLbpfmkWXEsJPZZVawTmTzbY=	\N	f	200df97b-9cee-49fb-8e46-6005aa119243	Mara			f	t	2021-09-27 12:15:48.490607+00			0	0	t	f	Mara	\N
679	pbkdf2_sha256$216000$rZkhFmtCeiJF$VpqHQGiIiEWS5NBVOwypP0kzWIV6gfk5iPjn0uxKwQo=	\N	f	c7432d97-7022-4b45-b429-788e46b183c2	Rani			f	t	2021-09-27 12:15:48.750262+00			0	0	t	f	Rani	\N
680	pbkdf2_sha256$216000$4HlF9k8Nz6KI$6khU+NWFhnC8+uXirZO7KRBZo6EMnbnVYReYqFOL70I=	\N	f	e6b86fc8-d264-4a55-b80b-4ccc18882d83	Avenger			f	t	2021-09-27 12:15:54.500434+00			0	0	t	f	Avenger	\N
681	pbkdf2_sha256$216000$YqNBEYOXmxJv$EzKZqfGKKn2A1ZIMQ6ZMeF3Y0ugSRGECtMVqv4/yLuQ=	\N	f	d6af30d3-a342-4dce-b3a5-2453db822aee	Krishna			f	t	2021-09-27 12:15:54.748697+00			0	0	t	f	Krishna	\N
682	pbkdf2_sha256$216000$fPUGeJ0qlCiI$0zILg5zV1ucEXAHiqA2bmU61nHZaCNVjSkMq8Y7rBiI=	\N	f	c35b670f-2e25-4bfa-a3c2-c5f4a2d580d4	Krishna			f	t	2021-09-27 12:16:00.926224+00			0	0	t	f	Krishna	\N
683	pbkdf2_sha256$216000$LV2xVE21oUJW$FGA047nUT0+KxDmmD+aAukYUG8JJjgGJFmrzEIT28dI=	\N	f	53402efe-2725-4990-9a84-7803c628daf1	John			f	t	2021-09-27 12:16:01.18728+00			0	0	t	f	John	\N
684	pbkdf2_sha256$216000$5cbh1XirLaQU$sXOlNbRyb8fYNrDyhXo4n5QZAcaGz5dofYqhVWDltdA=	\N	f	9571d166-05ae-47bf-aaed-dd7ea59d3055	Hero			f	t	2021-09-27 12:16:07.026458+00			0	0	t	f	Hero	\N
685	pbkdf2_sha256$216000$cDD1DN0I7lyR$On+Kexh1G/aIPsDXQioeGLxyZL3ApFOOHBlw//C3s64=	\N	f	4ce79f0b-846b-4084-8d73-62228ea400a4	Gambler			f	t	2021-09-27 12:16:07.287104+00			0	0	t	f	Gambler	\N
686	pbkdf2_sha256$216000$2vXioFsNXqtj$TWwGG+v/CgMtpMc/qknYETvHwdSL/xS0zpX5x/+NDqo=	\N	f	372677d0-5fff-4579-8a83-f98a72fd489a	John			f	t	2021-09-27 12:16:13.486475+00			0	0	t	f	John	\N
687	pbkdf2_sha256$216000$4NtQrTkLEp9N$IZZC0W3zfb/8qzslW21otMYJEDHTYIiOH04UvnGUs9k=	\N	f	cb71a745-a14e-461f-82be-62a033be4723	John			f	t	2021-09-27 12:16:13.746806+00			0	0	t	f	John	\N
688	pbkdf2_sha256$216000$0p9up0kWUj7w$duiQeFaXrSBJHYK0TYQUOF5zTwydnQp5hdhNVokMDcs=	\N	f	62c187fa-f1f9-49dc-8c8f-8090a4a767c7	Winner			f	t	2021-09-27 12:16:19.520517+00			0	0	t	f	Winner	\N
689	pbkdf2_sha256$216000$IhceuEvzlPAt$Roi/AKw8e14ooN4Ye08xmVsgQFJBL6TX0/NX7EwVyTc=	\N	f	b8870a87-dd12-4dd3-8b94-2f4989672db6	Avenger			f	t	2021-09-27 12:16:19.775559+00			0	0	t	f	Avenger	\N
690	pbkdf2_sha256$216000$vUCyOSl51n9j$BaMomUmEPuaAs+WQ6+SUILlf0pcAfQ3KnMJozkTngY4=	\N	f	898f3566-6598-45de-b6a1-25acaacba34f	Akshay			f	t	2021-09-27 12:16:26.110687+00			0	0	t	f	Akshay	\N
691	pbkdf2_sha256$216000$IeWHmCMUk4Uf$dy339lb6ghOvQl7ex2TNw9/fuXEeGrYQ0ko+XT6ZRkc=	\N	f	6c4e945f-8c37-418d-8b32-83c79d6d2115	Krishna			f	t	2021-09-27 12:16:26.345519+00			0	0	t	f	Krishna	\N
692	pbkdf2_sha256$216000$EI8ypLt8FwaI$AaO05LAQWUqLqy1XgqbAD+E1YRykNt7goIXaEZqGrQg=	\N	f	d2f5041d-c489-4f20-9509-6fc88de2b34e	Ruby			f	t	2021-09-27 12:16:32.186183+00			0	0	t	f	Ruby	\N
693	pbkdf2_sha256$216000$Ca6hJ0yxWE7f$neYkM644ufo9ObOHW6gDpKgXKzJBZsOvdSsyeHqABhM=	\N	f	8d77b361-d5aa-4168-9d8f-c674b2341e4b	Hero			f	t	2021-09-27 12:16:32.436199+00			0	0	t	f	Hero	\N
694	pbkdf2_sha256$216000$06wmBiIHo5UI$HJ0xhSa4xPvkVc78/oMR0O/MCHRT/EhJv62o/XO5dbs=	\N	f	c28ec401-b36f-4a16-b717-a8ff0fdae985	Rani			f	t	2021-09-27 12:16:38.477226+00			0	0	t	f	Rani	\N
695	pbkdf2_sha256$216000$eC1ClTOpvkYG$BNpyK6zfeDyv5MlvfZ1jO2Fcq1A3qUhleE+FA7Z0jgs=	\N	f	2176226d-b095-475a-8b45-a8631785d2b9	Mara			f	t	2021-09-27 12:16:38.761921+00			0	0	t	f	Mara	\N
696	pbkdf2_sha256$216000$5oFX57pbAqJ0$DP/FsMjHWngk4kt+anCKwImEj+RJHo8VhLrI01FqceA=	\N	f	c73e3a0a-11ee-4313-97fd-866d9df1dedf	Mara			f	t	2021-09-27 12:16:44.896502+00			0	0	t	f	Mara	\N
697	pbkdf2_sha256$216000$yEwzLCF0I3nj$Gbj2EvbYx0img3KwAimbZCsxR4f4GtMJQbEZMtRo9Ag=	\N	f	c8818431-170a-4bb9-8b68-31cd86a8052e	Gambler			f	t	2021-09-27 12:16:45.166175+00			0	0	t	f	Gambler	\N
698	pbkdf2_sha256$216000$QSbkaJATdN4L$ZOPXndU5+GRBVJtxMcJqApNR0HeGrrBB4v1qfMe+iB0=	\N	f	346969ba-8e63-4124-a487-e5456646db85	Major			f	t	2021-09-27 12:16:51.521393+00			0	0	t	f	Major	\N
699	pbkdf2_sha256$216000$azloqTE1caAN$u63OfrroBcWH5fdrNtFb2XuflzAs52qAO/RtbDnf0RM=	\N	f	a3762ec6-63ff-45fa-9df5-a95d6aa98b5b	Diamond			f	t	2021-09-27 12:16:51.765269+00			0	0	t	f	Diamond	\N
700	pbkdf2_sha256$216000$wkTFKcBmVYwO$c+RpO8b1BSLsDfBSbScUW/LwKibK9S3UlpTzbD3iiOI=	\N	f	74fcb1f4-fbd6-4a28-abc4-be9e48ae7c0a	Major			f	t	2021-09-27 12:16:57.715783+00			0	0	t	f	Major	\N
701	pbkdf2_sha256$216000$5EfGe0Xeuzgw$RxiYvsZyNifVYjjYA5o3uCcVaCuUQKdsjrGJCioYUQY=	\N	f	5daae3bf-3a5e-479a-b3b1-9a0e0cbd41bb	Sheetal			f	t	2021-09-27 12:16:57.986018+00			0	0	t	f	Sheetal	\N
702	pbkdf2_sha256$216000$3WjYSfBXMIe1$6UWJi8pt/LrJVVp3FsNoo1ZTQi30JF6RJ6NDzZzbDCU=	\N	f	b0299e07-e780-4967-bb29-f2b1f4e3a682	Winner			f	t	2021-09-27 12:17:04.178529+00			0	0	t	f	Winner	\N
703	pbkdf2_sha256$216000$YfUbj1jW9WXO$PT6jlCYCYshZvPqevVGVzjACh9g4kAnYtq45qk6v01Q=	\N	f	e8238ddf-9b4f-4176-a27e-128d03809f41	Avenger			f	t	2021-09-27 12:17:04.43137+00			0	0	t	f	Avenger	\N
704	pbkdf2_sha256$216000$tza7T7q1fvVo$ugCV8IdANIF4i8+Ij8+zhh6xkiouvWmzrAomr2aolwo=	\N	f	091fc988-bcab-41a2-9198-8faaf1211620	Diamond			f	t	2021-09-27 12:17:10.210399+00			0	0	t	f	Diamond	\N
705	pbkdf2_sha256$216000$mwup2IA9Zsmr$19QgyZGVUCqmhz3E7bbsjMExCtuss80DT7V42UGc0kc=	\N	f	5d28abfd-6c6b-406e-9d15-37b0d2d7f0fa	Loser			f	t	2021-09-27 12:17:10.460014+00			0	0	t	f	Loser	\N
706	pbkdf2_sha256$216000$utLQOhJdHRup$OCwRP1FF1KkF8UG02QFKyETUL1xL/cHyABr+sjj/3Q8=	\N	f	f43f5a6e-5fa1-4d58-a3ae-2eae9c6b3083	Akshay			f	t	2021-09-27 12:17:16.788007+00			0	0	t	f	Akshay	\N
707	pbkdf2_sha256$216000$RO9HvyUEHYLi$DqKziXxI561Xl0kqhAOV5Ql6Cifq2NVR4t3M9mNHCMs=	\N	f	4c340a71-299c-4ee5-baf2-2b84e66687f4	Avenger			f	t	2021-09-27 12:17:17.03818+00			0	0	t	f	Avenger	\N
708	pbkdf2_sha256$216000$18eQj4PVMxT3$MMH0Yc0Dl7n9MAjTpIEVvzKMYtHLkLbkMU+nQF4+HjA=	\N	f	72615380-3d31-4ee5-8788-19ecd1cdc8dd	Roja			f	t	2021-09-27 12:17:22.936002+00			0	0	t	f	Roja	\N
709	pbkdf2_sha256$216000$9kZVXRMsJnOO$H1EaGM3Tm8F9T61kFDq3KUSgcH7JN69zvF2JiUwkcP0=	\N	f	717f41cf-1db1-41f2-9232-77fcd2b24a39	Poker Raja			f	t	2021-09-27 12:17:23.19087+00			0	0	t	f	Poker Raja	\N
710	pbkdf2_sha256$216000$P66cYmJ5ySKy$aBqC9VGCvYNK4luQP+3oA5KgTW+A5zPH5mV6CY1WOk4=	\N	f	57ada733-a90a-4a2b-90db-337d3804d0c1	Akshay			f	t	2021-09-27 12:17:29.458565+00			0	0	t	f	Akshay	\N
711	pbkdf2_sha256$216000$XUxnczLmVsne$5b6vb3x//zVOOYFrTbfl6mhiwpgLnF6mEs+gxjyAnMI=	\N	f	6e0a7591-16be-46ae-99ac-977297ee81e7	Number 1			f	t	2021-09-27 12:17:29.710452+00			0	0	t	f	Number 1	\N
712	pbkdf2_sha256$216000$q27sTDyAMC2d$70dgsAmZoxGc/JItZBOekLIFm86EOCI7Hoz8+GEGu9Q=	\N	f	9c0c0809-f6e4-4ed2-905e-917611828ed0	Avenger			f	t	2021-09-27 12:17:35.574808+00			0	0	t	f	Avenger	\N
713	pbkdf2_sha256$216000$E7fgiAqiGBQW$BRXskqgTGjPs6HZ+UL0vXNFNnHvSWuPQq7RzYEAavss=	\N	f	7579345b-1b7f-41a3-a306-8ec2e46decaf	Ruby			f	t	2021-09-27 12:17:35.854602+00			0	0	t	f	Ruby	\N
714	pbkdf2_sha256$216000$ZSuxo43jaftC$+9JZQLBg8kB+yardAi9yxMi/kNHQ9nE4wYRb56yF4Tg=	\N	f	33cb8c30-688f-4c4d-a250-952cc07a2818	Akshay			f	t	2021-09-27 12:17:42.114303+00			0	0	t	f	Akshay	\N
715	pbkdf2_sha256$216000$qqL1DYKRqQca$J8HshucN6oQobySKYibk9On033gAgwWdtrGuTHg/ooE=	\N	f	6b2847f8-ef0b-479c-84d0-ab37e2fd848d	Winner			f	t	2021-09-27 12:17:42.374668+00			0	0	t	f	Winner	\N
716	pbkdf2_sha256$216000$qqHPgGRRCgZN$6IWfB8Bur20ZLluN138xMEo2H86hdDzycui31Y333Io=	\N	f	e1456284-f6ad-4899-b763-e5db408b3d75	Winner			f	t	2021-09-27 12:17:48.156037+00			0	0	t	f	Winner	\N
717	pbkdf2_sha256$216000$RHj3gcYXtM9b$0bnPS+loOCfo7CnNCq/HiA7lGp0BJLdcGA8xmcBpy2Y=	\N	f	9a37619e-bdec-4164-af84-8a433e38af14	Roja			f	t	2021-09-27 12:17:48.506924+00			0	0	t	f	Roja	\N
718	pbkdf2_sha256$216000$wiq6RwZTsQH2$MdOWku8I0nbYQPHGu2XaLZyEL61s3Vi5svG/VBA4Ch8=	\N	f	6a87851d-1c47-4df0-8dd7-de744626bc42	Mara			f	t	2021-09-27 12:17:54.606636+00			0	0	t	f	Mara	\N
719	pbkdf2_sha256$216000$UHS7no0NLZ40$w9tRc+6BUVUBxoj4YTkvULqILuqBOtx4vAc0LLOe2yM=	\N	f	44ba201f-48df-4c24-8bc9-52d87399ac8d	Avenger			f	t	2021-09-27 12:17:54.866234+00			0	0	t	f	Avenger	\N
720	pbkdf2_sha256$216000$GVo3UvSjBDa9$pqEwhzgmge6yDN+CNKtCUbZ2pzbi7m71So4KUSxCpzQ=	\N	f	01c9c7d8-6d96-4a63-93f3-8316c0e3ee9a	Number 1			f	t	2021-09-27 12:18:00.786445+00			0	0	t	f	Number 1	\N
721	pbkdf2_sha256$216000$aSPd2nVxUeN6$9HF2eglKy4h99T7xvJM2xw95LUfCJhY2/jhBxkP5D5c=	\N	f	532c259a-fc2a-4150-bd76-e90051b3d6b4	John			f	t	2021-09-27 12:18:01.046692+00			0	0	t	f	John	\N
722	pbkdf2_sha256$216000$SSzqLLam4aXj$rH35S0sBC3vjaGlbYXAmDEmZb/NPQUUTNPjY6m8loj4=	\N	f	226c2ace-2e6c-41e1-a2c0-20cbcf107771	Number 1			f	t	2021-09-27 12:18:07.090976+00			0	0	t	f	Number 1	\N
723	pbkdf2_sha256$216000$bNDPmmVo8Pfm$2VLyRKeJKuTs1MN7ALWil5INry14IpzYnnCagrsnwt0=	\N	f	3d991a2b-23e1-434f-87a8-d684a2f3f237	Major			f	t	2021-09-27 12:18:07.340111+00			0	0	t	f	Major	\N
724	pbkdf2_sha256$216000$Ev2MnCESVqJs$JF6nFXd9xc3uEJV/p2ohfYcEACTCrLTEbLJfa8KVFVM=	\N	f	099b1d54-2ea5-4bf6-b09e-8c405ff25f26	Akshay			f	t	2021-09-27 12:18:13.31655+00			0	0	t	f	Akshay	\N
725	pbkdf2_sha256$216000$9lF64LrOFgK3$F3Bu7UxN/gTU7ELsqRV7eRfbNlrQ6p0D4BAbxAplIwE=	\N	f	b59e384f-8515-4b48-9969-0da2e94adfcb	Diamond			f	t	2021-09-27 12:18:13.684461+00			0	0	t	f	Diamond	\N
726	pbkdf2_sha256$216000$lwVkkm8ZEJJN$slUfQc2zdnxc1NzDEQm8koL+GL/UHniT8GiV+kF857c=	\N	f	0f69de92-9f17-4fb5-861b-ae3f59f06e2e	Akshay			f	t	2021-09-27 12:18:19.486586+00			0	0	t	f	Akshay	\N
727	pbkdf2_sha256$216000$J2mLURrgf9pU$GVv2Byp+Wu6t2xT9O7PwmUxOdzzxaTDn/e9q7XrXgs8=	\N	f	312e0adc-e04f-41d9-93b0-0e0ccfc64a24	Raju			f	t	2021-09-27 12:18:19.756503+00			0	0	t	f	Raju	\N
728	pbkdf2_sha256$216000$D4zdEdhEZ9KI$uF3VMBoLdE3MeQWvqXu37BNyQkwRKDl/Cg+pNUQtaUA=	\N	f	27ddf89e-b800-4243-8352-883b3ffcf577	John			f	t	2021-09-27 12:18:25.736492+00			0	0	t	f	John	\N
729	pbkdf2_sha256$216000$zceWueaNocuo$12z/qHeerOgT4r/A6ovzztSkol6xmnvOrcNX7SaoCBI=	\N	f	1b7d3bf1-5c99-40ef-a29f-b68b76750ba0	Rani			f	t	2021-09-27 12:18:26.086759+00			0	0	t	f	Rani	\N
730	pbkdf2_sha256$216000$vfwBtDPhHeEr$5G6Us61PqD0asARAC2x4ZHDr/b0ysWcNB59hRmXj1sg=	\N	f	2ef06b1e-c8dc-43b4-a88c-3baed65efd1f	Mara			f	t	2021-09-27 12:18:31.996495+00			0	0	t	f	Mara	\N
731	pbkdf2_sha256$216000$QiGcKGFvuAW8$m/BuuO5b2ESmeoCVyJu286k8mQC73cbzkieaSxvO1aE=	\N	f	92daa682-94a1-43c1-b9c4-b04285ec366b	Hero			f	t	2021-09-27 12:18:32.266549+00			0	0	t	f	Hero	\N
732	pbkdf2_sha256$216000$GVCEnYpow1z1$doL+qqwnxYehfx+y62RfwnWDWFQ1fnI1ASw0bxRS1ck=	\N	f	13cd8509-fd30-4f1c-a82d-9a09de171945	Avenger			f	t	2021-09-27 12:18:38.357923+00			0	0	t	f	Avenger	\N
733	pbkdf2_sha256$216000$hcTztNAgP1T4$9U2CpbCpP2X6TQzVlMhOcv44YllwJUHIl8/YPttMfC8=	\N	f	69525240-0112-4fd3-8cc7-6b89a8ccc66a	Akshay			f	t	2021-09-27 12:18:38.593225+00			0	0	t	f	Akshay	\N
734	pbkdf2_sha256$216000$aIlY4UWcUQni$T3hLsB4fIEVPebadAbvWKaCJo4AXLGARppVGJuzL0Ac=	\N	f	55b65202-6e02-408a-bcaf-d49f39288d25	Gambler			f	t	2021-09-27 12:18:44.655898+00			0	0	t	f	Gambler	\N
735	pbkdf2_sha256$216000$a82mdqo9jeRd$vRo4vqxZ4hP4sVfWLCdnYru+bkG3IAZvCH8k27P3Btc=	\N	f	3adda130-47d1-491c-ba9a-df4cc90df271	Akshay			f	t	2021-09-27 12:18:44.916407+00			0	0	t	f	Akshay	\N
736	pbkdf2_sha256$216000$APtXT5kCd0dG$iHXKX+Rse1cucZ53ZnRMo13+neeJJcnGTMb4Lztd7X4=	\N	f	2a33790c-ef33-4c9a-8fad-714041b5b346	Shahrukh			f	t	2021-09-27 12:18:51.163243+00			0	0	t	f	Shahrukh	\N
737	pbkdf2_sha256$216000$9WGB2d7ZwwJI$Pm0E+slcr8u2cjC8Gvrz1DoJNCT6rzrfxWO9Pl1r4BY=	\N	f	dbe675f8-aa5e-42a5-b11c-5b9682b3561a	Avenger			f	t	2021-09-27 12:18:51.400536+00			0	0	t	f	Avenger	\N
738	pbkdf2_sha256$216000$Tbu1bzlUJa0P$U05xkNnPz2esZ/1T5gFjgGSX1i/wQNj1I/w6bqczuE8=	\N	f	772859f1-d493-462e-a260-4b7716982e26	Mara			f	t	2021-09-27 12:18:57.209609+00			0	0	t	f	Mara	\N
739	pbkdf2_sha256$216000$GzYIru8RY7E7$0b2WlLx0nyFOih7/ZZ3R2djUA8QjBN/YUZO2zZrz2c0=	\N	f	464c366c-e4df-4eb7-8f92-0f85eead47bf	Poker Raja			f	t	2021-09-27 12:18:57.44936+00			0	0	t	f	Poker Raja	\N
740	pbkdf2_sha256$216000$hVXLtil7ffgR$KnnaNNxwC1KICqBTosbA1LpundiQg6oyCiK9aHjixbk=	\N	f	f9535ffa-b069-4ab0-95b1-44390456bb84	Winner			f	t	2021-09-27 12:19:05.249094+00			0	0	t	f	Winner	\N
741	pbkdf2_sha256$216000$uzL55v6ZbW2d$uLanxJmvuebzkQ9jZqI1Uz9u2Reu15kp4U/F2iFLRSM=	\N	f	84498a9a-e94e-47ba-9b92-34cdd4b661c6	Ruby			f	t	2021-09-27 12:19:05.506351+00			0	0	t	f	Ruby	\N
742	pbkdf2_sha256$216000$DXqqlU5drMVo$6lMo7QJyxPXM+E6SA4LhImqctk92FHzkwKq0aAC/ZQA=	\N	f	386da832-fcf6-45ab-89db-04af2024b789	Mara			f	t	2021-09-27 12:19:11.640301+00			0	0	t	f	Mara	\N
743	pbkdf2_sha256$216000$FnVQU7iUyzzc$kmkJibwlICDaRdO7h2MKU6h2wesaj/FMdfApoBT51kg=	\N	f	aee60ad4-c3c1-4275-9906-700fd06083c7	Hero			f	t	2021-09-27 12:19:11.890304+00			0	0	t	f	Hero	\N
744	pbkdf2_sha256$216000$Zh7GonoB9Tne$SB2YqLwsCYQUBAxOV1Qllr2NImnlyBOlO1VrO9/YiTI=	\N	f	a103b872-4be1-4d39-92f1-d119b841ccc7	Krishna			f	t	2021-09-27 12:19:17.730361+00			0	0	t	f	Krishna	\N
745	pbkdf2_sha256$216000$AnZeYa1FrHpn$UirEWYbh16aRms6JG7Qs+RTwlUYxTOvE+srYZKuaPnk=	\N	f	bccdb046-ef31-423b-8333-ae86990b15a8	Sheetal			f	t	2021-09-27 12:19:17.992148+00			0	0	t	f	Sheetal	\N
746	pbkdf2_sha256$216000$DNQkwWIAYDLs$cforgkZgUWq1y7Q8oDcKqtnMIslvB5YqLM/eW+eu8uw=	\N	f	e59947e6-6709-4480-9ac9-e1fee54c8cbd	Vijay			f	t	2021-09-27 12:19:24.246656+00			0	0	t	f	Vijay	\N
747	pbkdf2_sha256$216000$Bmbpn2adK74q$qAv1rsHxr18ug/mAPPtgWqiMcrY6LNZLW1uya3cYoII=	\N	f	7efed665-6fd9-4a2c-a832-40dd3d0cf513	John			f	t	2021-09-27 12:19:24.506562+00			0	0	t	f	John	\N
748	pbkdf2_sha256$216000$v3ixSVdQXsE2$gld/OY12c+PK0WpiTlp7J+5cBXhsfLVANyFbYsED/as=	\N	f	82d2f63e-3112-4b40-afe5-4991b3204441	Loser			f	t	2021-09-27 12:19:30.266239+00			0	0	t	f	Loser	\N
749	pbkdf2_sha256$216000$ZPXrLjflJh9Z$X09FI6elf8ePng5jzWj5zCqQZjuRQTrKYc1kKZNjlRA=	\N	f	f45ca57d-2d78-4d2f-a40c-74bed173deb8	Hero			f	t	2021-09-27 12:19:30.526531+00			0	0	t	f	Hero	\N
750	pbkdf2_sha256$216000$MKs6o5ZsQw0w$FSfMliFB8zQp3omudzMeU6D9Fd9Izyiq7whKQhrB2+U=	\N	f	72ae2504-5cb9-4502-89c9-3ffcb6e80c22	John			f	t	2021-09-27 12:19:36.835953+00			0	0	t	f	John	\N
751	pbkdf2_sha256$216000$9ageFsa6sndT$ORkqzJ5PNa33TikA2pGaO55mJuQERheGNawO7S63uNY=	\N	f	e9e36b3e-41c7-44e7-90d0-35d817286e05	Akshay			f	t	2021-09-27 12:19:37.11419+00			0	0	t	f	Akshay	\N
752	pbkdf2_sha256$216000$FYbaN4iizH1A$Tg7Jv9GjYqe/twyA8eEsOyeXIQSxYqb5cLCzM1T3TXA=	\N	f	5e3f16b1-c14d-4d9c-b7ab-27b0eac5a1f1	Mara			f	t	2021-09-27 12:19:42.94284+00			0	0	t	f	Mara	\N
753	pbkdf2_sha256$216000$1ZDB2SCrdfzX$Mh/Tx88nEvuLolkcuh4FhqNedbrfgIehzS00NHw+8QA=	\N	f	33faaca7-ab57-4612-8246-b57c9a6160dd	Roja			f	t	2021-09-27 12:19:43.195486+00			0	0	t	f	Roja	\N
754	pbkdf2_sha256$216000$zO4V0XHwyFYX$vkt0GQPeYmaiht3e2H+DxtdrlSWboFQaCnGPDJLLMcM=	\N	f	32cff3f7-5122-4ad5-8358-347eb6008cb0	Shahrukh			f	t	2021-09-27 12:19:49.373847+00			0	0	t	f	Shahrukh	\N
755	pbkdf2_sha256$216000$Od3LqvQCbgYJ$G/1CLUIOdgnsDzBl8iEwF/D2ihZcFWOym8dgAFXUoYo=	\N	f	b61e62cf-7263-4a71-8faa-3ab9c9ba8f77	Loser			f	t	2021-09-27 12:19:49.636418+00			0	0	t	f	Loser	\N
756	pbkdf2_sha256$216000$yBxnvymGd7PA$VtP5nhJQ3gKQjOdi2116bUxhWd8JCGB8wyGFZUdqLQE=	\N	f	56075e71-163a-402a-9f86-1547331ea22d	Rani			f	t	2021-09-27 12:19:55.591597+00			0	0	t	f	Rani	\N
757	pbkdf2_sha256$216000$5qyaB1yEtLR0$JFyXx7006KRw7rwU+j5NiVxbf/3oEWXwVOP7Oi8dBUU=	\N	f	b324d714-7ae0-46c1-b452-0c27664cb2ac	Mara			f	t	2021-09-27 12:19:55.845483+00			0	0	t	f	Mara	\N
758	pbkdf2_sha256$216000$S1T868AT6ogp$NOrkxLBV/2pg9A5NcBjuv7CVze44fKC+nH/pyh3YCMA=	\N	f	d18b4877-b51b-4c30-9e22-d34cd843c319	Akshay			f	t	2021-09-27 12:20:01.846259+00			0	0	t	f	Akshay	\N
759	pbkdf2_sha256$216000$Kl1OZnAmqVM9$B5V06rq3gVOb/Jzctf8z3SrYEDhWjvXDi1AYKEC17pw=	\N	f	3b03ae9b-9b65-446f-abd9-deaa9d8e20d8	Hero			f	t	2021-09-27 12:20:02.126058+00			0	0	t	f	Hero	\N
760	pbkdf2_sha256$216000$p0ktLE9IJxXg$1NwbxYYkSv2+Y5dYsAua0bbpMramLsXq6RZrs0Vyong=	\N	f	b97a5db2-8121-49cc-8af4-da3a25ef53bb	Master			f	t	2021-09-27 12:20:08.230849+00			0	0	t	f	Master	\N
761	pbkdf2_sha256$216000$rsmV8zLrNmOD$S+gyMAjscMZSX5FhBpDCiBroemvqypvhzda+9D3jl5Y=	\N	f	9b99b07f-6393-49bc-b963-192fca6b29b5	Avenger			f	t	2021-09-27 12:20:08.470594+00			0	0	t	f	Avenger	\N
762	pbkdf2_sha256$216000$ilM7g2AgfZKZ$6Q6gDCyWwLxNtcJNRQFwTuXyVDWWuyT13TGetJ6FzO4=	\N	f	3312335d-0430-4be4-9465-6cce29ad5f2a	Diamond			f	t	2021-09-27 12:20:14.369619+00			0	0	t	f	Diamond	\N
763	pbkdf2_sha256$216000$ZeAu84JRN2Ih$HpSGYeuWGDGqNcWlQyH+C4JuwOuhKRounRyeFcEQyr8=	\N	f	88db8559-57a5-441c-b1ae-86c4ff30bb9c	Raju			f	t	2021-09-27 12:20:14.609941+00			0	0	t	f	Raju	\N
764	pbkdf2_sha256$216000$yBk1M2kpg4kO$U3i4nGnENhSw7qGEiOZjpl7RPl+aKxlzjjcONA1ww+A=	\N	f	969e2d41-9ac5-4d77-a492-014a482aa232	Vijay			f	t	2021-09-27 12:20:20.750379+00			0	0	t	f	Vijay	\N
765	pbkdf2_sha256$216000$TKT7DFHk10H9$W5L3gFFdkG1MlVJ3UGDNLWZwIVUE2Z4+S01ZyHN+NK0=	\N	f	5a987fc3-90d2-4ead-9971-cbf31c080d4b	Roja			f	t	2021-09-27 12:20:20.989592+00			0	0	t	f	Roja	\N
766	pbkdf2_sha256$216000$HuU5G95UO17c$8e0Rvi7mipn77ToniqgRcw5C/sdX8O5v/7u2hDDODQY=	\N	f	36504818-6f2c-4bca-833a-2b5108ca042c	Ruby			f	t	2021-09-27 12:20:26.886582+00			0	0	t	f	Ruby	\N
767	pbkdf2_sha256$216000$pPMJ2xKaPUJW$NkoCIiYB0/KGMpjvc7hOolZvEsu+S6uFM2mRPTc6l+Q=	\N	f	e0be1650-65a8-4fe1-bf70-99c310a04d17	Mara			f	t	2021-09-27 12:20:27.136133+00			0	0	t	f	Mara	\N
768	pbkdf2_sha256$216000$cKjSvaXpeNCt$OodBXZ8gCm9jxaiJZ1DnCXi3ByW513h3/xl9+kTchww=	\N	f	3770880d-8cb4-4917-95c5-8da047d18335	Shahrukh			f	t	2021-09-27 12:20:33.245396+00			0	0	t	f	Shahrukh	\N
769	pbkdf2_sha256$216000$nOFJiJPOQOJu$Bopva3Zro6oYpEzI69xGgfh8TK/WOyuGJ3x1pViSW9w=	\N	f	774a7803-1274-46b8-b786-4c8af0638db5	Hero			f	t	2021-09-27 12:20:33.515608+00			0	0	t	f	Hero	\N
770	pbkdf2_sha256$216000$xS0qZCsTVm0P$SSCHy1HBdcugX/VfODxAUuF1dpGOIVtbpotQPssoMQU=	\N	f	7e004eae-e1af-4ba8-a576-d13a69f5614c	Poker Raja			f	t	2021-09-27 12:20:39.367078+00			0	0	t	f	Poker Raja	\N
771	pbkdf2_sha256$216000$PzFBuV7XwXTr$Cd0+w16bZWAhH5AMyPZLCLYZFsspcOZDY2cQ89juokc=	\N	f	047be8cf-d2cd-4cf0-bfdb-e5c9c70b1be9	Avenger			f	t	2021-09-27 12:20:39.616152+00			0	0	t	f	Avenger	\N
772	pbkdf2_sha256$216000$AkJfSLkXqAd3$RhS4sg6EZNocZOnXd4CW3/3ROF9e1h9tYwZ4McSahYM=	\N	f	0cf47ff4-c352-4809-883f-0264eee3efa8	Master			f	t	2021-09-27 12:20:45.738313+00			0	0	t	f	Master	\N
773	pbkdf2_sha256$216000$PAuB8mnyJvmn$t/ts/uyGwoOvjtJz/KY0V8vySllQ36VmH2CuCEP5EGw=	\N	f	0080936d-dc4a-4521-a900-612b066172d4	Sheetal			f	t	2021-09-27 12:20:46.016103+00			0	0	t	f	Sheetal	\N
774	pbkdf2_sha256$216000$WeyuHm4adRny$MM/wJBsxwL1kiMmQBSrxP7JUzMlIVc5M91UCtSVQNlw=	\N	f	f3b8d85d-9c22-4cc1-a38d-3225d8208533	Gambler			f	t	2021-09-27 12:20:52.066035+00			0	0	t	f	Gambler	\N
775	pbkdf2_sha256$216000$UoZkikJLGD22$HfdBwTghysxLL6P+cnEYPnhZWm3/tTn7qFFtrcrGYts=	\N	f	cb86e1ba-2fd2-4e44-b688-567d0d2a47ec	Raju			f	t	2021-09-27 12:20:52.356004+00			0	0	t	f	Raju	\N
776	pbkdf2_sha256$216000$sjP83EknRWm8$Kk7ci2re2pCebAyv2J7dTWQEiPPts58UgWqAqENccEs=	\N	f	1e91d047-4f1d-4109-8b90-1a7332e5ea3e	Vijay			f	t	2021-09-27 12:20:58.516147+00			0	0	t	f	Vijay	\N
777	pbkdf2_sha256$216000$0Wt5wQ4VDa0J$dLDAM7x9Zc+kChpH2v07t1X+ZKHY/gtZHJrJZC0nSYc=	\N	f	b38371ee-ad32-4ae1-8f88-0a41de16f74d	Akshay			f	t	2021-09-27 12:20:58.777037+00			0	0	t	f	Akshay	\N
778	pbkdf2_sha256$216000$RgftluCj4a5N$LbO7YZ/d89Qg6k2kHL0LXcKWV8KqhFhz8g61qAHBmYQ=	\N	f	1511163e-b955-4104-900d-050153f21a80	Number 1			f	t	2021-09-27 12:21:04.590532+00			0	0	t	f	Number 1	\N
779	pbkdf2_sha256$216000$qaqdF9ElgCCt$Wyl0mpiKmuU+Hu5rbzWLDIl3L1YBffPzcNda+gJKLr4=	\N	f	accd44f8-4542-47ac-874f-bc0d48fccd0b	Number 1			f	t	2021-09-27 12:21:04.838325+00			0	0	t	f	Number 1	\N
780	pbkdf2_sha256$216000$dAtR9cRnDQx2$TYcCCxsqb81m73SNVgsIc1o/PxxmKeuPLDFHnEfY0xA=	\N	f	a4aa518f-7cbf-44ad-9382-e40e8c05a645	Sheetal			f	t	2021-09-27 12:21:10.931642+00			0	0	t	f	Sheetal	\N
781	pbkdf2_sha256$216000$oBgxvCMwwXFt$aoFwPBhZAGY+ZsEf179G3WttcwcD9rGDASYtJvDZ5zE=	\N	f	84a47532-bee0-4f1f-9d0f-e6f149adf1a3	Gambler			f	t	2021-09-27 12:21:11.170373+00			0	0	t	f	Gambler	\N
782	pbkdf2_sha256$216000$UyjaCygxsJjz$osUkM1LUIi2gYo8t6PYQCURdg92H+TcFdM9XeSWbaXA=	\N	f	194149a1-c78b-4e41-94a8-875d873d3cf3	John			f	t	2021-09-27 12:21:17.014253+00			0	0	t	f	John	\N
783	pbkdf2_sha256$216000$gHx2AgLqO9P0$+Wg6+oKvQMW4ttHoXSy27o1IlxeLNYn+iVMQp6xK2aM=	\N	f	796af75d-735d-41f6-b183-1aee8bbfa031	Number 1			f	t	2021-09-27 12:21:17.386354+00			0	0	t	f	Number 1	\N
784	pbkdf2_sha256$216000$jjTttKENmzcO$r4Zl1tYNZ3uBACwZrVbbm9qbAGxv7N/FAv9JWlWtMHk=	\N	f	95b01a31-8bc5-474d-a05e-e77af7688b7f	Akshay			f	t	2021-09-27 12:21:23.370518+00			0	0	t	f	Akshay	\N
785	pbkdf2_sha256$216000$aMjSS17UTcvn$t9vwfzSGs5DkeFrfQoBnN9XjVzu2RCxEuYEH3bjWnxw=	\N	f	eb461b6a-bbdd-4c8f-9cda-9bd78c28f14e	Shahrukh			f	t	2021-09-27 12:21:23.62848+00			0	0	t	f	Shahrukh	\N
786	pbkdf2_sha256$216000$WG8Kxa5sw62M$0J1y+aeH2l4rZHnyQN4uGwPCA9M2GXyXtaO4tPw2SEk=	\N	f	b22aec69-9cbd-4dbf-add2-b7ed79475088	Diamond			f	t	2021-09-27 12:21:29.673664+00			0	0	t	f	Diamond	\N
787	pbkdf2_sha256$216000$A9wH4WbqjgSn$ZSnBUtkC+r9xE1VZBEpGNaj78EhkFxl6q68otPV5KwE=	\N	f	67e29af8-567c-40c5-b5da-58291851d06e	Gambler			f	t	2021-09-27 12:21:30.025365+00			0	0	t	f	Gambler	\N
788	pbkdf2_sha256$216000$A6edv2W5FJBA$QnqyajaTSW+HA3kCMIA96DgJGuTgTWwA72HCRTBE0Q4=	\N	f	05cc02d4-6812-4067-a9ed-03a50647ca53	Avenger			f	t	2021-09-27 12:21:35.860254+00			0	0	t	f	Avenger	\N
789	pbkdf2_sha256$216000$7mejXFlpICAY$yKLQrxXfRt98afBzCgVER8/1rkmU+tOhe/TvlbaDRqw=	\N	f	3a1b5ea0-9629-4e6a-863d-35c0090d4a32	Ruby			f	t	2021-09-27 12:21:36.11052+00			0	0	t	f	Ruby	\N
790	pbkdf2_sha256$216000$6ML0YBFC5TPW$cAbLH9HmNYCbDexxvuQKPU595c0DSiFSbzw0vhnHy/Y=	\N	f	00a857ec-255f-4156-a2af-0c1fde3e66d3	Winner			f	t	2021-09-27 12:21:42.196356+00			0	0	t	f	Winner	\N
791	pbkdf2_sha256$216000$2zuc5Doq9nGy$K9ocdnX/5lmscvVsarMqZyPD8Mx9JJt0jaVvEY1T7XE=	\N	f	efa07983-56b8-4cf0-8023-40f3d3b873cd	Sheetal			f	t	2021-09-27 12:21:42.4494+00			0	0	t	f	Sheetal	\N
792	pbkdf2_sha256$216000$qo0GvE9FVFZa$w2J6L6ou4OCs54eKuIcfPAM2ZyaXL8wOU8OYNlcNj/w=	\N	f	d5719a12-dbd5-4e81-97a3-097ad344450a	Sheetal			f	t	2021-09-27 12:21:48.289774+00			0	0	t	f	Sheetal	\N
793	pbkdf2_sha256$216000$yXJcXFTR8sTN$f9O/JxrPdsLKAp8EJk9PBPvgpXUei92yaEDR+05mU5w=	\N	f	4a3d63e6-edae-4536-a474-b5d3351f25fe	Loser			f	t	2021-09-27 12:21:48.546416+00			0	0	t	f	Loser	\N
794	pbkdf2_sha256$216000$bh2gArGzC4bD$9Gac+deKGMR6oEyzyMGiaQ+UDewloYkiYEo5EMtQ11E=	\N	f	52259374-988a-45be-a32f-8b94e89cb34e	Krishna			f	t	2021-09-27 12:21:54.614945+00			0	0	t	f	Krishna	\N
795	pbkdf2_sha256$216000$S6yn29L1tpfm$Fcj2/sblgZ6gEk/j46EkkXAfuwLgTzqdye1kOl3ZmkU=	\N	f	8b9c6af3-2d07-4ac7-9f26-c234d06f1879	Akshay			f	t	2021-09-27 12:21:54.965976+00			0	0	t	f	Akshay	\N
796	pbkdf2_sha256$216000$rTC99vCi5td9$F71QWhUHYJbD9LXbOEYjuHMUZ6iNvFhmN0JwvdMc5AA=	\N	f	d438243a-18b5-4ad2-9ec1-7b28ad9cd20d	Poker Raja			f	t	2021-09-27 12:22:00.766238+00			0	0	t	f	Poker Raja	\N
797	pbkdf2_sha256$216000$aG78kXIqxH31$Oy3apdDDA2j9cdwHzh3pDbTyVRD4RlL7bzZ8owgvisY=	\N	f	a59daff3-1559-47c0-ae51-d27543671448	Poker Raja			f	t	2021-09-27 12:22:01.016343+00			0	0	t	f	Poker Raja	\N
798	pbkdf2_sha256$216000$kGMmzsnVgxdb$44FVepH/chVczM9H83f5+Ogs1RMd2Iflqq3xpi2nnVw=	\N	f	334b7f19-73cb-44fb-9dc6-e40ecf4f564e	Diamond			f	t	2021-09-27 12:22:07.12642+00			0	0	t	f	Diamond	\N
799	pbkdf2_sha256$216000$E0LLjuLoUARU$i1Q9yHBDlLw2qVthDkBukiucw+mB74PszplN3QOBuAE=	\N	f	bdb01ba3-425a-4e88-863b-03091c0be613	Shivaraj			f	t	2021-09-27 12:22:07.386171+00			0	0	t	f	Shivaraj	\N
800	pbkdf2_sha256$216000$7uNO8jDFES03$+w0W1Lh2gEL6dtZcxXh+GPLToXI0pJgjsFNYK/yEgE8=	\N	f	e4ae2b90-e877-4a04-934b-38df2bbb1dfb	Krishna			f	t	2021-09-27 12:22:13.166142+00			0	0	t	f	Krishna	\N
801	pbkdf2_sha256$216000$tcsSXxNvIiuV$rkKW1ANCzfC8X83EhZ0c7soxwzKKLJPq2lziau/+cqI=	\N	f	5ba2bd24-ad59-4a60-ae36-bcf4a5dba6e4	Avenger			f	t	2021-09-27 12:22:13.446388+00			0	0	t	f	Avenger	\N
802	pbkdf2_sha256$216000$ckCkHWjroHA8$9AVGYlBszfUx0iZtQUg4cPoQ9cOj0XZhhtuuyp52DZI=	\N	f	bc718411-2a05-439f-9bfa-a03b8242aed9	Sheetal			f	t	2021-09-27 12:22:19.598757+00			0	0	t	f	Sheetal	\N
803	pbkdf2_sha256$216000$tcX3OXaWBO2L$D+cEIbWVXzmnalQqFQlxWiNqQIhwMDrp8JUZJQKkakE=	\N	f	e5f16f7b-53a8-497a-b2b4-ec0f12aa232d	Raju			f	t	2021-09-27 12:22:19.860418+00			0	0	t	f	Raju	\N
804	pbkdf2_sha256$216000$HEX0p6f2erQ0$wJideDklySpKiPm9I03HPsglHqe8RVWBufIVimpMZS8=	\N	f	2d9c9212-53c6-487c-8089-b71b6689a7a0	Loser			f	t	2021-09-27 12:22:25.707628+00			0	0	t	f	Loser	\N
805	pbkdf2_sha256$216000$3RZtmOacXglP$69RHuiRFgdFVU8zzMd8JMGNzuDEhyDce4piJ15JXM7M=	\N	f	506d79e5-6973-4850-9062-1faad7f5a8ae	Krishna			f	t	2021-09-27 12:22:25.957361+00			0	0	t	f	Krishna	\N
806	pbkdf2_sha256$216000$NQUN8M7uNPth$cMvosevNzQV7HedAG8AmInZRij54LrGAfOKyi8hpcwg=	\N	f	11402656-322c-4df5-94d3-107978542f7e	Major			f	t	2021-09-27 12:22:32.153499+00			0	0	t	f	Major	\N
807	pbkdf2_sha256$216000$6K5dB0DqnLo6$4CGhfXaJS+fwx0F2KlmBfM+Xf3sSQ5L2Wi2S+4sIyv8=	\N	f	2fd993d1-07f7-4519-a4c5-6964476e72e7	Hero			f	t	2021-09-27 12:22:32.416389+00			0	0	t	f	Hero	\N
808	pbkdf2_sha256$216000$PNwlKo2qKSRz$wayRECmYUcmLobPeMciKErEU+4wHxl3CRW27P0AEjs8=	\N	f	68f10983-b1e3-4e5d-9826-074eaad5e7ac	Poker Raja			f	t	2021-09-27 12:22:38.185952+00			0	0	t	f	Poker Raja	\N
809	pbkdf2_sha256$216000$5lkrbT2jLQyo$ZlzBSAsKLir9LF9gMVujmZnSQk2nI7oHqd3EVXE9fQQ=	\N	f	ee273f0f-4f49-4004-9bd3-fa68658e7e77	Mara			f	t	2021-09-27 12:22:38.447332+00			0	0	t	f	Mara	\N
810	pbkdf2_sha256$216000$HK5gjzufromg$o4DpNBSzHMUbjtilca1LwvoFfuEosLuy2ayKmFF8/wo=	\N	f	f1015135-5fa7-4c19-a6b0-48d66df69e27	Hero			f	t	2021-09-27 12:22:44.569571+00			0	0	t	f	Hero	\N
811	pbkdf2_sha256$216000$Vs7FiR96KVD0$U+lk3HorHLxVfl+EReHhnOSRz3kt6EZHiYrCyM3CMyI=	\N	f	d2574525-55b2-4606-bc11-413305e1f67f	Rani			f	t	2021-09-27 12:22:44.809374+00			0	0	t	f	Rani	\N
812	pbkdf2_sha256$216000$vTfmqgeC6m5M$xZDbFfBF7Q3y5q3Y12fvwgEDgIh2d4kHwJDVOxZjtBE=	\N	f	b2be1e69-5f3f-4e6f-879b-2dd99e22bdfe	Diamond			f	t	2021-09-27 12:22:50.583984+00			0	0	t	f	Diamond	\N
813	pbkdf2_sha256$216000$HQfsylRTco8o$dFcpCEZwcY3ytsdV+/kldMQs3BmECnJ77IQan5QTut0=	\N	f	6172f137-447b-44ce-8506-8a59a87ad95a	Gambler			f	t	2021-09-27 12:22:50.845688+00			0	0	t	f	Gambler	\N
814	pbkdf2_sha256$216000$c9GJWW61h18U$N16SR6RwRjg00kF/Go7Pz3qSe/uJQ4qursd6mFww7YE=	\N	f	f6ca7e44-a2e1-4c2a-9b02-2d151dda520a	Avenger			f	t	2021-09-27 12:22:56.966058+00			0	0	t	f	Avenger	\N
815	pbkdf2_sha256$216000$YQ1btNlWzZjQ$Czk8NT45a/0jpdr5Sg6WsWLBrY604QA63tp6X76mbDo=	\N	f	c3667c84-ca8d-4e92-b5b5-8b7e4700f3e6	Shahrukh			f	t	2021-09-27 12:22:57.226213+00			0	0	t	f	Shahrukh	\N
816	pbkdf2_sha256$216000$8WjuwDugXOpo$Z4NU6xe5CG6cTxUrHHLtH8mAUFx4ipPi12QTjzqo4fo=	\N	f	6611237b-f854-45e6-a4cb-8ff4122621fc	Loser			f	t	2021-09-27 12:23:03.009899+00			0	0	t	f	Loser	\N
817	pbkdf2_sha256$216000$zoWUiRjp8jsU$GOpODq/TGXI7fcTSSt+qH9ilckfCfRlPWZx5NTzHFNk=	\N	f	607013cb-40f3-4d63-9280-cf35566daafa	Krishna			f	t	2021-09-27 12:23:03.257894+00			0	0	t	f	Krishna	\N
818	pbkdf2_sha256$216000$xajDe3vAtMyl$kLuNGSAPUg0dbtWBQiqM7OcCe3A9pWTqg7lBW/0UACs=	\N	f	426d0a97-8a48-4c79-8158-9b0f9d3c0c36	Krishna			f	t	2021-09-27 12:23:09.406338+00			0	0	t	f	Krishna	\N
819	pbkdf2_sha256$216000$YmpY82lKc9NX$m8XT650eNtta798g5X5vvRYKFGNJI8+b50ZvGNDTkXg=	\N	f	14a55475-5e84-41c8-8bf9-14f487a70e79	Ruby			f	t	2021-09-27 12:23:09.667073+00			0	0	t	f	Ruby	\N
820	pbkdf2_sha256$216000$UzLFyePne82B$7lgVmQ2v8vzyXGz6vF7rmQNh5lxd36E85O8PMdwjPrU=	\N	f	f064aeb4-67b0-42c5-b040-5d7e9be9b2cf	Ruby			f	t	2021-09-27 12:23:15.389418+00			0	0	t	f	Ruby	\N
821	pbkdf2_sha256$216000$d4i691llfdRP$BXzBrSuRdgHg8pTuPkvmOAUQ84e96K7LEMdP7lcgXFk=	\N	f	903eebea-93a8-44c8-84ad-468529d92595	Shivaraj			f	t	2021-09-27 12:23:15.629585+00			0	0	t	f	Shivaraj	\N
822	pbkdf2_sha256$216000$LHuy8ugO9zGk$31d/wT2cbhr3P2XZMthJwBq6dPYrRUeKqIHK6YLopJU=	\N	f	d482b739-5e8a-40d1-ac1b-5f0f1328785b	Raju			f	t	2021-09-27 12:23:21.745774+00			0	0	t	f	Raju	\N
823	pbkdf2_sha256$216000$X04fNO821KqJ$Re5sY0qIGx5Pyp3GKnEDAttIcjX+kp+vYl3HvinDbHw=	\N	f	b97a209a-ab3d-4c41-8dd6-37ebeb3db69f	Number 1			f	t	2021-09-27 12:23:21.999033+00			0	0	t	f	Number 1	\N
824	pbkdf2_sha256$216000$214SnjZLj4VP$Gh7WkLeoFQRipu4vPmascmiLg6KL5j/GOMPOhDu3kpM=	\N	f	9278507b-7faa-4dfc-b472-4ce467829c01	Winner			f	t	2021-09-27 12:23:27.765393+00			0	0	t	f	Winner	\N
825	pbkdf2_sha256$216000$JJxlbVBFz8m6$cdStUgmucmA7TdOek6f6bUvK7qJ/ehrxrqosxb9OYU0=	\N	f	89b15e02-3d24-43f4-a4f0-6ac931c18a9a	Hero			f	t	2021-09-27 12:23:28.025346+00			0	0	t	f	Hero	\N
826	pbkdf2_sha256$216000$dj0sGB30qyul$+U5lDwaIa8Q+7oNq2dDljDIbOA3hHTkfAI3H8XV8mxg=	\N	f	7644cf74-db93-4ef8-86c6-2f72d54896ba	Hero			f	t	2021-09-27 12:23:34.176415+00			0	0	t	f	Hero	\N
827	pbkdf2_sha256$216000$u33XX6GuUXxh$P1qsiHW3OCk1m9dZ0QhnOw+7KLBzdKG1sYbTesMxvrg=	\N	f	efdf1bef-9786-4e5e-8737-c3d6608efa4b	John			f	t	2021-09-27 12:23:34.426204+00			0	0	t	f	John	\N
828	pbkdf2_sha256$216000$faydufzG3SEp$91HAPiePMhctxTooPw8Hdv/QQUjSPj4CYY0Iy3KbMrU=	\N	f	8f6c68ad-0dca-4992-adca-76ed360a8fa3	Shivaraj			f	t	2021-09-27 12:23:40.169406+00			0	0	t	f	Shivaraj	\N
829	pbkdf2_sha256$216000$1ezLCY5qy3VJ$g8qUzDRV7M7XfXWrnLwaU1FhKyv9QI+BHjox+pRGlag=	\N	f	fe039d90-262c-41df-9962-e3f1e8be0c77	Master			f	t	2021-09-27 12:23:40.469693+00			0	0	t	f	Master	\N
830	pbkdf2_sha256$216000$06hkx4RZ0GHb$ZhhIRqS5jrDzWEMM2Bm7D9nlgStFJBWwbGF5sX/gJiI=	\N	f	de427503-956e-48ef-9c10-f4001bedd704	Number 1			f	t	2021-09-27 12:23:46.615796+00			0	0	t	f	Number 1	\N
831	pbkdf2_sha256$216000$xkr5j4rbRGe6$GfmRIPbSXH/xji1l43Te194waa8n8fx14McuA3FUMYI=	\N	f	08ee7d60-d684-44a7-9616-5d52387b4a13	Loser			f	t	2021-09-27 12:23:46.87592+00			0	0	t	f	Loser	\N
832	pbkdf2_sha256$216000$D3xpwvIytIsb$MZ8YPk+ePTYgZfxpqPULRUixRAoWh5Yb19IYdr6piLM=	\N	f	32b76acb-ca77-47a5-98ae-879bfdbeeb2b	Shivaraj			f	t	2021-09-27 12:23:52.635732+00			0	0	t	f	Shivaraj	\N
833	pbkdf2_sha256$216000$5y3tVKkAlPDW$Pxi7O4xXt3LgA5Fz7ZMJtSiUJ4+b6NCtd73Ax9FOY0I=	\N	f	5501dc7a-36cb-484f-a71c-46863011933e	Major			f	t	2021-09-27 12:23:52.895183+00			0	0	t	f	Major	\N
834	pbkdf2_sha256$216000$3aaKyhnPymC7$rBt3CmAF9uat6/lKSv5nFdZuksGaA3+6pbaAxyQW0A0=	\N	f	deb857a5-b03b-4cfd-a3de-a7d0ddbe6535	Sheetal			f	t	2021-09-27 12:23:58.966293+00			0	0	t	f	Sheetal	\N
835	pbkdf2_sha256$216000$NA8rhXodcb5I$zwccFRC4czdGDhWDVbeJQ194MHWx7tc9ZEY86wsjSBQ=	\N	f	f4a5a0a4-e535-48c4-8999-1658dbed5377	Master			f	t	2021-09-27 12:23:59.236493+00			0	0	t	f	Master	\N
836	pbkdf2_sha256$216000$bHjW8ClDPjgA$VOLjuYf8LP128DsgJVhHwWHCS/g2Mzpc1gcyURizFHg=	\N	f	6a1fb1e0-9783-4cf9-b06d-94187ab957e3	Roja			f	t	2021-09-27 12:24:04.955264+00			0	0	t	f	Roja	\N
837	pbkdf2_sha256$216000$JhZNfxrzpdVi$OlxrUzOjUCRzB26b4L5+Fm5dSftyyRHiLzylDsRbPxs=	\N	f	0979bf38-cd9a-4fc3-9475-16afaab2803c	Rani			f	t	2021-09-27 12:24:05.295375+00			0	0	t	f	Rani	\N
838	pbkdf2_sha256$216000$2c0XOnfq3WPZ$MechZzqz4gWdx0k5W+vHDTCgQHvLWNbdRppDkwn/cBI=	\N	f	1d894497-ce20-4b71-a074-74f42ad3ac1b	Diamond			f	t	2021-09-27 12:24:11.32751+00			0	0	t	f	Diamond	\N
839	pbkdf2_sha256$216000$lhOk7F8NzHBe$CyG8YH0GzdW+ZgvKzlFv86ilD55eoA+kdd+AXMfWhfg=	\N	f	affb8ba7-d52c-49c3-9b0f-337a87d04953	Major			f	t	2021-09-27 12:24:11.577345+00			0	0	t	f	Major	\N
840	pbkdf2_sha256$216000$Jl4uvutoxqDs$0UV0YeoiH6lHoQv5Pxprp8Ir2g1rba7bTfs1isHjABU=	\N	f	e7aa6ea5-8641-42e0-a380-252eeac3cd06	Sheetal			f	t	2021-09-27 12:24:17.466432+00			0	0	t	f	Sheetal	\N
841	pbkdf2_sha256$216000$3KyccdQYiLYv$2MHBd4mlreDGiy5Oe9WowWsom8hMj7KVXYvRB1ZvVIs=	\N	f	528b6ccf-d6ff-4b7d-99b8-0bb6171837a6	John			f	t	2021-09-27 12:24:17.716518+00			0	0	t	f	John	\N
842	pbkdf2_sha256$216000$WRMbrg6ew0I4$UcMLX40oIWmcEPx+lrwqUxYTO+jF86r3PLUhQfMQq8E=	\N	f	5948a454-b09b-40a0-859f-6c4259de5652	Vijay			f	t	2021-09-27 12:24:23.77341+00			0	0	t	f	Vijay	\N
843	pbkdf2_sha256$216000$d3JJ7tZdj7Tl$zjdP/6NIdZ44vZ0d+vTEIknKbp3bLB7ktyNELkZMU6U=	\N	f	60737984-d211-4082-82c3-db904aa80ef8	Gambler			f	t	2021-09-27 12:24:24.024425+00			0	0	t	f	Gambler	\N
844	pbkdf2_sha256$216000$hmMOujJagawC$T5w5tq9o1YM054vSJV3bniDbsnyP0rxdSk9bnqTpmA4=	\N	f	48c9bada-c9d6-4581-bfd3-b0e229393512	Krishna			f	t	2021-09-27 12:24:29.993223+00			0	0	t	f	Krishna	\N
845	pbkdf2_sha256$216000$FPE7dtmJAQiY$TGoZ585UljyCS0g2H5r7D/jA8NepC/LI0WgozyqmXak=	\N	f	023aa3be-a2e5-41d3-8173-93083701ba15	Roja			f	t	2021-09-27 12:24:30.24508+00			0	0	t	f	Roja	\N
846	pbkdf2_sha256$216000$V4lKOQmsHtkz$GwForpnHtDX8wFx/16a7t5LxRczs7iNRvZOjGWeUwFQ=	\N	f	61283d99-220b-4d6e-8872-efd61ce68ecc	Mara			f	t	2021-09-27 12:24:36.110187+00			0	0	t	f	Mara	\N
847	pbkdf2_sha256$216000$DpZSWmJwMnOc$fA3jbsfyw7fe8ed2r/0Pb7NVpKYUBYaRVhvKxNRZ+lo=	\N	f	3a2c00b0-c643-48b8-b086-ec0c003a5d17	Avenger			f	t	2021-09-27 12:24:36.349884+00			0	0	t	f	Avenger	\N
848	pbkdf2_sha256$216000$dJn4cqrNRyhc$0s3BITii8Aq/br/pXOUwR50gnJ/PzuMLebE0TZgS5Bo=	\N	f	d8126355-a473-4611-b901-1a001279a08f	Number 1			f	t	2021-09-27 12:24:42.534097+00			0	0	t	f	Number 1	\N
849	pbkdf2_sha256$216000$7Woa46TynwKD$H6uBs2Ff0y9Wqlt4LYE/oMBEvuLYr1tGTBRsC4hUbUo=	\N	f	64422f5b-226b-4a41-a54b-a48630f2ec01	Roja			f	t	2021-09-27 12:24:42.846445+00			0	0	t	f	Roja	\N
850	pbkdf2_sha256$216000$NqFqNNaNzhB8$MiCGpwaWjE3KL+ZH9GJ/DFSk+Mi/bq6XWuigL42UdvA=	\N	f	dba75207-8e1c-4305-ad7c-efe53d07d0b7	Hero			f	t	2021-09-27 12:24:48.688032+00			0	0	t	f	Hero	\N
851	pbkdf2_sha256$216000$iQ7AoahpZ0qC$gFzRka9XRaCMmiFnab768BUGgSExbr8MlXOsNMA3fNE=	\N	f	93421f3b-1544-4aba-a02c-cda856c2a4a5	John			f	t	2021-09-27 12:24:48.951052+00			0	0	t	f	John	\N
852	pbkdf2_sha256$216000$kgA89bpR1Arq$GM0wgAWNQrhFeOMqiqWFLHiih0lNpZx7zDXJ6Dm07zs=	\N	f	f8fcce98-1270-43a2-8071-6d3bb9876fe7	Master			f	t	2021-09-27 12:24:55.049804+00			0	0	t	f	Master	\N
853	pbkdf2_sha256$216000$HKkcEFbBQ0aZ$In72CBy2eB5L+4/Pnkjk17tcTz8PXvM8LaITqXOWjx0=	\N	f	63c1bc19-8fe5-489a-9b06-27ad727a9655	Avenger			f	t	2021-09-27 12:24:55.306406+00			0	0	t	f	Avenger	\N
854	pbkdf2_sha256$216000$hBMUuCQHfaVs$gZe90uYjQ8ZfKQFVMmzMlnBSTJ1Fj8lmi3h9OMzNHCo=	\N	f	df5cb91f-57ac-4ac9-bc9c-22b069bb2659	Sheetal			f	t	2021-09-27 12:25:01.15341+00			0	0	t	f	Sheetal	\N
855	pbkdf2_sha256$216000$lNN3zhD8FNr0$AwVZ3NkJpQedSC1QOuCqs073+SapRtJZ+mMO0KjzVJs=	\N	f	80cc0367-0aa9-4d7f-a13e-92ce12f4951d	Loser			f	t	2021-09-27 12:25:01.400609+00			0	0	t	f	Loser	\N
856	pbkdf2_sha256$216000$FRFrltHjQWio$HVsEe/G4OX2s5qi8AMQsMuwQaYmc5yp2NU6Yq90ZhUw=	\N	f	d8701128-cffd-4bec-8e72-ebad27278af9	Akshay			f	t	2021-09-27 12:25:07.510102+00			0	0	t	f	Akshay	\N
857	pbkdf2_sha256$216000$zTJycNgjzMKN$22xHeVERF9ev4iAQPa8V9/O6FA1w+AMRK2Ah4lBpe1k=	\N	f	42a0e060-a310-465c-8c5a-9273e45f54bd	John			f	t	2021-09-27 12:25:07.749903+00			0	0	t	f	John	\N
858	pbkdf2_sha256$216000$2kJuuwLtosz3$h6kx61oEZuXGv2/XdqjeNYbwzBg7T/qioMa4H2O9414=	\N	f	94758d74-efff-4527-840b-2953987f32b9	Gambler			f	t	2021-09-27 12:25:13.715835+00			0	0	t	f	Gambler	\N
859	pbkdf2_sha256$216000$ooMnEL6fylZ4$C8syS6Kwi0ZM7EIDds1SK+A4U0zSFL3ku69TvnEDFYE=	\N	f	1e8ae940-34bf-4d0b-8f90-a7db4486b5b7	Winner			f	t	2021-09-27 12:25:13.985876+00			0	0	t	f	Winner	\N
860	pbkdf2_sha256$216000$bGQ20xX6UPAr$8ATSlLfXzVQtqdDm9guJbGaWX9iUYUdzOD+pZ9vZx6A=	\N	f	02594e4e-bcd2-4c55-8f26-fca7c79f9c91	Gambler			f	t	2021-09-27 12:25:20.177158+00			0	0	t	f	Gambler	\N
861	pbkdf2_sha256$216000$y54gq7w6EgjN$a/QfIBDcE1sYkNlOgpmJYykSurTK6KHJIKEaO4kYQAI=	\N	f	600519b7-8d11-41cc-b4f6-81c174fe242a	Roja			f	t	2021-09-27 12:25:20.446108+00			0	0	t	f	Roja	\N
862	pbkdf2_sha256$216000$jYyUsRIz3XO8$UsHxEGkMvsN8UxKu/iQAG1N93PqtCCcwY57HFB6GYdM=	\N	f	c04f8ded-abfa-4612-927b-4503295142f0	Diamond			f	t	2021-09-27 12:25:26.326357+00			0	0	t	f	Diamond	\N
863	pbkdf2_sha256$216000$eoi8P8hTLiiW$RKjdofGdW0XudWzbG+r7egKKKCvz8HaqQ+H5l3yiiMM=	\N	f	5220e973-54a6-40ab-9b19-a6c5ea3ac8c9	Number 1			f	t	2021-09-27 12:25:26.58253+00			0	0	t	f	Number 1	\N
864	pbkdf2_sha256$216000$JNEbNZeQBkbi$HW6wRtXx02q6lfNpgXcBYhhxT+f5LgPrB1p9r+RRBJc=	\N	f	c222c62a-b9cd-4ef4-94a3-c3e4f455a597	Major			f	t	2021-09-27 12:25:32.677648+00			0	0	t	f	Major	\N
865	pbkdf2_sha256$216000$UkwlmXMXZjfv$qGlZ48q5L20yA2hoXMkx4n4GGdcCMKYUo5kee4PMf5w=	\N	f	3acf39a1-d1c1-4aa4-b003-416f3a75d5a6	Shahrukh			f	t	2021-09-27 12:25:32.917445+00			0	0	t	f	Shahrukh	\N
866	pbkdf2_sha256$216000$tLJ0i0TkqSgZ$i92VGNilfhum/GPYvUd8ulAVhwXhguGXwP7EUR1PPZs=	\N	f	465510d6-c435-4b38-961f-7a77bdcfbd56	Vijay			f	t	2021-09-27 12:25:38.791656+00			0	0	t	f	Vijay	\N
867	pbkdf2_sha256$216000$pHUyglN5Cdw0$TRusZCyrYoBilgjztbLsTQjtGjuQZMA+/7ixTa4FwlM=	\N	f	acdfa03a-c950-4857-bde1-e08a2ff8e4f1	Hero			f	t	2021-09-27 12:25:39.041356+00			0	0	t	f	Hero	\N
868	pbkdf2_sha256$216000$ArQOuJXKi9v5$zx+Jt0nr4uDjFFXxuA5GVPb+Pc4Zynyp7JG1XY8eEEo=	\N	f	a01a9590-2ced-4e86-930c-639e9c99ea4f	Ruby			f	t	2021-09-27 12:25:45.221328+00			0	0	t	f	Ruby	\N
869	pbkdf2_sha256$216000$adWcF57nzIqR$+AJwNI9SKA3Ge3/pTBn5lzv7Hl0RhiRgPV6KoOXUgOM=	\N	f	108576d6-902d-4a62-a881-826e6091aad4	Hero			f	t	2021-09-27 12:25:45.4716+00			0	0	t	f	Hero	\N
870	pbkdf2_sha256$216000$Up6UXuaGCR6U$0Jh9kliZ00yXWpQ6AiuRMrKupyOWym8h+m5eUg1ArkE=	\N	f	5dfad49b-ad1f-447a-8800-0cafbd8b09c8	Gambler			f	t	2021-09-27 12:25:51.226006+00			0	0	t	f	Gambler	\N
871	pbkdf2_sha256$216000$Ke48zlFlGMP5$3VUAjtIw6QrGeP/6Cb/civggjXX5hTP3hqjtk83E6jE=	\N	f	bce04350-82f5-4aa2-b87d-70174896ee12	Sheetal			f	t	2021-09-27 12:25:51.561388+00			0	0	t	f	Sheetal	\N
872	pbkdf2_sha256$216000$c5U2xhh814QM$BTsHFl49WpwsJ4xCuIDBYiA9QM4zKZvW164SrWdYxvU=	\N	f	572e5f6f-7ab1-430e-b01e-17bac4507a48	Akshay			f	t	2021-09-27 12:25:57.61218+00			0	0	t	f	Akshay	\N
873	pbkdf2_sha256$216000$bbmZ00LtZF2L$sMMSf5z3oHUeAJXglxMW0qneQxvohONTPXte4jIZsUE=	\N	f	e27bd932-86d2-4897-8e3c-c267150fac7b	Shahrukh			f	t	2021-09-27 12:25:57.872119+00			0	0	t	f	Shahrukh	\N
874	pbkdf2_sha256$216000$Tgefwqzsw3Iy$KQVvtMb1s672bfuOLWRu1D7RXNTkJEism0PjzzHY/p0=	\N	f	4467d599-64ed-4549-9d4d-941ac57f9e3a	Loser			f	t	2021-09-27 12:26:03.833234+00			0	0	t	f	Loser	\N
875	pbkdf2_sha256$216000$sZAXlHOLYqsj$lXiu41xRqDETTtZn8MwSSdOVBRY9HSaVYmoFA03Qu2o=	\N	f	7673c847-e7a7-4203-8e4b-0159d123494b	Raju			f	t	2021-09-27 12:26:04.191474+00			0	0	t	f	Raju	\N
876	pbkdf2_sha256$216000$MjNE982NCxOh$/YI1Wj2Vg8c65vXTUArubJR1+LDElwgEZs8XgnC5ex4=	\N	f	18a58f42-45d8-46ef-9115-8016b0ee2ce7	Number 1			f	t	2021-09-27 12:26:10.092205+00			0	0	t	f	Number 1	\N
877	pbkdf2_sha256$216000$NGjhHn17K2rA$B/d9iIA4ZlnX2nle8/omSER4esMOoU6sM7lDKL6FY8I=	\N	f	a017ddaf-586d-44de-80f3-a4fc1ccaad43	Gambler			f	t	2021-09-27 12:26:10.363283+00			0	0	t	f	Gambler	\N
878	pbkdf2_sha256$216000$5IenGg4s5QBq$e07pqyPBtShfINwPo7Yiy3ZZ7t6uB2HfrCU8Tf+tC9o=	\N	f	e2293acf-92b9-4d3d-83fd-50fa3a9a9fbb	Hero			f	t	2021-09-27 12:26:16.841325+00			0	0	t	f	Hero	\N
879	pbkdf2_sha256$216000$ME2RBWFRWYOt$WPN/3PJoo6zklub9oLVdRxeYuii+ylYp/Sg74qPNFaw=	\N	f	c1a26bf5-9599-4ea6-98aa-eb0877736032	Diamond			f	t	2021-09-27 12:26:17.101382+00			0	0	t	f	Diamond	\N
880	pbkdf2_sha256$216000$AtSIkV2UFz3a$VwxrGxtB1zWmcUpHj/+APyo7vZNjB22O54DYej1Al3o=	\N	f	350e334e-43ea-4185-8f98-c16986b7be5a	Rani			f	t	2021-09-27 12:26:24.289283+00			0	0	t	f	Rani	\N
881	pbkdf2_sha256$216000$ONRiYVkREWLw$OrLtu8N3cGAKRI3fDo00bJLjrLsabY6EqKnL+Ao6/aQ=	\N	f	5de22304-3066-44c8-9bc1-55fbd2342862	Poker Raja			f	t	2021-09-27 12:26:24.539135+00			0	0	t	f	Poker Raja	\N
882	pbkdf2_sha256$216000$HZEqtbGbO8km$Pui1pIQ+VEP1lCMi0XD9m9KDVOKVOjj04Mvn8S8o9Vo=	\N	f	8577188b-25aa-4219-aad6-4e51708e64b5	Mara			f	t	2021-09-27 12:26:30.60304+00			0	0	t	f	Mara	\N
883	pbkdf2_sha256$216000$2JTPXjajg6QR$L9ws5Xejr5l0F4olcxOo3SxNNI8Cu2+p78KzqV1G5Hc=	\N	f	55d6da11-8802-46dc-a51e-c80bdc994da7	Akshay			f	t	2021-09-27 12:26:30.870044+00			0	0	t	f	Akshay	\N
884	pbkdf2_sha256$216000$wl4nugy5JAra$pHE0ZpnAgsY+tES6esfrmiNFKEK0SWJeCgRxEAXowII=	\N	f	25307565-d8f5-4dbe-a57c-db3c719a488e	Diamond			f	t	2021-09-27 12:26:36.938845+00			0	0	t	f	Diamond	\N
885	pbkdf2_sha256$216000$pSoKyboqhAXV$HYzqxvwKc8UVaarBV70NTGFWPkASdQPj7T7FaGhwXe4=	\N	f	f4a84765-4f5b-4f8f-8ae5-2f27d715a868	Diamond			f	t	2021-09-27 12:26:37.1829+00			0	0	t	f	Diamond	\N
886	pbkdf2_sha256$216000$HnS8nMFWI6JK$BhoWB6R4RzW4maviAgeZH+nLWEfwBfIR+LxwOfvOwbo=	\N	f	687371e0-1de9-444d-a53f-00bc0b5cde86	Poker Raja			f	t	2021-09-27 12:26:43.42968+00			0	0	t	f	Poker Raja	\N
887	pbkdf2_sha256$216000$9yZ0AT8c1vTi$fZLdOOskSaYeAqYY1CJjJjVWMieExjbpxeOg9Y3Y74Y=	\N	f	aa1fcf42-0797-4b5e-ba23-d54003997f7c	Loser			f	t	2021-09-27 12:26:43.696357+00			0	0	t	f	Loser	\N
888	pbkdf2_sha256$216000$AYLSRDcGr1rE$qrOULIXzI9Jpplas7PF35ua+KOn+2YLyz4NxHP7sVfk=	\N	f	207fafa4-a84c-4f29-a34c-be2728e13e4f	Loser			f	t	2021-09-27 12:26:50.034452+00			0	0	t	f	Loser	\N
889	pbkdf2_sha256$216000$KUdQosXwWgAi$9R3zwNeB/cz1zYER1QEqhGufhvhsg1LImmlCJNj6lbQ=	\N	f	d752c6de-8471-419d-8b6e-e61c5ae824a3	Vijay			f	t	2021-09-27 12:26:50.325659+00			0	0	t	f	Vijay	\N
890	pbkdf2_sha256$216000$DzZO3IavQmeI$b2usWgQxU6WtlqFRPwDRyYOvem99fzuXayO+eiRHda4=	\N	f	a6830d9d-0817-4423-a354-9991a981aae8	Gambler			f	t	2021-09-27 12:26:57.196788+00			0	0	t	f	Gambler	\N
891	pbkdf2_sha256$216000$koB6THGQBm8Q$iSNZ1BAQi0qGRZvx12iNM5W5jwQiHIXNMPnF3nG8Zy4=	\N	f	ed2bc5da-3d83-4fc7-8fdc-aa8171d8d027	Poker Raja			f	t	2021-09-27 12:26:57.531202+00			0	0	t	f	Poker Raja	\N
892	pbkdf2_sha256$216000$UqqfYfmmz3Jh$ugofRRww0EOee/Pvn0aMsJC8MJRuHmtBMN/0/92Bf7M=	\N	f	c15b152c-cfe0-4503-bcc0-b18e283bfaff	Diamond			f	t	2021-09-27 12:27:03.330173+00			0	0	t	f	Diamond	\N
893	pbkdf2_sha256$216000$dwzp1C8BZN04$Q0iVpbYWERcv5leoux/AOod0ho34r88BzVEIKMEhP0I=	\N	f	7cfe19a1-8532-4b0a-a1f1-ec9eaf23e71c	Poker Raja			f	t	2021-09-27 12:27:03.590254+00			0	0	t	f	Poker Raja	\N
894	pbkdf2_sha256$216000$xbxzyim2EfUZ$kjg8YR5ecA1yaZjHo76y9dTmE/qyPOGFL/ZxD0AlPUs=	\N	f	dc41ab74-58a2-4fa7-b479-292ee946e7dc	Ruby			f	t	2021-09-27 12:27:09.592032+00			0	0	t	f	Ruby	\N
895	pbkdf2_sha256$216000$IIY7LxBNpOdw$6pua5rfNXvX7B2hTx3J9eOtlgXE73KNFV9adJwSPd8I=	\N	f	73283c77-212c-466f-8052-9c1b1b5f047e	Akshay			f	t	2021-09-27 12:27:09.876786+00			0	0	t	f	Akshay	\N
896	pbkdf2_sha256$216000$evFRVfEFAdoW$DQm4N5GndXoMSYv9WrKJEGLNlSkLu3EmzFdW8Ue8plk=	\N	f	5ff220a9-aed7-4cac-b878-47543076b6a5	Akshay			f	t	2021-09-27 12:27:16.031846+00			0	0	t	f	Akshay	\N
897	pbkdf2_sha256$216000$kYYDkzw1buT9$rR0WuS+gRFT/GZt8a9yVa2Ljq11SnOaW7+jJBmqa/UY=	\N	f	73acba23-a2f0-440f-8835-c99172defed4	Master			f	t	2021-09-27 12:27:17.391465+00			0	0	t	f	Master	\N
898	pbkdf2_sha256$216000$XPpGLjTV59ph$YfxUAV6U/7k+1rNTAtpMM9Qq1z5ZQAbLacE+xPWaEJk=	\N	f	23c30eea-12e5-42dc-b9d3-61d9eb3c534f	Master			f	t	2021-09-27 12:27:23.638624+00			0	0	t	f	Master	\N
899	pbkdf2_sha256$216000$K3KF0IdzjBni$fwMNlrO3iNA1/HCw3s6iI74jgGAka8VksbSsnPainZk=	\N	f	eb8ec5c2-566c-4ce9-b7c4-225728abbc71	Shahrukh			f	t	2021-09-27 12:27:23.899871+00			0	0	t	f	Shahrukh	\N
900	pbkdf2_sha256$216000$dMjWOtotud1n$Zzh4rmfmZe8xFfTBhbE9qk+F1VaTqgeKfKeAKtJq+nI=	\N	f	194286d8-7e66-4437-bf53-099744e9a130	John			f	t	2021-09-27 12:27:29.646069+00			0	0	t	f	John	\N
901	pbkdf2_sha256$216000$S0jORI86fwFS$ir+nhCZBen1Jy2yFz7yNGBsUr48ZxP390WsX6jSAY1c=	\N	f	31c6616c-5360-41ec-ac79-ca571996f01d	Rani			f	t	2021-09-27 12:27:29.947905+00			0	0	t	f	Rani	\N
902	pbkdf2_sha256$216000$7gVwGEZqjCWB$TLcxPZn84JKLFKWWPlFMNz7WsfQby0uJNJ822EmMMzg=	\N	f	f78e4d6e-92a9-413e-b6c9-07c15dab3765	Loser			f	t	2021-09-27 12:27:36.007831+00			0	0	t	f	Loser	\N
903	pbkdf2_sha256$216000$bmZle4exO1oS$Z0gKhFkJ4NwVn0N5/lmE2Sj29VcgOlIHn+7FKYJEPdU=	\N	f	5f28effe-a893-4313-887d-9e9051f1c303	Poker Raja			f	t	2021-09-27 12:27:36.250176+00			0	0	t	f	Poker Raja	\N
904	pbkdf2_sha256$216000$3bQ3JmN0QMWl$6a0t2kb9kRNrbZWL3UCQvQa/ynBcDPsw0pSgETBa8cE=	\N	f	b26624ee-a018-4449-ba8f-ce36f1d3d10d	Raju			f	t	2021-09-27 12:27:42.12289+00			0	0	t	f	Raju	\N
905	pbkdf2_sha256$216000$TUOBs4fUPlQJ$dxAVU6RV/u+nNFGJdsY/j36WlPYInFVy9KOVdNv85sw=	\N	f	3c11c948-cdd2-42fc-8fb4-2adbfbf5c200	Number 1			f	t	2021-09-27 12:27:42.377684+00			0	0	t	f	Number 1	\N
906	pbkdf2_sha256$216000$dPa6qRwQm3an$AOF1ag6ZticU6VeFRNSYDXPVAvm40fw6pvavhAOOLPc=	\N	f	36c977b8-c9b8-4b3c-9356-9f1b4aceb1fd	John			f	t	2021-09-27 12:27:48.357901+00			0	0	t	f	John	\N
907	pbkdf2_sha256$216000$uAPZd7ZqA6pL$jPSKz0IDwZGna2tUAgEbodwJlVjO0TRhxTtwBNce2/M=	\N	f	7d8084f5-d2d8-4f69-984a-9673414a5a2b	Loser			f	t	2021-09-27 12:27:48.599758+00			0	0	t	f	Loser	\N
908	pbkdf2_sha256$216000$tqgA5Ux5ubnt$cnrRsXe03JhltqiZBICn/8JoceJTZ84jQSmkbiGBpLk=	\N	f	07e63b4d-bf55-4380-9c4c-8e0e7f540d7e	Vijay			f	t	2021-09-27 12:27:54.546953+00			0	0	t	f	Vijay	\N
909	pbkdf2_sha256$216000$rp4zCBx5sZaO$BRGLG0NDiQT50PiaZFgBzth1rcKHHclUAAePq+kN5WQ=	\N	f	d3ac6f64-d37a-4360-821b-45c30e726f79	Akshay			f	t	2021-09-27 12:27:55.162935+00			0	0	t	f	Akshay	\N
910	pbkdf2_sha256$216000$o4apmANQOJMP$PLmN0WgiwavSxZUvDFGIt45PeUXYLmYoeETne/KK07c=	\N	f	070f1164-b6d3-4c7a-b1a7-34a2e1e9f8d8	Major			f	t	2021-09-27 12:28:00.936913+00			0	0	t	f	Major	\N
911	pbkdf2_sha256$216000$mla1ynATzkY0$iw3BAqfp0z1Y58H79uVPcWLpn9wQrQjmsaoZzrxpm2Y=	\N	f	b2c448cc-180a-4250-a9f4-7d12d7a93bd6	Akshay			f	t	2021-09-27 12:28:01.197115+00			0	0	t	f	Akshay	\N
912	pbkdf2_sha256$216000$ZCtF55XsXOPD$IgTIp6YTbRql58ZM865QlOr1dYKeSSTEnsNXeIQIRwI=	\N	f	66e3949d-165d-4f37-9f4c-1fa6e212254b	Shahrukh			f	t	2021-09-27 12:28:07.306848+00			0	0	t	f	Shahrukh	\N
913	pbkdf2_sha256$216000$zWr8oa8zgAE8$hhM2xG/Pkt9JyA+piamECzIHzxcYY9pLYdLHuTlNvVo=	\N	f	3a870c4a-174e-4ac9-a6bc-6b9eb2a64a22	Krishna			f	t	2021-09-27 12:28:07.666872+00			0	0	t	f	Krishna	\N
914	pbkdf2_sha256$216000$SrbPwgm7q1rW$mKyg8KRaFts+0fgb0dXDaIoWQ/gylHjR6wmjPSqcUDc=	\N	f	b24d4c97-133d-4130-98d2-98f9680bbee1	Hero			f	t	2021-09-27 12:28:13.41646+00			0	0	t	f	Hero	\N
915	pbkdf2_sha256$216000$6Hbxn1fSJP9k$09MBJcDbRlhP6zskR8Ww4CxhTrTr0gKNgS1E1UYBBUU=	\N	f	cdd6f719-35ff-434e-87eb-28c460240d89	Shahrukh			f	t	2021-09-27 12:28:13.676188+00			0	0	t	f	Shahrukh	\N
916	pbkdf2_sha256$216000$CES0hmXzUYTJ$5K+TrlH+GDn2ZjBZJ4HfXzP2z+h8aO3C6GfgprH448U=	\N	f	c3a367e9-1d5f-4cee-84fc-92540680159d	Major			f	t	2021-09-27 12:28:19.377368+00			0	0	t	f	Major	\N
917	pbkdf2_sha256$216000$YorekWoEaxJ0$MDyFGE07x1q15ygvBFCg2OoWrxU7+KHLJ+2fkzUafFY=	\N	f	3b7ef966-6e9a-4920-838f-d100a9366667	Rani			f	t	2021-09-27 12:28:19.647131+00			0	0	t	f	Rani	\N
918	pbkdf2_sha256$216000$3RBOuQzWPy84$aLRFS9O0CxN8XEIeASODBeDLsHzJ1O2G5S7pWHdxpXY=	\N	f	d00ea51a-853b-46b2-9e54-17cb26ab7987	Shahrukh			f	t	2021-09-27 12:28:25.28686+00			0	0	t	f	Shahrukh	\N
919	pbkdf2_sha256$216000$03eiC6AmSUrk$mbnZH4TxiRMoOVK2A1otOf9WvXZMqkWukIzOxmC3Sk8=	\N	f	97e68b5f-55da-4635-987b-ca2a514d5aeb	Gambler			f	t	2021-09-27 12:28:25.537077+00			0	0	t	f	Gambler	\N
920	pbkdf2_sha256$216000$WmGc2rwLSFwJ$0RlYDk0Qjk4XAyGgu45TymcmhwKQ8F6IoLsbrUL5tLo=	\N	f	affa89ea-d6ae-42c9-854d-6837fada1186	John			f	t	2021-09-27 12:28:31.226864+00			0	0	t	f	John	\N
921	pbkdf2_sha256$216000$okQTD5pPMjna$7eBo0UtIwvS5hB4QJW5LggSU9MGyQzs6VwM9By3PsEs=	\N	f	101a36db-0854-4857-bf96-66f8331e2f4e	Master			f	t	2021-09-27 12:28:31.497434+00			0	0	t	f	Master	\N
922	pbkdf2_sha256$216000$I8nqztaK8VPb$kG/wXS6r4eyw9ebi38PGi/jJTuTZLhx0K4bHP2MgsCY=	\N	f	ba16eb7c-ad90-436e-b92e-0267ccc7c0c1	Sheetal			f	t	2021-09-27 12:28:37.177384+00			0	0	t	f	Sheetal	\N
923	pbkdf2_sha256$216000$epK26suKVkXt$JSU+UZEToCeqFG+k+lMoDlBmHNdfXdM5N4KN6FAr+HE=	\N	f	7f23f65d-4b29-4cf0-91c7-2d90f9154312	Hero			f	t	2021-09-27 12:28:37.447302+00			0	0	t	f	Hero	\N
924	pbkdf2_sha256$216000$tB4CGgsuVZLA$Eow7B7m3bUx0wSP5B2TEFVgRsB2jUsqE5qubI1LvcQ4=	\N	f	e53ced19-1040-42d0-9a66-242dda1407ab	Sheetal			f	t	2021-09-27 12:28:43.006696+00			0	0	t	f	Sheetal	\N
925	pbkdf2_sha256$216000$sj2FyFAtV032$HfXrPxhEQaRoKJlL7WuiLk9SN2ahGnAYZHKE0qdQj3Y=	\N	f	f9d0044c-7310-44e8-9daa-9335c9a94af0	Raju			f	t	2021-09-27 12:28:43.267057+00			0	0	t	f	Raju	\N
926	pbkdf2_sha256$216000$0kAA4J0jwAhY$UUu+T0Zp0cI45MW8OvlHYtAZni7xIzcTC0TgNWjP0vE=	\N	f	b247884c-e012-439a-a687-8df0f4b73032	Number 1			f	t	2021-09-27 12:28:49.007299+00			0	0	t	f	Number 1	\N
927	pbkdf2_sha256$216000$McQTlyB9ImGj$QyHdfS+Z0i6SyKmBeP43xfLa9q5vuxiTNfnYwR8zqFY=	\N	f	b8957207-d9d8-4fc3-86fd-403690401365	Poker Raja			f	t	2021-09-27 12:28:49.282168+00			0	0	t	f	Poker Raja	\N
928	pbkdf2_sha256$216000$O3SsDI5sieZK$6oF7IUWvewr5DBk1Zzm8CEH0vneEWSqYEebK0aQ8Gr4=	\N	f	22ad4de2-a197-4dc3-a9b8-e66f80329f9c	Hero			f	t	2021-09-27 12:28:54.86042+00			0	0	t	f	Hero	\N
929	pbkdf2_sha256$216000$bpXExnYkKgpF$xId/ricE3F4thkhahR3T+BI+nNaBSA0m2yNFDP55m5I=	\N	f	0b7d5c99-499a-4c4d-95dd-c90872a793c2	John			f	t	2021-09-27 12:28:55.110518+00			0	0	t	f	John	\N
930	pbkdf2_sha256$216000$tJv3HE5CMjWh$Rksocih93gOmRvXcA3thslQT6iKd4ONmYGkFK6b9q6U=	\N	f	e19a647b-4d61-4ab0-b5d6-9d8ffbd397a6	Hero			f	t	2021-09-27 12:29:00.827317+00			0	0	t	f	Hero	\N
931	pbkdf2_sha256$216000$fnz3YgNvEJ6L$Lrx8aRXW8uZnhqZL8z/rRffT9slP0HA37x4TK84PxxU=	\N	f	5dec50cd-fd82-4dd2-a414-ffd62da08c81	Rani			f	t	2021-09-27 12:29:01.077096+00			0	0	t	f	Rani	\N
932	pbkdf2_sha256$216000$saNFpKqLZxsH$xj+Gkf8YEsG+NwIh0KpfDu+5NUZISJiu3LXwO1vie5Y=	\N	f	2447213f-d52e-4d95-9bcd-49afd4f1b4da	Shahrukh			f	t	2021-09-27 12:29:06.711121+00			0	0	t	f	Shahrukh	\N
933	pbkdf2_sha256$216000$2KqsJmphZQ3g$ezl/odRhOmREHsVKBC8I8/T1dEtWANIo7GgIB45qgtI=	\N	f	1ec7d16c-203f-43ad-a6ba-973465cc564a	Raju			f	t	2021-09-27 12:29:06.976619+00			0	0	t	f	Raju	\N
934	pbkdf2_sha256$216000$MaSXN76b7krM$awZ9PavRpUNQLWxhHNkG4o74n71FfIMRKnwqU62IdwA=	\N	f	00f92dde-eb60-4dd0-88e8-d14519ffae9f	Gambler			f	t	2021-09-27 12:29:12.687303+00			0	0	t	f	Gambler	\N
935	pbkdf2_sha256$216000$uvP73PWdxQZe$FPwhH6HuhhCLZtZ9bnn/rZ4dIMV82gXT5ePTX/crlXU=	\N	f	2ee5f416-8e27-40b7-9eb3-6f29e9cbd741	John			f	t	2021-09-27 12:29:12.957413+00			0	0	t	f	John	\N
936	pbkdf2_sha256$216000$E6GZ3jqmxHWX$Hf+dM3Hfqy2uWHiRXtsEcBVpW46IsLrChXXML9EDaq0=	\N	f	1c3c3d7e-7ed9-4bad-ac01-ef7d4da5a7a6	Akshay			f	t	2021-09-27 12:29:18.347961+00			0	0	t	f	Akshay	\N
937	pbkdf2_sha256$216000$47vMAhaVbwfJ$hZRnCVtNJwc/K+CkQro0e6OFnM2lCegG7TaWVHoHFaU=	\N	f	7f6a77d9-62c9-4d69-b213-e055954d023c	Vijay			f	t	2021-09-27 12:29:18.60697+00			0	0	t	f	Vijay	\N
938	pbkdf2_sha256$216000$4EG4i2L0Qjey$30YgBupS/lRdHAs+eR+oH4+fF6AYaLQTswWBpyuOU2A=	\N	f	60785944-cc49-4e8f-87a1-2ae461bbafac	Raju			f	t	2021-09-27 12:29:24.240887+00			0	0	t	f	Raju	\N
939	pbkdf2_sha256$216000$hiFYZwpas7a1$LlInThpmnmoWBzRW2mP1BPfCxhPQTjSD1QtgTLVUrS8=	\N	f	cdc90287-d78f-4133-a054-09a8c2768996	Sheetal			f	t	2021-09-27 12:29:24.491214+00			0	0	t	f	Sheetal	\N
940	pbkdf2_sha256$216000$IU6jiobOd4E2$oT5Ixn7XyDuU6cqRtS2Zpbq9T3AFAbx6/abw4BAAwYc=	\N	f	f167f67d-1f3b-4993-8d6a-def58cc6d2b6	Winner			f	t	2021-09-27 12:29:29.9272+00			0	0	t	f	Winner	\N
941	pbkdf2_sha256$216000$8HzrYnQyIyDM$Nc1S9LKQgL5YWvkqTtabHmqy+G1nrXQAeW0xfTufy1A=	\N	f	0e1df159-6836-4374-b200-79459f45b703	Shahrukh			f	t	2021-09-27 12:29:30.207546+00			0	0	t	f	Shahrukh	\N
942	pbkdf2_sha256$216000$gnc6uu4Lao37$oa3wjONKkEWW7jz+w868Aq/+l39CJA6JEvOgp/Hfh5M=	\N	f	a13da57b-5196-43a0-a6c3-e261d2d4b6ec	Loser			f	t	2021-09-27 12:29:35.977132+00			0	0	t	f	Loser	\N
943	pbkdf2_sha256$216000$b8i8bjGhpsrW$XKrYj6y+YNaPsv3fPD1mYdHEF2dq36+j6Z4eQWBfwjE=	\N	f	9070e569-0a88-4928-89e2-fd5e90fd195a	Sheetal			f	t	2021-09-27 12:29:36.237031+00			0	0	t	f	Sheetal	\N
944	pbkdf2_sha256$216000$Ys7bdVbIXfmS$yBRq/nFq8Uc8qcLWsHeI6Ubcr4RaErUaGcvLh6QCy/c=	\N	f	40c68fdf-087c-43a2-be9d-c1e87c9ebfb7	Loser			f	t	2021-09-27 12:29:41.730376+00			0	0	t	f	Loser	\N
945	pbkdf2_sha256$216000$sN37hMiKnpba$hnRORaU901FP/HpW8mFzv/ZlbVMN/QcD5TRj8LRdHyQ=	\N	f	6a8406a3-cb79-4078-b335-f31fd7df216a	Sheetal			f	t	2021-09-27 12:29:41.980457+00			0	0	t	f	Sheetal	\N
946	pbkdf2_sha256$216000$M9dGiU096afs$9bFFmG6IiUQRCjUjyeGgEjVWKN8uDfjw6o5V0rDimfE=	\N	f	7b7b7df7-3d2d-48b8-bcee-10e97d9171bb	Roja			f	t	2021-09-27 12:29:47.797085+00			0	0	t	f	Roja	\N
947	pbkdf2_sha256$216000$2yT8XDGv9QUr$IKzxHh8/V3yFGmyCVgANg9DA51QNicST4dvnEknue48=	\N	f	a44ad043-2a1a-4403-b2b0-23e4b0ea81f5	Number 1			f	t	2021-09-27 12:29:48.067295+00			0	0	t	f	Number 1	\N
948	pbkdf2_sha256$216000$viGD9pSRxLsa$jDYdBZJMLmKZa1sfIdtmBBnriHlFLX423c/wdBqGsXM=	\N	f	896c58a9-d893-43f1-8025-ca4407b0a8fa	Raju			f	t	2021-09-27 12:29:53.527075+00			0	0	t	f	Raju	\N
949	pbkdf2_sha256$216000$pmeSvzkPee3W$MMNo/jbSP0CS0Rj+kfCvzBmkAZ1icn9Wzkb2zFgeydk=	\N	f	1eb78ee0-e8ef-4524-a349-a8572d5117e1	Major			f	t	2021-09-27 12:29:53.797149+00			0	0	t	f	Major	\N
950	pbkdf2_sha256$216000$R1UjV2QA9jV0$6iRfCBGNDHD7bC6xh/s3SmaG8MwLSEPAiHCD4zIWbiQ=	\N	f	2c9363ea-b883-4aec-8bcb-72fd2f3f6e0e	Gambler			f	t	2021-09-27 12:29:59.547301+00			0	0	t	f	Gambler	\N
951	pbkdf2_sha256$216000$eT1nreOMnv8w$Oz/Vcl2pSdBWfzNf2JzK8f8uvvRmWdRLrC6ZJ5i6Z9Y=	\N	f	053e5c40-c9b1-4b53-ac89-9814e484a0f8	Poker Raja			f	t	2021-09-27 12:29:59.807037+00			0	0	t	f	Poker Raja	\N
952	pbkdf2_sha256$216000$jcprLuJEupoR$rMas5bRQoDz+j6lzxQPuTOFeQtKRHFbT5zJPwbOjOGg=	\N	f	42b7220e-ac74-49d1-9979-289b60cb4696	Diamond			f	t	2021-09-27 12:30:05.151424+00			0	0	t	f	Diamond	\N
953	pbkdf2_sha256$216000$AH0foKWAx23e$LtbySdIteFlIBsnhTHZK87zWdRSQpb5W/GtF7mzfDNI=	\N	f	f5d5f3dc-22cc-4e24-9634-b56303cbcaf8	Mara			f	t	2021-09-27 12:30:05.401586+00			0	0	t	f	Mara	\N
954	pbkdf2_sha256$216000$OnwexwjLppy2$XUCNfltylYqrBu0kBlAQPoEEoE9AAyQZ+eREA1mvZqc=	\N	f	19e04555-637a-40ee-98ac-d530bdf0cc0f	Mara			f	t	2021-09-27 12:30:11.166359+00			0	0	t	f	Mara	\N
955	pbkdf2_sha256$216000$lAUmaOyb3Zqt$rLA5nBaxxqnSKSmCrSwIj7KcWnQSZua1wby7F1SnEPU=	\N	f	43d536a0-6466-4fae-8269-b6f565ff5556	Diamond			f	t	2021-09-27 12:30:11.426298+00			0	0	t	f	Diamond	\N
956	pbkdf2_sha256$216000$m7Zuop9JFnYV$oIKsJALV/p846I9hOpZ02Jhy1J99lJI0EuDFnjxbFGw=	\N	f	48c9f54f-a335-451a-808f-28aac7a77ff3	Mara			f	t	2021-09-27 12:30:16.85142+00			0	0	t	f	Mara	\N
957	pbkdf2_sha256$216000$0bp8cLbide55$qHm4icOVKjhePVT8q3liIOagIjbq3G1xJ7PKI2zTMhk=	\N	f	c5df25e2-a61e-4c96-95f8-c0a6d53afc7e	Master			f	t	2021-09-27 12:30:17.111178+00			0	0	t	f	Master	\N
958	pbkdf2_sha256$216000$7zK6A4pfDlGr$diVZUll5eDI6Uv8cwyHyASZz9LS3WnzIWxO106e8euU=	\N	f	73e8751e-3cf0-4f43-b37b-095131bf0631	Loser			f	t	2021-09-27 12:30:22.805914+00			0	0	t	f	Loser	\N
959	pbkdf2_sha256$216000$jwp5lknOhF79$ffNwC5+/pcCF2g5LcF9qq2f1cGJhxKoSyGXvbIjor5c=	\N	f	cff5afd8-a85a-435d-ab2a-200368706cea	Shivaraj			f	t	2021-09-27 12:30:23.061341+00			0	0	t	f	Shivaraj	\N
960	pbkdf2_sha256$216000$ONDaCUWGCmRK$i2VNcRfKFg9oQDNcGe94lDWP48zYqJ9qcHqmRH3WWGY=	\N	f	876c3ee3-4ee5-420f-889a-18d39ce47039	John			f	t	2021-09-27 12:30:28.476221+00			0	0	t	f	John	\N
961	pbkdf2_sha256$216000$eCGnBKjFy4GT$213bTUQcKdZhYVw1+r/9xp7IMj+PULun6gxV+EyFXkk=	\N	f	36bd2ffc-c2ad-4374-9ad6-4e05a99a4e88	Number 1			f	t	2021-09-27 12:30:28.726358+00			0	0	t	f	Number 1	\N
962	pbkdf2_sha256$216000$R5HyFdVsdDih$PhtOHV6o44ou/N32vywNDMH/irLsLX7YLCbYL+tBnMU=	\N	f	1b4dbe7b-2df6-47f2-b0a9-bba8ad70040a	Gambler			f	t	2021-09-27 12:30:34.401099+00			0	0	t	f	Gambler	\N
963	pbkdf2_sha256$216000$WfSbnRLlxtCh$w3d+F7NVjEfh6QU+4VfYYxuGhwmRISN4MXv/WmM7S/U=	\N	f	cee21165-22a7-48d1-ad5d-8afc7ea9682d	Avenger			f	t	2021-09-27 12:30:34.651325+00			0	0	t	f	Avenger	\N
964	pbkdf2_sha256$216000$m0OrVdlFcB2Z$oMhjZXubOz9FD7fczV1IFoXEl89+fRrJRLh6OvPUMhk=	\N	f	72ffd3ed-bbbf-4ec7-9ac7-2f01e14f88f4	Gambler			f	t	2021-09-27 12:30:40.061549+00			0	0	t	f	Gambler	\N
965	pbkdf2_sha256$216000$ry94xlel52YD$ct46xzimq27yB7SFjLFqJfRKkdlsh41zGHdp47+YcyU=	\N	f	b32ba5dc-a4f8-41f9-acb2-5b49d4d05769	Sheetal			f	t	2021-09-27 12:30:40.311251+00			0	0	t	f	Sheetal	\N
966	pbkdf2_sha256$216000$4DVySidXLuSg$AV3o977gGiAqzvzeZmSlCt9lGILuHyhmS3Debfs0DVo=	\N	f	5f2ecf6b-123a-4dde-9ce6-379f89997ebb	Master			f	t	2021-09-27 12:30:46.040389+00			0	0	t	f	Master	\N
967	pbkdf2_sha256$216000$4slsLciLHv8Y$fqZ89MdlJTZf75cvlcacJ865HRU1IoogiL8ccOou3pc=	\N	f	148be3e1-01f7-41b9-a9cf-17f4114d319f	Roja			f	t	2021-09-27 12:30:46.290634+00			0	0	t	f	Roja	\N
968	pbkdf2_sha256$216000$9cOaBE6tgK3E$m/Kq2f7JfzLo7nB46MOB/sTGMUI2HCSWGfHYf2mQhLM=	\N	f	6076e9d4-a764-42dd-8603-ee6d68658461	Shahrukh			f	t	2021-09-27 12:30:51.647201+00			0	0	t	f	Shahrukh	\N
969	pbkdf2_sha256$216000$FleJJSD0Rucr$H9zuvfUHq2fEseLfuSLc1t0y0QcSXzhgA5VAn60WEL8=	\N	f	698010ad-b0da-4727-8b75-86b4f9c45bf5	Raju			f	t	2021-09-27 12:30:51.902136+00			0	0	t	f	Raju	\N
970	pbkdf2_sha256$216000$HT04bmfgIax2$3LeOQiH9lO0/DeyYaJDnwcrTxKxblP44V7546HseTtA=	\N	f	e30be818-5dcc-445b-b50d-83365bd2702a	Sheetal			f	t	2021-09-27 12:30:57.613019+00			0	0	t	f	Sheetal	\N
971	pbkdf2_sha256$216000$VGyMEFW6xpag$VBiCDd8pH+kBDEKqAgGAeGxpIW/BnlBpisN0TKhiOrY=	\N	f	c7e6244d-ee0d-4228-8b65-2494a866339f	Poker Raja			f	t	2021-09-27 12:30:57.89695+00			0	0	t	f	Poker Raja	\N
972	pbkdf2_sha256$216000$EF6O11bAfmX9$j9gu6I6ju9YSHf6mAYwD1oH0nU+U/UGGYHk9ZuRVaz8=	\N	f	3775fc1f-504d-4316-93cb-ef5a3263c010	Vijay			f	t	2021-09-27 12:31:03.337156+00			0	0	t	f	Vijay	\N
973	pbkdf2_sha256$216000$4SWiNs2q0Cn1$LQyMYMahQYBu2413Fma8K/xfSJcrI2xJbehyUIMDRYE=	\N	f	6eb36d67-452c-4e35-80f6-719bec662fbd	Raju			f	t	2021-09-27 12:31:03.607334+00			0	0	t	f	Raju	\N
974	pbkdf2_sha256$216000$tQnGT6WlH5aU$RGbIcOClU6Nr9//QLiSWamSCE1bHWslBy3bDiplbbbk=	\N	f	0d286c18-7795-4602-a563-68870fb7ac05	Number 1			f	t	2021-09-27 12:31:09.306067+00			0	0	t	f	Number 1	\N
975	pbkdf2_sha256$216000$Y05yzPiTwBMm$TvWPxPJaPbBwiDWkZgKt4mJeLK3UMGHw522lyptRPZA=	\N	f	45b8607c-05a1-4dd5-ac93-e736ffd0f5e5	Akshay			f	t	2021-09-27 12:31:09.541198+00			0	0	t	f	Akshay	\N
976	pbkdf2_sha256$216000$S0we63XbeC5x$a+482nTEFPcPd/xLeDTOv8Aenx0Vbc12gvJ/F7rOPtU=	\N	f	35906b25-98a0-444f-b207-a59ad2648cfe	Roja			f	t	2021-09-27 12:31:14.941077+00			0	0	t	f	Roja	\N
977	pbkdf2_sha256$216000$xajDCEniMSwQ$f+iBHOAkxuJU8KKNKR0USbmNcsEugbJJjm+/lPixWHA=	\N	f	3de3349e-9408-41fe-ae00-be70e828c9ed	Number 1			f	t	2021-09-27 12:31:15.230966+00			0	0	t	f	Number 1	\N
978	pbkdf2_sha256$216000$wnWvj3I9mCq4$3/01tsG9HqX+D/S4xBQL3LedbqZY3Vy6XQjxcZMLIXA=	\N	f	a5c6ae64-19c7-4d64-8aed-d452aa3c5cf9	Loser			f	t	2021-09-27 12:31:20.926968+00			0	0	t	f	Loser	\N
979	pbkdf2_sha256$216000$oimu6D6AwlVJ$xHPdbRnji4OV5uAV+U1NRWeti8ux3zbOZzRSe5eMkdg=	\N	f	6a692f43-2453-4e72-9d68-e17e409ceb58	Diamond			f	t	2021-09-27 12:31:21.197026+00			0	0	t	f	Diamond	\N
980	pbkdf2_sha256$216000$HoT16Ik0JLEA$thjv15dA5x1hXuInuA4ZLrahj+C8QfyeabGkIKdHo00=	\N	f	b7cf4807-d8ad-4451-8532-667a2c6b251b	Winner			f	t	2021-09-27 12:31:26.620246+00			0	0	t	f	Winner	\N
981	pbkdf2_sha256$216000$9RKQYzoHFLqW$nTaDi6mhLARBWaGKgbwNl4X+p1aXWq3y5wR1YhD4Ka8=	\N	f	e361e11b-7019-4167-9be1-ee7e73ebafa1	Raju			f	t	2021-09-27 12:31:26.860653+00			0	0	t	f	Raju	\N
982	pbkdf2_sha256$216000$wGyVOoPfzfxd$jv/Yuwi7aEdvImkmEXIXoVUlnvnqjLwYMZ9oh2Jkv7o=	\N	f	06bc6962-69fc-4ec5-b243-fb8a19c7c6e2	Shahrukh			f	t	2021-09-27 12:31:32.581145+00			0	0	t	f	Shahrukh	\N
983	pbkdf2_sha256$216000$gqtruWe5ljkX$8I1sujFE5wOoqBuZlqmxPUFItu4rOjj2I2BL7I25lZ8=	\N	f	1cd9fb61-3f79-4f13-86bc-8ed5343f6655	Avenger			f	t	2021-09-27 12:31:32.831223+00			0	0	t	f	Avenger	\N
984	pbkdf2_sha256$216000$Gmpbog2OMmOQ$CeR4b8XMehnbzm4NalMjqs0WntwvhFh1QODK9H6dvwI=	\N	f	6a814ae5-4d63-42dc-95df-9407a7992678	John			f	t	2021-09-27 12:31:38.197659+00			0	0	t	f	John	\N
985	pbkdf2_sha256$216000$jyylolq2ajF9$UadoCUzkvxhc+i1Fg8mOOcq6X1wQJQWjKabUmBX27mY=	\N	f	0a58a798-d94a-44fe-9816-7eca8f306ac5	Mara			f	t	2021-09-27 12:31:38.477583+00			0	0	t	f	Mara	\N
986	pbkdf2_sha256$216000$FKqwASTpfg65$z8Z8ng8+n/u12X07jFa2qxDYLX1jtY8N9XqEpVHPF08=	\N	f	d70e6a4b-7b3f-47d4-abb6-1e65cfabf3b8	Winner			f	t	2021-09-27 12:31:44.151283+00			0	0	t	f	Winner	\N
987	pbkdf2_sha256$216000$Pt5IXrWwFsys$ZW4fjU7s4pCTs6F0qZ50f57+kQcNkgH05jNd+vNcdbA=	\N	f	e1e94191-c663-4b92-927c-f1e2c4a2bee7	Major			f	t	2021-09-27 12:31:44.40163+00			0	0	t	f	Major	\N
988	pbkdf2_sha256$216000$O40Q6MPHZ3aB$V58lTMy+JQ6g0bUyE96LRQ8hFhp6CzFu/EAlMK3T8bY=	\N	f	111e8411-30a2-4390-a2c2-294a84ab1f98	Major			f	t	2021-09-27 12:31:49.816264+00			0	0	t	f	Major	\N
989	pbkdf2_sha256$216000$6XpzfBGzZjYQ$7EWzOqQ7l3lnR4e2bK8T4UJpj8NBCDqkB2aIKGR9DTA=	\N	f	abdd7686-0d23-4826-940b-6e6dc8d0dce4	Shahrukh			f	t	2021-09-27 12:31:50.081079+00			0	0	t	f	Shahrukh	\N
990	pbkdf2_sha256$216000$QwKe7Zu0gg4D$2yIFkkMrn6yRJ1WH27LjliEWObhJc5rROZBLGf7bccM=	\N	f	9b697e89-a7b7-4e98-91c5-11855bb5a488	Number 1			f	t	2021-09-27 12:31:55.701485+00			0	0	t	f	Number 1	\N
991	pbkdf2_sha256$216000$JZfZBjBib9ow$jr3BPeSuPRqE3CCj1IR+5BT97kUh5X2cPkMU2PnANlg=	\N	f	ad7577cf-f8f2-4f31-a029-07401d77d0e9	Loser			f	t	2021-09-27 12:31:55.961281+00			0	0	t	f	Loser	\N
992	pbkdf2_sha256$216000$sl0gViZ5pXb2$2GiQyREX7/dojM+AS6vaZ/agP4ZJSIhj+3lpMz5nj6k=	\N	f	5a449a67-3c7a-4486-a4d7-0b860e492444	Krishna			f	t	2021-09-27 12:32:01.305295+00			0	0	t	f	Krishna	\N
993	pbkdf2_sha256$216000$wnLHiwB5Ww1j$etp5HXRfVHgujwUnO8/JFAOzPx3qGSgGVdFkmsAq3X0=	\N	f	0594c68c-ec66-487f-9be8-c9f0cf0e9c14	Master			f	t	2021-09-27 12:32:01.540583+00			0	0	t	f	Master	\N
994	pbkdf2_sha256$216000$ilQfsVdzWsF1$nsL00aZwM4c0NHDq9mmcGYGcxdLWbjOP/rJGFu/hSfc=	\N	f	027dec8f-cd5c-4f54-98c7-283c5a215d0c	Gambler			f	t	2021-09-27 12:32:07.307387+00			0	0	t	f	Gambler	\N
995	pbkdf2_sha256$216000$T1ulIM38NjI8$hhNNBNJYS7fSNLfDJo6Q5EQlJbwcC9kEGHDRO3Q1g6I=	\N	f	3bdb7c95-476e-4609-860e-278fa4d513fe	Diamond			f	t	2021-09-27 12:32:07.587419+00			0	0	t	f	Diamond	\N
996	pbkdf2_sha256$216000$Lra0iCHeCOj8$+MfptAassXyyuoL7hTMwqkhLA64/pElpZxxHG8JW7GI=	\N	f	26c07018-d7cc-41fb-90ed-82784cd79f87	Major			f	t	2021-09-27 12:32:12.977143+00			0	0	t	f	Major	\N
997	pbkdf2_sha256$216000$beUdLgurB71d$9Gny0/1e6ecHAbdv3jtmmNy4QoGzq2OdxWtCGFve89M=	\N	f	42e38a86-0ac0-48bc-8eef-798532fed883	Number 1			f	t	2021-09-27 12:32:13.237135+00			0	0	t	f	Number 1	\N
998	pbkdf2_sha256$216000$1SRwvRBOzk7i$spr+r43l4rDXxPu/XWWdkrX3zKRRfJll0+ynQrGMYtg=	\N	f	59052354-f2fe-43ce-91d7-b8a2ade6267b	John			f	t	2021-09-27 12:32:18.977347+00			0	0	t	f	John	\N
999	pbkdf2_sha256$216000$oLS5RvuyRZ23$/aXD3RY8JY4RkXVm2irs4vADzVnHQthgSXMMmcWKwbE=	\N	f	849db7b8-4e99-41cd-b1cc-b9b6934732a8	Shivaraj			f	t	2021-09-27 12:32:19.246953+00			0	0	t	f	Shivaraj	\N
1000	pbkdf2_sha256$216000$EI29Yf8P0ygo$pJnbJNO4M7GFehJ0o9kfq7MGu9UMEjO7SjRL25c5mwI=	\N	f	efeb0613-981a-4b0c-9f52-944237ee2cdb	Krishna			f	t	2021-09-27 12:32:24.636801+00			0	0	t	f	Krishna	\N
1001	pbkdf2_sha256$216000$Nf4sV1DLXxqi$YN3RHJGvobbiyDr+cROdG9MlKvLEvhZYTdDpvMGsKZk=	\N	f	4b18ca65-54f5-4544-b8af-6663ae31e634	Master			f	t	2021-09-27 12:32:24.907189+00			0	0	t	f	Master	\N
1002	pbkdf2_sha256$216000$uWMQQzYdmaiI$MRi2i+VvQYEBu8TmgOu+hgkOEQhfJMx+T+g1GYQJ+pA=	\N	f	bb4aa8ec-f08a-4aa5-a0b4-93b4de3efc5f	Roja			f	t	2021-09-27 12:32:30.536233+00			0	0	t	f	Roja	\N
1003	pbkdf2_sha256$216000$qEpDY92A24cl$vcw4F0ZE7ky4KNjRQH3mknRh7nNig7cDtTkzyrQm1bk=	\N	f	c8e2d84c-4a80-4977-aa1a-a10dc6518668	Roja			f	t	2021-09-27 12:32:30.806361+00			0	0	t	f	Roja	\N
1004	pbkdf2_sha256$216000$eD8q2suFjhQD$klu2EjrGTiQOxqPzlQMySZSvzoApJSgmuGAYi01zWIY=	\N	f	2efaefd6-d4f0-4da3-bd59-902177bf9999	Krishna			f	t	2021-09-27 12:32:36.208546+00			0	0	t	f	Krishna	\N
1005	pbkdf2_sha256$216000$DgZwhYUCE50O$ZPqswGgoQnYQo7x1ybpc8aKfyfhX6rAkRACWrxBi+hg=	\N	f	baa36b85-c7fe-4ce7-a627-e54f0412366d	Ruby			f	t	2021-09-27 12:32:36.47743+00			0	0	t	f	Ruby	\N
1006	pbkdf2_sha256$216000$Uqb4SY4JMm1J$13L2BB49kWQXJmDGp2yYzkCNtYvikUruf+X0bjEDVes=	\N	f	0ae2da43-669f-47c6-adc4-a2f6637246bc	Ruby			f	t	2021-09-27 12:32:42.207062+00			0	0	t	f	Ruby	\N
1007	pbkdf2_sha256$216000$jxapyXqic5qi$8ZUr/nMY59ONbDtTZ0ranalbChQU068OIwWz0++eveY=	\N	f	300d36ad-7b5d-47b5-b6ad-969c521f377f	Vijay			f	t	2021-09-27 12:32:42.513999+00			0	0	t	f	Vijay	\N
1008	pbkdf2_sha256$216000$sBm8P7yafWt2$u7wLh0IvE4jEj8wYu7UTtBL8HPw0+BFLEGExfRrMVV0=	\N	f	32768555-e506-4966-8005-7059609e631a	Ruby			f	t	2021-09-27 12:32:47.91711+00			0	0	t	f	Ruby	\N
1009	pbkdf2_sha256$216000$ovUcIOzZ1jEA$Zb8ccY9V3Gbs9BOZiFjong4mEMpYvui6sJKVp9jHnqI=	\N	f	8f64bd4a-a3b0-4d7e-9b53-884cc633797f	Akshay			f	t	2021-09-27 12:32:48.187212+00			0	0	t	f	Akshay	\N
1010	pbkdf2_sha256$216000$NM4EV4zLP3Dz$7UvDvpVy0R06/K8uSNeRwhwwi/ODpxz+O5e+VE0fWEs=	\N	f	875013f1-731d-401d-abd8-21fe561701ac	Major			f	t	2021-09-27 12:32:53.981262+00			0	0	t	f	Major	\N
1011	pbkdf2_sha256$216000$TrnTyCNe1DzI$qM0W3I3SC6L/hU0MK1OeQ+JbzMsqU2z/mes74JEzP3g=	\N	f	2c1fcc4f-19d6-4e9c-b28b-20162b2ce258	Hero			f	t	2021-09-27 12:32:54.22153+00			0	0	t	f	Hero	\N
1012	pbkdf2_sha256$216000$DJsfE6XhVkVL$StcbTBFON6eD6Ws7O8QyV9fx54nXhC3/QXHxr15GHFM=	\N	f	73a848d2-52e2-4b28-8a7b-2fb88a586a1f	Sheetal			f	t	2021-09-27 12:32:59.681418+00			0	0	t	f	Sheetal	\N
1013	pbkdf2_sha256$216000$CtigVHQ8hLPz$zrbNiS0YezoB5houUm6X+BZk5WMbpIRBCZvYh/9N1VI=	\N	f	52ed806e-29cc-447b-a653-39ea32df0888	Shivaraj			f	t	2021-09-27 12:32:59.920993+00			0	0	t	f	Shivaraj	\N
1014	pbkdf2_sha256$216000$IkmoKny2zqrO$oPxBOMQFzYl2SjG4RCDEnD70akJ92W55+Kb7/a+M9JE=	\N	f	74dc95b6-135e-459e-840f-2c2fbe56b4b9	Avenger			f	t	2021-09-27 12:33:05.386187+00			0	0	t	f	Avenger	\N
1015	pbkdf2_sha256$216000$4TsNGgdXvm2C$H/Mvl0YS3uzM/JE7PQP5oxAnXLLs3S1vg60TiMAwIVI=	\N	f	523bd096-b32b-43ba-86fa-73bac067358a	Major			f	t	2021-09-27 12:33:05.656258+00			0	0	t	f	Major	\N
1016	pbkdf2_sha256$216000$oDRivy2eTIj5$0G+gRKCUDP5JJfhib6TrHJVuefE4TQYjHk5aKNjLE90=	\N	f	acc9391f-bce2-41b9-a191-80fed343ab6b	Rani			f	t	2021-09-27 12:33:11.417283+00			0	0	t	f	Rani	\N
1017	pbkdf2_sha256$216000$sQChOJozNtrz$apibjr6068/vwzXSZgyvjcZsr0J2fU3pN3zjoVBvYyY=	\N	f	edad7c85-e232-4361-9568-ded95dfd86e3	Gambler			f	t	2021-09-27 12:33:11.677038+00			0	0	t	f	Gambler	\N
1018	pbkdf2_sha256$216000$B6CyhcOdSmp7$6pzHTKTD2vBpB79Sl1nizrnOVr07hTWxZtp14kq8II4=	\N	f	13558d0b-942f-45f7-9393-1654d113eae6	John			f	t	2021-09-27 12:33:17.117239+00			0	0	t	f	John	\N
1019	pbkdf2_sha256$216000$ngqG028re6E1$OCyMnH4lAvaReUGH/fUcvOHKShkct2oXkeH0ZlXz8Zc=	\N	f	cb673276-9dd7-4277-afca-1f8fcae01075	Winner			f	t	2021-09-27 12:33:17.388159+00			0	0	t	f	Winner	\N
1020	pbkdf2_sha256$216000$7MloK7CduzFV$i2h+LfpNjt+s60e9wFDeZDOp68UbRJbLyuHm9MoFHNQ=	\N	f	0f8a2609-0c18-428f-98a9-6452c2bba11c	Major			f	t	2021-09-27 12:33:23.176962+00			0	0	t	f	Major	\N
1021	pbkdf2_sha256$216000$tt67heXPpHRJ$U2RTsjjd66W5stitvSmI3ENZ3//mQJtvdeiyKO+EtzY=	\N	f	9fd03307-a055-4049-818a-d7924589d24d	Krishna			f	t	2021-09-27 12:33:23.446912+00			0	0	t	f	Krishna	\N
1022	pbkdf2_sha256$216000$zOn2Y0LPuBU2$CeJounoNqdy1t2PGwNZdkFHWKilXVWYXpzkeVD7eFJc=	\N	f	8604519e-0e37-438e-a662-e2cf498b7b7a	Ruby			f	t	2021-09-27 12:33:28.926609+00			0	0	t	f	Ruby	\N
1023	pbkdf2_sha256$216000$TjIas7uOj2kg$8eDdrJc0tR3pkJvXc3Ru/+7qvvvJhSbJCuiFcQbtfG8=	\N	f	b36391aa-9245-4c09-8de7-f83cb0aa2a61	Winner			f	t	2021-09-27 12:33:29.176158+00			0	0	t	f	Winner	\N
1024	pbkdf2_sha256$216000$gfSfuHtDUTfP$GCwV+p4h37YdTBPRue4byHCo/fAtj6Le2BeSkvg8ERA=	\N	f	fba18651-7e64-4fe6-8597-925c15940bcf	Avenger			f	t	2021-09-27 12:33:34.996259+00			0	0	t	f	Avenger	\N
1025	pbkdf2_sha256$216000$wSUMPmWSQSkI$UQHFQgfz1KZ4BZoht2ed0PCmdGfmpK7N0hJH2GcuJDs=	\N	f	f94a997c-aa7d-4740-a942-14d8e9d19c75	Poker Raja			f	t	2021-09-27 12:33:35.246116+00			0	0	t	f	Poker Raja	\N
1026	pbkdf2_sha256$216000$cDsSkXl14mfj$MvpO1eTOREkxbVVkZXuIfquz4BCy0E5Z+O501oEMPLM=	\N	f	a79202fa-8647-4162-8955-9db90f73aa0d	Hero			f	t	2021-09-27 12:33:40.6561+00			0	0	t	f	Hero	\N
1027	pbkdf2_sha256$216000$9ux2I7qAhV2o$31G7sMFlqcYzUwBaHTMy9V1AGYGeI5DJCZx+sdioa0Y=	\N	f	768be94e-a2d4-44fd-a12e-41eb29d07bbc	Rani			f	t	2021-09-27 12:33:40.916508+00			0	0	t	f	Rani	\N
1028	pbkdf2_sha256$216000$o1v306IeKzaG$W7alWw/Bte1Y5+XF4RwE1E66LB9NmHCRJD6lq/wo6rE=	\N	f	9ee70a2e-531e-411f-b7d0-60b4e9dc94a0	Akshay			f	t	2021-09-27 12:33:46.696142+00			0	0	t	f	Akshay	\N
1029	pbkdf2_sha256$216000$DXLD5ImsB7QQ$HCYVD/Md5Wc/r2ntvhFVI1iyNaLTiOsxtXJttj2e3+k=	\N	f	7fcfb8d7-f5c5-4853-bc50-44ddcfaf3424	Raju			f	t	2021-09-27 12:33:46.946145+00			0	0	t	f	Raju	\N
1030	pbkdf2_sha256$216000$Gc2BA0MCKoQK$DQoQC2ZtCWe5j+tztbcdCszse+z+2Tbta9GygbEOqGc=	\N	f	3b029f10-1049-49e5-987c-dc04aa2ad7ff	Avenger			f	t	2021-09-27 12:33:52.27128+00			0	0	t	f	Avenger	\N
1031	pbkdf2_sha256$216000$c8bVthLnrJ28$jarx6M71E/qx9zTCPmdPO0LgSGhrehjJDsWxpBHTZjw=	\N	f	14cc323b-6a7f-452a-b653-e883dc9ee9a1	Loser			f	t	2021-09-27 12:33:52.571107+00			0	0	t	f	Loser	\N
1032	pbkdf2_sha256$216000$0FWFDdHxk7jH$dRmp1yrvqJ8uNUAIvm8nkQW+3zXXhWtrIbB8EkFAJ/Y=	\N	f	d77fee99-ecef-4839-ac15-feaec56eacbf	Raju			f	t	2021-09-27 12:33:58.277058+00			0	0	t	f	Raju	\N
1033	pbkdf2_sha256$216000$EFBWLy6yIeDo$1GQ3jq4Dy393C9+BGzAHkupi/8ft1jHVGhp568RiGiw=	\N	f	09e3db0b-f181-44ad-aebc-1395db7ea95a	Raju			f	t	2021-09-27 12:33:58.552355+00			0	0	t	f	Raju	\N
1034	pbkdf2_sha256$216000$N4M13Bly0AMY$AB+In9P+uK0WEwHR96plxCNpZ75H8XVR0yHkbhWIpCU=	\N	f	8f8b2f1b-fe55-4377-bd5f-39da5d03ebc8	Hero			f	t	2021-09-27 12:34:04.036431+00			0	0	t	f	Hero	\N
1035	pbkdf2_sha256$216000$nqxBq9ugAaCe$u85CQTTKcHcT+mBdJuy2vwCaWH2EEytea0HUV67iWrM=	\N	f	4e468741-908a-4a55-836d-f269565e8ee1	Sheetal			f	t	2021-09-27 12:34:04.286285+00			0	0	t	f	Sheetal	\N
1036	pbkdf2_sha256$216000$YqiqUdaWLtB2$LjJLY23GHjXAbXO/uNyZHNxVVrynhM92vN9cqNH4ei8=	\N	f	08665cd0-d140-477b-ac87-a435a1f86cdb	Rani			f	t	2021-09-27 12:34:10.126222+00			0	0	t	f	Rani	\N
1037	pbkdf2_sha256$216000$AjX1IO3WRDmi$KS1XIRmUFfTKSWbByRZ+ESidrnAUyNCa4kpjcfiuNas=	\N	f	85af4e6e-232e-468c-9e82-7629e639755f	Master			f	t	2021-09-27 12:34:10.416259+00			0	0	t	f	Master	\N
1038	pbkdf2_sha256$216000$Lq4JZtWeGc9q$OWIcvfEYzaGlOLN47/m/ZNN9yisUKoTw+ETFtsF/jGk=	\N	f	3af17b88-eaf9-4f5e-be8d-47db6048bdc2	John			f	t	2021-09-27 12:34:15.701954+00			0	0	t	f	John	\N
1039	pbkdf2_sha256$216000$TJz1V1SlWhSu$Dwi0HXAOmKGsG2kgFfksdoqX/LmWKPtuwFu5CL0Ikx8=	\N	f	8d822417-f0a2-4b94-8472-4423f61a238f	Major			f	t	2021-09-27 12:34:15.950782+00			0	0	t	f	Major	\N
1040	pbkdf2_sha256$216000$WMlRgOvwnqOh$AM71YeiFj8/evOZ1TBjOlQc3r40aYzryzPQUOppTQHo=	\N	f	0dcf1982-7fc1-4f16-afb4-b36e0098c00b	Akshay			f	t	2021-09-27 12:34:21.691175+00			0	0	t	f	Akshay	\N
1041	pbkdf2_sha256$216000$cmQ7CqjFwL83$BNH7RByFQleK0KEVj17zPZvbvurqtMkqh2ARo0/lsnE=	\N	f	f71b7d2c-8a45-4de4-9352-2491ff638a13	Sheetal			f	t	2021-09-27 12:34:21.941402+00			0	0	t	f	Sheetal	\N
1042	pbkdf2_sha256$216000$3E6HNEi74C8H$C5Ddh4QcbJFqsgCPUUv+MBKgjW8PXeohwkQ8xCtKdog=	\N	f	b5d9f142-de10-49af-8dbc-848e43f879e3	Loser			f	t	2021-09-27 12:34:27.305304+00			0	0	t	f	Loser	\N
1043	pbkdf2_sha256$216000$PHaUL2442wgD$+uMSjg8MnkB6GbTcQn0CdYL+CbFO/ITjXeROCgwDt/s=	\N	f	888ad869-ae7e-4123-90ad-7901c8706087	Shivaraj			f	t	2021-09-27 12:34:27.550368+00			0	0	t	f	Shivaraj	\N
1044	pbkdf2_sha256$216000$LgI379XOe6mf$sdHabCXqfQz/ZPpji/LuVsn5UIhMyj+vYc2d1F0SkmU=	\N	f	5c1c6c63-d008-4169-8822-152d6f6bbc67	Winner			f	t	2021-09-27 12:34:33.317237+00			0	0	t	f	Winner	\N
1045	pbkdf2_sha256$216000$5BBho8QyiZ0O$OZdb0P4gFDSj1tYvbQSbTVmptpgHRIaCzeEVVJL3hII=	\N	f	bacbf382-1665-4a60-9e5c-211bf5325595	Roja			f	t	2021-09-27 12:34:33.566997+00			0	0	t	f	Roja	\N
1046	pbkdf2_sha256$216000$WEnXrbJndIlE$EHFt7M5N0ky1VES8jXr7oO0f6pQkybofjdta9L51cyw=	\N	f	bd23bdc7-90b7-41b9-8d43-1f4ee3df6fb5	Roja			f	t	2021-09-27 12:34:38.971736+00			0	0	t	f	Roja	\N
1047	pbkdf2_sha256$216000$IClYcFTwk7Qs$z1AUqp3/u93i3oxzKGpKcDA3D/dwv2pFg3RVn0CyKr4=	\N	f	0adbb89a-b9a7-43d9-8ff8-a7abe3d137d5	Hero			f	t	2021-09-27 12:34:39.252062+00			0	0	t	f	Hero	\N
1048	pbkdf2_sha256$216000$srlTCx6w73SX$//Hv8nFcerfXVPLSa312I7gzH9uNNidUxQHR/R8Ws5Q=	\N	f	d1f09763-b660-433b-8aeb-2fa7cbbc1cf8	Ruby			f	t	2021-09-27 12:34:44.901385+00			0	0	t	f	Ruby	\N
1049	pbkdf2_sha256$216000$37tF7FZHzlci$CYPykFOm54vlO78+c39WJLlTiOg4Xkmi9XOfWZdlqTg=	\N	f	0e68f845-2912-4667-a689-c192b15d0178	Shahrukh			f	t	2021-09-27 12:34:45.171418+00			0	0	t	f	Shahrukh	\N
1050	pbkdf2_sha256$216000$eeiJrBZc338p$zX6fy9eXTtP9MtVRopwfcEWXlrQm5oOa5CC4xfKQEqQ=	\N	f	994c376c-cae8-47d9-bf56-08a993bdf096	Krishna			f	t	2021-09-27 12:34:50.677006+00			0	0	t	f	Krishna	\N
1051	pbkdf2_sha256$216000$XJwQybywv827$yhQcFPrjTVmTqGW0dMUqjmXS0KC0yFi6g6O0qyganUU=	\N	f	d6bb0618-a9e7-4e9e-8c80-806f29ad885f	Vijay			f	t	2021-09-27 12:34:50.936899+00			0	0	t	f	Vijay	\N
1052	pbkdf2_sha256$216000$HIAkm6ZdmfS2$D7TpVRwgjuMDg/fr/h7pZbcyHLwnlfbSYf56/2I/qbM=	\N	f	0f217a52-7f93-4bc7-b63a-3992a16fa3f7	Winner			f	t	2021-09-27 12:34:56.666529+00			0	0	t	f	Winner	\N
1053	pbkdf2_sha256$216000$E8xX45JUCXut$iTJPXKoGSNaVqJxjFb3TjYFU5ilWHamgZFzpjEBt8rQ=	\N	f	e38711be-e35f-487c-8d81-cc68d2fe33c3	John			f	t	2021-09-27 12:34:56.916228+00			0	0	t	f	John	\N
1054	pbkdf2_sha256$216000$zFaA4U1YmMqu$N/ouYOIyX6NNQkXQzdG/uqVnftGMKmHJOD6o+RVvjGQ=	\N	f	ba3efdaa-bb2f-42bc-a62a-8d7cf219edfa	Raju			f	t	2021-09-27 12:35:02.30113+00			0	0	t	f	Raju	\N
1055	pbkdf2_sha256$216000$FxNlWu4xdLzC$qepM29YLCc0GuUgEbz4+LFPqVHEW8FJbUkwZBf/MSgI=	\N	f	11085dd6-1abe-4562-8f70-d5a8f56bd55e	Number 1			f	t	2021-09-27 12:35:02.576381+00			0	0	t	f	Number 1	\N
1056	pbkdf2_sha256$216000$GZc3wvN4sVx9$lxP8CG1mWo6/cScI+uX0n47po9c6+QG8bP+DEP/juZc=	\N	f	9aacd186-3b2b-42cd-91b5-a2dc4b953795	Loser			f	t	2021-09-27 12:35:08.300402+00			0	0	t	f	Loser	\N
1057	pbkdf2_sha256$216000$IcT5jH6r5MOw$3Fa4Scof5NDJ8tJR7FBrXy7IfnhhP5AEYr36elNyNxs=	\N	f	0dc3a712-630f-46a2-bb48-76bb59f49d4a	Major			f	t	2021-09-27 12:35:08.550375+00			0	0	t	f	Major	\N
1058	pbkdf2_sha256$216000$KNFVMyi8yUw2$LQ1WVvlmY1Jn/Aih+L+xxTf70B4mIJtoGA1USqwsut0=	\N	f	b542ea66-5233-4667-901b-40674734006f	Roja			f	t	2021-09-27 12:35:13.891587+00			0	0	t	f	Roja	\N
1059	pbkdf2_sha256$216000$nDEkyFCQueJZ$YuV1WEOpQNb/9RVn8OX8vC0NGE1pLvfdlM5YjN8USPA=	\N	f	d0f5c226-f16e-4447-9225-2874306705b3	Rani			f	t	2021-09-27 12:35:14.141473+00			0	0	t	f	Rani	\N
1060	pbkdf2_sha256$216000$1I3nhDdsABgY$d90yV4ZEvsRNeHTij3BNQ8dseJkHvtm6+RlPtMbyI8Q=	\N	f	f07ec84d-5166-4bb7-b526-935c734df79b	Hero			f	t	2021-09-27 12:35:19.817368+00			0	0	t	f	Hero	\N
1061	pbkdf2_sha256$216000$FVBVLkUAXaSA$4RxFXQFu4X2YeTjdRvRzmxHoErjrhlL+zjs9Lao9b+A=	\N	f	bdbc6e08-1757-46ea-83f1-518b372b6389	Akshay			f	t	2021-09-27 12:35:20.067726+00			0	0	t	f	Akshay	\N
1062	pbkdf2_sha256$216000$sDSyW2l28OIF$k9pI/ZJQbrzNUkseWafgqkPAxUTlrHzMRuJs8o2YX80=	\N	f	b18a99d4-cd28-4354-ba94-8ca31aec8444	Master			f	t	2021-09-27 12:35:25.497085+00			0	0	t	f	Master	\N
1063	pbkdf2_sha256$216000$b06yzxymNsKo$jIbwvVgj4+NHpt/kWL5f+IpuUFHcf5Wm8EfPcxjanrU=	\N	f	f3d8a06f-bcf4-428a-8292-11a917001237	Poker Raja			f	t	2021-09-27 12:35:25.767154+00			0	0	t	f	Poker Raja	\N
1064	pbkdf2_sha256$216000$1alh8rx9hcff$+KgiJMwc1Yi2bYwBNGgiT7etkf+ndJfwWkb8MKg5t8E=	\N	f	919877de-a4d5-40d3-81e5-d3b65e9fc0cf	Gambler			f	t	2021-09-27 12:35:31.15686+00			0	0	t	f	Gambler	\N
1065	pbkdf2_sha256$216000$n5YlBSqUt8Wl$uuaLuG87tJe6a/+w6Ief7oshUIgS0Ozvm9c7eFZbXnc=	\N	f	c2ff041b-8e11-4a7d-b358-5c4bc9ccf489	Mara			f	t	2021-09-27 12:35:31.43174+00			0	0	t	f	Mara	\N
1066	pbkdf2_sha256$216000$ShQEzaD3VaIQ$fa/n4UsZU5VDg1keNvAap5jbVBf6jtaj7itOnVxnC3c=	\N	f	eea10f55-3dc2-4671-8f4f-efe14fab8a6e	Loser			f	t	2021-09-27 12:35:37.256917+00			0	0	t	f	Loser	\N
1067	pbkdf2_sha256$216000$He1fTkanBlnw$dXxrgDPIrlctg3gHbWyo9wLiKVRvccoeQDh9pXPH38o=	\N	f	13b5b08c-9134-466b-b90a-71805a54bebe	Akshay			f	t	2021-09-27 12:35:37.516892+00			0	0	t	f	Akshay	\N
1068	pbkdf2_sha256$216000$7U5zye7TcK9v$1fQOfqOkktSNSIQeRHc6NxxdQNJb90+5Iw3z9hXofko=	\N	f	34f15339-363f-4fe6-b8c9-d1e0e459f7e9	Diamond			f	t	2021-09-27 12:35:42.926351+00			0	0	t	f	Diamond	\N
1069	pbkdf2_sha256$216000$zSGvCqVIhnUn$zObNxMsV47adt3JnAPJFbIuQawSltmfbsQi+iYjz5ls=	\N	f	b741afee-afde-4940-ada4-16eda2d15799	Sheetal			f	t	2021-09-27 12:35:43.176204+00			0	0	t	f	Sheetal	\N
1070	pbkdf2_sha256$216000$YBmef8btAmKg$BrBz2UeRbn8LmCle+CsGseJ88RdR+HJFW9O4PuO/2c4=	\N	f	3e16aa67-e23a-445b-89d8-a3a87b9a08d8	Rani			f	t	2021-09-27 12:35:48.867477+00			0	0	t	f	Rani	\N
1071	pbkdf2_sha256$216000$FrPfvrydiUNo$Er3/PIiRdoDKW19Rrdgh6Ma9bgeFSjUYDz4ldDKf384=	\N	f	e0dafef6-cfcf-4bac-bf92-d789f71778c3	Raju			f	t	2021-09-27 12:35:49.122146+00			0	0	t	f	Raju	\N
1072	pbkdf2_sha256$216000$qqw3JHBWEELh$SmdZuIbdwa+TbLyO4txDXTouF0ip4dZbuXLu19QmrJQ=	\N	f	2729b744-1033-4d14-a463-d44b8c0faae6	Number 1			f	t	2021-09-27 12:35:54.448049+00			0	0	t	f	Number 1	\N
1073	pbkdf2_sha256$216000$Ntp4WzIS2B8Q$fKAD+Gu1wUkf9cfAc8fPzBcF+MRwFJc4hTLlg8ix9ms=	\N	f	f32967e8-4579-4d15-af9a-43bd554e8b25	Mara			f	t	2021-09-27 12:35:54.717111+00			0	0	t	f	Mara	\N
1074	pbkdf2_sha256$216000$5WMcHx8yj73m$vpuVxqy1G+9EHY+pmvqq8AdRcrnyJmRtLps8e7YpMD0=	\N	f	75876ff7-1be1-452d-81f4-8cb36e448712	Master			f	t	2021-09-27 12:36:00.457147+00			0	0	t	f	Master	\N
1075	pbkdf2_sha256$216000$hKyWbvucxYhH$wS7WJ4JpNNgRwSXOeQSun29VBlmCPx+2nP9Q4gh7asQ=	\N	f	97ccd04b-c557-4c22-af97-719a83ed3940	Ruby			f	t	2021-09-27 12:36:00.717421+00			0	0	t	f	Ruby	\N
1076	pbkdf2_sha256$216000$cHP3pi46gDiD$uFgLIrI7TjE9BxjQvIP4sPzgN75FEwMmEpxq5DVv1rg=	\N	f	325736da-3ab7-449f-a6c5-879137e1354f	Diamond			f	t	2021-09-27 12:36:06.041137+00			0	0	t	f	Diamond	\N
1077	pbkdf2_sha256$216000$7N5wHwaXlyBQ$IzROF9yTcTeyti5+sWeyAdWvttDvBZZlfaIUxfrVMl0=	\N	f	f5a5c211-d91e-44f8-a768-2f7e35075d34	Poker Raja			f	t	2021-09-27 12:36:06.29117+00			0	0	t	f	Poker Raja	\N
1078	pbkdf2_sha256$216000$k9NNvq1CDOEp$X0Hh+b5fphdTRJv9l1K0FMC94BJmEl4racSPpkD/j4s=	\N	f	9a96c8c5-570b-4adc-8594-8b38a3a4a5df	Shivaraj			f	t	2021-09-27 12:36:12.021339+00			0	0	t	f	Shivaraj	\N
1079	pbkdf2_sha256$216000$YsjKOekoeL3e$9i2BuQg1q03mdfzVcN2k1hNl95YBErJhJiJ8ueyf/RQ=	\N	f	8dfa8d93-e256-491e-b28e-76a54f77c7f7	Diamond			f	t	2021-09-27 12:36:12.260966+00			0	0	t	f	Diamond	\N
1080	pbkdf2_sha256$216000$T2g9Vj4vcbVv$4cvqfVwqJkF4ZoBvRGncpIUik70L+T4NuJUNLJO4u00=	\N	f	38f213bb-8a67-478e-984c-56aee000e4e6	Raju			f	t	2021-09-27 12:36:17.687084+00			0	0	t	f	Raju	\N
1081	pbkdf2_sha256$216000$YZkgZitkbTe6$+kOXfdASMO3EqNFW6KKtRtQ7s6Jyipmr5Pr5xHHogu8=	\N	f	5ccee26d-7f49-476e-80ad-4d2781c79287	Gambler			f	t	2021-09-27 12:36:17.957176+00			0	0	t	f	Gambler	\N
1082	pbkdf2_sha256$216000$Z2E8atQmW9sH$Y18e47/cMf83L44g+PHawyhdy2ql5XWiJoJTCfvNVBA=	\N	f	e6b0dd86-dd4f-4842-b1d0-bd6b6a7e10ae	Loser			f	t	2021-09-27 12:36:23.607314+00			0	0	t	f	Loser	\N
1083	pbkdf2_sha256$216000$cJptJHm03vyC$N6Y728lEdH92SQR3XdcoRWQK7IVrD1osdimysYeHPos=	\N	f	2ba7a87d-e42e-4506-8bb5-83580c52d904	Shahrukh			f	t	2021-09-27 12:36:23.887488+00			0	0	t	f	Shahrukh	\N
1084	pbkdf2_sha256$216000$dnKIK0EPoJmy$9cVL+fWeD77zhbMoXnBHIbtNByw+yGzS4ZIaISAmPkY=	\N	f	4f2650bd-48ce-4349-9b6e-e116b365a9fc	Gambler			f	t	2021-09-27 12:36:29.24071+00			0	0	t	f	Gambler	\N
1085	pbkdf2_sha256$216000$4lgVBQsLgrzB$LqvG1Bbo1oVjUaGoug1Vl5yYgUUPZbOeH0A5jeKw0po=	\N	f	336df24d-cb22-4e52-8bf2-485ab21202ba	Roja			f	t	2021-09-27 12:36:29.475699+00			0	0	t	f	Roja	\N
1086	pbkdf2_sha256$216000$pj6c4aeVWd0E$iA9tQk8cAI5igmChkXjbVA1+WDbCWwf8yT6DUYJp/RA=	\N	f	56e293ce-1bc4-419d-a314-182aafd61daf	Shivaraj			f	t	2021-09-27 12:36:35.337238+00			0	0	t	f	Shivaraj	\N
1087	pbkdf2_sha256$216000$kdxCqa6UuDrY$ALNpYjS6GhgCTjxa0hDdhM6hxOz0GFVhAZad1wIZScQ=	\N	f	4616dccc-567b-46be-be3a-7014cdf1d10c	Ruby			f	t	2021-09-27 12:36:35.597148+00			0	0	t	f	Ruby	\N
1088	pbkdf2_sha256$216000$rQdeZkaJHKAl$wFijYYK808Im6QpuYV6tSDbE7qEMWJYfMRS+gkVvDsc=	\N	f	e9e8bbd3-c608-4250-91d3-42020def9f22	Raju			f	t	2021-09-27 12:36:40.95228+00			0	0	t	f	Raju	\N
1089	pbkdf2_sha256$216000$c22Tzig7AONZ$nq6dAFqS0FFpQW28bYFlY4ffX2yNzx0zgvyU4ELORIw=	\N	f	9cd53c74-fb3c-4441-9ddc-72b612f37c9b	John			f	t	2021-09-27 12:36:41.207193+00			0	0	t	f	John	\N
1090	pbkdf2_sha256$216000$nqZLywAWkA4F$rir+khXSu6MHb6Q8JTY8zYGcFs93yfV063HFWZpd6C8=	\N	f	40a48c58-f924-4e3b-9adf-07bc916ec781	Raju			f	t	2021-09-27 12:36:46.951108+00			0	0	t	f	Raju	\N
1091	pbkdf2_sha256$216000$58lTd55tqs1x$er1LBczuXjlXH2DPqlHIv97CJIBOIXxC+Z1lDQTAgtQ=	\N	f	9e56b80e-e6c8-4b67-a113-00ef463b9772	Raju			f	t	2021-09-27 12:36:47.211411+00			0	0	t	f	Raju	\N
1092	pbkdf2_sha256$216000$L3DQLM9TLmxU$rjreShAjos2RjOfhkn4zWO5Ye/z2Zwo5plml0IRPZy8=	\N	f	0431a16d-66b6-4ac9-8f87-948f558b1ad8	Major			f	t	2021-09-27 12:36:52.61761+00			0	0	t	f	Major	\N
1093	pbkdf2_sha256$216000$hFjS5y008Hyr$sLpI3VX22ulSsy/SfarWonD+8lADiy321mPwVBy/4Ho=	\N	f	6ba07b97-e89e-4790-a71b-ec69f26ab23d	Vijay			f	t	2021-09-27 12:36:52.877458+00			0	0	t	f	Vijay	\N
1094	pbkdf2_sha256$216000$CoDiIPEIinnT$pgFxia8g4sKdUekWWy8JyAQ3e4qzWtinvPOyvyNzJAI=	\N	f	626a4445-6202-4eea-af89-ca075ee6f945	Master			f	t	2021-09-27 12:36:58.630938+00			0	0	t	f	Master	\N
1095	pbkdf2_sha256$216000$Ue0EfldHYuKv$FJQSgFdlu+IArNT3F8Ym2HpeiRnzTP2wNqf13VDHVLg=	\N	f	9fa748cc-d992-4b18-8995-1d2ea27fc247	Number 1			f	t	2021-09-27 12:36:58.87109+00			0	0	t	f	Number 1	\N
1096	pbkdf2_sha256$216000$Y4stBENMtwL9$Rx4y+WXcFxR4rx9oTcNblSXNi+u0TVlEDIhf+ZBBlKo=	\N	f	3c486ab6-2a24-4a02-a2ec-7f72f59f68e5	Avenger			f	t	2021-09-27 12:37:04.221111+00			0	0	t	f	Avenger	\N
1097	pbkdf2_sha256$216000$YTWQIkziw2KO$6GdhVbc95/zA789XvLg3GibxvGxXJsE/+W9eDQNeiKE=	\N	f	fc704680-c005-4e73-a15f-f90b229da6d5	Raju			f	t	2021-09-27 12:37:04.47091+00			0	0	t	f	Raju	\N
1098	pbkdf2_sha256$216000$7g7vuxMdoA95$HU7PmaJN0hof7KB6eA3iCiOuyjybXKSBDF7LACcp6Bo=	\N	f	1998dc24-f12e-4187-ab43-18a05533a1cb	Mara			f	t	2021-09-27 12:37:10.277143+00			0	0	t	f	Mara	\N
1099	pbkdf2_sha256$216000$wLGOLQHJVNs4$tVc8ws68ocyLrhgNwskqLUsr/a316M7AiFbrLfxyWpA=	\N	f	12e6fba2-8435-4f5e-adab-3d2c5e1acd5b	Akshay			f	t	2021-09-27 12:37:10.536978+00			0	0	t	f	Akshay	\N
1100	pbkdf2_sha256$216000$qvZW8q4bPTQF$yyl6P1AgmVu9iszw4oofsUfKKiA9TL9hjD01uIiRD5E=	\N	f	3e3d0683-fce1-41f5-ae86-b695d1dc422e	Avenger			f	t	2021-09-27 12:37:15.881096+00			0	0	t	f	Avenger	\N
1101	pbkdf2_sha256$216000$OkZl1HoM23Ut$kHkhznR3/0dibsTvU5+wDBNQYEY6kpz07Vz/zjU+6D0=	\N	f	ad06387a-d1a3-4260-82aa-5e88b869079b	Major			f	t	2021-09-27 12:37:16.130924+00			0	0	t	f	Major	\N
1102	pbkdf2_sha256$216000$ETIngeBACLWU$nFfMwbn9WH0ME81BhUQ4O0s2SZUrouPcS7WXHbUgnTQ=	\N	f	a25620eb-7d92-46e3-b8b7-fc58bc183fe7	Winner			f	t	2021-09-27 12:37:21.906235+00			0	0	t	f	Winner	\N
1103	pbkdf2_sha256$216000$juq9EhUqzbUz$StWFfjdNPs61rl5hzUdus+dSZRE6WUzSIbDY+RClkJs=	\N	f	a9b8656f-48d0-4504-99d0-349d1400f312	John			f	t	2021-09-27 12:37:22.156378+00			0	0	t	f	John	\N
1104	pbkdf2_sha256$216000$qNxXyvBUyq0p$J/MOyCiYTIxCGwWmhpaXyc/MSPIgIkdYZjl9NhMWbBs=	\N	f	8ac81245-2c85-4e05-92ed-28f7bd9676ef	Mara			f	t	2021-09-27 12:37:27.521212+00			0	0	t	f	Mara	\N
1105	pbkdf2_sha256$216000$45xnFBdAm0KV$oIH2gvTzR7m1DA09feA9MfenL/nK56FbfgDRw/NbiC0=	\N	f	d1e48213-07a1-41bd-a3e8-405e0f5c6d6d	Vijay			f	t	2021-09-27 12:37:27.771085+00			0	0	t	f	Vijay	\N
1106	pbkdf2_sha256$216000$QkgLYBjOerqG$yibtbI+XKkudcTSfDCC7qLni6OUXUdkMi2FpF9zSu2k=	\N	f	29b9c486-45ab-49f2-9e74-e20e714cf165	Shivaraj			f	t	2021-09-27 12:37:33.592208+00			0	0	t	f	Shivaraj	\N
1107	pbkdf2_sha256$216000$oG8JIlXSVG6N$UVKVMH2k4nqjPkZDSUW0QSEwBc97/H24WvTca4OX2h4=	\N	f	8dc894b7-6524-47fa-b819-befb6fb1b387	Poker Raja			f	t	2021-09-27 12:37:33.826073+00			0	0	t	f	Poker Raja	\N
1108	pbkdf2_sha256$216000$2ES3ZpDB4ETf$N77XJuBh2G2L4mcpqbJRFqTmJt0YIFL8gjO8n9+X4L4=	\N	f	36cf552d-e7df-479d-9a9a-d235cedee73a	Hero			f	t	2021-09-27 12:37:39.256927+00			0	0	t	f	Hero	\N
1109	pbkdf2_sha256$216000$2DcQASNWW5N4$tWZja+Zvun7uJ39ijVAypbV0UyjuapIoeV2mr4RPKQQ=	\N	f	4544ed17-b2ff-40e4-a352-9895397721b5	Ruby			f	t	2021-09-27 12:37:39.517331+00			0	0	t	f	Ruby	\N
1110	pbkdf2_sha256$216000$0lzZb86PzKtA$CnyslDliIUCmvrWii87mDKWSJTZqvi3GSAo5d13hpyw=	\N	f	efd3ef1b-a164-4712-9bca-350f05ecab92	Poker Raja			f	t	2021-09-27 12:37:45.266108+00			0	0	t	f	Poker Raja	\N
1111	pbkdf2_sha256$216000$9A4Gy5yomZT2$G/oIg5KXZoTvS4BO/JRFmlRW0yIIQcL+dfkAjnrKodQ=	\N	f	e60659e6-deec-4fe3-9de2-9d672336a237	Shahrukh			f	t	2021-09-27 12:37:45.516053+00			0	0	t	f	Shahrukh	\N
1112	pbkdf2_sha256$216000$aengzF725V4C$OXsK2XlSQEN6rxprQwcAHBwjrZOl14csbotiLC1iiIM=	\N	f	fbf6ed41-9d5d-46b6-9af2-e0e81ce271b2	Gambler			f	t	2021-09-27 12:37:50.921428+00			0	0	t	f	Gambler	\N
1113	pbkdf2_sha256$216000$1L7S0IIj3cRU$sRsi3q9iYv5wP/KAcR8wwIwD5CV3wq1FQ6kB9tCrpw8=	\N	f	6701f1d7-55fb-4bf8-82f5-785796abcc6a	Number 1			f	t	2021-09-27 12:37:51.161193+00			0	0	t	f	Number 1	\N
1114	pbkdf2_sha256$216000$ZHqU6Yw2AseN$QDunwYuMqRzTiCf5T/ku+nAdl/590KszFzhO3l2JixI=	\N	f	c9174601-2c16-42e7-bef7-a9c2c7f3f00e	John			f	t	2021-09-27 12:37:56.947163+00			0	0	t	f	John	\N
1115	pbkdf2_sha256$216000$TNOVDLJTdyyM$2ioCdglj71D7QBGBlbXHcFeTv+O0d8ID96j4xAfbPIE=	\N	f	069eacb8-ec54-4c05-b47a-2a98e1c22259	Loser			f	t	2021-09-27 12:37:57.196942+00			0	0	t	f	Loser	\N
1116	pbkdf2_sha256$216000$Jl8t2H5pko9O$TI4NG8P83iByj7FFQkW+JD9JAJWUQ9qsjB/K5wIVIT4=	\N	f	90c82777-fc45-414f-a4f1-9599a8542e45	Akshay			f	t	2021-09-27 12:38:02.566709+00			0	0	t	f	Akshay	\N
1117	pbkdf2_sha256$216000$OqQCfMHEp9yT$BT2cCSgkYw4nuJIfjOevCp2rwRr9abZ2idMr56gFVZA=	\N	f	6f4fc08d-13dc-4940-b88a-70c8f8964dbf	Major			f	t	2021-09-27 12:38:02.857169+00			0	0	t	f	Major	\N
1118	pbkdf2_sha256$216000$nsy0Aqsvm99i$yLs/c5VLr6xjVn6vvJoDb4M1D9hQLMh25WVMWpdrMqQ=	\N	f	f8992e3b-0b65-49fd-bc24-2165167b3c22	Hero			f	t	2021-09-27 12:38:08.565307+00			0	0	t	f	Hero	\N
1119	pbkdf2_sha256$216000$ZCo24hOs6bYh$3VQIWDVot3gCh2RD4QPW2TocAP14N7QB0zQlbb7eVaY=	\N	f	da0113b5-60c5-4a50-801c-8b2670059a0b	Hero			f	t	2021-09-27 12:38:08.820276+00			0	0	t	f	Hero	\N
1120	pbkdf2_sha256$216000$HR7GZPcg1Vsn$OibguOs8RhkJoDaL9nsOn92YZTj/yquHS1jy20DEC5Q=	\N	f	95a0c908-7b1a-4bce-b753-180b548be442	Master			f	t	2021-09-27 12:38:14.317066+00			0	0	t	f	Master	\N
1121	pbkdf2_sha256$216000$9i5KNLWJFQlJ$58o69Co7M+cw1vpHHKUEszpyQbb2nII0FDBaysP//xk=	\N	f	abcd0f51-94d4-4816-9a95-b0cb0b25a0e1	John			f	t	2021-09-27 12:38:14.576908+00			0	0	t	f	John	\N
1122	pbkdf2_sha256$216000$E8HbQXCtrfJ2$Mdr8B/rJ1KvTmbcq1oD+fO8xER/J1ir6mjlQsUJJAC0=	\N	f	62a2fa68-9205-4e8f-bda2-73b892fd57e2	Poker Raja			f	t	2021-09-27 12:38:20.322176+00			0	0	t	f	Poker Raja	\N
1123	pbkdf2_sha256$216000$GOH1wtA3hvf7$BoQVLkOWfuUugM0y+KEVfBTyjiR3w57rjorlpihwrb4=	\N	f	ee04bee1-d3ec-433c-922c-3541e86887bf	Master			f	t	2021-09-27 12:38:20.582397+00			0	0	t	f	Master	\N
1124	pbkdf2_sha256$216000$GlURtWew1w1y$Zevc07rQ41hAuBsMgShjU9aGN0lzHGoee6ums2YEEX4=	\N	f	48f3bba2-3a0b-46cc-8b61-cb8b05dc468d	John			f	t	2021-09-27 12:38:26.036193+00			0	0	t	f	John	\N
1125	pbkdf2_sha256$216000$qFS25JVkoDB0$oLa8BPlMTUUlDuYxoikC+LxJ7Sq3ugP0bj4q8MV7D0A=	\N	f	c11138c0-02be-4a8a-80ff-c2fc3987a7d3	Roja			f	t	2021-09-27 12:38:26.296082+00			0	0	t	f	Roja	\N
1126	pbkdf2_sha256$216000$W9nX7xQ9sxlR$ELXacbIKdsTdeDOMnfnxkNy8QUGLnTXBMMP8O8tznZ0=	\N	f	b89bd2ef-f14a-4450-8244-277862086215	John			f	t	2021-09-27 12:38:32.202034+00			0	0	t	f	John	\N
1127	pbkdf2_sha256$216000$h8yvzJPPZwUo$W9itgiwWF0dzKQkE/vAVCxzRBOEaydCgJOE872q7myw=	\N	f	3c2c3843-012a-4b60-a984-3f619c27b181	Ruby			f	t	2021-09-27 12:38:32.476792+00			0	0	t	f	Ruby	\N
1128	pbkdf2_sha256$216000$r7IjnL0IuCup$Smg7XkzFbmds7ZZBeg1NHlDZTugY7p4A+Hwu3DgdF2Q=	\N	f	c30c34bf-b7ce-44f0-b273-0a84b509c577	Winner			f	t	2021-09-27 12:38:37.991059+00			0	0	t	f	Winner	\N
1129	pbkdf2_sha256$216000$f5eO71VdMYTK$YWjUb3z2JyX+XlR8RMPmkpkynhZ+jdt+6zX/hOpfp/w=	\N	f	c9f920f8-1c20-4ee2-984f-85dead9f628f	Rani			f	t	2021-09-27 12:38:38.235842+00			0	0	t	f	Rani	\N
1130	pbkdf2_sha256$216000$Iav3EOpaKcZz$haFWGOEzs2jE6JKtcZ0DC3f4yaYl+aGOReNUjXkgivY=	\N	f	9121cfb4-e7e2-4f13-a528-a379d882805b	Roja			f	t	2021-09-27 12:38:44.037087+00			0	0	t	f	Roja	\N
1131	pbkdf2_sha256$216000$ctI0lyOyN2Kn$7+VrCwCI4aWUerRMDZfN/XYFqCI/V1PR/q4Y3mEEtic=	\N	f	87d87122-b701-444c-abfc-1a9b771c024c	John			f	t	2021-09-27 12:38:44.28717+00			0	0	t	f	John	\N
1132	pbkdf2_sha256$216000$BUGccg7igoZI$lNsoIxKQjI5/cy4E7ldmuZvISIEfgLT5NULkR6oupoo=	\N	f	f1acda71-3be4-4ac9-8979-eb1093638fa0	Number 1			f	t	2021-09-27 12:38:49.566255+00			0	0	t	f	Number 1	\N
1133	pbkdf2_sha256$216000$BVP9c4vJn6Pf$VssfWVG7Ahun9jyxjbIzomy1NDu01ttl/AqoYE30KdI=	\N	f	806995a4-5d7a-4046-b1a5-2816d8c6b3b4	Raju			f	t	2021-09-27 12:38:49.811261+00			0	0	t	f	Raju	\N
1134	pbkdf2_sha256$216000$LXcfzwF65rxM$5VsM5xSoUEHOk472ubCwof8KHIjbGjMoD4haN+o33qo=	\N	f	d82cb58b-0f49-4030-8c7e-76cdc39e1981	Krishna			f	t	2021-09-27 12:38:55.59142+00			0	0	t	f	Krishna	\N
1135	pbkdf2_sha256$216000$Mc3q2ccdl6WB$F+JQgN09Ohz3BTpwVZysYriOoyQPog7ypbMlXKdYE2Q=	\N	f	c187b927-7306-4efe-a6ae-43b119bb03bb	Krishna			f	t	2021-09-27 12:38:55.841208+00			0	0	t	f	Krishna	\N
1136	pbkdf2_sha256$216000$jPJyyckEFrWa$u0gXYt9/TPokzWDcTGJ9nlSAWIba0jkPyu7+T0KVojY=	\N	f	49b31521-bb58-4d36-97f5-0a20f5d173fe	Sheetal			f	t	2021-09-27 12:39:01.217206+00			0	0	t	f	Sheetal	\N
1137	pbkdf2_sha256$216000$e6QdE5M33Sku$/zOOupdO1CLsczW4Gtn0/F0Tbq3rJvvYyTTErnCDt8c=	\N	f	f1e06578-f2b3-403d-94fc-86d094c4f5b8	Avenger			f	t	2021-09-27 12:39:01.472336+00			0	0	t	f	Avenger	\N
1138	pbkdf2_sha256$216000$Ne8tUxADtqYn$xsMgZWRLmCnrtQMVPxPpyHvcPVGRaKnvk68KY7CP7ZU=	\N	f	c3be72fe-d06d-4539-b339-38543be99fb6	Shivaraj			f	t	2021-09-27 12:39:07.18702+00			0	0	t	f	Shivaraj	\N
1139	pbkdf2_sha256$216000$kVxmeLxefjlD$vc4f/BYDEcY1Pq6npOylc0eddx89Bya/zMLXpJUVaLQ=	\N	f	34a1b8f9-bdf7-43a5-84d3-42c8a4df6d7c	Shivaraj			f	t	2021-09-27 12:39:07.436979+00			0	0	t	f	Shivaraj	\N
1140	pbkdf2_sha256$216000$Ym1vmkIzZtnU$/G3p+o1vXVVj8LnXxv7Lkt1ZUi4URaG6UGNDo364dGc=	\N	f	8a78955c-8985-4239-9873-45a6d3bc9dc1	Loser			f	t	2021-09-27 12:39:12.847378+00			0	0	t	f	Loser	\N
1141	pbkdf2_sha256$216000$bXFIJdlpV0A6$Q/7Zk+uXItRs7jSG4VBFoikeZ6yN4vFQq/hCYZ3ZdII=	\N	f	2cd10bff-f250-4185-a997-6ed440c33a99	Krishna			f	t	2021-09-27 12:39:13.146247+00			0	0	t	f	Krishna	\N
1142	pbkdf2_sha256$216000$ZVjZyruwbiRl$9OPNKaD/m5WuEXEN6IFAb24YqEh1bi/WcIUguamppJQ=	\N	f	770afeac-af02-418f-99fc-b196833c4460	Diamond			f	t	2021-09-27 12:39:18.836435+00			0	0	t	f	Diamond	\N
1143	pbkdf2_sha256$216000$g9f7DBzaZQOi$HXt6PvoWqX/VBd1k0t0bs/hSTuXjq/jbOYx24x4Inkk=	\N	f	c7ef9cbc-a997-49dd-a6df-60d313419fb8	Krishna			f	t	2021-09-27 12:39:19.071287+00			0	0	t	f	Krishna	\N
1144	pbkdf2_sha256$216000$fjBhLtQ42157$fAPup4MWGM8rBk6COBOTMm2XR7nyqulDVuErrHgqBms=	\N	f	658e372d-bfca-47c3-a945-a46f40b21f3a	Ruby			f	t	2021-09-27 12:39:24.530255+00			0	0	t	f	Ruby	\N
1145	pbkdf2_sha256$216000$W5YCCOOXmp2l$ldQTBkNkBr442/j5PIhASQU67LqZw/r/EeJYd4IJrHo=	\N	f	890fc68e-a1d8-4a6b-ba0a-d0404e017a28	Loser			f	t	2021-09-27 12:39:24.780696+00			0	0	t	f	Loser	\N
1146	pbkdf2_sha256$216000$ChrbwAWmRCW1$QLQtaGOdL3x+HqyH7kYd1oZn9ZsPSvSGnxYKkECpOJo=	\N	f	df68f581-b440-4942-bf38-282b2a5e03d1	Poker Raja			f	t	2021-09-27 12:39:30.546265+00			0	0	t	f	Poker Raja	\N
1147	pbkdf2_sha256$216000$o7GjpCei0Mo2$DaoVoYZWzBN59mY2dX5gYtgiEVMUygndeCkCpY9h02I=	\N	f	884ab37a-94ed-424a-bc34-97155bd0b34b	Shahrukh			f	t	2021-09-27 12:39:30.806127+00			0	0	t	f	Shahrukh	\N
1148	pbkdf2_sha256$216000$KsR4KzXcvgCa$a9Vv6qsv+ELqXUEbsl9lKhzQKWKWmoxdpuxKUcxp+kc=	\N	f	acf9451a-c450-4331-9f41-d2128dd0f11b	Raju			f	t	2021-09-27 12:39:36.266447+00			0	0	t	f	Raju	\N
1149	pbkdf2_sha256$216000$a1M6fbB6p0f7$Qmjx9Gz98sUAyGjAjcCbtFe91YmN0zIJAOY0nPQjlfU=	\N	f	f6e25d25-accd-49bd-bef8-71c08a8235b1	Avenger			f	t	2021-09-27 12:39:36.516013+00			0	0	t	f	Avenger	\N
1150	pbkdf2_sha256$216000$mcFH7taAGygJ$oh0Gmrm3VFCPjqkvtG5ybFTC9bgNb5iZVwUp+IeUpwU=	\N	f	3526a2f5-7760-4480-8791-14f52042812f	Rani			f	t	2021-09-27 12:39:42.297064+00			0	0	t	f	Rani	\N
1151	pbkdf2_sha256$216000$Dba4ZHSLUuiQ$II6kQsBFAukZkjZTbmN3IlYkTABSrYysSaGLu2uGXmY=	\N	f	cf609d85-03a8-4536-b4fe-8b1e60bbfeeb	Roja			f	t	2021-09-27 12:39:42.597196+00			0	0	t	f	Roja	\N
1152	pbkdf2_sha256$216000$I3V53fSef5Yx$1zipoFGTX3Jquw1UF3kB8MFhIRrD1rOPo6H76zcXj5Y=	\N	f	18087340-2ce4-4e90-ae43-e4764fca0fff	Ruby			f	t	2021-09-27 12:39:48.056967+00			0	0	t	f	Ruby	\N
1153	pbkdf2_sha256$216000$ggteJJzHG4PR$uD4UhkAmk6I7zwQy4kqLaQqGMUSEfO4kHzh/dnyLXnY=	\N	f	634420f8-7f4c-4252-af00-f8fad3d014d8	Akshay			f	t	2021-09-27 12:39:48.306978+00			0	0	t	f	Akshay	\N
1154	pbkdf2_sha256$216000$QYFlTB6yLtnZ$5LOZ33DUksN4XvSOliQKi96vx/7OrBJEXitFTSo1bsE=	\N	f	9b439050-7ce0-4920-8b82-35d5cb58ca04	John			f	t	2021-09-27 12:39:54.127427+00			0	0	t	f	John	\N
1155	pbkdf2_sha256$216000$QR5N0NtMoYoC$wKNy/SVKVCbKoTMZk+jmGzvaBJPxSkIpzjYpHyJ82rE=	\N	f	62441129-45ab-498c-a7c0-41c6c4aadc1b	Winner			f	t	2021-09-27 12:39:54.397172+00			0	0	t	f	Winner	\N
1156	pbkdf2_sha256$216000$H5DFnsyYZTpk$TIeuPSs/1l61UbOIriooCXCN5Sxb2J4m5fPrIjUfIMo=	\N	f	353a64c4-073d-4a4d-b0aa-30496c13b636	Hero			f	t	2021-09-27 12:39:59.750305+00			0	0	t	f	Hero	\N
1157	pbkdf2_sha256$216000$LGAnW62pSR3j$r06l40iiPUskQK4rOvKZH/0z4vUY5fQixJ6rOXkQyeM=	\N	f	a0bc9aab-f69f-460a-a16c-07e9e194c65d	Vijay			f	t	2021-09-27 12:40:00.000678+00			0	0	t	f	Vijay	\N
1158	pbkdf2_sha256$216000$lgcFYz4Sv9ux$Bbbh3nDVsFWGGRJceFMCZRBp2ofYmz63aLAJ9uv2rJA=	\N	f	c4cfc387-53d2-45d0-b05e-4e7bca51da9e	Rani			f	t	2021-09-27 12:40:05.816839+00			0	0	t	f	Rani	\N
1159	pbkdf2_sha256$216000$Gz3QUwm1PmOG$4CF6JRlYzUiqqLDToZS97Ojr9J+wrqlVW+y5jzBLXsI=	\N	f	85b1144e-75fd-4075-a77c-4d65de0030e0	John			f	t	2021-09-27 12:40:06.076941+00			0	0	t	f	John	\N
1160	pbkdf2_sha256$216000$rMpe7A5dtxkC$/MUBvW/YGUL92pgmmYx573pR16eYPmVA3loPMn9P1es=	\N	f	64d82e6b-64f0-4e5a-ada2-d6012a2cde60	Major			f	t	2021-09-27 12:40:11.546964+00			0	0	t	f	Major	\N
1161	pbkdf2_sha256$216000$nBUJjKpGMRP3$jZRjDR/Z3CanHIW5DVIbyuZsJLcELHuO202NNynTINk=	\N	f	2796a25e-2ba7-4b7d-9b2c-13f7f01021e4	Master			f	t	2021-09-27 12:40:11.807051+00			0	0	t	f	Master	\N
1162	pbkdf2_sha256$216000$OGnSM7I8FGMC$Sz+3pkFDkO8XTSQDnqf8HGRgZpeHkNobQEB306GdKf8=	\N	f	92466edb-867b-4540-a9bd-e21bfd2c59fa	Mara			f	t	2021-09-27 12:40:17.550585+00			0	0	t	f	Mara	\N
1163	pbkdf2_sha256$216000$T2G1NvSpeh8m$gWLrT7sT4j0mVqVnnHjENbr52PApWH8qia6iDHKocYI=	\N	f	2299cac7-4d09-441b-be62-0765264de460	Master			f	t	2021-09-27 12:40:17.790332+00			0	0	t	f	Master	\N
1164	pbkdf2_sha256$216000$ue2hHdW15PEC$42E8JidBKkTznjyNSSz0vQtVSLK1WSLvHFeh8aXCYdI=	\N	f	1fb786b0-3ebd-44f5-91c4-fbb72302b8cd	Sheetal			f	t	2021-09-27 12:40:23.241236+00			0	0	t	f	Sheetal	\N
1165	pbkdf2_sha256$216000$46FjG7gg67bx$XN6p3NcCFoT8nHA3oRUhkOXWUTvpdKrW45X/CBY8/TA=	\N	f	8eb7cd0d-5aa7-4420-9d13-df732472ce7d	Krishna			f	t	2021-09-27 12:40:23.491392+00			0	0	t	f	Krishna	\N
1166	pbkdf2_sha256$216000$map5x9zRgTeT$iJ7jDXeXlsgnvSxhzvW5SmjWSn2xp2dl80Q/mR41GAI=	\N	f	cae6525f-4538-463f-b83f-38d3605210d1	Major			f	t	2021-09-27 12:40:29.336919+00			0	0	t	f	Major	\N
1167	pbkdf2_sha256$216000$zvDHQPPZN5E2$sA7EHm3NnU9APQu3nipL30bIl1NVS/7FxgFd5ujB/eA=	\N	f	aa1ef695-9319-49a2-a70b-042898543e40	Master			f	t	2021-09-27 12:40:29.597089+00			0	0	t	f	Master	\N
1168	pbkdf2_sha256$216000$KLkQtAV7LddJ$aN5vxCLnVlG2ipxw8ROnvGyekdHoXQfAOFw/DsiXCeU=	\N	f	b7d22db6-eb00-43d9-a1b6-8bd5b12a202b	Shahrukh			f	t	2021-09-27 12:40:35.041008+00			0	0	t	f	Shahrukh	\N
1169	pbkdf2_sha256$216000$doWb1FoLHbqU$Zwt4zeeg2o+EIjhHFoCrR+IZ2NbGoSacqPQ4nvtrKyw=	\N	f	0fa9befe-23dd-4999-8929-b157849e4bcb	Hero			f	t	2021-09-27 12:40:35.295729+00			0	0	t	f	Hero	\N
1170	pbkdf2_sha256$216000$iNAVFTUCNNkT$AGQsmyenGvBnDYHMVvIpWxL23baLP35RZrOAd/po2sw=	\N	f	32a20fb4-1b30-40d2-acb5-8b6067865e32	Major			f	t	2021-09-27 12:40:41.176648+00			0	0	t	f	Major	\N
1171	pbkdf2_sha256$216000$PwN7duFwTcxV$pwOfSXhLPqCYtBGlsRabCZRxzCmu5z3V4cTB/VIR8vU=	\N	f	0ae30322-718b-4ab1-8fe5-9c0b3d858ad0	Sheetal			f	t	2021-09-27 12:40:41.436952+00			0	0	t	f	Sheetal	\N
1172	pbkdf2_sha256$216000$gP9J3wMiW7dL$bzxFY0ry/WihPZb78KDEMBGU9UWczG0hqnGgIaDdYTU=	\N	f	eabc237d-826b-4184-a7a7-693490788001	Rani			f	t	2021-09-27 12:40:46.857399+00			0	0	t	f	Rani	\N
1173	pbkdf2_sha256$216000$jfBuMaRzyMu1$PXZGJI2UVuT2EY2oYFXeRzhyqrv82YEAspuKcGDu2U0=	\N	f	6c95251b-0867-4d92-a2db-e7c7de98beeb	Rani			f	t	2021-09-27 12:40:47.107468+00			0	0	t	f	Rani	\N
1174	pbkdf2_sha256$216000$vS7acGucuDKH$cia5hzfK4sOodUHLGPe47B3+AvZKBLYrILvhkFd1orc=	\N	f	1ab960b2-1973-4861-afac-c99fe4adc141	Ruby			f	t	2021-09-27 12:40:52.947517+00			0	0	t	f	Ruby	\N
1175	pbkdf2_sha256$216000$ta3qhR72vUag$Cb9jLJLEbpCIADU7wMs697SkTbRQcTe+rId+ZHnxNIQ=	\N	f	8cfefb54-02da-4cd5-8d67-85ec39f4007a	Poker Raja			f	t	2021-09-27 12:40:53.206105+00			0	0	t	f	Poker Raja	\N
1176	pbkdf2_sha256$216000$B5vUQwaYyhWW$Wtv0P+koUkOd+koLR3mRrdI4Hbkraelodn8MfCO1uZ4=	\N	f	94f6f46f-c6af-4263-83c2-3603a4d307a3	Krishna			f	t	2021-09-27 12:40:58.686247+00			0	0	t	f	Krishna	\N
1177	pbkdf2_sha256$216000$EoPCD07Zx9tK$s7DRkI0yf5RkfoctBnwm8sqSCGck0JKzfH5xHEWNLX4=	\N	f	43a8e874-31fc-4339-aee7-e614f4d03508	Sheetal			f	t	2021-09-27 12:40:58.941407+00			0	0	t	f	Sheetal	\N
1178	pbkdf2_sha256$216000$Gj88ewQYT9KR$tEfDSqwVtAJW+CPq3h1V67qMtG5EAPSFD2rUQ5OFrfM=	\N	f	3d4c0258-30c8-4393-8cac-5602763993a7	John			f	t	2021-09-27 12:41:04.786231+00			0	0	t	f	John	\N
1179	pbkdf2_sha256$216000$iMuNpJC9b9IC$s7JFE2mWRgIyg4ozP3UCYw5+mYemPAdZhTe5j7dbscI=	\N	f	ab9a5522-a0d6-4dba-a1be-ff4c26b63f73	Raju			f	t	2021-09-27 12:41:05.046539+00			0	0	t	f	Raju	\N
1180	pbkdf2_sha256$216000$TV5oTqJydmNu$2WwLSKIzWd9nNnNUbi+/vuryR94BGOBjcXH4j3tnJsk=	\N	f	b410aae0-d96d-4a89-b98e-ac763ee3413a	Shahrukh			f	t	2021-09-27 12:41:10.491182+00			0	0	t	f	Shahrukh	\N
1181	pbkdf2_sha256$216000$mtgmiP0L0l3A$A59GyZ2SHWZ+R18+9w6LlmwSWC7gcXCL+8qa4sjuHbs=	\N	f	c260fa2f-0f83-4b1c-aa17-eb5da3f72db0	Master			f	t	2021-09-27 12:41:10.730949+00			0	0	t	f	Master	\N
1182	pbkdf2_sha256$216000$QdTlQGTSqA1d$2GLAn8ArPSXOcH0fkeym2PLq7UPsplqX7l4ocaxf5L0=	\N	f	3fceb169-ed60-4090-ba2f-d95639161e3e	Diamond			f	t	2021-09-27 12:41:16.551354+00			0	0	t	f	Diamond	\N
1183	pbkdf2_sha256$216000$QWTPTVKoHNEl$SKgs/1yASj62aVs5CJGlNYq0Qtn7XP1VR4aOtMIol/s=	\N	f	3dae2155-3c7a-4465-81bb-a955822dfcae	Rani			f	t	2021-09-27 12:41:16.791125+00			0	0	t	f	Rani	\N
1184	pbkdf2_sha256$216000$oviopKZxAix2$V6+w/2lFCP8uMzraEsEjbeFCcMpCY+AvPdgvwpw0L04=	\N	f	42e70ece-0bc6-4c83-9781-14bcbf2afaa2	Master			f	t	2021-09-27 12:41:22.221091+00			0	0	t	f	Master	\N
1185	pbkdf2_sha256$216000$VXmfMqZlRzma$FNzWFEZby8gKKZipZaZcrT3KL3ZJrUSLfwDGYtFQYEM=	\N	f	dea76718-cc0a-439f-86c3-ddd261289bb4	Hero			f	t	2021-09-27 12:41:22.471267+00			0	0	t	f	Hero	\N
1186	pbkdf2_sha256$216000$vZ4sw1XsK3km$jTHBj/N4lj5N7rfM1YiqZpnq6r658GRHera6JZYsFkk=	\N	f	792cc875-35ef-42e2-b0fe-a606676fa1ad	Sheetal			f	t	2021-09-27 12:41:28.350884+00			0	0	t	f	Sheetal	\N
1187	pbkdf2_sha256$216000$EisLIJYf1kEH$igYDNtXCAYXwSj0BfK31S46k6n1Gg0xKzlb2D5kzsNk=	\N	f	cc006a12-1b32-42c6-982b-87edd4e16e82	Roja			f	t	2021-09-27 12:41:28.590993+00			0	0	t	f	Roja	\N
1188	pbkdf2_sha256$216000$dQS6uVVb3ePT$hAVsTRwdGupMJNnGUSnuR0dZ8Ozeow2DJJSU+TWyTHE=	\N	f	05daa31a-05e2-4298-bf90-70b0f753f908	Mara			f	t	2021-09-27 12:41:34.010626+00			0	0	t	f	Mara	\N
1189	pbkdf2_sha256$216000$FHsFS08Qbc9J$5tKi11RnGECfdXpZgXJnvFsAnChArUISi3adBwFib8Y=	\N	f	bb271232-5c1f-4474-888c-96ae326d9fd0	Krishna			f	t	2021-09-27 12:41:34.250303+00			0	0	t	f	Krishna	\N
1190	pbkdf2_sha256$216000$ZzoM4ekw5hqn$ZuLUr8AhYTpW/Gtu2akUs4spGXC6mxlzHzRhgwqTctc=	\N	f	0745e401-f22a-4add-997f-4f06ace7e8d8	Sheetal			f	t	2021-09-27 12:41:40.04623+00			0	0	t	f	Sheetal	\N
1191	pbkdf2_sha256$216000$atHLQNHmxvZH$YzHHTSUkNnZ19iwtjP80YVvL7aIt43kv7HIw860CDxY=	\N	f	148c6998-74c6-45ef-9cf2-b236e20be02e	John			f	t	2021-09-27 12:41:40.316465+00			0	0	t	f	John	\N
1192	pbkdf2_sha256$216000$jJf72VnVKHLO$oXORnZMPGFaQxH73qTV4s47IT8rHR2pBnrnFLzDL930=	\N	f	b9a636f9-471a-49b2-84a8-b4751ec67f21	Master			f	t	2021-09-27 12:41:45.657161+00			0	0	t	f	Master	\N
1193	pbkdf2_sha256$216000$quUXhaDxT7ZI$YbYawmu9bi7XRzeP3wGQMWNwt/WH/46+VoW73jnFF50=	\N	f	4500ebbd-4941-4649-8f97-c357c1b9392f	Poker Raja			f	t	2021-09-27 12:41:45.92222+00			0	0	t	f	Poker Raja	\N
1194	pbkdf2_sha256$216000$SshrmwtTi2DW$Dh8PxNHu5qImhz43Zm9P8ZA7L+UlzwH0+gXLDOJX1AY=	\N	f	d9a4fd5a-ae25-40e4-a0c4-4093d3ddd5d7	Avenger			f	t	2021-09-27 12:41:51.647242+00			0	0	t	f	Avenger	\N
1195	pbkdf2_sha256$216000$7nhccj9KyLOl$2j1EDTm1sEwXjk8aCFbMmq/fJSievu7+7O6rBmOX14c=	\N	f	a9a00a05-966c-4ed9-9dd4-a206cdf58dc0	Roja			f	t	2021-09-27 12:41:51.892267+00			0	0	t	f	Roja	\N
1196	pbkdf2_sha256$216000$99EnbzGLWTrf$Yw40NzaHYurR9KRviSnyA76/HKds6mAGQW7veYx4nko=	\N	f	cdb7b8ab-8977-4969-9c1a-b6fa41999475	Ruby			f	t	2021-09-27 12:41:57.371603+00			0	0	t	f	Ruby	\N
1197	pbkdf2_sha256$216000$MuucKzUXVVAp$tATPB2QPH9wZpPnBk875dENQNQTaEDGOORjpWw9seuU=	\N	f	e8658475-bbfb-4694-8c14-4457a3565ba3	Mara			f	t	2021-09-27 12:41:57.611443+00			0	0	t	f	Mara	\N
1198	pbkdf2_sha256$216000$3zzhWWYLVirK$99MpjxAnzZSpIHOtiBcfqmVDsn4xeS2nPTnXfeQ3eHk=	\N	f	40f49375-44fc-4355-b569-0ade1e3e4885	Major			f	t	2021-09-27 12:42:03.430244+00			0	0	t	f	Major	\N
1199	pbkdf2_sha256$216000$TumjtsTvEjF8$II1K+HMiAto0AdcilXagNCCCnAkicY1FL65ZxluKEaA=	\N	f	5184846e-1031-481f-8207-fbaf5fa0d50b	Winner			f	t	2021-09-27 12:42:03.670538+00			0	0	t	f	Winner	\N
1200	pbkdf2_sha256$216000$N80RFOR0YtPq$ET6/rJf+/7JvM0w3pW8BSqBgSsN10CF+2vY7HZ1GmhM=	\N	f	3ca1216b-4351-4220-b178-29e91f48c75b	Roja			f	t	2021-09-27 12:42:09.17612+00			0	0	t	f	Roja	\N
1201	pbkdf2_sha256$216000$uZ6PKJIp8rzz$t5kbM+VliJ+o41lE/5VaTl/E+eRAJwzJwUUq9JFU7Gs=	\N	f	559bc86f-dcdd-4333-ac62-27293a6e8728	Diamond			f	t	2021-09-27 12:42:09.436198+00			0	0	t	f	Diamond	\N
1202	pbkdf2_sha256$216000$fhpap6u0nNS9$BOHVbTGIWr9h8pazLU3Yq5h2+E3qNLWqnLrNmrH9Lr0=	\N	f	9cb422c4-1cfe-4d6e-951e-888dc8f66977	Poker Raja			f	t	2021-09-27 12:42:15.16657+00			0	0	t	f	Poker Raja	\N
1203	pbkdf2_sha256$216000$OB6LBrQZfpgI$J/ROc1jugVK271iNSu+s3UvIfBVvmCavG311d/nVHBI=	\N	f	cabbd2e8-5f1c-4520-b4f7-5c96a94f3ef2	Shivaraj			f	t	2021-09-27 12:42:15.426155+00			0	0	t	f	Shivaraj	\N
1204	pbkdf2_sha256$216000$vrChnLSChP9s$a/G2O1AYmvhXz73KzA7CCdbW+AsJNWbcELcrYWwWfak=	\N	f	e832e45b-a1c1-4849-828a-fec1303a7a98	John			f	t	2021-09-27 12:42:20.827048+00			0	0	t	f	John	\N
1205	pbkdf2_sha256$216000$arZ0mQuMotdE$UVeslUvxlSyJXBEjpaC0+HyIKg9DBZWKWElGbiANS3Y=	\N	f	566366e1-b32e-4035-a750-44fca7a01894	Major			f	t	2021-09-27 12:42:21.087107+00			0	0	t	f	Major	\N
1206	pbkdf2_sha256$216000$aV70YeM7gSVw$Xb1cTXsXtZLvZ3pS2KA5s6w9OITTV47I0Ltam3YKecA=	\N	f	3eb233a0-fd55-477a-b9dd-31ca47d36ba6	Major			f	t	2021-09-27 12:42:26.926997+00			0	0	t	f	Major	\N
1207	pbkdf2_sha256$216000$cZDiJC0uAP8J$r+44jmVk41Srk7McnJW0aFW26Uwe/attc3ILuNjn7nE=	\N	f	e9243081-4d2a-49d8-9059-84a560c5aecc	Master			f	t	2021-09-27 12:42:27.186941+00			0	0	t	f	Master	\N
1208	pbkdf2_sha256$216000$wqm0NPGI8ion$W6B0Y5X3qtiAn7k0RrYGOZhaxYJEEmy+tE3fFfcHXoA=	\N	f	bef76aba-28de-4ffa-a9c2-7d68cf79ea4d	Shahrukh			f	t	2021-09-27 12:42:33.198231+00			0	0	t	f	Shahrukh	\N
1209	pbkdf2_sha256$216000$WPrYLeys6QYO$fBIS95W4CKCYd0aesrdcjekGQoG0fTem+jyf5jtmDv8=	\N	f	d42764fb-5371-4114-b965-0e153941df2d	Sheetal			f	t	2021-09-27 12:42:33.542101+00			0	0	t	f	Sheetal	\N
1210	pbkdf2_sha256$216000$PdbSmq8RUGBF$zaHqwBDcXzxTQTdZb4bfsSmFt6iAm1TR93noneoyZIk=	\N	f	ee31838c-4510-4905-b94b-2123bed3e4d4	Hero			f	t	2021-09-27 12:42:39.751613+00			0	0	t	f	Hero	\N
1211	pbkdf2_sha256$216000$PctKqn04BMnV$vuEtgdGNZ+WaCcJm8uyT/XLmDXibmp4uhocEzzZyci8=	\N	f	aca745d3-61ac-45db-aa39-fa8d815017cd	Poker Raja			f	t	2021-09-27 12:42:40.011608+00			0	0	t	f	Poker Raja	\N
1212	pbkdf2_sha256$216000$9cX24sxW1p7H$XkDEb0to+Hk4HLI+pSHLm64O5Ri3jHTlMK1UKBtQlCg=	\N	f	b99e0d7d-a989-4892-afde-8ba3b873bd8f	John			f	t	2021-09-27 12:42:45.381237+00			0	0	t	f	John	\N
1213	pbkdf2_sha256$216000$fwegG70pteQN$AcgC/Ac9Q9RaOdf6YNGSbKX0N5yL5kLvb18AVKMZ+vw=	\N	f	7879bc5c-82c1-4c66-be5c-bf85b40c4f6b	Rani			f	t	2021-09-27 12:42:45.636204+00			0	0	t	f	Rani	\N
1214	pbkdf2_sha256$216000$hyYn47ukBkoT$ERFB8dBuXoZ5P9ddp6F28eL3JPstRn/P9HvubzJjQuk=	\N	f	1bfa6822-35dc-42ac-8fa8-e705244b518b	Sheetal			f	t	2021-09-27 12:42:51.821783+00			0	0	t	f	Sheetal	\N
1215	pbkdf2_sha256$216000$opNUFwZdCtTc$OYz35vX7fhZD1J8OxcDi93T6xCqlXuLyCtnyge2qxTQ=	\N	f	ece79140-50e7-44cc-83ef-a35ca7d66507	Number 1			f	t	2021-09-27 12:42:52.081883+00			0	0	t	f	Number 1	\N
1216	pbkdf2_sha256$216000$mhrUR5DuZy9j$eDc7nVlT9jMCN2wOfMXY3nYZqFkkV/FYsnyiqsWbcP8=	\N	f	d3b1bada-fe0a-4a17-982c-51d2c2b6bf9c	Rani			f	t	2021-09-27 12:42:57.522479+00			0	0	t	f	Rani	\N
1217	pbkdf2_sha256$216000$f8gd7oy1zYkq$XL7uQ2hfjHhEW6DTQ8XGX9q216gXl+s8BZzUigpGXqs=	\N	f	1b64ff3a-d0bc-4a23-ba05-e37de541ed95	Roja			f	t	2021-09-27 12:42:57.792159+00			0	0	t	f	Roja	\N
1218	pbkdf2_sha256$216000$6UeUuH0pDLKn$j3HaMT6CNWKt2xveXWu9ch9F/pIb4djhH44XGfxgbbo=	\N	f	00460ea5-b9de-4a93-b447-da5abe361013	Shivaraj			f	t	2021-09-27 12:43:03.886088+00			0	0	t	f	Shivaraj	\N
1219	pbkdf2_sha256$216000$8ZVm2B8PEYUz$6rESHVOWVFa0VjG1J9oAtC2enu6/NL4ClEjMvnJVGQY=	\N	f	888c59c3-7d2b-4d80-a983-7b670ade6e12	Master			f	t	2021-09-27 12:43:04.126252+00			0	0	t	f	Master	\N
1220	pbkdf2_sha256$216000$PSyewEfrzy6n$Bgl3MDu2+T2RRsAvm2Ehvp1ek4OiYKAXaz8oSWcs5fQ=	\N	f	4eb6eac2-5f52-4c9d-9c2a-12e7271b442d	Ruby			f	t	2021-09-27 12:43:09.665979+00			0	0	t	f	Ruby	\N
1221	pbkdf2_sha256$216000$aqYHhPm0TI7E$h+QVVSgZVkpgTLjPRtF7XcqWrUNxQfHXsrK2p45+Fdg=	\N	f	6867f4f6-68f7-4986-8572-42b0f06cb873	Gambler			f	t	2021-09-27 12:43:09.935889+00			0	0	t	f	Gambler	\N
1222	pbkdf2_sha256$216000$MBSISh3QupLd$j5pISGhxCRsysQ5chpXLLCRLUv3LqqC1OSw7JtPSQVM=	\N	f	5a5badef-54bf-4115-b37f-10cab464bdb4	Major			f	t	2021-09-27 12:43:15.7061+00			0	0	t	f	Major	\N
1223	pbkdf2_sha256$216000$UmnPSE2WFSx3$YtSa6DwqbEQVqY8j5Ns/mjnYWq+Zr59QcO3slyfXGv8=	\N	f	44d07c86-5994-445f-a7d9-a4e0da0de695	Master			f	t	2021-09-27 12:43:15.940948+00			0	0	t	f	Master	\N
1224	pbkdf2_sha256$216000$tXFkGx665aDa$AIVSH9Kutk8gJI1icuxGDvj7fZof6QPzxZmt6ioe9lE=	\N	f	b6191d56-bd96-4261-a261-1d7d5c3db061	Sheetal			f	t	2021-09-27 12:43:21.391066+00			0	0	t	f	Sheetal	\N
1225	pbkdf2_sha256$216000$TP5BQkUW7f3R$167u7UvD2cXm3pNg8KJJNjf201WE/m9c5S5YPkvIAJA=	\N	f	7e9e5229-5b37-4f72-88ab-b86f66760523	Sheetal			f	t	2021-09-27 12:43:21.646499+00			0	0	t	f	Sheetal	\N
1226	pbkdf2_sha256$216000$8uJpdoY27eLd$TZnfhVT7ITCVJ08Dxwj5OhBcc/vIul9ny+zUzjEcvwg=	\N	f	e11d60b3-a3a7-422b-a691-b9d325c3a9af	Sheetal			f	t	2021-09-27 12:43:27.406212+00			0	0	t	f	Sheetal	\N
1227	pbkdf2_sha256$216000$Vr32xDgvXXAq$GSsj2NOb9ZnnRNwJdYcN9x4IYXcfVf4py5eEwJd0esY=	\N	f	a8c9893f-3dea-41e7-a32c-f746c018664b	Poker Raja			f	t	2021-09-27 12:43:27.646106+00			0	0	t	f	Poker Raja	\N
1228	pbkdf2_sha256$216000$qZs5ENk8b6SG$qcyXM43kXfYvn5kBGjizbySMTH47eqyfAeVsaa8QDgY=	\N	f	401efba4-e6ef-4948-aaf8-4a3367b2c4cc	Shahrukh			f	t	2021-09-27 12:43:33.141834+00			0	0	t	f	Shahrukh	\N
1229	pbkdf2_sha256$216000$Fkp81daoN2dF$KFU8swCJfwK/KAYvjfiTlpiL6L8hWCY1axBgnQRPOFM=	\N	f	cc13bfbe-5e90-4178-baa1-b5ed2c053d27	Winner			f	t	2021-09-27 12:43:33.401606+00			0	0	t	f	Winner	\N
1230	pbkdf2_sha256$216000$YCOHA2zhPY3v$FgE2rSLPNXM715oTllZenXGhZYddBj7DN1O2sCweDHI=	\N	f	974d4d16-e10c-4fc6-bb71-093273f8b6cf	Ruby			f	t	2021-09-27 12:43:39.261801+00			0	0	t	f	Ruby	\N
1231	pbkdf2_sha256$216000$KLGc6OOwFaId$qCAHBhC9d4wTYzIZ7Lz6f5nuCZRCLxS8YuHMDKrpTmg=	\N	f	b42f1a69-30e1-4f30-9ade-158139c393d4	Winner			f	t	2021-09-27 12:43:39.51143+00			0	0	t	f	Winner	\N
1232	pbkdf2_sha256$216000$UcwiIM3tVWXd$0m1c7BJnnW6/uDApTOjZyDUVIJ/fZj3+xYa5/COAb4I=	\N	f	6c3e28bc-b656-4445-bad4-675149a62ca6	Mara			f	t	2021-09-27 12:43:44.921536+00			0	0	t	f	Mara	\N
1233	pbkdf2_sha256$216000$eZ3Je8HJnreQ$R+NmjFfasKg7jRdwmJxNjiDtzbOeR5G0iV/Gkj8711Y=	\N	f	1f079fc5-951b-412b-ada8-97d059e00303	Shahrukh			f	t	2021-09-27 12:43:45.201847+00			0	0	t	f	Shahrukh	\N
1234	pbkdf2_sha256$216000$uGxJE8xh3WZB$EwCMf/D0y09bsazdI3XNqZ5ZqzrT6Lgf8NrLK7gM570=	\N	f	ec7d00e4-03e8-4aa2-a7db-24682c910e0f	Mara			f	t	2021-09-27 12:43:51.021536+00			0	0	t	f	Mara	\N
1235	pbkdf2_sha256$216000$cXxPNQiJiJRn$UWMvYLJP9pa98XCj+hYos8XU92oFqb5KJKF10yl3zfc=	\N	f	73dfc5e9-3e9d-4c20-8a71-f3241a11a953	John			f	t	2021-09-27 12:43:51.281742+00			0	0	t	f	John	\N
1236	pbkdf2_sha256$216000$hz6RudJwfRgp$OlOsjscrtI0N21yeUpnrY5Cx7qPhKrdMQGtSo9dJPJE=	\N	f	b7c06e67-4809-4ec9-bf6e-add12e40ac78	Loser			f	t	2021-09-27 12:43:56.625089+00			0	0	t	f	Loser	\N
1237	pbkdf2_sha256$216000$TgHWL02pE5Nv$w1oTCRI388lW0aenZjLX3noYWWIq0DfHiTI+vgyoqbI=	\N	f	2a25814f-e189-416f-b664-d62bd66fc2a3	Hero			f	t	2021-09-27 12:43:56.875026+00			0	0	t	f	Hero	\N
1238	pbkdf2_sha256$216000$nzNXSpF7bLo1$e5vNHNmVCydoZygnWaMq3HjmrFCMqjZPFz6YDuqw8/0=	\N	f	be83b9d2-9e4a-4bfe-9167-73ab4930bf32	Krishna			f	t	2021-09-27 12:44:02.806856+00			0	0	t	f	Krishna	\N
1239	pbkdf2_sha256$216000$fUZooXiuxW8J$hqeyaH15GgtUzkLw/U/QadQrYyqIBaAOOpL8vHWcjDw=	\N	f	f7201aae-4f28-4d64-9496-0ebeb4d9e746	Ruby			f	t	2021-09-27 12:44:03.082039+00			0	0	t	f	Ruby	\N
1240	pbkdf2_sha256$216000$9yDfxSTlRoDT$7EiN6gx0b6y/JVa7WRnlYio0EKnzTDDaePywhRqvB8A=	\N	f	13ecb93e-5198-4d95-9eee-f8a5a20866d3	Krishna			f	t	2021-09-27 12:44:08.445854+00			0	0	t	f	Krishna	\N
1241	pbkdf2_sha256$216000$mBX2qoldf3dy$jtfCe3k4Fre/WEGlecTtSY8U5JBSaWgEz2G98XC1Mv8=	\N	f	445fd428-be73-44e3-a137-277ebe22953c	Diamond			f	t	2021-09-27 12:44:08.685933+00			0	0	t	f	Diamond	\N
1242	pbkdf2_sha256$216000$VoeSCE48tNNA$DgnYS9Vkg0idRQtutxjj/IFN6HVEt4hMqofnvAKBZFw=	\N	f	1785d0a7-64d7-4c89-a718-9fe4f1fcce45	Major			f	t	2021-09-27 12:44:14.356218+00			0	0	t	f	Major	\N
1243	pbkdf2_sha256$216000$8Wb23f624gKl$JQKd3sopjYCYWX3uu110kdIugRl/guy5WOOZqL7jCgo=	\N	f	02f001ad-2fc2-48ad-9d8a-48803b5ade7f	Rani			f	t	2021-09-27 12:44:14.611083+00			0	0	t	f	Rani	\N
1244	pbkdf2_sha256$216000$9oC4Ecvjv59O$uFLMWWmHWwuBfQ4mjLxiYmd9+//VB19WU3YUA67W6YA=	\N	f	93b2f1dc-e53e-4d05-93bd-0a2f5360fdbd	Akshay			f	t	2021-09-27 12:44:20.100791+00			0	0	t	f	Akshay	\N
1245	pbkdf2_sha256$216000$x7wTlTOhkLFj$tZCX8hAsOGw9WSj6pidczmdOvLFu2HSc8jod9OMgLtg=	\N	f	f823313d-4e90-440a-bd0b-60b224f11489	Number 1			f	t	2021-09-27 12:44:20.361287+00			0	0	t	f	Number 1	\N
1246	pbkdf2_sha256$216000$TlIuhN6LVKgm$BtK6PBmupRSt166PiicFuEtcht6PefPXbmnhiruwIPE=	\N	f	204d5d0f-46b9-4c79-ad18-e8bf7dfaaf5c	Winner			f	t	2021-09-27 12:44:26.019972+00			0	0	t	f	Winner	\N
1247	pbkdf2_sha256$216000$mLi4rehxdOV2$6evCfslOEk8cfVGgmBVX1RlifxBqJ1CYwFAPYBzoD6M=	\N	f	da56e96e-d19f-4307-87cf-4805f04fbc32	Vijay			f	t	2021-09-27 12:44:26.254931+00			0	0	t	f	Vijay	\N
1248	pbkdf2_sha256$216000$xytShQRRmpXJ$S5I6Jh28ZNORWcQ2AEcE+XziDOpxb+VXHm8RQEgoJIw=	\N	f	94652120-e45b-4028-87d2-94252b963969	Krishna			f	t	2021-09-27 12:44:36.516027+00			0	0	t	f	Krishna	\N
1249	pbkdf2_sha256$216000$pEcBs5SaS8jm$PtIKRr7sxaP9EJw6aAxP0F1yyc3XnHctKsQoKYV5vic=	\N	f	32cf32c6-fc95-4f43-bfc4-481136dce2a9	Rani			f	t	2021-09-27 12:44:38.241398+00			0	0	t	f	Rani	\N
1250	pbkdf2_sha256$216000$6xExCcYXJzxr$TcSBoIeS5N7CzrFxPxLNH4gq4Y8loN4noUeCaYeeWJc=	\N	f	b5ab3442-b474-4543-90fa-11fb95e95c17	John			f	t	2021-09-27 12:44:55.261195+00			0	0	t	f	John	\N
1251	pbkdf2_sha256$216000$emOHewnPd5oS$QdIIVuw1Dm+ctKosKE1L4EdIe7JuUXrL9cLNcEsriEE=	\N	f	f6f54937-9ddf-4bc8-8bbf-823d9b4a27fd	Ruby			f	t	2021-09-27 12:44:55.781374+00			0	0	t	f	Ruby	\N
1252	pbkdf2_sha256$216000$NHaF4fuQNu6y$PMl43bN2rJ5hXX6vmA16E3DdCLMsqTb4y9Ki1GEKXW0=	\N	f	0a4cc194-4ce1-466a-9938-a155fbb078e8	Vijay			f	t	2021-09-27 12:45:01.561801+00			0	0	t	f	Vijay	\N
1253	pbkdf2_sha256$216000$yH2qFR1jKHg9$gD7ewV+CePu4NI0AkXE+97dz2C4li3O85yHrm+WEPYo=	\N	f	73d8e38a-cca3-42fe-9812-b9512fed5f64	Major			f	t	2021-09-27 12:45:01.826948+00			0	0	t	f	Major	\N
1254	pbkdf2_sha256$216000$Duw4EVjI0GXg$Fj7FflLXyD8EibTmiNNZ2ot9tfMEsf6sRefVbCMxtk4=	\N	f	6d516755-afe2-4bab-9365-0141aa626da7	Krishna			f	t	2021-09-27 12:45:07.165464+00			0	0	t	f	Krishna	\N
1255	pbkdf2_sha256$216000$pFojUiFyFxgo$tgCtlcTrZCnyd62K3HFXNTH0xmTEPyZykEnJ8ZZk4cM=	\N	f	b127d61f-d3e5-423b-ae64-f2d8bf42702f	Rani			f	t	2021-09-27 12:45:07.415248+00			0	0	t	f	Rani	\N
1256	pbkdf2_sha256$216000$ptpZh0I4mbwU$8NLZoCKSX5wf+cTNvPWsEItcGhvSuogwDr4Vx3IT5Po=	\N	f	99b044c1-9a17-495f-b5b8-48b1b98df1bc	Master			f	t	2021-09-27 12:45:12.856244+00			0	0	t	f	Master	\N
1257	pbkdf2_sha256$216000$c9QCCsFM1oMX$BqIsU1C4X2HgcY6Z8KbMyON576jMCtbKtaXD/rQbxy8=	\N	f	17250ed0-ad8b-4da5-ade0-622050d29844	Shivaraj			f	t	2021-09-27 12:45:13.115917+00			0	0	t	f	Shivaraj	\N
1258	pbkdf2_sha256$216000$CRlXreUgqbLy$DBcb5Sp2CmDxVYkeNw+dhbq2qs8jyFVNpSd+rxjfOsE=	\N	f	003d10d7-1f2d-457c-89f9-2171972e69e6	Shivaraj			f	t	2021-09-27 12:45:18.871599+00			0	0	t	f	Shivaraj	\N
1259	pbkdf2_sha256$216000$96tk0KttLcFm$lsymaFSR2ru0iLQgdz8LUzC6Am5eu51MXbzQ3C/th3I=	\N	f	b61bc58b-82ef-405a-b264-efd640497180	Krishna			f	t	2021-09-27 12:45:19.141753+00			0	0	t	f	Krishna	\N
1260	pbkdf2_sha256$216000$AM311iPUebpm$zCDNB036oq06JS8Gk/XlcGsDdCH2VQE+wHcboGDAXRI=	\N	f	c049b414-af7f-4619-a4f7-0c2c1c5bc48f	Hero			f	t	2021-09-27 12:45:24.606532+00			0	0	t	f	Hero	\N
1261	pbkdf2_sha256$216000$qLHLtGC3yYer$vk7B++bvkOeNIpoRSbPisPFINoWPHYu9cmJJ/9nr5mU=	\N	f	b61eeb8a-a225-4720-9fd1-91bd847aba37	Number 1			f	t	2021-09-27 12:45:24.851216+00			0	0	t	f	Number 1	\N
1262	pbkdf2_sha256$216000$qj8bl4ogj5vr$H6d9RfHU0sRohWWY+qDxwKbLbJzfObwHlVLnhOyjK9w=	\N	f	2a5c7817-fc6a-4c05-ae61-16acb49f2f4f	Loser			f	t	2021-09-27 12:45:30.766997+00			0	0	t	f	Loser	\N
1263	pbkdf2_sha256$216000$SfSvR2Bb37ta$vqDt4hH4dW3RnSoz4WLiUvzA1i9nUGrSNKNomeG1GJE=	\N	f	022a2905-2b45-486f-8247-131f65f3f1dc	Diamond			f	t	2021-09-27 12:45:31.026894+00			0	0	t	f	Diamond	\N
1264	pbkdf2_sha256$216000$eTPgvDZjLwrU$rWyKMGWlliGNxCv4UaFSv/T4kym5O7TsjrEBlzhnKLw=	\N	f	56b41f2e-f338-4cbb-82dd-feb388fd99aa	Akshay			f	t	2021-09-27 12:45:36.405545+00			0	0	t	f	Akshay	\N
1265	pbkdf2_sha256$216000$aXO5W5IeIKbm$spnld/I0hfh67E+qasuziGzXGSMiKmsMwKJ7dW0TWUc=	\N	f	1f38657d-59a9-4a96-aaf9-53a8ef3cca88	Gambler			f	t	2021-09-27 12:45:36.665385+00			0	0	t	f	Gambler	\N
1266	pbkdf2_sha256$216000$gNw98USwAiDU$vP2w9QtGuDJYSC0lI2+l+afehKCi/mki/InTCvDBwp0=	\N	f	a4d935b2-de4b-4907-8350-47014d5033ac	Poker Raja			f	t	2021-09-27 12:45:42.39597+00			0	0	t	f	Poker Raja	\N
1267	pbkdf2_sha256$216000$WLbfqRlVjPjr$NMc0GYMPDEQyn19rjFUAEcHQoVUVIFNMIisf3+NK4nA=	\N	f	cd47b05b-9551-4ae8-8b06-bfeb8f211337	John			f	t	2021-09-27 12:45:42.651114+00			0	0	t	f	John	\N
1268	pbkdf2_sha256$216000$vFcih4NWJsA6$CTa8xpivZt45GZJeXYiOpzMvjlDKjkTBFm6w9jgeCLs=	\N	f	5c5628d7-4433-4563-a824-3e06bebdb880	Vijay			f	t	2021-09-27 12:45:48.08563+00			0	0	t	f	Vijay	\N
1269	pbkdf2_sha256$216000$oduBBX1cxE1w$vq2KJ99XettcaHxWMN8s66AirDDbj9rlHK/pBGyVjPw=	\N	f	89a8b26c-9951-477b-b210-c55310f66f85	Sheetal			f	t	2021-09-27 12:45:48.365449+00			0	0	t	f	Sheetal	\N
1270	pbkdf2_sha256$216000$L7v1fUm4Z55o$5Cbbuv1ZQfdfP5lJiFu2D/tCRNh4abQYAh4tg1y2K7M=	\N	f	b8a35b61-b54b-4700-a3e6-06f8340406d1	Loser			f	t	2021-09-27 12:45:54.1822+00			0	0	t	f	Loser	\N
1271	pbkdf2_sha256$216000$rx0vDLJrA8vU$G5dsEPpT6XnvfGpbNuxz3jXmoyGYQ2tsofB+leaNorY=	\N	f	bf0196f2-5f36-438d-8c2a-ba6353e8082f	Number 1			f	t	2021-09-27 12:45:54.44113+00			0	0	t	f	Number 1	\N
1272	pbkdf2_sha256$216000$WKPFxGF46YNb$yMFmT4nitrnoqViPxNDqHVBA1jhey3xDI8YGTp1Iiq8=	\N	f	91fa279c-cb45-4fbf-a682-9ecfbe6c4058	Sheetal			f	t	2021-09-27 12:45:59.846221+00			0	0	t	f	Sheetal	\N
1273	pbkdf2_sha256$216000$ofk8JVdBYhH5$0GKhfs/utdEyShL1uNWoA4TR0dj+5nWaU8s5XfkkrJQ=	\N	f	32ae61aa-e3aa-4585-ade8-099209e46942	Poker Raja			f	t	2021-09-27 12:46:00.166279+00			0	0	t	f	Poker Raja	\N
1274	pbkdf2_sha256$216000$BActJ2FoU9iL$4KGykvaBtm64kfzb7NgkU5MKvUg7T5QvBV9gChfPesY=	\N	f	2737677e-8dc7-400c-9523-b92ef6945c7f	Major			f	t	2021-09-27 12:46:05.955391+00			0	0	t	f	Major	\N
1275	pbkdf2_sha256$216000$IyPGgabHKhSd$5+STJffc9Y1ZNcuD1aDUXvw9J8WqmF0i3jwy3ut73r0=	\N	f	e7409e8e-0655-4fd4-806d-59f262ed6aa9	Master			f	t	2021-09-27 12:46:06.210321+00			0	0	t	f	Master	\N
1276	pbkdf2_sha256$216000$UQn2Nml8IZd0$XZCdejqJ/nY3C8dv1I/m1Pm9Jh53zhYdrSzqwsCMQLk=	\N	f	902c4d64-891b-4701-b6f5-6ee189b9d6e9	Master			f	t	2021-09-27 12:46:11.661146+00			0	0	t	f	Master	\N
1277	pbkdf2_sha256$216000$9dyKcOfivahf$9YsitPHl49QyPPrevdXP8V2/yHwPxl80jpc+HwOYjEA=	\N	f	186a9200-151f-491f-a7e8-1b565eb1b299	Loser			f	t	2021-09-27 12:46:11.920982+00			0	0	t	f	Loser	\N
1278	pbkdf2_sha256$216000$G3LwNCKDALN1$tHCheLN1FNIqulSp7MvNSkkecVhqeNoPcOazji+x7LU=	\N	f	3d6e148d-e78c-4ee7-9b2e-30a379080138	Akshay			f	t	2021-09-27 12:46:17.701581+00			0	0	t	f	Akshay	\N
1279	pbkdf2_sha256$216000$evxOoEXqK7Ws$BshzQl/WWYjX9jx2galhzM7eGKCtZMBuTEviUvrYURg=	\N	f	64897080-1866-41e7-abc9-68a215de04a0	Shivaraj			f	t	2021-09-27 12:46:17.961732+00			0	0	t	f	Shivaraj	\N
1280	pbkdf2_sha256$216000$CIxn24VziRp2$UHWUymWmsS0U/keQ9woY3vtNby8xhrajKNzZa8Jmk5Y=	\N	f	2ad22038-5303-4b38-bc04-714dfa2876db	Master			f	t	2021-09-27 12:46:23.365987+00			0	0	t	f	Master	\N
1281	pbkdf2_sha256$216000$leyyv4R8KcL6$bVJmQX/rtNEzbKFuAfoiUCQij69cWQdRC+2vwD89vls=	\N	f	a70cdcae-8d86-4a98-a4c7-fa5022d444fb	Avenger			f	t	2021-09-27 12:46:23.600742+00			0	0	t	f	Avenger	\N
1282	pbkdf2_sha256$216000$ya4AIuKRZ39T$mTAepwUFMBX1EzuviRqSsKaM1AlzfXE91dz+I17eBDg=	\N	f	d66db0fb-519e-4573-bffc-962a8cfc5f66	Shivaraj			f	t	2021-09-27 12:46:29.461641+00			0	0	t	f	Shivaraj	\N
1283	pbkdf2_sha256$216000$sqLOoTIvler6$B4avrJ4Yk/aaz5JZoXgTxinePhj8vNOQ7npdc9Z8Uso=	\N	f	c7a92d30-4b88-4564-9684-645c3ce6b39d	Raju			f	t	2021-09-27 12:46:29.741685+00			0	0	t	f	Raju	\N
1284	pbkdf2_sha256$216000$b3vLDg4RIVv2$DmEPdsB2v7XbfKlG3p9F9SGnRjLzRygtj92Fp5rHytg=	\N	f	d4d9477a-968d-4668-8d77-b44156cc2765	Roja			f	t	2021-09-27 12:46:35.212207+00			0	0	t	f	Roja	\N
1285	pbkdf2_sha256$216000$yUbZD3HN00BV$ut9O/tYuGXWEFPEQLPAXpzTvStbixpYu+lAPgmiUQDk=	\N	f	c0a7fa7e-b1cd-499d-a46c-40e0af27721c	Avenger			f	t	2021-09-27 12:46:35.481891+00			0	0	t	f	Avenger	\N
1286	pbkdf2_sha256$216000$dAgwgSleGk8L$XTKAmpSvk5R1Kjcya1ZIyOG38HbfGbXwQuPtLjoOICI=	\N	f	869bb530-aae6-4934-8812-a3d98316abf9	Diamond			f	t	2021-09-27 12:46:41.001346+00			0	0	t	f	Diamond	\N
1287	pbkdf2_sha256$216000$XJHf2nAjAhVW$HsLovyrpzk9n5oykj1+sMw6BH6zWtvUnz027hi+1BDQ=	\N	f	60d8e417-d50b-41f2-8907-b5cf2307e52b	Raju			f	t	2021-09-27 12:46:41.261726+00			0	0	t	f	Raju	\N
1288	pbkdf2_sha256$216000$Zb6dtt9i8BaD$jpgrxBDxLboYKD8GD5Xfu1o6yVT1+lha+UdJqiE82M4=	\N	f	6c23ce53-3602-4050-9580-8b5626ae9045	Mara			f	t	2021-09-27 12:46:47.041615+00			0	0	t	f	Mara	\N
1289	pbkdf2_sha256$216000$oSisoovJDCL1$5sdBddcUQ6QW6lf/eD8PNtuu4Jwch7N1A5AVfalY/rA=	\N	f	88257588-2ffb-46d8-bae3-0b75a52aa2b5	Gambler			f	t	2021-09-27 12:46:47.331684+00			0	0	t	f	Gambler	\N
1290	pbkdf2_sha256$216000$fDDzyoymtZMz$4ccykH0ODIGe7dYUItZ2laxxfGP3mBUPfN2ntaRmS+4=	\N	f	ccd3a920-55aa-4bcf-a88e-0b4d79bf777a	Sheetal			f	t	2021-09-27 12:46:52.666014+00			0	0	t	f	Sheetal	\N
1291	pbkdf2_sha256$216000$1stb4LFSsF8L$c/Qmplevh3bP2HDBF0hKOVoN2RGMnzVxGiXpTydwzdg=	\N	f	c295d762-0631-43ce-ad15-d46ea7a8ac32	Master			f	t	2021-09-27 12:46:52.950517+00			0	0	t	f	Master	\N
1292	pbkdf2_sha256$216000$YSmmaqImFL2S$S3D/RYWaxREumXcX/ZcVzalaB4K0Oj9s7GJm40Tc/A0=	\N	f	ccd957d0-c4dc-4e63-8e13-7e510e59c52d	Shahrukh			f	t	2021-09-27 12:46:58.730854+00			0	0	t	f	Shahrukh	\N
1293	pbkdf2_sha256$216000$G58UQhOas11n$yoA0ZPNnkrS57RKfgsjlfhV2SyqWAz2hwIqF4s/b4DQ=	\N	f	54ed7e03-784a-46f0-bac6-d24ce39700ae	Hero			f	t	2021-09-27 12:46:59.011149+00			0	0	t	f	Hero	\N
1294	pbkdf2_sha256$216000$uQ333VqPeeX3$ntE3G3d2Cj/1Srw01iBbT2hot5/7B0jSemoFaEb+RSA=	\N	f	72965876-ac31-4b53-b2e4-bc399a7a46be	Winner			f	t	2021-09-27 12:47:04.462012+00			0	0	t	f	Winner	\N
1295	pbkdf2_sha256$216000$7GXhZheibVsF$3y04w+QLmkw8aEI+/pM0NgizeVsiLT0iY2XAbTgv/I8=	\N	f	af0297f7-6afe-4236-b9be-f5eadf48bd55	Ruby			f	t	2021-09-27 12:47:04.731828+00			0	0	t	f	Ruby	\N
1296	pbkdf2_sha256$216000$2xYOfFRSargA$ZO87hyKkhlXHUR+NlAhG2qpMkdr83VCZPtfos5Q4/a0=	\N	f	f335e2f0-91b5-4702-afed-88577b7f5c72	Major			f	t	2021-09-27 12:47:10.541062+00			0	0	t	f	Major	\N
1297	pbkdf2_sha256$216000$W46MKmxrnNUN$slWUy0AKhEbxC1Kra6u7jiPq5a2+raZZsUeENh5e3DA=	\N	f	2b35e98e-8f69-44bd-aa77-b1d312198df0	Number 1			f	t	2021-09-27 12:47:10.810807+00			0	0	t	f	Number 1	\N
1298	pbkdf2_sha256$216000$f2KxTckUpEG1$pOx+Rz3jewgA/JI9gqcd0P5qDBgpSKUWKWJUvE36XRs=	\N	f	ec002dbc-5189-407d-95d5-e833980b7e38	Diamond			f	t	2021-09-27 12:47:16.2255+00			0	0	t	f	Diamond	\N
1299	pbkdf2_sha256$216000$wIodOEbmU193$byI1ybv7ryPW/uE+P5b+Qy0CNQPs98n68zJljm4FpRk=	\N	f	69231055-e378-4b80-abf3-30fe27b14cec	Winner			f	t	2021-09-27 12:47:16.465341+00			0	0	t	f	Winner	\N
1300	pbkdf2_sha256$216000$HXzuLyYgHV0k$nYCcxYoJpB5dSmPVLb0DKAzQJQ+nPulI6NlymTX19UU=	\N	f	d80478d9-28b2-47ae-b8c5-70df8a38a019	Krishna			f	t	2021-09-27 12:47:22.281507+00			0	0	t	f	Krishna	\N
1301	pbkdf2_sha256$216000$sB7zSDhH9hhm$1vWavc/FJmuU/oygi974PmPpipqLt3b18/b15JQ2kzI=	\N	f	8d7e4ee0-259a-4257-baa0-25cbd9233131	Rani			f	t	2021-09-27 12:47:22.551797+00			0	0	t	f	Rani	\N
1302	pbkdf2_sha256$216000$i1rNqvp0RJ8y$/YiMqjurYRId+91kYAXXTypcruNZTvuUrUfStfHjH5E=	\N	f	e813e5e0-07e0-4fc6-a401-5c93d25f34d9	Akshay			f	t	2021-09-27 12:47:27.986596+00			0	0	t	f	Akshay	\N
1303	pbkdf2_sha256$216000$eprfWV6Yl55F$brAwSQHL3tRd/12Erle4Z+jqkDSdanD/wxv9CEN7xYg=	\N	f	19f546b4-1ab1-43d4-a7e6-88d23c2594f3	Winner			f	t	2021-09-27 12:47:28.261653+00			0	0	t	f	Winner	\N
1304	pbkdf2_sha256$216000$eTjXYxb1fiZf$vj1wt7VYvqvQRDbqfFxafNQywjpiVwdmJZFAxnpLTEs=	\N	f	485e84cc-f91a-4f99-beb2-eae95df76b82	Gambler			f	t	2021-09-27 12:47:33.966857+00			0	0	t	f	Gambler	\N
1305	pbkdf2_sha256$216000$Ap2JOwXjoJPb$6S+scLBUmBAHMrl1/Rvx81RJHG6YqsDmi+BDeu1siqE=	\N	f	fc02491f-dd92-4c63-a74c-84135b2107f4	Mara			f	t	2021-09-27 12:47:34.24595+00			0	0	t	f	Mara	\N
1306	pbkdf2_sha256$216000$veuIcV3Yvf7t$jKRL1R5f0TAxG64fMtcudatG5xB8utAnHQbp5KKuaFM=	\N	f	79e9739a-457a-4624-83c8-03e53b7c7b44	John			f	t	2021-09-27 12:47:40.04568+00			0	0	t	f	John	\N
1307	pbkdf2_sha256$216000$q4QjjeT9lmoh$jEyozRerIBmujSo135cUC9ied5MWpVSW9Dmets1nzV0=	\N	f	74bdff12-cec5-468f-9141-fb5577956988	Krishna			f	t	2021-09-27 12:47:40.295948+00			0	0	t	f	Krishna	\N
1308	pbkdf2_sha256$216000$UutY7eeo58gE$+kUbCa4cgOEu9QNlj4XZ/6MRRyTgViCV3T3R0+MeZTY=	\N	f	a67c48d4-837f-45e1-ac02-126a3be12114	Poker Raja			f	t	2021-09-27 12:47:45.891801+00			0	0	t	f	Poker Raja	\N
1309	pbkdf2_sha256$216000$pVZc4PIS2v5z$XW4n9JRYyO+qJZjkUejtBc0iCNoqSxw7VecRHY3FLqo=	\N	f	84db7419-93fc-40ee-81e0-cf3573a47762	Poker Raja			f	t	2021-09-27 12:47:46.161779+00			0	0	t	f	Poker Raja	\N
1310	pbkdf2_sha256$216000$l0jGFUrGdj1w$TusO+MI70rVTQdJoSocHt1n/Y89+zcwY5B26mRAs77Q=	\N	f	0d691f4a-050c-45e5-9710-ab1a492290a1	Poker Raja			f	t	2021-09-27 12:47:51.925017+00			0	0	t	f	Poker Raja	\N
1311	pbkdf2_sha256$216000$MvRtddRWBp3u$oyiYWXy4Jgt84RkKPqH5I/1iVPlxoZOQQkbf2YYmUtc=	\N	f	4ddbe37b-2bd9-4f16-a8c8-fa1f2d7fa006	Mara			f	t	2021-09-27 12:47:52.1698+00			0	0	t	f	Mara	\N
1312	pbkdf2_sha256$216000$C25I6JskV72N$rnTmYIyfb1OJPJhH6LM7spbnEcx9HIlJv0J9HBjlVHk=	\N	f	55bf1073-0263-4cd3-a52d-13a87ef45987	Sheetal			f	t	2021-09-27 12:47:57.600874+00			0	0	t	f	Sheetal	\N
1313	pbkdf2_sha256$216000$OmMQECo0Qoov$rUU4cE/Y+E1rwDNFSd3k56ZSQl2hEPA6BcuCYki8+uU=	\N	f	053c23d3-ddf3-4052-aec0-558ae6c6f9c7	Ruby			f	t	2021-09-27 12:47:57.860983+00			0	0	t	f	Ruby	\N
1314	pbkdf2_sha256$216000$g8WbpXpCD6Bf$S+S7zQb2gp7jBPUkPS5nFPm6D7aHcgOefhaXyaYYMXE=	\N	f	e40315c5-045b-4f0a-b7a9-6f1e17f52f0c	Avenger			f	t	2021-09-27 12:48:03.661573+00			0	0	t	f	Avenger	\N
1315	pbkdf2_sha256$216000$bOBZwIdkO1W7$iLnW6yliX46TPa00+/pXUAKAd/vSpG3/ZeDNg96eDwk=	\N	f	07112333-db8e-4035-b076-84bc04433828	Avenger			f	t	2021-09-27 12:48:03.951552+00			0	0	t	f	Avenger	\N
1316	pbkdf2_sha256$216000$hMZMSItozQYK$URneOxDe/oaV8eVyxY1P1J6k7jb+9L5qtYDLTmN/mFc=	\N	f	ea555ed7-2b16-4c94-9053-044190932613	John			f	t	2021-09-27 12:48:09.341502+00			0	0	t	f	John	\N
1317	pbkdf2_sha256$216000$IdpvBWmJ0nxq$T7Gxqz7XTbPomXWPSl2nQ+NxggJpTxntPwXsLCTGgqc=	\N	f	5af51f55-293a-4793-990e-b49100a497d6	John			f	t	2021-09-27 12:48:09.656619+00			0	0	t	f	John	\N
1318	pbkdf2_sha256$216000$NzoCxctu1Y2E$1HvmW9KlBWOLymxYC6qRU61o9Fl6RbkzazSrlLJDW5A=	\N	f	2a92ced3-0131-4a8b-bb07-63dc05241fb0	Mara			f	t	2021-09-27 12:48:15.526281+00			0	0	t	f	Mara	\N
1319	pbkdf2_sha256$216000$wSzdfqToROv7$gmDgM33nnat2ys0Qh7N2MeAmuOAr4kwvsDPzZYgDxqo=	\N	f	d474b65a-ab56-47b2-94cb-800ca16f7cfe	Gambler			f	t	2021-09-27 12:48:15.795991+00			0	0	t	f	Gambler	\N
1320	pbkdf2_sha256$216000$0U0hnWuYnD27$RH/WcVlK6rgFvBM3uH8RDmW23fRGPWyXmn/CD7b7KIc=	\N	f	a259671e-bc71-4511-b289-a345599cd608	Gambler			f	t	2021-09-27 12:48:21.490485+00			0	0	t	f	Gambler	\N
1321	pbkdf2_sha256$216000$vTenV94kuRvY$UXcTLkh75rLSeQx7Ik8MPsdAXn5XvhNBCgwqxjQhlgA=	\N	f	7d0bb4b4-0266-44d8-bba2-471362687193	Mara			f	t	2021-09-27 12:48:21.745888+00			0	0	t	f	Mara	\N
1322	pbkdf2_sha256$216000$NT9PpbEe9QTF$REptwOLBv7zVq4W2uoKPnIE7HM2AvmLycSkJsXLfHi0=	\N	f	32758618-d598-414d-82b6-c59f4a17c433	John			f	t	2021-09-27 12:48:27.505039+00			0	0	t	f	John	\N
1323	pbkdf2_sha256$216000$E9F6xluV20cM$pY1SsfQIhLa/hH0zptYypwDqhhYXuoBz9MDTnO45TLw=	\N	f	f64402bd-9e13-44f1-acb3-857cc26d9ebc	Shahrukh			f	t	2021-09-27 12:48:27.76524+00			0	0	t	f	Shahrukh	\N
1324	pbkdf2_sha256$216000$3gQav7qu5wb6$pskI5ObMwVQZiX0fE8CXDkYWgui/DhDihsC13abv6Ic=	\N	f	77dc1a36-a9fb-4df3-bc2e-9dc8c5de3e58	Major			f	t	2021-09-27 12:48:33.23117+00			0	0	t	f	Major	\N
1325	pbkdf2_sha256$216000$uI8ji2ZGB6Au$ibhm/z4sWzVHmypV+yN3DUdnhPWvFNghfHhhgqsP33Q=	\N	f	c1cd7bb3-8f19-46bf-a18b-90b428b176ea	Ruby			f	t	2021-09-27 12:48:33.520756+00			0	0	t	f	Ruby	\N
1326	pbkdf2_sha256$216000$AyoMer5nj3yL$4+EZfMdjvn+/8oS675kIoG0h88QGnYSwC0tLBOjitO4=	\N	f	9ecb0ad0-70f0-4736-9358-44228a510f81	Number 1			f	t	2021-09-27 12:48:39.421669+00			0	0	t	f	Number 1	\N
1327	pbkdf2_sha256$216000$5hvq9XrgHqG3$NTFaYaoDo3k96mc2YrFDOzOk1gkn61RTerjYetmx3YQ=	\N	f	710220de-cfc5-4e55-a6a5-f5f5c40af822	Roja			f	t	2021-09-27 12:48:39.691894+00			0	0	t	f	Roja	\N
1328	pbkdf2_sha256$216000$KgY2N03M1k1d$oa7zN/YdzL4g0Y+BRnFjeuwI6IrGEQhhVEiq+7UhMto=	\N	f	da0771a2-0cfe-4439-bc76-e8fc139795fd	Raju			f	t	2021-09-27 12:48:45.08499+00			0	0	t	f	Raju	\N
1329	pbkdf2_sha256$216000$CLRuwuGG5KiG$+56oWXHh5Z726npCUDcccdRS4obqMv11lANl8MTMHnY=	\N	f	97120da8-1ab2-45b9-8e78-fa2517775b4e	Vijay			f	t	2021-09-27 12:48:45.33481+00			0	0	t	f	Vijay	\N
1330	pbkdf2_sha256$216000$zhVMNRuyya1S$h46FBmwf7Hxh90/cVUZApB5nWMmXwMFfogHFmRU3mLY=	\N	f	c7d453fe-85ec-4b5e-b5d7-bf1f02df1974	Mara			f	t	2021-09-27 12:48:51.141517+00			0	0	t	f	Mara	\N
1331	pbkdf2_sha256$216000$SRzdPcH3V6Zb$GPuziYfY0QLNfTUu3A9ITaojXDXXaY1MzjvZlUk30IY=	\N	f	3dac560e-c4a5-45e3-accd-6d520f516f44	Mara			f	t	2021-09-27 12:48:51.411377+00			0	0	t	f	Mara	\N
1332	pbkdf2_sha256$216000$iFAqxkU75hT7$w/7wYhxgaZi+noSShfqn24dZbF6GXBBKSIAPw8CEG7I=	\N	f	5e1eb64d-dc3b-40b4-b4f2-12c7d0abb1b8	Number 1			f	t	2021-09-27 12:48:56.894787+00			0	0	t	f	Number 1	\N
1333	pbkdf2_sha256$216000$cjBgOhNB8FE3$Q8pwLTImoAd77fj7EqGGW+zcA34MdXyciWGITm4sq5M=	\N	f	686ca8f6-1c38-4d4b-a4ec-aa9b0378c1ca	Avenger			f	t	2021-09-27 12:48:57.14481+00			0	0	t	f	Avenger	\N
1334	pbkdf2_sha256$216000$0FKcjfkMJttK$lbCdqUt9qaGR9CI34UMpSaoEvLl4Ssg0I4klMpVsCHI=	\N	f	f5098d93-6b00-4efe-a846-8f7846a590ad	Shivaraj			f	t	2021-09-27 12:49:02.954827+00			0	0	t	f	Shivaraj	\N
1335	pbkdf2_sha256$216000$uLeVFpvsgXEg$L0X4fLmvTRonHCarNT980B11j4yy7YxpVzWkDoD55VE=	\N	f	f6906ad9-93c8-4f9f-8f5a-1c0fb29eefdb	Krishna			f	t	2021-09-27 12:49:03.20517+00			0	0	t	f	Krishna	\N
1336	pbkdf2_sha256$216000$snntqoEHZzIL$Yyg/x4LprLBB3VmX/X3T35VhzvPmhlGgtRaU6UprREY=	\N	f	8f818336-6acc-4c92-a5bf-d7055e5bea05	Krishna			f	t	2021-09-27 12:49:08.64136+00			0	0	t	f	Krishna	\N
1337	pbkdf2_sha256$216000$XPlUO5FXrpJm$xGuSBmG2S/p6OsfuhV1LeX0H2VecF0Vfn888rkfrmjY=	\N	f	88a71ab7-87d2-4745-8f39-d5511566d133	Poker Raja			f	t	2021-09-27 12:49:08.901461+00			0	0	t	f	Poker Raja	\N
1338	pbkdf2_sha256$216000$SaUUKtOFBOP6$480naQB0Q9env8fWrxueXpAtihU+Mh8oiBhPok9Mle0=	\N	f	45ece52a-49dc-4e6a-9191-3af88f01d20c	Loser			f	t	2021-09-27 12:49:14.645993+00			0	0	t	f	Loser	\N
1339	pbkdf2_sha256$216000$pRshYZrUidgw$07UHycVQkBP5+TSQDE0u3TkKRwQ8V1sznSG4eeS6DKc=	\N	f	2f6b6c2c-29f1-43bc-8f4e-a26f70d0f9b5	Master			f	t	2021-09-27 12:49:14.904741+00			0	0	t	f	Master	\N
1340	pbkdf2_sha256$216000$2Gf05ECBfKAl$IPrL4BicWx6PPRwd4lRYCeCWJjzV5/GHo5eR0kDSVXI=	\N	f	9c94da76-71b8-4a49-8682-4b7a74acfcfc	Hero			f	t	2021-09-27 12:49:20.381486+00			0	0	t	f	Hero	\N
1341	pbkdf2_sha256$216000$n0hb9rgRqky7$hisV2FFVwPIFRLfvtngCYnRlULGefD73eNeUO7b85+g=	\N	f	c52426d7-0220-4097-9f75-0e0bb7151cab	Master			f	t	2021-09-27 12:49:20.641647+00			0	0	t	f	Master	\N
1342	pbkdf2_sha256$216000$3YjGJmD8K7ja$xfKZ6WFXNo178fU+ITxVMjwDL2gHjY348ntJIMsdLYU=	\N	f	7a417fdd-bea7-42d6-a2df-3eef4efff83a	Roja			f	t	2021-09-27 12:49:26.420708+00			0	0	t	f	Roja	\N
1343	pbkdf2_sha256$216000$nzB12Q7l1cR4$T22ZUujHnJYfdqCfZyIQ20X6zD7Mjsy+1a1+4TmAiDw=	\N	f	736b23f9-3dba-4044-8c16-2a913039857e	Shahrukh			f	t	2021-09-27 12:49:26.680968+00			0	0	t	f	Shahrukh	\N
1344	pbkdf2_sha256$216000$l4D8ma2yaUld$zk4fKW0MRVxnzr6nv6WlTQ2r6nhL9Keg1gmEWXcqhvY=	\N	f	e61fa97e-2d9c-4a28-957d-01cb54ec7002	Loser			f	t	2021-09-27 12:49:32.121962+00			0	0	t	f	Loser	\N
1345	pbkdf2_sha256$216000$zmBRe9crrgev$RsBOjaBy0YnTyYscuw0K+uUUhUHs6XFn5YqNkaxhRoE=	\N	f	0f5feea4-ff99-465f-a308-6b0ba9a4383a	Raju			f	t	2021-09-27 12:49:32.386768+00			0	0	t	f	Raju	\N
1346	pbkdf2_sha256$216000$aaUf0FUVONp3$5zWTMugR/m/u5iHJGkzCpTmrpu3+28aNRFNAf7pCNK8=	\N	f	2bca53f7-7a96-4db3-af46-412af7d76ebf	Poker Raja			f	t	2021-09-27 12:49:38.120729+00			0	0	t	f	Poker Raja	\N
1347	pbkdf2_sha256$216000$h05ex8eisSX1$70sfU78wL6rd//2SozQ01ASkoKIwTQ++YTpuDVxCEjA=	\N	f	2b12f8e0-ec17-4507-8af4-47a19d953a5b	Ruby			f	t	2021-09-27 12:49:38.39092+00			0	0	t	f	Ruby	\N
1348	pbkdf2_sha256$216000$jzhwlhem2q8O$qFeo0vSpuQDqo0Qq4yy9iXKU0acpDeSYRVOYDNzpRgE=	\N	f	54f67438-8891-4a2c-b833-0074bb4dd51d	Gambler			f	t	2021-09-27 12:49:43.855675+00			0	0	t	f	Gambler	\N
1349	pbkdf2_sha256$216000$Z1ZAd9ya2yDw$B7u/E4Y7hXJNZKDhk7IAn0vswQeIvF1vfHNM7EmhHTA=	\N	f	b2ee5e28-77d3-4306-90d3-8b8a6b5a144c	Rani			f	t	2021-09-27 12:49:44.115701+00			0	0	t	f	Rani	\N
1350	pbkdf2_sha256$216000$MHxdO5R3n09T$HwQbcKxAvzLaJrDLmiSPAfwSOGVPjmqzc0dQPOMTPNI=	\N	f	fb5902c3-dafb-4933-8484-0b795a7376c1	Major			f	t	2021-09-27 12:49:49.875234+00			0	0	t	f	Major	\N
1351	pbkdf2_sha256$216000$uS9KEeAgFmYr$nYVURWlj5zABQUswva49hfKkNYeOWLH78o3zx+M4SDE=	\N	f	4db5b21a-a85e-4c34-babe-16ee1e94f26f	Shivaraj			f	t	2021-09-27 12:49:50.124703+00			0	0	t	f	Shivaraj	\N
1352	pbkdf2_sha256$216000$CL9A6TPAgFNJ$izaXw3CiO2/0pYoeLpS6/dcz4+E6HiGUZldn+7Z21LE=	\N	f	2e1e97db-8040-4cb8-b56d-1874ef61aa2e	Hero			f	t	2021-09-27 12:49:55.635908+00			0	0	t	f	Hero	\N
1353	pbkdf2_sha256$216000$tLnGLvLMVent$L+6JA3EjzTiv6My+7dQ3iQQKyYJCOUQHlAS/PV24Tho=	\N	f	81d87dac-9ca2-420f-8ac5-93e33647d2b2	Rani			f	t	2021-09-27 12:49:55.880682+00			0	0	t	f	Rani	\N
1354	pbkdf2_sha256$216000$8PVfc4FnJzZl$NAXitDurs2r2Lc227HUP/dCFa611l2560tlRGDQUMb8=	\N	f	c67d31b4-8095-4915-959f-0f1f06d8f9ed	Akshay			f	t	2021-09-27 12:50:01.731507+00			0	0	t	f	Akshay	\N
1355	pbkdf2_sha256$216000$QEw0pnPmrKrU$lf8CvraJphscnOpOjzgM7rQ6iOODrf7VWK1kHGSdXe4=	\N	f	840a4b3d-ad54-4703-b4dd-9283b2c8eb66	Master			f	t	2021-09-27 12:50:02.002413+00			0	0	t	f	Master	\N
1356	pbkdf2_sha256$216000$03vtlJnfHOHf$DJ0Be4e63p7FxifxwEjHy2j0qBPWACrw73N8pk+CVcI=	\N	f	4413e8e0-f7ae-4180-9b5f-dcc8991d6687	Krishna			f	t	2021-09-27 12:50:07.466689+00			0	0	t	f	Krishna	\N
1357	pbkdf2_sha256$216000$6SORS53vm1Qt$g3MnaHjAGciR/49wKnD4RcN7IOPS8Q+XwZsYq5QZakQ=	\N	f	6a633482-d7f3-4237-8cb6-76a69e7d2414	Gambler			f	t	2021-09-27 12:50:07.721564+00			0	0	t	f	Gambler	\N
1358	pbkdf2_sha256$216000$2uhr1OoQHoen$f/Z5d/oHs5DRyFhBp7qw1N4fMPMyhar0tTL952USoEg=	\N	f	6f24f686-5798-4551-a398-ef0119d7601b	Diamond			f	t	2021-09-27 12:50:13.771864+00			0	0	t	f	Diamond	\N
1359	pbkdf2_sha256$216000$dkYY7RxkK2oM$sYmCKnLre2FmvoYjouUGr9x9XJk4aYyotfwLHsboRAI=	\N	f	746c8e16-4535-4dc2-99de-b1aad6e0d3d2	Avenger			f	t	2021-09-27 12:50:14.071559+00			0	0	t	f	Avenger	\N
1360	pbkdf2_sha256$216000$OKcWeuzNkU61$HWG7wIsN0LQDyvzSm6FFBzPbJ8EPfLMiefphwQg8ERw=	\N	f	fd8705d5-c310-4d16-bcda-3d6b09d270ee	Shivaraj			f	t	2021-09-27 12:50:19.6457+00			0	0	t	f	Shivaraj	\N
1361	pbkdf2_sha256$216000$SSlL076QjUOW$TaEO6P1eQsmxt8IE+P0vX+JuppK80FP9HjN+mxTl2vM=	\N	f	722dc93b-ffe8-4a42-b9c7-58daedd30de6	Rani			f	t	2021-09-27 12:50:19.885894+00			0	0	t	f	Rani	\N
1362	pbkdf2_sha256$216000$QlHhSzSGu5O9$K0BhlahdA02sc/9B3NJMDFiqndyNxd+t+ys7W8OdjxA=	\N	f	f025fd7e-b46a-4505-97b7-7c2695023a8c	Gambler			f	t	2021-09-27 12:50:25.715588+00			0	0	t	f	Gambler	\N
1363	pbkdf2_sha256$216000$U3kRMTgssxnr$u7L7tRmjxLxgjAtEJy8TaqF+jIezs+vGma5TuQ+SR4g=	\N	f	a5a786b6-b7d2-42a0-85b6-919b262c451d	Major			f	t	2021-09-27 12:50:25.945641+00			0	0	t	f	Major	\N
1364	pbkdf2_sha256$216000$ObBHNqbhXZLB$X1txUYWBx0Ago1s87qCBlEL2HrTTKPTmgGwazY2C6Aw=	\N	f	14ccf0b9-93dd-49e5-8a9d-f0588178341d	Avenger			f	t	2021-09-27 12:50:31.505636+00			0	0	t	f	Avenger	\N
1365	pbkdf2_sha256$216000$UlrRCmiCiC3K$Fmas6Q0lQbdAHCfr/+xpArv1bIBIOb/EcGvqMHIGeTo=	\N	f	00b68ed6-c61c-49fa-b17c-6ef3c15ec97c	Major			f	t	2021-09-27 12:50:31.780691+00			0	0	t	f	Major	\N
1366	pbkdf2_sha256$216000$NJQg0n0XTY1T$bAuW+ssXwDd0ne7X9ZMYIlTQzLIIz+x66DiRZoVZuWc=	\N	f	159529a6-6a61-4e2f-8ad3-65b59ee0a4cd	Loser			f	t	2021-09-27 12:50:37.541456+00			0	0	t	f	Loser	\N
1367	pbkdf2_sha256$216000$BzRXvr4pJC9j$HngK3dJ+Uc8V3LrajsysXsbmtBkuam6L3wvB03jgPPY=	\N	f	df863742-6aed-404c-9ff8-da1bba077c4f	Ruby			f	t	2021-09-27 12:50:37.80157+00			0	0	t	f	Ruby	\N
1368	pbkdf2_sha256$216000$prU2AKV368to$Ge8h0AH1d1YKE1t72z0f3qyWGUyXJYJWFexJ70tBHPM=	\N	f	238f6b71-9bf1-4d1b-90f5-ed993bd4ca8d	Ruby			f	t	2021-09-27 12:50:43.346161+00			0	0	t	f	Ruby	\N
1369	pbkdf2_sha256$216000$FiiwxZ2i8vLy$o+uTaD+L9JUPBdWxDqeSBTkxaEEdLkQBqNafDGWz/NM=	\N	f	b1db4b7a-c6c2-4f6e-9302-6aa848cf6eb1	Vijay			f	t	2021-09-27 12:50:43.621453+00			0	0	t	f	Vijay	\N
1370	pbkdf2_sha256$216000$PHyPjGbhd3bf$UVe8zmXYY+hFrwcUBU0YCawxKFEHEPwQsp35zAuE/5c=	\N	f	87cce27f-c090-440c-bf20-307bfde10f39	Vijay			f	t	2021-09-27 12:50:49.301793+00			0	0	t	f	Vijay	\N
1371	pbkdf2_sha256$216000$zicUnkAz52x5$ikoKwOeBdAWLxSZTn6bb3G1wkpRXKgaIo2ueM6GIqdc=	\N	f	db114f34-8d48-4a2a-9089-3f197ffe17ba	Mara			f	t	2021-09-27 12:50:49.571785+00			0	0	t	f	Mara	\N
1372	pbkdf2_sha256$216000$BlSgo6oo10ib$u0CuGHybxyVfl9yzp7nRICFBnXitLGgMFkNAlwtp7Ao=	\N	f	332e2f2a-458a-461d-bc6a-8b8034f89925	Rani			f	t	2021-09-27 12:50:55.062379+00			0	0	t	f	Rani	\N
1373	pbkdf2_sha256$216000$DxXg3SnZtGVj$wiJJdnGDs2PMMmSGU4fFGwrGPdOT/7JutsVDPoFN8XI=	\N	f	89a9cf35-19ec-4c6f-b526-6602f934cdfb	John			f	t	2021-09-27 12:50:55.34123+00			0	0	t	f	John	\N
1374	pbkdf2_sha256$216000$3yHTozdSMH0C$LtkMuu8F+q0XyeScRKPtlUMg80gUzXjH53eOoeL1yMM=	\N	f	5944f746-3d4e-43aa-ba31-c213fdece441	Rani			f	t	2021-09-27 12:51:01.229771+00			0	0	t	f	Rani	\N
1375	pbkdf2_sha256$216000$IwVflhQRTIUK$9nVDiHoArnRwJ/MNReuwCSOeRrD09K38FeVpk1IttAc=	\N	f	603b134d-d254-4982-9d11-c516ddf929f2	Krishna			f	t	2021-09-27 12:51:01.46526+00			0	0	t	f	Krishna	\N
1376	pbkdf2_sha256$216000$PCqv1wbmLuTf$U53D+QK3KMbZrvZ1/59gYL4OFPGB+H3wolhTeg211c4=	\N	f	54f057e5-7268-45c8-8f57-1b00485cead6	Rani			f	t	2021-09-27 12:51:06.921458+00			0	0	t	f	Rani	\N
1377	pbkdf2_sha256$216000$VMS2XVqjHsTp$m3ix6xvt10da3A7181LhJ2l8wE3EaAbinZnFIWHajOI=	\N	f	23563b2d-2842-4f2a-aaf8-cf7d36100638	Mara			f	t	2021-09-27 12:51:07.181375+00			0	0	t	f	Mara	\N
1378	pbkdf2_sha256$216000$4spANarFZf78$JTUIbd7LCheyNoev8dOIxMmNU50w6IOCXWBfDx9f0Jg=	\N	f	194f64ee-47ba-45d5-ba26-9491aff2f6aa	Ruby			f	t	2021-09-27 12:51:12.611693+00			0	0	t	f	Ruby	\N
1379	pbkdf2_sha256$216000$2bGTBgeFWtnB$ke8XOewm2DImh9KD4wwtb0Xe6NsQJfYU1VXat1DoPhs=	\N	f	95e4e4e1-124f-4318-b9d4-28ab5a16dfc5	Sheetal			f	t	2021-09-27 12:51:12.871321+00			0	0	t	f	Sheetal	\N
1380	pbkdf2_sha256$216000$Y1Dxf4WkAeGY$kwCsbukPZ92deRomsLG+NcBb4Umnd1bKWDcrWw3UA6M=	\N	f	5e8ca1c8-b977-496a-80ca-b9b74ee0fb6d	Raju			f	t	2021-09-27 12:51:18.871108+00			0	0	t	f	Raju	\N
1381	pbkdf2_sha256$216000$ZLh0egKI5SY2$BcPr1f1JA8jFZCBp0VdJeKPtbhWHBCO4Q4z+3RHBxJ4=	\N	f	4c4eb501-d071-4c66-be6f-e7bdf06ebd52	Hero			f	t	2021-09-27 12:51:19.151301+00			0	0	t	f	Hero	\N
1382	pbkdf2_sha256$216000$uaJP7LBTfVeH$7PeYf4rEuPVXkxWdKSS68JEgd47Cu0CR0mHbh8OU3x0=	\N	f	88fbe68d-733d-4763-9bc1-f93a78a47520	Rani			f	t	2021-09-27 12:51:25.091624+00			0	0	t	f	Rani	\N
1383	pbkdf2_sha256$216000$vdxoDEwbu3ZG$NuAEUNKrhdMQ4PZAaGfA7FOtGPVyXb5/Ex4Ki6xVdrQ=	\N	f	369b9a96-aa3b-4ed8-b2c9-605c43700ddd	Shahrukh			f	t	2021-09-27 12:51:25.361537+00			0	0	t	f	Shahrukh	\N
1384	pbkdf2_sha256$216000$iQhRWZgg8Gbs$gfcqVqLORm/8sKrQ+zgW7GOiyAkfNMc/lDx/KB6kqXY=	\N	f	382522f1-13bd-4cad-b2c6-52daac15b748	Rani			f	t	2021-09-27 12:51:31.241238+00			0	0	t	f	Rani	\N
1385	pbkdf2_sha256$216000$eBDIBMWyOvaf$5l8etS4PrjS+f3T+o9nEfv+BM3059TMiVhhDTqt5emk=	\N	f	1a463330-b8dd-4123-8d62-3d484bc10bae	Diamond			f	t	2021-09-27 12:51:31.521229+00			0	0	t	f	Diamond	\N
1386	pbkdf2_sha256$216000$JAanf7NLYuJV$ZMh+fC0+J2JxfArP8vfv5rifs1pSM8wIH42nwHDKYFw=	\N	f	51aa2cc4-fc2e-4905-8961-2e29cda20b97	Ruby			f	t	2021-09-27 12:51:37.241044+00			0	0	t	f	Ruby	\N
1387	pbkdf2_sha256$216000$YJL88BsMqMbi$K0FN5q37YTb+AzrLwjTGcNI4zC11VLvrQfZiT8ImNww=	\N	f	86fec2ff-8d5b-45a3-8455-995880b73f66	Roja			f	t	2021-09-27 12:51:37.505679+00			0	0	t	f	Roja	\N
1388	pbkdf2_sha256$216000$5FM69LImHX7F$X9FGyKcsF2KRj3kHSP+mGkPHoNIZ6MvmU6AVRr17b78=	\N	f	95c0561f-2ef6-4a0c-b7f5-2bbc9fc4b3a0	Sheetal			f	t	2021-09-27 12:51:43.765665+00			0	0	t	f	Sheetal	\N
1389	pbkdf2_sha256$216000$dKmNS5Z7PxFn$yflJxkqup8Y3s/U4JRbt9Hs5VtzVTKQMPzf+VtpMg68=	\N	f	8a4f22db-ea10-4895-91e1-dfc24550b743	Sheetal			f	t	2021-09-27 12:51:44.00603+00			0	0	t	f	Sheetal	\N
1390	pbkdf2_sha256$216000$qluJLSK4LIq1$U1fKmw7zBRo+cUHouML+TAGM301GGf6eEBlqDz3lFp0=	\N	f	7222b991-1ed7-46b5-b2c1-dfb62ba53da8	Winner			f	t	2021-09-27 12:51:49.541393+00			0	0	t	f	Winner	\N
1391	pbkdf2_sha256$216000$6CQdLaKBNTW8$0eHFFty0w/KR/J6LDW0QVyZXUGjmawPR9bfceqC1VIM=	\N	f	6b84bb86-ae3d-4838-a1b0-f553e476e233	Master			f	t	2021-09-27 12:51:49.861215+00			0	0	t	f	Master	\N
1392	pbkdf2_sha256$216000$zoyTKlJH4ukv$C2BKuQ7F9yOjO7XQv96g6gQRrQ8wV+n7j2SODD6yzwU=	\N	f	266f953f-7b14-4aef-9267-3516fc70a5be	Gambler			f	t	2021-09-27 12:51:55.760913+00			0	0	t	f	Gambler	\N
1393	pbkdf2_sha256$216000$3zHPINeDClRL$OR77CIashG20k0Ji5NMxlslfyFkPqaRbOhi+dcK/37g=	\N	f	e7b17731-ec06-4530-bc60-31ac9c1da1c5	Krishna			f	t	2021-09-27 12:51:56.080767+00			0	0	t	f	Krishna	\N
1394	pbkdf2_sha256$216000$dmsFOQCUABlt$lxijw/1qFTrX64Otgf3qZK7tnKXK7906wuq5c9ka9W8=	\N	f	a16166ed-64fb-4f93-9f6f-a8a63c9ef01c	Mara			f	t	2021-09-27 12:52:02.011285+00			0	0	t	f	Mara	\N
1395	pbkdf2_sha256$216000$WEROm5q15MDK$VjZBMUXH+09I/6qotoMRQlQ9leQmt/pwGzyH+LhkdS0=	\N	f	255ec3bb-4056-48cb-8b48-6691cfe0c1e6	Avenger			f	t	2021-09-27 12:52:02.296637+00			0	0	t	f	Avenger	\N
1396	pbkdf2_sha256$216000$lxEyxmwKGz6e$i8AKEbNkExj6q80Fw/Oxyw12StMK/r65psNEPAkkjhg=	\N	f	9ae49d3b-5248-400a-b8bd-1b6b7cbcfedb	Sheetal			f	t	2021-09-27 12:52:08.371458+00			0	0	t	f	Sheetal	\N
1397	pbkdf2_sha256$216000$v9mvvsubX2LH$vrxKDLj2j7xJ9A+lCupzdEUK+DoEB+6pjA2ou1sJST4=	\N	f	fd630bd4-5a79-493a-8e90-b246724668f8	Shahrukh			f	t	2021-09-27 12:52:08.676657+00			0	0	t	f	Shahrukh	\N
1398	pbkdf2_sha256$216000$xLdaQ2THiVFh$9zRmHtElN6l3xTbRGXIVyaea3KeNvOgPGsWfTyXRy9k=	\N	f	651f7cfe-b17f-46b2-ac28-7a3fdc618c5a	Raju			f	t	2021-09-27 12:52:14.14135+00			0	0	t	f	Raju	\N
1399	pbkdf2_sha256$216000$2HEt3vTz4wCg$UUmQP8/9InoGl80xnYzFbRoENLwL/on0L71nAg9J4PU=	\N	f	10cb609d-82f5-4c1c-87f0-49fc2f5b48a0	Loser			f	t	2021-09-27 12:52:14.401033+00			0	0	t	f	Loser	\N
1400	pbkdf2_sha256$216000$92rd19CAfgG2$m4RN8pbWXhjh0lIX35SRY9e7mnBTgUHg52++XCPI8lY=	\N	f	da87fb91-a63f-4a0a-bd68-43831cc093cc	Hero			f	t	2021-09-27 12:52:20.245977+00			0	0	t	f	Hero	\N
1401	pbkdf2_sha256$216000$Q64L3W6v91wG$1Zz2qPoVByi4nN8j89TYgB5OixnXjFf4zqaIwzDb2NA=	\N	f	bacf14ef-829c-4270-bdd8-cdfbfb5e10ea	John			f	t	2021-09-27 12:52:20.515787+00			0	0	t	f	John	\N
1402	pbkdf2_sha256$216000$MgB8UkgPKMQe$dBZEq9GH2oJpBoZZAIPJJiqyPrJk0hzITY/IMT7Wq6Q=	\N	f	a77c44db-70e7-47fe-9d59-41ab793a0566	Winner			f	t	2021-09-27 12:52:25.981975+00			0	0	t	f	Winner	\N
1403	pbkdf2_sha256$216000$UwW9an6TGiYA$gz0uw/fTzZYbso3SZN+vlpOFyogyABJsF0BenjPSdLY=	\N	f	7136c82e-f100-45e6-8f2e-56b3f96bb6c9	John			f	t	2021-09-27 12:52:26.242155+00			0	0	t	f	John	\N
1404	pbkdf2_sha256$216000$0NVKrHGjfleE$pNcYo2+ZxaCqgT6P9fNG413XRqqnl7e3A67qJ4TySGc=	\N	f	5b0253b2-0d6b-45be-b6d0-465bb66a3d80	Sheetal			f	t	2021-09-27 12:52:31.985601+00			0	0	t	f	Sheetal	\N
1405	pbkdf2_sha256$216000$5YrJ1tDO33s3$aAKPA30h/JaCCO/VzLXzTpyk+5fNLA6naZ3ilLZAIGA=	\N	f	d2fbd219-5073-4251-a717-0849849aa886	Avenger			f	t	2021-09-27 12:52:32.235521+00			0	0	t	f	Avenger	\N
1406	pbkdf2_sha256$216000$MhSeIZ14cqNE$uHqF7EgUKtSEBzHf9JuOKNTWCTo2sS6s2Wc31H4rCdg=	\N	f	40c9afc4-1ba6-448a-8a73-e2eafafbd21d	Shivaraj			f	t	2021-09-27 12:52:37.772495+00			0	0	t	f	Shivaraj	\N
1407	pbkdf2_sha256$216000$YqnuxHfhiDhk$ADTtdnOaAGv2kpIL4kEbANXDWnThfsp/o+SS8GD8uEo=	\N	f	4edb95bf-8446-44f5-aa4b-550146536dd1	Avenger			f	t	2021-09-27 12:52:38.041288+00			0	0	t	f	Avenger	\N
1408	pbkdf2_sha256$216000$Gw47o9xmOxyH$5Vn9d5Jhi5SlrG26nsBq1CvxDwOn1t71ZWd/CXDuErA=	\N	f	a0a05bdf-bbd8-44da-9a27-89248a9619c0	Hero			f	t	2021-09-27 12:52:43.911287+00			0	0	t	f	Hero	\N
1409	pbkdf2_sha256$216000$cJ6Mm45W9z74$2dArnCiv9i2lPbF13chchRTZu+rMuhVPxvjRdhAEDlM=	\N	f	3790c313-1c0c-467b-843d-778b3cba6a19	Number 1			f	t	2021-09-27 12:52:44.161619+00			0	0	t	f	Number 1	\N
1410	pbkdf2_sha256$216000$GjDmxvfBsXbx$la2i8Hb6squ/cDCftJAcvT+o0fGYLBJYR/KwjzB3fes=	\N	f	2a4b30ae-b258-457e-89ef-4f680f46d118	Winner			f	t	2021-09-27 12:52:49.645864+00			0	0	t	f	Winner	\N
1411	pbkdf2_sha256$216000$vEuD9CEdUkyk$/tdy6qzzoo62fEHuOfc4qKw5nCyXTAtNIXiUxvg82Zs=	\N	f	5f316834-7791-428c-8446-74240d4d7f2a	Loser			f	t	2021-09-27 12:52:49.885781+00			0	0	t	f	Loser	\N
1412	pbkdf2_sha256$216000$2u5NOUVNUgL7$e6dNS9MEjXEuY+UmfScIuEatyupVH9stiOUrv78NQGg=	\N	f	b07243ec-0fec-4458-83f8-ecea5f3e6b17	Loser			f	t	2021-09-27 12:52:55.751462+00			0	0	t	f	Loser	\N
1413	pbkdf2_sha256$216000$UrogQ1VOxR8t$6Rkr61brZuhA3p0+g8BkP8ICGSjDgugou80rnHudLpY=	\N	f	65b17408-5730-474d-96d2-6b3fc843a058	Avenger			f	t	2021-09-27 12:52:56.030999+00			0	0	t	f	Avenger	\N
1414	pbkdf2_sha256$216000$WOTunp4cjf2E$lvVc67aMFyaXV+gaGa3UaBMqNklnentZqNvGI/+wWYA=	\N	f	35cd6e35-91a1-4d72-af61-da713a713aa3	Sheetal			f	t	2021-09-27 12:53:01.461248+00			0	0	t	f	Sheetal	\N
1415	pbkdf2_sha256$216000$AAbo04KgdKYS$PBqGid0QL80k9c+gKcoFib08MTOGI1g0+ooopt5tud0=	\N	f	01ca0a7a-cbc4-4c5b-8416-f8bf34202d39	Major			f	t	2021-09-27 12:53:01.761313+00			0	0	t	f	Major	\N
1416	pbkdf2_sha256$216000$OZP1UXkyJikq$AyuaBh5nYzdJf7Mjtcef736wkhCMHeLMU6BVsuYHcLY=	\N	f	ef4bd8bd-291e-4bd0-a740-c5c13560e518	Raju			f	t	2021-09-27 12:53:07.561727+00			0	0	t	f	Raju	\N
1417	pbkdf2_sha256$216000$SYzn2Nou9zDP$jDlQhaVgH6fyOu7o63BJ1qdMB79vbtssmOXQAwZRi/U=	\N	f	2d1b9fce-8ddd-4b3c-ad66-4ba35cb73ba4	Diamond			f	t	2021-09-27 12:53:07.841733+00			0	0	t	f	Diamond	\N
1418	pbkdf2_sha256$216000$uHtQ3f42aaYw$Q0kpL71G5/KYz+ti49wLF9ZF2ds4T1zIzO27hL1jh0Y=	\N	f	6267e40e-ef62-440b-960c-059b703053a4	Rani			f	t	2021-09-27 12:53:13.280637+00			0	0	t	f	Rani	\N
1419	pbkdf2_sha256$216000$QeCkePCEF0eG$lPCMV6GV843qCGEwhZmT4OMI9eQ2E/HWKnoeeysvL24=	\N	f	26b2f222-1a7b-4d75-914b-7e20e9ddeb76	Ruby			f	t	2021-09-27 12:53:13.550608+00			0	0	t	f	Ruby	\N
1420	pbkdf2_sha256$216000$wf7vn0Y73PYU$x3SQU221NHl+x9k4paV8P3Y9WBsnm21vajK9KiKAvO4=	\N	f	6b0b8002-07d9-4d6e-ba1b-2e98d7d4efbf	Avenger			f	t	2021-09-27 12:53:19.32165+00			0	0	t	f	Avenger	\N
1421	pbkdf2_sha256$216000$WCCGN79RkkPg$v/MetWdIMPnsAsv30L2aGwsKJmlSkEh5RQoVjI0eYpQ=	\N	f	0e6cad3f-d64b-48d3-b779-13f570d8fe2e	Hero			f	t	2021-09-27 12:53:19.59113+00			0	0	t	f	Hero	\N
1422	pbkdf2_sha256$216000$lRb3ZwqHmElJ$Gewi4ewcGZnL+feRXkkmeBsqJ5qdeuLuPl8Ew6Y2pGI=	\N	f	2ce4067a-1e88-4d61-a271-c02ff95c2484	Sheetal			f	t	2021-09-27 12:53:25.035353+00			0	0	t	f	Sheetal	\N
1423	pbkdf2_sha256$216000$7e3ADXf3474y$m664PB7nRGqv527dlp5FhrrBU8Odfoe36t/0Z1EEGIs=	\N	f	596b6ade-e87d-470a-9c16-9ba13be32ee9	Mara			f	t	2021-09-27 12:53:25.30583+00			0	0	t	f	Mara	\N
1424	pbkdf2_sha256$216000$esEnR9mVhE2C$msNYjgq6Cl77Ei6DQKlQGNfLqZ7HRxtIhMMjzM1pqzg=	\N	f	911399cf-5135-4202-bbaa-de23b8b72911	Sheetal			f	t	2021-09-27 12:53:31.144749+00			0	0	t	f	Sheetal	\N
1425	pbkdf2_sha256$216000$jK9zqmpBPyUV$MdvdW9dVqsjkCxBu0ArVL0t2/cErr3B0ZIhRY51LWws=	\N	f	07e3881a-6f68-492a-ba2a-7309f2d8f85a	Diamond			f	t	2021-09-27 12:53:31.404871+00			0	0	t	f	Diamond	\N
1426	pbkdf2_sha256$216000$9xpTr0FKBKNq$p+Y98BPDwE3mKRIvhckblabezJrut8Vm827hudBeYqA=	\N	f	2f4c92f3-4cfc-4c91-a4ee-a4a50206db30	John			f	t	2021-09-27 12:53:36.881866+00			0	0	t	f	John	\N
1427	pbkdf2_sha256$216000$LkPUXCRKa0J4$Wb3I+S9o0HdsmIKn/CWHr57KsBUSVHdQcXa90o6Fod8=	\N	f	fd91dbf6-1294-46e5-8e17-08c17a9994c6	Master			f	t	2021-09-27 12:53:37.161369+00			0	0	t	f	Master	\N
1428	pbkdf2_sha256$216000$P2AI3PY4yKlC$t20w9biCJ5dCQ0gHOXZYjNpl7WOULk5gaXhaJ/O0Cd8=	\N	f	679d1ba9-9ff5-4a7f-9c3d-ba4dc6ebd542	Diamond			f	t	2021-09-27 12:53:43.556275+00			0	0	t	f	Diamond	\N
1429	pbkdf2_sha256$216000$i0ecXQeFNi4L$sbmHUzHykFE+FnzUmIgsVObKJAKefWKPvAu3mUJsS4c=	\N	f	061f5a90-2b03-4fa7-b94f-76aca6d1a158	Ruby			f	t	2021-09-27 12:53:43.831678+00			0	0	t	f	Ruby	\N
1430	pbkdf2_sha256$216000$F1aTH4vY7Wa5$tolVUG2VVPZwunXK71KEtY3S4A2aUrN8rDAZGTbVjk0=	\N	f	eb792386-59a8-4331-ba61-7ac9fbb83296	Number 1			f	t	2021-09-27 12:53:49.575702+00			0	0	t	f	Number 1	\N
1431	pbkdf2_sha256$216000$Kt7I1yMYfTNo$W93CPP8O5TNdJkZ5zFJuGPkehNV+EUe01KmrIdx2Hxc=	\N	f	e0a200b0-849d-4551-827d-107a12fff782	Ruby			f	t	2021-09-27 12:53:49.825647+00			0	0	t	f	Ruby	\N
1432	pbkdf2_sha256$216000$XlUGQdAmM7ch$q7/ywURCU4M5LcmuVbOs0EnS+QQiN/p85+EaMlzFkI8=	\N	f	5728569d-b21b-4788-9ce8-68e81b448aea	Roja			f	t	2021-09-27 12:53:55.609809+00			0	0	t	f	Roja	\N
1433	pbkdf2_sha256$216000$Nxrcdavq5bo3$Njp3rscuXv+PdzTBbCQMTOJDDRPGAwQVtnIJzUaee+Q=	\N	f	0ea0cfb5-9f53-4dd2-8618-c8f55d5389c2	Rani			f	t	2021-09-27 12:53:55.959556+00			0	0	t	f	Rani	\N
1434	pbkdf2_sha256$216000$uKmiUnr8iPEr$BMYjqv1Y1/U6FuFrtjVPLSc+6EhnuzKhT8nyVZ7ehVs=	\N	f	2ec42acf-dbfd-47c1-90cc-79851050c53d	Major			f	t	2021-09-27 12:54:01.854888+00			0	0	t	f	Major	\N
1435	pbkdf2_sha256$216000$cr2Qwo3gbm3P$pQ0BKW6No7KNaT/IUrNtajsfeX5m7CzKARy/yjyrq9g=	\N	f	515bf0ef-1afc-4c1b-9b3c-2e3bea60cd33	Roja			f	t	2021-09-27 12:54:02.099673+00			0	0	t	f	Roja	\N
1436	pbkdf2_sha256$216000$9ZxEh9WykDZU$vfmE79LqFmaOQSEI9Dc7jdNku0mx6NfACWUgMNiPNIE=	\N	f	e8165952-8e1c-4eba-bb0d-72a32290d291	Number 1			f	t	2021-09-27 12:54:07.919483+00			0	0	t	f	Number 1	\N
1437	pbkdf2_sha256$216000$L2g41fwY3X2y$qMxZSEouNys5tmETS8yd5zGQv2tLa6g+k6H+JKM7P5M=	\N	f	4e711354-835f-43b9-bd95-7c8e8592edd8	Number 1			f	t	2021-09-27 12:54:08.229962+00			0	0	t	f	Number 1	\N
1438	pbkdf2_sha256$216000$CmPrMtRDSfaK$1/jKWYFJZwOhS5wRXNtnb3Nw5xtHukyF6MZ+td9hSxc=	\N	f	d1f24c7c-08d9-4f58-9788-6c9772bf5703	Vijay			f	t	2021-09-27 12:54:14.035251+00			0	0	t	f	Vijay	\N
1439	pbkdf2_sha256$216000$j59OIWEPUfjX$A2zWS08NT+WvKO3RwJ6JlaK+YL85DlqRdcVuhN0AEis=	\N	f	8e59e20d-5129-435d-b49f-9db0f9f45668	Shahrukh			f	t	2021-09-27 12:54:14.295106+00			0	0	t	f	Shahrukh	\N
1440	pbkdf2_sha256$216000$aQRMBLv6w2NE$3OO281sKd0otgmZhdU71+43mOVDpaMdUk0zsJJv8kC8=	\N	f	1eef46e7-cd66-45b8-ba69-70c28499b182	Major			f	t	2021-09-27 12:54:20.031534+00			0	0	t	f	Major	\N
1441	pbkdf2_sha256$216000$BLwMemNyYKIn$lzyp2ZzqWaEDQB4GWJqrj9IsWEaElJtGKtqLDxeKxSc=	\N	f	23056a9b-712f-4f28-b4d0-be2c642cfe4b	Avenger			f	t	2021-09-27 12:54:20.279108+00			0	0	t	f	Avenger	\N
1442	pbkdf2_sha256$216000$2eP5IZzBeOWa$1qF6NCZTRwSUXzECT8zn8MQjp/p5xQEZ6FDrPdEur88=	\N	f	3a3e3b42-97a2-4503-9a94-c1824678d58c	Winner			f	t	2021-09-27 12:54:26.211192+00			0	0	t	f	Winner	\N
1443	pbkdf2_sha256$216000$aUhtl0aQsH9D$+uVFFC9k4jzOkK95AYOTaE3rdRs8fzD0YtTSXj6/0aY=	\N	f	875ce865-08dc-4f53-a21e-fa5e31ff3451	Major			f	t	2021-09-27 12:54:26.450545+00			0	0	t	f	Major	\N
1444	pbkdf2_sha256$216000$HARYIir3OowA$Wm3bkasoY/lQI53AX/bMOdbiFH3j5eTVmnyUNjThc2w=	\N	f	783ec69f-016c-42ed-8b24-a01f5f7ee9d9	John			f	t	2021-09-27 12:54:32.374591+00			0	0	t	f	John	\N
1445	pbkdf2_sha256$216000$m3GqnBIZGVO7$e41xcbc61apNVHld97si0GKOWfjxUJVl/Lbcq+bEXHg=	\N	f	beba2846-1168-414b-868b-4daf706e3383	Akshay			f	t	2021-09-27 12:54:32.703419+00			0	0	t	f	Akshay	\N
1446	pbkdf2_sha256$216000$WoIWKr3znM7J$f0VFBHm/AcuEm8Fd7Ayog6C2dYU3F3bGbhuyyfOwfaI=	\N	f	55c3d76c-a289-4b8d-9b65-c9133afbe916	Shahrukh			f	t	2021-09-27 12:54:38.605341+00			0	0	t	f	Shahrukh	\N
1447	pbkdf2_sha256$216000$3p6g1dYJTMgt$XMPKjWRgbFO/t5miHyLVRj4n2khm74w/xzIsPI3oFmg=	\N	f	e0d88e16-24b5-4d59-a9d5-959e03a63487	Winner			f	t	2021-09-27 12:54:38.855195+00			0	0	t	f	Winner	\N
1448	pbkdf2_sha256$216000$ohKYTRqtl1jH$lXCGfWnlHdLFHc/w6VKVGmgTHgdUo0Zu+3y0Jhtgc5w=	\N	f	e8a86f24-9bad-4bed-8c12-ca4dd41c7436	Shivaraj			f	t	2021-09-27 12:54:44.846181+00			0	0	t	f	Shivaraj	\N
1449	pbkdf2_sha256$216000$TkG55aNBXLZD$Xc6KZp1GEA2SJ2M7cbEQOjL0cFrihLxVET+HhMt9dU4=	\N	f	17c7a0f3-b3a9-49f7-8292-ee1a518eb6f8	Rani			f	t	2021-09-27 12:54:45.22828+00			0	0	t	f	Rani	\N
1450	pbkdf2_sha256$216000$xhqNlVapV85O$fbPsGLvKfn9s8B7umskooBfFXzfHcWDBSpY9aEOlMZk=	\N	f	1b830bab-dda9-4a18-8535-b05102259dd1	Gambler			f	t	2021-09-27 12:54:50.96366+00			0	0	t	f	Gambler	\N
1451	pbkdf2_sha256$216000$GUJ2zFYEVVab$W64mSleyxaPBQgFAkjfRTayBVZK3ISkDaEn7ZeHj6E0=	\N	f	c686ce4e-bef0-4f82-b36e-6f6fb38dc4e2	Krishna			f	t	2021-09-27 12:54:51.234856+00			0	0	t	f	Krishna	\N
1452	pbkdf2_sha256$216000$C13GB43jmnAI$26yy8iup3JElRZOkMJrqC2hf+BI0bu8AMGXx4vL/3k4=	\N	f	9ce9503d-ca79-4461-a434-33f2590813a3	Diamond			f	t	2021-09-27 12:54:57.393478+00			0	0	t	f	Diamond	\N
1453	pbkdf2_sha256$216000$KtYpHkYNAq8J$EVHryxf7uvjrVDQQwk6IK4yF7Hj63y8NUKEN2iVUgR4=	\N	f	57c8747d-5a8e-407b-b537-57e4f2bd943c	Shivaraj			f	t	2021-09-27 12:54:57.65359+00			0	0	t	f	Shivaraj	\N
1454	pbkdf2_sha256$216000$DU1bVLM0unbs$O9Xxb18IQfelFSJlXnklA7PNA9Geqq8/7AXA6Y/ZqT8=	\N	f	440bd096-ab25-4e5b-8e22-d53afc599339	Major			f	t	2021-09-27 12:55:03.418582+00			0	0	t	f	Major	\N
1455	pbkdf2_sha256$216000$eCvCIKaHY0wp$BfpzbjT5zbfyMd/q/D/Fp0tKKO2bG/EEQbMpgqNFiNQ=	\N	f	f4fa6768-5dcb-4608-ba78-449e6654c88d	Diamond			f	t	2021-09-27 12:55:03.670152+00			0	0	t	f	Diamond	\N
1456	pbkdf2_sha256$216000$aOBUcYKQTiJ4$IpJShK8ZcSXHzzy3CwfSNW+V20RjerMoleHGDBml6Js=	\N	f	272e9ac5-d10a-4ca5-b7d2-f9e0ef0218bc	Shahrukh			f	t	2021-09-27 12:55:09.921985+00			0	0	t	f	Shahrukh	\N
1457	pbkdf2_sha256$216000$QdU6Ub46Af3h$GMDuKP+m8NabL6lS9VBALhSy4h3RWyDVAAav/mvgxTM=	\N	f	cab24b9a-0664-4379-af8c-0da1dd794add	Major			f	t	2021-09-27 12:55:10.293769+00			0	0	t	f	Major	\N
1458	pbkdf2_sha256$216000$lqCoTWlCYHpQ$DLGfJ17Y/z9LEtN6ubUogHJIKwHjba9IorE58j+a45E=	\N	f	2c75d559-668c-45f0-aac6-03aabb4120c8	Major			f	t	2021-09-27 12:55:15.981213+00			0	0	t	f	Major	\N
1459	pbkdf2_sha256$216000$1g02a068F59y$Bwg24xFbi3FuGzO5HXsy08HOgRfyMSEUey2DO16R9tk=	\N	f	87c621c4-144a-4ce2-9770-69dca7dd11b0	Vijay			f	t	2021-09-27 12:55:16.238319+00			0	0	t	f	Vijay	\N
1460	pbkdf2_sha256$216000$pxWraOJ27sYb$hGvE8qd/I5j7wiz04jBpQ+Bw88flCLBZTeBHgBgbdNg=	\N	f	e4682101-2457-4b70-936d-2a7acfd0f8af	Major			f	t	2021-09-27 12:55:22.214489+00			0	0	t	f	Major	\N
1461	pbkdf2_sha256$216000$b0M7RpVCs5lo$klsklz4AHDnaVapdgfgiCb8uHREu7ObR8z+pgR6f0WE=	\N	f	364314a2-0d88-49c8-935c-11576c69a4ca	Hero			f	t	2021-09-27 12:55:22.58009+00			0	0	t	f	Hero	\N
1462	pbkdf2_sha256$216000$jy9dR7s9826g$yoUXl5DBCvv3Ac/IlCXTzO0De7B5tmMXPOJq0K3xiEc=	\N	f	35eb3642-0c92-4a2a-93fb-b898453d0e92	Gambler			f	t	2021-09-27 12:55:28.335422+00			0	0	t	f	Gambler	\N
1463	pbkdf2_sha256$216000$Ouy5uFippQ3y$dm/O0wmF/NAp19vMcL7tWM/7UqMDKHn6oPHouudy7S0=	\N	f	be1498cf-493b-4937-a1c7-72c6fc7059c2	Ruby			f	t	2021-09-27 12:55:28.587438+00			0	0	t	f	Ruby	\N
1464	pbkdf2_sha256$216000$rbtZ0V39fWzm$PFHAR8CAte+38pbje7C6igXx7c07o2hHd2lDqpdB+04=	\N	f	aa654a42-4d56-4591-b930-9d7b9c363457	Vijay			f	t	2021-09-27 12:55:34.957643+00			0	0	t	f	Vijay	\N
1465	pbkdf2_sha256$216000$ui1WpssqGpW5$ZiEr3pbay+dyWaZ+LDf3q9dP6MqTwteNQpJZjUYwu7E=	\N	f	311b8e23-520e-416f-9643-d261156c2ff8	Mara			f	t	2021-09-27 12:55:35.199333+00			0	0	t	f	Mara	\N
1466	pbkdf2_sha256$216000$liDVCiZEmU15$CAqGQjMQK0X77tG/j8guC+8UQoB4Ir0R/Bi+yk0bafQ=	\N	f	9473022a-f101-48a4-a27e-f7b98c00828f	Akshay			f	t	2021-09-27 12:55:40.638207+00			0	0	t	f	Akshay	\N
1467	pbkdf2_sha256$216000$RJ7HiF1qzgs0$itsUIMWbVTkyXDhYLxcmqNsqWXeZ9EZPBK6UtH3rrJ8=	\N	f	40453143-2726-4c7e-813d-92635971d13e	Vijay			f	t	2021-09-27 12:55:40.883898+00			0	0	t	f	Vijay	\N
1468	pbkdf2_sha256$216000$QE4uXB3V8mzX$qtz3GprJP3P9edFvREPNglKSiEIZJG1GrKCpSdU3Wk0=	\N	f	d96a9b9b-80b3-4faf-bde2-22be79958d41	Akshay			f	t	2021-09-27 12:55:47.01454+00			0	0	t	f	Akshay	\N
1469	pbkdf2_sha256$216000$epYeIwDXLEeY$NOUiEuxLC1XhTlvUJUhBbI9IpBNFfinonWz4T7ndGtE=	\N	f	dce64c61-c4c8-40d8-8b8f-8cd7caba935d	Vijay			f	t	2021-09-27 12:55:47.274366+00			0	0	t	f	Vijay	\N
1470	pbkdf2_sha256$216000$xFeVaLkcYfJ1$hnO7CPiUT/McucERZWQDOsQJ1SUmYRUA/FUjzQknEk0=	\N	f	53b611a8-42c2-4ed3-96b2-a378e02ee19f	Ruby			f	t	2021-09-27 12:55:53.048617+00			0	0	t	f	Ruby	\N
1471	pbkdf2_sha256$216000$LhHtPBDoX3gO$0B+8o47cLoMv9JuVbha161PfD0yO4VClfMmG3g24KBg=	\N	f	dabbe8ad-5445-4a73-a64d-d9f3864f92df	Master			f	t	2021-09-27 12:55:53.288772+00			0	0	t	f	Master	\N
1472	pbkdf2_sha256$216000$dOl0V7IxVaPH$NHWpNxjLeaM0lh0WRRsRpg/1rB1PB4OFUTd+Sw7KKds=	\N	f	280f979d-dd42-4a32-be04-2f87f45e801e	Avenger			f	t	2021-09-27 12:55:59.665495+00			0	0	t	f	Avenger	\N
1473	pbkdf2_sha256$216000$QQENlR2CaD5o$dLNMnHjVfY7XPx0h4cx5sPPa03ZrXrtqP2GWMKiZq+8=	\N	f	bf8749a9-386d-4dab-8521-545254d2cfa1	Master			f	t	2021-09-27 12:55:59.915475+00			0	0	t	f	Master	\N
1474	pbkdf2_sha256$216000$1UbRvpcMWAn4$pVKNGYfrZx0jWH1SAzRhlmRQZKHfFAo+H5eqJqw/p3A=	\N	f	2a60e64f-1499-46d2-b070-f3f600a1c82c	John			f	t	2021-09-27 12:56:05.272683+00			0	0	t	f	John	\N
1475	pbkdf2_sha256$216000$b5T1eAXi7IhH$1l3r5Nd4eUhMwd75xtU7kWEIEE6ZFa+yp3B7ytnLibY=	\N	f	d9be1b74-dc63-4653-b831-da8d1c6c9b0d	Diamond			f	t	2021-09-27 12:56:05.531349+00			0	0	t	f	Diamond	\N
1476	pbkdf2_sha256$216000$GTpfQaDOq0kv$a26r1Uashpkdl7lG3FyO5orZocOP/wB2fBsFtj8K+yk=	\N	f	b90bc871-91c8-4acf-ba9c-80120371ac23	Krishna			f	t	2021-09-27 12:56:11.945353+00			0	0	t	f	Krishna	\N
1477	pbkdf2_sha256$216000$wVitqT2pidGu$5jGc1I/kkUK4mVfvZbTdkPif7nDglUQyify28mu+2do=	\N	f	9eb3d07f-6284-4d62-baad-fded61d61e2f	Avenger			f	t	2021-09-27 12:56:12.195348+00			0	0	t	f	Avenger	\N
1478	pbkdf2_sha256$216000$6TgX8XKrfGJh$Pjvn3wRu+NQx1ULr3GIKsaIOKQ/7yh63F6GEkFyrivQ=	\N	f	ada43ad8-0384-4e92-9dc3-68cb0b94a7d6	Roja			f	t	2021-09-27 12:56:18.12535+00			0	0	t	f	Roja	\N
1479	pbkdf2_sha256$216000$OqSDqgp6Djqp$qOZimjhMOcR05GGljN4Hy7yOu1Z1jN03j8pDEKCmyoY=	\N	f	c99055b5-131a-4c40-9c07-b04b8d097fa2	Mara			f	t	2021-09-27 12:56:18.405633+00			0	0	t	f	Mara	\N
1480	pbkdf2_sha256$216000$HbYrkBS4lIzC$/OEQV7ROeeYRnXi4ByEBr0wmAJjzbRzvX6eqkj8Kp8A=	\N	f	bea73cd4-e0ed-4519-86f8-192f977cd803	Shahrukh			f	t	2021-09-27 12:56:24.361394+00			0	0	t	f	Shahrukh	\N
1481	pbkdf2_sha256$216000$qUiQ6zAfPtEJ$WBvuvk0kwTFVyh1OVgounqh41+204HDzoyLOSLY4R4w=	\N	f	16e1aeaf-3266-4733-8de4-1b596057b747	Hero			f	t	2021-09-27 12:56:24.621319+00			0	0	t	f	Hero	\N
1482	pbkdf2_sha256$216000$LjrrphZPP9wP$AOSh1BEr5/A05JyM9Y2uO/iz5TEqdUDNWeQeCp7vEEo=	\N	f	c75b93de-4cfc-44cc-ad46-680f820978ec	John			f	t	2021-09-27 12:56:30.330756+00			0	0	t	f	John	\N
1483	pbkdf2_sha256$216000$urs7yrFY4xvY$33s4UpPYKr9hlLbbrIPwQSl/L6rIqg5UIhUu3BCoanE=	\N	f	97930dff-6afa-4143-a566-e067580b3a96	Roja			f	t	2021-09-27 12:56:30.615345+00			0	0	t	f	Roja	\N
1484	pbkdf2_sha256$216000$AL0CtsDbb8nr$c4jNQGgokZP3owwYIUYTacs3+1JUNy4n80kxu7G/FzM=	\N	f	d1cc91d1-d28f-43d1-92ef-f2092593e271	Number 1			f	t	2021-09-27 12:56:36.500769+00			0	0	t	f	Number 1	\N
1485	pbkdf2_sha256$216000$Zhs4ecFjnitB$2+kdPeWnai//h3h/k2wmqZW0ykoiUleownnQxmDYlJI=	\N	f	dd8c14b3-d90e-4e1a-8eeb-c9c8c52abb66	Akshay			f	t	2021-09-27 12:56:36.745326+00			0	0	t	f	Akshay	\N
1486	pbkdf2_sha256$216000$4aInUk6tca30$T5TW2fzn29F7OmTHuEfRUA5SCtWZLb3OjBPtoiLAUB8=	\N	f	83339ba0-137d-4666-b452-92f59c5c6fe4	Sheetal			f	t	2021-09-27 12:56:42.455338+00			0	0	t	f	Sheetal	\N
1487	pbkdf2_sha256$216000$eJm7zmvdaRVe$Hodjgl0d6IiV6SRo8Z3F+kRLEv7n3GG7uW/mvX/hs0o=	\N	f	5a005de4-86a2-4004-beb8-eb652ba78f5a	Winner			f	t	2021-09-27 12:56:42.735442+00			0	0	t	f	Winner	\N
1488	pbkdf2_sha256$216000$KeqUDLl77sax$Euyq60gHcz3aAdbdA2D/G7lDA8M7d4AD/E5rilproCA=	\N	f	9920e460-ac69-4b9a-9955-5872c7290c7f	Raju			f	t	2021-09-27 12:56:48.321459+00			0	0	t	f	Raju	\N
1489	pbkdf2_sha256$216000$Jum9gZ5XULEb$OEtooaBaY2qySjkjOydRItwIrQ3oz2R/+BM0ioQACv4=	\N	f	66956119-15c8-44c2-b7fb-e6c0f4c81408	Gambler			f	t	2021-09-27 12:56:48.591209+00			0	0	t	f	Gambler	\N
1490	pbkdf2_sha256$216000$1vyHxcGhJjNe$ZqAwo+czlT0k3uxJhiPuSnc5n55fG+qWv4H+vjF8dOg=	\N	f	c44665c0-d2bf-413d-a384-05614d5dad2c	Loser			f	t	2021-09-27 12:56:54.304434+00			0	0	t	f	Loser	\N
1491	pbkdf2_sha256$216000$K4hANAH3tSSg$dwApSSDHVgimxDUPP5D/S01S4qKMRY9JnDvCdcydRw8=	\N	f	aaa5ffb9-f64c-4e51-b5c9-3326e132ea65	Avenger			f	t	2021-09-27 12:56:54.554953+00			0	0	t	f	Avenger	\N
1492	pbkdf2_sha256$216000$gdLp6S3aMiL1$cRo+D0DGW0VG4nczAdCLupghJ7y0PR3uX2gRc9sdzug=	\N	f	5832e790-b5b3-4932-9eb5-ab0e76bd269d	Raju			f	t	2021-09-27 12:57:00.285044+00			0	0	t	f	Raju	\N
1493	pbkdf2_sha256$216000$NA1MAXlu2ruj$Vi8NcRr1xcSV2yjPjYv4RLE+zZVHDCL+LmyLnOGBtJI=	\N	f	a2543ac0-1f2a-4ac3-93c7-4df1259ce270	Ruby			f	t	2021-09-27 12:57:00.545103+00			0	0	t	f	Ruby	\N
1494	pbkdf2_sha256$216000$iU0HguWQw5Ae$9D5arRnflkqczWT6StbjmrmQgXmdGISOAO4gbVHcszw=	\N	f	4566b53c-1576-4959-aad1-2dc45eb9232f	Rani			f	t	2021-09-27 12:57:06.310342+00			0	0	t	f	Rani	\N
1495	pbkdf2_sha256$216000$jZGCNVElOOOa$b+aUclYEr0UkTwNo0q2k614OiLdE1FRtlhbz+h+VjN8=	\N	f	3084b032-e95e-497f-8310-abfbb59fe9f3	Ruby			f	t	2021-09-27 12:57:06.580597+00			0	0	t	f	Ruby	\N
1496	pbkdf2_sha256$216000$Jgd40fpUHpmn$InurMo1Iax4k2WLsGDt5YRYnw89rV2Uo+5JLSqr+vQA=	\N	f	3a337d1e-3e5b-45fe-a517-409eb2471ca8	Krishna			f	t	2021-09-27 12:57:12.04489+00			0	0	t	f	Krishna	\N
1497	pbkdf2_sha256$216000$hD6F0uX5fwtB$lo+so0Uf3IPT6rNxO07n01OXXW7t+oUZdj5DzRy8OEI=	\N	f	aa820241-da41-419c-899b-11bda0ef0003	Sheetal			f	t	2021-09-27 12:57:12.31463+00			0	0	t	f	Sheetal	\N
1498	pbkdf2_sha256$216000$pJsyrEF0n47S$PGQonBq5jvNPoryS4VIVVI2yj3TJ9+souzY7Hj9nIkA=	\N	f	97f08ad5-95b3-457e-afbb-1c4ca8121bc1	John			f	t	2021-09-27 12:57:18.295074+00			0	0	t	f	John	\N
1499	pbkdf2_sha256$216000$vPqRdRK1u1Uk$Q6yLfNZTcx54exUry+HNcIgtC0NSIlCKAsrZ1gu3mrA=	\N	f	7be47053-be27-4b1c-ae47-9e50d741e4ab	Winner			f	t	2021-09-27 12:57:18.555519+00			0	0	t	f	Winner	\N
1500	pbkdf2_sha256$216000$LIJfyfyDh6Ux$9R025Uoj5T8yh1EhoXZS8jZP7qpgEVsDQ3BBhmXo8zs=	\N	f	44b1069a-3ba5-47b8-b7d3-4e6053ec94d6	Vijay			f	t	2021-09-27 12:57:24.491431+00			0	0	t	f	Vijay	\N
1501	pbkdf2_sha256$216000$ayvdG6EXnddx$WjuT1I3uG8HR5GHcY0NHiTInxrbUz8C3Mc1rgJrLSsU=	\N	f	5bd1f8c8-82e1-472c-a9e4-3830f8307ff4	Winner			f	t	2021-09-27 12:57:24.821569+00			0	0	t	f	Winner	\N
1502	pbkdf2_sha256$216000$c38bxB69Zlg9$qnjzVs6TllIs4HQ//h+0tJ3/23q47rDR6WW9II2v6sU=	\N	f	864861db-f3a9-4872-8d7b-c240609cf8bf	Shivaraj			f	t	2021-09-27 12:57:30.681232+00			0	0	t	f	Shivaraj	\N
1503	pbkdf2_sha256$216000$9rAxrWLN36dA$5AoyiEyMubHHDiLlvoMf1Vb4uE1E8bHuO4Wb+9id7nY=	\N	f	5b7ad6dd-b3fe-47b3-985d-61202cd223c6	Sheetal			f	t	2021-09-27 12:57:30.960937+00			0	0	t	f	Sheetal	\N
1504	pbkdf2_sha256$216000$D6BdzBwvH2wS$Cnx/LDdoQfLZyOfrqGDp/qFL7L55CqV613iDSwa4kqc=	\N	f	5ad55caf-630d-4bfe-bb85-ae6e576bbd31	Krishna			f	t	2021-09-27 12:57:36.655097+00			0	0	t	f	Krishna	\N
1505	pbkdf2_sha256$216000$cnCVDBE0jeLt$1LsYJA6iJP4FXdNj6WaAoQQyzxF79xTDSFgPX4Ls9aY=	\N	f	ed55c0e0-5d52-4e9f-85c5-2c058f770aaf	Master			f	t	2021-09-27 12:57:36.970185+00			0	0	t	f	Master	\N
1506	pbkdf2_sha256$216000$WPyRyavA0gC2$LPFci3Opok92cO7pZ5HRJ0aWc8Hp8jQK94yeswqA6ns=	\N	f	9810d198-bf84-4d1c-bc49-f951bda0b15d	Shivaraj			f	t	2021-09-27 12:57:42.795291+00			0	0	t	f	Shivaraj	\N
1507	pbkdf2_sha256$216000$XS79bII66hcR$Soe7E+FNbbHWpT4UE+w4mHOwPtCaqN5btOVgXg/0VRM=	\N	f	38ed6ae1-c471-46cd-abb3-92cfb6cf8ab0	Shivaraj			f	t	2021-09-27 12:57:43.055463+00			0	0	t	f	Shivaraj	\N
1508	pbkdf2_sha256$216000$00z9EY2HBnAU$0R/n/xW4I7gJrLI7R2NHDZHxvx23nQ9Mq+G/Syg7hKo=	\N	f	44030605-d0a3-4067-bd9c-5ff84ecba89e	Master			f	t	2021-09-27 12:57:48.542225+00			0	0	t	f	Master	\N
1509	pbkdf2_sha256$216000$HJ9HD7OJzID5$E6zNraEl49yJvkxPERUR6s6Y+nRBXdBLZnvJpvLjUz4=	\N	f	51d4f9f4-5a4b-4134-bad1-9d124c7b8358	Raju			f	t	2021-09-27 12:57:50.070426+00			0	0	t	f	Raju	\N
1510	pbkdf2_sha256$216000$0F6aXKFLZKp4$K2Pj74tD8AvqjlQ7qcmUR7jLeKhCGv5bOSOOzRwSD2k=	\N	f	f9a5ba2f-100d-4f96-84bc-a07a847bfa94	Raju			f	t	2021-09-27 12:57:54.701519+00			0	0	t	f	Raju	\N
1511	pbkdf2_sha256$216000$OCew6KT7cJAM$Dq/cVcPy1k0qzLwAEuglpZCwbNQkftMxZJXql3Gwx7w=	\N	f	3261542c-deec-4e4e-9523-1921a9a11ef1	Major			f	t	2021-09-27 12:57:54.971539+00			0	0	t	f	Major	\N
1512	pbkdf2_sha256$216000$SZZoNOACK3yV$3FUJhb729/yeeHA2AZqVy24xty2j/P64iX/Lr824HAE=	\N	f	304f8f6f-1195-4c98-948a-13763b27af51	Mara			f	t	2021-09-27 12:58:00.585836+00			0	0	t	f	Mara	\N
1513	pbkdf2_sha256$216000$rnJsUdy4rXF2$7T+sdWjm5v8hdlzvUFpmrcXpjBLZewLT1VA9hdEKwm0=	\N	f	8f9f02fe-086d-4677-aa82-2cd3a659a609	Diamond			f	t	2021-09-27 12:58:00.836077+00			0	0	t	f	Diamond	\N
1514	pbkdf2_sha256$216000$b6Sl1VOXThMM$BM23OQkUEMwlkmozjZaQi9cGsNgYruEGA8fAaZbAIOc=	\N	f	f4cff540-7fe9-4f05-8bc7-b2a3b93a9423	Roja			f	t	2021-09-27 12:58:06.508548+00			0	0	t	f	Roja	\N
1515	pbkdf2_sha256$216000$w9jw7zSxCTPQ$/XnrtG4v+XrQRuql6Qvon5Yk9uS+xykE+57ZggMPCx4=	\N	f	14c5ae22-b568-4bfe-a05c-95e9d37ba71d	Number 1			f	t	2021-09-27 12:58:06.758688+00			0	0	t	f	Number 1	\N
1516	pbkdf2_sha256$216000$08IhPQMhdbyY$kWxiUToKCgdIziauCuWy4iwiSDANPV9g06H11j/rI1g=	\N	f	4ebe0997-9433-4ae2-96fd-baf743d234f9	John			f	t	2021-09-27 12:58:12.700852+00			0	0	t	f	John	\N
1517	pbkdf2_sha256$216000$q7tYfLsYNBrc$LoHk65tU0F6yZBbfnJ77c/HpH4VIoJA1lBYHMtSfYPo=	\N	f	3b1c1e15-2481-4287-9110-0a248a09b995	Major			f	t	2021-09-27 12:58:12.945515+00			0	0	t	f	Major	\N
1518	pbkdf2_sha256$216000$XdBQwIWU7y0q$jutDDo/VPhuNjrycJoI6ipxC3iWz9DnAr8wC8NcU79c=	\N	f	b756dd4b-b4a0-4762-916b-2c1c8f4323b2	John			f	t	2021-09-27 12:58:18.577734+00			0	0	t	f	John	\N
1519	pbkdf2_sha256$216000$3Fx0biVt8fCn$z2IDlnuD5pltqlEnG/FFHQEi2ADASo+rcRXzTfoUovg=	\N	f	2a473d58-0c31-4535-a7c9-b2be010fd0fa	Diamond			f	t	2021-09-27 12:58:18.828104+00			0	0	t	f	Diamond	\N
1520	pbkdf2_sha256$216000$xQHBOUtpU2RB$5hh/oJrDvj18L/P/Jm/sDLhgGJXBEUWGWswhE6WzrHg=	\N	f	3165f353-fce9-4bfb-8caf-f2f7d243f890	Rani			f	t	2021-09-27 12:58:24.616234+00			0	0	t	f	Rani	\N
1521	pbkdf2_sha256$216000$YWm8MZ0SIxJo$Lqa5k9AhUyTJRWziU33bXvFtNxpGsj53CtsmMt9586s=	\N	f	cbb88180-98df-4896-8e21-f5baf2537636	Hero			f	t	2021-09-27 12:58:24.956139+00			0	0	t	f	Hero	\N
1522	pbkdf2_sha256$216000$p8F5KI2KNz36$pmGLbvk1nLMWbs/PAEVYl7nhfeCl3L2GmgzWtGwNbOk=	\N	f	c75b3d44-68d0-4930-aea9-bfbf0899dd54	Hero			f	t	2021-09-27 12:58:30.745007+00			0	0	t	f	Hero	\N
1523	pbkdf2_sha256$216000$aFqB0i9Gv4mz$VtGNiN/EUlRXhXaCqm0jlbCX6xlNBxxzYxNkjAZEIkg=	\N	f	92f0b374-a385-479d-b404-d4e0f7dbeb08	Sheetal			f	t	2021-09-27 12:58:30.994688+00			0	0	t	f	Sheetal	\N
1524	pbkdf2_sha256$216000$OEGQbkMzdlzC$VGyN9D2jtWE6Iqy4B0IPDGxEAyTUh9huXPtuKBNy4ro=	\N	f	36a57fc0-2c4f-4463-8b87-48f8a9c96e15	Gambler			f	t	2021-09-27 12:58:36.401625+00			0	0	t	f	Gambler	\N
1525	pbkdf2_sha256$216000$vFZDjCc2dNtU$HCMfyJt57lF8PbCY95NrOvgDlyXSyDf/bArFuwzZ2nQ=	\N	f	008936aa-ff05-4c74-a196-6115304d4ce0	Gambler			f	t	2021-09-27 12:58:36.661968+00			0	0	t	f	Gambler	\N
1526	pbkdf2_sha256$216000$ZnM8sLESiUID$SU4UbA/W9ncPl2zjnPtYWefawOQx/+y9l+H2MC3amhU=	\N	f	8a1620b9-665e-4679-81a3-21426fb16bc5	Shahrukh			f	t	2021-09-27 12:58:42.391186+00			0	0	t	f	Shahrukh	\N
1527	pbkdf2_sha256$216000$ZcVzNkhgcEU5$VxfGNtULmj4ck/UCJFEQB9ZR76J4Il0YWxuBIf+JAGA=	\N	f	af71423e-e727-42ce-aca8-6921476d41dc	Mara			f	t	2021-09-27 12:58:42.671344+00			0	0	t	f	Mara	\N
1528	pbkdf2_sha256$216000$I2VW9e0MESue$JUJH937rcz1CSxTT4Cl4vXlSvpjV5dLonGYfejxWoV8=	\N	f	eff308cb-daca-49de-8a36-f4e78da8777a	Major			f	t	2021-09-27 12:58:48.100645+00			0	0	t	f	Major	\N
1529	pbkdf2_sha256$216000$r3TIooA5ahv9$sMbreb1Ooh8F5BWs6sJ2hR53vXV7ZpiCsFCfgj02sWc=	\N	f	4bf4476b-9955-48cb-8f3d-f3329cd08189	Ruby			f	t	2021-09-27 12:58:48.350616+00			0	0	t	f	Ruby	\N
1530	pbkdf2_sha256$216000$dONrz0V859uS$ocrbSQ30k8DF1+DpiMYvGAHXe8FlcpWlCqjU5+InJuE=	\N	f	6de0870c-2658-419e-8787-4deba84cf32c	Roja			f	t	2021-09-27 12:58:54.055611+00			0	0	t	f	Roja	\N
1531	pbkdf2_sha256$216000$5wnraQVcT4EM$pzsjUqTTPWArPWSUzFdGEWX8tw+Vv8JIEvf+Tphj4jk=	\N	f	6bb7af8b-a902-485a-a6ac-ff3173544140	Gambler			f	t	2021-09-27 12:58:54.320658+00			0	0	t	f	Gambler	\N
1532	pbkdf2_sha256$216000$5BIAhv1luUQu$yv7g+L4OpomKkif/ywPSjmxp2BBAxE3OnS3YPmMa1q8=	\N	f	d42931ff-96df-4c79-9ba3-964948d8c26e	Ruby			f	t	2021-09-27 12:58:59.711461+00			0	0	t	f	Ruby	\N
1533	pbkdf2_sha256$216000$c2nCAQYSKu31$h5uR79QYvb8hnqHai2EcsRRqzPITs4nBseRJtMPLeaY=	\N	f	b471af8f-a556-4ed5-b894-894722e476f3	Vijay			f	t	2021-09-27 12:58:59.9716+00			0	0	t	f	Vijay	\N
1534	pbkdf2_sha256$216000$Jir0PhZBmo1T$ycvJ6s+cmsktuedVWgSNGwObT3BDrPjLuhHHr/sTHDw=	\N	f	8d60d6f6-79d5-4c0a-ae84-437f4a1ead00	Shivaraj			f	t	2021-09-27 12:59:06.084592+00			0	0	t	f	Shivaraj	\N
1535	pbkdf2_sha256$216000$bU7XK4Vi506E$QxkBifstsBhrg0dIh/VamH3L/GnleUjsl5fq4iTFftE=	\N	f	c3f21ae7-501e-4045-aeb6-8741ba832de7	Master			f	t	2021-09-27 12:59:06.324884+00			0	0	t	f	Master	\N
1536	pbkdf2_sha256$216000$3ivp6Lrrtlgq$DRA6beBUNw9UiFGcRz3mzcGS0QaZnYOa3SuiYJW9/+k=	\N	f	a84f9917-2dfe-44a3-9177-10810429c7b4	Master			f	t	2021-09-27 12:59:11.811654+00			0	0	t	f	Master	\N
1537	pbkdf2_sha256$216000$ni7xAuhQB1mZ$Tw8rVMkW3cEbia73za9cYOgrS3c+SI6Gb2crjLJWXHE=	\N	f	2ec8b049-9538-447b-bb23-1a8bd4a51347	Winner			f	t	2021-09-27 12:59:12.071422+00			0	0	t	f	Winner	\N
1538	pbkdf2_sha256$216000$HOAra3Cm7BOo$brtJQFlZb42P+sEm/x2Af52XYO3KSpimBmsbuH5iMB8=	\N	f	ba26c944-2b9a-4660-8e31-b487270df04c	John			f	t	2021-09-27 12:59:17.844862+00			0	0	t	f	John	\N
1539	pbkdf2_sha256$216000$GSDKw8r8zktS$kf/azDnVUHM/QTa6cf9/JZoea/jO73U4tgLGlJFWZ3U=	\N	f	c3f0fe27-8b25-46fb-9762-a4cb2dad6145	John			f	t	2021-09-27 12:59:18.09498+00			0	0	t	f	John	\N
1540	pbkdf2_sha256$216000$HObt9XfO5BKT$Yrpm/YJkj0kni6Pu0c88FCnFu39EHdBW8B/InmGnMcA=	\N	f	2a1fc5ec-3ef6-4e59-a777-412c88ef0297	Gambler			f	t	2021-09-27 12:59:23.501344+00			0	0	t	f	Gambler	\N
1541	pbkdf2_sha256$216000$ZWh5kfSFw6hv$acRnMbcBgTC3ESRWzzHCu199lqfeadnJJqCktHIGODc=	\N	f	f969e7c7-d144-498a-85fb-ef2f0eb4a5e1	Major			f	t	2021-09-27 12:59:23.761165+00			0	0	t	f	Major	\N
1542	pbkdf2_sha256$216000$ebRPz4XvY3iX$7GoOAikO6bwtYytrCPrp/hl6gDAEqjqvHqmRaLRmhYQ=	\N	f	6cf75d30-3582-4d7d-a21d-974f205f2fa0	Poker Raja			f	t	2021-09-27 12:59:29.496755+00			0	0	t	f	Poker Raja	\N
1543	pbkdf2_sha256$216000$0FzIauDaFMFC$6xzCUQy1fb9WsAPCDFJgI77PwfqpOySu8XqxiUslYFk=	\N	f	f01eb024-51b4-45b3-af86-74e2ec6d8816	Krishna			f	t	2021-09-27 12:59:29.755469+00			0	0	t	f	Krishna	\N
1544	pbkdf2_sha256$216000$4jgkPLS62snU$TC0qB3PP6pThU3BNk193MG0APO/ShRQ7gocXEtgYcGI=	\N	f	f95534d2-f90e-45a7-81ca-94459011754f	Gambler			f	t	2021-09-27 12:59:35.135696+00			0	0	t	f	Gambler	\N
1545	pbkdf2_sha256$216000$f0XB7QumXql5$Z4oSx87/w1E9E/G2CmAAfPvNmxJKD3Vu+di8C62e2nk=	\N	f	9348ab99-9085-4a9e-b58f-d2c9973deb26	Rani			f	t	2021-09-27 12:59:35.385615+00			0	0	t	f	Rani	\N
1546	pbkdf2_sha256$216000$N63s0ISJmsnm$uxizPRrEQewzGsPjrCOmdhzF7nBwq710wJCgGM1wKGQ=	\N	f	2939af7b-35ff-49a2-b991-8e0170906ec4	John			f	t	2021-09-27 12:59:41.145354+00			0	0	t	f	John	\N
1547	pbkdf2_sha256$216000$5zaAXzQraoFi$uKX95oeZaiJh4y0jD5Fzy2pTEVyxSZ8itLAJcUojzOw=	\N	f	f7de1db7-397a-4251-8e18-f9dd4ba57e62	John			f	t	2021-09-27 12:59:41.4158+00			0	0	t	f	John	\N
1548	pbkdf2_sha256$216000$4MrXJCztD06F$hWgJeReYcMN732l3R8jTJjAd2Bloyc8YGXVWXYOuNfE=	\N	f	5b6e608d-861e-4ce0-afd9-a743d3c20bf9	Winner			f	t	2021-09-27 12:59:46.821327+00			0	0	t	f	Winner	\N
1549	pbkdf2_sha256$216000$XRQ1AcvUtvZS$8UDnJ94w/10ezccNu9fctK2PedLT5dqruESCh2fjxSk=	\N	f	e079cadb-891e-4a4f-bca9-06e181afd863	Major			f	t	2021-09-27 12:59:47.101369+00			0	0	t	f	Major	\N
1550	pbkdf2_sha256$216000$HRdPBMnZa63K$I3T8YQNLOKCQBr5Tv7SP+f9EA/JOHZ+fSlj6/eyZayY=	\N	f	6850cc2e-f6f4-49c0-8979-5402c76e02d9	Raju			f	t	2021-09-27 12:59:52.815891+00			0	0	t	f	Raju	\N
1551	pbkdf2_sha256$216000$DdsEzlg1ON2C$I1d7+qSA/ykuFmSRog9IYN3RgL3PK7DCXa0U6CyUJQc=	\N	f	964fc462-a6c3-41ba-bd78-9239b7e02a07	Sheetal			f	t	2021-09-27 12:59:53.065757+00			0	0	t	f	Sheetal	\N
1552	pbkdf2_sha256$216000$ZoixyYbCWXTk$6aOH80aQl7l7n7b+09tn1XDzGIOG9hP2+9BLp/ul5lQ=	\N	f	4dc1ae6f-3ba0-4751-a993-f177dda968f8	Major			f	t	2021-09-27 12:59:58.72172+00			0	0	t	f	Major	\N
1553	pbkdf2_sha256$216000$wHrWcDUYULVg$rhyeIHlWgqWwv3FkI406cBQyMsUwo+ecXtRj0QmKUaU=	\N	f	f83741ab-b635-4d5f-adeb-1d025914908c	Gambler			f	t	2021-09-27 12:59:58.991786+00			0	0	t	f	Gambler	\N
1554	pbkdf2_sha256$216000$PGEZSdNcK02Q$zsASblWthEQri/iJUS1r7LYVPmzNXjTTQ8b1hWJc+FM=	\N	f	403ad4e7-e37a-48c8-b0d0-e4c3e034198a	Avenger			f	t	2021-09-27 13:00:04.686177+00			0	0	t	f	Avenger	\N
1555	pbkdf2_sha256$216000$eUd3vSAw8B5g$15nEWk/ZsUTneUOuBa2D+ZfyTnB4v+jAdFmSwp6LJ8Y=	\N	f	a6510498-e3e6-41e5-9bff-e32064dffaa8	Raju			f	t	2021-09-27 13:00:04.955867+00			0	0	t	f	Raju	\N
1556	pbkdf2_sha256$216000$xE4sAxQM3WxB$9EJdLbAML3LGDdE0+JNTk71lHC2+gOMWhp7xgkegfl4=	\N	f	3333244d-e1b4-4442-aa16-d1259aac45b7	Sheetal			f	t	2021-09-27 13:00:10.355749+00			0	0	t	f	Sheetal	\N
1557	pbkdf2_sha256$216000$XujwIYzF6b7M$rsISNCxS8G3oXOscGxdCAYXFgBZHHHbLCWXAAZ8b2vY=	\N	f	b50a5f08-5e62-4a46-9c42-afa80e0a00a3	Raju			f	t	2021-09-27 13:00:10.605383+00			0	0	t	f	Raju	\N
1558	pbkdf2_sha256$216000$4wAUaFQ4Y4z5$5FqOfe+9TjSaC1stAcQRXkDrLB/Rg7ldVPKr1ffLUjw=	\N	f	7dea2ef4-287f-4597-b9b7-f2537fae9a89	Ruby			f	t	2021-09-27 13:00:16.414703+00			0	0	t	f	Ruby	\N
1559	pbkdf2_sha256$216000$RouD0ctDJbip$k0gMhAftXRhkzCfcTG0VSPkD0MVcBnTamQilssH+lB4=	\N	f	39bb7d90-b874-4d1f-8ef9-72d305de735a	Ruby			f	t	2021-09-27 13:00:16.654844+00			0	0	t	f	Ruby	\N
1560	pbkdf2_sha256$216000$tvEm0oxigUrE$vHAg+cF4bdXuXQSBCE4W8S8FHi44kFGld6l8Ibx+NRs=	\N	f	746f3903-169c-461e-a8c0-488790570fd2	Ruby			f	t	2021-09-27 13:00:22.050473+00			0	0	t	f	Ruby	\N
1561	pbkdf2_sha256$216000$MQLKcAXi62DB$qWFRfsUHo/DOhQYe7mtYw0tw3stw4zsB+eYe5kPzXVE=	\N	f	7bc93a93-77c6-4b3b-b3de-7bda4fe60dc2	Hero			f	t	2021-09-27 13:00:22.315469+00			0	0	t	f	Hero	\N
1562	pbkdf2_sha256$216000$2NJNMe6eJRkz$c3IK3w0G+rjSoHPRlIWnrbfMJXy6tNy7j7ZS70E4xWY=	\N	f	13751547-67ee-4239-8865-ae418ed8d9e3	Loser			f	t	2021-09-27 13:00:28.025409+00			0	0	t	f	Loser	\N
1563	pbkdf2_sha256$216000$gz5XPTOHunO8$1JEyELehBzyqIvy/qfLeUbBw5CyLBgyj+LuE8LpCfUI=	\N	f	53fdca02-44fe-4c07-b633-0f977aa49b60	Major			f	t	2021-09-27 13:00:28.275452+00			0	0	t	f	Major	\N
1564	pbkdf2_sha256$216000$unNRQSJVxKZj$14kvnoTNQzBsXJhyNB8hv+97kDDdCOM0cqtPWw+2d+s=	\N	f	42b556a3-e120-4792-8200-92479e2840fb	Rani			f	t	2021-09-27 13:00:33.65085+00			0	0	t	f	Rani	\N
1565	pbkdf2_sha256$216000$1tTRfq99dO8I$ZaiC6gsqJoi3xdapyGkprpGzy90cA7eGWBDOT8fw+b0=	\N	f	c477ce3f-45bd-47fe-bd50-2f8d6656a7a6	Rani			f	t	2021-09-27 13:00:33.940743+00			0	0	t	f	Rani	\N
1566	pbkdf2_sha256$216000$R404DxwNSRFv$/SMacMTOGaH7Cl5r0OoJ9RvNOwN1EQcocKkWvXUNwVc=	\N	f	c923f70d-4625-4192-a34c-a0dde5db9cfe	Raju			f	t	2021-09-27 13:00:39.714676+00			0	0	t	f	Raju	\N
1567	pbkdf2_sha256$216000$ZrS9EF9I6WpA$9ZlDQBmtxUGKqVV9tCQN0ftytIP7AP+oyUNpZup/IEs=	\N	f	97cbddc5-a2a0-49dd-be2b-e8ea7f086a48	Major			f	t	2021-09-27 13:00:39.95502+00			0	0	t	f	Major	\N
1568	pbkdf2_sha256$216000$ZaC3VmK8YKDz$mQDjtZmN4diJoLawGecSMMDYL5JjGGnwP8zcU68O7Ow=	\N	f	02b599d8-36b5-49ab-8deb-46e3ee1e648e	Poker Raja			f	t	2021-09-27 13:00:45.401184+00			0	0	t	f	Poker Raja	\N
1569	pbkdf2_sha256$216000$3les6NEzQ6yi$OxOlLkh6betspHSx7pwgmuHoBUZ28aVG23guCYm+FVA=	\N	f	285911a5-df07-4dc5-bac0-45e661fa4eaa	Master			f	t	2021-09-27 13:00:45.67116+00			0	0	t	f	Master	\N
1570	pbkdf2_sha256$216000$q2RtVng2ac3C$QvANOpkOdANM6T4GwSfOg0jPzVD1Cr+GTi9ylMMXWwQ=	\N	f	a929eb55-d602-4c5a-b49d-e83bf7b865f2	John			f	t	2021-09-27 13:00:51.461833+00			0	0	t	f	John	\N
1571	pbkdf2_sha256$216000$F0kbzMgyXX7I$QQGVEJwoblii+0U/n0E06z4eUc0KnK1vLbLBtY7DfsQ=	\N	f	8c07b65a-ad0a-42be-909b-4bc8b1529544	Mara			f	t	2021-09-27 13:00:51.731331+00			0	0	t	f	Mara	\N
1572	pbkdf2_sha256$216000$qEF8HlUnYw6o$qooGjK2AW2tofwj/lAwM+dPp9/iQN5ZLb+8bUOeqINk=	\N	f	a29b316c-e16e-4130-9124-0420c36625a2	Akshay			f	t	2021-09-27 13:00:57.101235+00			0	0	t	f	Akshay	\N
1573	pbkdf2_sha256$216000$Ltc42IsLKA7O$BR3Nz4Pu9/y13L8Jy61hG6O1cKmdMOSFRdLSnXgFADc=	\N	f	b0ddff1b-590f-4c47-ae37-efef74eca6c2	Diamond			f	t	2021-09-27 13:00:57.361647+00			0	0	t	f	Diamond	\N
1574	pbkdf2_sha256$216000$jvvvcgP8nusn$Z8Uk1pAzme0h96c0aTbkdoMXbYjI3TkpF3ytvpyFuDI=	\N	f	7db95551-7402-48df-a6d7-1caa2bc00140	Winner			f	t	2021-09-27 13:01:03.031409+00			0	0	t	f	Winner	\N
1575	pbkdf2_sha256$216000$A1UsHXqXyAFL$U5xVF2hrczIBh/Rv2Cu+guDMOfc42IaGGuxxrHJGEaA=	\N	f	0c5be5bb-acb4-47aa-bb75-f34224d56b6c	Master			f	t	2021-09-27 13:01:03.301334+00			0	0	t	f	Master	\N
1576	pbkdf2_sha256$216000$9p1A5zGp0uNs$5EOjubeN4076gbX/DcBcY6R/HCjytfeatMRlYASAaeo=	\N	f	4c1434ee-fe5e-4ca0-8144-4fcf0f880a14	Mara			f	t	2021-09-27 13:01:08.671697+00			0	0	t	f	Mara	\N
1577	pbkdf2_sha256$216000$QBCCbh1G0RQS$DVxnsSNhQPLEe3NR0LlzXLjdVdhtuZ8KzvL7yKUdbxs=	\N	f	bd5f36eb-4b8b-446f-8cbe-5bc981e7eab9	Poker Raja			f	t	2021-09-27 13:01:08.980574+00			0	0	t	f	Poker Raja	\N
1578	pbkdf2_sha256$216000$U8qC3HISGvqn$vVPm3rP3NUwHMgVPr8jaf3X0tt63EQWk5o/IUjHkUMQ=	\N	f	6b8eb238-f27f-4179-8599-9fc34bb9b1a4	Gambler			f	t	2021-09-27 13:01:14.59062+00			0	0	t	f	Gambler	\N
1579	pbkdf2_sha256$216000$gTvjxQMTVn5v$7gXGnO+2oIxPHdtZREFgraZlM0TAHCKdD5U7M9VVY7g=	\N	f	327b2a72-729b-4b79-b38d-9838f97eeb07	Winner			f	t	2021-09-27 13:01:14.860529+00			0	0	t	f	Winner	\N
1580	pbkdf2_sha256$216000$LcON1wfb5la3$BJbWmiqNNilQlCDURF2TmPCUCA0bN8n8VuAoDGEBaNI=	\N	f	53b75266-1e3e-4184-8c0c-bcfc1da71f3e	Sheetal			f	t	2021-09-27 13:01:20.281163+00			0	0	t	f	Sheetal	\N
1581	pbkdf2_sha256$216000$ZsRT4HfbDhZv$7EalaeyoyT358CRn6EDL9i3gPfCwFQQgwt88Wj3XIoI=	\N	f	6695337b-6d33-43ac-bc56-d4fd585d93c5	Diamond			f	t	2021-09-27 13:01:20.581329+00			0	0	t	f	Diamond	\N
1582	pbkdf2_sha256$216000$kZlKiBy12N57$kWdMqSAhFkxNDf/c17qHb0R84EErZVF0xpl39zlphwY=	\N	f	59c39092-4c8c-4479-b6da-e3c6869d1f01	Winner			f	t	2021-09-27 13:01:26.29557+00			0	0	t	f	Winner	\N
1583	pbkdf2_sha256$216000$P1ErY3xmB3ma$HasVRTINq7yHXvHHjlrMXAAvmA5kC+sW4DqF8jEbC+I=	\N	f	0c08d09a-c1d6-41ca-8eff-68729d221984	Master			f	t	2021-09-27 13:01:26.545559+00			0	0	t	f	Master	\N
1584	pbkdf2_sha256$216000$qccxlUtsqp3o$+XqjXgDSP5tmn6xheAeN0YpmDtChgiwf1UN7FKcDo5Q=	\N	f	759c802b-ea65-446f-a43a-9e4752698f5d	Krishna			f	t	2021-09-27 13:01:32.025722+00			0	0	t	f	Krishna	\N
1585	pbkdf2_sha256$216000$w32ZMT39i5Qx$XTB27hd3Whm0CxTvKnt7OHqbWKP49iGvsnIzxLDdZ7w=	\N	f	844f4cf5-1432-450b-a7a9-106929121a1b	Ruby			f	t	2021-09-27 13:01:32.290505+00			0	0	t	f	Ruby	\N
1586	pbkdf2_sha256$216000$U2TDqaohBBqj$3Ec057AmS5fR43XeMLZmILCbuJJg7SroD7nt4My28o4=	\N	f	42c28b5b-f2ad-4b22-a245-05f517bfa451	Avenger			f	t	2021-09-27 13:01:38.090418+00			0	0	t	f	Avenger	\N
1587	pbkdf2_sha256$216000$9WzZRdSL2hQ3$L2PP6E355FKPCpL27DMyX1PGCQuO1p3Sb2ufUpmwslo=	\N	f	322a047b-b5fe-47b5-b65a-044e3881ec19	Gambler			f	t	2021-09-27 13:01:38.360768+00			0	0	t	f	Gambler	\N
1588	pbkdf2_sha256$216000$9URgfBrZyWBF$83D4539SQcZudWxLAb3Sd6Bm1f3xi6EzCqnM10gQvBA=	\N	f	092167cf-9d7d-49a5-a273-e3cb33eeca41	Ruby			f	t	2021-09-27 13:01:43.771213+00			0	0	t	f	Ruby	\N
1589	pbkdf2_sha256$216000$GcNrrFuXIbKk$1KG59vTvQDAVI/XRkLYK2T+H/8wjr9RfVRPoTllMnbk=	\N	f	ac64bc94-333c-4a81-91fe-17a02a6e6a17	Vijay			f	t	2021-09-27 13:01:44.05129+00			0	0	t	f	Vijay	\N
1590	pbkdf2_sha256$216000$aQ9vlua1sM8G$65AG+98AhW+Gsd/R7Bzifb2vBb9//ntkWcbiHV8kiaM=	\N	f	ad1459af-d188-4227-953c-e066966ed9c6	Gambler			f	t	2021-09-27 13:01:49.835552+00			0	0	t	f	Gambler	\N
1591	pbkdf2_sha256$216000$zgeYh0JdqJIZ$N1ygb9IXXpmFFraEDyhysDp1SxP/livhzjlpdiALZws=	\N	f	88760317-d1f9-4bc7-a7d6-088df9cd3cf6	Rani			f	t	2021-09-27 13:01:50.105711+00			0	0	t	f	Rani	\N
1592	pbkdf2_sha256$216000$T77m33mIuwv1$HCmSQ/czOjVDAadtCt3aF7v4Mvzp7AYJgB1/QlFkY0w=	\N	f	452adc64-bc61-49b2-b188-02ed696a2d68	Major			f	t	2021-09-27 13:01:55.541038+00			0	0	t	f	Major	\N
1593	pbkdf2_sha256$216000$pc7IELAzf2UT$foNY5ktO46UhqWyDKutBQKrLVyJZrz3mdoSP2pIe2xA=	\N	f	10b7e40d-20be-488e-bf18-0c37e64d54e0	John			f	t	2021-09-27 13:01:55.801494+00			0	0	t	f	John	\N
1594	pbkdf2_sha256$216000$CdGdWi0DtPpr$xzoU2PcljKvzxb99TMgxkd4C1JEARDan4JeAsu1EyTg=	\N	f	57c794c6-e2ca-4d3e-812e-1db5d0f69a45	Gambler			f	t	2021-09-27 13:02:01.565545+00			0	0	t	f	Gambler	\N
1595	pbkdf2_sha256$216000$8PbdSXRvgkg7$aF6QA4BMijBdlKXS8GdkwXhA/JbLYHYn/qhAaT94qMk=	\N	f	51e571dc-3166-46fc-8d3b-67676396b7f0	Krishna			f	t	2021-09-27 13:02:01.855454+00			0	0	t	f	Krishna	\N
1596	pbkdf2_sha256$216000$spWVm9uS0jtk$n63dzumKX8spleE1X668wJFE5G+MiegTOusGYOBm0d8=	\N	f	c9c24a76-72f3-49af-91f8-7fd7951a44ed	Ruby			f	t	2021-09-27 13:02:07.250454+00			0	0	t	f	Ruby	\N
1597	pbkdf2_sha256$216000$DOAhjf9xsuVX$ovLyp4NMN3FlCf3i3UMtUahWiqfUmmribQj2NoUIzXc=	\N	f	5d1945bd-ef92-4248-b976-a2a3c3564fd7	Roja			f	t	2021-09-27 13:02:07.510501+00			0	0	t	f	Roja	\N
1598	pbkdf2_sha256$216000$1RZrj01Vblj6$duqD5w6lYiR+waWldadYIDWuzzIflCfQXto8c0zJedA=	\N	f	969c17f0-c228-4cb7-87cc-824f4e086825	Akshay			f	t	2021-09-27 13:02:13.275807+00			0	0	t	f	Akshay	\N
1599	pbkdf2_sha256$216000$3sKDDwyblNO5$bRwuwRhBnK6DkbjFcymHUYHyMS/TfS2CqsZGDztTY04=	\N	f	762209e1-5e4d-43df-b9e8-6220769e8638	Master			f	t	2021-09-27 13:02:13.536052+00			0	0	t	f	Master	\N
1600	pbkdf2_sha256$216000$kDrEvREbNWRD$JI/qkJFea5KExWDXrTWOG+JYQ/5Yl8uFUk+7mBRrnVo=	\N	f	db7d4367-bf9a-4293-9d9f-23bbece30c92	Shahrukh			f	t	2021-09-27 13:02:18.884704+00			0	0	t	f	Shahrukh	\N
1601	pbkdf2_sha256$216000$4cWJqIgtuJlM$weRJjOjmAkU0xUaqppWzi202qBZ1G6MVqqGaHqUzYkg=	\N	f	2ec5ea92-316b-4349-a58d-ad5df8eafc65	Avenger			f	t	2021-09-27 13:02:19.119906+00			0	0	t	f	Avenger	\N
1602	pbkdf2_sha256$216000$HR4qSrpVd9Q9$2wXJ8nRVGqYqkIh202p9r4WORaoiKPpFxTxuEMhIAdQ=	\N	f	9fe5c4e6-c450-445a-8d42-edad3c8217f7	Master			f	t	2021-09-27 13:02:24.915512+00			0	0	t	f	Master	\N
1603	pbkdf2_sha256$216000$plGqGyfhT0Xj$+Fx8mdlzUtBTpa/EM0EoBz883OuZJbyng+DJHUmu/40=	\N	f	8fcd8b6d-cf2f-4806-94aa-005c6308e1a7	Krishna			f	t	2021-09-27 13:02:25.170639+00			0	0	t	f	Krishna	\N
1604	pbkdf2_sha256$216000$t994Kb1ByhUt$qK2GivuiXjbCIeh6sOWnP1tLdyOwMRMYWQxiGLAdUw8=	\N	f	bf86ec60-bc35-4021-a032-8829b9375298	Gambler			f	t	2021-09-27 13:02:30.601898+00			0	0	t	f	Gambler	\N
1605	pbkdf2_sha256$216000$UkYw5fzfysPJ$IE2f/jYxrD/k16dTHLSErDzucki6JG0xImrN9agIUOU=	\N	f	c2e749cf-0c98-439d-b473-d96b63794ef0	Krishna			f	t	2021-09-27 13:02:30.881571+00			0	0	t	f	Krishna	\N
1606	pbkdf2_sha256$216000$yrMwBSdVz6Qn$rY/+b5JrUUTDRVvuvRewRgUTsNqBsl++6dLOQqB7MAQ=	\N	f	e7523c82-ef47-48d5-bfc3-14d93239246a	Mara			f	t	2021-09-27 13:02:36.631425+00			0	0	t	f	Mara	\N
1607	pbkdf2_sha256$216000$rJ1L9SHnvaje$DoXchRdKNq9Wm5II8NxbdXZK5ToYobedTIK4B/spL8k=	\N	f	5d7ba319-462b-4c0a-8031-961892f5713a	Rani			f	t	2021-09-27 13:02:36.881903+00			0	0	t	f	Rani	\N
1608	pbkdf2_sha256$216000$uexd5pWplpp7$G98pDCn/Ry3S8ErT4KfqgzvcjOqCmHxUOFnUR8LHnns=	\N	f	626d1c67-c668-4ada-b02d-450d2375775c	Loser			f	t	2021-09-27 13:02:42.411199+00			0	0	t	f	Loser	\N
1609	pbkdf2_sha256$216000$xswp0djnA86l$MasYGXiGuLvd74UHb9EtB2i+cCoXg19Wg/apCx69qi8=	\N	f	826a362d-2a00-4f6e-96b9-5a60bcb5d429	Sheetal			f	t	2021-09-27 13:02:42.671278+00			0	0	t	f	Sheetal	\N
1610	pbkdf2_sha256$216000$3u4u1ZsOrpLF$MmPueykoZqo0QYRPmfZUiJdFf2UagQv8ijt1fESnKyc=	\N	f	23a86468-e627-4fa2-80c1-aff7c579ba1c	Shahrukh			f	t	2021-09-27 13:02:48.421199+00			0	0	t	f	Shahrukh	\N
1611	pbkdf2_sha256$216000$nI8HJy3hAXTh$MGgfLwMaV+sNlmi2bxtYujxm3thlstGOd4nOuIrj2oA=	\N	f	03bd179a-1e18-47cd-a965-3dee55a19317	Diamond			f	t	2021-09-27 13:02:48.686074+00			0	0	t	f	Diamond	\N
1612	pbkdf2_sha256$216000$3POz4czz1f4e$oSleaAoJvAWUBS5ru2THASgDsu7tEsdw8/qYpKPP3p4=	\N	f	e9dc53e3-575c-4dca-9abf-4801ecbe8fdb	Loser			f	t	2021-09-27 13:02:54.035418+00			0	0	t	f	Loser	\N
1613	pbkdf2_sha256$216000$Yiyj3ydSdVUd$arVhcmaAWtaB2QhOm+aar/LR11GYce05gyQTbwWUxFg=	\N	f	acb271ed-b058-4a93-b9a7-04f2a5709483	Loser			f	t	2021-09-27 13:02:54.295217+00			0	0	t	f	Loser	\N
1614	pbkdf2_sha256$216000$xOYZjH3Xi8PL$z80Ta+umrv4xvxyeIvL4sIP7IqdfX1S3uYzGKoNH6/c=	\N	f	fba6e1f1-4bf6-46ec-8a28-2f459cf82fb2	Krishna			f	t	2021-09-27 13:03:00.025468+00			0	0	t	f	Krishna	\N
1615	pbkdf2_sha256$216000$yN6v8VFo1yah$9AcqsAV3hSmcv+K3PG5ddixAW75lfgonMDFDj3xCOmg=	\N	f	d3b777ee-3ce4-41bb-ad69-2e6ca7f1fea4	Diamond			f	t	2021-09-27 13:03:00.295473+00			0	0	t	f	Diamond	\N
1616	pbkdf2_sha256$216000$iQ4hra9Rfk8h$sUeKXZrInpr6x6FFfzffyOPYXTiB4vJsGo68cxTF7ZM=	\N	f	fb7f014d-5eec-402d-bc34-694a0e03e3e6	Loser			f	t	2021-09-27 13:03:06.125199+00			0	0	t	f	Loser	\N
1617	pbkdf2_sha256$216000$M5VvBwsQZteU$jbZFszgelXyTxmxldVOpmL4Nl6PYVBpnpzJasegI3S0=	\N	f	d6d30adf-1957-4094-b4aa-8b7ea60af338	Major			f	t	2021-09-27 13:03:06.364507+00			0	0	t	f	Major	\N
1618	pbkdf2_sha256$216000$yosNVGwymG5W$9mm22e6iaFSGCW7sQYaWjNVqaOh+2Zon0WV8gquiFCk=	\N	f	f355bcab-027d-47b5-bd10-e49ffee05a0f	Shahrukh			f	t	2021-09-27 13:03:12.114828+00			0	0	t	f	Shahrukh	\N
1619	pbkdf2_sha256$216000$slZ0FdgeKJv7$imQL5lomSuvPTRTHLtDDOhJQuQ9mobiAJ0ixGFUGCQA=	\N	f	4bbb32f3-6432-47f8-9186-6d6b1ee684e5	Roja			f	t	2021-09-27 13:03:12.354554+00			0	0	t	f	Roja	\N
1620	pbkdf2_sha256$216000$PfdShrzVcDfi$z27QB/yWaN9LavcvtrEQtmD05iplv2l8U1rYhJgPM40=	\N	f	d3bde1a0-b2cf-41b8-a92a-95105e89cc74	Loser			f	t	2021-09-27 13:03:17.710529+00			0	0	t	f	Loser	\N
1621	pbkdf2_sha256$216000$CtKOfdb4XBcN$RnMeiQl0VoggIAic1w167Rq5BlTf9tbpVTxgcrGVv9s=	\N	f	1661424d-ff00-4b5f-bb99-43f4b9b8e7f3	Akshay			f	t	2021-09-27 13:03:17.960813+00			0	0	t	f	Akshay	\N
1622	pbkdf2_sha256$216000$yHKh3PGoXx5h$PTxGtN7jU/XWQPfo1BUOMg01bIe1elwpzK8uxKBnFgY=	\N	f	13501f4c-c2da-4ecd-baad-048dc595363f	John			f	t	2021-09-27 13:03:23.870502+00			0	0	t	f	John	\N
1623	pbkdf2_sha256$216000$1FnsgWqWU5sI$QXiANp5WHdNl40CfmP2U0Mf0RSQN9U6jDbF4HOiNvn8=	\N	f	313c2f46-d555-44bc-9b4a-3d61dbbdfb0a	Avenger			f	t	2021-09-27 13:03:24.130401+00			0	0	t	f	Avenger	\N
1624	pbkdf2_sha256$216000$guFyBkuKmUsW$glcv05xq4uzEkyzsfqglsWtEoCflhNUGeTxJO99FcrU=	\N	f	c3cfe74a-b60c-4224-8aef-cc7d929a0370	John			f	t	2021-09-27 13:03:29.5359+00			0	0	t	f	John	\N
1625	pbkdf2_sha256$216000$zlghuhRqXKU1$hvnThZyf7x/4Y784IwqNJX45Buw+drn84TSPgfyKLcQ=	\N	f	7f639935-f5c3-4923-a896-6c7f8995f105	Winner			f	t	2021-09-27 13:03:29.775653+00			0	0	t	f	Winner	\N
1626	pbkdf2_sha256$216000$Gm6o5jJnH8xD$2DCKn17TaLCy1zlUoDNnKZttvxNb5f5U6hnMbIcEFfo=	\N	f	6009dc12-4225-4409-898b-cbb7c2c96321	Akshay			f	t	2021-09-27 13:03:35.651085+00			0	0	t	f	Akshay	\N
1627	pbkdf2_sha256$216000$bfzLiODdrqG4$B27GZmeAP2N/AfqNd3Sg/HayJ82VtD92t2Ws5HqFPY8=	\N	f	44f59e74-57a8-4d87-b5d6-01e94a7683eb	Vijay			f	t	2021-09-27 13:03:35.92114+00			0	0	t	f	Vijay	\N
1628	pbkdf2_sha256$216000$YSu7vlmScmUF$qn5pRgJntanTNJx6Dt5hlILuRz5cheCX0FJpWXlZ6J8=	\N	f	2758961e-eed6-4809-9bad-53e0b402d02c	Raju			f	t	2021-09-27 13:03:41.380453+00			0	0	t	f	Raju	\N
1629	pbkdf2_sha256$216000$RpqbKLIqjyN3$qKnMxGwo8ITSTCH9E7Dce/mc5j6mYoaNK0fF0tFnWTQ=	\N	f	e55dd39c-8813-4d61-8dab-bf6be3b27b11	Avenger			f	t	2021-09-27 13:03:41.64081+00			0	0	t	f	Avenger	\N
1630	pbkdf2_sha256$216000$aYxxI77YMoW9$sPCZAEr390WBMU2TVvhq5mAsNJiZsl8hBB7AO+DO5yg=	\N	f	447f3a05-cac2-478d-9018-e481adedd7fb	Akshay			f	t	2021-09-27 13:03:47.290417+00			0	0	t	f	Akshay	\N
1631	pbkdf2_sha256$216000$btp1cSMJt4ji$kFAvrzyFPM9rUGZezjBDCv/N8RekvySeml4A8UclztQ=	\N	f	f7dcfa8c-c7ef-4ac9-8fd4-60a9c009120f	Krishna			f	t	2021-09-27 13:03:47.55043+00			0	0	t	f	Krishna	\N
1632	pbkdf2_sha256$216000$h5M8ueUJmWaJ$Lqw929EYAPE0IYKOt0TFehWhB/rBCZ0czeb+o7k7KQg=	\N	f	1537fde2-d585-449d-b0cb-34b3c00eaa3f	Akshay			f	t	2021-09-27 13:03:52.931522+00			0	0	t	f	Akshay	\N
1633	pbkdf2_sha256$216000$2D3YxigacTeD$kgfLqxaeG9gNb55xXvwGR6v8Cn+hUPn7SsKf3VGbteM=	\N	f	4d422e8b-921d-46e6-9179-c929609ad515	Major			f	t	2021-09-27 13:03:53.191334+00			0	0	t	f	Major	\N
1634	pbkdf2_sha256$216000$uLZ0fkDpla41$yJgW2wVLRkhJUkwBBJp3rBiTeUf/WOM/nPGfPfZUdUs=	\N	f	5edbe586-7172-47d9-8740-1f0e3ec7b0fa	Vijay			f	t	2021-09-27 13:03:58.80581+00			0	0	t	f	Vijay	\N
1635	pbkdf2_sha256$216000$DnR5Wr5sIW7o$XAwRcXkNacHMACO8vzKXR4JhX4gRQt/I9dZrAJFW5Bs=	\N	f	73789879-e26c-47f5-9a36-7d24b55556c8	Avenger			f	t	2021-09-27 13:03:59.061274+00			0	0	t	f	Avenger	\N
1636	pbkdf2_sha256$216000$U2EsDSO7B5HK$mHVh9UIer5IMK5gH+MJUhXiTwA2zd3DOPys2bpHv5cU=	\N	f	c42b0a88-cd02-4552-9811-8e4df36f3afe	John			f	t	2021-09-27 13:04:04.451528+00			0	0	t	f	John	\N
1637	pbkdf2_sha256$216000$L8M6uO7vFsI2$kHrTCJpkbcyDEDN2OveqbqRIxs1M5FcFzHCKixIeN2U=	\N	f	67b2fc18-14e3-4d7d-bedc-ce88bd0ee509	Master			f	t	2021-09-27 13:04:04.701656+00			0	0	t	f	Master	\N
1638	pbkdf2_sha256$216000$Us9dKbivHdTL$k8Y8mynqDQRwgelrduMErIHjvSMAyabEXclLcEwuwu8=	\N	f	e4b939c4-6e71-4af2-8312-78398a38749c	Major			f	t	2021-09-27 13:04:10.510756+00			0	0	t	f	Major	\N
1639	pbkdf2_sha256$216000$2Q9o3rWFRzFx$6r2nZTTBLw3a9omVIckTI3pvhVDOyovQW6oWr5PjWro=	\N	f	673fb722-a95d-49a5-8011-99fe4ecc4505	Avenger			f	t	2021-09-27 13:04:10.780519+00			0	0	t	f	Avenger	\N
1640	pbkdf2_sha256$216000$pvncq2hY2lKf$E8H2flD4Bkk+hfsDWHiHpnxqGMuUBZNfUyG9suCKFfc=	\N	f	7f97b8fa-43a5-4215-b002-0d958fda6ab6	Loser			f	t	2021-09-27 13:04:16.171091+00			0	0	t	f	Loser	\N
1641	pbkdf2_sha256$216000$TuIs1s8tKOPG$c4lKrIwyzCIxDFVfkKUMP0nMTNHLlIDBNt6kcPUERpk=	\N	f	04f71320-75e5-400d-95c2-47b178b9e6ec	Loser			f	t	2021-09-27 13:04:16.441291+00			0	0	t	f	Loser	\N
1642	pbkdf2_sha256$216000$dxhkYPjWqjo1$uKesBMfOtnAi+edA/5aWkttPUDH6l8EEWDlG5eH4pdI=	\N	f	a277f970-7a96-45b8-950f-ccb8822b4ab3	Raju			f	t	2021-09-27 13:04:22.131118+00			0	0	t	f	Raju	\N
1643	pbkdf2_sha256$216000$SUjZXiVDlDNM$r/pa2uGl28Gdq3ashOCGA1fkktQWm0Gq4gX1n6d+wF8=	\N	f	40c192f0-4763-4c70-99a5-5d75c62d199c	Number 1			f	t	2021-09-27 13:04:22.391185+00			0	0	t	f	Number 1	\N
1644	pbkdf2_sha256$216000$6gtnGxcUpXhU$kk0DA7ov8/r2MQsi994vM7A8zdAzB1oDXhRymP+m1tI=	\N	f	6a5659f2-e027-49a3-9342-986498b23513	Loser			f	t	2021-09-27 13:04:27.7446+00			0	0	t	f	Loser	\N
1645	pbkdf2_sha256$216000$OmWAQPP8oUky$5+W8itoYEGB4sAsY6KUKkEBISF0nS7GcdTvxWadF1yQ=	\N	f	9bfd3209-3eab-47bf-8b9c-5c4086b10d0a	Master			f	t	2021-09-27 13:04:27.994487+00			0	0	t	f	Master	\N
1646	pbkdf2_sha256$216000$BowBNVFfzvQw$+kC6K22fB3MUMPmo78vAcsCEZ8mgqWq3Ti/T+hGO7P0=	\N	f	47455f8b-efa7-4ec3-9d7b-4c711d707964	Vijay			f	t	2021-09-27 13:04:33.671852+00			0	0	t	f	Vijay	\N
1647	pbkdf2_sha256$216000$mSq56Bze0emO$4AQsn6vvQsGmyf1YZENLzg3TwARkWI4SDYOyTjbQG9s=	\N	f	1be42397-9d38-447e-b37f-0f5177934fe8	Major			f	t	2021-09-27 13:04:33.941459+00			0	0	t	f	Major	\N
1648	pbkdf2_sha256$216000$u3unSb5QUvKj$/6Y1CDihURmfPmjOoP3tiRXVrpZ2FkWbZ+Tdzp1AOwg=	\N	f	7c6dd3f6-dc01-4586-aa60-f682aa20db3b	Poker Raja			f	t	2021-09-27 13:04:39.324525+00			0	0	t	f	Poker Raja	\N
1649	pbkdf2_sha256$216000$PUTNmLu2ONlt$7hmNT97ysqt+om89UpzVB8vlE309rZSNQl01uL5BbN0=	\N	f	fa16b1f8-bb15-427e-bac9-fbefbbe37d53	Avenger			f	t	2021-09-27 13:04:39.574771+00			0	0	t	f	Avenger	\N
1650	pbkdf2_sha256$216000$C1g4siIsPX0k$P6XKRNojT9RvN9MrDi3nEB5Jnu5pBKmAoOzZkjOCYfE=	\N	f	71063efe-a3f5-4e87-83f3-07017aa80007	Diamond			f	t	2021-09-27 13:04:45.235147+00			0	0	t	f	Diamond	\N
1651	pbkdf2_sha256$216000$GIyFX4FbeMEO$92MPJ1Q1mM9JGY5d5BnEi5wgrjjC4j7+Of5mmfYaaR4=	\N	f	ed315697-74fe-489d-a2f8-dcaf6a1094ac	Vijay			f	t	2021-09-27 13:04:45.475163+00			0	0	t	f	Vijay	\N
1652	pbkdf2_sha256$216000$LhAPZklfAxtj$db8TjsFW29glAiwcx4VVOuFdU3tZ/sB9lTFY4gJXPaA=	\N	f	c2b6731d-58bd-4593-b7f6-4a154001b415	Poker Raja			f	t	2021-09-27 13:04:50.910657+00			0	0	t	f	Poker Raja	\N
1653	pbkdf2_sha256$216000$MFUbTiQ1kZZz$rc9Ryvtf8qhHbzHxvRqp4QqVRtxBECoKjCVZn7Z5md8=	\N	f	93619fb8-e7d9-477d-8698-4dd096e4f3db	Hero			f	t	2021-09-27 13:04:51.180525+00			0	0	t	f	Hero	\N
1654	pbkdf2_sha256$216000$x8yQeZVDQcVb$sKhUQQkEG4m6y9SwjG0EgrjQ+MPJ7YHbKfZD/3VD17s=	\N	f	b242b95f-174a-4366-ab0f-267850bc0065	Poker Raja			f	t	2021-09-27 13:04:56.890455+00			0	0	t	f	Poker Raja	\N
1655	pbkdf2_sha256$216000$UB2jMsCNTDWl$vC9tswKsK0LqUy7WNdI76cn0GshcYi6r/58JPZADjtc=	\N	f	b055fc44-4f3f-4814-bd70-56ad5f734c53	Ruby			f	t	2021-09-27 13:04:57.150757+00			0	0	t	f	Ruby	\N
1656	pbkdf2_sha256$216000$k1dKdjlSU8Cv$aozh1fCtMpN8O4VueOGQ7ooYiq/ma4WRVZ6w/iUxToA=	\N	f	87c543f3-1d0e-4db9-9ddf-126813808361	Avenger			f	t	2021-09-27 13:05:02.540644+00			0	0	t	f	Avenger	\N
1657	pbkdf2_sha256$216000$mJsTIRGAxRdW$WrRd+yTQYT4Di/TLE8CuO0RvyWE5Uv0QGvoSXtI8j7w=	\N	f	9d1b8470-6b2f-4e0c-9dcd-8feae6fd7925	John			f	t	2021-09-27 13:05:02.7857+00			0	0	t	f	John	\N
1658	pbkdf2_sha256$216000$5H07edbTjL3V$1zQcf75gRenQb1lzncHk4oEvlTMx+MJaXuDXp6jJZT8=	\N	f	e3923ad5-5d96-4283-a2a4-0a5832dabe0c	Shivaraj			f	t	2021-09-27 13:05:08.490676+00			0	0	t	f	Shivaraj	\N
1659	pbkdf2_sha256$216000$WzuxNB9lhLXB$fihuNXX6UDMaI2+G3tAVrs21PJeqkUxYVOuSC+6QT+k=	\N	f	643cd092-b5ec-464a-a84d-9fd937220acb	Mara			f	t	2021-09-27 13:05:08.8505+00			0	0	t	f	Mara	\N
1660	pbkdf2_sha256$216000$dsmAKl0kIptd$X+YSm2o572ITmgm09abWpaZxVQmoYU7X6a9mc2qV08o=	\N	f	b5e23b45-6055-430f-a5b6-f4299e729682	Diamond			f	t	2021-09-27 13:05:14.220488+00			0	0	t	f	Diamond	\N
1661	pbkdf2_sha256$216000$PPmiXiI6BMjZ$k2VDH1qIZgiS1gONl63O8FCiMeIaB0tKGm+7K9e8fMs=	\N	f	d5b23956-a5fd-4057-850d-09c4222ee4d4	Vijay			f	t	2021-09-27 13:05:14.490448+00			0	0	t	f	Vijay	\N
1662	pbkdf2_sha256$216000$44NAMHgceOZb$bZUX9VjBmiNIiPh7+nWuGkmqmgo22SJECgLmltn7Bqg=	\N	f	0a92edb5-1d5b-437f-9bfa-d0b3b0f5fa70	Master			f	t	2021-09-27 13:05:20.165365+00			0	0	t	f	Master	\N
1663	pbkdf2_sha256$216000$GteVuk4V6sH5$AUvUEvy85++Ld6U+fIGkiDstWQVlQaSlcrDvgOJhSHw=	\N	f	bc5149ec-980d-4053-bde7-582bca883955	Major			f	t	2021-09-27 13:05:20.4256+00			0	0	t	f	Major	\N
1664	pbkdf2_sha256$216000$QXFww5Tb45gl$iFsxheW0anXPdhOxUhjLj12YSbMAUTjMpO1i+uHvC04=	\N	f	2f779beb-6833-4354-bd4d-0724462aa729	Ruby			f	t	2021-09-27 13:05:25.890449+00			0	0	t	f	Ruby	\N
1665	pbkdf2_sha256$216000$xmTqjPqiXYn8$L7+DgP5qWXIfELq321HomjXZcPCqE8JFU0DF+4j+5Hk=	\N	f	536f1739-c145-4905-a7d1-de1d19ae4f23	Major			f	t	2021-09-27 13:05:26.125388+00			0	0	t	f	Major	\N
1666	pbkdf2_sha256$216000$nDSPjRF12fwY$FTpkNwwlA9XKNU4T8fFUhNgxZN9TBh4SaJR8bozxexY=	\N	f	ab6bf957-73bd-4fe6-b5e7-977bac4c6a08	Rani			f	t	2021-09-27 13:05:31.741086+00			0	0	t	f	Rani	\N
1667	pbkdf2_sha256$216000$eAZgqj4bQcwA$ZFFvpwz0xcVqqonuwNSdO2v0HonBK0g4Yj6wcrcHX5Y=	\N	f	988c602b-2d4e-4d1e-9503-54143ec36990	Akshay			f	t	2021-09-27 13:05:32.030965+00			0	0	t	f	Akshay	\N
1668	pbkdf2_sha256$216000$QuMsL3ygBe7E$HMtkpXk9/9eGyz+P5YJPuT4dfzbb4Bt3p8U6wtpjNHA=	\N	f	9ec278cc-4248-4e89-8ca5-2f0551d39eef	Shahrukh			f	t	2021-09-27 13:05:37.401398+00			0	0	t	f	Shahrukh	\N
1669	pbkdf2_sha256$216000$q0dyub2SRrIL$CicOl/cjcTYDZE4IzW4VBvOP34sZEzd2d4S5+dZUoeA=	\N	f	5c9a709d-ba86-42a6-baa5-d6a4031cbaff	John			f	t	2021-09-27 13:05:37.661634+00			0	0	t	f	John	\N
1670	pbkdf2_sha256$216000$8CTgfK5ITwxw$bFjemIE4/1zB1fo5Xq/pNHqbxSbbYPjjw+X6UNVkqjM=	\N	f	0721e426-7a04-4e57-be51-30a0a1e4e0ff	Roja			f	t	2021-09-27 13:05:43.43141+00			0	0	t	f	Roja	\N
1671	pbkdf2_sha256$216000$BXT6hLHjJ5wm$+TkTymPIlxC0458CiZpB5QKOHkVeOa6GEol9JrU8bsE=	\N	f	4569c02b-ce41-43a6-b94d-660db2209a26	Vijay			f	t	2021-09-27 13:05:43.691188+00			0	0	t	f	Vijay	\N
1672	pbkdf2_sha256$216000$ziV7s3RtrIOI$Hwm19pjkSks9Qr3eETdj3+Bd+//5S0YUDHTJEEOqPlQ=	\N	f	66f57ecc-8f00-4483-8105-879546cb0f52	Akshay			f	t	2021-09-27 13:05:49.04563+00			0	0	t	f	Akshay	\N
1673	pbkdf2_sha256$216000$2hL5BXAf87Ny$pHmR29HBYq+GfcyG07b6gTw0Kv03C2vOKRsp0g2/Weg=	\N	f	c6ed660a-c533-4391-bc2a-95bfbe8a5f67	Diamond			f	t	2021-09-27 13:05:49.32151+00			0	0	t	f	Diamond	\N
1674	pbkdf2_sha256$216000$Gx3UVidlTy8z$n4pZF0UtijDKoXuIU6X6OllCTjtJLG/zrfYG1seqxfI=	\N	f	886f45a6-adf7-4244-b29c-402a9baf2ab3	Vijay			f	t	2021-09-27 13:05:55.141221+00			0	0	t	f	Vijay	\N
1675	pbkdf2_sha256$216000$GWZp1L2xeiqB$4rPzl5+j6zP6whIc+VQ/N82NRbNTl841Bi2khMzsLlU=	\N	f	58ae73b2-586b-4bfd-82fd-337031101c10	Loser			f	t	2021-09-27 13:05:55.524393+00			0	0	t	f	Loser	\N
1676	pbkdf2_sha256$216000$MzlAC6DQskYU$/LOgmhfzmmhn9DvsyjHhfFtKrqYTz3VgnX8tQz5Z9ao=	\N	f	326336ee-3357-4d6e-a11b-2e31bc2c46b1	Ruby			f	t	2021-09-27 13:06:00.891325+00			0	0	t	f	Ruby	\N
1677	pbkdf2_sha256$216000$MefbsFzOBkVC$bRE40GX+XeDDaGmarX3fh+vecEr6tIA1EX5xqTs3AJQ=	\N	f	419bde85-33e7-48ed-9fd7-8932dfa6bf5b	Avenger			f	t	2021-09-27 13:06:01.151292+00			0	0	t	f	Avenger	\N
1678	pbkdf2_sha256$216000$dsYcfm4fGQ5S$2DCKy125Pm0PHc2I5OwcYyhyg/xke2/VHxQSZJ8aBl0=	\N	f	b3be6d06-4396-48d6-89e6-c75b61888462	Shahrukh			f	t	2021-09-27 13:06:06.851109+00			0	0	t	f	Shahrukh	\N
1679	pbkdf2_sha256$216000$OMfuBRR2DRbR$XPPGTxJXirh573/xQVQUIxtr1Z3uUfLPpcMhpQbOg6o=	\N	f	2477d773-5df2-4db2-b000-1406b0ddb9bf	Poker Raja			f	t	2021-09-27 13:06:07.121066+00			0	0	t	f	Poker Raja	\N
1680	pbkdf2_sha256$216000$HChGjkWT52ya$AP60wzcIwqzfYPJhXqPrTPCe7G8sRIXV6azuMWK+nLk=	\N	f	2c4e9757-a45f-4943-ab9b-1a4a4e97996b	Ruby			f	t	2021-09-27 13:06:12.471186+00			0	0	t	f	Ruby	\N
1681	pbkdf2_sha256$216000$Gj3Z5TbhJwkJ$9/LyP1136NqfBbKJXAwB1tKNnYc4yqUR5SWOtDARW9Q=	\N	f	da288458-b5df-40ce-b455-9ba42c749750	Gambler			f	t	2021-09-27 13:06:12.721018+00			0	0	t	f	Gambler	\N
1682	pbkdf2_sha256$216000$NKOvhk6oeQ9I$xRlhwKg4vnHR6bkfc9ktNZzqfPyUOLrTD5fLMVULbQk=	\N	f	bd08f5c2-0e0b-4604-8adb-103ea4f5cf2c	Mara			f	t	2021-09-27 13:06:18.481229+00			0	0	t	f	Mara	\N
1683	pbkdf2_sha256$216000$vPXooxztB1dh$jr1f2UqJ0r1JjPR30TjO7iFOf32XXX8JyMv8q3am7BI=	\N	f	21f16d50-44b4-489c-bc8b-98b746b7e961	Major			f	t	2021-09-27 13:06:18.761751+00			0	0	t	f	Major	\N
1684	pbkdf2_sha256$216000$TzGN2Ilv4Wjd$/9sdDdybno+PA4Qg2FC3saagfBP5qBMp3O1XHCNUCMc=	\N	f	a50aae3c-ba76-4d6c-9c10-cbb1e402aaa8	Shivaraj			f	t	2021-09-27 13:06:24.15533+00			0	0	t	f	Shivaraj	\N
1685	pbkdf2_sha256$216000$6xSAh1wpNULd$2Q0L2VYttVWuNbUCiHdZE0iTroYpcl40TMJjKahAN4M=	\N	f	22fb344e-3e1c-4892-8da7-b8c5a3e31433	Gambler			f	t	2021-09-27 13:06:24.415321+00			0	0	t	f	Gambler	\N
1686	pbkdf2_sha256$216000$7Vor2xOlAgCj$Erq9j2a1DITlX48KISImLFGHxPpVnDeA04RSwn5J1WU=	\N	f	910604b5-fe57-4078-bf43-49725dcf3cbf	John			f	t	2021-09-27 13:06:30.095617+00			0	0	t	f	John	\N
1687	pbkdf2_sha256$216000$qdnxll0CcMw5$rwPIwBK/P9EOy7fuMGCxQdT8fRw5egk2i8fOD40wfco=	\N	f	bf561803-b7f0-4d2c-a091-4563c8a2cce9	Diamond			f	t	2021-09-27 13:06:30.345267+00			0	0	t	f	Diamond	\N
1688	pbkdf2_sha256$216000$DfJLOVjq84nX$a9rff7drPovMfSRxQmnV40W6vi/uLC19XOTkP3NtDCY=	\N	f	83e68d84-1db0-4c67-bcce-84912a1aa058	Major			f	t	2021-09-27 13:06:35.760564+00			0	0	t	f	Major	\N
1689	pbkdf2_sha256$216000$PIFtsR7ggIYV$KDOFFh7cUeB4jLXpYCZVPmV4dhLfyFM9b8mwt3nS8a8=	\N	f	f6e5bb2c-49e9-4e68-965e-7b4bcef22fdb	Shivaraj			f	t	2021-09-27 13:06:36.040749+00			0	0	t	f	Shivaraj	\N
1690	pbkdf2_sha256$216000$6Noi11nazElk$6A9hP//nLO39OUhUMZjpfysUWxh34l/3F/eavIA0kOM=	\N	f	6c227c93-9d21-4b3a-adcf-3067a5ff978b	Loser			f	t	2021-09-27 13:06:41.675563+00			0	0	t	f	Loser	\N
1691	pbkdf2_sha256$216000$ppbofs7cUfgj$YGMrMMeCzBY2fISZAqfA9ToP8SPwAjyAk12UECcjYoI=	\N	f	02e93404-0abf-4e56-b101-4bf39e075328	Vijay			f	t	2021-09-27 13:06:41.925575+00			0	0	t	f	Vijay	\N
1692	pbkdf2_sha256$216000$TntDLlyLSaSs$iyJnIrv2/jaWguDQ8d9Q6J4PXa2O1mdJDeYKrxbGp7k=	\N	f	01163710-3d23-41f4-87b9-4989e9fbdf20	Poker Raja			f	t	2021-09-27 13:06:47.27549+00			0	0	t	f	Poker Raja	\N
1693	pbkdf2_sha256$216000$GR2sw1D3T49B$cN7Oc/YRTsph3loU/QkBEU10IgOrzd2loVLaIm0iuZ0=	\N	f	f4579682-d1f2-496e-9baa-d938c9581251	Raju			f	t	2021-09-27 13:06:47.515325+00			0	0	t	f	Raju	\N
1694	pbkdf2_sha256$216000$OdAuYaEyVwTE$GN1l/GJtgq+Dg/Y9SaHq6OopC6AJG9xH2sx3ZANV6uM=	\N	f	0718ac55-a816-4e18-8b8d-a3b808aa4a0b	Gambler			f	t	2021-09-27 13:06:53.154506+00			0	0	t	f	Gambler	\N
1695	pbkdf2_sha256$216000$m5LRKmoNzTB2$dloObnUpEIlh4VLga4OXopA62xXcDZREewkdKz5x89Q=	\N	f	8bbbc520-c759-49d9-bb32-3e7bf695828b	John			f	t	2021-09-27 13:06:53.404674+00			0	0	t	f	John	\N
1696	pbkdf2_sha256$216000$3rcDwQTEHgWT$xKHY6b59zhHMWQzBK2HETt5gaLTQ7n+GTdDA9N42iS8=	\N	f	86c1667a-2ebe-4588-b77b-7f3be1fe5fc1	Akshay			f	t	2021-09-27 13:06:58.815584+00			0	0	t	f	Akshay	\N
1697	pbkdf2_sha256$216000$3eA23UdwoIdP$R1efn6iJOGr7R4e8nnhi1qw8glt5FlJLIYBWjpRxxQg=	\N	f	02011ada-069a-4b29-aa0d-ddae9e2bcaa6	Shivaraj			f	t	2021-09-27 13:06:59.055845+00			0	0	t	f	Shivaraj	\N
1698	pbkdf2_sha256$216000$Ee3bX9B5D22s$o0ku7yRLt7NTukVvqVaXIBIeoBXN7lleicdxCjOOZYo=	\N	f	9864544d-1f35-458a-b023-84c80fe84838	Avenger			f	t	2021-09-27 13:07:04.784569+00			0	0	t	f	Avenger	\N
1699	pbkdf2_sha256$216000$jvCCxTmy9oz8$RyMmYnXLGx0AizmJarPIJRubyGgaqLLDz7T2LMhC60I=	\N	f	fd1ab7c3-ef80-4035-8126-f30412e00010	Ruby			f	t	2021-09-27 13:07:05.035045+00			0	0	t	f	Ruby	\N
1700	pbkdf2_sha256$216000$9DWGeUUCtcsl$JYHhlmGcpRIvYvf2ohIRyboEjCjbtA77XSq3yVN0LKU=	\N	f	f16c261a-e34b-492c-a364-4514b9de5be0	Number 1			f	t	2021-09-27 13:07:10.384707+00			0	0	t	f	Number 1	\N
1701	pbkdf2_sha256$216000$U5oQiA9zLImZ$6kTEidSk+KrQMNT/D2fGwXpOxRsSIN/7PLRdi9h/y+A=	\N	f	6f7c4aa6-c163-496b-9140-d2f24f60d16a	Sheetal			f	t	2021-09-27 13:07:10.644672+00			0	0	t	f	Sheetal	\N
1702	pbkdf2_sha256$216000$02uZX86y7t9R$tLpZR9EgqS9KY4+ycjl0rgmXufMaM3X/MgMwUPV4VMk=	\N	f	d9b14cc4-3a33-45d7-8b26-e09056406fa6	Loser			f	t	2021-09-27 13:07:16.321625+00			0	0	t	f	Loser	\N
1703	pbkdf2_sha256$216000$gKhcEOSTu6X7$P4hwdpoLsQm397zRmn06WXqo0qnWV7Aoeu+XpIMLJVw=	\N	f	f1baa794-0477-4152-bea5-afdc4a41f415	Major			f	t	2021-09-27 13:07:16.581867+00			0	0	t	f	Major	\N
1704	pbkdf2_sha256$216000$sNC5mF9H8CpO$vSswblAbBJeJwwaDMgknFJgZJRJYtF7gvFRVkYCkUeA=	\N	f	d9d89b12-588a-4c53-9a9c-b21b7f5b9286	Major			f	t	2021-09-27 13:07:22.025403+00			0	0	t	f	Major	\N
1705	pbkdf2_sha256$216000$eF3FwVB27TJp$+PeMNz7HSalHXeuea/sza1DepnIC5ebLkp6wjCXdwSg=	\N	f	3ccce051-d872-4223-8011-f62795fe8409	John			f	t	2021-09-27 13:07:22.275443+00			0	0	t	f	John	\N
1706	pbkdf2_sha256$216000$7tXWXbnfBnpp$ruh/c6WuVMcVmCvmLR9cGn4Tk9VA55B9D7w2M4KEEZg=	\N	f	44686b21-4f60-4fcd-b21e-2bb70c5071a2	Vijay			f	t	2021-09-27 13:07:27.871423+00			0	0	t	f	Vijay	\N
1707	pbkdf2_sha256$216000$cmTomwPKtGTg$UC42Va18Voy+enFs/KR9nz5XVlz0PlT1NE72c/xaypE=	\N	f	cb28462b-3976-4a2c-ba96-de1121c551c9	Ruby			f	t	2021-09-27 13:07:28.131178+00			0	0	t	f	Ruby	\N
1708	pbkdf2_sha256$216000$oC4YItFKHDgr$SvIWTRFdN+eQoEfaT3I9Oxs60eBmfTV1z1SUWKY3Imc=	\N	f	747e1ffc-3f86-43a8-927a-f0a67615dcc9	Diamond			f	t	2021-09-27 13:07:33.611107+00			0	0	t	f	Diamond	\N
1709	pbkdf2_sha256$216000$kK0C1uyVVDAw$8ltvxPsballNuftzHbFb67wCmD3vnrxSrPm5PEam5vk=	\N	f	d9fbe951-b208-48e2-bc90-c4d1872b85de	Raju			f	t	2021-09-27 13:07:33.871488+00			0	0	t	f	Raju	\N
1710	pbkdf2_sha256$216000$SP6LGYdC8YUG$zUbOq7wqik4RmngORy3tKGUfhTomKf+yCq6B5nt+pvA=	\N	f	b1d8a8ab-69bc-43ff-9dd7-2bb0ef897737	Mara			f	t	2021-09-27 13:07:39.631584+00			0	0	t	f	Mara	\N
1711	pbkdf2_sha256$216000$WMXQsY93qAxP$gBE9bE8QuZW2eJTmDO7oHDh9pccXl906LAcDG55q9D0=	\N	f	bd174340-96a2-4130-85b1-a255e035d69e	Akshay			f	t	2021-09-27 13:07:39.906618+00			0	0	t	f	Akshay	\N
1712	pbkdf2_sha256$216000$NmHw8wEVeGCj$W46qSwZYkyWGxfzLcO12knRPlD1bs9ONyFA+JBdYGso=	\N	f	c34f5de4-3087-491f-beab-fa78679a2a1c	Mara			f	t	2021-09-27 13:07:45.31133+00			0	0	t	f	Mara	\N
1713	pbkdf2_sha256$216000$QaBMVl6SxFej$xpxHmK7rgDspE2zx8AdmQj3zDqE+VhVJg0uruQFaXqg=	\N	f	39249be3-fbc8-4268-89b3-060d48d8221d	Winner			f	t	2021-09-27 13:07:45.571123+00			0	0	t	f	Winner	\N
1714	pbkdf2_sha256$216000$Lz9qAQPWnHIy$CXiQGD21qPNYhf70LhnSiX0Rjjxw+VJyXPHFILlPCyU=	\N	f	5b378a41-5174-41b6-ad7d-f24cbcb5f992	Master			f	t	2021-09-27 13:07:51.331277+00			0	0	t	f	Master	\N
1715	pbkdf2_sha256$216000$56rS7RK00dq1$0afsLyJWlZ29kVj7PyWbcnrmFSU6ZXGVCbLaQA08Ohw=	\N	f	87b6ccaa-7ef5-43a0-8360-1647c0d0b0a1	Major			f	t	2021-09-27 13:07:51.581372+00			0	0	t	f	Major	\N
1716	pbkdf2_sha256$216000$WR3YfG08UsHx$Q/uP2Ao1ErEs0x4ukC2RNKwsAbiedjrL/6FjZTh1jMs=	\N	f	eb34bb37-ef4c-4cc7-a408-f51905f7c722	Vijay			f	t	2021-09-27 13:07:57.051174+00			0	0	t	f	Vijay	\N
1717	pbkdf2_sha256$216000$8jJa3ED2dK04$s4yC97OoTsUtSSs7AEQXt8Rx4r4fZ7XO9CKR8iarN0E=	\N	f	18b9bd15-98f4-4219-b3b5-508f9ab080d5	John			f	t	2021-09-27 13:07:57.331419+00			0	0	t	f	John	\N
1718	pbkdf2_sha256$216000$hfDtalumaThO$kpoBsfXpJj6CkvkZly6Abu1wkCxwghInWAXO5VF6qQk=	\N	f	6569b2fa-d78a-4e7c-9cac-3ec72e1fe726	Ruby			f	t	2021-09-27 13:08:03.055347+00			0	0	t	f	Ruby	\N
1719	pbkdf2_sha256$216000$mcGHynPe7p2D$YtazkUnJn12ZFEVYk+YgHPnikBuHgOGuajlhDdZdBQ0=	\N	f	f0992a5a-e7e6-49e2-bcf3-63f6b38e1330	Major			f	t	2021-09-27 13:08:03.295412+00			0	0	t	f	Major	\N
1720	pbkdf2_sha256$216000$I5aK4PUs0aVs$EWMpgoPm6RmALH3YS+/n6opOVx1E7G3ZRezT2+ht6jI=	\N	f	26544e0e-b891-429b-91e6-1ba12cad67ec	Raju			f	t	2021-09-27 13:08:08.755351+00			0	0	t	f	Raju	\N
1721	pbkdf2_sha256$216000$W053jFOgUJEw$+kDbLqJNWlHlpaQ5VBmYcodXJnp+/kglyZjZ2Loc4tI=	\N	f	9a097afc-6a90-4631-968a-2df5df7f5da1	Major			f	t	2021-09-27 13:08:08.995214+00			0	0	t	f	Major	\N
1722	pbkdf2_sha256$216000$e7kgvEi0ip12$4ZP9bHfaE58Hj1y9ejb2O2jhEH2n2w06to88eBlJ3Vc=	\N	f	715bb4be-967d-448b-a233-6de033a8743d	Avenger			f	t	2021-09-27 13:08:14.821212+00			0	0	t	f	Avenger	\N
1723	pbkdf2_sha256$216000$iQpmqy0gcsF6$RQDO5Lz2qoJTcbqb+E6pXCGyOkpiKR7aZ0hRmot95+w=	\N	f	43436e50-61aa-4db1-9fee-8df03d527b15	Hero			f	t	2021-09-27 13:08:15.101421+00			0	0	t	f	Hero	\N
1724	pbkdf2_sha256$216000$9150iphk7Vld$pXom+jNIzLxiK7gnpSLFda1HU+HTYq+yfDC0r4oysto=	\N	f	51738909-05af-4a37-a4dc-f9d8326ee723	Gambler			f	t	2021-09-27 13:08:20.540383+00			0	0	t	f	Gambler	\N
1725	pbkdf2_sha256$216000$Qjw5JeXHCVIn$ZZj2CPhZNVllEhrGOjRlgw2jCRGqTSZfg/MjtGtDA1c=	\N	f	390538f2-721f-4e43-abcd-7047aae284dc	Number 1			f	t	2021-09-27 13:08:20.840228+00			0	0	t	f	Number 1	\N
1726	pbkdf2_sha256$216000$q8tCUaruIDZH$7mHkEtaYQP/BGvpX/xzm7+gP1NStdJuwFXIS/EZw9e4=	\N	f	04c028ca-5542-46f7-9d71-c55737a94958	Shahrukh			f	t	2021-09-27 13:08:26.691548+00			0	0	t	f	Shahrukh	\N
1727	pbkdf2_sha256$216000$szoLS4S6s9tK$kyyqgKiyjC+ctI3oRKJNfNeGo6hVZk6jWLkNsiHUy2U=	\N	f	4e5bca45-7764-40c0-9864-a90994f9dd0c	Major			f	t	2021-09-27 13:08:26.961165+00			0	0	t	f	Major	\N
1728	pbkdf2_sha256$216000$2dp61pfc89AR$ryfLIHpmMHChR2aa9S45KbyhkavAwg/D8+m/jyQ0k9Q=	\N	f	d383611a-6364-446b-a791-013fd4c43e53	Mara			f	t	2021-09-27 13:08:32.37144+00			0	0	t	f	Mara	\N
1729	pbkdf2_sha256$216000$ssqfvdKaJcoe$BJIU9yU1cfpjWhThYnyFLoJ2bhhRc0TfRGJtS9vC0z0=	\N	f	736d5c04-5a42-4adb-bef8-f72b01a19be8	Krishna			f	t	2021-09-27 13:08:32.621462+00			0	0	t	f	Krishna	\N
1730	pbkdf2_sha256$216000$fkJDXYeossO9$SqSiyo9IPuJ6/YR6XoLBmBDDQqoOdcXmvL4biwqihRI=	\N	f	b58a3ba8-8061-433b-91e6-a98afdacb353	Major			f	t	2021-09-27 13:08:38.400267+00			0	0	t	f	Major	\N
1731	pbkdf2_sha256$216000$vitwOFaK1FpK$sqP4gBliisQPCNKo75uV4TOeF32NVqcsa62mvZk1KOA=	\N	f	0625d540-7949-47a6-9f04-9616be98eb6b	Ruby			f	t	2021-09-27 13:08:38.660699+00			0	0	t	f	Ruby	\N
1732	pbkdf2_sha256$216000$yKjxGhpm1NmX$FlyHpLykByb55IIihN5TKnOSdAq4ytcfwWPI3XYcEps=	\N	f	187eec07-6f36-4cce-a3d9-bb9487be446b	Vijay			f	t	2021-09-27 13:08:44.005567+00			0	0	t	f	Vijay	\N
1733	pbkdf2_sha256$216000$wSmjaUS5vCvx$ljuzV2RLymXla1H0294M3Zyc+0k28MYjiKwNd45txJg=	\N	f	373567e8-b504-44fb-a90c-23c34dfb2e67	Loser			f	t	2021-09-27 13:08:44.255561+00			0	0	t	f	Loser	\N
1734	pbkdf2_sha256$216000$lsYwB1eEJqjY$DTjYSfNCZ4KcaylXwlIiWlB64hxbdSptFzSZ4ML15MQ=	\N	f	585b3d56-df16-433d-831f-182fcbf12db0	Loser			f	t	2021-09-27 13:08:50.031779+00			0	0	t	f	Loser	\N
1735	pbkdf2_sha256$216000$PRSrDUYWtcz2$Wwa0vWbDiQsXLysECs5vdkLuWjeCQrKrsaLAQCNPcuk=	\N	f	22bea305-05bb-438e-b96f-cf74bee2ec75	Poker Raja			f	t	2021-09-27 13:08:50.281474+00			0	0	t	f	Poker Raja	\N
1736	pbkdf2_sha256$216000$sOwubKJkCQVn$LBV9EJMFlnRNVt/pZT8HqyodOO9c3i2LZ4Imzjjwagg=	\N	f	3343008e-b941-47cf-8f69-0d069caf5c23	Sheetal			f	t	2021-09-27 13:08:55.655176+00			0	0	t	f	Sheetal	\N
1737	pbkdf2_sha256$216000$7BmtRopgAlpg$UerfN1sfR5Y6KmJL+vCSSDAgd7lpnVQNqD8yvEscKFM=	\N	f	68bd5dba-1c92-4c92-be60-e7abdb40a5c0	Mara			f	t	2021-09-27 13:08:55.925598+00			0	0	t	f	Mara	\N
1738	pbkdf2_sha256$216000$HH9lG8IRQhMx$keL5CzStKzq/uyCqM/91GaxQxTcNXZfkCZxlNArp5ec=	\N	f	941f4768-dd49-4081-8279-062b28f1ff12	Hero			f	t	2021-09-27 13:09:01.674442+00			0	0	t	f	Hero	\N
1739	pbkdf2_sha256$216000$P0bp9RR8EzoU$E7TVkFA4nVbULYJAzAcH4LoUlYHKdVwDZGUGT4tz5Tk=	\N	f	382d9aa4-1475-48ff-89f0-1d94c7dad1c9	Mara			f	t	2021-09-27 13:09:01.914481+00			0	0	t	f	Mara	\N
1740	pbkdf2_sha256$216000$uBJ9gjoMPOUE$dprCv/BS0pVmMoGH+BS6OTp8WLnL+A1MM3ATmmU20BE=	\N	f	9cc13dce-f099-4f87-a5ed-f9224ab8d314	Sheetal			f	t	2021-09-27 13:09:07.41473+00			0	0	t	f	Sheetal	\N
1741	pbkdf2_sha256$216000$jtdDfs49x1ES$uqNX8+T2AwtDbMhqKssVQpa32CclMwCEduImyJUL07M=	\N	f	6479acc5-cb00-43cd-939f-ac693eed0bcd	Vijay			f	t	2021-09-27 13:09:07.664465+00			0	0	t	f	Vijay	\N
1742	pbkdf2_sha256$216000$6rFSCMn0kaSE$Vz6J6S0oMhZ7W5+0cJjJDa9OLINnJRQL+3QfF3aKNbs=	\N	f	4675ea6c-4841-4558-a630-561a19a5eaf1	Shahrukh			f	t	2021-09-27 13:09:13.450255+00			0	0	t	f	Shahrukh	\N
1743	pbkdf2_sha256$216000$fGsUF1EhwxMs$N5Z7rmDpPkPAyTJipFhNRFKxdnp0LJPsubO8nCcu0D4=	\N	f	28306f3f-c051-479c-b602-7dbbceb930d5	Shivaraj			f	t	2021-09-27 13:09:13.730674+00			0	0	t	f	Shivaraj	\N
1744	pbkdf2_sha256$216000$PHDzxZxrQeJt$Ne5HRorQ/rcrM/eSo6yVA3sPv+3YNR8BJE93dMv9WYk=	\N	f	aa3d4cae-09c8-471a-a2ff-fe9b2f983e96	Master			f	t	2021-09-27 13:09:19.135218+00			0	0	t	f	Master	\N
1745	pbkdf2_sha256$216000$pME1s7q2913V$/HLe4Nl/Xfph13WecCHoxR1wD5grsj4W67i+rW4NMwo=	\N	f	b5a59b52-87bb-4df8-9edd-e55faf0bc272	Winner			f	t	2021-09-27 13:09:19.375301+00			0	0	t	f	Winner	\N
1746	pbkdf2_sha256$216000$Tg4pWmnRNyWb$w6N+23qFaPCfsjyzu9uHJTtkX46MvTX6hrqD8up7hNs=	\N	f	ffef2411-0742-4769-9274-e32374b2ce02	Major			f	t	2021-09-27 13:09:25.111066+00			0	0	t	f	Major	\N
1747	pbkdf2_sha256$216000$lJNqCAratn0D$KBeiPWurCQBuq7SQ59H1zBqWRGeo16GMKpHoUD2h0Tg=	\N	f	1c3d9ef6-418f-46ac-a96b-cf68bf15a8f1	John			f	t	2021-09-27 13:09:25.381203+00			0	0	t	f	John	\N
1748	pbkdf2_sha256$216000$UHAwoGPwL5BJ$5Rwww2HKowrwx5ax3rFUrvgNZkmNUtLqXKcAWRtRSU0=	\N	f	5c4bb22e-cef7-4235-9676-0d565f19391f	John			f	t	2021-09-27 13:09:30.761371+00			0	0	t	f	John	\N
1749	pbkdf2_sha256$216000$jkWQ6bzevUf9$PotyMZh6wrWmb92zfGVm3dP/kXvlTFUHG0sx7A0zVf8=	\N	f	099c6e81-4df8-4333-95dc-63a939163460	Shivaraj			f	t	2021-09-27 13:09:31.031085+00			0	0	t	f	Shivaraj	\N
1750	pbkdf2_sha256$216000$2EpVzUMLVeIx$uPa5o2gQpZBvEhJHtbSx6sb0YJSi7GT5c881ioYBzGs=	\N	f	a372ac2e-8e86-4771-8de6-eb76f0a458b6	Krishna			f	t	2021-09-27 13:09:36.781207+00			0	0	t	f	Krishna	\N
1751	pbkdf2_sha256$216000$WgEUKpz8TAr5$y65Ds/5FsY85M7TeA7yw7lDeBh0+p+PJUQT7AAEEFdU=	\N	f	bcb9f73e-b8ba-4521-82f0-de7e137ec67f	Avenger			f	t	2021-09-27 13:09:37.041526+00			0	0	t	f	Avenger	\N
1752	pbkdf2_sha256$216000$3XXXhBj8e5Di$FmEhfQMX0kmPrMqBSZRXogCzoPDfe2eyqqdU01cojsg=	\N	f	25d207e2-551e-4644-aee1-0857f9187109	Roja			f	t	2021-09-27 13:09:42.434922+00			0	0	t	f	Roja	\N
1753	pbkdf2_sha256$216000$TYVrR4cnOCbY$bCSnYMdmpOsrfPsVm61gg1+D2yfd5oxQnNo0UDWiUJE=	\N	f	f54c129f-86d2-4935-bdba-7016e959c19c	Raju			f	t	2021-09-27 13:09:42.68502+00			0	0	t	f	Raju	\N
1754	pbkdf2_sha256$216000$FODcm6A35d7v$oivbP9WVmuKThlJytR9ZAbshRmbfNHD+lMHU3U7h3/k=	\N	f	70f247f5-526f-43fe-bce3-423fad30c93b	Sheetal			f	t	2021-09-27 13:09:48.385534+00			0	0	t	f	Sheetal	\N
1755	pbkdf2_sha256$216000$p8mQYuqUomU2$STMOyDaGza0GVxSDWZwPB175w4D2bTka3tgvAhmE/F4=	\N	f	5dd421f6-04d0-4499-80d6-1073b6f7ce96	Mara			f	t	2021-09-27 13:09:48.635304+00			0	0	t	f	Mara	\N
1756	pbkdf2_sha256$216000$bVYCd9U7s4vM$i1P2xc5u0STzpX6uXycxpS6RhGuPFqPF1xSyWCzC9UY=	\N	f	88ff5b5d-61b1-4b08-86ba-c1d60db9815d	Roja			f	t	2021-09-27 13:09:54.031067+00			0	0	t	f	Roja	\N
1757	pbkdf2_sha256$216000$WihCzeUBGRlB$Ke3hYDvkHjmGZ9NQIu+F5ofBT8o+J/CDLBhPZHWe4q8=	\N	f	61d7a532-25e5-4c72-9679-91b15d8b3b1e	Winner			f	t	2021-09-27 13:09:54.296205+00			0	0	t	f	Winner	\N
1758	pbkdf2_sha256$216000$O6k8wpuVZwjs$c6ZrDqR/D+m6ekfCiRd49BBxhe5G1SI7sfcoNry0kVA=	\N	f	c08389a0-704a-4040-975c-c75b9715ae84	Akshay			f	t	2021-09-27 13:09:59.995028+00			0	0	t	f	Akshay	\N
1759	pbkdf2_sha256$216000$wFMNRPsHaAWI$zrqSGzAppAK9rPhSgIP26kv3lUEZkKjtgP3TItDHxwg=	\N	f	8672fe6f-bc4b-4665-8261-6b489ec30325	Shahrukh			f	t	2021-09-27 13:10:00.239908+00			0	0	t	f	Shahrukh	\N
1760	pbkdf2_sha256$216000$7v6LgXeHsGUd$gd59NMlXY0hfct+VV7Z42E2MtXjzP+oP/0ynjhc/lpk=	\N	f	1ce7d4a0-addd-429b-8857-a14953a864e0	Rani			f	t	2021-09-27 13:10:05.671799+00			0	0	t	f	Rani	\N
1761	pbkdf2_sha256$216000$mNrnjsTjJWP2$E8v4ZAnm7eVj9AK2GUOCBY+iXArWEf6nAu6yMIK/Mr4=	\N	f	2e039b7e-13e6-45b9-a381-ba04250f2c42	Shahrukh			f	t	2021-09-27 13:10:05.961735+00			0	0	t	f	Shahrukh	\N
1762	pbkdf2_sha256$216000$NQ9PprbyvRQi$6KA3ye7Zr9HcK90lP2kpgsHJnCBbriUDEwPZECD5HQI=	\N	f	2edb5d7c-00db-4f52-8163-6eff57ee0577	Ruby			f	t	2021-09-27 13:10:11.735176+00			0	0	t	f	Ruby	\N
1763	pbkdf2_sha256$216000$t8fqhhFNysnf$Gn6/dBi8BbNKaKoymy6bXva+kVsvIGwPb1jcN6j3K8M=	\N	f	ff2e57d1-2918-415c-83af-25ab0d1addce	Sheetal			f	t	2021-09-27 13:10:11.985324+00			0	0	t	f	Sheetal	\N
1764	pbkdf2_sha256$216000$baRBT9liTj8i$TLf9r+5/y9JVtSLdN6KQHxsoXpfYIB2ltM+6TJZnvXA=	\N	f	069f4e15-7606-46b6-98f5-b6a830424307	Loser			f	t	2021-09-27 13:10:17.441046+00			0	0	t	f	Loser	\N
1765	pbkdf2_sha256$216000$wJZWZlrpKbZy$oP6XXUzWN7Jdek9PDE7CqUc41gAi34gIUv9YqnmeOgY=	\N	f	2cb09b56-9134-42ca-a66e-70508a335668	Krishna			f	t	2021-09-27 13:10:17.691239+00			0	0	t	f	Krishna	\N
1766	pbkdf2_sha256$216000$N2Xe76E7zENa$RZKeJdtExLN/kuB8GRdHItf7FGsrUONrsFUl6gDeFO8=	\N	f	1d28c4e7-cdd0-4965-9d21-54d413a4253c	Mara			f	t	2021-09-27 13:10:23.500873+00			0	0	t	f	Mara	\N
1767	pbkdf2_sha256$216000$suvm527SuexL$MTBUbZu8gl+YIMMe7GqFXs+sCPuKk0H5NbClymqHfJ4=	\N	f	943a73c9-bca6-4932-8e5c-c6beb42614f7	Roja			f	t	2021-09-27 13:10:23.760842+00			0	0	t	f	Roja	\N
1768	pbkdf2_sha256$216000$8jbgmuE2GeNS$IN/Mrz6hAZocWEILyCtJpyH53yJzgSslOgVSBPd6uFo=	\N	f	80c071ff-7a8e-4dbd-8f11-e56a85b53959	Rani			f	t	2021-09-27 13:10:29.071235+00			0	0	t	f	Rani	\N
1769	pbkdf2_sha256$216000$92btlaAMIT87$4vGrOompAh9XxU2uil3lrgAPbXvDlFJG41DVFSBburg=	\N	f	270f668b-2e8e-4d9c-a417-6d7ac1be2f45	Hero			f	t	2021-09-27 13:10:29.330783+00			0	0	t	f	Hero	\N
1770	pbkdf2_sha256$216000$qhIjaHVlr8V3$VL7famFQqrvDDgil1yzMP/CwLAlWbdQsN7w7iX7+u2M=	\N	f	2649946e-d96b-4fcc-a9c3-53ec0126b891	Krishna			f	t	2021-09-27 13:10:35.221291+00			0	0	t	f	Krishna	\N
1771	pbkdf2_sha256$216000$9LesMxNyUZF9$QMcFpmnv2M2dw93/3cEtXjbLYFY2/UUBc/FFEX2jMxg=	\N	f	dfdd8f76-8485-436d-a893-a8b17cc1f012	Diamond			f	t	2021-09-27 13:10:35.48155+00			0	0	t	f	Diamond	\N
1772	pbkdf2_sha256$216000$9qn9qiCkMXMX$ULMKd78G03Cn6dVlmqDG5AfwPnPIgKcZ4SMhvpwkPFU=	\N	f	25892a9b-ecf7-42b2-86ab-90377e856464	Avenger			f	t	2021-09-27 13:10:40.871298+00			0	0	t	f	Avenger	\N
1773	pbkdf2_sha256$216000$n1kekCRODpJB$E3GavhEoB/30a4i5d7jenrRCKlwK6Tu4WQtMmwCTPvU=	\N	f	135317b3-2d6d-45e2-a8fa-41ff8edc1262	Roja			f	t	2021-09-27 13:10:41.131103+00			0	0	t	f	Roja	\N
1774	pbkdf2_sha256$216000$CeUxoweXk2Gx$M6oor8NlgkOj6FoTukCyPze9WnRxk0XFhhB4VeRapO0=	\N	f	3e5c41b5-a1d4-4e93-88c0-fc00c0c32a96	Avenger			f	t	2021-09-27 13:10:46.895568+00			0	0	t	f	Avenger	\N
1775	pbkdf2_sha256$216000$CbM5E6Dql1bI$qlu4CE7IDsV29n5Mi3cx23GvDuCqJY4RBYvjn6NeUHY=	\N	f	a1d20cb1-2b1f-4496-874f-d5e7225a161c	Raju			f	t	2021-09-27 13:10:47.14559+00			0	0	t	f	Raju	\N
1776	pbkdf2_sha256$216000$ignsrnwDG3U8$Jf0JbSOXptXHHDdmRiGs4Sdh9qEHL+Qc0cA58J1XPlM=	\N	f	20690ecd-51b1-4fd4-9a2a-ef30e97827ce	Master			f	t	2021-09-27 13:10:52.551209+00			0	0	t	f	Master	\N
1777	pbkdf2_sha256$216000$zk8yJwBBI826$Qq9PoG+NCKe8CqLvuVbRWvbEw+DhSammfHV2a+8Po84=	\N	f	826c3278-c4d8-40dd-803d-2a092992e62c	Hero			f	t	2021-09-27 13:10:52.811562+00			0	0	t	f	Hero	\N
1778	pbkdf2_sha256$216000$655iEqHaS3sd$jQIOgqz/qkVN7tdM+51jBhG0np4QxmRkNGhi5aCeHNU=	\N	f	95dbd0d7-85d9-4e2c-8c00-0d8d97fc3938	Akshay			f	t	2021-09-27 13:10:58.535193+00			0	0	t	f	Akshay	\N
1779	pbkdf2_sha256$216000$xUAkncJGATek$TTH9aZ1jGRViXK+O5rj7ElPJm31IstfQDRTqkkBHp5s=	\N	f	1eb8b9ab-44bf-4307-82d2-6253f2cc8ca0	Hero			f	t	2021-09-27 13:10:58.785346+00			0	0	t	f	Hero	\N
1780	pbkdf2_sha256$216000$FiI7BubcKMtU$ABjH1T3p/IK/95IsYZV/lqFUYxqyDqdRmC8EovGY/II=	\N	f	332cf976-ffa7-4027-ac40-1fb93f440e35	Roja			f	t	2021-09-27 13:11:04.275386+00			0	0	t	f	Roja	\N
1781	pbkdf2_sha256$216000$rhLL9EtoAcQf$0vr/81ZECBPNP0q1fwv/gAuRL4ypYM/lbhbyy1qLbzc=	\N	f	321334ed-70bd-4627-b704-56e86693776b	Hero			f	t	2021-09-27 13:11:04.515264+00			0	0	t	f	Hero	\N
1782	pbkdf2_sha256$216000$B6U617thP8qw$Q35bzXOTq+G+YsltKkzDb6KVVx+ml65MDhn0Ki1+2nc=	\N	f	b98ba26d-0295-4f50-850e-732468cf5614	Roja			f	t	2021-09-27 13:11:10.30148+00			0	0	t	f	Roja	\N
1783	pbkdf2_sha256$216000$q56BZtjVgEa9$xR7oH1Hc4Gbd/8a89mq45hi+VYNGiP1qoU9HfWDIQmQ=	\N	f	939ffdc8-2d15-4fd1-8dc2-79a126ae966d	Krishna			f	t	2021-09-27 13:11:10.551115+00			0	0	t	f	Krishna	\N
1784	pbkdf2_sha256$216000$gj13Hot42p67$FLJ9Ctw9aBin5WNNrug6isWOEFQmUcSthhjQVTWEhD0=	\N	f	f1ee30d6-dff0-4493-be45-0e483ec3fe4d	Number 1			f	t	2021-09-27 13:11:16.025329+00			0	0	t	f	Number 1	\N
1785	pbkdf2_sha256$216000$ei0udqgDfztJ$2yKYazKA+ivMIeqspgjuAPjzC/B6tdu2RJNEOmXdJMg=	\N	f	a50e4587-8850-4e85-a37b-21c369e0ebd2	Hero			f	t	2021-09-27 13:11:16.285468+00			0	0	t	f	Hero	\N
1786	pbkdf2_sha256$216000$JnnD6Yz2OcS9$sBjyvmeyxHqz5MntuZhaBhgn+/WGCGQpCnF4ljceA/M=	\N	f	c3fab49d-ca6c-4387-8e0c-5abe4caa19c5	Roja			f	t	2021-09-27 13:11:22.091009+00			0	0	t	f	Roja	\N
1787	pbkdf2_sha256$216000$VK072gQ6jMuI$8KeSyq1yw0+coTz54h111q6gSZoU6btKiQsnc0T/Bf4=	\N	f	76845987-f657-40a8-a5e1-eac575d96d1b	Hero			f	t	2021-09-27 13:11:22.361072+00			0	0	t	f	Hero	\N
1788	pbkdf2_sha256$216000$MMpDFM1CepBw$+zIEtGMGKGZOB7jbuFXbGwvgAUV6QICQhZduYHRIKlg=	\N	f	cf01d7d8-f44a-482b-80e7-786a90bc79aa	Akshay			f	t	2021-09-27 13:11:27.771683+00			0	0	t	f	Akshay	\N
1789	pbkdf2_sha256$216000$hi0b1zTFaaQq$9HM4ACpJJjej6SVt4fxccH84swfyeb8SfPDLT5Fmubg=	\N	f	7621a149-337b-4845-adcf-f6f691a58e04	Avenger			f	t	2021-09-27 13:11:28.031591+00			0	0	t	f	Avenger	\N
1790	pbkdf2_sha256$216000$PIFDGuQcN3D0$mbmu5hWKukS5dHMmzzQZcAlMb2hr9hReeBVeXoyZoDw=	\N	f	7eaa8fa8-a30b-465c-a18e-392a7401ff40	Raju			f	t	2021-09-27 13:11:33.780358+00			0	0	t	f	Raju	\N
1791	pbkdf2_sha256$216000$5hGxQW65y4YS$FmWBNbTst+6ZsJDGGvHtzYZZk+lTTYeHB8txUFFFSVs=	\N	f	34d98c75-d8d3-4c45-8098-22fe389ce0a0	Rani			f	t	2021-09-27 13:11:34.040785+00			0	0	t	f	Rani	\N
1792	pbkdf2_sha256$216000$b15eirrwRuJK$rLDqvdURpuSv/dbv9Y9GAdreoQAnHFdvlvFR535v+vw=	\N	f	414921c6-8327-433f-8955-ffda1d757e13	Akshay			f	t	2021-09-27 13:11:39.475258+00			0	0	t	f	Akshay	\N
1793	pbkdf2_sha256$216000$YdM2GGZbD36D$U9siqPzQqEGV66ZpPgPsJJZ9yNO+hfzq+932vTw2pqY=	\N	f	10f7e74e-00b6-4257-9321-e57401aa79a8	Roja			f	t	2021-09-27 13:11:39.735375+00			0	0	t	f	Roja	\N
1794	pbkdf2_sha256$216000$99snRBcoWnDz$hiRfL9deDZz42DMYzan8vDO7NTTmdiYWEU0SqHZV2OQ=	\N	f	301663b2-8519-429c-8d5c-f742258bd42f	Diamond			f	t	2021-09-27 13:11:45.491774+00			0	0	t	f	Diamond	\N
1795	pbkdf2_sha256$216000$TeFxDjUBlFc7$RDjGlqs8e2CWjyMfHIMwa5apfUe6qd8xvEOGEpGAZ+g=	\N	f	87153e76-a85d-4c09-b1ac-5220d32f8764	Winner			f	t	2021-09-27 13:11:45.751558+00			0	0	t	f	Winner	\N
1796	pbkdf2_sha256$216000$Ikdzbw04fM5x$aNnA3/TMFfEnsUP5/kvhmaH3dqeJ1gP/CJ5Z+Ri/p7M=	\N	f	faf5b075-459d-4a12-9762-c57aaed3c934	Shivaraj			f	t	2021-09-27 13:11:51.150378+00			0	0	t	f	Shivaraj	\N
1797	pbkdf2_sha256$216000$jHJ9oyLA0d1h$mYZZPl0FMUEpuplqHdWkPNzbIV3QbditAOE8k+2ab3w=	\N	f	6343ac94-5f23-4546-9f23-fc8af71cf899	Krishna			f	t	2021-09-27 13:11:51.410358+00			0	0	t	f	Krishna	\N
1798	pbkdf2_sha256$216000$0wMrHF0A3CcG$m6X36K75jiaKoBDA9a/MKsfb5xk/wxb9x4ev2qBbxWk=	\N	f	41d236c8-c7e8-4409-ae3e-09664fe7e7f5	Major			f	t	2021-09-27 13:11:57.200902+00			0	0	t	f	Major	\N
1799	pbkdf2_sha256$216000$ZEzaaxGwA83B$2oPY3d2TnQgDGISbfVmZDWpxNPjcClm81yFDB8Wd3tE=	\N	f	5aaa20b6-2cae-4061-b939-585e9b8ca70f	Krishna			f	t	2021-09-27 13:11:57.461058+00			0	0	t	f	Krishna	\N
1800	pbkdf2_sha256$216000$9REGoF1N8WT2$+MNtXlfvI6SjBZjMUhx5VDPHuW7OJdYoNeE5zdvMQzk=	\N	f	6d3ff50c-2a87-4749-aa22-370206ee7d0c	Major			f	t	2021-09-27 13:12:02.870486+00			0	0	t	f	Major	\N
1801	pbkdf2_sha256$216000$d9MwnStSXsUD$75qJs1Xq0NjtbN97Re4Elm1l6UEfF59is80ikXHexxA=	\N	f	6e1a1523-8f56-484c-b8c1-339844aac2c6	Winner			f	t	2021-09-27 13:12:03.120241+00			0	0	t	f	Winner	\N
1802	pbkdf2_sha256$216000$y5IH1KTL7X5e$K+lsuBru6HPmrC6wk/gQFj6Nra3BwHqap9PfYK9F230=	\N	f	6289c91b-ff9c-4cc7-ad0f-9c024da3380e	Mara			f	t	2021-09-27 13:12:08.840686+00			0	0	t	f	Mara	\N
1803	pbkdf2_sha256$216000$YbYe8Qpdc9WS$/t0wSkfSOmMHFS+VWTVDwAjwPHkZafPgQmmURTS6rf8=	\N	f	b7222656-5cac-4a9e-b4b5-aa08cc186444	Loser			f	t	2021-09-27 13:12:09.08564+00			0	0	t	f	Loser	\N
1804	pbkdf2_sha256$216000$p1zkOOICbeII$lFDcNyJ8pIpyEXArUaG9NZaiN1nIu3p1nzk/yoiIq3g=	\N	f	5f615564-2c64-41ce-afc4-5e2d5042e335	Rani			f	t	2021-09-27 13:12:14.654341+00			0	0	t	f	Rani	\N
1805	pbkdf2_sha256$216000$5nP6KEn2ykC2$XyfyYVI1uvbh65waH1qYKp0d/BYYIUpCLxgmLn89daY=	\N	f	37e32d5d-fbc4-4530-a5f7-f40a761b4e0c	Mara			f	t	2021-09-27 13:12:14.89978+00			0	0	t	f	Mara	\N
1806	pbkdf2_sha256$216000$mnb5tougyizP$o0DbuEoJ+5nudyzh3Vkqvwn6K4R//b0fJ4xKuccFJmI=	\N	f	b600c6d9-2fbb-4502-a907-7245b7183014	Major			f	t	2021-09-27 13:12:20.599447+00			0	0	t	f	Major	\N
1807	pbkdf2_sha256$216000$5vaYAdaom9N0$k4AjJj0l/XcXl4/uCrAvfrM++9g7AkLO4HMiGfN/ybg=	\N	f	62f6da55-dcce-471f-86b9-826827df1b8c	Shahrukh			f	t	2021-09-27 13:12:20.844484+00			0	0	t	f	Shahrukh	\N
1808	pbkdf2_sha256$216000$arStkpFeaHTg$nxVLeXkXSOkx+SEc7+bLSTkkOxHIcITw34jRIYJRx2g=	\N	f	22b67cb9-9155-43cf-8a1d-57d67e7f464f	Number 1			f	t	2021-09-27 13:12:26.325438+00			0	0	t	f	Number 1	\N
1809	pbkdf2_sha256$216000$QIeoO9LcQdN2$5jlz9qbZZmHcA2BrEtar8MdWiPURuN9s9/w1rUdhJfM=	\N	f	67ea4c1c-5c3a-4b93-bfa3-f0a19d78ca15	Avenger			f	t	2021-09-27 13:12:26.575251+00			0	0	t	f	Avenger	\N
1810	pbkdf2_sha256$216000$Q9cKAz2HdQZl$IPJ3RHtU+ZpZzGl3POOzuRmPFqBWFk+hTJSOmoKVCns=	\N	f	13c20171-35a5-45e0-96dd-97bd39ae7845	Sheetal			f	t	2021-09-27 13:12:32.330427+00			0	0	t	f	Sheetal	\N
1811	pbkdf2_sha256$216000$2zdT745RdF8G$GSlTQzYtvaXdIxdRXn1uLDYE77rlfG88iqq3olrw7Oo=	\N	f	efeacbfc-ef3e-4e4e-80ad-afb8e7676781	Diamond			f	t	2021-09-27 13:12:32.650496+00			0	0	t	f	Diamond	\N
1812	pbkdf2_sha256$216000$MjON9r7GPkYl$xSCCANB1i84SnPer492gld0pAZN6yTR0GG6+fG+O1uI=	\N	f	05c23954-a658-4eab-8c7f-39f3e581ba9d	Winner			f	t	2021-09-27 13:12:38.024598+00			0	0	t	f	Winner	\N
1813	pbkdf2_sha256$216000$LYjn8ZH9rVMe$x7qMRNp8hqZXomwLbzW86v/8Bec6iN9sZoXgFdykEQE=	\N	f	81107551-5362-4fd9-80eb-1f5ceb3fa69a	Sheetal			f	t	2021-09-27 13:12:38.274328+00			0	0	t	f	Sheetal	\N
1814	pbkdf2_sha256$216000$eDusmTA7voBJ$yxxKKXMPcmJAJ62X3JXMtxXmdk9oz1H8yWmqbSYRuVM=	\N	f	4c1b7981-ffdd-45ed-b074-d88b8218c0fa	Winner			f	t	2021-09-27 13:12:44.135467+00			0	0	t	f	Winner	\N
1815	pbkdf2_sha256$216000$XBZlKRx59bY8$XUN6bmTuyKXsnUPqeSlwiL7+W/lRimMXrB3Ev+qzmwY=	\N	f	f046fa1c-5742-4ac1-80df-8c3e1230f574	Sheetal			f	t	2021-09-27 13:12:44.375277+00			0	0	t	f	Sheetal	\N
1816	pbkdf2_sha256$216000$pMUGOsBQNP21$LXetoEMuNGNessVj9VraKiMJZ8NhNTfbIQsbO7doRTQ=	\N	f	6c615786-5c95-4ba6-bccc-54a34feb2f7d	Krishna			f	t	2021-09-27 13:12:49.764691+00			0	0	t	f	Krishna	\N
1817	pbkdf2_sha256$216000$eSYEU2rsIrYq$aNHekALoAnRViyjm7GJ2YUOVad4zFN9dxDksZ+XOoak=	\N	f	4613a3c8-9c37-4edb-b35e-c52d567155d0	Akshay			f	t	2021-09-27 13:12:50.014484+00			0	0	t	f	Akshay	\N
1818	pbkdf2_sha256$216000$4AmsfQpS1PA1$9JHv+AKV2OtHo/DJ+3EB5VondAFA/dyUZ0BG4Ddf0DI=	\N	f	af15c632-dbd8-41a1-b101-784de3c514a5	Gambler			f	t	2021-09-27 13:12:55.721008+00			0	0	t	f	Gambler	\N
1819	pbkdf2_sha256$216000$IkVs5UeYqfau$EjmzAmwq3gsZxqEJ3pHHa1pdJEX5qV7QiHVS4/XrMuY=	\N	f	2d9bc57a-69be-4a31-a251-c33047b6747e	Roja			f	t	2021-09-27 13:12:56.011332+00			0	0	t	f	Roja	\N
1820	pbkdf2_sha256$216000$Fz8moVGW8DeN$N66VVEhVJgEkirniVNd/Lz7D7z1AqEGaceOuNjShN/Q=	\N	f	8b40110a-80ea-47d4-8a01-24aa8674e0d6	Diamond			f	t	2021-09-27 13:13:01.365268+00			0	0	t	f	Diamond	\N
1821	pbkdf2_sha256$216000$FTgjgq2UvDbh$WBR7ZE2ZLUhCowk3e+cnix0KKJvIQ9/VUva0VdRlgAM=	\N	f	2266535f-4c0f-4661-8d03-fd35d372f67c	Master			f	t	2021-09-27 13:13:01.605264+00			0	0	t	f	Master	\N
1822	pbkdf2_sha256$216000$14DcnWbfY76g$cMakyMfrJ8s77uCfzcP7j+bvcWgghc/85QmVJLdt1RY=	\N	f	6fe47f36-4857-4907-a646-3dfa5eb7290d	Raju			f	t	2021-09-27 13:13:07.255285+00			0	0	t	f	Raju	\N
1823	pbkdf2_sha256$216000$ZpyqJzefzEpS$DlJ+Dw5sWjI+1OeCRE/IifyEXwZt5g1oISjarOLYikw=	\N	f	3960e678-7a32-4350-9b75-453636de3e3c	Poker Raja			f	t	2021-09-27 13:13:07.49586+00			0	0	t	f	Poker Raja	\N
1824	pbkdf2_sha256$216000$Rl4sCYdOVo38$GEqucIvhLoUgFH96YpCFpFXgozdg1vx95ngPP/ntXAg=	\N	f	58436f67-d5ad-49ec-9e7e-6e06b040ee36	Shivaraj			f	t	2021-09-27 13:13:12.815455+00			0	0	t	f	Shivaraj	\N
1825	pbkdf2_sha256$216000$wjavuacAmchD$u8hlFsIbVg96Y/4ZZ5Q/9lddsn6ArBlUmwCgTARsIe4=	\N	f	a55d99ab-3d8b-4a9e-a21e-d130b2959f5e	Diamond			f	t	2021-09-27 13:13:13.055838+00			0	0	t	f	Diamond	\N
1826	pbkdf2_sha256$216000$dW9RxdGLhLbA$SdSZ0YtiBtGi0VIkqvB+zu1fn6bJGh17Q+J60zJLnOk=	\N	f	3277a254-0cd7-4748-901f-ab9cac725e77	Hero			f	t	2021-09-27 13:13:18.801075+00			0	0	t	f	Hero	\N
1827	pbkdf2_sha256$216000$3Tmb3lGcZfQf$+MF9mzdWW64irsw+02fdodFzcVFeZN7BsWYaqdFR6RA=	\N	f	caca99a2-ba07-4c64-9ab7-0c31ff1f380b	Sheetal			f	t	2021-09-27 13:13:19.061155+00			0	0	t	f	Sheetal	\N
1828	pbkdf2_sha256$216000$4PiolrRwVDEe$BvHqmMsbslbzUKFG0UrsGDZsoyOnqtHVZzmpVDxLhKU=	\N	f	943ef935-44f1-420d-b320-e914f8f3ff8f	Shivaraj			f	t	2021-09-27 13:13:24.461568+00			0	0	t	f	Shivaraj	\N
1829	pbkdf2_sha256$216000$oJXlPGBS2Qxt$JSSxAZL+W+QBtqHu+ckuIIPU2jUX2DjmWrO+Y7cn9d4=	\N	f	58d74043-42af-485d-9ba9-7ae7d7da3670	Master			f	t	2021-09-27 13:13:24.721205+00			0	0	t	f	Master	\N
1830	pbkdf2_sha256$216000$pbVYQ27WSzAU$I5/H+unREObKQUwDzK7jWx1khnQ3OSEPvkbglamRmjA=	\N	f	34a2bf12-e9db-466d-ad77-6bd0a8d80be0	Ruby			f	t	2021-09-27 13:13:30.47115+00			0	0	t	f	Ruby	\N
1831	pbkdf2_sha256$216000$3NWCcXnPbLiC$VavsqaLiMIRfj9vGd805NtgfiQJhMq14xi5x3KhWOe4=	\N	f	e881100e-7222-4562-8ed5-11053d1fc3d5	Major			f	t	2021-09-27 13:13:30.721244+00			0	0	t	f	Major	\N
1832	pbkdf2_sha256$216000$B0d6hPG1yKWx$uvtanE8c3R7nKzK4uzssOeOCDrs8z0nTMG54s6iZndw=	\N	f	3bc7b90b-7a3c-44f8-878e-bfa6081b1e80	Master			f	t	2021-09-27 13:13:36.121286+00			0	0	t	f	Master	\N
1833	pbkdf2_sha256$216000$1NcDbcQIF3JA$OK76Gx9B2d+E3pUDDMNnIJO0VRoux85DTjHJiubx9ms=	\N	f	8142c75c-c4b6-46ca-ae1c-0bf3519c3481	Raju			f	t	2021-09-27 13:13:36.386312+00			0	0	t	f	Raju	\N
1834	pbkdf2_sha256$216000$q9heD81pE6Bg$tPO56CC8Yrjg72rmPcsz3rH3mzDbCPZK3HKrPqqrBnE=	\N	f	be23dad4-ee40-45b4-819e-7387bd05e485	Major			f	t	2021-09-27 13:13:42.280787+00			0	0	t	f	Major	\N
1835	pbkdf2_sha256$216000$fFkmMZpJMWgv$JGhMYh8l1O7T1R/+JXQ4FBz8Cn4nDmSva5aBizREb/M=	\N	f	a183136a-bf59-485c-bcde-ea694d400ccf	Hero			f	t	2021-09-27 13:13:42.540934+00			0	0	t	f	Hero	\N
1836	pbkdf2_sha256$216000$e2cNYNV1zZrb$fkvQK6yb6thr/+Hgf9/EgatGhILOS1jkzi4jvwCf+qc=	\N	f	5f57b8d2-ade8-4bd7-bd24-262e95d93746	Hero			f	t	2021-09-27 13:13:47.89141+00			0	0	t	f	Hero	\N
1837	pbkdf2_sha256$216000$s1OsXgNGDJoJ$FI78zNrGqMkqA/RS1CtmtkNfvXysYRn4YOHNRUpb6cw=	\N	f	480b7871-deee-4863-9884-26520cbcb6f4	Roja			f	t	2021-09-27 13:13:48.141383+00			0	0	t	f	Roja	\N
1838	pbkdf2_sha256$216000$dRj1j9psl62w$SGTWHpUAPqThZ6678TOT/LCzKy+ZgUe/QSVLAwHlUbE=	\N	f	2ed5597b-644b-4e06-b3ee-783a23ae9a42	Shahrukh			f	t	2021-09-27 13:13:53.891188+00			0	0	t	f	Shahrukh	\N
1839	pbkdf2_sha256$216000$P4heTXaC6wbM$376X83hkFT/ACMDpCCigFYRPFiJWLUaSHYDIdmCyKLQ=	\N	f	5c32f9f7-4b5a-45c5-b844-c6ffc6934088	Number 1			f	t	2021-09-27 13:13:54.161475+00			0	0	t	f	Number 1	\N
1840	pbkdf2_sha256$216000$IwTlGJFoRVVY$xYPsLbMCPNIS14fIluY9uvwsv5F15R70alwiQQRNU80=	\N	f	7f4c5fac-5479-4cc6-a7c3-9026e140948e	Master			f	t	2021-09-27 13:13:59.531264+00			0	0	t	f	Master	\N
1841	pbkdf2_sha256$216000$NjZo5UrhNg1V$T+3Jfbp+4kxbxrwOLpSgINE5sWyRXtVK9CBO/OK175U=	\N	f	c6785e82-1953-4439-9283-151d01b01660	Gambler			f	t	2021-09-27 13:13:59.781015+00			0	0	t	f	Gambler	\N
1842	pbkdf2_sha256$216000$ppNNs16kwN33$rtFlViSXKLxiklcBxqyUvoYoQ+Jrb2PRwHWS+GBnsVA=	\N	f	502e497e-e8f9-41f5-b55d-53f284b77941	Roja			f	t	2021-09-27 13:14:05.651378+00			0	0	t	f	Roja	\N
1843	pbkdf2_sha256$216000$l1H3OYGdEGWh$mRZeIQTWspmO+Xo1DAaRq9F9An31iDWBHyWW3HzO3vk=	\N	f	efb2510e-35f0-4c08-9b45-ddc6fc96b501	Vijay			f	t	2021-09-27 13:14:05.9211+00			0	0	t	f	Vijay	\N
1844	pbkdf2_sha256$216000$X7KvZH0WiQHY$eiXkLpaFf1qzz60iGcvhjqkifJkuC4KaK9czkW4Hy2s=	\N	f	5696643e-5581-4d80-bc4b-6d7b364ffbd1	Master			f	t	2021-09-27 13:14:11.190554+00			0	0	t	f	Master	\N
1845	pbkdf2_sha256$216000$UPFULpFffq3E$NHMDhwPoofdRniDJS9BPpt5wOK0nm+P0jk4sHo5o82s=	\N	f	f05633c8-bfae-40eb-97a2-a36f894a2743	Akshay			f	t	2021-09-27 13:14:11.435778+00			0	0	t	f	Akshay	\N
1846	pbkdf2_sha256$216000$E9PsRzhe40Pk$60/0TxLF8UnlpI+MFqt7KcYXbnXUsn2J0Px4oAKiJB4=	\N	f	868b514d-e924-4db6-8dba-c216faa7cd9f	Vijay			f	t	2021-09-27 13:14:17.195543+00			0	0	t	f	Vijay	\N
1847	pbkdf2_sha256$216000$JDVYgPLl19RV$5FATBZkiSu/CwZ2Sp/COagchrsYBzly3Y5jTm3j717E=	\N	f	e1b02da0-6252-4de3-ad6f-0f5756c9e8ca	Rani			f	t	2021-09-27 13:14:21.315939+00			0	0	t	f	Rani	\N
1848	pbkdf2_sha256$216000$wnJG8SwxV7dJ$RXGR173PCTuukO+PW49nJSHSFiS+kCX0GPPcs986AGg=	\N	f	35dca158-e088-4663-82e2-9ef62ee89da2	Poker Raja			f	t	2021-09-27 13:14:27.500339+00			0	0	t	f	Poker Raja	\N
1849	pbkdf2_sha256$216000$xMOumIAJGWmi$sc20Ae/mUWZlG0FWODofNcJq/Fx8WPeXmSwNW/SGNfc=	\N	f	ceb0a50e-126f-4c38-ba39-6609e8da1ddc	Vijay			f	t	2021-09-27 13:14:27.77046+00			0	0	t	f	Vijay	\N
1850	pbkdf2_sha256$216000$0bKqwXk0X7Wk$+CiGWDi0T6DcmnjEjfeiyXbIDC6/nrA6nLmC6dbOKvI=	\N	f	e06ab06b-eed3-4ef2-861a-643f525987ab	Major			f	t	2021-09-27 13:14:33.495607+00			0	0	t	f	Major	\N
1851	pbkdf2_sha256$216000$TFCPEUAaKgdW$36J6NdcG+qt5s766FjO/woSu4Lc2B2L2b8jV4GV7MF0=	\N	f	bbfcbb6d-8860-4dcb-96ba-1eabc9b29e25	Mara			f	t	2021-09-27 13:14:33.755318+00			0	0	t	f	Mara	\N
1852	pbkdf2_sha256$216000$38LQjBc1ztrZ$XlqGnm0jGN5Z28KTiM2MFdmKYcLl4X9qEGn2Xgaq784=	\N	f	01689a43-7ce4-4442-aed0-7ccc7843c249	Ruby			f	t	2021-09-27 13:14:39.200366+00			0	0	t	f	Ruby	\N
1853	pbkdf2_sha256$216000$Jb8DvX1VXETB$rknjYXLGXlo244l2O8rRzc2pvWbQqJx46uSwKI/BvoE=	\N	f	37b939f9-0d71-4301-b765-cf6b05edf6d8	Master			f	t	2021-09-27 13:14:39.480796+00			0	0	t	f	Master	\N
1854	pbkdf2_sha256$216000$OIVEjUR1buKo$JZOO19+h+bMd1V8QAEI3SFcpmYFdE+Yr9cG3oxy7sWg=	\N	f	f04c2607-ce20-4dd4-92bf-1fa1841ff738	Poker Raja			f	t	2021-09-27 13:14:45.214913+00			0	0	t	f	Poker Raja	\N
1855	pbkdf2_sha256$216000$ND11OF0BJZbK$Mg+JTdiKJx5mapHaHnO/ZoNU2CiL3rrFisgB6U4Wfgo=	\N	f	014fe9f1-6a7d-4c95-834c-8a77e6bd2bc4	Winner			f	t	2021-09-27 13:14:45.465004+00			0	0	t	f	Winner	\N
1856	pbkdf2_sha256$216000$j2XBx1U4kjPj$49OV6ArWONhYRJ9Sptf35axjhw7HtThUfya5D4bU6/4=	\N	f	70978228-01ae-4ad4-ac65-766d8e52501c	Avenger			f	t	2021-09-27 13:14:50.894808+00			0	0	t	f	Avenger	\N
1857	pbkdf2_sha256$216000$OYzzZAF7h5k3$+XmLyUq2z7gjfR0Gwfz4UPs1qLu/qFm4Im58D8/UaIg=	\N	f	d680c5c7-239a-443e-89cc-d3431420dfa9	Roja			f	t	2021-09-27 13:14:51.164524+00			0	0	t	f	Roja	\N
1858	pbkdf2_sha256$216000$xV4RX3quFB2W$hNRg6nQTPSXaWShvuLJOHGT6oGdaVCjiiZOwia9wW/E=	\N	f	3b6a381d-b5ce-4e98-91a5-8f6f6f46b699	Vijay			f	t	2021-09-27 13:14:56.886302+00			0	0	t	f	Vijay	\N
1859	pbkdf2_sha256$216000$LofHY34qOCVg$Cni3JHS9DMaR6+P/5DLBy43ivFC6koZG6hDLkYArBiM=	\N	f	f127055e-644a-4f9b-b4ae-6176ccbb3cbf	Loser			f	t	2021-09-27 13:14:57.151459+00			0	0	t	f	Loser	\N
1860	pbkdf2_sha256$216000$KWRfKFSGVOjf$rV9kBJyAJGk+JvgigIYvX+AXjzuDGXM5Aa37cO43JH8=	\N	f	0086ca23-595c-4ca5-aa2b-2413a4a597b4	Winner			f	t	2021-09-27 13:15:02.521229+00			0	0	t	f	Winner	\N
1861	pbkdf2_sha256$216000$55gIq3xwDzmQ$6nVxwImLd4Dpon1Lx6ItZOIjmIrEgnBkeISTfZkXKI4=	\N	f	5e7493f0-0fc9-4905-9511-5b14b88a19da	Winner			f	t	2021-09-27 13:15:02.801258+00			0	0	t	f	Winner	\N
1862	pbkdf2_sha256$216000$jXq2gCCl6t1B$rmsMQeILb8vFQ4pyVUZVvQoFqlXsfjySqdAtGTVo1hw=	\N	f	0f7ad63b-1dad-4bbc-a162-fb38c1eeaf9e	Krishna			f	t	2021-09-27 13:15:08.545401+00			0	0	t	f	Krishna	\N
1863	pbkdf2_sha256$216000$LmauyrdNucKI$cY9WfeM+gJPULauizpmwOvCu9tojXNt9e8GkPAH5Cng=	\N	f	6c293eab-f9a7-4771-a2c7-3f0d15ee4cb2	Roja			f	t	2021-09-27 13:15:08.810025+00			0	0	t	f	Roja	\N
1864	pbkdf2_sha256$216000$SsqUbakErRC2$B9YSjMVacMSZTxg6pG6Nxl7ZayRM6hQgi+Lwb0AfBzo=	\N	f	71e0bb7d-3651-4193-8be9-6d9a94d6fb0b	Hero			f	t	2021-09-27 13:15:14.434859+00			0	0	t	f	Hero	\N
1865	pbkdf2_sha256$216000$WY79O1xk5zx5$uRDpF4oRysYGPFjkJPj6wsy5pdD9ohJJB9mKUcAfVoc=	\N	f	de523605-1185-4f1e-80c2-edc5b7262ba8	Shahrukh			f	t	2021-09-27 13:15:14.684972+00			0	0	t	f	Shahrukh	\N
1866	pbkdf2_sha256$216000$XPKoPsQ0AbZ5$8F/VyojIPQZLhTuegHzJzqRMFqNwnM0XXIis3C9ZTBM=	\N	f	cb8482a4-4f25-4d38-aec7-05613243cdfd	Major			f	t	2021-09-27 13:15:20.59098+00			0	0	t	f	Major	\N
1867	pbkdf2_sha256$216000$4k9SB5sYKMu5$hLB5rLpmdheWB0ortD1yicQhk5PbDDdLKVL1nG4uvg8=	\N	f	db42195f-4b3e-4771-bf32-29d41d4c032f	Major			f	t	2021-09-27 13:15:20.861538+00			0	0	t	f	Major	\N
1868	pbkdf2_sha256$216000$y4vylB4gl5xn$U2KpIjhn1R8F01uA37i0zKZp1wr3nEkMTWSPJB1/mQA=	\N	f	c327742c-8424-49ad-a37d-e0b33efa255d	Number 1			f	t	2021-09-27 13:15:26.284993+00			0	0	t	f	Number 1	\N
1869	pbkdf2_sha256$216000$0CBiFo4zWilY$wdDTiE3U+u+7FhwxkJVWYg1dCISqNYNeXOaTACv4f10=	\N	f	f5bc976a-e2da-49b7-8f04-0ddc2964774b	Shahrukh			f	t	2021-09-27 13:15:26.534842+00			0	0	t	f	Shahrukh	\N
1870	pbkdf2_sha256$216000$Y9BxLgEjMMV0$jVfMGsVSJAMmLG5rc9e5NoqqzdNtobhewOl0mWnxeO8=	\N	f	70add536-aaf4-475a-b3a3-1390429b57dc	Hero			f	t	2021-09-27 13:15:32.481071+00			0	0	t	f	Hero	\N
1871	pbkdf2_sha256$216000$aZ6PCRTTbAj8$iovhanu45hr4WC5V31U1p+TE/EaBo10ro98X1/0Z988=	\N	f	e121b202-1694-49b1-a58a-54829e3fa1c7	Ruby			f	t	2021-09-27 13:15:32.78567+00			0	0	t	f	Ruby	\N
1872	pbkdf2_sha256$216000$R1rMfYbCDpcj$4DTZhJLuFbuUqy8waNWoU7AFiS84AVhggvgx+AE2WII=	\N	f	8e9be0e9-f321-4fee-b145-c5c3c8501d1a	Major			f	t	2021-09-27 13:15:38.191058+00			0	0	t	f	Major	\N
1873	pbkdf2_sha256$216000$cVAn3duFueK7$/jCgtVeNUSRre6BFMS7kt5qm7N1h2yQPcK0o0eDrFlE=	\N	f	384b7894-3ec4-4414-bdb6-a51af313fcc9	Avenger			f	t	2021-09-27 13:15:38.451311+00			0	0	t	f	Avenger	\N
1874	pbkdf2_sha256$216000$Za0hF8iMmGFp$dVbuku95M+L18l1LMCTHTMOGFvHoNNFpNtmpCapQ+AA=	\N	f	c85729e2-6219-4b04-a02d-fadad28e80ae	Krishna			f	t	2021-09-27 13:15:44.285293+00			0	0	t	f	Krishna	\N
1875	pbkdf2_sha256$216000$kfzpKeBe7jDQ$taG+S7qIwAXdWI0YwPzqJh+BqxK0osTetzV7llBdhaI=	\N	f	2862ffe7-557c-4c58-85ee-6f04cc38c573	Master			f	t	2021-09-27 13:15:44.53534+00			0	0	t	f	Master	\N
1876	pbkdf2_sha256$216000$NBE1pmzuokvs$119S9aO2DQJXCzi1ORN6lCudDJhpH041d+55RC52CZo=	\N	f	80fd154c-3bbb-4de4-8884-24f10704a455	Loser			f	t	2021-09-27 13:15:49.975811+00			0	0	t	f	Loser	\N
1877	pbkdf2_sha256$216000$efDwx24aU939$d+3Sh8Ed6bv43aHOb+Cs/k4+6xhZwH/2lfwq+biiz8E=	\N	f	97a042a1-870a-4072-9d5f-11684b6bdccc	Avenger			f	t	2021-09-27 13:15:50.205672+00			0	0	t	f	Avenger	\N
1878	pbkdf2_sha256$216000$MpLSlOCEKJJT$2PEuJQHAr85U3vgfoA43xeuqfesb6A+O8hcR5DY2v1g=	\N	f	f9f23341-b17c-4802-a59c-4943a45712a0	Raju			f	t	2021-09-27 13:15:55.99083+00			0	0	t	f	Raju	\N
1879	pbkdf2_sha256$216000$yW9mVIsirynI$oJ/OBKhVa/pOsaqm1XlQTZ5vMHpfv/r7t16R+N5kil8=	\N	f	f61d79e7-c9e0-4b6d-ba16-d6c8bc085b4f	Diamond			f	t	2021-09-27 13:15:56.25126+00			0	0	t	f	Diamond	\N
1880	pbkdf2_sha256$216000$vj2ezHWow5al$GgZHnol73WGXoKX+cCRyCm71cMr0sCKvqXis5OxvJYM=	\N	f	b228b459-d26e-4928-b9c8-d93ff678f8aa	Major			f	t	2021-09-27 13:16:01.845374+00			0	0	t	f	Major	\N
1881	pbkdf2_sha256$216000$rTZuDFCTx9Rn$SRvQ0MLGWDQoAP/iTvqTEt78Ykj93cwqNevSJPBugm0=	\N	f	a5ece780-77de-4224-bd99-f858a20cafa5	Ruby			f	t	2021-09-27 13:16:02.100232+00			0	0	t	f	Ruby	\N
1882	pbkdf2_sha256$216000$0knb48pnMGWG$yztVXCkR/jTG5m5A6fZRrTFp0guVCw9Pt5jyBsQkKwg=	\N	f	c9b37452-4433-4fe6-abec-147ff5210f73	Shahrukh			f	t	2021-09-27 13:16:07.85539+00			0	0	t	f	Shahrukh	\N
1883	pbkdf2_sha256$216000$oXA0s7sUF1uq$x45FXA3/V9mWIAJntxoMelvDWn5Ba5cGb9reTZjlEc8=	\N	f	26ad2456-3e17-4686-b153-9eed13021b24	Winner			f	t	2021-09-27 13:16:08.125428+00			0	0	t	f	Winner	\N
1884	pbkdf2_sha256$216000$vA6zb84xxzVh$BudCgVjEGqD8kCwFReb4Us6unBFwvsKDBIR66A8wCEc=	\N	f	1292c069-b649-4e5b-accb-00c33fbf2460	Mara			f	t	2021-09-27 13:16:13.511594+00			0	0	t	f	Mara	\N
1885	pbkdf2_sha256$216000$DK3OoClpPLxv$6h114LkgPUuzmPDCfou0Gtj1NkqmsVbKhIepNLRxZnU=	\N	f	fccd5e03-031b-424a-b3e0-ae87e10b6565	Master			f	t	2021-09-27 13:16:13.791258+00			0	0	t	f	Master	\N
1886	pbkdf2_sha256$216000$k19aRvbT9dko$G4BA7kQPTadlObhyK0Mblqa2SmNd9+/ZzMc6mYiZ3a8=	\N	f	bba75003-c350-48d2-8aaa-6f52998a4fc6	Avenger			f	t	2021-09-27 13:16:19.681273+00			0	0	t	f	Avenger	\N
1887	pbkdf2_sha256$216000$2z9j5egpKGny$3NlHwhxpLgmL3PaX2OzdWlVlpH3J/AKo1ukElrm3zAo=	\N	f	d7740e92-1d7a-4735-91bd-d2cc2aed0708	John			f	t	2021-09-27 13:16:19.951819+00			0	0	t	f	John	\N
1888	pbkdf2_sha256$216000$2NqvCdyqd6zO$5UEUtl7ARmtzHZ1Ls0vhAfwgmDho49mLtHL/I7WXZQw=	\N	f	bb0f1a00-5eda-4748-a3c2-aeb21f5470b0	Mara			f	t	2021-09-27 13:16:25.685495+00			0	0	t	f	Mara	\N
1889	pbkdf2_sha256$216000$cNq8En1EDwI9$Cikac/vnaNLFbR67F9ukx86stqGo6BQ8fdmazQS7dfc=	\N	f	25ff8b0b-808d-406e-8813-b7a69035686d	Rani			f	t	2021-09-27 13:16:25.93549+00			0	0	t	f	Rani	\N
1890	pbkdf2_sha256$216000$jL5uxf4uhUen$bn3NAnpVft2FuAIXDBeYntMqFsg6xDRhH3923mMDcSk=	\N	f	5c0fc32b-7c0e-4934-ba47-8604195dcac8	Shivaraj			f	t	2021-09-27 13:16:31.901566+00			0	0	t	f	Shivaraj	\N
1891	pbkdf2_sha256$216000$31NWeilEMfvs$S90tOThIT1/IbVfpoMoOVqvuFiL+y9MTYFDjWR1mJPI=	\N	f	1b5f0fff-d87a-41c6-8f51-cde74b569817	Hero			f	t	2021-09-27 13:16:32.191246+00			0	0	t	f	Hero	\N
1892	pbkdf2_sha256$216000$U4ib9YaIibgS$Qvjqg9rzISc0De9zXl1vKASjPpb8cOBJUxjDd9SNpc0=	\N	f	742fd147-50a9-4892-83bf-0e8c4b583e81	Gambler			f	t	2021-09-27 13:16:37.615074+00			0	0	t	f	Gambler	\N
1893	pbkdf2_sha256$216000$mB8wNwePx1LQ$CddBJAebvRe1+B+IYRB7C438AJ189nQ3T2S3RZQO5SQ=	\N	f	82210628-2e82-41d1-86ed-0cf27356097f	Loser			f	t	2021-09-27 13:16:37.875538+00			0	0	t	f	Loser	\N
1894	pbkdf2_sha256$216000$xLD5glLPFOaf$N93wK8ZnUwFACBrkJ+gx09hwU1xe38OT2nmZ8mQ5sh8=	\N	f	25f35ef4-caae-47a0-9a53-05f21111faf0	Raju			f	t	2021-09-27 13:16:43.591273+00			0	0	t	f	Raju	\N
1895	pbkdf2_sha256$216000$LTBktxUYT60N$j0iVjpj8uDHCR8jZrsk5sAHmXdNnwZyqbFZu/UqOxww=	\N	f	9b80bdde-2afc-45ff-9f42-edf440f2f6e8	Akshay			f	t	2021-09-27 13:16:43.851171+00			0	0	t	f	Akshay	\N
1896	pbkdf2_sha256$216000$ZFXEg7svM7cM$tEFf5c4CmxeT/DNQJyg9FviU9KzDuaSUDMi9AU+vaFg=	\N	f	7855ec78-a3f6-40ff-b686-47d25e59a96e	Krishna			f	t	2021-09-27 13:16:49.355831+00			0	0	t	f	Krishna	\N
1897	pbkdf2_sha256$216000$HXP4PnazC5dx$rP+PPbICak3pHrx6+b4Z24VQ8fjiBuB0WouaCYGvBEg=	\N	f	307e6592-39d2-4943-8f10-8b9e20993c3d	Raju			f	t	2021-09-27 13:16:49.605653+00			0	0	t	f	Raju	\N
1898	pbkdf2_sha256$216000$8frxWLRnjgzY$Zoez452CZSf4EmHznVVvqqchYMRShKRk7xYj3KDjmFI=	\N	f	873ad9ad-fa43-4116-ae43-60b365437c3a	Krishna			f	t	2021-09-27 13:16:55.321073+00			0	0	t	f	Krishna	\N
1899	pbkdf2_sha256$216000$scINzOWy1BOd$BuimXMuQQ//fzpXDP1gbxcMSYDaWiMw8aiKQw5/31to=	\N	f	9c278d44-82a6-447d-9308-f55e0c1d6432	Sheetal			f	t	2021-09-27 13:16:55.581177+00			0	0	t	f	Sheetal	\N
1900	pbkdf2_sha256$216000$VZv6pcX288Oh$1hXbNc0yUjnYwutLkQnhwaOYrOMadoIb23upGuHGXnA=	\N	f	d8185197-516c-42e3-a365-5da827ece26f	Roja			f	t	2021-09-27 13:17:00.915859+00			0	0	t	f	Roja	\N
1901	pbkdf2_sha256$216000$1NertTyw8Adf$KWEaqAzO2GWsFiLg7eqjKJih+YRt+rSa8JQs49dxReA=	\N	f	44764b16-7b8a-4892-9a32-ddbe5ea41888	Poker Raja			f	t	2021-09-27 13:17:01.17607+00			0	0	t	f	Poker Raja	\N
1902	pbkdf2_sha256$216000$OYXqTPdPgk6N$284K7MGtfrbNTsej1EPtmb/xDAvu/gM2ZS5Z9Vf2x3s=	\N	f	4fb1d3e7-45b2-4d75-bde2-c265a91cdc55	Mara			f	t	2021-09-27 13:17:07.055772+00			0	0	t	f	Mara	\N
1903	pbkdf2_sha256$216000$XRgFH6BvbbH1$wz437oSCseD07cRYwiLE7TRVV1gbzNUN7wKPnB6SO+g=	\N	f	f298ea45-407c-46a2-a407-41fc49ee887d	Shivaraj			f	t	2021-09-27 13:17:07.355706+00			0	0	t	f	Shivaraj	\N
1904	pbkdf2_sha256$216000$iNLsjhU7sJfg$0kYI3V3GnrN6Mgko2QcAw0jSiEjgJX7LqEgyERMlOms=	\N	f	850601e5-5889-4505-989c-6b299989b82f	Hero			f	t	2021-09-27 13:17:12.8215+00			0	0	t	f	Hero	\N
1905	pbkdf2_sha256$216000$8kpaYivyuVi7$r7xL6/yaVmvmchaEpHkrkSZ/t+SCo41eY/QfVDGkMKc=	\N	f	f4b3965a-9163-413e-94ca-b4789ba133b4	Avenger			f	t	2021-09-27 13:17:13.091127+00			0	0	t	f	Avenger	\N
1906	pbkdf2_sha256$216000$KqgWUqyeXQo0$tfOK+WTzQNGp+nWqwlViREC9fh9h4yUJ4W6Lxd8BGSs=	\N	f	84193e76-b870-4e28-a336-04fd86caaa53	Loser			f	t	2021-09-27 13:17:19.130975+00			0	0	t	f	Loser	\N
1907	pbkdf2_sha256$216000$1qJkvtHZMBaO$QSdezmtML97ck5Mehe7z6g3fBDODxmdHbxaaB7y6a4A=	\N	f	ec3b164c-e8ec-4874-b02c-332854d7f273	Gambler			f	t	2021-09-27 13:17:19.411243+00			0	0	t	f	Gambler	\N
1908	pbkdf2_sha256$216000$dvwCK1HjVz7C$4VI5X41/wTLRpdbXi88PWjfkLi8MhujFvkoYtDvaoU0=	\N	f	6f5af36b-9f7c-4f82-be8e-1409105a709d	John			f	t	2021-09-27 13:17:24.825581+00			0	0	t	f	John	\N
1909	pbkdf2_sha256$216000$bBNaX3YYcJ69$4JPH6ocBikGf/i61dUeM0IlJhsvY4Q2ZwGkN72/Pml0=	\N	f	580d0dfb-6063-469a-9705-d96bb50b6876	Krishna			f	t	2021-09-27 13:17:25.100719+00			0	0	t	f	Krishna	\N
1910	pbkdf2_sha256$216000$XCLNA24MAzeW$Y7YHgMMHoTdly5jwv/B5fK5fVtNqcHYqAKxa2vza5lU=	\N	f	1ece2783-ff49-4595-957a-2b0ed9096173	Shivaraj			f	t	2021-09-27 13:17:30.871479+00			0	0	t	f	Shivaraj	\N
1911	pbkdf2_sha256$216000$7NpZfjhYH2h1$my9TTBA/C9ETXV8rms3mlDEHlN03Zh8jWKPtT/yhjbA=	\N	f	c3f638ab-cb0d-4546-b1cd-6c99d4202e57	Sheetal			f	t	2021-09-27 13:17:31.14125+00			0	0	t	f	Sheetal	\N
1912	pbkdf2_sha256$216000$8xX3mUNOz0wu$pRR5MPacTTg79Kr4O4M8yI49HspHvg5MH9DvaMWSXRU=	\N	f	5ec3ea00-e899-450d-8498-768dd51ba248	Krishna			f	t	2021-09-27 13:17:36.530409+00			0	0	t	f	Krishna	\N
1913	pbkdf2_sha256$216000$K7gAwpEE0su7$BI1FPjJzZ2qdfZJKqSER2ykJ+Bv4RspG38V8gJWPO+o=	\N	f	e3786281-75d8-4126-aa11-18678d766478	Poker Raja			f	t	2021-09-27 13:17:36.765728+00			0	0	t	f	Poker Raja	\N
1914	pbkdf2_sha256$216000$PuIGbspQgLiN$A1pBlH/yqI3zHkrRoJHcAmmGveKK9cA/22wZotlhpsQ=	\N	f	04aa5dba-a88f-4cb3-8a01-28eb06b13701	Number 1			f	t	2021-09-27 13:17:42.591839+00			0	0	t	f	Number 1	\N
1915	pbkdf2_sha256$216000$ch0q7ZeXfjIJ$M60bXJUzd01DKgMcUcH6BmDMW0+uonLipoCjQXLpbDA=	\N	f	1e40c487-e45b-4b7c-9baf-2b05c96c99a1	Krishna			f	t	2021-09-27 13:17:42.861948+00			0	0	t	f	Krishna	\N
1916	pbkdf2_sha256$216000$FVrxtTiP3gFR$nn+RW9uVk/6DtTThYQjWKwT4qdvhPZEEyua4D+ra57Q=	\N	f	8ee33bf6-b9ed-4a4c-806d-644bd9df461e	Raju			f	t	2021-09-27 13:17:48.255828+00			0	0	t	f	Raju	\N
1917	pbkdf2_sha256$216000$frXqfWX4bvHx$Fca/x8nNK/O3GLEZxXVD9SMHRL4S/gXKi1KtAHWeg60=	\N	f	86069cba-c6d2-4b39-93fa-d7c55e014354	Rani			f	t	2021-09-27 13:17:48.510872+00			0	0	t	f	Rani	\N
1918	pbkdf2_sha256$216000$Cyt93rem3jUZ$dIZ0zO3XbWjPt1nG3BrebznfE4Wx1q+hSq8BZGzXqKU=	\N	f	d7fcbda0-b4a8-4f49-be14-05125619d217	Number 1			f	t	2021-09-27 13:17:54.381431+00			0	0	t	f	Number 1	\N
1919	pbkdf2_sha256$216000$pXdVzI4QFy3Z$iiMUYJqluSYulaFjf4qV4cPYAgy5dxloIaqWTotOWjE=	\N	f	ab1d1507-5516-4559-a022-bd7b763b7930	Diamond			f	t	2021-09-27 13:17:54.651149+00			0	0	t	f	Diamond	\N
1920	pbkdf2_sha256$216000$ZGbxbvTQEPRm$JhON8do2T31mmcxtDxL3M9ZS/xMSApaedZJsVKtP5JI=	\N	f	1eb6039c-b5c4-4297-b490-8fc3a9c95386	Shahrukh			f	t	2021-09-27 13:18:00.111283+00			0	0	t	f	Shahrukh	\N
1921	pbkdf2_sha256$216000$j446vRrRMdXl$7J1osmoEiupkFQ4+K0fRFuCUcU32uDwPzE5m0194rnw=	\N	f	7d0ba453-c40d-449d-83ee-069729b388a8	Akshay			f	t	2021-09-27 13:18:00.381571+00			0	0	t	f	Akshay	\N
1922	pbkdf2_sha256$216000$JcGs0KJ3T1SX$mCUlleE9HNAM9v/Y+j/U6JWmK8MPRcFqWRVF6ocm5vA=	\N	f	6930acf6-ae64-4978-8a73-690d0a4ca354	John			f	t	2021-09-27 13:18:06.34589+00			0	0	t	f	John	\N
1923	pbkdf2_sha256$216000$oDg8CF2MzsDV$7DrlEh6bWc5jmMC6dProzw5sTPF3SAPApF2k9zgSxbE=	\N	f	899bb925-f254-4616-baae-e6ee445b56cb	Avenger			f	t	2021-09-27 13:18:06.615777+00			0	0	t	f	Avenger	\N
1924	pbkdf2_sha256$216000$IoKSsquZf1K6$E/2bVUIPnbOLeyk+weZVOMUMpqKTkxF3n6D3xYkJsXc=	\N	f	8d147975-ae93-4cad-a051-e50ca9a648f0	John			f	t	2021-09-27 13:18:12.061338+00			0	0	t	f	John	\N
1925	pbkdf2_sha256$216000$wmrRNCVMoncw$UAJSB0D4iZZ5pGjk8j7tVAGb5yBZd8D7GBTvZkxq40c=	\N	f	b88101e2-2b92-439c-b47d-baa1f1ce3bfd	Raju			f	t	2021-09-27 13:18:12.331157+00			0	0	t	f	Raju	\N
1926	pbkdf2_sha256$216000$PwjJ4xNokrYX$xz3/yd7DvNBeAK8KKu0dwhY7iMitaiMcM5tehCiiHpE=	\N	f	2f36cb46-de1f-4530-ae5e-54d78f7e3bd3	Diamond			f	t	2021-09-27 13:18:18.424767+00			0	0	t	f	Diamond	\N
1927	pbkdf2_sha256$216000$ucvWKoePsrcp$bxFR7p6m2t/vEF94SV28czRtG+7hOFWm5HosGJaTrKk=	\N	f	9aee6b59-0f21-48b6-8165-4a08972c0fec	Shivaraj			f	t	2021-09-27 13:18:18.735032+00			0	0	t	f	Shivaraj	\N
1928	pbkdf2_sha256$216000$M1InxIuwSyIo$ORxgc+kT301M0zzlPSTMIn4aQvpNKYHvRDZx6IjiMYg=	\N	f	7ef6db33-19c7-4245-86da-432c77140927	John			f	t	2021-09-27 13:18:24.625406+00			0	0	t	f	John	\N
1929	pbkdf2_sha256$216000$FQOYKkMMdh8t$CqJXbMrQUW9FjKmWJ2MIfFn98Wh5BpOROCLSNLklT8g=	\N	f	141c2580-5066-4e60-bd19-7e520753af3a	Shahrukh			f	t	2021-09-27 13:18:24.875284+00			0	0	t	f	Shahrukh	\N
1930	pbkdf2_sha256$216000$hdu0ujcfmlHq$Q7hWdIKdLhh3/foEgcJrOOtF1IJxolzzX5mdcZpj2Ek=	\N	f	bb13abf3-d481-40f6-91ca-2d52923cbfdc	Hero			f	t	2021-09-27 13:18:30.70172+00			0	0	t	f	Hero	\N
1931	pbkdf2_sha256$216000$8PmgkPDCxyAp$5BW71AdKeo6xoNjKudPEblKUEkJNJ9+V/r3POWh2QNU=	\N	f	5b1a1ab7-46f4-4752-8f05-94561a70646a	Major			f	t	2021-09-27 13:18:30.951437+00			0	0	t	f	Major	\N
1932	pbkdf2_sha256$216000$iXGKawR0yIVi$R4WvMI731lUQbOIBXDyNfSOsrRRi+d7UahTb7ex2x8k=	\N	f	9649d0d5-6c0d-4e6b-ad5f-ec933364135e	Vijay			f	t	2021-09-27 13:18:36.426058+00			0	0	t	f	Vijay	\N
1933	pbkdf2_sha256$216000$cvBESCMzLYfg$9QzlUZlRzQwbF0PmYppq6AAb6zm7ADj96Kb0zADlpOs=	\N	f	a16c789e-f405-43d1-a19a-af3d41d9c65e	Roja			f	t	2021-09-27 13:18:36.665899+00			0	0	t	f	Roja	\N
1934	pbkdf2_sha256$216000$MCs1qqF8VL2l$JvBsqMLcmocoU0hXKuMttUSFVLvxoZJdVWeSogklXps=	\N	f	66ddbc60-450f-4191-aa6d-9b44fb54ce97	John			f	t	2021-09-27 13:18:42.841511+00			0	0	t	f	John	\N
1935	pbkdf2_sha256$216000$lH9f9ELb2oYH$iwz3ZSzlmHVzC6Jw4HL2U7R3hKmqYlE0Y69vrkSSVXg=	\N	f	94a60535-adc2-40d6-933c-e0d4def43dcb	Gambler			f	t	2021-09-27 13:18:43.111818+00			0	0	t	f	Gambler	\N
1936	pbkdf2_sha256$216000$eE3rSY8ORHIt$FELHQVyqA/pVkOHagCNIgtahECpnbXBraIA7EAXYuwQ=	\N	f	aec3e19f-e7f5-430f-88f9-69f84e7fe220	Akshay			f	t	2021-09-27 13:18:48.460806+00			0	0	t	f	Akshay	\N
1937	pbkdf2_sha256$216000$Zbu3qojRDm2p$+dTO6oYeNZbiFEFTs5DBsYNzpkTh9MeRkM3l6t/PqkA=	\N	f	8ef0d97f-10c5-488b-bc6a-1ea346a70fb8	Rani			f	t	2021-09-27 13:18:48.74063+00			0	0	t	f	Rani	\N
1938	pbkdf2_sha256$216000$y6QYQSx5qVEb$swHjD+e/A21AKTZiJ5w8JpgwaMYsfxIk8oYQTbXrUmo=	\N	f	d881b099-566d-4326-a156-9b077e7f30f3	Raju			f	t	2021-09-27 13:18:54.446045+00			0	0	t	f	Raju	\N
1939	pbkdf2_sha256$216000$9MVw09bOT7bh$xnokcMl3AE/xSLwP2rLphk+pg2yQNGORxy2q0/DtFJg=	\N	f	cfe90c4d-bb40-453e-abaf-61549c015af1	Krishna			f	t	2021-09-27 13:18:54.695567+00			0	0	t	f	Krishna	\N
1940	pbkdf2_sha256$216000$FscHJ7841O24$LSP/Ted9R9Z79arFk+QV1sJMjGtlmvH+yecu0iR48u8=	\N	f	8fddd550-8815-452f-92a2-444ae632f836	Ruby			f	t	2021-09-27 13:19:00.115929+00			0	0	t	f	Ruby	\N
1941	pbkdf2_sha256$216000$dvDodR9Ljboa$K/J/isYo2WE54duYyE4WymKi6pPkLCCaQoi28l3uGf4=	\N	f	47b03185-4435-4597-be68-6484ce26f8ef	Vijay			f	t	2021-09-27 13:19:00.366224+00			0	0	t	f	Vijay	\N
1942	pbkdf2_sha256$216000$4XCDGhIl4YDl$2YUgjW/a2/Wq5IVE2q6xxCbf0Wfub9jFZPtAsWkJggU=	\N	f	2ff83ecd-ff28-4f11-8277-73c037f28b38	Gambler			f	t	2021-09-27 13:19:06.021885+00			0	0	t	f	Gambler	\N
1943	pbkdf2_sha256$216000$RqiPhiqtNuMR$FikNXVuGrJoZDqJTxt6j0HT+AtpyO7TrcQp5uFZV32g=	\N	f	d9994db7-3979-4f96-bb67-beb7d61c89f8	Vijay			f	t	2021-09-27 13:19:06.291869+00			0	0	t	f	Vijay	\N
1944	pbkdf2_sha256$216000$RsPr7lRJanFL$JusFOlUxQnW8V+DmB5U5lJ4J2LMIE+lzy6y8JIMaoxI=	\N	f	510662b7-caf9-407c-997a-356be3832227	Raju			f	t	2021-09-27 13:19:11.731397+00			0	0	t	f	Raju	\N
1945	pbkdf2_sha256$216000$KpK3J9j5w8tt$oMqCHGIqrXlz6PkTNzn4Bn9owhj0xhIiVAcxFVnYb9g=	\N	f	6d2553f2-135e-42f7-8dc1-6c328a2d33f0	Roja			f	t	2021-09-27 13:19:12.001499+00			0	0	t	f	Roja	\N
1946	pbkdf2_sha256$216000$4lCFtnAYSBHf$lx5W6Kv5kTPm976wj/H2HalKA65NfS3yb10euHm9gB4=	\N	f	abc15534-8d23-404c-83c2-7008b3464f15	Poker Raja			f	t	2021-09-27 13:19:17.651867+00			0	0	t	f	Poker Raja	\N
1947	pbkdf2_sha256$216000$CcFjITpfniUw$6CPW66aNB1jTVwRwHLY/DJhd+FxvL7fl8P5S+FNsEAo=	\N	f	3d8b12d6-0d3d-4982-a775-9ae7d651a832	Gambler			f	t	2021-09-27 13:19:17.931536+00			0	0	t	f	Gambler	\N
1948	pbkdf2_sha256$216000$Tu8ecf2icu1A$UfPgE6FkzxTCpM4BhKqoBBSujP3mKdcWfT9lVMw73Zk=	\N	f	9857db78-8f3b-4f24-af9b-accae874d036	Master			f	t	2021-09-27 13:19:23.480718+00			0	0	t	f	Master	\N
1949	pbkdf2_sha256$216000$jPOyD3YcaVuu$QfCUZ59K7YkfBIL33h0QQ/EvueUYUFVI7V5yUw8jNW4=	\N	f	e65ac4b9-6a7d-4716-bdc9-bea16592b5ae	Avenger			f	t	2021-09-27 13:19:23.772118+00			0	0	t	f	Avenger	\N
1950	pbkdf2_sha256$216000$FwrpGOvJmsl7$x7P4/ZBKSxb6CBEGcoaY9sFoJ4Zv2rxYe0hd5aNChLc=	\N	f	08ea2f44-43b7-46d8-9c99-ff39598a6aee	Master			f	t	2021-09-27 13:19:29.505315+00			0	0	t	f	Master	\N
1951	pbkdf2_sha256$216000$AoUFM7KuWZnJ$frL/ifQlLwCu3VRE6NVdZKlYyjGS7YJydHJrPyrK9cI=	\N	f	f1e0e733-41d4-4e66-b2b0-fa995726418f	Master			f	t	2021-09-27 13:19:29.745209+00			0	0	t	f	Master	\N
1952	pbkdf2_sha256$216000$XP7dTkjrZXLD$yIm8T/TbQZn1BqvMJ51yK7CxES9wX1CCcxf8NmEVNB8=	\N	f	4d92b86f-08f6-4294-8085-6e6c245f8ccd	Sheetal			f	t	2021-09-27 13:19:35.115645+00			0	0	t	f	Sheetal	\N
1953	pbkdf2_sha256$216000$5y5XsDycvJ4W$FDASgqpxwOQSCmzjLroOte1ea6mnAGl74ksU5Z9xzIc=	\N	f	9a554fff-9fbe-43a1-9a27-5b8f2c73be31	Loser			f	t	2021-09-27 13:19:35.375792+00			0	0	t	f	Loser	\N
1954	pbkdf2_sha256$216000$jUJzqd9hBVgY$x/F0Glw0KYlqUZWT8CkfYHqqE/ROVIU9YisbpZiZWDs=	\N	f	75eedbcb-8154-4677-b377-79bc3419f9b8	Raju			f	t	2021-09-27 13:19:41.025902+00			0	0	t	f	Raju	\N
1955	pbkdf2_sha256$216000$7Ts3bR1ylw7E$HGIIru8vdpMwh3TYPltTTbKkS3MizgbG5rP+Sef7rCk=	\N	f	a94a3f9e-8b4c-4e32-85b9-709bffdc6a91	Loser			f	t	2021-09-27 13:19:41.271022+00			0	0	t	f	Loser	\N
1956	pbkdf2_sha256$216000$ChVHDAaBUOw0$9j0PL+/0nBoUU9DkdfCXGXIzWGVauxs/NiitM8pFxiU=	\N	f	9d32089e-78ac-40d5-bea6-f5a8c8d0530b	Roja			f	t	2021-09-27 13:19:46.72566+00			0	0	t	f	Roja	\N
1957	pbkdf2_sha256$216000$gRm2X5k5YTl9$Sm0ckTSaHS5QQELI2vddi/JfLeQ1JbOc7hlY+GRSz4A=	\N	f	bc14abb1-c8cb-4a11-8aa9-caf01d5315a2	Mara			f	t	2021-09-27 13:19:46.975847+00			0	0	t	f	Mara	\N
1958	pbkdf2_sha256$216000$lU5XolrxFiMU$/1opGj1ZPP2OhqXlkS2Qqae2+/G8mMGMBuZANSTtWyQ=	\N	f	cbf21f2d-51f1-48a9-bb91-5819794233c5	Major			f	t	2021-09-27 13:19:52.66566+00			0	0	t	f	Major	\N
1959	pbkdf2_sha256$216000$eJHaN8ZPkfTL$4pAZeJUr1rtg2fj+1bx9CQVlFs4szJBWZLDq9IxUGN4=	\N	f	8c938bb7-c28a-448d-8a19-b26ce469acfd	Hero			f	t	2021-09-27 13:19:52.915409+00			0	0	t	f	Hero	\N
1960	pbkdf2_sha256$216000$4W3WGqwrwuwe$TD2YaKrHwJKpdToxjIM2cR84M3zKaEbxsobCLTFM3GY=	\N	f	8f429b9b-e86e-44e6-a6ec-99cad7b62ed4	John			f	t	2021-09-27 13:19:58.300091+00			0	0	t	f	John	\N
1961	pbkdf2_sha256$216000$mVWv3QLMh9gH$BVqnBLH2yy1P2pk565arXZigq44NcTRD0vu1ZrqKT9s=	\N	f	be1dbdb8-38a5-4c5b-ba2a-073c5f8e9003	Major			f	t	2021-09-27 13:19:58.544777+00			0	0	t	f	Major	\N
1962	pbkdf2_sha256$216000$s5KhIDsMLGlA$Q9dl+Pyrx0LoHVUQIgG6zfU+QXpwzgviX9zrq9vqJc8=	\N	f	de3377b0-5a7d-464f-9b95-7e59f0d70d84	Winner			f	t	2021-09-27 13:20:05.035474+00			0	0	t	f	Winner	\N
1963	pbkdf2_sha256$216000$ZSmFbDT1wVt8$ZWg9sE13UsUEhuJ0iJ74ngfGB+06IsI7NQKX2QX49no=	\N	f	06d29b03-eadb-466e-86de-f810456b2879	Loser			f	t	2021-09-27 13:20:05.410837+00			0	0	t	f	Loser	\N
1964	pbkdf2_sha256$216000$jXkBuizDG6QE$WQYfLKtyqJwX9vBAi1+9xFDTNAohrXN7tS+3WJJNv0s=	\N	f	48aaef7a-6403-4744-bab2-8056d203917c	Major			f	t	2021-09-27 13:20:10.705723+00			0	0	t	f	Major	\N
1965	pbkdf2_sha256$216000$ebHxd51Q8UWM$jwHHdYTC7v6xnNC9rv8BSu2D/xj/em/j9tMK1/k1/YI=	\N	f	740df902-477a-4894-b3df-316fa6de00f0	Poker Raja			f	t	2021-09-27 13:20:10.945651+00			0	0	t	f	Poker Raja	\N
1966	pbkdf2_sha256$216000$ccpbjgQ232MA$0Hns69GD97q+/Dw9srsoTen6E+PR4KjHzvKElCU5Quk=	\N	f	7a7a8b0a-db8c-4bb5-8300-ee5e85b762d0	Rani			f	t	2021-09-27 13:20:16.616541+00			0	0	t	f	Rani	\N
1967	pbkdf2_sha256$216000$zjQcE52xP39K$Jh/K9n/ujwTdqaSTANAJIlm9L3CDmShbt59ZZ+jX1O0=	\N	f	d60f1279-12fa-4bf4-aee2-25aedb2ae4a9	Raju			f	t	2021-09-27 13:20:16.855798+00			0	0	t	f	Raju	\N
1968	pbkdf2_sha256$216000$w4f3GAUXlc48$61bFTNvyUzbAEu4EeZRTwwx8Q0eTigLh/ZhOtFoaN0M=	\N	f	7e55d9d0-2277-431a-a509-01a1129bce6d	Rani			f	t	2021-09-27 13:20:22.401025+00			0	0	t	f	Rani	\N
1969	pbkdf2_sha256$216000$gLjoKYCVNha7$K7F4BEjDIsTYeN7cGMRv3M90S2dCs3ehDBSejsF8TeE=	\N	f	7eaa01d0-4882-442a-bcae-4f93b2a2d982	Raju			f	t	2021-09-27 13:20:22.680942+00			0	0	t	f	Raju	\N
1970	pbkdf2_sha256$216000$QQr4bpcZ6xHj$g26rcU3KzK45Blyv7QEmwAeo+UmZSn/dH0q9ySgH2vw=	\N	f	c45a44c0-58db-412a-9071-d1cbda400151	Master			f	t	2021-09-27 13:20:28.31166+00			0	0	t	f	Master	\N
1971	pbkdf2_sha256$216000$l8ubrlLAh7lD$afHnrfYs89bZKpE2thb6lzmnyWz7BwhnW7A9UAgYpHg=	\N	f	ccc9b10c-ede0-4c7a-8e9a-95cb02a1d4d0	Number 1			f	t	2021-09-27 13:20:28.571759+00			0	0	t	f	Number 1	\N
1972	pbkdf2_sha256$216000$kDUu59lIuwvN$5ybRxM+vM2Hy0Egs3jYxB8JNF57syQ5OXy+S9N+D9oA=	\N	f	f13a6ac2-b783-406f-be7b-572e57dc4489	Gambler			f	t	2021-09-27 13:20:34.011226+00			0	0	t	f	Gambler	\N
1973	pbkdf2_sha256$216000$FD1l2SFgD4HH$Hj9iTlzNokNCSM141Jv7Ucp06+fPmh6PTr19OAZplYA=	\N	f	e6e31485-aa07-448b-a85f-5bf80e27fc16	Diamond			f	t	2021-09-27 13:20:34.281034+00			0	0	t	f	Diamond	\N
1974	pbkdf2_sha256$216000$gRaMNUJSwegB$rhJbiIM2jGBdiAXxS/N1PJIuyl3+7d1svsuFmnr0x3U=	\N	f	5ecd899c-fc29-4893-aedc-a24d70792161	Vijay			f	t	2021-09-27 13:20:39.924971+00			0	0	t	f	Vijay	\N
1975	pbkdf2_sha256$216000$2YKrdp6LmDAj$+4/JkS7jz0BesNEpfIIdzvCC+XCDQgGBfzOBmCQ06oU=	\N	f	43a3ef64-a60e-4284-9553-98b85fedf7de	Master			f	t	2021-09-27 13:20:40.175187+00			0	0	t	f	Master	\N
1976	pbkdf2_sha256$216000$HDMAoUzbZW7C$AQypSkU5nBk/YfCqzjJYdH3ZbR+iD4ra/STzt28b/iA=	\N	f	0e441934-0088-404b-a118-ad2ec028d79d	John			f	t	2021-09-27 13:20:45.595825+00			0	0	t	f	John	\N
1977	pbkdf2_sha256$216000$s4dHxdkPCvq0$g56EWFC2BOf7DD065MThQCvkpbz3SZnhhW/TMhwJvcc=	\N	f	fde4fb4f-a207-47ee-9d41-3094dda89e5e	Vijay			f	t	2021-09-27 13:20:45.845718+00			0	0	t	f	Vijay	\N
1978	pbkdf2_sha256$216000$hu1QclKeeZWV$rNjd3cNnQnRjen2fI1YdDx5W5KlhbkWa9NqurBVF/KA=	\N	f	3fc15f90-9ef8-4c44-a722-6d21985736d2	Akshay			f	t	2021-09-27 13:20:51.685927+00			0	0	t	f	Akshay	\N
1979	pbkdf2_sha256$216000$1D5M6122cr01$9fTzjDfg1uphJD8nDAqWaaKR69GVf+u5KkbGqFAnPuA=	\N	f	1a5b9cf0-3408-4588-9bed-93243b38899b	Shahrukh			f	t	2021-09-27 13:20:51.94585+00			0	0	t	f	Shahrukh	\N
1980	pbkdf2_sha256$216000$tOmegIwYwiPE$eLYAgyuYTaJSBvBE/SINwyASUIxiyIUVVkPWAH19iyg=	\N	f	833d1366-b765-46d7-a670-b61016b7ae88	Major			f	t	2021-09-27 13:20:57.665478+00			0	0	t	f	Major	\N
1981	pbkdf2_sha256$216000$r9zX4P21tqsr$ojiaUjK04xtTUKRqcxKwzEQwWNzwgMC6mZlQs3IPvMk=	\N	f	fad5ba20-5b49-483f-983e-8562f2f81699	Sheetal			f	t	2021-09-27 13:20:57.90537+00			0	0	t	f	Sheetal	\N
1982	pbkdf2_sha256$216000$hLbftQDi67Ph$ZRpWBEeulJ3YuyM/cF3gD8etAY8Nn8zay7YE4EAEfD4=	\N	f	7cff3325-49b9-41ad-834d-4cc6790ffbe2	Poker Raja			f	t	2021-09-27 13:21:04.04168+00			0	0	t	f	Poker Raja	\N
1983	pbkdf2_sha256$216000$gD8whm6zVxRH$LM/m3RHlkfrzKUUr+8e4bbAuCZATjlJ2yZABObBLZWQ=	\N	f	574ac127-b988-4bd6-9905-2f000bd06925	Major			f	t	2021-09-27 13:21:04.31303+00			0	0	t	f	Major	\N
1984	pbkdf2_sha256$216000$ejsHKHvskP7I$RTBJRVgYCpeo+PffhyidrQi60fKuEZZ4UCXmcQhWAPQ=	\N	f	eb15c44b-0bb4-441d-a662-71a6e51d1169	Akshay			f	t	2021-09-27 13:21:09.870785+00			0	0	t	f	Akshay	\N
1985	pbkdf2_sha256$216000$VAQWOcgRSZr7$FHt9khPGc0mnmJzHeTkuQkAdXj/uP5r/lr4Ngunn3ZM=	\N	f	4d7420e0-3aa9-473f-a178-d32a161fe921	Rani			f	t	2021-09-27 13:21:10.150919+00			0	0	t	f	Rani	\N
1986	pbkdf2_sha256$216000$nu5a9u0DN03e$/BlgBy3IALfu/kDugQMomEoJrCTFtT94iHwOVZPNyik=	\N	f	cbae294c-419e-4bce-a507-e7f378818d3e	Avenger			f	t	2021-09-27 13:21:15.976137+00			0	0	t	f	Avenger	\N
1987	pbkdf2_sha256$216000$o2O1HN94pIP7$PH3ygLfm3mjKpfwseMGdUglxolgGb/631EALS3K0zUA=	\N	f	d8665ab1-06a6-4b7e-a0ec-68935cc25f80	Krishna			f	t	2021-09-27 13:21:16.226286+00			0	0	t	f	Krishna	\N
1988	pbkdf2_sha256$216000$tBVNfRSOqeIp$NjJF4tJ71+931MIpPX6wvBOTzPJWkzwUKROOWz+3be4=	\N	f	db02d61a-18de-4b00-a412-6febc0156570	Winner			f	t	2021-09-27 13:21:21.941023+00			0	0	t	f	Winner	\N
1989	pbkdf2_sha256$216000$hzCeGyGfZP1e$3rqm02niqKg+egWAwExsOtEi+FSr2NVcUJMyDgkt0C4=	\N	f	7fd100d9-246e-4441-9cff-ea485de082b0	Ruby			f	t	2021-09-27 13:21:22.21117+00			0	0	t	f	Ruby	\N
1990	pbkdf2_sha256$216000$YcDSnAkKU88C$oJ0RpCNmTHvpW3UiN8VBUYzX+hX5G9pWL37VNwSmJLY=	\N	f	c8e9ec40-0694-4b64-8cc0-4dd6137c55f7	Vijay			f	t	2021-09-27 13:21:28.072098+00			0	0	t	f	Vijay	\N
1991	pbkdf2_sha256$216000$Wzl59Nxd6Dkp$GRyCzr7r11klv8E0Uz1orhvPxExA5vOUDcJToVmTzLE=	\N	f	83b38451-759b-425d-b7fc-c002959ee5b9	Gambler			f	t	2021-09-27 13:21:28.372196+00			0	0	t	f	Gambler	\N
1992	pbkdf2_sha256$216000$RMjWHdeuE4aJ$nvcWbCq0jOR/KwTNqoFx8iIymlN3KbNYKNrX66XPouw=	\N	f	aa03f8ec-a9ce-4db9-8bd9-8429022fb779	Mara			f	t	2021-09-27 13:21:33.991601+00			0	0	t	f	Mara	\N
1993	pbkdf2_sha256$216000$zIxcCwZzANTl$EYHyYZFcG25EQsrOZLYlBIFz2PavP39dDujjXocsDlQ=	\N	f	3f463cf5-ab41-42a8-93c9-a1403d01d8ba	Poker Raja			f	t	2021-09-27 13:21:34.261818+00			0	0	t	f	Poker Raja	\N
1994	pbkdf2_sha256$216000$5k0gAZ2BuhpR$LWPZG+QbmEOfVk4D7JIKsZb+9L8MIBoFYjEeLHdfoPk=	\N	f	47dfaad2-c2cd-48f9-8e8d-5540655a110f	Shivaraj			f	t	2021-09-27 13:21:40.096744+00			0	0	t	f	Shivaraj	\N
1995	pbkdf2_sha256$216000$GZ5wd5l3d1cT$pLqSmLlrWmeviE+dJE0p/osy1aWZFd43w9f/AOXUqXo=	\N	f	8bd86d70-d233-4732-8282-efa5a93cf80e	Diamond			f	t	2021-09-27 13:21:40.400407+00			0	0	t	f	Diamond	\N
1996	pbkdf2_sha256$216000$o9ZdnMxIGx6x$K95sFNXls+S9X+YmlnEVnkjvrx+Kgx09KzhpM+Fphxs=	\N	f	9e06f0d2-12d8-4ec2-960e-6bae8af6dfca	Krishna			f	t	2021-09-27 13:21:45.7805+00			0	0	t	f	Krishna	\N
1997	pbkdf2_sha256$216000$2nicpHi3IWVg$KlkUpxjcpzZZetyY2ZIaNNKnE01aI52Ek6m/wsduY74=	\N	f	84775ba3-86e4-41d4-9ffd-23c6749ca1ff	Poker Raja			f	t	2021-09-27 13:21:46.092475+00			0	0	t	f	Poker Raja	\N
1998	pbkdf2_sha256$216000$C2C3vGKWGeLD$3W4AmJZhAXphGotfoG7kaKDEak7r1Cfn30BvVV7TPjk=	\N	f	62834606-99c3-467e-9e22-386367f7650d	Loser			f	t	2021-09-27 13:21:51.785846+00			0	0	t	f	Loser	\N
1999	pbkdf2_sha256$216000$LDDunOyvANU5$DlMxO7Keeoj18jxKyj+kIzZdLam3wwKhQ9eRF9eH+9w=	\N	f	d56fcd0d-47b8-4f4c-a439-5694b67acaa1	John			f	t	2021-09-27 13:21:52.028139+00			0	0	t	f	John	\N
2000	pbkdf2_sha256$216000$hMbTYmOPwSTJ$c+Ii9pam+BcJxrXLnpBXj9AjCuiITuvRrrdJaMSnxaw=	\N	f	3a218c16-7840-4c69-99cd-1dd9ae7b6b09	Major			f	t	2021-09-27 13:21:57.446176+00			0	0	t	f	Major	\N
2001	pbkdf2_sha256$216000$X71IIzVDZJbL$w2NI7YQ7bfqH1yQobjUPwdXhH0H8q4Vc5va4CwVrgLk=	\N	f	8e4a5b25-bae8-44b5-b989-f5af2f05ab1c	Rani			f	t	2021-09-27 13:21:57.686621+00			0	0	t	f	Rani	\N
2002	pbkdf2_sha256$216000$BqovD8YAMdPf$Af/XWDufd2wTHcBLkUyfBa/vCTfB30RIBdK41NPz/Mc=	\N	f	c6a54335-d4b5-4301-811c-2f21630702af	Akshay			f	t	2021-09-27 13:22:03.554493+00			0	0	t	f	Akshay	\N
2003	pbkdf2_sha256$216000$IET8BNl47lc3$ZTEmFA0HksCchqmyjc5BtaAjFtBE9ipdYfNBncOUywQ=	\N	f	fdc38871-ab56-4f55-b71e-ce7cdf33fb00	Vijay			f	t	2021-09-27 13:22:03.96986+00			0	0	t	f	Vijay	\N
2004	pbkdf2_sha256$216000$yZ4x1UUVg71P$sYAcRlqQ2rxv7/4aZbRG9y6JFzP2c1vhIG6ScrRIfwQ=	\N	f	2b5f023f-e1ed-4982-9c81-c6c20427282b	Ruby			f	t	2021-09-27 13:22:09.286+00			0	0	t	f	Ruby	\N
2005	pbkdf2_sha256$216000$5Ir0nWVRnlrm$XlnzcPoOwbb6X86EoN68H8ml0nPJbdG7v0KG/6jGJeM=	\N	f	13e5a674-4530-4aff-975f-dc55df8eb554	Akshay			f	t	2021-09-27 13:22:09.526032+00			0	0	t	f	Akshay	\N
2006	pbkdf2_sha256$216000$ezGxya7Z6GDO$8ldhUhDxitauybm5xgN0A9VRPTux2THp0F+fQLy/cC8=	\N	f	cc065a89-fac2-4dda-982a-587a36971b3f	Avenger			f	t	2021-09-27 13:22:15.196396+00			0	0	t	f	Avenger	\N
2007	pbkdf2_sha256$216000$S37hxKZ8rq8v$k8l0NISwJkYIZqR5xWM/QkG2jVUBu78guspBadm3UuM=	\N	f	16d0e526-be82-405f-a58b-074bb1f3a15a	Gambler			f	t	2021-09-27 13:22:15.436159+00			0	0	t	f	Gambler	\N
2008	pbkdf2_sha256$216000$B3ib7mVMnXjV$gGvmNnAuyV+tl3NM85I0WSzSDggcVwCwqmpTYBP1TSA=	\N	f	1957b0de-f8db-4c13-9bdd-adca48e9aad7	Shivaraj			f	t	2021-09-27 13:22:20.901831+00			0	0	t	f	Shivaraj	\N
2009	pbkdf2_sha256$216000$7uEOn2YI6aBJ$pn88zqXp4Nf+7zviU88cPVelEqDRAyvVoSC8ZeT/mDo=	\N	f	6d644513-43b7-49eb-af76-f194bb0a3926	Mara			f	t	2021-09-27 13:22:21.181864+00			0	0	t	f	Mara	\N
2010	pbkdf2_sha256$216000$ybuvyQFpias7$NvwqcFfaZFFpEa1lGnvEuL3lBV2SGHEdl9ssh2isqFA=	\N	f	b46f4913-5a7e-434e-ad23-ea754cc86b0c	Akshay			f	t	2021-09-27 13:22:26.801667+00			0	0	t	f	Akshay	\N
2011	pbkdf2_sha256$216000$PFA8edsVZ3lv$ZeexQPxSMQ60pjUHN+HUh6O1SgbQ3336zrjmlEpJLxs=	\N	f	74e939c3-5851-4f78-8e32-3f00d6edf09a	Akshay			f	t	2021-09-27 13:22:27.072164+00			0	0	t	f	Akshay	\N
2012	pbkdf2_sha256$216000$WveBQf46osZ3$jm7sIKpDrqOVqtTHzq5IlzvWqbhA1OrGcoUbMwnaq5o=	\N	f	7bb6798b-c31b-417c-8854-952012476186	Diamond			f	t	2021-09-27 13:22:32.431583+00			0	0	t	f	Diamond	\N
2013	pbkdf2_sha256$216000$yQIBYsyP0oxI$LGYVzJXKtzhnpDxOc99prhOLYnkrSXQI6OpRAYu/hus=	\N	f	b9ad349b-bd5f-4a04-8ed4-735a115c17bf	Avenger			f	t	2021-09-27 13:22:32.71641+00			0	0	t	f	Avenger	\N
2014	pbkdf2_sha256$216000$rOLHt9589QWs$o2nsnG/Wzvo/qGOovGOx//Q7ih69Vj+zT+jCdc+ic/0=	\N	f	26e1bad8-6590-4d09-8f11-2d38f9c8ec93	Loser			f	t	2021-09-27 13:22:38.726454+00			0	0	t	f	Loser	\N
2015	pbkdf2_sha256$216000$wynxPOLQeyKH$KLoDkr5Ij8g4ljxFLWS4mY0L+6vQuY42LIxluGbtkAM=	\N	f	ea9a86bc-7ba4-472c-b2d4-34d5c0fe4854	Mara			f	t	2021-09-27 13:22:39.001343+00			0	0	t	f	Mara	\N
2016	pbkdf2_sha256$216000$gXFuT2jSVAwF$AeD8zZlB8KFX0nAgV0qw5364b8H8oyVQxeMXC1wwVX0=	\N	f	54081364-1b92-4b7d-b175-e86bcd444989	Winner			f	t	2021-09-27 13:22:44.641862+00			0	0	t	f	Winner	\N
2017	pbkdf2_sha256$216000$FkvDiQhpZq9z$vW9q3KXSUjtgngsZgI/L+hLwTGRiiKESGZxX08hOIVE=	\N	f	b8a78a2a-6e08-4f6d-b79d-78500a6a37aa	Poker Raja			f	t	2021-09-27 13:22:44.923645+00			0	0	t	f	Poker Raja	\N
2018	pbkdf2_sha256$216000$3yeySV0yWpSb$h9U45I0SSF5brkbGpaYXQ+iAFSnN18xAA9PzFXyWieI=	\N	f	41d30d23-f30d-453b-83b7-6019f27e580c	Shivaraj			f	t	2021-09-27 13:22:50.835922+00			0	0	t	f	Shivaraj	\N
2019	pbkdf2_sha256$216000$KDNI6Rqjz6ld$Bil+EYWVOinTV0/glBQ8/XoBHOTD2VAG3Qx6CBvL5S4=	\N	f	1b577a86-4fc6-47e0-9b89-6912815c6256	Loser			f	t	2021-09-27 13:22:51.106082+00			0	0	t	f	Loser	\N
2020	pbkdf2_sha256$216000$KiGsoYMBQoZd$1dIdPx3miktGIUoiuBi7nSmMOcaTfKwb9nPwir0df6U=	\N	f	9ab61aa4-26be-4107-aac4-0ef695206e7b	Avenger			f	t	2021-09-27 13:22:56.640796+00			0	0	t	f	Avenger	\N
2021	pbkdf2_sha256$216000$0nszZgFOWmdm$q6sQCBId/uhAlSEC8bHrpr6EI6Tcc9kgeuAxebJAvbk=	\N	f	419fb2b5-fd20-40c7-9682-5103b4255c6b	Master			f	t	2021-09-27 13:22:56.884853+00			0	0	t	f	Master	\N
2022	pbkdf2_sha256$216000$b6ehvakgkA2a$jK4yNPKqv8537AXkjZVXspojfV9IcCt9+dgl9jn2Exk=	\N	f	846d36bc-984e-4b3e-9fc1-0ee3bd45c9d0	Shivaraj			f	t	2021-09-27 13:23:02.656563+00			0	0	t	f	Shivaraj	\N
2023	pbkdf2_sha256$216000$SuEjMahYcfwl$eiML8ZxtujoWsvth1ECXSfRhT3kLSANoWJRYtGqCZTI=	\N	f	d7150e75-a593-4cc9-880e-78263402c134	Loser			f	t	2021-09-27 13:23:02.911631+00			0	0	t	f	Loser	\N
2024	pbkdf2_sha256$216000$xJaLGv4FgPGB$j0+thJdFdYMvPzt/YMq9E0QC1KrkIsp8Ir0lJLp9ARI=	\N	f	a33ce71c-b270-40c6-a5c4-4e96a3149ace	Akshay			f	t	2021-09-27 13:23:08.356765+00			0	0	t	f	Akshay	\N
2025	pbkdf2_sha256$216000$fSiugtASUV0L$FET1E/cpi1hR7QRjl+kfoITc3v0iYrXCcu6nsEdTBD8=	\N	f	b29e5d70-ac03-4bfb-8e1a-9c5bbb77c1d6	Number 1			f	t	2021-09-27 13:23:08.632004+00			0	0	t	f	Number 1	\N
2026	pbkdf2_sha256$216000$E88PxiTysYEs$PzAWg9d87To12voSS80HDvOSOgzaqhP4mvq1jaj2pjk=	\N	f	7ce9e51d-c5f4-44be-9e3f-093559208874	John			f	t	2021-09-27 13:23:14.216026+00			0	0	t	f	John	\N
2027	pbkdf2_sha256$216000$fh2aiskdR50h$XEm6OVA0hYzh726Pl19FYN4zPz1m091AS4xcPVZ1eyc=	\N	f	336215e4-28cf-4aaf-af09-8f58b36fb2b8	Gambler			f	t	2021-09-27 13:23:14.451283+00			0	0	t	f	Gambler	\N
2028	pbkdf2_sha256$216000$ggqyZMQsmK6e$L708oZ7rdVDuM6YbYHosmRutLwdd5zW/EtkDbbLVLAs=	\N	f	eafa3f18-c708-4160-9810-0906c3c1d00b	Mara			f	t	2021-09-27 13:23:19.862201+00			0	0	t	f	Mara	\N
2029	pbkdf2_sha256$216000$6tIuwdvzR8Hp$lmGgd0GqQjnueiHpvqCGL+nikh/+wGythTi5C1e6MCs=	\N	f	feae0d4f-80a2-4827-b937-129e6086dc8b	Hero			f	t	2021-09-27 13:23:20.15198+00			0	0	t	f	Hero	\N
2030	pbkdf2_sha256$216000$UmePrTYLTyQA$ugZEGlvrjxlEGMB/flMqgXLdURdTMHLHj44qvfg8o/U=	\N	f	65f20eb1-bc94-4308-9e18-8d1a4be2e740	Gambler			f	t	2021-09-27 13:23:26.185861+00			0	0	t	f	Gambler	\N
2031	pbkdf2_sha256$216000$oaSMif4pvS4A$0pUuF45gJyOshSABfXuhbBEn6UY825XZ1/ktrw/aMEA=	\N	f	9313ebaf-acf3-4b64-a2ad-3c98d314aabd	Rani			f	t	2021-09-27 13:23:26.435927+00			0	0	t	f	Rani	\N
2032	pbkdf2_sha256$216000$CrsaCtMZaTbq$+wB3fvh6NzTxQYnqyMoQhQoUFlPSKpeFZRjuWIQL89c=	\N	f	53736274-90c1-488d-b4fc-e1b082ee6d4d	Raju			f	t	2021-09-27 13:23:31.98525+00			0	0	t	f	Raju	\N
2033	pbkdf2_sha256$216000$3qJNbaESXr4v$xHjgyiKwNB85hfqSml3KK2LbSIH2OekLN904Iz+HBi4=	\N	f	851d3577-4f4b-41e0-b4c9-23b3036f29aa	Sheetal			f	t	2021-09-27 13:23:32.225323+00			0	0	t	f	Sheetal	\N
2034	pbkdf2_sha256$216000$TOAUlX2Ecfff$HSIXYBD+4lqGvILyQDvteUy06uX/DfZ5aKijrLbgw74=	\N	f	ac0abbf8-311f-4804-9da6-b19031676fe6	Master			f	t	2021-09-27 13:23:38.042189+00			0	0	t	f	Master	\N
2035	pbkdf2_sha256$216000$FocWrAxy8MrP$bc3fHGtCzmuo2epRq7NOpgqOhEvJ2MB8MiCa7i/qW1Y=	\N	f	01a0bcfb-6206-4fc4-9b6e-fe25cc422f52	Raju			f	t	2021-09-27 13:23:38.311877+00			0	0	t	f	Raju	\N
2036	pbkdf2_sha256$216000$cC9YNzECKVM8$3NSpItvFRaxRV2PJEhaxdgTfXYZjZjj0pkggPTb+Kic=	\N	f	456ed72b-0d3d-4d90-aba2-38b18644b7a2	Loser			f	t	2021-09-27 13:23:43.685914+00			0	0	t	f	Loser	\N
2037	pbkdf2_sha256$216000$bbrFVYpdyRkU$zfJq//1oKtYWqjWRdjCtlOr5lwqn/nGG41/l4CINfro=	\N	f	c691e711-dd03-4899-8494-0ca7bfdc19d8	Major			f	t	2021-09-27 13:23:43.936019+00			0	0	t	f	Major	\N
2038	pbkdf2_sha256$216000$o8lJb5IPDK1Y$W/Euf4npuhFguCNzNWFDtF6ohhgX7adLxemmOjwCGWg=	\N	f	a8fe7d76-a61f-4f7d-91ff-7bcae33b8749	Sheetal			f	t	2021-09-27 13:23:49.691059+00			0	0	t	f	Sheetal	\N
2039	pbkdf2_sha256$216000$F8xueadIajN1$71GTVwU6S5pv1V+nsTWa3z4rj6P3jadlxzzvK4PYOlQ=	\N	f	d98df536-24ca-4687-a6d3-fccb6bbc57fb	Loser			f	t	2021-09-27 13:23:49.951073+00			0	0	t	f	Loser	\N
2040	pbkdf2_sha256$216000$Aaiq01ZNaY9g$xWAjwn+00cSpjSlWs6DqlbfWLA4vuY4bcE98VuuMGQc=	\N	f	369a68f0-f0ff-4685-a50e-eca74ec7e93d	Poker Raja			f	t	2021-09-27 13:23:55.306327+00			0	0	t	f	Poker Raja	\N
2041	pbkdf2_sha256$216000$Es9zhTiGjxY8$SKexQpSbZ0XYJJb6SZJArFvSOckbxRnylKQF8Uux1Mo=	\N	f	62c68f30-443e-4de6-aa7e-4cf6ecc7ad83	Master			f	t	2021-09-27 13:23:55.556039+00			0	0	t	f	Master	\N
2042	pbkdf2_sha256$216000$d8M7xkbLVdHp$HH04DvTULyisjr5t3WmhOnSstSFT92e6cv70iUVvfcE=	\N	f	ce6c50cf-8023-42da-a2e9-e6cecd8039bd	Roja			f	t	2021-09-27 13:24:01.262216+00			0	0	t	f	Roja	\N
2043	pbkdf2_sha256$216000$miyrt0p7jv3m$NJu97cRKyxntenacaYTQ7OL6jrBU1CaqlxcDU6UtnBo=	\N	f	2dbd9a8e-b59b-48c0-b03b-f55468025e8b	Vijay			f	t	2021-09-27 13:24:01.522459+00			0	0	t	f	Vijay	\N
2044	pbkdf2_sha256$216000$HnYuZyL3SKqD$h8LFcfkXOlujBqO9TXeZEGw1rmudL/Piz8wfViW9aI0=	\N	f	ec392f28-d047-48b7-8409-865c95fb6ced	John			f	t	2021-09-27 13:24:08.04212+00			0	0	t	f	John	\N
2045	pbkdf2_sha256$216000$z79tNBW8GTmu$1PELtlp1bjzHTbarS6VY0vnHjYnDkyRE8J17Css8XIg=	\N	f	cd8efa73-c68f-41ae-82a2-f16ba693c92a	Poker Raja			f	t	2021-09-27 13:24:08.352231+00			0	0	t	f	Poker Raja	\N
2046	pbkdf2_sha256$216000$hrGLsfzwgMnB$VnSKi9a60TbdfeOtCrBfa/NjegokDLKIaasQbVtdz98=	\N	f	c8a610ad-253e-4978-b97c-4f60cf928cea	Poker Raja			f	t	2021-09-27 13:24:14.202127+00			0	0	t	f	Poker Raja	\N
2047	pbkdf2_sha256$216000$jalFv33357EI$f53eltBXW0q6kJj/Rtm+wUkKVRTP4DiH/BhUiRhsyIQ=	\N	f	78a317e4-1974-44da-aebd-5d6fca9b02d1	Number 1			f	t	2021-09-27 13:24:14.471918+00			0	0	t	f	Number 1	\N
2048	pbkdf2_sha256$216000$FUdIBcLgNDnj$fS9CN/NCPYFcxKsAdjLEYxwh95hq1oGrJ6vP94brhos=	\N	f	eeffc99f-8fbc-445d-a59c-1efff06fe754	Shahrukh			f	t	2021-09-27 13:24:20.212146+00			0	0	t	f	Shahrukh	\N
2049	pbkdf2_sha256$216000$l2NIekxpIWes$lJE93kgtpmTYv5O3ZSDxKlITL/EdH6x7hF5mjfJyseg=	\N	f	e0e4429a-4ab1-4b8c-9dd0-a654e851cba6	Hero			f	t	2021-09-27 13:24:20.491802+00			0	0	t	f	Hero	\N
2050	pbkdf2_sha256$216000$rD2VgIFFs9Vi$iTajIOG+n1oYt9InFMyF4yFPp7M6n9te06rvpUlSmKw=	\N	f	9fb84419-8233-40bc-ac12-0d6ea73ab2cf	Hero			f	t	2021-09-27 13:24:26.522295+00			0	0	t	f	Hero	\N
2051	pbkdf2_sha256$216000$qMjZFlT2eap1$TBlAAx8+8+f8qG4PTl67nra2WPDjzEnEw6o5xCyEVds=	\N	f	ccd62c6e-7667-4f9a-92fc-e1f2409c4f8d	Gambler			f	t	2021-09-27 13:24:26.878606+00			0	0	t	f	Gambler	\N
2052	pbkdf2_sha256$216000$CyzWchbNzCaY$8H0+dzzF8/FcIHTc2/KFRWir1t73FLlSqQeLGhZDaY4=	\N	f	2c73ef4c-40e0-487b-a398-3c1c6c66f42d	Poker Raja			f	t	2021-09-27 13:24:32.501112+00			0	0	t	f	Poker Raja	\N
2053	pbkdf2_sha256$216000$Qgun4Ar6Nc72$9+JGl37pn3hJjAUO4sMrHVXJn9XrPJkFoSPAgy1At9E=	\N	f	edb260b7-966a-4afc-ae9e-0128e4d724f9	Major			f	t	2021-09-27 13:24:32.791095+00			0	0	t	f	Major	\N
2054	pbkdf2_sha256$216000$JILRdiKmD0Fr$s/n1DDcf+B6WOcQ4dRkOggA4jxwOEiQYEGAxO4684KA=	\N	f	1fa99faa-70ae-4f7d-a4ce-545325e7fe9a	Krishna			f	t	2021-09-27 13:24:38.826338+00			0	0	t	f	Krishna	\N
2055	pbkdf2_sha256$216000$VLnweLWMw1GC$W1LyshKdZjphQG2x78k1CqhK0r/iYuQesEmieZZSC2U=	\N	f	26865c05-b293-4fe1-bda8-6c8713459b4e	Winner			f	t	2021-09-27 13:24:39.066159+00			0	0	t	f	Winner	\N
2056	pbkdf2_sha256$216000$i1swjmmDD8H7$PCB3qdvyeQ2xDNIdNlIP80xrudQKQcFJqFWBWvBrr6s=	\N	f	f6082609-8b52-4668-bd74-8aed9741d4ce	Number 1			f	t	2021-09-27 13:24:44.465306+00			0	0	t	f	Number 1	\N
2057	pbkdf2_sha256$216000$8HP8bLE5Lf4L$In5DkdtAEJPI3SuJgjBj/eyWraBDC8xIGz1HqDID8qo=	\N	f	cd138292-26c2-4f10-8438-a8155bd5ef1c	Sheetal			f	t	2021-09-27 13:24:44.715538+00			0	0	t	f	Sheetal	\N
2058	pbkdf2_sha256$216000$5c8UJK4LfPQD$05TtdncNEMq2Z34VuT6cF9FHRpfv+ub1ItJ72S8DXns=	\N	f	fe2551d1-59c9-484a-8922-49021a1bd141	Vijay			f	t	2021-09-27 13:24:50.932493+00			0	0	t	f	Vijay	\N
2059	pbkdf2_sha256$216000$x5r6lgSYlcoJ$7cD2OqUFWeZkTtwf/3vZxagyXnPwh9oy5wH6xXPmll0=	\N	f	c0f74e01-72ee-4cea-8ecb-94d003384893	Raju			f	t	2021-09-27 13:24:51.19223+00			0	0	t	f	Raju	\N
2060	pbkdf2_sha256$216000$R3zCSIz3X7qu$/cWzj82R1uPWrKW2zY72H7FbvnY/lrm2z7PeE+WJ5x0=	\N	f	6350a063-1cf7-45ba-bd9c-77640a290a33	Hero			f	t	2021-09-27 13:24:56.592227+00			0	0	t	f	Hero	\N
2061	pbkdf2_sha256$216000$33zs1Lqpempg$csyHFYLEMAePLr2UXpfhNdgY6DQUWHWyvrZUTD/Q6og=	\N	f	151f4452-d0e8-4fba-b808-a6ea320b10e4	Shahrukh			f	t	2021-09-27 13:24:56.852096+00			0	0	t	f	Shahrukh	\N
2062	pbkdf2_sha256$216000$JFd2xny1jQ8y$rNZ38yhFTlOUyypUMOvf0wWAmwXaRmmDuvaNTvJa0rk=	\N	f	456c5d84-cb57-41ba-b87e-fd70cd3029c1	Vijay			f	t	2021-09-27 13:25:03.03116+00			0	0	t	f	Vijay	\N
2063	pbkdf2_sha256$216000$mARSZKpb9y86$QkJsJ5suw0x07+YkKFwwbpxv3DPMzLmyD7e9WKUE4Xs=	\N	f	a4444fd5-47da-45d6-b1d6-2ac4c60b3d44	Major			f	t	2021-09-27 13:25:03.321542+00			0	0	t	f	Major	\N
2064	pbkdf2_sha256$216000$8TqhYuve65vD$xIPZEfvPVhO+lBRHPaklNsUCj+VHfB2kHHd0xVKIa2A=	\N	f	fbbeacc5-8b00-4522-8d8f-fa71ac85b37c	Master			f	t	2021-09-27 13:25:08.666069+00			0	0	t	f	Master	\N
2065	pbkdf2_sha256$216000$INv3QgSOZN97$6Y0C5Rw0CX+Y0+ReY/UfslI5UqK6NXcWK69rYoDbu2U=	\N	f	ee9cbd23-a321-44e7-9375-955f066dde05	Vijay			f	t	2021-09-27 13:25:08.961109+00			0	0	t	f	Vijay	\N
2066	pbkdf2_sha256$216000$WydfcncJ9Qrj$qiNjB+eX51zra2dMIDoDaF8SNC6Mg7s5I8ThyyXTQLo=	\N	f	bbe8c749-a2b0-4007-8e79-06ef5c100832	Gambler			f	t	2021-09-27 13:25:14.996537+00			0	0	t	f	Gambler	\N
2067	pbkdf2_sha256$216000$Bva2YolG6k8g$JcGg1B914XDAx7w5OGP9Hsl866svdc+I1gkzTZeK6jc=	\N	f	f39e2efd-9f94-4f96-a7de-b2f283399c06	Number 1			f	t	2021-09-27 13:25:15.251242+00			0	0	t	f	Number 1	\N
2068	pbkdf2_sha256$216000$8gmlu2CPL94L$/+cCDNEuRvtwSnzZMboATwyhzzRnM6B7iBy/qEIK59A=	\N	f	e08e8b9a-4959-447f-97b3-0a67b43321fe	Diamond			f	t	2021-09-27 13:25:20.691188+00			0	0	t	f	Diamond	\N
2069	pbkdf2_sha256$216000$7D2pl9IMZ54b$LcGtufPZ4q3K0F2+/e0JdFzlqC9gOy6uZGBpQiUuPII=	\N	f	756c2661-fda5-452e-8074-5031f41b4289	Raju			f	t	2021-09-27 13:25:20.951293+00			0	0	t	f	Raju	\N
2070	pbkdf2_sha256$216000$LihkUNWDZvdN$0wR8p3tN9bTnAvwSsBn/9KRKcLCcNyYX1mL2TCHYHLE=	\N	f	601eccc2-af58-4f79-8c7b-57ac2b53f68f	Avenger			f	t	2021-09-27 13:25:27.132026+00			0	0	t	f	Avenger	\N
2071	pbkdf2_sha256$216000$mh9TtomRR2xo$PF0+pmHEmZIKhaBZ1ohDdleN2KB60qQZAoVvoOuhMa0=	\N	f	c5487966-5c7f-46ad-be82-cd43592931bc	Raju			f	t	2021-09-27 13:25:27.377321+00			0	0	t	f	Raju	\N
2072	pbkdf2_sha256$216000$DnnXhg891VWz$jMJYVKHjluI2jB40QM4oZScubmVxEZGGlf0QoJ9u9Gk=	\N	f	954f00a9-6c0f-4d5c-82e8-618887d54561	Hero			f	t	2021-09-27 13:25:33.036026+00			0	0	t	f	Hero	\N
2073	pbkdf2_sha256$216000$X0zYFURWwEV8$bv1pfR3c4qjQDOCEQomO9NYwE7pFRnFlNAw7o5T5e20=	\N	f	4cab2cc9-d39a-47af-b6ee-e3df60f106b7	Poker Raja			f	t	2021-09-27 13:25:33.295929+00			0	0	t	f	Poker Raja	\N
2074	pbkdf2_sha256$216000$MlH7zWaMlTdY$2V0snlLz9xww2ZZ2pfYgb6hf/cPtwutOUaXWAeVZmhA=	\N	f	eb24a665-9bd4-4362-a6e4-7c76402ef840	Master			f	t	2021-09-27 13:25:39.416691+00			0	0	t	f	Master	\N
2075	pbkdf2_sha256$216000$pZGPolyGzTqb$fydBjdbMfHOZg1NTOhLXz0but+W+vHthluEf1foRzGc=	\N	f	7690ef70-c970-4467-97df-d7e644ccf28d	Avenger			f	t	2021-09-27 13:25:39.666408+00			0	0	t	f	Avenger	\N
2076	pbkdf2_sha256$216000$InZDHabyZaQ8$GT/bSNx3TfbfmkN3gsciYlScIAi5gtvpUp40br+A6ys=	\N	f	1aaccd33-d24a-4d28-b605-b36d4ba8069c	Hero			f	t	2021-09-27 13:25:45.361396+00			0	0	t	f	Hero	\N
2077	pbkdf2_sha256$216000$FcsXeqFJYzvn$8wv7I4yLej7l3cZizQpsVVgUY2I/vBi9lspW1XAJEmY=	\N	f	9f21a64f-2d18-4493-9622-5c870c8e571f	Shahrukh			f	t	2021-09-27 13:25:45.621473+00			0	0	t	f	Shahrukh	\N
2078	pbkdf2_sha256$216000$FWlxbdQR5KMQ$0rTcf44i6e7glJjBhQtKHb6jBJTF9H5hoEBYICR7SGI=	\N	f	28c0a544-ad00-4fa2-a940-76c2a570a0f7	Diamond			f	t	2021-09-27 13:25:51.77533+00			0	0	t	f	Diamond	\N
2079	pbkdf2_sha256$216000$idhlJyDfcnec$CAD3VxvwsIGuPVk3qmCB5bo4GayU4Aoh1RZxO3i9K10=	\N	f	e3ce593f-ccdd-418c-9d41-7a60bd6a202b	Loser			f	t	2021-09-27 13:25:52.010442+00			0	0	t	f	Loser	\N
2080	pbkdf2_sha256$216000$FdQlq3zesajy$s+jUKQCZ9HsWMAIvX8U04V3nhRgZh356u8kO7pZhLXs=	\N	f	cd0d80ae-e44a-45ff-9bef-c54d22e96ad9	Vijay			f	t	2021-09-27 13:25:57.596444+00			0	0	t	f	Vijay	\N
2081	pbkdf2_sha256$216000$Bj8I8jU6ilBX$6aaDydF8c2mxCGlKwJvAdUj1AFC7hvKALYL1HIUFGps=	\N	f	b423f720-33f0-4e9f-8696-6a880c520c63	Winner			f	t	2021-09-27 13:25:57.835899+00			0	0	t	f	Winner	\N
2082	pbkdf2_sha256$216000$F9QtuEi1xnX9$04JYwXG0TlW8WA1VomyxPe0iXu/vVmx+krihnCVC45Q=	\N	f	985d0b72-9006-4341-ad57-5351e1822334	Number 1			f	t	2021-09-27 13:26:03.886182+00			0	0	t	f	Number 1	\N
2083	pbkdf2_sha256$216000$hvyRd5VROYjo$VzSLq2KkegY8cUhWLjpmNMq9QP5Rh2tpS7RmRRRaQ2Q=	\N	f	04388428-ad86-45bf-a060-a0bb8b612fde	Diamond			f	t	2021-09-27 13:26:04.136536+00			0	0	t	f	Diamond	\N
2084	pbkdf2_sha256$216000$8dk2MDuB1JsV$GISSSCdbZuPHBT2imLAEBk2OpVNliud/TTCsY11JJDQ=	\N	f	0eeb96fc-1e22-49f5-9806-5874eec42bc2	Akshay			f	t	2021-09-27 13:26:09.706291+00			0	0	t	f	Akshay	\N
2085	pbkdf2_sha256$216000$abuYn5eLHyR3$EoGRVLWpTBDzmgu85djdrg2BfaXEY1Rh+I+xNeNcCfw=	\N	f	957dc52a-3747-4cca-96fe-35dff7f57b66	Loser			f	t	2021-09-27 13:26:09.971221+00			0	0	t	f	Loser	\N
2086	pbkdf2_sha256$216000$pIqQyslIFLY0$O0u0Tffa5YY6fIDVln9AASncQ5MmU8lYHgUdhM9ExgI=	\N	f	228b7c27-9573-495e-bcaa-44e6cd4805eb	Avenger			f	t	2021-09-27 13:26:16.013833+00			0	0	t	f	Avenger	\N
2087	pbkdf2_sha256$216000$FdFLFBnSqC1D$iAq1kMqPwTS5OgRsWlgM8Xn6ihMbe8dbE2g/j8KcVT8=	\N	f	050e66ad-8842-4153-a476-e002a0728c01	Hero			f	t	2021-09-27 13:26:16.267084+00			0	0	t	f	Hero	\N
2088	pbkdf2_sha256$216000$oVX3WdLbDL9A$Z4L543LcR1T7X3ObFmP5RkMpJJsRrvisl/OwIS6tXRQ=	\N	f	1932f0c0-b385-4af4-aa25-fac1b1f5bfa8	Avenger			f	t	2021-09-27 13:26:21.91114+00			0	0	t	f	Avenger	\N
2089	pbkdf2_sha256$216000$I9rcMRJ9TvuT$fwaN5tPnHNkE4zovRkLEho3tsIlCE9Ed/eeozzNufE4=	\N	f	decc4a9a-227a-4895-831a-e9028bfe7ade	Gambler			f	t	2021-09-27 13:26:22.171579+00			0	0	t	f	Gambler	\N
2090	pbkdf2_sha256$216000$6BTWyg3RxLMj$6e6cr3UYoSFyznGd9g9e4+3vs5VA76caY3+hLitEVTk=	\N	f	5d9d9460-b63c-47e1-8f5a-2d732560eaf6	Gambler			f	t	2021-09-27 13:26:28.581694+00			0	0	t	f	Gambler	\N
2091	pbkdf2_sha256$216000$wv8yiroRoIHb$ZQqBuhvd+amMLIbP7QXY4hcekhcFlwp3j/lWERNxt/U=	\N	f	4f709e53-f34f-4124-b7fe-b6134d1d0893	Hero			f	t	2021-09-27 13:26:28.861857+00			0	0	t	f	Hero	\N
2092	pbkdf2_sha256$216000$GuCt2a2albCK$CmzUtkcP6AfmPTQN+vjWZ0826H3d9kJH2lqKfy9bEdk=	\N	f	fe39d3bb-0934-43b6-9f3b-70e9d1aa9713	Master			f	t	2021-09-27 13:26:34.492476+00			0	0	t	f	Master	\N
2093	pbkdf2_sha256$216000$oMD1t6rpJQMH$TP026aZ4Tgg5+VQhIBeiPVX0BzYlddvaRO6CBlxDq2U=	\N	f	6c8cb333-104e-4872-82b6-0cdb372102f2	Winner			f	t	2021-09-27 13:26:34.752338+00			0	0	t	f	Winner	\N
2094	pbkdf2_sha256$216000$fAB84Pv6Oewz$8vIaaqaUlb+7MbCRqZAm/2h9bjKxDWa98AHFM2ls4F4=	\N	f	1e718bae-41b6-4050-a7c8-9fef71f102c8	Gambler			f	t	2021-09-27 13:26:40.836512+00			0	0	t	f	Gambler	\N
2095	pbkdf2_sha256$216000$3m6xNu9t9hZK$LpZYrhwR2yI2CXDaB+tn3Qf5dRdGKExLtx5gEcPelE0=	\N	f	92a4f70f-fe6a-4c3c-b158-21e562468d58	Vijay			f	t	2021-09-27 13:26:41.101259+00			0	0	t	f	Vijay	\N
2096	pbkdf2_sha256$216000$82dwlc8hIVS2$DEzvvbVz8sUrVFf7ccxdp5SVD+T6yz0fMlFSRpWzFjA=	\N	f	7717d4e5-71a0-4828-850e-561a1070e12a	Avenger			f	t	2021-09-27 13:26:46.665536+00			0	0	t	f	Avenger	\N
2097	pbkdf2_sha256$216000$IBBdqZZGUoPz$POln1DemJDIEssZou6Ru4NoNoIry4Hr455sApSg6NOE=	\N	f	ed31ac6f-ae48-4d31-a1c8-3967624829eb	Rani			f	t	2021-09-27 13:26:46.895716+00			0	0	t	f	Rani	\N
2098	pbkdf2_sha256$216000$ZPJMbMUI4BAn$Y43WOB8Cv9Qwl5uqgTYY+btPBlmEktzc+U62xxyKD3k=	\N	f	282b1c38-e959-465d-8d26-55f5fd41c7f1	Winner			f	t	2021-09-27 13:26:53.173611+00			0	0	t	f	Winner	\N
2099	pbkdf2_sha256$216000$bMMlZLNzWnqP$Jnmgso1qVtO7Iqhez6gCjSMD54zl2YbEz4eDWX9QkNQ=	\N	f	b9d91c37-3e1b-4f20-9b81-cc2c4f2bcd99	Loser			f	t	2021-09-27 13:26:53.462592+00			0	0	t	f	Loser	\N
2100	pbkdf2_sha256$216000$LhpOM7IrGw8J$C4z8Azx8H1FiRc5fPO7VzYRzVf/xuHFdX0hjD4876Js=	\N	f	fd30c35f-a8fa-4a67-954e-10ae8b936c31	Vijay			f	t	2021-09-27 13:26:59.112276+00			0	0	t	f	Vijay	\N
2101	pbkdf2_sha256$216000$KX7RPlnhRt5P$c47mF+cOygcv5ceMPUTvmpVQEl9g8wIitzOIF2p8Yr8=	\N	f	fbc5e3f5-2367-4d53-a428-3b7e13217419	Mara			f	t	2021-09-27 13:26:59.37203+00			0	0	t	f	Mara	\N
2102	pbkdf2_sha256$216000$znh9zlDtjHZX$Ej7r74zLViydJuGA3acTC9e8JMuOPH8SZmSAWkJeq4c=	\N	f	6402097a-7b1a-4148-82f4-e736598241e1	Diamond			f	t	2021-09-27 13:27:05.501537+00			0	0	t	f	Diamond	\N
2103	pbkdf2_sha256$216000$jJAQe490kwiD$xxYLoJF6tWVURXhW8Ki3lLfmUZTrnlq7GOoQJlHIxlA=	\N	f	36348c86-ad0a-4f99-aa7d-b2efc205b4cc	Master			f	t	2021-09-27 13:27:05.763749+00			0	0	t	f	Master	\N
2104	pbkdf2_sha256$216000$e3smw8BHTKX2$JcExaAwtjhQbfPnoQ0DSnLaDPfqlBCvR2Zmqk6q6jZM=	\N	f	229f4126-657c-4211-ac72-f6796e8ac8f5	Poker Raja			f	t	2021-09-27 13:27:11.431864+00			0	0	t	f	Poker Raja	\N
2105	pbkdf2_sha256$216000$pgTFXZo5mFYv$a6Fe35W33+S2YkKdq8JHda8xG9gTp8jGmXbGtKR+F8w=	\N	f	8db6e3fd-4140-4427-8d92-7aa79275633a	Poker Raja			f	t	2021-09-27 13:27:11.70196+00			0	0	t	f	Poker Raja	\N
2106	pbkdf2_sha256$216000$5qCWru6hSNXk$+YvI7HVsOGAV/OLeZOw0gw+IPzG9YzIU7cPTxouJARM=	\N	f	e01480a9-9176-4285-99ac-d3b71de2847d	Akshay			f	t	2021-09-27 13:27:17.812008+00			0	0	t	f	Akshay	\N
2107	pbkdf2_sha256$216000$Q97yGXhgpTj8$s8N0t2LCyGtsVN3rCh3PCd79THLjEPpdLKiUOupz8FA=	\N	f	8172f0b2-67f2-4f03-bf95-69c377c2c951	Hero			f	t	2021-09-27 13:27:18.071899+00			0	0	t	f	Hero	\N
2108	pbkdf2_sha256$216000$hdQ3VKCKhxWW$T3NUT5FtvdOCl0Jr5ippP5Eklu4jTfKvu3GLLjP4LVQ=	\N	f	6a382878-276c-4204-a13c-6c9606b1ef1f	Krishna			f	t	2021-09-27 13:27:23.762442+00			0	0	t	f	Krishna	\N
2109	pbkdf2_sha256$216000$m6oWWW9tR2wf$QR05C2iGyoGPadY6xtjQaq3McDMJOl6XMJyCvik92mU=	\N	f	cd22dba8-1329-48ca-9883-82555a419e5e	Rani			f	t	2021-09-27 13:27:24.022416+00			0	0	t	f	Rani	\N
2110	pbkdf2_sha256$216000$zKeouNmz5s4v$D2dUQWogx0YmIyhMYtBbYMUjp8TcpXbslQoaNVse3Ok=	\N	f	44ac472f-d06b-4245-89c6-402a1ba10499	Rani			f	t	2021-09-27 13:27:30.301922+00			0	0	t	f	Rani	\N
2111	pbkdf2_sha256$216000$Hj9uHFlEIFPE$Tqc5wadSmcI0y64r55PoyufT8lR6kSjc6umZM9XOluc=	\N	f	fa8362da-56ea-4383-8010-cad7945fb785	John			f	t	2021-09-27 13:27:30.572226+00			0	0	t	f	John	\N
2112	pbkdf2_sha256$216000$NLJzocqxGGpx$2QHQicHkGN2RuPp993RJqvNhvS0Zy/KHYk8y/8lRGI0=	\N	f	32fbbf74-3d6a-4d0b-9a8b-d09b29811d13	Mara			f	t	2021-09-27 13:27:36.172078+00			0	0	t	f	Mara	\N
2113	pbkdf2_sha256$216000$pnXYZHzVkIMM$Pcv0DYLnSL/ZTtlE+JK0E6UFQ4+PmzB8eTqs8r8ZKww=	\N	f	16eeb5d6-af47-47ce-9f11-ce068a31f84f	Avenger			f	t	2021-09-27 13:27:36.441855+00			0	0	t	f	Avenger	\N
2114	pbkdf2_sha256$216000$yQgLEWdXlqdP$2qh4ilm4BYCoyvSaTlrSwwxinYH8sIa9udUVwFBbFh0=	\N	f	a7a2366a-77ef-431a-9129-d4ddb953ae0c	Poker Raja			f	t	2021-09-27 13:27:42.501563+00			0	0	t	f	Poker Raja	\N
2115	pbkdf2_sha256$216000$sEZm75X4shRD$8dIZDzxrEfwviW7aM5oQr5lWcI1OibiE6zgPj5sfz7I=	\N	f	ebb7a687-0989-47c5-9aca-0e8ab7fade10	Poker Raja			f	t	2021-09-27 13:27:42.761476+00			0	0	t	f	Poker Raja	\N
2116	pbkdf2_sha256$216000$0cMycgZTMC1W$7f3QaEr8skiYngXsn/sK3KbDTMcGUFDFBQ18lcagi00=	\N	f	37e95523-9a72-402c-9673-8f2b9dd97d18	Number 1			f	t	2021-09-27 13:27:48.492551+00			0	0	t	f	Number 1	\N
2117	pbkdf2_sha256$216000$Kpf9I07sJL8v$7TQwT5dPXN/qUuf5Mja9HpzlsFds8Y5V0T12Twis36c=	\N	f	da2eb24d-b4e6-4c18-b6b1-cce42e83e0f8	Number 1			f	t	2021-09-27 13:27:48.752327+00			0	0	t	f	Number 1	\N
2118	pbkdf2_sha256$216000$9Mf8Gm3gWDNg$gDSxHERH8NcTL2N4EdJ6yTfvRKiGMo75qySvYV5QEfk=	\N	f	417feb11-4c01-437c-8ceb-b91c18d9dda7	Poker Raja			f	t	2021-09-27 13:27:54.61636+00			0	0	t	f	Poker Raja	\N
2119	pbkdf2_sha256$216000$l4g3LEpwQ3z0$m8qqToAIly39IsMg6wKggrRrCbMxBzJAuGDmgLG4rPM=	\N	f	22c21d0d-0504-49a6-b97b-22aeb16f4b72	Roja			f	t	2021-09-27 13:27:54.866459+00			0	0	t	f	Roja	\N
2120	pbkdf2_sha256$216000$1Qi7NuhnatgS$ZRQypoWdz6hY/WN3ufeNOcMnEgoXpF4XsaiK9GlMod8=	\N	f	4a983662-a4e4-475f-b7db-2556501ddba0	Raju			f	t	2021-09-27 13:28:00.642514+00			0	0	t	f	Raju	\N
2121	pbkdf2_sha256$216000$IR1BGdDLMjU9$xV+u8Ktzw+b6FUdw0HU7JiO7AZuA5KLj74P09PElqAk=	\N	f	38ccb1b3-cddf-467e-af54-f703cee2339d	Number 1			f	t	2021-09-27 13:28:00.902624+00			0	0	t	f	Number 1	\N
2122	pbkdf2_sha256$216000$Y5IHAxHTIsi3$CBvC/qGNs1oDQy3SLEaIpn/puK9HQysKvk7FjF4dbn8=	\N	f	e7478f78-a6dc-4b78-b8c7-491c6d24146e	Poker Raja			f	t	2021-09-27 13:28:06.626513+00			0	0	t	f	Poker Raja	\N
2123	pbkdf2_sha256$216000$VsoTJggdW6jS$3wjzX+eOEql3aoE54tLAoxAeyVUTnLuI64tW38uSGaU=	\N	f	275f2e9e-abae-4dc8-9cd2-f4127c8207a0	Major			f	t	2021-09-27 13:28:06.866289+00			0	0	t	f	Major	\N
2124	pbkdf2_sha256$216000$rPxmdRTryclR$QHiwG8Cq9F5a8OUkigyxy1LiXQTqnF5i5RgLgTkQXew=	\N	f	ef6293d4-bef9-4715-aa73-7979c484bc6f	Raju			f	t	2021-09-27 13:28:12.652172+00			0	0	t	f	Raju	\N
2125	pbkdf2_sha256$216000$3PQhUEtjZV0X$YV5Lj8dF9QGsQ44It3dDvfVO6XOjOYjSDh5kd3nmqU4=	\N	f	f72ca134-165d-4102-a64c-21387330fd7d	Roja			f	t	2021-09-27 13:28:12.91236+00			0	0	t	f	Roja	\N
2126	pbkdf2_sha256$216000$DtBXJwBWkAZm$9JL9NnIUJ8SsZG/e3uKY3qxUeRXbOUhGdH8Dk5zOuZI=	\N	f	44525eff-864a-4d55-882e-46042aac25f5	Krishna			f	t	2021-09-27 13:28:18.716483+00			0	0	t	f	Krishna	\N
2127	pbkdf2_sha256$216000$Di1m8HgXrpXE$4b+7THvvUqWH57j+IMoGoNElNPySitBCzRn9xpEo6RU=	\N	f	6d2f4392-6bb7-4b9a-86bd-be37e095bec6	Vijay			f	t	2021-09-27 13:28:18.95614+00			0	0	t	f	Vijay	\N
2128	pbkdf2_sha256$216000$slec2ZkU33E8$8itQ5FZ66EaH22afTa8fW/ntd7yhGMOD8Ces38QZETk=	\N	f	2b0d4b02-baaa-4e1f-be23-0ba0c189eda7	Major			f	t	2021-09-27 13:28:24.621505+00			0	0	t	f	Major	\N
2129	pbkdf2_sha256$216000$HjcM1aDgA3Om$1UMcrELv2P0mxWkZG/3qZsjsnxp8BAL4JY0Ka3RxoCM=	\N	f	c0f54622-ebc4-4a06-9e0d-c1fd7afc1639	Winner			f	t	2021-09-27 13:28:24.876166+00			0	0	t	f	Winner	\N
2130	pbkdf2_sha256$216000$XRv1R7J66ewq$nvPVwwO3VNyVDI7zmLKTQ7SbFh4hm06GewzhYOmF4gg=	\N	f	4da81c1e-3a09-4f13-9f78-f5d9ddfe49d0	Krishna			f	t	2021-09-27 13:28:30.696226+00			0	0	t	f	Krishna	\N
2131	pbkdf2_sha256$216000$DDcHyRzG8sXG$CAboWSbz2Y6UxK6P2BhFol23UjImhe6kbMsAKCOUnjQ=	\N	f	edf74594-af77-4b9e-b21b-b6be2aad615a	Vijay			f	t	2021-09-27 13:28:30.946444+00			0	0	t	f	Vijay	\N
2132	pbkdf2_sha256$216000$NVUPhsHgxDgv$zFmi4gv4uU8otdAsFOaqqWCMxkq5US4bosDHyK/HQhk=	\N	f	ddcdd87e-10bf-4b26-a335-857a30a250fe	Number 1			f	t	2021-09-27 13:28:36.622339+00			0	0	t	f	Number 1	\N
2133	pbkdf2_sha256$216000$K60IUYG8lCmw$x4nlm56rl/wQQSNp+EHN43mV2Ubz5Wo6jL06KuUubG4=	\N	f	3c5f3a7c-693d-4ccf-8b5f-7f6ea32e7490	Major			f	t	2021-09-27 13:28:36.882924+00			0	0	t	f	Major	\N
2134	pbkdf2_sha256$216000$7zkONd71ybxL$xf1rGNi5XhvJXkX54SvuN2eYElpA8x2pYUD5/dl0Kzk=	\N	f	6fa44f0a-c04b-4565-b101-de6ca8d20f1b	Hero			f	t	2021-09-27 13:28:42.545425+00			0	0	t	f	Hero	\N
2135	pbkdf2_sha256$216000$PzOVSGlUAx52$HdJjEl027YrdenoRM3uz54Cj9LXVW+FhDGWdqmsL/YQ=	\N	f	9f57581e-76ac-43f0-91a8-88c26ab1ed62	Hero			f	t	2021-09-27 13:28:42.785341+00			0	0	t	f	Hero	\N
2136	pbkdf2_sha256$216000$5is2dBsmXHcX$h7PNv9AeWWTTrp79jWtN8VcqpEXsBSpEgODA30mHa+Y=	\N	f	1df782b7-27bf-4592-971f-138f36a66d46	Akshay			f	t	2021-09-27 13:28:48.563091+00			0	0	t	f	Akshay	\N
2137	pbkdf2_sha256$216000$2ViCCO2dFJTj$TtTb7/eLiip3UEHsck+JYIi9Dj2RMun4MGQB0vixkyc=	\N	f	1625ac84-33ad-4cbb-a91c-46de87a3bce8	Avenger			f	t	2021-09-27 13:28:48.822336+00			0	0	t	f	Avenger	\N
2138	pbkdf2_sha256$216000$WvUigXNAa33U$gMUJxpjoUnajMa7xPa7JcbLc8LqnRXYzkU4QEKqzS6Q=	\N	f	171a0abe-c5f4-482a-899a-5cd5ea08acd9	Number 1			f	t	2021-09-27 13:28:54.592361+00			0	0	t	f	Number 1	\N
2139	pbkdf2_sha256$216000$sUyTFCCfupwP$57U/eggBwmrbe1z8nJQfoKS6eN31e9ybYyZiISAw9SE=	\N	f	559518bf-69e2-4ce9-aab2-cdfd16b15832	Loser			f	t	2021-09-27 13:28:54.862491+00			0	0	t	f	Loser	\N
2140	pbkdf2_sha256$216000$DWpdq6pujjiG$GQEPZJTA9wTlTBlms1IWqSvph3Su41K9LxAkS6Ha3+g=	\N	f	6a4e4766-dcf3-43b9-b7f1-b032c3f2d9e1	Avenger			f	t	2021-09-27 13:29:00.535423+00			0	0	t	f	Avenger	\N
2141	pbkdf2_sha256$216000$s5jFeUfmYh5m$eFPNVdUk9CUMBfSw2SfMv4VMMCPuTu5u2ak8IAGzHUc=	\N	f	e75ce7d4-a55b-457b-a09a-911e9cd88e80	Poker Raja			f	t	2021-09-27 13:29:00.765401+00			0	0	t	f	Poker Raja	\N
2142	pbkdf2_sha256$216000$vsFweMLKWiQo$NNlnxKNPAgfcl1nio0YZ3Ff/jbCGblV6ML6kALwMcjQ=	\N	f	147444da-a485-49a5-9d9b-e5e1e9905bab	Roja			f	t	2021-09-27 13:29:06.516165+00			0	0	t	f	Roja	\N
2143	pbkdf2_sha256$216000$7Bd0ZFE8QCWA$waG0GsgdE861IlLRRVXC9d1hGMIoqIHIVjmhVvRvXMM=	\N	f	cd2220d9-a25e-43c6-8649-0c172a75ca05	Avenger			f	t	2021-09-27 13:29:06.785947+00			0	0	t	f	Avenger	\N
2144	pbkdf2_sha256$216000$maprYoXzR2hr$hLbxYrIJI7yJxf4h7jUGPXfzDkDLxKOVu3I86jfvNhs=	\N	f	f9ae4ffe-88b7-46b9-b268-2eee168897a3	Diamond			f	t	2021-09-27 13:29:12.391403+00			0	0	t	f	Diamond	\N
2145	pbkdf2_sha256$216000$sD8eXdttBTb9$zcW4G1Ser94dP/T5AlPLjhGDaasO2uDQOBV28H86/Og=	\N	f	9e18bb6d-9f7d-41e8-a2eb-ce7ca490a077	Rani			f	t	2021-09-27 13:29:12.646489+00			0	0	t	f	Rani	\N
2146	pbkdf2_sha256$216000$VijssgFngwEM$khMN6F0jOSKf2IBvzxGXOOGWqWQpUrVfv77r0tyJcPE=	\N	f	ccef1b06-44ae-411c-a35e-2eafdce276c0	Avenger			f	t	2021-09-27 13:29:18.422315+00			0	0	t	f	Avenger	\N
2147	pbkdf2_sha256$216000$rhXCYMjnnHYC$JkjOZVm9Vgina6GrEzW0S3RjcyCE9tgfzIjjk1hCqaA=	\N	f	5481c595-b937-4c15-b565-36f539133fdd	Winner			f	t	2021-09-27 13:29:18.692612+00			0	0	t	f	Winner	\N
2148	pbkdf2_sha256$216000$E9wCgr1RXcvg$pE4CNxyn5hmbFIU5A8rPwkv7QrPXhsXYbaAPvIuCVbM=	\N	f	1ed48c44-d869-423d-9b05-ef4a076515e0	Vijay			f	t	2021-09-27 13:29:24.321361+00			0	0	t	f	Vijay	\N
2149	pbkdf2_sha256$216000$t8EkxwCU3scH$HhYx/GXT8v8IMWMCfovDHKzx0g5s0tkl4x0KNQyDzLk=	\N	f	1eb6a07e-7a9a-43c1-bb57-c37d35cdab01	Winner			f	t	2021-09-27 13:29:24.591385+00			0	0	t	f	Winner	\N
2150	pbkdf2_sha256$216000$I91rcOa8KFMI$5fdnmUL5B17fNMuYTx90An8vKJCc7XvNNcLCyZZW80o=	\N	f	27136c02-a0bc-4f16-82c5-94ce3f035fc9	Poker Raja			f	t	2021-09-27 13:29:30.346699+00			0	0	t	f	Poker Raja	\N
2151	pbkdf2_sha256$216000$YgJgMDwfb1nQ$FL8kgAN3aDW1WAAZdUTOR3TCbQFQEHTW/8awJGdo8gI=	\N	f	9b182239-e58f-4bc6-be63-243dfda31b55	Winner			f	t	2021-09-27 13:29:30.596309+00			0	0	t	f	Winner	\N
2152	pbkdf2_sha256$216000$NwvCxk8sVW0r$mR1hHuHS/iCetLCfx1Y97QlH+Z1V39sFFn1mDhLQ3cI=	\N	f	5f5b9a25-fd9d-43a1-b2db-45ba963c3b4d	Shivaraj			f	t	2021-09-27 13:29:36.297403+00			0	0	t	f	Shivaraj	\N
2153	pbkdf2_sha256$216000$lVbokYbcyDkU$udBiQXOznZJl7dcr74ePG6zRD6aPMPFJdnMW+WU1b00=	\N	f	39c68eed-2161-4c62-a9a8-226c3df279ef	John			f	t	2021-09-27 13:29:36.542667+00			0	0	t	f	John	\N
2154	pbkdf2_sha256$216000$1q8MW2bzlY89$3Q0fxaX115R/4gmPD9imnoMrSoVIZvTliLhydBSSrdg=	\N	f	9a7a457b-2b91-4636-a153-c86059bebd5b	Winner			f	t	2021-09-27 13:29:42.31238+00			0	0	t	f	Winner	\N
2155	pbkdf2_sha256$216000$QSHAVWNUNxqS$wtayva0d0hT6Zct+6WYoBqfIOJWcekiJ4i3OiHxKFnM=	\N	f	45c19fcb-0555-4acf-826f-0244c427a8fa	Gambler			f	t	2021-09-27 13:29:42.577185+00			0	0	t	f	Gambler	\N
2156	pbkdf2_sha256$216000$EEZyI54lmusJ$7v5GYjFqoAA/MBvW9cv03eBVavD1I+CNv8ZRrUSA0Lk=	\N	f	f85adfb1-c9a8-47c4-a826-c3a979588a81	Master			f	t	2021-09-27 13:29:48.201852+00			0	0	t	f	Master	\N
2157	pbkdf2_sha256$216000$9D1fSTJSri0D$lY47t0Q3duM9eKdxYu4Z7GyvwXe64NYumDrC5hFFsXU=	\N	f	58ea05cf-a65a-4ac1-9918-bbbdd538f1fe	Vijay			f	t	2021-09-27 13:29:48.471406+00			0	0	t	f	Vijay	\N
2158	pbkdf2_sha256$216000$8mmvsRr1Ct2S$OrfcNQoCuoqpd++nn9DJ1Rew9RLrTusKCZou8Ql/GfY=	\N	f	386f343f-72bf-4534-95e4-62d9b655c916	Number 1			f	t	2021-09-27 13:29:54.462305+00			0	0	t	f	Number 1	\N
2159	pbkdf2_sha256$216000$rdqgLHHQk7H3$ERGQl1jHAocE1VGb+/M09x1mWaLt87dHO5HS8gj+8LY=	\N	f	ec177ace-8ebf-4d5c-83d7-140a0b14f4b6	Rani			f	t	2021-09-27 13:29:54.722501+00			0	0	t	f	Rani	\N
2160	pbkdf2_sha256$216000$nppSqzLUzHLk$V3bJ7+eTAy5dKqxM7GlwhUZWJ0tZ1mlRXMS6VhUvgQE=	\N	f	7f94e323-8efa-4cba-8d13-6f90c6eedc79	Ruby			f	t	2021-09-27 13:30:00.356224+00			0	0	t	f	Ruby	\N
2161	pbkdf2_sha256$216000$ONUY3pGAo8ey$jjkVZGh/8qH1o6/RpRQQMzu9diTM6D23pU0C00LD0fs=	\N	f	06ed0c06-4b64-4ad9-b650-21c858a5125d	Vijay			f	t	2021-09-27 13:30:00.596111+00			0	0	t	f	Vijay	\N
2162	pbkdf2_sha256$216000$Q31gaYBvRmxp$BXzitK8/oaKODue+gPKUxdl+nVMuxJMS7tx9K/z29lg=	\N	f	bcb0c3c7-278c-4ec5-a2af-7eb04dfd86ad	Gambler			f	t	2021-09-27 13:30:06.322666+00			0	0	t	f	Gambler	\N
2163	pbkdf2_sha256$216000$RW81ZtL3O58x$V2JBiRjA5s05OeW2fiTJH+UP8y4lAS1GWtpIYddw6EU=	\N	f	a610e927-376d-4027-845f-0b971417f68c	Rani			f	t	2021-09-27 13:30:06.592518+00			0	0	t	f	Rani	\N
2164	pbkdf2_sha256$216000$Y3dhRxSsj6oU$8bZTUUn4lFkFu1FrO0JjBfO4bU7CCZdAGNkaNLqrxuY=	\N	f	6999ac6f-15cc-4206-9a7f-8dec0ae65b5f	Shivaraj			f	t	2021-09-27 13:30:12.40666+00			0	0	t	f	Shivaraj	\N
2165	pbkdf2_sha256$216000$WwBb8dldTMS4$YP1QwEHvnkSat/Lm9apuagDouRbqtP6oxJpvu38QqRE=	\N	f	ab3cafce-2e2a-425b-ab51-bf4b3391c524	Ruby			f	t	2021-09-27 13:30:12.666363+00			0	0	t	f	Ruby	\N
2166	pbkdf2_sha256$216000$dePHJY48V6DF$ZPSkwVEMJcXe2FamH4w1Iy1hXfpsJQLRq8wFhYWmOMk=	\N	f	a1d0a2cc-a2c9-42f7-aac9-dfa8a83c0cc7	Loser			f	t	2021-09-27 13:30:18.462338+00			0	0	t	f	Loser	\N
2167	pbkdf2_sha256$216000$UFfY5iO2wk7z$Ov1vBh4kkuQc1wUGG2nxfPsgd+1Vb0WeeqlqLAAWebg=	\N	f	5e518da5-cb26-48eb-9dc2-9329114b9025	Diamond			f	t	2021-09-27 13:30:18.732527+00			0	0	t	f	Diamond	\N
2168	pbkdf2_sha256$216000$fyQrsRaXa5le$UQmTcVVpFzIvVn5Kh/fzfsIPIr51hPRAcyFyVhUCUfQ=	\N	f	74c865b1-5c53-49c4-82a5-f2baa7ee44d8	Ruby			f	t	2021-09-27 13:30:24.346445+00			0	0	t	f	Ruby	\N
2169	pbkdf2_sha256$216000$qIorEgZq4fxL$ofoqSf1pVUdqM8F2kBhYbvRefspgvkBb9AnHyGWBXMM=	\N	f	e97281cc-798a-436c-b528-6f45a900df87	Ruby			f	t	2021-09-27 13:30:24.596492+00			0	0	t	f	Ruby	\N
2170	pbkdf2_sha256$216000$8ajvQRQWMJyf$+nes2YeqQefftgFFI/gwIeeyMVq0TxfrsOn+19oS5UI=	\N	f	87bd6b96-0293-4b5e-9d34-fadcb33a738d	Diamond			f	t	2021-09-27 13:30:30.483575+00			0	0	t	f	Diamond	\N
2171	pbkdf2_sha256$216000$1TrFQw3yUyeM$kcThgRBOaHFrNjxRB3ZeTG/WReXyidifbxEzlaeJwA4=	\N	f	cea77ab2-8ba8-428a-bf59-045aafa137f8	Krishna			f	t	2021-09-27 13:30:30.737283+00			0	0	t	f	Krishna	\N
2172	pbkdf2_sha256$216000$UbTA0icqDAA5$zaFSscS96i5XGXH0e/BOKjjJ4gMv23u/4ZMN0El4gmU=	\N	f	82af6984-2158-43a0-908b-3fabf02deed4	Master			f	t	2021-09-27 13:30:36.36609+00			0	0	t	f	Master	\N
2173	pbkdf2_sha256$216000$6ZiGuNXK7irO$xfHfwj9zLlN9so1KJ/eYqld9Qya5GRVtZWaOUkgk0BI=	\N	f	a1b12193-f421-4c03-866c-bd3b4f1c8bf4	Sheetal			f	t	2021-09-27 13:30:36.626472+00			0	0	t	f	Sheetal	\N
2174	pbkdf2_sha256$216000$MTLavpGn4yiS$03rzPk39B54QLpV6rIUSuZ+eC9Mm+rBPH+/4K/KvtT4=	\N	f	0cb0bb95-2470-4766-a427-cb7bb0420313	Shahrukh			f	t	2021-09-27 13:30:42.412738+00			0	0	t	f	Shahrukh	\N
2175	pbkdf2_sha256$216000$ZecbbAoU3dzt$sZ2O1alCA6gRHLkZwPJBX2umSv1tOgSNIIkpr5JLQw8=	\N	f	912b95e2-b6cf-4d33-b4d4-67c3cc4e9e04	Krishna			f	t	2021-09-27 13:30:42.672662+00			0	0	t	f	Krishna	\N
2176	pbkdf2_sha256$216000$CkDDinvAULHl$HPWhUUcaQvL0NVeLMS2XqiJ8i9QU/P4YnSBeQpDm++o=	\N	f	78055304-8a96-40ee-a7d3-cff1aada6127	Poker Raja			f	t	2021-09-27 13:30:48.286371+00			0	0	t	f	Poker Raja	\N
2177	pbkdf2_sha256$216000$EvcjLUo8Q3ky$tLlh8yIeSoVFS7Dt/raeI3BcXOiY2fDp/v19w8v2nrM=	\N	f	11be5455-40da-47fd-9850-6b625bedea06	Gambler			f	t	2021-09-27 13:30:48.536689+00			0	0	t	f	Gambler	\N
2178	pbkdf2_sha256$216000$Qcx5f6dpHw2K$BK9yev89HSsOwpJZFGoyrwP4JAVAy5sD6F8Qe89vnGQ=	\N	f	1da5655e-5c37-4abe-865e-a4cce5ca0b4d	Gambler			f	t	2021-09-27 13:30:54.442457+00			0	0	t	f	Gambler	\N
2179	pbkdf2_sha256$216000$Sv2Pz1HgV8nc$3/uP+FTu8Uu9tWAeJ/l79F0jvVBKFvZdpUVa1SKtlXk=	\N	f	649eb66b-4ea9-49c3-bf65-bf069ab3ce42	Raju			f	t	2021-09-27 13:30:54.702147+00			0	0	t	f	Raju	\N
2180	pbkdf2_sha256$216000$OrZAjcx1bOfR$t9lMZpMJcs1qYQdjFR7Hz3dhR3782JS2VYUnkrx7klA=	\N	f	c3e98bc3-06df-4c23-8a51-7896f98dcc35	Rani			f	t	2021-09-27 13:31:00.295641+00			0	0	t	f	Rani	\N
2181	pbkdf2_sha256$216000$v71pN4M99ypx$fIHZ/qgNtx680CG+vRQCSjxoxQttGuIcBy61JwkcHFk=	\N	f	c85e432a-4562-444b-8274-837c90264e26	Sheetal			f	t	2021-09-27 13:31:00.565832+00			0	0	t	f	Sheetal	\N
2182	pbkdf2_sha256$216000$v7Cy60WSS71B$OuKlwd0mv1Hw/Bw0T4ZTAtbc1rGpbjuU7UnXMReW0q0=	\N	f	39514db8-860f-4b64-b766-3374c2497801	Ruby			f	t	2021-09-27 13:31:06.345717+00			0	0	t	f	Ruby	\N
2183	pbkdf2_sha256$216000$04ZtaTTgr7Sc$MH6KjIVTjAQnR7Qs69NtHxmUt7OTkXdlaBxXz8zwEHA=	\N	f	f9a2893b-8b0e-4628-86c0-33cd88bc1a1a	Ruby			f	t	2021-09-27 13:31:06.605527+00			0	0	t	f	Ruby	\N
2184	pbkdf2_sha256$216000$QURIJwrjdyLe$WxZhjqtzkIBmEv8I5jYtb6B1lQCd3S9fxv+feKgT8XE=	\N	f	34220901-8050-41a7-ad9e-2b34cbb957bc	Rani			f	t	2021-09-27 13:31:12.432345+00			0	0	t	f	Rani	\N
2185	pbkdf2_sha256$216000$K2oeEzWnII0p$OUZflS1rDz5rQ1mV0Dm6+IRuTuxgWuQW98qTIhFQWqU=	\N	f	ccf94d8e-3e53-4929-90d2-ded3db824754	Number 1			f	t	2021-09-27 13:31:12.691805+00			0	0	t	f	Number 1	\N
2186	pbkdf2_sha256$216000$23pimZxgLrul$ilwkKi/4faLIyh2ONAc5fjOWOTHIvXm6ItqkjOWTltE=	\N	f	cc0d71e1-6eec-4316-8715-49f3549ce8f1	Hero			f	t	2021-09-27 13:31:18.402098+00			0	0	t	f	Hero	\N
2187	pbkdf2_sha256$216000$snH7H1BgqBBP$mROhachJMV3ij+7mXQAqjAQ/06zCdb/egLeSUeu19cE=	\N	f	0a176c63-0082-42e1-9436-51fdc4d60d8d	Mara			f	t	2021-09-27 13:31:18.682264+00			0	0	t	f	Mara	\N
2188	pbkdf2_sha256$216000$DngiJ1qXmInd$G9H1NMfVKRSJMmoQL0frhNpg4uuCADKuVVhNAXPYKwM=	\N	f	2ee8eaab-e4c3-4909-812a-b6a71eed59d5	Winner			f	t	2021-09-27 13:31:24.325704+00			0	0	t	f	Winner	\N
2189	pbkdf2_sha256$216000$c3EKeQfOjtVG$Bi29KF3h2/a98vIpdaJ1SO4P2qfmjxIJvfi9eTEevFc=	\N	f	f6c9eed3-f576-4ef8-9ef0-1de0928f1ed4	Gambler			f	t	2021-09-27 13:31:24.605756+00			0	0	t	f	Gambler	\N
2190	pbkdf2_sha256$216000$cehHGQ010zaq$bXdP3NNjWSSsAdFEVSiEig+I0tVPrAiTM2f2kU3fLOs=	\N	f	0f8a09e5-61ba-43ce-ac7b-797a4536b551	John			f	t	2021-09-27 13:31:30.342775+00			0	0	t	f	John	\N
2191	pbkdf2_sha256$216000$Nf67Bpz1N4Bl$dpspLWpCNW6OgOQCfXFSp0PCF4fw0gHm6Dcc0wy9a/Q=	\N	f	8f7e603b-6776-413e-b0b1-bd4dd9fce1f6	Akshay			f	t	2021-09-27 13:31:30.602394+00			0	0	t	f	Akshay	\N
2192	pbkdf2_sha256$216000$PnBOZ3Uij8Tg$WBClrTO7ZTCOn3qOJ38wVQzd7csK5mmEZfBa8j5ZyrQ=	\N	f	c6da4121-06d5-4d62-bfe9-4d8269bc9819	Sheetal			f	t	2021-09-27 13:31:36.265736+00			0	0	t	f	Sheetal	\N
2193	pbkdf2_sha256$216000$5TbCgqegMdKq$nlmwqkPJH6IhlBEG73Ic+YsnMDnxYe3rTegfIEJqTg4=	\N	f	cbeceee4-045f-4503-9398-ab8262c0b50f	Poker Raja			f	t	2021-09-27 13:31:36.505725+00			0	0	t	f	Poker Raja	\N
2194	pbkdf2_sha256$216000$sEfxEkQrkis1$qPUp7U2OqxSm47Y9uoClhjF8zc+/TxyXZ7scLE188h8=	\N	f	6c6be241-af56-4035-a5e0-78f9cf9bff65	Mara			f	t	2021-09-27 13:31:42.286642+00			0	0	t	f	Mara	\N
2195	pbkdf2_sha256$216000$L8f3ayaXD0ye$YMzGGYQ4cAuinvnUBRBjhpTTF1WSM3c2sTO2GWURmTA=	\N	f	b8af736e-313e-442f-ba46-6d788b152760	Mara			f	t	2021-09-27 13:31:42.54186+00			0	0	t	f	Mara	\N
2196	pbkdf2_sha256$216000$4LELy3xK6wYH$+8aHGKNDMyS8z+xFSDXUVS+EbfQTOGDmSx0Mj4jq5AY=	\N	f	dff6ec9d-f6a0-48fb-b7f8-1915e1d9af58	Master			f	t	2021-09-27 13:31:48.156421+00			0	0	t	f	Master	\N
2197	pbkdf2_sha256$216000$RbKRW8pULDdr$/aTTNtJSxbGVmOcq4Bj3unXDXK+lr8bECccijLw+mBU=	\N	f	fe1b49b2-d774-4176-aa84-29c154581c04	Mara			f	t	2021-09-27 13:31:48.396399+00			0	0	t	f	Mara	\N
2198	pbkdf2_sha256$216000$0Psv1MeGQwDZ$7qDHV4tt2bLpnisSowN1YuflBSV0QQ9oIE0IpgHXsK0=	\N	f	837096a1-5bf4-4f7a-b87d-436c4fadcf1c	Poker Raja			f	t	2021-09-27 13:31:54.185896+00			0	0	t	f	Poker Raja	\N
2199	pbkdf2_sha256$216000$SymOkzmllUwm$OpGr9kLn0SyPHL6rOiOsv7wjJBprFQbA+3Guq+lDvH8=	\N	f	738c5cc5-1ac3-4963-ab11-af2f9dbba55f	Shivaraj			f	t	2021-09-27 13:31:54.425603+00			0	0	t	f	Shivaraj	\N
2200	pbkdf2_sha256$216000$EIb7oy415HJB$nP1h4NY82+aXxycgVN0Xu9022zpCNy402A4W+5M/lhU=	\N	f	2fbbfca0-db49-4e6d-9e77-766cad346f30	Gambler			f	t	2021-09-27 13:32:00.142347+00			0	0	t	f	Gambler	\N
2201	pbkdf2_sha256$216000$dGFs5JwMztkA$3oSZQZjYXPki+py1Q49Vw4Kpqb4mbhaEfChvzp8I+vU=	\N	f	86cb5060-f6d5-4158-991a-29a0d193289f	Winner			f	t	2021-09-27 13:32:00.412509+00			0	0	t	f	Winner	\N
2202	pbkdf2_sha256$216000$1zBhdhI44skg$gQcwUA0yNPwNHffDrU30I+EHZRAOH9rfsYrB7S/YzZM=	\N	f	00630e7b-3100-49f7-81ab-b5dca1d62c71	Mara			f	t	2021-09-27 13:32:06.222132+00			0	0	t	f	Mara	\N
2203	pbkdf2_sha256$216000$KA2BHIgesCj3$bJcfKqqYdJxb2hnuFPDOb4mRrRUuyFYJRv7H4XHd9/0=	\N	f	8bc29072-3c13-493d-b67e-2f49bd0455a7	Hero			f	t	2021-09-27 13:32:06.477041+00			0	0	t	f	Hero	\N
2204	pbkdf2_sha256$216000$MFBIfOo9G16B$zC1a2m+4i7AhYJbTHf97J7HDB7tOlpjeQsoyWysfnzk=	\N	f	f5a9f147-a538-4222-99fd-3aee65071e6a	Hero			f	t	2021-09-27 13:32:12.292097+00			0	0	t	f	Hero	\N
2205	pbkdf2_sha256$216000$6m25OjJEORv4$nX4UdlUS1eCcdzm+jy+zemv863+k+nuLxww7WD9Gqc4=	\N	f	4800b815-d7c9-4b5c-adec-a441bfe0f20f	Diamond			f	t	2021-09-27 13:32:12.541985+00			0	0	t	f	Diamond	\N
2206	pbkdf2_sha256$216000$oweEpCr1n0cs$WhiXHojSxCXJ1NknDc0rmdACkOWXxa46YTqxaamDw2M=	\N	f	45d63909-89af-46db-83fa-b6308fb7f095	Shahrukh			f	t	2021-09-27 13:32:18.251838+00			0	0	t	f	Shahrukh	\N
2207	pbkdf2_sha256$216000$JOEs3PwKpiZG$bkSgIy9HoF7zQgqRCfAqwhb4fU3+EonI8vGD4Qq/hOQ=	\N	f	fb020315-f8f3-4070-b930-21c4719dbd8b	Major			f	t	2021-09-27 13:32:18.506159+00			0	0	t	f	Major	\N
2208	pbkdf2_sha256$216000$zjlrjuh5Ne2s$LrgcbNgBq61X2Ny76I54/VoCYKdiRII8CpnnVW+tCfU=	\N	f	7c353808-e94d-4036-bb4c-b959ca85a880	John			f	t	2021-09-27 13:32:24.146669+00			0	0	t	f	John	\N
2209	pbkdf2_sha256$216000$O5IFs9frzy69$jUpUtq9NA7DX3+zjOfIhlnaB1HMbZM0auT3Y+dxcgaY=	\N	f	9e3e526a-aca7-479a-b248-67d17d999bfe	Loser			f	t	2021-09-27 13:32:24.396785+00			0	0	t	f	Loser	\N
2210	pbkdf2_sha256$216000$jRxAPaJmg66P$zOXrwx74Plv3dObLgfjCa4Etqb00nqg4LJ0WEfcCPWU=	\N	f	11b49fb2-7c60-4909-9534-422a6e643a7f	Hero			f	t	2021-09-27 13:32:30.222262+00			0	0	t	f	Hero	\N
2211	pbkdf2_sha256$216000$9K6doiyL6OIu$YLBsn6rulRcwWsKfeGY1teoYU2LJKfhKF4WDTw/mEbY=	\N	f	0b6c5c00-6073-4c57-b391-e4f99a7340db	Roja			f	t	2021-09-27 13:32:30.502282+00			0	0	t	f	Roja	\N
2212	pbkdf2_sha256$216000$8M7zxgFPYwG1$0FHGBvfF1lULwgJZj8r39geQhshtEeMPRtTJAxS7u80=	\N	f	d4127912-83e1-4584-ab20-da3e0c2e37c7	Winner			f	t	2021-09-27 13:32:36.152558+00			0	0	t	f	Winner	\N
2213	pbkdf2_sha256$216000$CifKSlFiEhT7$lWUxPyMlA8Fjq7i0pJRMFbAiVWAwLNBicctWowpIMgg=	\N	f	3f3e5983-e427-425f-99f8-69b073cf0453	Major			f	t	2021-09-27 13:32:36.412332+00			0	0	t	f	Major	\N
2214	pbkdf2_sha256$216000$z4dqWRiCUXS8$4ZqmJXl0lutlGBISX22LHHzXMeBDs5c4OvaD5OyY0fw=	\N	f	07e2760a-d561-4095-842a-4d26d44d10e7	Hero			f	t	2021-09-27 13:32:42.137315+00			0	0	t	f	Hero	\N
2215	pbkdf2_sha256$216000$xuBoU754Gg2x$zB5xuzc/ixQSUW7Q7evJktgLkNkaa0yaIpVBrT2YRiU=	\N	f	50895f23-f517-4396-ac4d-5d8634dcc5c6	Ruby			f	t	2021-09-27 13:32:42.39221+00			0	0	t	f	Ruby	\N
2216	pbkdf2_sha256$216000$JFc1SwejEfSB$u5N6qTsG3XTGeLJEOCPum6VvoZz52Rxo872ZXckL9eM=	\N	f	953d72e4-a0a2-4cbd-9f04-eaa04b7f31ec	Hero			f	t	2021-09-27 13:32:48.005898+00			0	0	t	f	Hero	\N
2217	pbkdf2_sha256$216000$nxK120CyeVBU$+0dZHNMuTH7cCWs1/OPWiSFIsFmjITXYsjBBVn72Bjk=	\N	f	80e51839-40d3-48f5-93d9-6647407fe390	Akshay			f	t	2021-09-27 13:32:48.255665+00			0	0	t	f	Akshay	\N
2218	pbkdf2_sha256$216000$8MQxRNvUGlSK$VDSZgEF81RYhCuhq9O3iBxwPzsoAB0HcmAEo4gV+2FI=	\N	f	deaf5f22-fd9f-41dc-8273-224cf0fca0cb	Mara			f	t	2021-09-27 13:33:25.692488+00			0	0	t	f	Mara	\N
2219	pbkdf2_sha256$216000$mWqXh0IcyrMj$1rb6EYPOkaAOWaluA8i3bUdY76Wa1Rk9BuQ/LwkH+nU=	\N	f	b2ac4fcc-2b3d-4a42-aa9e-de3253868f89	Krishna			f	t	2021-09-27 13:33:25.952653+00			0	0	t	f	Krishna	\N
2220	pbkdf2_sha256$216000$xb6LO0CspgLY$k+sGQ+XegKubw+7RZ4BoVRk/E2PbMWMcRjxQInhOZDI=	\N	f	bccd5e7e-5b0b-4632-868d-71d11b114dc7	John			f	t	2021-09-27 13:35:14.01272+00			0	0	t	f	John	\N
2221	pbkdf2_sha256$216000$1Ft3GWffLos1$IdM/9nlQJOQ7ZpiqWH6+Kx6AfBex75iU0unhq2zHxmA=	\N	f	0b6542f4-34a3-4718-b4ec-b11f83eb232b	Vijay			f	t	2021-09-27 13:35:14.512481+00			0	0	t	f	Vijay	\N
2222	pbkdf2_sha256$216000$wgfdq7hmKQVR$tvy99UJBYutagMrWXxJ06XlJKR+TFTLE/ZpKAj1IJjA=	\N	f	7f8eef17-b177-4bf6-aa02-ec49966867d7	Poker Raja			f	t	2021-09-27 13:35:56.762507+00			0	0	t	f	Poker Raja	\N
2223	pbkdf2_sha256$216000$ZU86hQtxIs4U$l/cGwVSmWAHYc+uqK8sioP6nTHwdgiB0FMROyEgYG2A=	\N	f	1602c91d-9794-4695-a631-b802b8eae643	Raju			f	t	2021-09-27 13:35:57.097573+00			0	0	t	f	Raju	\N
2224	pbkdf2_sha256$216000$p6NfcZNEIHFk$X2GWmn4WEV+DcMKHUU9sWgddQrNKCpDwIdrxFlamvvQ=	\N	f	bfeb63d1-e0ff-4cc3-87ff-5d249b523fb3	John			f	t	2021-09-27 13:38:13.362436+00			0	0	t	f	John	\N
2225	pbkdf2_sha256$216000$cyyQF3AXCwNT$KC5m8DFJiXPKpk5w4/DTqqEe6X+xFQ+D/p4jkChoXKA=	\N	f	8a48796b-cd9b-40f2-94d2-eb6784ef474b	Major			f	t	2021-09-27 13:38:13.712808+00			0	0	t	f	Major	\N
2226	pbkdf2_sha256$216000$9XMLipKjqnzd$wRjkNqq1oW5WRpZxNUhMalqAs96tj0yTlJap3C5CqkA=	\N	f	6780bde9-75ff-455e-b37c-1727b4b10f8e	Sheetal			f	t	2021-09-27 13:40:15.172737+00			0	0	t	f	Sheetal	\N
2227	pbkdf2_sha256$216000$UB6ostiadt7e$s2DFzasP5jQMzjQptNu3xm/6NHv41bdWeK9O0tWO7ms=	\N	f	cd34a831-0d26-4235-9a07-469019998e67	Krishna			f	t	2021-09-27 13:40:15.44275+00			0	0	t	f	Krishna	\N
2228	pbkdf2_sha256$216000$jAfii5JdYP5b$QhRQwUOxT0+fAnv0KrXZdtfFDlUSMwp0c7S3JWDtIZ8=	\N	f	493c5af2-26ee-42bb-b77d-f97de3a8f40f	Rani			f	t	2021-09-27 13:40:35.446369+00			0	0	t	f	Rani	\N
2229	pbkdf2_sha256$216000$Meii1KN1TwRD$wfW3wgNfQmNUYPzjhdQKgTXucFEP850aFuGBFAGE25c=	\N	f	bc303e45-c262-4fe8-96d1-5bb4c457f683	Number 1			f	t	2021-09-27 13:40:35.776586+00			0	0	t	f	Number 1	\N
2230	pbkdf2_sha256$216000$QswgPtZWAEoV$5VaR1JFHLthxln1DlsirIc+1lAOfjAUzsBqiBLcgiKE=	\N	f	754e05be-79d2-440d-b534-d10941b40337	Shahrukh			f	t	2021-09-27 13:44:32.722884+00			0	0	t	f	Shahrukh	\N
2231	pbkdf2_sha256$216000$jo7e5jy2mlr1$cPaRzkjWne9SLz5Wn1r3SUYJGp7oG5vh9Ivi2hQ1qj0=	\N	f	96942c97-edfd-4789-992f-80dc9fc5a249	Akshay			f	t	2021-09-27 13:44:32.992829+00			0	0	t	f	Akshay	\N
2232	pbkdf2_sha256$216000$GJzq44FAmHWY$3+iRDrxYuUv8ImbqyCpL/7t7C3B4LAqXhQ23I+7qC2Q=	\N	f	a62c1fbc-1ba1-4cfc-95e0-4d98e3f7c767	Shivaraj			f	t	2021-09-27 13:45:35.906156+00			0	0	t	f	Shivaraj	\N
2233	pbkdf2_sha256$216000$w3z82L5pAFKm$kFhU6xDE8DSrSKUIE1bd2jAaytTcv6k7aaVoeLaOowE=	\N	f	7bbfc844-0b81-41f7-9563-fa9972f3efb5	Loser			f	t	2021-09-27 13:45:36.206241+00			0	0	t	f	Loser	\N
2234	pbkdf2_sha256$216000$uclHMDTPzP1t$ot+EL5SUgGc1F+Q+Fhv7Fh8aVGrHnEOUdb/q6Smu2WM=	\N	f	dbf2f556-6753-414f-88d3-6631c9c3516d	Diamond			f	t	2021-09-27 13:47:45.076297+00			0	0	t	f	Diamond	\N
2235	pbkdf2_sha256$216000$fHi2BQfr7D0w$UuOmI/fByxRaj7RTWZHCDykePnCpwAG6FqmEDnkQZ6s=	\N	f	6085deec-ce0e-42e1-8d57-3b67fab048ad	Ruby			f	t	2021-09-27 13:47:45.315912+00			0	0	t	f	Ruby	\N
2236	pbkdf2_sha256$216000$ey0wXrjukIAZ$Sz0qyqe2V3+HOigzcXkpNmNaHv+ngFFg/PkylvFEOPc=	\N	f	9c0db805-9530-4f04-8797-ce2dd2a704e7	John			f	t	2021-09-27 13:56:10.570951+00			0	0	t	f	John	\N
2237	pbkdf2_sha256$216000$irErTdVx49ye$3HdsnEozbl2Pgqv1ib3KepwiIqu8R5OPAKXpAnGVdPQ=	\N	f	4f87c229-b39f-44c7-8ec9-690be0569907	Gambler			f	t	2021-09-27 13:56:10.861286+00			0	0	t	f	Gambler	\N
2238	pbkdf2_sha256$216000$2H8CVZQIJKd9$P7kbM4Q1QDXgtL2NLtOIVauaAwZSirlJU1jGIz7gA9I=	\N	f	4bbb6693-9fe4-48a4-8681-cbae0728c880	Hero			f	t	2021-09-27 13:56:39.99138+00			0	0	t	f	Hero	\N
2239	pbkdf2_sha256$216000$2YTGpXcYTfuz$WQ5A7UFM7MC34HlgLvI/Q1t7U8dG3iSMdAPR5UzzYRs=	\N	f	62b12c78-a108-4b40-8c24-3d64cc92eae1	Hero			f	t	2021-09-27 13:56:40.251628+00			0	0	t	f	Hero	\N
2240	pbkdf2_sha256$216000$oGebwxK22VfX$J8/Hrcj1H+0t1jyQqxutqNW02ilkvKEnqnfDNDTLxj8=	\N	f	82b75c41-8ce2-4ed4-90bb-c0b8dffc3807	Master			f	t	2021-09-27 15:04:21.295294+00			0	0	t	f	Master	\N
2241	pbkdf2_sha256$216000$yd1BOXvENCVy$c74r8M90odlUQsAsJMsaDuilQn3JUHbGRiewS20tSHM=	\N	f	ffa1748b-7cd6-460c-b40d-3340f4801b6e	Loser			f	t	2021-09-27 15:04:21.535401+00			0	0	t	f	Loser	\N
2242	pbkdf2_sha256$216000$rt16zKmzE6vi$945Cd9R+sqz5Aj/AX/8PVpUCGIVcM7s5PsaLE3jPrTg=	\N	f	0d90a12a-49fb-46a3-9964-ee1a838d62e8	Number 1			f	t	2021-09-27 16:41:58.332419+00			0	0	t	f	Number 1	\N
2243	pbkdf2_sha256$216000$d3fLjRIHAR2s$gYLqX4IimH3o1dczvq6GSSYe56HawWSi4MJR6LOt2Pg=	\N	f	9c108f0a-4f9b-473d-a4ec-cbbcb669d6ad	Number 1			f	t	2021-09-27 16:41:58.538391+00			0	0	t	f	Number 1	\N
2244	pbkdf2_sha256$216000$czUeW8WHxGYy$7jtc9rI7qtPyz0BI/tOFAW0tptTP04a78iuOHZV9ZbU=	\N	f	82d15215-bfe1-4b58-b332-849c7bee47ce	Ruby			f	t	2021-09-27 16:42:03.266976+00			0	0	t	f	Ruby	\N
2245	pbkdf2_sha256$216000$jmdyHYcLMrlx$la0RYKRAkmXBkMfbyuZOYNdjC4HPW15aMw8XvKACdgQ=	\N	f	b1786a80-058e-4b88-bd7e-3b235bd4868b	Akshay			f	t	2021-09-27 16:42:03.465081+00			0	0	t	f	Akshay	\N
2246	pbkdf2_sha256$216000$3Cn9egnPzmOr$toaB+6SihPtoarmMvdBmvSkFqE5F1Ok4Z7AsC9raAKo=	\N	f	5fc93d4b-2a32-44f3-8728-02ba1d9eb803	Ruby			f	t	2021-09-27 16:42:08.209143+00			0	0	t	f	Ruby	\N
2247	pbkdf2_sha256$216000$EPwk9ZTDvO3F$dz7amQciSzRatFfXXB9OIl6zYzT6EDNTpgsjwbAOrl0=	\N	f	f95d93f1-baac-4024-99ba-8056d51eca6c	Rani			f	t	2021-09-27 16:42:08.403326+00			0	0	t	f	Rani	\N
2248	pbkdf2_sha256$216000$C4lneCfbArkl$VobRsqOhSdqK5x4G3T4/CEDaVWi3rRDvnUJNBTA9dxc=	\N	f	cf57a225-15a3-4b5f-b861-d0ded3d61ac5	Diamond			f	t	2021-09-27 16:42:13.14168+00			0	0	t	f	Diamond	\N
2249	pbkdf2_sha256$216000$2wPCzUJSR0si$Xc58aTXJfIvqXPvwil17cNPcaxaWLmjVlA5++2vZh2M=	\N	f	62f330e0-3222-48b7-b28a-cf7371488653	Mara			f	t	2021-09-27 16:42:13.338464+00			0	0	t	f	Mara	\N
2250	pbkdf2_sha256$216000$WMpHXPuqczMs$/J7uIPI2iqk5fa4bhFgyLRKOJfBYKpmnvRxAM5eCNBY=	\N	f	ead5a30b-c1e6-4841-b44a-2b34c96bccef	Akshay			f	t	2021-09-27 16:42:18.063547+00			0	0	t	f	Akshay	\N
2251	pbkdf2_sha256$216000$KgeNXeVlf7Eq$FGMWttMXslYoMpcgrDfzh8KzHZ3YqBcy6+q6N+hp82g=	\N	f	ae87177f-4d03-4fe1-9de5-ea7c2ed73504	Raju			f	t	2021-09-27 16:42:18.254443+00			0	0	t	f	Raju	\N
2252	pbkdf2_sha256$216000$GLRJmVHpxiy6$fi7Spfc/c9L65F05ny5vPT0UFUOHjFmdFjWPJQI30d0=	\N	f	6543f689-61c9-43d3-9de5-f0f243c89814	Rani			f	t	2021-09-27 16:42:22.966578+00			0	0	t	f	Rani	\N
2253	pbkdf2_sha256$216000$04y0AOjiJcK5$VKArprQAPq4EQ3hS8PH1ZRyfkAhtRzQpd+4KDj1BF5Y=	\N	f	d2e19fd9-ecd2-4268-8a1b-4bad82dd4320	Rani			f	t	2021-09-27 16:42:23.171858+00			0	0	t	f	Rani	\N
2254	pbkdf2_sha256$216000$kMFGMEuOpcKn$1iTSM178TxoHEYuVcFP9xHQNvWOSnO751OLDL7l2Mtc=	\N	f	9a9c581b-ad47-4d2c-b30d-0cd4ec206015	Shivaraj			f	t	2021-09-27 16:42:27.888654+00			0	0	t	f	Shivaraj	\N
2255	pbkdf2_sha256$216000$pFImZZGngdlE$V7nFoQRgJ/DGGHMTJ6BPNKMEK3I+0twCsPrb9cAIAr8=	\N	f	9a3b302c-a331-4f49-b269-f4dc7db62461	Mara			f	t	2021-09-27 16:42:28.079247+00			0	0	t	f	Mara	\N
2256	pbkdf2_sha256$216000$sJZj3qP9LQhP$60m6B5DVUdKwAzdoHmR45w1nL+fXQ+wAZZT7FVFmbGs=	\N	f	cf6f939d-3785-4553-8d61-baee2337c247	Poker Raja			f	t	2021-09-27 16:42:32.815119+00			0	0	t	f	Poker Raja	\N
2257	pbkdf2_sha256$216000$fqOXfkezQ5IQ$j7Y6MauDBSlfKQZARa181CZLmUARZmUikEWKDsYaWeg=	\N	f	633d45c3-59dc-4827-a222-296136ffd159	Ruby			f	t	2021-09-27 16:42:33.009705+00			0	0	t	f	Ruby	\N
2258	pbkdf2_sha256$216000$kjkIrtZHucnb$rSmSdaTZtmJFy9vSd2JK4rCyAaxtCAL7/OnHEk/UaV0=	\N	f	98472240-aefa-445b-abe2-348c6b7a23c0	Shahrukh			f	t	2021-09-27 16:42:37.753587+00			0	0	t	f	Shahrukh	\N
2259	pbkdf2_sha256$216000$a4QjyymGEYyC$9bbbB6jSylbTJ/Of7Mp36bdUXTTJLKbSaY+/wvki4rQ=	\N	f	e2a1e6f8-47a2-440e-a547-2b54ddae0f4f	Gambler			f	t	2021-09-27 16:42:37.945089+00			0	0	t	f	Gambler	\N
2260	pbkdf2_sha256$216000$ND1OkSGXGvxn$4Vfr57DDl7nmM/90OQVh330+svwe3U95Ptq/Qrf3Edw=	\N	f	6de9495d-9356-41fc-b3f6-3ae2f7decdda	Gambler			f	t	2021-09-27 16:42:42.71522+00			0	0	t	f	Gambler	\N
2261	pbkdf2_sha256$216000$jeVHBS1rcJnB$a1sHy9V3TzuEXuhTrnHpj0LWJHVrQhoH+bv81c58kII=	\N	f	e0ed97d9-0c6a-4517-981c-f8a583b73646	Gambler			f	t	2021-09-27 16:42:42.911889+00			0	0	t	f	Gambler	\N
2262	pbkdf2_sha256$216000$brDE2DqdQPWH$WKOy1/IuLxHCV67gK04JS9NjiNcOAotyTlrRevzTEDA=	\N	f	4c279ba3-c3ca-498b-80b1-c8930af080dc	Mara			f	t	2021-09-27 16:42:47.610313+00			0	0	t	f	Mara	\N
2263	pbkdf2_sha256$216000$4d5YS6Toikfc$jwf5ouxzhvxSRswuoEhTTZDFThEIZ+Fp1dy8LdK9yIo=	\N	f	531f01f4-feee-46cd-9036-9b65a12d7a6b	Major			f	t	2021-09-27 16:42:47.80869+00			0	0	t	f	Major	\N
2264	pbkdf2_sha256$216000$CXARNGRebudu$+I3J6fyp7wa5P6ZZpwBxwrJwusRcTkh7mqjvVXUzpUk=	\N	f	71065f27-aaef-4d6f-8063-01a43ae0fc07	Avenger			f	t	2021-09-27 16:42:52.544786+00			0	0	t	f	Avenger	\N
2265	pbkdf2_sha256$216000$PJePW1yRX6KN$lAREUVHaJivlrYI2xaImwYY7tZX1LgxLNTjP9KQTgKE=	\N	f	1eacc6f0-10fa-41ac-af46-c1c863719330	Master			f	t	2021-09-27 16:42:52.736478+00			0	0	t	f	Master	\N
2266	pbkdf2_sha256$216000$kODvNyBxuxh9$Yitm+mvbqZx8VBNMAuK3UjWuE6MaS10q4K+JeZJG7A8=	\N	f	1fc68dbc-378d-4a79-8189-9369bfaebbbf	Diamond			f	t	2021-09-27 16:42:57.473919+00			0	0	t	f	Diamond	\N
2267	pbkdf2_sha256$216000$CzaHKlE88O6K$MMHDH8sb9jmbYb7uuDBz+0jo22Z9nF+5TinnPXRVCxM=	\N	f	0d08aced-7f84-4265-a9da-7a4454a83fb4	Avenger			f	t	2021-09-27 16:42:57.666569+00			0	0	t	f	Avenger	\N
2268	pbkdf2_sha256$216000$EOSSBAhf4F4w$WOTuDYmdS7tAyhQFYrBGbuht6lSKpyZ1JCbj1ZWOuHw=	\N	f	89de460a-2fe5-4aaf-8c08-ea0c7175cc51	Hero			f	t	2021-09-27 16:43:02.395552+00			0	0	t	f	Hero	\N
2269	pbkdf2_sha256$216000$gcG7Ww00PXcE$E0RP2e3eWPH5WwCrr4JhXN+pK5cAsMlkk4cnZTJXI78=	\N	f	e126fbe8-c00a-4eea-92b1-801950faf5ed	Shivaraj			f	t	2021-09-27 16:43:02.587622+00			0	0	t	f	Shivaraj	\N
2270	pbkdf2_sha256$216000$Nt9wq4IYAdKj$1Ib6EvpFPd7FtosI9wE+u4P49wmGfS4p2H6EL/63cnk=	\N	f	f4860b74-0aef-4f50-bc7d-eb85e2602df9	Master			f	t	2021-09-27 16:43:07.334451+00			0	0	t	f	Master	\N
2271	pbkdf2_sha256$216000$rnUuEMa2c0NP$gKoPZanXV0JK5BIBxdEb2EMQWCsDzaJGB3BHYRPFC0Y=	\N	f	883184a7-31de-4b0b-8ac6-8c96b8e0e570	Vijay			f	t	2021-09-27 16:43:07.554389+00			0	0	t	f	Vijay	\N
2272	pbkdf2_sha256$216000$b4KSxEWQider$zwyDYrIubWHYn/eu9EVkgM/V6NunUNjr3pPPZr2L+jM=	\N	f	d39cf91d-c827-49f1-a25e-1f32df0c9bb4	Master			f	t	2021-09-27 16:43:12.265149+00			0	0	t	f	Master	\N
2273	pbkdf2_sha256$216000$FWl0CgHTERpE$HB2Dhx5Ry1Oy3CMHLpoaQKS5EOd4nhrPSAwQmOtHxB0=	\N	f	81fe8887-3996-49e8-84e2-722f12691e23	Poker Raja			f	t	2021-09-27 16:43:12.46321+00			0	0	t	f	Poker Raja	\N
2274	pbkdf2_sha256$216000$DKXTU9ChyWDJ$sftxTl1wXZ0ipvRhh3ZhMvyCJGxteqNZmfIYlso4M+w=	\N	f	f6929959-1103-4513-b663-724e2ea7e217	Ruby			f	t	2021-09-27 16:43:17.204628+00			0	0	t	f	Ruby	\N
2275	pbkdf2_sha256$216000$w8xxUjdYGVws$0kWwSO3xvv+3eAvqHH9o5eIT+sHndKmB+Y7DBWPmZK0=	\N	f	0e0d61fe-dcb7-4ce3-afea-93a0a09492c2	Ruby			f	t	2021-09-27 16:43:17.395722+00			0	0	t	f	Ruby	\N
2276	pbkdf2_sha256$216000$Ij2r5IWqHeGJ$ouVmBCiWFqCJL7Dyu4iXYioTq3KpLu/63+hjGh1yVzk=	\N	f	f6404ec0-2dd2-40b6-89c4-1667f971cbfd	Major			f	t	2021-09-27 16:43:22.106504+00			0	0	t	f	Major	\N
2277	pbkdf2_sha256$216000$xXqVnp3WvZOo$AZ/NICwCTFpM96ZiyjrAVtTaIRKFBZzVIPNhm7yEr3g=	\N	f	1c882744-1389-47c7-a896-8d8dde2c1c27	Mara			f	t	2021-09-27 16:43:22.297402+00			0	0	t	f	Mara	\N
2278	pbkdf2_sha256$216000$HPMpSv5UNIYj$Jl1vZw9PKrqBdXjgjGWnNQOre72DrHCglPBtir0RUwc=	\N	f	a1ceeb7f-fc25-4b85-aa20-6f7eb8e493e7	Avenger			f	t	2021-09-27 16:43:27.020762+00			0	0	t	f	Avenger	\N
2279	pbkdf2_sha256$216000$OBWB226HDDfA$9UOk2mIt9yLtnEWo7stwCIRLrZH3aCcmRee1HCyPCBk=	\N	f	e81b0124-fe4e-42fc-bbd8-6820c9349581	Avenger			f	t	2021-09-27 16:43:27.21383+00			0	0	t	f	Avenger	\N
2280	pbkdf2_sha256$216000$vvxkX89E3h20$LPLrWMG0v5+RB+EIbKU/CKr0S7TXOjsct9Vb5MI5qRs=	\N	f	61c9748e-61ca-4ff9-8410-8c652d1b52d4	Krishna			f	t	2021-09-27 16:43:31.941749+00			0	0	t	f	Krishna	\N
2281	pbkdf2_sha256$216000$D3sZ3d9HOYLQ$SFiE3ppZCjJol6/iHMbEewlIsooEbKzvdm9yjrl5w3g=	\N	f	b5d65002-2376-489f-892f-95e94ede57f7	Ruby			f	t	2021-09-27 16:43:32.13934+00			0	0	t	f	Ruby	\N
2282	pbkdf2_sha256$216000$OXxN9fyzjLqm$/BJ92nCD+fkeCPBCWkN929QgkLkF87eDkSjCUmEbqQs=	\N	f	896965d2-1c6c-436c-8bc5-6cce3f3cb198	Mara			f	t	2021-09-27 16:43:36.868548+00			0	0	t	f	Mara	\N
2283	pbkdf2_sha256$216000$Bm752qbgtNaT$nbDoRpXAfHfs+jy1rANI4oFj2yYvHZokKQBsVWw8ryY=	\N	f	d8ca95a5-1c1c-47c3-90da-ac12b5dfe8d5	Loser			f	t	2021-09-27 16:43:37.062136+00			0	0	t	f	Loser	\N
2284	pbkdf2_sha256$216000$Xl6Y5cKZxwrU$zX9KJkociN3kZ+dwkQH59nnFTE8N5HqY3ydCB5RmzvI=	\N	f	3546312b-8489-492e-925f-a224d9ff476b	Loser			f	t	2021-09-27 16:43:41.781571+00			0	0	t	f	Loser	\N
2285	pbkdf2_sha256$216000$qkKesFkNOrrr$3RZGmDtRbKsENPQj9dBbgX8K/E46H/o9mN0XjpVlYpA=	\N	f	9db2def0-825b-4470-b6f8-cee4ed7a238a	Gambler			f	t	2021-09-27 16:43:41.973976+00			0	0	t	f	Gambler	\N
2286	pbkdf2_sha256$216000$qHAMoOsBKJ2w$OH8mOeYZc9t0WQnziYvNDE1wwGoiVG4IuHnyl4nLZMA=	\N	f	20e6a52d-607f-457b-a515-905b9af01fc1	Winner			f	t	2021-09-27 16:43:46.712684+00			0	0	t	f	Winner	\N
2287	pbkdf2_sha256$216000$FBnn2eWUdsvG$qDPRhPIPAgiunwGi3qQ5grn0ZwBRs6njlarAyxlhl0A=	\N	f	725ef583-ed1b-4c6c-9c22-47789392de39	Sheetal			f	t	2021-09-27 16:43:46.908478+00			0	0	t	f	Sheetal	\N
2288	pbkdf2_sha256$216000$12vvTlyxtZFu$D/GmFTmHT+pcF0MxUe0vwRW7MuneJQgf8fVqNE+NIXM=	\N	f	046f83ab-0397-4c3a-b961-a5c9b774961b	Mara			f	t	2021-09-27 16:43:51.641024+00			0	0	t	f	Mara	\N
2289	pbkdf2_sha256$216000$Xpv7p4SBIqdq$iZVXiN1vLqe3Urhqjle0bxDExO4z5MIAuc7Y0dvcgP0=	\N	f	957b9670-9f9a-4b68-91d5-f67f6171ce93	Krishna			f	t	2021-09-27 16:43:51.834981+00			0	0	t	f	Krishna	\N
2290	pbkdf2_sha256$216000$QAU6Qa25kBWA$RRskxYjHgH8sFdSw9LUP9CfqEZ1Uw+oh/PMactY58hw=	\N	f	b605ca30-367c-40f5-9753-ad9c95bcd8b4	Loser			f	t	2021-09-27 16:43:56.609086+00			0	0	t	f	Loser	\N
2291	pbkdf2_sha256$216000$ZiGmR4oBkgVO$PhOa5RhFH+jbzzEg/qHUr8hbPQn58BsO/a0j4rqwlxE=	\N	f	7508b350-e8f9-4921-818d-dbd626ea9501	Gambler			f	t	2021-09-27 16:43:56.799771+00			0	0	t	f	Gambler	\N
2292	pbkdf2_sha256$216000$ce2Sav7Kjjsj$NINqSjO57cklcNW+o766RQlzH6TYbjmS7/KGG9M/n5k=	\N	f	9c7051c0-850b-44e0-8d6b-0b35aaf83048	Vijay			f	t	2021-09-27 16:45:38.830102+00			0	0	t	f	Vijay	\N
2293	pbkdf2_sha256$216000$cRH9wCZOZUop$2JMJbzpZeg6su1qGra/xRdo3Eyk+lXFrBHs45L+JRB4=	\N	f	7e7a4516-7d46-41a8-83b7-f4ac585eca90	Poker Raja			f	t	2021-09-27 16:45:39.022212+00			0	0	t	f	Poker Raja	\N
2294	pbkdf2_sha256$216000$cKRTCRuxq3wI$1MUFk6UDKql+WfrBBJo/XhEx9dJeQczAhbZ02two1ec=	\N	f	bdd295e7-690a-42dc-983d-ae0599fcb9dc	Vijay			f	t	2021-09-27 17:31:28.818255+00			0	0	t	f	Vijay	\N
2295	pbkdf2_sha256$216000$uY3S0oFN3ybF$ovl7ON7UteFa+1aMGa+KWJ9j1B+XhBO+7KDsHACtxi0=	\N	f	9f454ce4-3881-4411-9702-5db6319c03bd	Mara			f	t	2021-09-27 17:31:29.023841+00			0	0	t	f	Mara	\N
2296	pbkdf2_sha256$216000$EWkhNLRXsAGE$Og2+VvjO3cFETILkRMybh/RLsWPcvvAqC6oDe/v2x7k=	\N	f	d2f02feb-2ce2-41b1-929d-2ded2aafa07f	John			f	t	2021-09-27 17:32:43.843651+00			0	0	t	f	John	\N
2297	pbkdf2_sha256$216000$xk7wVLQDTW4W$LyUbbWkMe7oOIqqLXRiJHcDx0yR6Xg4QM5R5RWmOGyc=	\N	f	35b938a8-a103-4a63-85b7-f2004a4e6ccd	Diamond			f	t	2021-09-27 17:32:44.03822+00			0	0	t	f	Diamond	\N
2298	pbkdf2_sha256$216000$MlIIZ4he6IDd$7T5urEH7IoDQeVyPM4XrDmlldlSrMAenVCniDpgpGsU=	\N	f	5fd12f13-54fe-45c5-9400-15b82fff464b	Gambler			f	t	2021-09-27 17:37:02.182026+00			0	0	t	f	Gambler	\N
2299	pbkdf2_sha256$216000$bXENRxFjXje5$UjGKqs+gWQtl7GvGZR59guFcq0Uek4zLLRaSWlOPLYo=	\N	f	9064e13e-2dd1-4653-a415-ec357bbbea2f	Rani			f	t	2021-09-27 17:37:02.390037+00			0	0	t	f	Rani	\N
2300	pbkdf2_sha256$216000$uwXRGhjVQCHQ$VdGbQZ1tKxPz/wuyn5pbwSHdaEqLv2bvyytoYkE1JYw=	\N	f	ed9bc6d7-1c73-47f4-8eee-6dfb4ed0cb05	Akshay			f	t	2021-09-27 17:48:31.74333+00			0	0	t	f	Akshay	\N
2301	pbkdf2_sha256$216000$x9HE81cf2LTv$oueEHQYgEXheKk80VvU9kXUoQpd5RihzN3cFqOXZO1U=	\N	f	1a748d02-b7f4-440d-8cb9-20751436751b	Akshay			f	t	2021-09-27 17:48:31.935246+00			0	0	t	f	Akshay	\N
2302	pbkdf2_sha256$216000$oSyEr2qbMyso$HVBmRZzX/uyxQv+EZbVvP/9F6UjiGywllj2GjyhbEdU=	\N	f	199b2d9a-051c-42b6-9f64-4194876e1fa3	Sheetal			f	t	2021-09-27 17:54:24.144+00			0	0	t	f	Sheetal	\N
2303	pbkdf2_sha256$216000$ry7Hyoyd3TLo$IIma3e5s34Wf6OQHPVhP1F9HXziuIZ7R7Qd26V+slAc=	\N	f	8fedb8f0-0fbd-4a7d-ab5c-3908a55712aa	Loser			f	t	2021-09-27 17:54:24.336188+00			0	0	t	f	Loser	\N
2304	pbkdf2_sha256$216000$WMh8H9nCPCk1$Cc+PDvN7n3kx1ewt20pKV9HMjHr+hFH1pn+WsKPR7Gc=	\N	f	15c85662-4312-4356-b921-8a796bbaaba2	Number 1			f	t	2021-09-27 17:54:58.004587+00			0	0	t	f	Number 1	\N
2305	pbkdf2_sha256$216000$5N7kVaPPJyWj$+BoIFe3yeXS+Hu7VM4woM7SdCjAvyxhwwBmpFHCsMfI=	\N	f	76bd8946-3736-41b4-bced-e8cd093b8231	John			f	t	2021-09-27 17:54:58.195376+00			0	0	t	f	John	\N
2306	pbkdf2_sha256$216000$0yrVq0I9NMIV$Ie7cCjLNqz0GPudlKoR5Jace7RCIt0y9gw8Fdf0OhKY=	\N	f	d11b8573-9544-4615-96af-bfc94ff11499	Diamond			f	t	2021-09-27 17:57:54.214797+00			0	0	t	f	Diamond	\N
2307	pbkdf2_sha256$216000$5fk6ekta1Pbk$2Zv/Q4qmH6V1kj/vFau5Zj5PeEwHtx4j8g6kNx/v1XY=	\N	f	fbd3e26e-21ca-4fd2-a58c-8e8e7bb72f0d	Ruby			f	t	2021-09-27 17:57:54.406917+00			0	0	t	f	Ruby	\N
2308	pbkdf2_sha256$216000$x00c4FZCTRsk$MtYhDN+Y55YNoMvS0052Nr1uzkmSj+y9yodwIyHgZzw=	\N	f	fa41ddc6-c0d8-41ae-9578-3fd8e4a18c26	Gambler			f	t	2021-09-27 17:59:03.337922+00			0	0	t	f	Gambler	\N
2309	pbkdf2_sha256$216000$loAuwcPDnhGy$SBOKIjc7aOXHwj8L92DxmjHcP4z+d4IdQtN2NLoD3XM=	\N	f	99c67416-4da4-4797-81bb-245efb758237	Krishna			f	t	2021-09-27 17:59:03.530795+00			0	0	t	f	Krishna	\N
2310	pbkdf2_sha256$216000$9c0Jf3MaNILI$Pr/FkJvv4bsf34O6hWds7C1+lt7ZgWBcZN2+iHeBVJU=	\N	f	401a9d3a-9ad8-4bd3-84fd-59c233376dc6	Roja			f	t	2021-09-27 17:59:08.252957+00			0	0	t	f	Roja	\N
2311	pbkdf2_sha256$216000$FazwbDZLRrFN$3wz6rvxXlV04xkqjWnBZFamrJhqpZz/JhZGu/0VbX2c=	\N	f	2ce917b6-4d4b-4ace-8651-2b1bad132805	Master			f	t	2021-09-27 17:59:08.527794+00			0	0	t	f	Master	\N
2312	pbkdf2_sha256$216000$ROXOfgSOyTak$OXHk6nVCxC3hPWc8VRMLcJS1gmul4O2dgWLGIQG72PI=	\N	f	3e8adbf7-eca8-4e3e-a7c5-e0773eb45d77	Hero			f	t	2021-09-27 17:59:13.557664+00			0	0	t	f	Hero	\N
2313	pbkdf2_sha256$216000$xt3Efn831zW5$O1UOc+n1TUg14ogBfd9K7td2NSNUBz62F9rXpiq00JY=	\N	f	9715ae22-8c15-49f5-916b-0c97f5a4659a	Rani			f	t	2021-09-27 17:59:13.753076+00			0	0	t	f	Rani	\N
2314	pbkdf2_sha256$216000$XNEx9j1n8O5b$q3c69ORJDys/6lkzWX71sLsvllti8wtDhfFc1b6babc=	\N	f	1076dadf-c608-486f-8d9e-c566ba757a9e	Ruby			f	t	2021-09-27 17:59:18.726102+00			0	0	t	f	Ruby	\N
2315	pbkdf2_sha256$216000$0MSrldktyfoG$QqWaRMS3cDaCflL5Si9G7g/kmOQWpdweiFxDZX901LQ=	\N	f	159c9a43-9486-4cef-b69a-553be792fe81	Ruby			f	t	2021-09-27 17:59:18.939031+00			0	0	t	f	Ruby	\N
2316	pbkdf2_sha256$216000$x7iRXxoCU8mC$zvqaD7fXBg9/68h53lr77J+x7YU4RiiPx204q5xrfbs=	\N	f	8a34137c-177f-4762-870d-46a40f9af525	Vijay			f	t	2021-09-27 17:59:24.099205+00			0	0	t	f	Vijay	\N
2317	pbkdf2_sha256$216000$SEm5yOfkUyER$q/9cosCvZw3Q2ziNZ7Q3TTgamX+/37q9QKA5cTQkSXc=	\N	f	d62fd3b7-a206-4d72-b97a-8b7ebf0a3000	Raju			f	t	2021-09-27 17:59:24.295736+00			0	0	t	f	Raju	\N
2318	pbkdf2_sha256$216000$ipbHaD5kfT2M$tOCj05IEqLdnSmDaMWIYRYq9J5cwpvhGCmT31RmZdDg=	\N	f	cb0d04ec-f338-4ed7-9b45-b463f517b7ff	Rani			f	t	2021-09-27 18:05:02.22262+00			0	0	t	f	Rani	\N
2319	pbkdf2_sha256$216000$pVrd7MR5DrrZ$xw1zqCY23XSRKD3DHu4uEYWDfBk71oakoHWU3HE8NmQ=	\N	f	94519a7c-e843-4e07-a813-a2657264d819	Roja			f	t	2021-09-27 18:05:02.427811+00			0	0	t	f	Roja	\N
2320	pbkdf2_sha256$216000$kVg8DZB0qoMJ$Fp8NIhm3xcGAA8sowU3rIZVA1QS6bCXVQL8R0U5ugGk=	\N	f	c5a2d6c8-76f3-47ad-9bd2-6b28a0a1fc80	Diamond			f	t	2021-09-27 18:05:16.767576+00			0	0	t	f	Diamond	\N
2321	pbkdf2_sha256$216000$nLW3eBMDJYu7$W6gj3Iw5g2IAob0T15jxJamqvE0gv2cdb4AUm0xKnfA=	\N	f	86b53e19-d89b-4a38-9785-bd8491bc5cac	Sheetal			f	t	2021-09-27 18:05:16.973368+00			0	0	t	f	Sheetal	\N
2322	pbkdf2_sha256$216000$9aGbKp1XIxz4$tCZw5eq7Xj4zQx+slKfNlnBpFbCF33MXGjIPaXxrFhM=	\N	f	4a720706-dbaf-4217-bd0a-ce082196a7b9	Gambler			f	t	2021-09-27 18:06:16.752953+00			0	0	t	f	Gambler	\N
2323	pbkdf2_sha256$216000$bkSkR561beyr$k9kq3F/NYILkZeU4HIlydNZsxNit3CQZzJs1/vUrLlA=	\N	f	464d0818-4fba-48da-9696-7f6d09d9761b	Winner			f	t	2021-09-27 18:06:16.959054+00			0	0	t	f	Winner	\N
2324	pbkdf2_sha256$216000$TWoOZhIajzUd$jB3/TeQUHIYtol/qwmT8tyuytx/FS9bNmsSfr4Mr4PI=	\N	f	ee972570-5f82-45e0-a453-bf69a3067cdb	Diamond			f	t	2021-09-27 18:06:28.342122+00			0	0	t	f	Diamond	\N
2325	pbkdf2_sha256$216000$jiZs01o8FtbD$tvuUx7h5Kiv6YsC/vC+afW9B8zkLsIBNYF1NjHSkK0U=	\N	f	6664beb0-c2c3-4154-8249-3608ec97b4e8	Shivaraj			f	t	2021-09-27 18:06:28.530746+00			0	0	t	f	Shivaraj	\N
2326	pbkdf2_sha256$216000$tOfcBjM22Fds$gTeLrZOuYuBwscydrWSsRWwXak6Z3fTMbpGVRcaTGDo=	\N	f	551fbd40-bea4-426a-93a4-224f2d34f41c	Loser			f	t	2021-09-27 18:06:39.605599+00			0	0	t	f	Loser	\N
2327	pbkdf2_sha256$216000$uLJ94lgFZ038$6Ix61Nk3daSMs1l1ezbgiTG02fzAoQvAy3ePLFIZydg=	\N	f	65113528-1225-425b-bbe3-78265ef8bc1e	Ruby			f	t	2021-09-27 18:06:39.797272+00			0	0	t	f	Ruby	\N
2328	pbkdf2_sha256$216000$8t2B8Hm7x2gc$mrPiC55lJwZxuuTpOWIoWAd7PZL9retkA3MQ5USMq1s=	\N	f	90fa261d-abe7-4bb3-a504-b524174e89b8	Hero			f	t	2021-09-27 18:10:07.820781+00			0	0	t	f	Hero	\N
2329	pbkdf2_sha256$216000$0WbvIeKNRgiZ$iikhbUZBkQb9gIebqqeVqugJhgAuX+LeoWcSHCLFACM=	\N	f	2acc842f-316d-4e95-a5f2-40e888f5fa5a	Rani			f	t	2021-09-27 18:10:08.015375+00			0	0	t	f	Rani	\N
2330	pbkdf2_sha256$216000$mBYYaRxetqDi$SaiI5oqzC2SPrH0UcVM5UOIGdxS5VMmPpP9eHgie83U=	\N	f	3d9a51a2-efd9-44f6-98f0-3cb4cfb77af8	Major			f	t	2021-09-27 18:10:24.903187+00			0	0	t	f	Major	\N
2331	pbkdf2_sha256$216000$dLIveURcBUJG$qx8V0n5sHtYfYaNCcIQGAFoInWmL43D5v4punQQ6RH0=	\N	f	9471af20-523b-420a-b159-b0946c1fb59b	Ruby			f	t	2021-09-27 18:10:25.116603+00			0	0	t	f	Ruby	\N
2332		\N	f	+660658243343				f	t	2021-09-28 01:26:38.041408+00	+660658243343		0	0	f	f	ubon	UBON2897
2333	pbkdf2_sha256$216000$St3IWjBtPESV$llgSLNb8dXYi2ZzI42AawHXooAjiEiZEyX2mUG/j07Q=	\N	f	9c0303e0-a618-41f0-8ad3-1503e503be3d	Major			f	t	2021-09-28 02:19:20.243277+00			0	0	t	f	Major	\N
2334	pbkdf2_sha256$216000$CwOeZgLy6XKI$faI+6w6blMZg70PEwYRu+lzA4h05pe+VBMqdeeQtU54=	\N	f	af23237e-aac1-4bc1-bc5b-eeeb914c0161	Ruby			f	t	2021-09-28 02:19:20.435888+00			0	0	t	f	Ruby	\N
2335	pbkdf2_sha256$216000$XPCytvPgcp6w$wHdNnJiBhcgPicGdAj68f+cAJGw5aOfvapZFue0cHyU=	\N	f	64f15b33-ca3b-400a-97f1-921d80ac5421	Master			f	t	2021-09-28 02:19:54.068777+00			0	0	t	f	Master	\N
2336	pbkdf2_sha256$216000$KBebhUwHiYd6$mCwjmVjQ6tX9SyTIsw80KtDen0C3nt033BdMilrZMfw=	\N	f	81c0b25d-f9ae-4eba-91a4-2ec950dde1de	Vijay			f	t	2021-09-28 02:19:54.263991+00			0	0	t	f	Vijay	\N
2337	pbkdf2_sha256$216000$N7rK2Dmh45ws$DDC2/U6fWDSdr9r7k6AFhKidO6n4WPS5NYHb7mm8erg=	\N	f	82e7a160-167c-4ce2-9051-61d1eff7ba26	Diamond			f	t	2021-09-28 02:39:00.009418+00			0	0	t	f	Diamond	\N
2338	pbkdf2_sha256$216000$aU5JILNOxo19$BqPmwNtfuELuJWcFCDc8Rvuzm3W3uNY3yrV65sQBMqI=	\N	f	d1001ac5-c9a3-4716-b0f9-5d8029bf32f9	Ruby			f	t	2021-09-28 02:39:00.265016+00			0	0	t	f	Ruby	\N
506	pbkdf2_sha256$216000$PUKMg1utokd2$V0nFumTjLJm9KMaHZ1tYJ02Bz5LqgFzXC3XqLXmRA7A=	2021-09-28 04:23:47.473755+00	f	vinaykrishna	Vinay	Krishna		t	t	2021-09-25 11:56:45+00	+918660902821		0	0	f	f	\N	\N
2339	pbkdf2_sha256$216000$haPQQikMn4e1$fy9M5v7THOauhI0KyNejG5eEquqNiXTqRVD2wQLFrSk=	\N	f	1afdd200-7c9d-4f8e-b6d1-508bea899d7d	Avenger			f	t	2021-09-28 17:35:50.271571+00			0	0	t	f	Avenger	\N
2340	pbkdf2_sha256$216000$OoPeDa2HZCnY$9GzsxpSDHfw/x1z0shIDOQ6IWSf43bSd2lcu9RJbfzY=	\N	f	26657299-1a7f-4268-b524-d611bf45f5a8	Major			f	t	2021-09-28 17:35:50.463574+00			0	0	t	f	Major	\N
2341	pbkdf2_sha256$216000$f4RQVHnO2w86$gNJnMDbB56mKyUmDD39h0JxqqPHHf1kxUbwE12jTUfM=	\N	f	7d76a96d-73c2-4c90-be3e-7578356f60cf	Loser			f	t	2021-09-28 17:37:14.422689+00			0	0	t	f	Loser	\N
2342	pbkdf2_sha256$216000$Pw98O3BFgG5V$Qgo090To2bSS5YfdKw0BsDLYkC9xpqgOmbu4q8fUEVs=	\N	f	0bddb1dc-325f-4ad0-a47a-a71346538b69	Master			f	t	2021-09-28 17:37:14.616073+00			0	0	t	f	Master	\N
2343	pbkdf2_sha256$216000$XMEHInFEyAJ8$E5FShNF9O3aeq32qU7absWOu1nQ1kBlO+adM/7J9xS0=	\N	f	72a37c9b-59b2-4086-90fa-0bfce8db9392	Krishna			f	t	2021-09-28 17:37:37.010919+00			0	0	t	f	Krishna	\N
2344	pbkdf2_sha256$216000$HBCNW1xQu8Up$ZXD71KjCFsSkF7AB9n8zVyXwXSOHxZZba5PTAFmiPpE=	\N	f	ddec0d28-5947-4a84-97b0-b234c365bddd	Diamond			f	t	2021-09-28 17:37:37.202944+00			0	0	t	f	Diamond	\N
2345	pbkdf2_sha256$216000$TB0BXZqCRSbu$qM0bt6nylpI8X79CHSwn10Rhs4d+VcWZ5v2O4I7L9Q0=	\N	f	87b3806c-7379-4138-b178-585928c501de	Rani			f	t	2021-09-28 17:38:12.795683+00			0	0	t	f	Rani	\N
2346	pbkdf2_sha256$216000$sKirVHrpEVqE$KkT01QrVZu0ZjS3NLJn3QlE5WBixrXf9020Yd7gpRLs=	\N	f	614894e9-f960-482d-b302-859d0d09d257	Gambler			f	t	2021-09-28 17:38:12.987935+00			0	0	t	f	Gambler	\N
2347	pbkdf2_sha256$216000$uYYarMmgYaO3$+RPE88ES0xlEGg0MNsA8Azil9W17OnLRgh9LgK3ukbY=	\N	f	593f52ea-077a-451d-83a2-79a6d4747228	Loser			f	t	2021-09-28 17:38:36.292715+00			0	0	t	f	Loser	\N
2348	pbkdf2_sha256$216000$5P7I7opW8zA6$xxRUosA8MXTcmuQnUh6zjquP/2X0ohw6y0iisOP5zTY=	\N	f	505f0084-2716-43a0-8b8c-67c57277a552	Sheetal			f	t	2021-09-28 17:38:36.714222+00			0	0	t	f	Sheetal	\N
2349	pbkdf2_sha256$216000$irH99BLyunKI$r1ZqZOomc4F/0Pz034dllJCUr8BnJRvfjImC4zY/HnE=	\N	f	65396145-647b-4d00-b318-81afbfecf056	John			f	t	2021-09-28 17:39:24.465834+00			0	0	t	f	John	\N
2350	pbkdf2_sha256$216000$V5MkccYDWfrW$mTcxEBT/K+0Qpezm9ckykjXEF4KB65ehAIXN9SIUgBc=	\N	f	00049c83-9ac4-4260-9085-9e38e2750fdf	Number 1			f	t	2021-09-28 17:39:24.662627+00			0	0	t	f	Number 1	\N
2351	pbkdf2_sha256$216000$yYoeNf40xdrj$+kZEMRN7wDQh6mY12aWfomHBhEI1y/PpFq5sg+axoIE=	\N	f	4bb0b2f7-a237-47d1-a851-bd0de75918c3	Avenger			f	t	2021-09-28 17:41:25.587715+00			0	0	t	f	Avenger	\N
2352	pbkdf2_sha256$216000$FocKeKTbPXAv$1THn95U1S1UHOBeAbSweimiJK+qIrDLLDiOa0hPUb4Y=	\N	f	3ae8ffb2-599f-4642-a73d-57f2ebc2319a	Loser			f	t	2021-09-28 17:41:25.778575+00			0	0	t	f	Loser	\N
2353	pbkdf2_sha256$216000$v8BTmciIj64X$9MHdzKeYbaZkCGtmmNkpEfbzNSNdXDB2mdxaUMHQnTs=	\N	f	c43a8691-fdaa-4125-b030-9fb9b72b3bfd	John			f	t	2021-09-28 17:44:06.254533+00			0	0	t	f	John	\N
2354	pbkdf2_sha256$216000$HsWDvfHXq4hS$7+P9urma62HLhXro3Sr2HIk3wKTTUSRrSZwSL5JTPUc=	\N	f	73fda80b-9e58-457a-ac6b-1e1f4eebe235	Sheetal			f	t	2021-09-28 17:44:06.446944+00			0	0	t	f	Sheetal	\N
2355	pbkdf2_sha256$216000$c2WULqzcojOK$5Z2ANhvjjfiSFPJzFjvY8x8643rLi7yrPjtezJZujgg=	\N	f	aec26210-24bf-4b76-9bd1-4b0488f493a1	Akshay			f	t	2021-09-28 17:44:18.498011+00			0	0	t	f	Akshay	\N
2356	pbkdf2_sha256$216000$dDFoOD8BATZF$bSSVNudducPqSkTlLDsRnBPkRrA0ieqDsH0cSBbB6oU=	\N	f	80e57424-6490-4624-b650-24a129058156	Rani			f	t	2021-09-28 17:44:18.691597+00			0	0	t	f	Rani	\N
2357	pbkdf2_sha256$216000$JfOWGfpPRbDR$8cO3eFMLWB10UJ3shE92rRY65+fpgARGr91cVvISbfQ=	\N	f	d946fc1f-57b4-494e-b907-1bc9e09bfdda	Sheetal			f	t	2021-09-28 17:45:34.248258+00			0	0	t	f	Sheetal	\N
2358	pbkdf2_sha256$216000$xOXTBUOu1HLL$Yd/JZ8KHbsSYulduvAdY65fi6wQuXwPCp/CFslzvkdE=	\N	f	3e7bc646-d0e6-4bb3-a475-dd25670b6ef4	Poker Raja			f	t	2021-09-28 17:45:34.439015+00			0	0	t	f	Poker Raja	\N
2359	pbkdf2_sha256$216000$gwNbsyn8ItBi$tR0GnWgmbSBSZg1bboFvT6R5XLI9wdDnuggbCgpe/Wo=	\N	f	d7608253-4fae-4a3a-bd7e-9fc214fe1348	Sheetal			f	t	2021-09-28 17:46:01.175179+00			0	0	t	f	Sheetal	\N
2360	pbkdf2_sha256$216000$ACzplNdg2bEF$CozF+npTLVhe4p0jaRatLXy1vkPYt6aXyciIwME1rYI=	\N	f	a33a74b5-9e6f-48d5-a165-d849b4cdd8ca	Raju			f	t	2021-09-28 17:46:01.366183+00			0	0	t	f	Raju	\N
2361	pbkdf2_sha256$216000$Dzq3pCh0xSKE$Hw4FNvO5nSdRtOqY+qmTtPNo6GivykO6dk3QLnU/L5Y=	\N	f	82ffc05d-63e9-4fa5-b85d-6f369b650c70	Diamond			f	t	2021-09-28 17:46:44.943375+00			0	0	t	f	Diamond	\N
2362	pbkdf2_sha256$216000$V6Mr1btzsAJc$A4aAbfP5L+bfEoJipHyyMxV7JmcgEG8WyDW8JcfHZX0=	\N	f	a2e79255-7e98-4445-a008-d3a6dacbd0ba	Akshay			f	t	2021-09-28 17:46:45.139875+00			0	0	t	f	Akshay	\N
2363	pbkdf2_sha256$216000$30BUeH7zgvfc$aPH7QHlQsijldl3oHxV+U/7xOvAbw1DAacjxKs7H46Q=	\N	f	d229883d-6d9d-4f8e-8f34-a27a5d02f717	Krishna			f	t	2021-09-28 17:47:13.409588+00			0	0	t	f	Krishna	\N
2364	pbkdf2_sha256$216000$nMa1LPFoL48T$sNYMxmwmfgkq1o1DzJGmkga6nqdjGYywv56EArs07ng=	\N	f	d1ca8156-f905-4580-b081-379fdb687f08	Master			f	t	2021-09-28 17:47:13.60161+00			0	0	t	f	Master	\N
2365	pbkdf2_sha256$216000$ij9TpEpfJbY7$ZzokKuOaagNuFc1g88g0qwkKj1t1MJ4M2AsJ5jzgzJE=	\N	f	9586f4ea-53df-4eed-a22e-1d92024bec31	Major			f	t	2021-09-28 17:49:41.273531+00			0	0	t	f	Major	\N
2366	pbkdf2_sha256$216000$ncsRfCbbn2Rl$+m0y42eiZ8NIYW8rbSRk3ntCXVvARdVw8PuyG9z5hYo=	\N	f	2ff7ffd2-358e-4c4a-b39c-530324223f03	Number 1			f	t	2021-09-28 17:49:41.468704+00			0	0	t	f	Number 1	\N
2367	pbkdf2_sha256$216000$cTWQv5myO8o4$3lqMpHF2sLiJ7yHXG3hKCtPiPGsEGdUvMD8cs1ngZTY=	\N	f	3019afba-50ea-4d88-973d-2ef83fef2082	Rani			f	t	2021-09-28 17:50:44.926137+00			0	0	t	f	Rani	\N
2368	pbkdf2_sha256$216000$2AfiNbwx4fld$ja1F+8n5oWwetBbDKOHKQwthfVXu8bKfnRu+dAuTqF8=	\N	f	15814485-6336-45e6-9cc0-ea66b7af36f9	Winner			f	t	2021-09-28 17:50:45.14626+00			0	0	t	f	Winner	\N
2369	pbkdf2_sha256$216000$qxaoqtn2yVHm$JpWqQT9wKjHNNPm5FeVxcVfs4JWukjr5eML6IoOB85I=	\N	f	adbdd430-da8c-417a-a4bc-8bea492c1606	Major			f	t	2021-09-28 17:52:24.115859+00			0	0	t	f	Major	\N
2370	pbkdf2_sha256$216000$qSloftKeiehn$Z6f4jZj03WYIxF8mPSyaM0nPAbXL9Y9X9KDeyA3S/tc=	\N	f	be42d7bc-7337-4c21-9a7d-b0f563c2077e	Avenger			f	t	2021-09-28 17:52:24.308217+00			0	0	t	f	Avenger	\N
2371	pbkdf2_sha256$216000$RQvktsnjQkwb$Ql8NMRtAW3UiFAYyEOsTu2dgLCnBafFHHVI/P8MCmFg=	\N	f	c949a62b-50c1-419a-b9df-2236f931ca90	Mara			f	t	2021-09-28 17:52:40.355716+00			0	0	t	f	Mara	\N
2372	pbkdf2_sha256$216000$6mxRB070vcit$+4xBDIn6DEsE42rkJl/HVYEW+wiQD8CK0IBqb1xcYUg=	\N	f	8a27fd56-25ec-44bc-bcf8-7eba10c46e86	Rani			f	t	2021-09-28 17:52:40.548434+00			0	0	t	f	Rani	\N
2373	pbkdf2_sha256$216000$1GtNcOjV7uKJ$noO2lYpJt7OX/0I1RiZBIXMnTsK0+Mg4HKgo3sTzVgE=	\N	f	2e2d2450-6dae-4976-a7b9-03a7699f9ab5	Hero			f	t	2021-09-28 17:52:55.685046+00			0	0	t	f	Hero	\N
2374	pbkdf2_sha256$216000$yzpbRvdNjUMn$JJn8xz3vBuHz4lxuHSIdwvw3ScLFUMkg+gTcMon5a00=	\N	f	90c86b55-2768-4194-94ea-ca70ea9e5a84	Akshay			f	t	2021-09-28 17:52:55.878049+00			0	0	t	f	Akshay	\N
2375	pbkdf2_sha256$216000$DVVJWboXRx3G$kDh8sBVPEfCNNTGbDLxGPrmlV5IybexIVrwOiA6V/wc=	\N	f	72038390-96ab-44fb-ad65-ff442491bbf9	Avenger			f	t	2021-09-28 17:53:14.101546+00			0	0	t	f	Avenger	\N
2376	pbkdf2_sha256$216000$rPGJ8eGnD06L$F0hZJx0SN1HKJn5Hj/c7PWOZBSnfzK4YN4qK4cY9Dx0=	\N	f	14093c91-c049-4e86-ba17-e3147a70c497	Poker Raja			f	t	2021-09-28 17:53:14.293688+00			0	0	t	f	Poker Raja	\N
2377	pbkdf2_sha256$216000$2DctvfRlQWWI$t4SdjQ0i6FyKLn8w0m00ft5kKK/J4ZgKveeMb5dTlho=	\N	f	33e50fab-1c75-4bcc-9bd4-ba78b7a4c249	Loser			f	t	2021-09-28 17:53:28.059753+00			0	0	t	f	Loser	\N
2378	pbkdf2_sha256$216000$uLTlMHUgpquP$J+nJwZ1rHjnoGHaLXDU4dehMP8b3FgCAAcvuQ9w2iRw=	\N	f	03396d12-6436-48f1-b64c-b81e28beea98	Diamond			f	t	2021-09-28 17:53:28.250594+00			0	0	t	f	Diamond	\N
2379	pbkdf2_sha256$216000$KrlHsZT4B6B1$c5rwL5oJMUoYTjxCwt1lnVbfuoAbcmsaXWydgKNOtPk=	\N	f	af7ac73f-5ae6-4c8f-b74f-46f7a864dc7f	John			f	t	2021-09-28 17:56:02.348253+00			0	0	t	f	John	\N
2380	pbkdf2_sha256$216000$9epxGhsInjIT$mWj73fJH4amg2CGCSSNHsTz2zlDdlmeY10KhTbI4yA0=	\N	f	1f33d886-8cfc-4009-b634-f0cd2ba62402	Mara			f	t	2021-09-28 17:56:02.54607+00			0	0	t	f	Mara	\N
2381	pbkdf2_sha256$216000$3BiYlqcc62Nw$x5VEJ2KQHcUxE9Zh4XC0RqmyKHssz2OudX8RQrlfiQA=	\N	f	0ca27ac2-60b1-49f0-8c93-89e6a859ff47	Roja			f	t	2021-09-28 18:06:44.847997+00			0	0	t	f	Roja	\N
2382	pbkdf2_sha256$216000$xOIcMH1Cq8ms$FsTC2O23gxx5Qt7GS9MN6BiqTp/1SSey2YxG1UymB9c=	\N	f	40a01ea6-7c85-49ab-b4e9-3e6775bf63db	John			f	t	2021-09-28 18:06:45.147645+00			0	0	t	f	John	\N
2383	pbkdf2_sha256$216000$rU8F2yP4eQqy$gzFL4/Zo0UGrzQq0zFSD954Y8lpc8O1xHmZW3TVc30A=	\N	f	11c7583a-8a80-4d48-8076-223b2043fd94	Number 1			f	t	2021-09-28 18:10:04.486656+00			0	0	t	f	Number 1	\N
2384	pbkdf2_sha256$216000$D74exgW6sf4D$XZ0lPVepm/s3N9wJBTSFku3IcCNFTHS3Wt4ggRanToE=	\N	f	0a4dfab2-a2cd-45d0-b95d-3aef8b013435	Vijay			f	t	2021-09-28 18:10:04.678829+00			0	0	t	f	Vijay	\N
2385	pbkdf2_sha256$216000$1CokZuQ4qIbx$onY9HLulrKV6M6jEMaYnIv8kSMkPMgB+USv7SfkYbY0=	\N	f	28409d24-87e2-4bf2-82c6-ce0a3c2db277	Hero			f	t	2021-09-28 18:24:36.605453+00			0	0	t	f	Hero	\N
2386	pbkdf2_sha256$216000$fElXBdZvr2tg$PwymrXZTaxHtUvwFuNVU25sxTcij2pu3KgBQgC8iplk=	\N	f	2ce90498-8445-4e68-a187-c538abb2706c	Sheetal			f	t	2021-09-28 18:24:36.954791+00			0	0	t	f	Sheetal	\N
2387	pbkdf2_sha256$216000$LJcaScEnJOGu$Lo0P5XJZFpzQ2ehHxDhP7HmjKh9GrQUhI2mmtfs59PQ=	\N	f	56ae9be7-763e-4494-807e-54533d14526a	Akshay			f	t	2021-09-28 18:24:53.288189+00			0	0	t	f	Akshay	\N
2388	pbkdf2_sha256$216000$Tl4wED7i4I4D$ieMvKxcHV3br74XQHKCaML445akNw+u9BSAX8hN4XYg=	\N	f	b7718a9c-9897-4bdb-a192-40b56aa8c11f	Vijay			f	t	2021-09-28 18:24:53.482456+00			0	0	t	f	Vijay	\N
2389	pbkdf2_sha256$216000$ZSwwoVVkh2Zx$uqiMUQnKns61Y9KirYHqtx3B/stT0W1AXZFQmAEGAJg=	\N	f	9b5f53b3-44c3-481c-b767-7f136bfed806	Major			f	t	2021-09-28 18:26:15.886905+00			0	0	t	f	Major	\N
2390	pbkdf2_sha256$216000$xc3twrm7N9bj$TBgb89ksH6e12rbrPFdprmegEXkcZee9bj2KkTCILaE=	\N	f	57dd7c67-275a-407f-8172-417f970fa6a0	Vijay			f	t	2021-09-28 18:26:16.079592+00			0	0	t	f	Vijay	\N
2391	pbkdf2_sha256$216000$BD2YJMys9VTr$vD86CaK0mIQZjmSp0BBYoZzQhnNo86uyJNTs//x4LXE=	\N	f	254b5738-027d-4666-b860-6807e8d4416b	Rani			f	t	2021-09-28 18:26:31.990336+00			0	0	t	f	Rani	\N
2392	pbkdf2_sha256$216000$wl8rVe7PX5b1$CIGdA1f0GKxA4ueltvkZroeU2eD1b7ldxVnbJgOFhBs=	\N	f	0200ef5f-4cbf-4097-b183-aedeb01e3457	Raju			f	t	2021-09-28 18:26:32.181695+00			0	0	t	f	Raju	\N
2393	pbkdf2_sha256$216000$ndHO8MtygnzT$D1BfYx/APPH9IzW/sOpGC2v9z+9Cs1Hk1+1mwk+MF44=	\N	f	ae4fa3f4-84ec-44b5-8ffc-c61a3433f43c	Diamond			f	t	2021-09-28 19:01:46.199973+00			0	0	t	f	Diamond	\N
2394	pbkdf2_sha256$216000$SAZp3FbkyDts$qyUP8lPd5m7cN1DX3MsgmGp8ronPMAEPI5euDoN7EN0=	\N	f	e2857e57-da97-4fa8-a19f-6f9699437db9	Shahrukh			f	t	2021-09-28 19:01:46.395792+00			0	0	t	f	Shahrukh	\N
2395	pbkdf2_sha256$216000$FX7h9OMMojZp$Qo1NnCQ6OJRY1GtCaEOyN3EYbiOQP8Rvahmt4jFta08=	\N	f	7f454de3-8311-489d-bd79-4b0ca8883296	Shahrukh			f	t	2021-09-28 19:04:55.876439+00			0	0	t	f	Shahrukh	\N
2396	pbkdf2_sha256$216000$ndcpApxx0ech$ag/ZGrPJCUA1K1I/GOqEmzBTm3uZF7/HuT0gXJ/bC8s=	\N	f	6dfd867c-e712-43d3-9a51-935dbe1ebb43	Raju			f	t	2021-09-28 19:04:56.071314+00			0	0	t	f	Raju	\N
2397	pbkdf2_sha256$216000$42XmMdAExS5l$RwHbW0Fzpikwe5TjCyaoQwrSiKdl0wwhMuczXO9Cpzk=	\N	f	0dc7f3bc-1f8b-4332-8378-f17f70a92fe8	Roja			f	t	2021-09-28 19:05:56.591392+00			0	0	t	f	Roja	\N
2398	pbkdf2_sha256$216000$auAB9rtjTlZ9$jQ9eGzV/Bc5zR7/rVVsS78DAQJPPFVjbovf7TtbkDr0=	\N	f	8f834eda-ddef-40c1-988b-06de6df1f884	Hero			f	t	2021-09-28 19:05:56.78195+00			0	0	t	f	Hero	\N
2399	pbkdf2_sha256$216000$0ydN7YbhMo5F$rarr0/ZWE5WEWYi6ukRfWm4CUHo0m57K1Vl6TYmSw8I=	\N	f	8eb90975-c2f3-4df8-8281-f955a83acbbd	Mara			f	t	2021-09-28 19:08:15.687019+00			0	0	t	f	Mara	\N
2400	pbkdf2_sha256$216000$foIINdDyGkEG$NF18tlrEMOkDPl1kpkxnaJ+Rs6BULy7DP6QweDrClwY=	\N	f	e346ad69-08c8-4a69-a622-0559f9edcae1	Hero			f	t	2021-09-28 19:08:15.879001+00			0	0	t	f	Hero	\N
2401	pbkdf2_sha256$216000$dCtTgTReBXBz$TlMz7aga2X1JxAa7wXaChcyZGvnWLyb7MJhB8J1Djvg=	\N	f	229b563a-39d3-4ba1-9013-e7bf6633217e	Akshay			f	t	2021-09-28 19:09:15.860267+00			0	0	t	f	Akshay	\N
2402	pbkdf2_sha256$216000$FzvyN4Spcjk4$iVPAuKNRdmckUv57xkTfc30A0zR73oh1RxBT1i1lRdc=	\N	f	77d210b9-a699-410b-81ba-96a5786e285d	Vijay			f	t	2021-09-28 19:09:16.062974+00			0	0	t	f	Vijay	\N
2403	pbkdf2_sha256$216000$YBhmkx8Tt6Ne$4jWRPQ2zYdigg5Sjnc3qWgqz6g5tA5toYiXGeezmKeE=	\N	f	bc51b560-9365-4fa6-b606-c18c1f59aa95	Sheetal			f	t	2021-09-28 19:11:23.56398+00			0	0	t	f	Sheetal	\N
2404	pbkdf2_sha256$216000$k7V7fLm2WlIZ$0ZlzuLLPPKnhGmUDzfjRBWfFBOKwRjvExqvkN3YI2jQ=	\N	f	91bc8704-322c-4037-9baf-5a7a1a38e8ee	Hero			f	t	2021-09-28 19:11:23.761073+00			0	0	t	f	Hero	\N
2405	pbkdf2_sha256$216000$ydWQRUm0jJOS$AUHYouT4yXNutKNZMAuhVUjzN2VXxImhmoRJgLw9+PM=	\N	f	93203959-79bc-4254-a32f-0aec951937b9	John			f	t	2021-09-28 19:17:59.35654+00			0	0	t	f	John	\N
2406	pbkdf2_sha256$216000$rERj40bYUmNb$SUf8idTDEIHcUfVpJhsTf9rTj4mesiKO+7hf3cRSL8s=	\N	f	abcf26f0-7ae7-4743-8493-15b2a02990f4	Hero			f	t	2021-09-28 19:17:59.551791+00			0	0	t	f	Hero	\N
2407	pbkdf2_sha256$216000$pHFohY4fxGTZ$nQX3Q9ffPiD6lum41gmLzadMjoRUKxnKEdBj2rW4gNI=	\N	f	a8c871bf-950f-420b-98aa-864761a31e22	Sheetal			f	t	2021-09-28 19:18:52.989038+00			0	0	t	f	Sheetal	\N
2408	pbkdf2_sha256$216000$5e17riVp4Fa1$sxhC1UkPj7XofAQn6M63ONvIXliDcrCiQidapsIrc9o=	\N	f	36d8597d-686f-4f2c-99f9-990de33007f2	Shahrukh			f	t	2021-09-28 19:18:53.187359+00			0	0	t	f	Shahrukh	\N
2409	pbkdf2_sha256$216000$cc1F55znMj9j$NlI19BSZTc9x39xZtnyW4+4yG3myH4egWvifcUm6+Uc=	\N	f	7e127770-9163-46de-a048-9fc64fbbcd3f	Akshay			f	t	2021-09-28 19:24:21.861001+00			0	0	t	f	Akshay	\N
2410	pbkdf2_sha256$216000$lw0i2Yza8Hin$DkgFULCqw1Bgbv/piF8KIf1Y/OGdAL2RXXP8gh1z7po=	\N	f	845d01ac-f3e0-4019-baa6-20cd26d4b53a	Diamond			f	t	2021-09-28 19:24:22.061424+00			0	0	t	f	Diamond	\N
2411	pbkdf2_sha256$216000$7RRAAfNeDXgU$3SGS8s+TmpOUqfOhRGNmDDTojGEjeOxfpnqcHszXeBE=	\N	f	f72aa057-c585-46e6-a023-68f4ed345f55	Shahrukh			f	t	2021-09-28 19:28:17.362607+00			0	0	t	f	Shahrukh	\N
2412	pbkdf2_sha256$216000$zfseQAFdqK5M$NBFc0cPCAyiZfZfpvo1TNvYsIWULBifIaxYG/dFUC/8=	\N	f	fc31ea32-1896-4fe9-9482-a1e84848a373	Gambler			f	t	2021-09-28 19:28:17.570685+00			0	0	t	f	Gambler	\N
2413	pbkdf2_sha256$216000$PkQIAsK8Vpu9$rlbmMQF0CVMLqD+1lJd0fd+8fkpPN1s+RAfuII329Ss=	\N	f	dcd5e5ab-bdbd-412b-b67c-a0774cbca724	Diamond			f	t	2021-09-28 19:34:43.894978+00			0	0	t	f	Diamond	\N
2414	pbkdf2_sha256$216000$payBuwq3CGQt$sIJEtr1F50TglBevrjZ6OSu1niHgKvR+DLWSexlbZn8=	\N	f	833ccb15-c0bd-4d07-adfe-adce8a5a1a49	Gambler			f	t	2021-09-28 19:34:44.090922+00			0	0	t	f	Gambler	\N
2415		\N	f	+9186535525				f	t	2021-09-28 20:50:29.582159+00	+9186535525		0	0	f	f	\N	\N
2416		\N	f	+918986535525				f	t	2021-09-28 20:51:09.600896+00	+918986535525		0	0	f	f	virendra bhojraj uikey	VIRE4748
2417	pbkdf2_sha256$216000$WaBdGN7DoH2N$SmlwIoA0anDy1yhTuBteAkY3IdhFG5wR3kQDLvjG8yk=	\N	f	072e4633-abfb-4118-b09e-dcd7f76e6e61	Raju			f	t	2021-09-29 01:15:33.829662+00			0	0	t	f	Raju	\N
2418	pbkdf2_sha256$216000$hNtrH1N2xR99$73Wg+R498t/0fO1PzJEi2QxICvMASOLqh6G+kU5RbAo=	\N	f	57d7ea4f-7e19-4453-afba-ef5426084d10	Avenger			f	t	2021-09-29 01:15:34.02275+00			0	0	t	f	Avenger	\N
2419	pbkdf2_sha256$216000$MNiWEIEBH1Rw$o92aDqv/s/2RUa7SYixaFqoE8qPK8gcvbVw3YDdR9CM=	\N	f	2d45e942-4c7b-49fa-bf95-0c380f56eaf8	Gambler			f	t	2021-09-29 01:19:44.465846+00			0	0	t	f	Gambler	\N
2420	pbkdf2_sha256$216000$Q9KkqmsBQdWw$xsUsr+5mMb5Y0DAtoi00tSWq8h/pfZN5sd5greUUbzQ=	\N	f	47ffdc13-dfb6-4a9b-8d51-283c3bed7983	Shivaraj			f	t	2021-09-29 01:19:44.660461+00			0	0	t	f	Shivaraj	\N
2421	pbkdf2_sha256$216000$iChcQrRZiX8W$ogZKR7tLOBYy9FD2eohHHJkyulwu2pZHd9wW6t+9lOI=	\N	f	b73969de-7648-42b2-95bc-31228c3ef470	Roja			f	t	2021-09-29 01:19:48.282931+00			0	0	t	f	Roja	\N
2422	pbkdf2_sha256$216000$hPqzHJYoS4Kl$qFVlWMTypn7RAIeiD8Ai4fWjuCVugxSIt0337QrNh0Q=	\N	f	cb9d50bb-8b63-4761-b4f8-6e30dbe7e11d	Sheetal			f	t	2021-09-29 01:21:58.867694+00			0	0	t	f	Sheetal	\N
2423	pbkdf2_sha256$216000$quL19gWTGzOl$loI8xnr02g82d4o4SopPizObnc9l2e3eUcOLyZIPaaA=	\N	f	8f687976-3b0d-4874-8f02-ef621f093766	Avenger			f	t	2021-09-29 01:21:59.059226+00			0	0	t	f	Avenger	\N
2424	pbkdf2_sha256$216000$0ry0Z1LqWDEP$BaXGne8QxHPIIgeX3FYLT82cZP0l15RMFzmGCgxQYfo=	\N	f	7b4c5865-87d4-467c-84d2-fcdd364ef3f8	Hero			f	t	2021-09-29 01:23:06.905016+00			0	0	t	f	Hero	\N
2425	pbkdf2_sha256$216000$rpVy7m03yZIc$Rp4u5qaYJ7Sj1NvWqJo7vGbX87e1qOUir7o92aRqNng=	\N	f	d9ab4ba7-9174-495a-92b0-1b4303f2eb8b	Mara			f	t	2021-09-29 01:23:07.099399+00			0	0	t	f	Mara	\N
2426	pbkdf2_sha256$216000$LgUnZ8cLjM8c$I9El3fmnjNGDqd7R8zq0Pv9KBY9g/JOJo1hameDpJXM=	\N	f	505cfb91-05b0-43b5-b3c8-002eabf404af	Shivaraj			f	t	2021-09-29 01:24:07.324086+00			0	0	t	f	Shivaraj	\N
2427	pbkdf2_sha256$216000$u8OYK6ljgPQY$bQayPVeU79P0vjV4j4OR3NH5KPvruy3RpMV0Us8Yx0E=	\N	f	9de367d3-73b2-4114-97b2-1169fe97e78b	Avenger			f	t	2021-09-29 01:24:07.514825+00			0	0	t	f	Avenger	\N
2428	pbkdf2_sha256$216000$rR8dM5Et3TYv$Q2UTOjppuP4/fmhPnO2n8LgpLBiGBpRB7Z2jqtBQuRc=	\N	f	8eb0bc60-1959-4c35-ab20-5dcb90b1b427	Rani			f	t	2021-09-29 01:28:37.210222+00			0	0	t	f	Rani	\N
2429	pbkdf2_sha256$216000$py2CTjEjs0Oi$A6aG5iOvtdjD2CvNbigPBZg2DjJndy0OjU4OYH/CsG4=	\N	f	340e7736-aa7b-4bff-8e6d-0b42e35a34da	Major			f	t	2021-09-29 01:28:37.405036+00			0	0	t	f	Major	\N
2430	pbkdf2_sha256$216000$EB5dqOOKyJSS$Wo9RzcJOlSWwUIXyYXi1TePmmCeudLl819RRH/2O8es=	\N	f	a6d91cc1-d2bc-4bfd-b499-f95c26311640	Roja			f	t	2021-09-29 01:29:26.129183+00			0	0	t	f	Roja	\N
2431	pbkdf2_sha256$216000$R7rCWaP80OWU$nLiUtYKx/oBk3G6wvClhRhJyCEvZcFA6Dui0XUNwegQ=	\N	f	5ebd278e-6113-4cc5-8c9e-01dda2f48c21	Avenger			f	t	2021-09-29 01:29:26.321722+00			0	0	t	f	Avenger	\N
2432	pbkdf2_sha256$216000$DvAeEsHpJRMT$+ayrbnsYXzUcJM1SUEj3MNjRGP0ZIKJZ2KmAwXgM6Cc=	\N	f	ff726692-80e2-42da-82af-219c54d64c76	Winner			f	t	2021-09-29 01:30:39.54712+00			0	0	t	f	Winner	\N
2433	pbkdf2_sha256$216000$xFhkKvFnFvlF$/M2BplYkESlR17trs4UvA9Hqkg0DKLI3ERiDDY11Opg=	\N	f	4e441170-5e5f-45f5-a198-95d4e74e5992	Number 1			f	t	2021-09-29 01:30:39.740258+00			0	0	t	f	Number 1	\N
2434	pbkdf2_sha256$216000$Qgs9k6LZtYQO$vK7R9NkIZ4ixrliP2qUu8odgypjoYSiU+9JUic6iQxI=	\N	f	11631bde-40b7-49c1-bf85-500f4570c2b6	Shahrukh			f	t	2021-09-29 01:31:28.95949+00			0	0	t	f	Shahrukh	\N
2435	pbkdf2_sha256$216000$rVKwDNrTQR4J$71nHmMl8k/2Oj/fuEjgEBLCe4lTB92uMiMJGUvknYQc=	\N	f	131953c0-1538-4bb8-adcd-0550f2f5f967	Gambler			f	t	2021-09-29 01:31:29.153585+00			0	0	t	f	Gambler	\N
2436	pbkdf2_sha256$216000$oq21asENP2Sr$7XdvAWVHrOdLZcQtZG++C1ucrCtCNERG+kflirzv8S0=	\N	f	d1bd881b-5b0d-4c93-ac29-14dfe7696b15	John			f	t	2021-09-29 01:32:50.70412+00			0	0	t	f	John	\N
2437	pbkdf2_sha256$216000$AYGBGrC9ruvw$X5liZLwaHNmhSayh6GxwX/0UePFc1x43uC8i5kVvr4M=	\N	f	86b3dc49-ee1e-418e-bf7b-3fb922c0a9e6	Shivaraj			f	t	2021-09-29 01:32:50.898881+00			0	0	t	f	Shivaraj	\N
2438	pbkdf2_sha256$216000$U8vfy9s1IygO$Jk8ak3vRjLI9mh8ZNdPQIACRl+k2jXoWXJPL/dcsbjo=	\N	f	4e56085b-68f5-4515-b9da-945c0ccbf5a5	Number 1			f	t	2021-09-29 01:33:57.225653+00			0	0	t	f	Number 1	\N
2439	pbkdf2_sha256$216000$mmdJW1R8LLMY$TWMrPb8x/bAta6TK8MZGfwt/X+0tzQUZ5m2+WP8s6o8=	\N	f	8a7e7d00-18e5-4ebd-b7cc-0379066c3a83	Master			f	t	2021-09-29 01:33:57.417729+00			0	0	t	f	Master	\N
2440	pbkdf2_sha256$216000$bRZ0cpqZjNDj$8KxPbD93KHL4ZKG0r8upyZKk9lAMzLFB83rBnP89tCQ=	\N	f	8cb7507f-e0b1-49f1-b984-9e2ea68d1a2f	Avenger			f	t	2021-09-29 01:36:44.209603+00			0	0	t	f	Avenger	\N
2441	pbkdf2_sha256$216000$7l3wpiq727SW$TgriNRFUEDpVbFPaxXcRIyoXrQUG5bwQ5vwkog0BoOc=	\N	f	29da2e6d-8ce1-45ab-8859-8a37b92c4813	Roja			f	t	2021-09-29 01:36:44.40279+00			0	0	t	f	Roja	\N
2442	pbkdf2_sha256$216000$cNJHoPQLtCNn$sACoBQVeGxBMqquJEg6y1BEuRcCIPWLSdeyEXatZMxs=	\N	f	550d4e40-c539-4b47-82b7-72b8da857a52	Poker Raja			f	t	2021-09-29 01:38:38.711027+00			0	0	t	f	Poker Raja	\N
2443	pbkdf2_sha256$216000$iy97IU0YEKx2$70ipfZnVb1YX8V9akSMTAYrmfjSHlDhLSyysawQFgZs=	\N	f	f03dcbaf-617f-4219-8485-6c6248cba37e	Sheetal			f	t	2021-09-29 01:38:38.902621+00			0	0	t	f	Sheetal	\N
2444	pbkdf2_sha256$216000$c5jW0LPP8hRG$HnNcz/oLnMTt7g1BdItFnu+80HJTz7cG+Cfd6hWr7hU=	\N	f	62d81be6-594a-4229-947f-2dccf04eb224	Roja			f	t	2021-09-29 01:39:39.105546+00			0	0	t	f	Roja	\N
2445	pbkdf2_sha256$216000$bF2tvAVpYesa$xG0FBy8VaYG4yAZ6sCjyXbNZgklKg4gq/3o2wd1wWmE=	\N	f	2fae07f9-0f2c-4334-9d9b-e775aea1f026	Avenger			f	t	2021-09-29 01:39:39.298199+00			0	0	t	f	Avenger	\N
2446	pbkdf2_sha256$216000$DC9ojnFRC9Sr$iBjDHXvP89ty7s2TzKF0aLKRQ7KJ0ovguDpBx3duRmQ=	\N	f	4a350f92-391a-42d1-915f-81aacd31b630	Krishna			f	t	2021-09-29 01:41:53.196713+00			0	0	t	f	Krishna	\N
2447	pbkdf2_sha256$216000$MEOmvRJKbbrv$53QQdX3LxXALgO+eaQhcAHeFeTZAnTa6s6W386SyBnI=	\N	f	dfae1f93-f1f7-401a-b3ca-f8d19c9519c3	Rani			f	t	2021-09-29 01:41:53.389884+00			0	0	t	f	Rani	\N
2448	pbkdf2_sha256$216000$1RDNIpKJwHDM$1q5J15QlTT4vSejwaAEVEA7QG/PZ6VwWKWXNCsfqqiM=	\N	f	ac3d9b2d-3421-4b9c-8cb9-2265f35287eb	Diamond			f	t	2021-09-29 01:46:10.980206+00			0	0	t	f	Diamond	\N
2449	pbkdf2_sha256$216000$1WZB9MyoEA0x$e0qu7eSjhzIJrWbLIrOVtz0evmtgvG4IobgKyGVc4tU=	\N	f	a5ddd7c7-9df7-4070-90f3-76c7d0e62438	Krishna			f	t	2021-09-29 01:46:11.172581+00			0	0	t	f	Krishna	\N
2450	pbkdf2_sha256$216000$rC7j7hxWv5nR$e4v78n5AFHPdthKhlwotr8EPy4kLM2OnLoeOHVy7JKU=	\N	f	98a713f2-3986-4d20-a90a-61452c1eda22	Raju			f	t	2021-09-29 01:47:40.454808+00			0	0	t	f	Raju	\N
2451	pbkdf2_sha256$216000$MqP0rjhklTBB$hsLx1oxBoQS6EYGj8UlHUGJFWpjmx3ZLAiU+lr9C6F0=	\N	f	1491eb0b-e4d2-43f4-ba56-5967de13aa9b	Sheetal			f	t	2021-09-29 01:47:40.647672+00			0	0	t	f	Sheetal	\N
2452	pbkdf2_sha256$216000$S0F4NAwjPf17$+QwZdUFSVRnWoIVQo33LMWqTGqSoe//8Pq4EImQRAo8=	\N	f	97ae0ce6-7784-4d0d-9fb8-26f083e6fbc9	Winner			f	t	2021-09-29 01:51:16.169685+00			0	0	t	f	Winner	\N
2453	pbkdf2_sha256$216000$Z0GC1OJglACa$eW51y2MaLE3F1hK5/xOZSioeMbEF2zRFJ9FwSQDiDzc=	\N	f	28542792-3ca7-4f33-b04e-81fbdb15f644	Master			f	t	2021-09-29 01:51:16.367775+00			0	0	t	f	Master	\N
2454	pbkdf2_sha256$216000$k7WnpFGgegYj$pLlCu+RMQv7kUJCHw0mrj7KrkA72YmlCDE+LBFDlNZo=	\N	f	0adfb0ca-ca9e-4387-8841-3d890ab86461	Rani			f	t	2021-09-29 02:40:50.889144+00			0	0	t	f	Rani	\N
2455	pbkdf2_sha256$216000$I7hNvC5nYX8S$Q56q15UwvsjMP7oycH9SGxtBwff7Y2oNcOSXCBtHy8A=	\N	f	f2f90ac8-f0e7-4d50-8c26-c17f0269f355	Shivaraj			f	t	2021-09-29 02:40:51.115153+00			0	0	t	f	Shivaraj	\N
2456	pbkdf2_sha256$216000$taBhJ3233zPI$9vH6ytHe4jbCJCQKOy32hzLtzIpqW0/pSOMlfRiqUBA=	\N	f	b7a18344-6081-48f5-ab21-c5313071816d	Vijay			f	t	2021-09-29 02:41:35.098383+00			0	0	t	f	Vijay	\N
2457	pbkdf2_sha256$216000$KaVA91on4flc$zaQK2UOoojeYKNz0Kyi91YPDBg8mgailmrxCGfEzcCE=	\N	f	ee6d9c71-cf16-4f4b-85ae-55189a4f021e	John			f	t	2021-09-29 02:41:35.301142+00			0	0	t	f	John	\N
2458	pbkdf2_sha256$216000$U3vDCCQVDk6Y$MR9ENzSWC2fglUgN+fI93wyGe8CDcB1FZPOflnDGjv8=	\N	f	937b98ad-eee5-4b9b-bb63-31093c062fbd	Master			f	t	2021-09-29 02:45:14.94021+00			0	0	t	f	Master	\N
2459	pbkdf2_sha256$216000$JNH9HRNWhKs3$DEiyMiLLFjv+eRZyJVpIXV6TzrL4KwODmuAGkPOxcnA=	\N	f	929cd851-e40a-430f-b7d9-8c3f0e20e373	Rani			f	t	2021-09-29 02:45:15.132741+00			0	0	t	f	Rani	\N
2460	pbkdf2_sha256$216000$q5MSjbiULPSZ$u8E9vA70A3ZJ76Fa1+237dPTIKQDbguSa1b2DSTOixs=	\N	f	8c28cff7-2d9f-4de3-bb1f-4d5428b44485	Avenger			f	t	2021-09-29 02:47:55.752211+00			0	0	t	f	Avenger	\N
2461	pbkdf2_sha256$216000$dKqusjY6I0Oy$rOJfkf3ziv/x2sVkOJPC5wA8fpJ8K1SAH//Idpf0Xa4=	\N	f	b3c3b7be-dba3-4fc8-a5ee-f5d46adb9286	Sheetal			f	t	2021-09-29 02:47:55.944957+00			0	0	t	f	Sheetal	\N
2462	pbkdf2_sha256$216000$pMbVvW3isaWx$ZFDi/leDRrBIPtn/DvutdKUtIqgS8Z+OUNMujYbJ48o=	\N	f	4ba6357a-01e2-443f-a7d8-c052c3987b11	Shivaraj			f	t	2021-09-29 02:48:56.907758+00			0	0	t	f	Shivaraj	\N
2463	pbkdf2_sha256$216000$zc7hZfuIpyRm$teh01I6A1uFa5LY7/QHVtL2WmYoeVKkFXg5HsdWwjCw=	\N	f	0ca4a4cb-339f-4361-ba64-b78574900bff	Major			f	t	2021-09-29 02:48:57.106299+00			0	0	t	f	Major	\N
2464	pbkdf2_sha256$216000$BOPfKzz3SjG6$nkJHOnNlU9DQbZEgSe6QehCVAmGfu8f66puFVcraJoo=	\N	f	f39b6d6e-c3dd-4079-92fa-ce7218987e47	Roja			f	t	2021-09-29 02:59:14.233221+00			0	0	t	f	Roja	\N
2465	pbkdf2_sha256$216000$7t5hjmP5YwlZ$k8t54ZBcUnuuCPjjoBqRx2a4d7eb1EsfAw6V0vYr7S0=	\N	f	b8f5cec8-0087-4a9b-8712-49722371697a	Loser			f	t	2021-09-29 02:59:14.424454+00			0	0	t	f	Loser	\N
2466	pbkdf2_sha256$216000$hSYhmnMC2CmZ$0DD+ndhOQ9eu3tx8xIIsdU+k0EbQbcPShOmo349BIZM=	\N	f	ff6f1f79-df78-4360-91a1-2bc0949a47e4	Sheetal			f	t	2021-09-29 03:00:16.031967+00			0	0	t	f	Sheetal	\N
2467	pbkdf2_sha256$216000$PkRQvC0ER399$KBVzxgzD20xQ76wyRo9YRN0jr+XgrENvQWv2c3ZrlbI=	\N	f	9ca9a164-8d55-4799-ae6d-df1372b52270	Winner			f	t	2021-09-29 03:00:16.226925+00			0	0	t	f	Winner	\N
2468	pbkdf2_sha256$216000$TMX9tJqJs87C$2BfRDmZ55rGJAFReZsERxKhoxz3mrFuYEsk1Kqg083E=	\N	f	17392e61-b6a4-4076-868a-39e00e4a30db	Krishna			f	t	2021-09-29 03:02:14.617699+00			0	0	t	f	Krishna	\N
2469	pbkdf2_sha256$216000$vIgNYhnm9fKm$8fsxjjyDbfaqHuNfdHlRCGF4CmgH8b10uQqwIFFkb7o=	\N	f	3e8d98a0-c186-4cf4-bf3f-3a32962c9000	Ruby			f	t	2021-09-29 03:02:14.809352+00			0	0	t	f	Ruby	\N
2470	pbkdf2_sha256$216000$oda6RMyyv6D5$mASGrfBfs03iuLoASYCGHDL2ydjG2bmLkTNt19pbeyA=	\N	f	88a397bf-9eaa-4edc-b094-329a2809e03d	Shahrukh			f	t	2021-09-29 03:02:53.188322+00			0	0	t	f	Shahrukh	\N
2471	pbkdf2_sha256$216000$lElmRWPVBM5v$logZ825EDeD4GvjbCp/dDW3qel6oThBy6+LJRz7Ar38=	\N	f	5142c9e5-a353-449b-933a-0ffd5e51d083	Winner			f	t	2021-09-29 03:02:53.381902+00			0	0	t	f	Winner	\N
2472	pbkdf2_sha256$216000$ko96W5jYVcXv$4KoXD9V/YDpVoiPQUuDYjDXPKEKurElhVlx2k8IuW48=	\N	f	2aeca5ca-bae0-4670-9f93-4d4a9daa44ef	Raju			f	t	2021-09-29 03:07:28.724912+00			0	0	t	f	Raju	\N
2473	pbkdf2_sha256$216000$xiCSq5n0h7iC$qrIgBQRNQ9gNButE40bbrT9RB/Eq7xfeNv6DyIkEKEc=	\N	f	d14028f7-849d-4904-a056-62e0ccd799ad	Poker Raja			f	t	2021-09-29 03:07:28.91811+00			0	0	t	f	Poker Raja	\N
2474	pbkdf2_sha256$216000$jbc84b4zwLzX$JAIrTJFlLsnswuv/g8zZYbi0IkSdFYs5MwO1yvTqKJ4=	\N	f	52c08833-1ea7-4c9f-8122-cab2babaf432	Winner			f	t	2021-09-29 03:13:32.691637+00			0	0	t	f	Winner	\N
2475	pbkdf2_sha256$216000$MIAjzrkTRRT0$glf9iH3m1O7ywxxM4d56Uz78Jsiw8WZPplt7ZWHe/tU=	\N	f	f5ba2829-c5f8-4a4c-b786-33beaeb908bf	Avenger			f	t	2021-09-29 03:13:32.883028+00			0	0	t	f	Avenger	\N
2476	pbkdf2_sha256$216000$NAXWoqN6ImbM$Ld3DfOodjKeOjUkfv8zzdfKtyqXSBDR7dOalFowtW84=	\N	f	77cda8f8-43ca-4916-aa45-84cfc449e159	Loser			f	t	2021-09-29 03:14:23.994653+00			0	0	t	f	Loser	\N
2477	pbkdf2_sha256$216000$BHHeznwytCtg$yM8DW1GHc01xwSC02qS6dYwldVABFTDI+eMpYWQrN1M=	\N	f	21f55b3c-4182-430f-b498-03bfa93f9f69	Ruby			f	t	2021-09-29 03:14:24.199459+00			0	0	t	f	Ruby	\N
2478	pbkdf2_sha256$216000$mKWJzzh2peY7$POnraK55q42aOEN38Lja1PjC/CQoBJezvb80fqr/Tpk=	\N	f	ec0735a0-7c7f-43f0-8692-bd0c9f393bc3	Major			f	t	2021-09-29 03:15:11.293718+00			0	0	t	f	Major	\N
2479	pbkdf2_sha256$216000$SonZp4NDTpsX$UfaGZz5p47e+OkB1VVOdfrNrmoJUZUbpPqYHQc9/0pQ=	\N	f	64351ce6-ed9b-4c6f-9c05-bce95a532fca	Number 1			f	t	2021-09-29 03:15:11.487276+00			0	0	t	f	Number 1	\N
2480	pbkdf2_sha256$216000$2fhPda0OiDxc$8h44QrFckjGEtPnsbfvM5pCG7XpiK88lN8CkMlitTo4=	\N	f	bc48e20b-9e1c-448f-84eb-9cb14fd2f630	Number 1			f	t	2021-09-29 03:16:15.98848+00			0	0	t	f	Number 1	\N
2481	pbkdf2_sha256$216000$jIWdch9eTaRc$TdbrnPszUaq02Ohp6tYYSorNOe8ultR07hHFDm8dUoo=	\N	f	5bfaf3e0-30a1-4900-89bb-56d2a161b48c	Raju			f	t	2021-09-29 03:16:16.179453+00			0	0	t	f	Raju	\N
2482	pbkdf2_sha256$216000$wPE3FOdBoz1w$i38sb6jhcCRzUTZc5HkB4mQE45OIpT+YLEwmaq5Eu8s=	\N	f	32df6b5e-3e61-4a78-be93-f503888477fb	Loser			f	t	2021-09-29 03:17:16.535203+00			0	0	t	f	Loser	\N
2483	pbkdf2_sha256$216000$syJjbuLg86KC$DWrEWpWuQ9GqckKKnupqFjzIN0dFvdfrYUVf05IIwGE=	\N	f	e22481a5-c16c-4d67-a0c5-b6fa057ad632	Hero			f	t	2021-09-29 03:17:16.726755+00			0	0	t	f	Hero	\N
2484	pbkdf2_sha256$216000$6ngJfhzIoVZ7$2IQAfw/N23w8i7s8rFoD+sMQTaMOt54JR7Wo8ol4WxA=	\N	f	434c97f8-e9db-4997-9c55-1520eda74ae2	Loser			f	t	2021-09-29 03:22:30.623562+00			0	0	t	f	Loser	\N
2485	pbkdf2_sha256$216000$1pRJC5vcErci$aWVT9DfayW/dnQYRPt5v/SOeCqHZXgw9njYyjvNGt9s=	\N	f	7651446f-9f35-4a5a-8d05-3a1d161fc229	Hero			f	t	2021-09-29 03:22:30.821053+00			0	0	t	f	Hero	\N
2486	pbkdf2_sha256$216000$FgdAZ9WhabFz$+hlVsy4dHoeIwyygDk8RUAXRdzL6+J9wa9H0UqPHWlc=	\N	f	0cab0d98-a614-435d-8ce1-17949a0b2518	Rani			f	t	2021-09-29 05:45:00.050219+00			0	0	t	f	Rani	\N
2487	pbkdf2_sha256$216000$1lmtLlUeOOkp$xjaq3p+arI/rY//SiGeFFh7m9ursaNfsMUpV6MSPnh4=	\N	f	2f2764b5-7a1d-4029-99b0-961cfc19a536	Rani			f	t	2021-09-29 05:45:00.407527+00			0	0	t	f	Rani	\N
2488	pbkdf2_sha256$216000$dSYzEgD443x0$67i2oKUiyukBBOPxZSH9URCt3Dg6ZyjUKNUkomhmXyw=	\N	f	b14d5c65-ccda-4f0b-8590-e8b234dd2283	John			f	t	2021-09-29 05:56:15.589936+00			0	0	t	f	John	\N
2489	pbkdf2_sha256$216000$JbVP5mZ9oEIb$ykGkXlSCoAy5P88IXMaz/jcW6Gr3xuXgEDVlNHCOJsw=	\N	f	ed2c6907-44b9-49f1-addb-dda686bec4b0	Ruby			f	t	2021-09-29 05:56:15.803217+00			0	0	t	f	Ruby	\N
2490	pbkdf2_sha256$216000$hmCSYRvg22aT$vb7nb6FxEDMI9LJp3O8ETn2lgN/jT3MwV1pkF1l80s4=	\N	f	a058d3fd-5457-4b49-8ad8-c47120834222	Master			f	t	2021-09-29 05:58:40.773348+00			0	0	t	f	Master	\N
2491	pbkdf2_sha256$216000$uUd40D02VVqi$z9FJpwkwdgG9LOXB1RJhe7XNjKcuThay0mBcZiofqT4=	\N	f	3d6eda05-e937-4cc0-b22f-2f313b734007	Winner			f	t	2021-09-29 05:58:40.965434+00			0	0	t	f	Winner	\N
2492	pbkdf2_sha256$216000$O1pRCfUa2gk8$otOM0H5jKzEURR5tlHOZIJ3kua78eO7hQQaGJjqas4I=	\N	f	607be4a6-4b3e-48cb-a112-bca7af6bf520	Vijay			f	t	2021-09-29 06:05:20.633281+00			0	0	t	f	Vijay	\N
2493	pbkdf2_sha256$216000$rThBonZTN5or$XPOJ+0Gr88nU9cepdXxvQ+DW1By/XE7Hp3BXBqzXRSE=	\N	f	a9d69b35-bc84-485f-a466-8af02583c887	Krishna			f	t	2021-09-29 06:05:20.854901+00			0	0	t	f	Krishna	\N
2494	pbkdf2_sha256$216000$Qp7VHrB7NCRv$K/Gv9mepWzTMOoyPB3vLxU3a/gGusuDYCu6LJAhBQ/g=	\N	f	b7f5e66d-9dfc-47b2-9b84-336207017b0e	Diamond			f	t	2021-09-29 06:07:03.311115+00			0	0	t	f	Diamond	\N
2495	pbkdf2_sha256$216000$z0XpUxJ4UraB$Y3Ft9Bg/aN/n4HlgRisw2b1KP4eyhSzMgSIAga1tyNQ=	\N	f	d2f58909-ac56-4e5e-b627-ef579a63b30e	Rani			f	t	2021-09-29 06:07:03.503938+00			0	0	t	f	Rani	\N
2496	pbkdf2_sha256$216000$hXviJPK0j9E1$2bBRZxK4QsbsQhHSoutiRm5VqZrcN9bU/s3WvklZQFA=	\N	f	ecc188b3-ba3d-490f-858b-7e862b309ce7	Roja			f	t	2021-09-29 06:13:56.589657+00			0	0	t	f	Roja	\N
2497	pbkdf2_sha256$216000$TwfSUyf3UCw5$TtjG5PB6SVtA+bMDKOyIGL49Zom0uV3fmF3tUKlvR9k=	\N	f	5004c33c-1d10-45a8-bcd3-58fef40df68e	Winner			f	t	2021-09-29 06:13:56.913365+00			0	0	t	f	Winner	\N
2498	pbkdf2_sha256$216000$qG3GbpkttsMh$bTt+uNb0au6eE9jtXU5yEqUSdTcS062Ro9JV7zHOOH4=	\N	f	8515f7fd-7c86-4544-9797-45392d4654f4	Roja			f	t	2021-09-29 06:33:33.103424+00			0	0	t	f	Roja	\N
2499	pbkdf2_sha256$216000$4npiCgwNgkWn$EDgq2SnAZsvQ1QlbAlGJDw6YQ/z+qECOGOKhhgTGxCQ=	\N	f	8d2a4ea9-e5c9-474e-b6b1-464bd1ebf9cc	Krishna			f	t	2021-09-29 06:33:33.296139+00			0	0	t	f	Krishna	\N
2501	pbkdf2_sha256$216000$Ai9yqF9f0tdZ$g9gZhJrvh9p+yIP9YnxjF84HrAMLo0+p4ZKF0IETw0Q=	\N	f	9b2486d5-8e89-4c6f-ab80-970a2350ba64	Vijay			f	t	2021-09-29 07:57:07.433671+00			0	0	t	f	Vijay	\N
2502	pbkdf2_sha256$216000$4zrIGVjinAyY$M15o3X+uTTUBjsT6Wm20Ct6yDvcWGEpq9mnqN+NATMk=	\N	f	299476fe-d6dd-469a-819b-8ca95534c31d	Mara			f	t	2021-09-29 07:57:07.639697+00			0	0	t	f	Mara	\N
2503	pbkdf2_sha256$216000$P7fDGrIkPJpA$v+Hf5PzfV/r2cDW1o5BtwAzv9KkAV+4OaBda/eEbK1U=	\N	f	0184f7df-8bda-4fcc-892d-fbb2512d216e	Shahrukh			f	t	2021-09-29 07:58:44.42694+00			0	0	t	f	Shahrukh	\N
2504	pbkdf2_sha256$216000$G1r80DUzhqiI$eeGrxxb4XDqgwavNLS8jsyw0fXB/OPL+BnCJzFhG0HM=	\N	f	39c0f6a0-75ff-49bb-8e27-f6999769e571	Gambler			f	t	2021-09-29 07:58:44.619813+00			0	0	t	f	Gambler	\N
2505	pbkdf2_sha256$216000$sCxkSrCMO46l$9EIKE5x2tAk7O5wLox+OhcIoSJj3tF2LvuueHu3QaGg=	\N	f	c4947d61-2b91-4d6a-b663-786b6f0f2667	Raju			f	t	2021-09-29 08:02:44.279173+00			0	0	t	f	Raju	\N
2506	pbkdf2_sha256$216000$1Qx80pHARJlm$mV+PLYm/iimilS1iL9GId3d9JupWm7GYTf394Ynt+mQ=	\N	f	ee2e9008-4a9a-4c4b-ba03-7393c2f9dc22	Gambler			f	t	2021-09-29 08:02:44.469448+00			0	0	t	f	Gambler	\N
2507	pbkdf2_sha256$216000$41dIeodFQxiX$9uv8zan8pcrNsIAnQUMC8/SsmtNr5D98pIIc6JzvWOU=	\N	f	82eb0d56-fa88-42b6-b504-da79b6f57aa1	Winner			f	t	2021-09-29 08:07:01.084809+00			0	0	t	f	Winner	\N
2508	pbkdf2_sha256$216000$R0hrAbjj6UlU$VfMduLHGdnlirNGP+8ng3oZEfl5Sfn5jOS4wzdW9VEA=	\N	f	f0ae3c83-c732-499c-aa1d-192cdcf4b854	Raju			f	t	2021-09-29 08:07:01.525072+00			0	0	t	f	Raju	\N
2509	pbkdf2_sha256$216000$ARkWuptFgHmm$W1SfuHKlfCoGf9RXuTCKeAxYGIZdhpUOIdKPF03vKrs=	\N	f	a0984774-9043-45fb-9b86-70ccbfda3de5	Hero			f	t	2021-09-29 08:10:41.953617+00			0	0	t	f	Hero	\N
2510	pbkdf2_sha256$216000$SufmnMUSYBo3$OjfTlvCT++GLTm+qO+bAM7678TGhJx0H59X1vKli0qQ=	\N	f	1966e187-f1f2-42be-8f4e-efb220194b0a	Shivaraj			f	t	2021-09-29 08:10:42.145115+00			0	0	t	f	Shivaraj	\N
2511	pbkdf2_sha256$216000$3kOS3S0yRvYY$2L0uwf+UZkC85/wwVDjQj4vlQ3oDcNblSF65cWWFne8=	\N	f	1a79c1fb-13a7-4ffd-ad6d-72ec2bea432f	Akshay			f	t	2021-09-29 08:12:45.121768+00			0	0	t	f	Akshay	\N
2512	pbkdf2_sha256$216000$F24820Goxfq7$fhE+EeGJFZ5TybKG1T3XGKqXjooxP0tTl799LuBKbyE=	\N	f	4f79377e-322f-4000-9cab-4191e5da7345	Roja			f	t	2021-09-29 08:12:45.325857+00			0	0	t	f	Roja	\N
2513	pbkdf2_sha256$216000$gLcHzZgS3RSY$4SWsaR4yLRfjfDOrJNFK62Msmik2q32+oMHZjvpvFkw=	\N	f	47ff634e-7cda-4941-bf0d-eed3361fab01	Roja			f	t	2021-09-29 08:15:44.59167+00			0	0	t	f	Roja	\N
2514	pbkdf2_sha256$216000$DOyCpxfrYBM7$a/485pj96e8KvHefyR7KNMZmWyC+L6d4A88OP8KlwvI=	\N	f	11c08d36-0289-4d18-a734-75310f3f7049	Loser			f	t	2021-09-29 08:15:44.782952+00			0	0	t	f	Loser	\N
2515	pbkdf2_sha256$216000$QggPGO3HpzaG$jkQEqSF3vk0EH983rL+zp+OAQS+x2KtaYlZ4i5B28yE=	\N	f	056b2039-cceb-4440-aaf8-c414f4c17229	Mara			f	t	2021-09-29 08:17:51.696037+00			0	0	t	f	Mara	\N
2516	pbkdf2_sha256$216000$IJB1cuuGsLWs$oI5bf0eq8kh4NCv0IK4NEOnDwfm9RWfKtJVsyiJsrEk=	\N	f	03e66f1d-acb5-4399-bf38-0eadb3d53bfd	Krishna			f	t	2021-09-29 08:17:51.887173+00			0	0	t	f	Krishna	\N
2517	pbkdf2_sha256$216000$JdeIjV1qVVlt$dW3rV/roVGSU1FiAFzWXXF2/AvDotr8hq18tzreIy6c=	\N	f	b862a0bc-9274-441f-8c58-daa6fee9476f	Winner			f	t	2021-09-29 08:21:22.62604+00			0	0	t	f	Winner	\N
2518	pbkdf2_sha256$216000$3nLD0stAxpo1$8iwIlsUh+FwbG+HHhpw6VQcCC57NkNgr2lNt7syQjho=	\N	f	c1842081-fe7a-45b1-829c-c7e59b2e3190	Ruby			f	t	2021-09-29 08:21:22.82142+00			0	0	t	f	Ruby	\N
2519	pbkdf2_sha256$216000$nNbbsu3SZh1R$MEnu/m5DaSMW44YdtChikgmuL4PsaBZoUnh1dR4iqj8=	\N	f	67c598eb-a522-45b8-9bd6-1eb7742b8329	Loser			f	t	2021-09-29 08:22:37.376224+00			0	0	t	f	Loser	\N
2520	pbkdf2_sha256$216000$xSYuGpIDoRwS$1e7iVr6JFc/1aeWmdTQxSCeW1EVjlsnoApqP04aAbAo=	\N	f	510acecf-5746-4cef-af9a-b4d26f5d1d4b	John			f	t	2021-09-29 08:22:37.674863+00			0	0	t	f	John	\N
2521	pbkdf2_sha256$216000$yjFhedDkmC26$wGhDBa++3BDFr7iQ3+PFCKbVe8UK5s392WyCtu+hPTM=	\N	f	3d8dd679-a89e-4712-9b03-2caacff1b281	Shahrukh			f	t	2021-09-29 08:22:58.049056+00			0	0	t	f	Shahrukh	\N
2522	pbkdf2_sha256$216000$8HnHW50E8XkY$Snyi5lARxSEeBPh6YkYwUma8C3ZUZ48tNDR3ZMtMQF0=	\N	f	ffc830b7-91b6-4c87-9431-08cad0554c3b	Poker Raja			f	t	2021-09-29 08:22:58.244994+00			0	0	t	f	Poker Raja	\N
2523	pbkdf2_sha256$216000$91fGudsrHg5A$5pSdRdcEF51UnBzCg8y0sD49LXkzg87T6YO/I5bYdzY=	\N	f	eebca0f6-c308-460b-a0f3-b3a9c722c073	Avenger			f	t	2021-09-29 08:24:18.902883+00			0	0	t	f	Avenger	\N
2524	pbkdf2_sha256$216000$IGlo3tLo6yn9$KWw6xdUww8y1Z/+je+WN0UeQRSjT/M435D4uPKZce9c=	\N	f	f689d2c8-1cbd-4c81-b1a9-fd258588e12b	Sheetal			f	t	2021-09-29 08:24:19.094271+00			0	0	t	f	Sheetal	\N
2525	pbkdf2_sha256$216000$KEoJxz4EwBEe$1XfZpk5N7m5PTqAvhWOOkcKHQ6OfQGdwLzG+EvwMUSA=	\N	f	7cc8b18b-5884-499b-acb2-ae652567c58a	Gambler			f	t	2021-09-29 08:25:57.075632+00			0	0	t	f	Gambler	\N
2526	pbkdf2_sha256$216000$f1MiOKcrfcBh$ecuWiACW7MdMy/QigvCf6PkreukNWOsJo1r0vVmgtEg=	\N	f	0fdb61e3-3110-4dcd-9834-05aaa74f674c	Ruby			f	t	2021-09-29 08:25:57.269507+00			0	0	t	f	Ruby	\N
2527	pbkdf2_sha256$216000$uhjFoMwGqX7a$ZyvO50IoT72KMUp4bQkQAA48Yy0yVoVMQh1GQiEnjtQ=	\N	f	24184365-affc-491d-9e61-bc5930164326	Shivaraj			f	t	2021-09-29 08:27:44.136889+00			0	0	t	f	Shivaraj	\N
2528	pbkdf2_sha256$216000$1ovWNc0j8L9q$AFi6td1loA951TR4jcyLvXVpNrvkL3axNvOIwiMzdOU=	\N	f	06c389cd-a001-4773-a27f-1359d74175e4	Gambler			f	t	2021-09-29 08:27:44.330201+00			0	0	t	f	Gambler	\N
2529	pbkdf2_sha256$216000$bYwhd08OvBEr$BhpFenZpY4R2sHT+MNHOYjZQZqoyP4VxAnXogjFtd3c=	\N	f	e1f0ed6f-d356-4539-98e2-8bdcc40aad3b	Krishna			f	t	2021-09-29 08:29:43.725902+00			0	0	t	f	Krishna	\N
2530	pbkdf2_sha256$216000$rGSqO79i721c$c9F5ok9UJXzBWBmpGrzwVpINSX6nbfeoUKOA/zegCkg=	\N	f	3b784268-da0a-4eee-aed0-269393e0be73	Hero			f	t	2021-09-29 08:29:43.917099+00			0	0	t	f	Hero	\N
2531		\N	f	+917878821342				f	t	2021-09-29 08:37:02.483422+00	+917878821342		0	0	f	f	juber	JUBE9230
2532	pbkdf2_sha256$216000$7G434zgVsYDW$IsE9XfWEpAqCNlioYL6C81S2ZHrR/HsMBSOVvjMPIy8=	\N	f	dfb49eb0-a0b8-4efa-8c6a-199a0115dbba	John			f	t	2021-09-29 09:17:32.994549+00			0	0	t	f	John	\N
2533	pbkdf2_sha256$216000$XHav3oYnzZal$JNFBLPiUgOdPMbcUvH6y3NkF9LvH3livIJ/8UNsiNB0=	\N	f	f9071be4-2e09-4635-a066-e2b5d046bf0d	Rani			f	t	2021-09-29 09:25:44.635308+00			0	0	t	f	Rani	\N
2534	pbkdf2_sha256$216000$BIIVqlMqXmHm$8hqDGxmV1eJzsQ2mOul6s5mDJfjd3ioILaDc/F3veus=	\N	f	5f0afab6-7075-49f0-95bb-cc8037f602ae	Loser			f	t	2021-09-29 09:30:23.49307+00			0	0	t	f	Loser	\N
2535	pbkdf2_sha256$216000$kFZK0orOKwqL$I32+883sNU+MSVtUVF+xUTeqTjcisqLZTWRodvlBLqQ=	\N	f	3d283b94-3901-4f84-8d59-33041d31ed3f	Krishna			f	t	2021-09-29 09:35:18.272007+00			0	0	t	f	Krishna	\N
2536	pbkdf2_sha256$216000$R5K3fjLyp0N7$fIgBuJzkDs68xPHbsZ9snQATcb37xzU94KgdnzFhWSU=	\N	f	3131848f-b7a3-43d5-acfd-2d0f591d3809	Gambler			f	t	2021-09-29 09:37:55.277304+00			0	0	t	f	Gambler	\N
2537	pbkdf2_sha256$216000$Ce17I6XSISIA$bAxEEZPhrFMXkb1KRaq6bsdpERgR8kte8mVpVUvfhBE=	\N	f	9ce89cf2-872f-403c-83ab-45cfd49e5604	Krishna			f	t	2021-09-29 09:39:39.401378+00			0	0	t	f	Krishna	\N
2538	pbkdf2_sha256$216000$YPOmD9BmdWQS$6qKY5m7YDab0+6/Wv2JeUCc6rHY7xpDT/OUabFuCZto=	\N	f	1e9ffc73-530c-4023-b0c1-c195a28c3687	Ruby			f	t	2021-09-29 09:39:55.854847+00			0	0	t	f	Ruby	\N
2539	pbkdf2_sha256$216000$1VTLJR8thvZ2$6Oj8Xh4ADkRcrD76XX24xRxWxoZ+/F8KnPJd6Hn/0h4=	\N	f	052dfe70-3b2f-48ca-b367-bb8500a89d51	Hero			f	t	2021-09-29 09:43:34.557634+00			0	0	t	f	Hero	\N
2540	pbkdf2_sha256$216000$xRK5IFQzucF2$LF5B3SZnNLdLudRGjzDOXkt090hwAb9fnBgTKyYnuYs=	\N	f	ad0d1c39-1830-4ba1-b6bf-3672fb8c9e64	Master			f	t	2021-09-29 09:50:02.773252+00			0	0	t	f	Master	\N
2541	pbkdf2_sha256$216000$oGaFQsQgKtZI$eEJii6xk4BL/fen+huPuQg6eJVaR/rLcekpwR354Ea4=	\N	f	dddaa834-10e5-4960-b41e-c5d7bc160f78	Krishna			f	t	2021-09-29 09:51:35.825367+00			0	0	t	f	Krishna	\N
2542	pbkdf2_sha256$216000$3EkLYftjcQop$Qfbvwf1J9U9+0lx+3ps0W7hGwVdCkntUpRyk7lOaCFQ=	\N	f	3cd3db4f-edf2-4408-aa78-df7e7903eace	John			f	t	2021-09-29 09:51:48.966575+00			0	0	t	f	John	\N
2543	pbkdf2_sha256$216000$zNjgBye2Dbfk$p13vhQSRghMwhb6NaQG7uXCzm0/p0Ny/UKvQBdpj8N8=	\N	f	8f2a17e5-307f-4e9e-90ab-1e30ff9fb97c	Shivaraj			f	t	2021-09-29 09:54:26.427082+00			0	0	t	f	Shivaraj	\N
2544	pbkdf2_sha256$216000$5lqV1Jiwyaf6$C8TRmwu2RQXXnQVn8V+9mQdhXT8r7aVgCcSbyeV0TUE=	\N	f	487aaee3-6e78-4ae0-a830-a10f1f6b275a	Shahrukh			f	t	2021-09-29 09:56:14.407744+00			0	0	t	f	Shahrukh	\N
2545	pbkdf2_sha256$216000$0QxDgaWklMCI$yAWJfc5CiEcpPEAuTomGU2R/OpEnPtpYSyZZKqf3qu8=	\N	f	956d2c6c-86f8-411e-bd8e-a2138d18740b	Sheetal			f	t	2021-09-29 10:11:23.050673+00			0	0	t	f	Sheetal	\N
2546	pbkdf2_sha256$216000$YcmlWdDjWYxo$H9Ubc6CJO3dgU2DM+WsCJsLEFGFoDDY1O5Axuguyats=	\N	f	4817e249-06bd-4170-9b2c-de021d82dc55	Roja			f	t	2021-09-29 10:11:23.243055+00			0	0	t	f	Roja	\N
2547	pbkdf2_sha256$216000$jd0XZCQjztIe$MvGLaTSmYhOCqv3JFYR2u3fxBDSv3aZ96GuBaZAncd0=	\N	f	d9521516-1aa0-4e06-8cbe-7a68e5faa240	Mara			f	t	2021-09-29 10:20:00.338865+00			0	0	t	f	Mara	\N
2548	pbkdf2_sha256$216000$6lHae9e7laaX$NmKoAQZQkgFsso9IBRFeuNWy9D4NZDV7j8r02itfUd0=	\N	f	6ed2e939-6ead-43e3-920c-2b63e1a21b31	Roja			f	t	2021-09-29 10:20:00.532788+00			0	0	t	f	Roja	\N
2549	pbkdf2_sha256$216000$2Yaj6Vf0EH7B$tanBkLKL6y8OJw3y19DBpm2emFzx4VmqOybsUO8b2mo=	\N	f	3221098c-4ca4-48cb-af73-80a0d9135ec8	Major			f	t	2021-09-29 10:29:05.52482+00			0	0	t	f	Major	\N
2550	pbkdf2_sha256$216000$GRRWGeo0lgC1$g0ZcA89n9yOP56rBf17wJ8WImcxGg5ohK8LNvNdOA9g=	\N	f	f99a86e7-7ea1-453f-8fd1-0b316d0f708c	Winner			f	t	2021-09-29 10:29:05.729245+00			0	0	t	f	Winner	\N
2551	pbkdf2_sha256$216000$gM28EiBjBWHH$nAibT/UMYMnqW+ceVTIvziuzJ5qb0WEo4MjkwSvPhbI=	\N	f	ad19060a-122a-4b93-8741-31c03e4a6fca	Poker Raja			f	t	2021-09-29 10:32:28.493611+00			0	0	t	f	Poker Raja	\N
2552	pbkdf2_sha256$216000$UsRccscUAfRF$AxnRDAM+v/9ZOWL4nmHVO10aKjGxbEAUViui26l/Bpg=	\N	f	60234eff-7807-4d21-9119-193179e63d1b	Master			f	t	2021-09-29 10:32:28.683566+00			0	0	t	f	Master	\N
2553	pbkdf2_sha256$216000$cbDmGXKUG3or$luGG5ZMKfbwCdbJob5Zhv1GrPRAsTi80npJWF65+I7g=	\N	f	0a75edfe-3912-42a4-9afd-80fd9c93245c	Poker Raja			f	t	2021-09-29 10:33:16.573356+00			0	0	t	f	Poker Raja	\N
2554	pbkdf2_sha256$216000$LSalHko07YPw$rF8cz/GBrdX9ruww+IAXoSNg8ju9Wkoj+bWvBoK9A0c=	\N	f	942b9762-ccb2-4ff0-947f-89bdcfd153d4	Ruby			f	t	2021-09-29 10:33:16.771639+00			0	0	t	f	Ruby	\N
2555	pbkdf2_sha256$216000$2i2H0Ws75Qf6$xF8HEfoUfOJ9a6GbqKXifbomLDggtI7G0wDWsdVcoNU=	\N	f	a92064b3-08da-44c5-bde8-5d026fe7dd28	Hero			f	t	2021-09-29 10:35:46.092548+00			0	0	t	f	Hero	\N
2556	pbkdf2_sha256$216000$3uzHkLrVOgjc$GzUHMNdSJnzUy01NA6OFoDcMBqSspGGORmsP9O9G8jo=	\N	f	5abea48f-f86b-4cd4-8c5a-a6d50fe85cdb	Loser			f	t	2021-09-29 10:35:46.286799+00			0	0	t	f	Loser	\N
2557	pbkdf2_sha256$216000$BvfdpB0SeSrQ$BerIsabvFLcgAeS1/mHI39+idXxKMJQYJvQ79oPdqCE=	\N	f	c7bfaa11-0708-41a2-b6ee-28d17119fd0e	Number 1			f	t	2021-09-29 11:21:26.528718+00			0	0	t	f	Number 1	\N
2558	pbkdf2_sha256$216000$6DOuVid2z81O$nIHvtvYjkEjT4lbswNkDQoDOXJ0B+2J4EWM5guIJ9dw=	\N	f	574a1702-8932-413c-9504-d177e0e857e7	Avenger			f	t	2021-09-29 11:21:26.719425+00			0	0	t	f	Avenger	\N
2559	pbkdf2_sha256$216000$DLeuNthjoLb7$V1TQUG23QB2B7UbCBf4EV5uAHBzfQI/FSjSMUw9QrvU=	\N	f	5d76e16f-cad1-4b20-bc7f-a246da861ae6	Loser			f	t	2021-09-29 11:23:27.929143+00			0	0	t	f	Loser	\N
2560	pbkdf2_sha256$216000$8yxcQGLfXpev$8MTpzpZcRloSOngiX62cwop+zkmUA6WwWkAw2TrWlWE=	\N	f	5959990b-a1d8-4670-9ad2-7e9f313f2392	Poker Raja			f	t	2021-09-29 11:23:28.120789+00			0	0	t	f	Poker Raja	\N
2561	pbkdf2_sha256$216000$9Vw3FZ2dm0HG$1x1yqMQY2fCh/AwvvLfYFYVon9PY8ZtelCIRCbLxC8g=	\N	f	c10bab9a-1bf6-4f9d-a7c0-19b5c12a33d0	Vijay			f	t	2021-09-29 11:26:09.248063+00			0	0	t	f	Vijay	\N
2562	pbkdf2_sha256$216000$XyT13sOQ02ZB$iWn9mrb3QH1DwMuLTyZu8wBZwsuR0D+VYpiCh1IWjcI=	\N	f	bb80d4cd-860b-4d44-8adf-07c2fb5f5bc0	Vijay			f	t	2021-09-29 11:26:09.437181+00			0	0	t	f	Vijay	\N
2563	pbkdf2_sha256$216000$t95OGNINx2Ok$9dS9eEFjKA31r5Zr/H7NYpdtza3abvp1zCOUQpBdWbo=	\N	f	4aabd260-e361-433f-a07c-0b42e28f25d8	Poker Raja			f	t	2021-09-29 11:26:39.171201+00			0	0	t	f	Poker Raja	\N
2564	pbkdf2_sha256$216000$Kdm1unGmnKUq$IVFkPZBVuJa+YKErIdzR1BEVlfZL89r7bK7xj4+u2CQ=	\N	f	3a57dc71-84be-4c5c-8955-d065e64bbdc0	Shahrukh			f	t	2021-09-29 11:26:39.360032+00			0	0	t	f	Shahrukh	\N
2565	pbkdf2_sha256$216000$UUT0r41Zd863$gqogeBO9P/OFUiE/U1QNcKYVTyBaAKUL8T+8lzYMl+I=	\N	f	78db0105-8488-4fec-9129-089a921d9978	Major			f	t	2021-09-29 11:29:46.434734+00			0	0	t	f	Major	\N
2566	pbkdf2_sha256$216000$xPyYaKuftqSq$iBiAOkOE2uC0UQweU8gbe8UnhMOsEQ8PZv/k7yrjp/k=	\N	f	6ec20f0f-0fb2-48cf-ab74-d957e211f1ef	Sheetal			f	t	2021-09-29 11:29:46.638109+00			0	0	t	f	Sheetal	\N
2567	pbkdf2_sha256$216000$g7PaJYwE5SJm$D2pk61RHW3xCw7sUdPDmYe3rz5SxO76i+yRG9aKrCBM=	\N	f	1ee2d0dc-389f-4ad9-a2b4-7a07ca59d967	Avenger			f	t	2021-09-29 11:40:46.872893+00			0	0	t	f	Avenger	\N
2568	pbkdf2_sha256$216000$uIihPzQN0R9J$c/vUbFBGJdd3n1QlpRU1H+Yyvo4j0LBYphVVtEZObWo=	\N	f	e6e83df8-6f0b-4908-9482-553551bc9529	John			f	t	2021-09-29 11:40:47.073959+00			0	0	t	f	John	\N
2570	pbkdf2_sha256$216000$EKVkMbEFv8Xp$3ppSXhH887XvMxLaymHVLHcUKuKK2O6aGmaNyokJKXM=	\N	f	955f3995-0a74-40ea-8951-ca1f4aeeecab	Krishna			f	t	2021-09-29 11:40:58.7891+00			0	0	t	f	Krishna	\N
2569	pbkdf2_sha256$216000$B03dPkNmorb9$8VhUULeDEPymrDjt6muVphi+UDTZxwXTdAOSeH/QaiY=	\N	f	033b1cf3-b2af-400c-8007-6c33fd2ea19c	Avenger			f	t	2021-09-29 11:40:58.591499+00			32640000	0	t	f	Avenger	\N
2571	pbkdf2_sha256$216000$FTia0CodxzZ4$wc31tXWCoNkt+otLAy7dDqcabLXMzg4kPryNBUGWL78=	\N	f	30a4135f-d3b4-4e4e-854b-178f99f7fdee	Shivaraj			f	t	2021-09-29 11:42:25.837054+00			1024000	0	t	f	Shivaraj	\N
2572	pbkdf2_sha256$216000$1ifYweS8VPJd$Idl+MAQdeVseOrOK+WDuCUwRxsaxvvflAhTfirigTd4=	\N	f	a0ec6d2e-3ec1-4601-ad4f-0d678d22fe36	Akshay			f	t	2021-09-29 11:42:26.028829+00			8192000	0	t	f	Akshay	\N
\.


--
-- Data for Name: accounts_user_groups; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.accounts_user_groups (id, user_id, group_id) FROM stdin;
1	506	1
\.


--
-- Data for Name: accounts_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.accounts_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.auth_group (id, name) FROM stdin;
1	Transaction Admin
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	56
2	1	72
3	1	69
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Token	6	add_token
22	Can change Token	6	change_token
23	Can delete Token	6	delete_token
24	Can view Token	6	view_token
25	Can add token	7	add_tokenproxy
26	Can change token	7	change_tokenproxy
27	Can delete token	7	delete_tokenproxy
28	Can view token	7	view_tokenproxy
29	Can add site	8	add_site
30	Can change site	8	change_site
31	Can delete site	8	delete_site
32	Can view site	8	view_site
33	Can add email address	9	add_emailaddress
34	Can change email address	9	change_emailaddress
35	Can delete email address	9	delete_emailaddress
36	Can view email address	9	view_emailaddress
37	Can add email confirmation	10	add_emailconfirmation
38	Can change email confirmation	10	change_emailconfirmation
39	Can delete email confirmation	10	delete_emailconfirmation
40	Can view email confirmation	10	view_emailconfirmation
41	Can add social account	11	add_socialaccount
42	Can change social account	11	change_socialaccount
43	Can delete social account	11	delete_socialaccount
44	Can view social account	11	view_socialaccount
45	Can add social application	12	add_socialapp
46	Can change social application	12	change_socialapp
47	Can delete social application	12	delete_socialapp
48	Can view social application	12	view_socialapp
49	Can add social application token	13	add_socialtoken
50	Can change social application token	13	change_socialtoken
51	Can delete social application token	13	delete_socialtoken
52	Can view social application token	13	view_socialtoken
53	Can add user	14	add_user
54	Can change user	14	change_user
55	Can delete user	14	delete_user
56	Can view user	14	view_user
57	Can add game	15	add_game
58	Can change game	15	change_game
59	Can delete game	15	delete_game
60	Can view game	15	view_game
61	Can add game table	16	add_gametable
62	Can change game table	16	change_gametable
63	Can delete game table	16	delete_gametable
64	Can view game table	16	view_gametable
65	Can add reward	17	add_reward
66	Can change reward	17	change_reward
67	Can delete reward	17	delete_reward
68	Can view reward	17	view_reward
69	Can add transaction	18	add_transaction
70	Can change transaction	18	change_transaction
71	Can delete transaction	18	delete_transaction
72	Can view transaction	18	view_transaction
73	Can add level	19	add_level
74	Can change level	19	change_level
75	Can delete level	19	delete_level
76	Can view level	19	view_level
77	Can add invitation	20	add_invitation
78	Can change invitation	20	change_invitation
79	Can delete invitation	20	delete_invitation
80	Can view invitation	20	view_invitation
81	Can add inapp purchase	21	add_inapppurchase
82	Can change inapp purchase	21	change_inapppurchase
83	Can delete inapp purchase	21	delete_inapppurchase
84	Can view inapp purchase	21	view_inapppurchase
85	Can add game table type	22	add_gametabletype
86	Can change game table type	22	change_gametabletype
87	Can delete game table type	22	delete_gametabletype
88	Can view game table type	22	view_gametabletype
89	Can add game table history	23	add_gametablehistory
90	Can change game table history	23	change_gametablehistory
91	Can delete game table history	23	delete_gametablehistory
92	Can view game table history	23	view_gametablehistory
93	Can add realtime server	24	add_realtimeserver
94	Can change realtime server	24	change_realtimeserver
95	Can delete realtime server	24	delete_realtimeserver
96	Can view realtime server	24	view_realtimeserver
97	Can add tx	25	add_tx
98	Can change tx	25	change_tx
99	Can delete tx	25	delete_tx
100	Can view tx	25	view_tx
101	Can add round	26	add_round
102	Can change round	26	change_round
103	Can delete round	26	delete_round
104	Can view round	26	view_round
105	Can add phone verification	27	add_phoneverification
106	Can change phone verification	27	change_phoneverification
107	Can delete phone verification	27	delete_phoneverification
108	Can view phone verification	27	view_phoneverification
109	Can add Third Party Game Maker	28	add_thirdpartygamemakermodel
110	Can change Third Party Game Maker	28	change_thirdpartygamemakermodel
111	Can delete Third Party Game Maker	28	delete_thirdpartygamemakermodel
112	Can view Third Party Game Maker	28	view_thirdpartygamemakermodel
113	Can add Order ID	29	add_orderid
114	Can change Order ID	29	change_orderid
115	Can delete Order ID	29	delete_orderid
116	Can view Order ID	29	view_orderid
117	Can add API key	30	add_apikey
118	Can change API key	30	change_apikey
119	Can delete API key	30	delete_apikey
120	Can view API key	30	view_apikey
121	Can add game server transaction	31	add_gameservertransaction
122	Can change game server transaction	31	change_gameservertransaction
123	Can delete game server transaction	31	delete_gameservertransaction
124	Can view game server transaction	31	view_gameservertransaction
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
a8737146174b3a00e3a9646f5fe862b54c247de8	2021-03-16 15:08:26.282865+00	4
66516fa5c17e914bb02887a6eac9988e73fc78f1	2021-03-23 06:23:30.09625+00	5
d6ebd3689c2d703f085965916e4410e01992b285	2021-09-23 18:57:17.582582+00	52
164465c2fdb762cfab3b8c7727b7b9cf9b23814b	2021-03-26 13:28:24.04641+00	7
4474493a669422c772fdcb0f47eb868d70ac3076	2021-03-26 13:34:01.040108+00	8
6735658ce3602746452f9673f04ca4d931d2d857	2021-03-26 13:41:51.057767+00	9
ba11890a87e3db0c3ac674df312b078ee311fe89	2021-03-26 13:52:44.27331+00	10
210b7adca1a99496228ea4f966f50187a1bff189	2021-03-26 14:20:21.900867+00	11
e0397611cd43d250610e8b1b0bb3c3cd44029ed6	2021-09-24 03:24:25.886742+00	397
d01b8b62665f75efa23d466f39dedf642b5088b2	2021-07-27 13:22:31.708921+00	38
d263d48b5723a12782267b9179be3553ec19cbef	2021-07-28 15:53:09.05506+00	39
f19d168038095da48023039fc932d816651734ad	2021-09-14 11:00:55.110429+00	103
0137bdb537f7087cbed7d28715f66ad03ac949c2	2021-09-08 04:09:23.19566+00	82
41a8c5c9c2e5189f645ae1b3677e6c1b6ad1c2b1	2021-09-24 04:35:19.077778+00	398
aa433d1be7394d56df0cb0f5792a2c7550ed0693	2021-09-24 04:37:29.596923+00	405
7272d52e3716c3c0f1c5f2445e0137c295c3f44b	2021-09-24 04:46:08.54739+00	406
f86e864fd6fd3321b60ecb2e1d1d3e13308bb943	2021-09-24 04:49:22.117768+00	407
0691e5bd0c2eb2cf2d88b8b554538b64d9d3f371	2021-09-26 16:20:07.708376+00	517
4b389637327cb271f22c1c055bf79961e10122e4	2021-09-26 17:20:54.408916+00	519
771752bfd93b386a6f55bab75a896d7c96ca81a1	2021-09-15 08:06:53.409034+00	88
e267c9242c9c0c7b1c728b7850c45af3ccd713ad	2021-09-15 08:12:07.685998+00	30
001ab2c217b922c360a49192ff90d091eb4ea624	2021-09-15 08:15:38.143995+00	27
e7573e05de4149555c7878d9026df5fd3b683e30	2021-09-26 17:49:01.633163+00	521
4352ec3ea7cc7370b10c9dabd5c97a1dbb13f322	2021-09-26 17:49:52.245124+00	523
5bf9ef079394ec50eacd5b702c51063b5fd7bbec	2021-09-26 18:39:00.314539+00	525
8f9677e3e1fa348f07fc65972cd28a3daaec4cad	2021-09-26 18:40:14.983555+00	527
89ed4554cac473021e38737af63d7f92123c72a8	2021-09-26 18:44:22.693459+00	529
a3df8c48302dd190a877f4100c2eb467615d3573	2021-09-26 18:49:40.097452+00	531
da24242cbddfba900ec69d58ea6b5cadef75c2dd	2021-07-08 11:04:53.018438+00	12
1de27331ff9ce693977ec9216959ac5bb2c4c3c4	2021-09-15 13:42:39.112589+00	102
6d4e35c92e940d930dcdfd352fa0f6f1556179d9	2021-09-26 18:49:53.570442+00	533
1c27aac8cb24c430af6b5ef373ca81bfd5cedede	2021-09-15 17:26:27.642127+00	109
a7686cdd5f8d7f6302924072c41e02314446a7b5	2021-09-26 18:50:35.894514+00	535
530833859d4712e2c651c4df619c9fee080eeaf7	2021-09-16 03:54:02.853776+00	111
16b30c328c347089277fbf0e10010b068735e3cc	2021-09-16 11:20:44.833795+00	112
479fb0edd8f07541e9ec37bc0e6b173b2b7d5eb2	2021-08-10 16:19:53.865718+00	57
76db0a9311dd0829befe70de8db527412dc2d570	2021-09-27 02:26:10.49071+00	536
818c4f04f0a819cace89f57d0ebaed564df7ff1f	2021-09-27 03:09:47.98064+00	538
48c8e36569a86f4d2f0741ed964201b79f29e8ee	2021-09-27 03:10:17.082433+00	540
d30ae24e77e0a6109d12aa7672856581650d63fb	2021-08-13 04:28:08.971083+00	58
ac43a7de2b0edceac99d3b94227a7923f98d2e43	2021-09-16 18:05:51.786456+00	113
51814f36cacaeb3201e3a9fce4f66c8b9724d5b2	2021-09-27 03:12:03.001863+00	83
0cee6637160f31923d33c89fc9815a59f18da9f3	2021-07-18 18:17:49.051027+00	25
71928b2e6abefb2b554f70f67f05f7f591083418	2021-08-13 05:15:12.924619+00	59
fea9dde38bf3a166b29b94b08e6a4e603af65b35	2021-09-27 03:21:48.631338+00	542
f8716266678e68043c50f7da8a0f4c690276eb02	2021-08-13 06:16:22.151378+00	60
4a033d6da6702cf9c4c5372686fc1d8843a370ab	2021-08-13 06:26:33.626873+00	61
02ae5511a66baf1efe6991b21d867b253b947aae	2021-09-17 17:21:22.508717+00	117
8fe4d189609cb98970c805495863c8e94a0ddc71	2021-07-19 14:15:19.257828+00	29
2959517cf9ced63bf102f6020a0f63c5ffbccc60	2021-08-13 06:49:20.598936+00	63
5e8a9ef1f8d21c3ecf4bdd9fa5f126fe1cb486f7	2021-08-13 08:39:04.243006+00	54
13e5016803b08eb805423d0573045af03c3e8ada	2021-08-14 04:58:15.560243+00	64
72d8e041b0a4bc83200cfcd12f35ddca15428332	2021-09-17 19:22:35.206674+00	118
5b78d401adc3a249fd49546fde802fb0d02ddc31	2021-08-14 07:43:41.34666+00	65
250aff469d6f6705ec62714fd439237fc2e34b94	2021-09-19 02:01:13.772842+00	120
c92e2674761da56c73f5bf8f967675fa136f843e	2021-07-21 10:16:23.908774+00	33
af5c0b5e5cb0c260009377e0a70e53c2719add6a	2021-09-19 05:31:02.031931+00	121
c367895bbfa8532546d8ab681aeca0bdd6c94c17	2021-08-15 12:53:44.257057+00	66
dab0f4db1e1267383033c70f54cdb94a43eb7c11	2021-09-19 13:28:15.362213+00	127
5307088b1aaee9b2b2250bf034c24f3e4328dca7	2021-09-19 13:44:34.074243+00	128
5f4a74be9dbb9b42e24bdd5c9c38579fd2ca3b86	2021-07-21 13:41:34.657391+00	31
196913074e75714b1be279f5eb79f376bc928a3b	2021-09-20 01:18:56.729503+00	130
67ee13ff9a13c3a82ae97061a47a59f648f6fdef	2021-07-21 13:44:37.201911+00	32
9628805d971d157978f73391f804ab022e689f7e	2021-08-19 12:07:53.192936+00	70
5851e770e082fb38d496283bf5b37be1294be9ca	2021-07-23 06:56:14.328077+00	36
67701a0d8c65fdbb91e81c92bf599811d53b9626	2021-08-19 14:13:35.567215+00	71
6cb2bece10d2e8f4566d95173be39cf4a6244008	2021-08-20 16:53:05.128214+00	73
9b78a0996cc7542dd13c26b69716ea6465a72bc5	2021-09-20 11:22:13.305+00	131
83195b0000ee788421af86cca9b23e61f2d74267	2021-09-12 17:46:08.944997+00	17
0ed1439bbc83261f7243e7122a602d4c251f0982	2021-08-24 13:23:14.283982+00	76
4a81f802e5668a0ca8f663508a77de8b29591292	2021-08-24 14:54:58.571291+00	77
b6b2d2722b48c35f304062bed863dd3715696597	2021-09-21 04:05:48.160442+00	132
bfd71d87b7044bee8463b2191022340c20a660db	2021-09-14 05:41:06.082418+00	91
46e8e46f01c17e17b54f366448ff83b9c489123c	2021-09-14 06:28:10.822025+00	93
d67f93e6c4f8e31226ffb1768630c06c24cf2afb	2021-09-21 15:16:13.126949+00	133
b202723f20e7da105eaef59bd69410244bcd2e68	2021-08-26 06:38:08.60492+00	56
dc04e1b988aca2f3b96a1b4196d00f3810dbc55e	2021-08-27 05:29:06.300102+00	55
cef1c67db5aab0616d072b6597badb800025737a	2021-09-22 05:37:40.913018+00	84
a259d061baf330412b315974dc5672097dfe374d	2021-09-22 14:21:13.83981+00	135
b5e3f38e210c5d4d218bf617f01a0df8f24a695e	2021-09-14 08:27:23.603962+00	72
3adac61a7ce4dd782145b94b16d5f31a22cedcf2	2021-09-23 05:39:59.748781+00	138
7fc6c6edd148dc6c1317e6b759458c03a10439b7	2021-09-23 05:51:30.09449+00	22
93c0666f180e97da33187b5ea716b9a24774e57d	2021-09-23 16:42:57.251124+00	139
bdaf5f5484cb8fd1d127ef34ef42c17d6a01607a	2021-09-23 17:15:18.997374+00	144
3474ef124086d0c340d40763445313276ee22f0c	2021-09-23 17:15:34.148117+00	145
cef6f4b7317f8bb18bf015dba36323796541d7a7	2021-09-23 17:16:26.919278+00	146
02b86e73e1a158a2cfd8e16267224da13d27a7b6	2021-09-26 17:15:52.894388+00	518
7bce4ff27b5a09fea56a102faf297d09afc67d92	2021-09-26 17:28:16.608277+00	520
859f695487f16ba836e68bb0aff8876f5787bfe3	2021-09-26 17:49:52.051213+00	522
26d957f738d3476fc95fc53028346d58d72aa821	2021-09-26 18:39:00.113792+00	524
b0bfb45687c077c83ce3eb23e6111bf3b489e44e	2021-09-26 18:40:14.792557+00	526
12cf7ec8a5f9855ec80c6818510c537cb953472e	2021-09-26 18:44:22.50351+00	528
c2cba94a6187aaa50ff59beeaa072e0640afc126	2021-09-26 18:49:39.903546+00	530
9c6ecf31fe52b15f4a1ea20b4fe00c85775551a5	2021-09-26 18:49:53.379247+00	532
a8aa0660621778de5546fe86d1fc6937f7aec050	2021-09-26 18:50:35.69752+00	534
6c4f2e4135f10755b0ff0d5423ce22723f7fe24e	2021-09-27 02:26:10.682398+00	537
5ae343313e69f30f35c78274485ef9e6215c19fd	2021-09-27 03:09:48.170584+00	539
2ec2135cf0516977870be929d90988e6622b7a74	2021-09-27 03:10:17.304149+00	541
d8da72749cabb718ffc49c0e5c7de82d70a986d2	2021-09-27 04:14:15.481234+00	15
959615a0b73bf6d6e7989cdd4264087485e9d08a	2021-09-27 10:09:46.885232+00	543
e699f6bdbaae96ae5bca0c37ff4205425dad45da	2021-09-27 10:09:47.08291+00	544
c03cff13d8f10b0cd68b244f7c344acbd24a1147	2021-09-27 10:10:12.756022+00	545
7da7cc22e20c21cb25e78bac6ad9b468f843d727	2021-09-27 10:10:12.946036+00	546
3a8ed9aa58f3a9132e72c781e16b1ef60f0fc7ed	2021-09-27 10:10:17.448812+00	547
4507f4f311f559099f16d6224cd7fa8a89a3d09a	2021-09-27 10:10:17.672849+00	548
5a848816d669105d00c5db647b74f3c7cfd7c90f	2021-09-27 10:10:19.695763+00	549
1fbf5db69d68c9ac88cdd572a94526d93c22f99a	2021-09-27 10:10:19.887831+00	550
1a9eb2275c686f84eadd4d77ae9ea3f8daaf547b	2021-09-27 10:10:59.096943+00	551
8d75de1e1ee2260beb4805d3d104b489fd05dcdb	2021-09-27 10:10:59.286544+00	552
723b391f9a03be204b219df8277a20905bf30769	2021-09-27 11:06:17.289456+00	553
16de92fb500d4a53ef62c10f95b75d58b5799e9e	2021-09-27 11:06:17.481249+00	554
5c689afaa32970c98e51b8e3d89f46bb15bb2202	2021-09-27 11:06:30.578014+00	555
c9898307c967e9f1422a58e86fdb7db67295b742	2021-09-27 11:06:31.001615+00	556
d6c23e4b470101385e7199a1f65702dad6ce5c5e	2021-09-24 06:10:57.418399+00	451
b062616dddd0c6590647e1d331106e9bda9bdb88	2021-09-24 06:11:22.21691+00	452
d03a7ac3149bec74a294723cb6ebf37c808627ac	2021-09-24 06:11:54.375071+00	453
eb8ec55e0576df7adb555ef9d665c079a8c35040	2021-09-24 06:27:41.917582+00	455
085106851d507b13518d0408d959772a60983de9	2021-09-24 06:28:02.283318+00	456
ecfde7199e4a46c98e566012b75ef4074b9b1aca	2021-09-24 06:28:35.189248+00	457
3f10913f2ae6ae891281574d37a26a998c1846be	2021-09-24 06:29:52.234152+00	458
8d9008090042101feef831b050cfc8c390243a79	2021-09-24 06:30:09.69244+00	459
d91978c18adfae8b753c36b464e50d2403f1858f	2021-09-24 06:30:21.632369+00	460
4769c8ba595a892240c77d99791191af96e74dc7	2021-09-24 06:30:22.92919+00	461
567014287a769e202112e55a396c9ab27ba97c09	2021-09-24 06:30:23.98743+00	462
94ac81b636f328c417014e51b37e0d6aced44587	2021-09-24 06:30:35.157754+00	463
defa5d10a4cc4e4e0d8c72c435533e0c9e0c2c3a	2021-09-24 06:30:40.138548+00	464
4124d0565758e933827f8c8dbe756d6ae624d1a4	2021-09-24 06:30:47.576551+00	465
5827e3456f0b39651d99d5540d3f35b8c98062f4	2021-09-24 07:09:40.237491+00	466
9cccd619a631df5c5a2e378ea71a3d932c722513	2021-09-24 07:09:56.946281+00	467
fd55a30cd0238e111cf6de09ae834bd353568ea4	2021-09-24 07:10:02.918334+00	468
96467d743b05860a6b6a53ca9b8324a375cbf1ad	2021-09-24 07:10:08.395701+00	469
5c7b4d1999c41efc1a2aa7a3fcfc88ebf2299233	2021-09-24 07:10:10.752639+00	470
4cb615c3eaa764bf68e05675870d64c7a129f036	2021-09-24 07:10:12.435411+00	471
fd3d430b567eba43018148e9cf630cc25ecbc0f0	2021-09-24 07:10:15.458955+00	472
30919dd575fea4b28b5d6808feea46a8931bb4be	2021-09-24 07:10:19.699935+00	474
fb7762949e44559ecdbc3a8d5896b881987827ac	2021-09-24 11:54:46.538412+00	479
53006127e6fdd4ff661f38072911c585acf8ebdf	2021-09-24 11:55:02.495612+00	480
ec8f51b5082783ade4cf2d78057bd72b4f3a32ea	2021-09-24 11:55:15.849078+00	481
e8c95c3b84b3169dce0f03b9c0b76a1726fbba93	2021-09-24 11:55:17.824336+00	482
a3bd5d5c8c8dead89475c0c5124391d145fb8e08	2021-09-24 11:55:19.483404+00	483
54c88af1f6b1cb9083ac9a1f18c89589d999bd61	2021-09-24 11:55:21.437809+00	484
875b78c96e662bb45b9d0e80bcfac16f8023623f	2021-09-24 11:55:31.035416+00	485
238615206b4f52cb84230f457f70179ee4d8f00c	2021-09-24 11:56:22.648747+00	486
a61ac8fcef8703e5b51c9c7f08c68de0de8d9e72	2021-09-24 11:56:23.938699+00	487
0dc53efecc2eeb94a5bcf5d4a0dadb7dce777a41	2021-09-24 11:56:25.00029+00	488
98bb0fa72dafb6ce34e2bc3f4d8cf89c1265f537	2021-09-24 11:56:30.673543+00	489
b427f0c5cb9faac27f4ccc3136c3f817ab81849f	2021-09-24 11:56:31.844729+00	490
c6a685dece6a4a94f2843c1e02049a85aa61453e	2021-09-24 11:56:33.040602+00	491
06dbc3c555e9e71d371edb2c773a81d07fb5dcff	2021-09-24 11:56:40.348019+00	492
05343e7cdf35b36f421d50554e11bb8f8560bde6	2021-09-24 11:56:42.508763+00	493
93cc1d1fae1875753956131b3bc7da5e0c3608be	2021-09-24 11:56:43.630694+00	494
00155f87bd8306c7a7dddd01519bcedd52d45469	2021-09-24 11:56:44.728952+00	495
1eef77564b93e10b455ff87826eefd03c2be83f1	2021-09-24 11:56:45.802791+00	496
29dc661db9012943082fba99f9c60885b43880c4	2021-09-24 11:56:53.690433+00	498
8d385a838a017c14aa4d728e0aa9173d057ea015	2021-09-24 11:56:55.491054+00	499
8048a1543596d9201dd4198eb1010d57a9c77cab	2021-09-24 11:57:18.65208+00	500
7cab3bd6e2a177dddcb42bcc549bee64eafb70ec	2021-09-24 11:57:20.446233+00	501
bea6fdd5f649d9dbf51bbbfea6db5b37afc15173	2021-09-24 11:57:50.470516+00	502
bd52c7d090c0597e98a1fe1d4c131a01edb564b7	2021-09-24 14:24:03.314696+00	16
ea043d8b63adbad9a3991a1b0816dcc924f1c04d	2021-09-24 15:05:14.385005+00	28
2ca50c29e10d3cc4bd2b3b04f77e81bb8cdfccd9	2021-09-24 22:20:49.485739+00	504
d26f1ce2d78e11dc4f3ca27620510d0fc14d4d0f	2021-09-25 00:56:30.663186+00	505
c2e22f6f71054c1335598cc015d948b2b2e51ff2	2021-09-25 11:20:13.348483+00	26
ccd8ca84b29ccfc0525af08489a73dfe561a222d	2021-09-25 12:11:24.255117+00	137
c222c56fba38e0988bd2ec73ff5c4bdd206609d6	2021-09-26 01:26:50.703119+00	53
e6e8a389d1bb33fd51617951a7dbf937b16aa65f	2021-09-26 03:24:46.950162+00	507
90bb22ca2a5ca800b747fa5906f6529cf5ad290a	2021-09-26 05:15:18.362749+00	79
6c6b9eb1bdcbbd0ee178009cd73cc8a977049084	2021-09-26 16:03:14.246552+00	509
100896c958758651655062925c87e154f352c680	2021-09-26 16:04:47.421059+00	510
10ac1ee7397172e3fcac0f169b67c79e898a8773	2021-09-26 16:06:24.283072+00	511
1d6593f59017c1e1176271168c6f1ac5e4a2d251	2021-09-26 16:08:53.615619+00	512
f23a028a33f40e47ca688aeaf6a342b69b2911a1	2021-09-27 11:08:29.982231+00	557
1f24a4d98fc7abafb035bae8f00332d858f6d6d0	2021-09-27 11:08:30.17387+00	558
5a7f2a13698958f435a15b186eb00c1d7159cbf1	2021-09-27 11:10:22.147865+00	560
3bdb70e2146cca12b1785f31a6da8d67c5a49ce7	2021-09-27 11:10:22.33794+00	561
92d84ce730899ab2422445966c357e6d6a2db76f	2021-09-27 11:10:30.832426+00	559
5be9bdd0c0fcd634f09db23d82418125081d8d50	2021-09-27 11:10:35.829637+00	562
82f34165e205dbec8227e01ac8ef92df450f85c5	2021-09-27 11:10:36.026392+00	563
af6953f5b7df197eb0c2d963a70d3c2803d1272e	2021-09-27 11:11:54.701323+00	564
4ba3d79c60be3078586607413ff7954241281b69	2021-09-27 11:11:54.8944+00	565
161dea3056ab5e8ae4484e4cc3028609ee674773	2021-09-27 11:12:35.418581+00	566
a9eb6af9b5398847034bc9fa7f4284e46f7c784d	2021-09-27 11:12:35.612285+00	567
38f046398f171a3327ae0b8a969952b731c66b3c	2021-09-27 11:14:09.947666+00	568
11a00c35a46ac2c640825565a988db14fe8c625f	2021-09-27 11:14:10.138619+00	569
bcb79b2feaa292cf6524551603267f12bd3186b9	2021-09-27 11:15:18.111136+00	570
ed2eb208dcabb68e43c87eb713f8115a0e100c2d	2021-09-27 11:15:21.793623+00	571
b31760fc1faf6d5b668f50fe32cf90f1139e5108	2021-09-27 11:47:57.779943+00	572
e8481e88db353e5817a3fe0761946991a539c954	2021-09-27 11:47:58.501603+00	573
d1327771df728c191cc93f85644ece012ed72ba2	2021-09-27 12:05:11.705681+00	574
051ac413f14aba77df7d504f374ecf258cb4c28d	2021-09-27 12:05:11.97048+00	575
0d841ad12bc79d9d560ecdbc892047355344e89e	2021-09-27 12:10:06.774089+00	576
f4180289e4c8a8c5e40489254f810aea55334688	2021-09-27 12:10:07.15396+00	577
ef82b389e1c700408fe0b7896dcfae05fb693fb0	2021-09-27 12:10:33.178321+00	578
c618ff87769fb8a490d26da5b1d165d65d6f6154	2021-09-27 12:10:33.697821+00	579
5f8d587c3001921a380bf0e24c8ad192ac1327f0	2021-09-27 12:10:41.709732+00	580
251aec8554fd6d6dcf804cebd97f12f8853aff1e	2021-09-27 12:10:41.969618+00	581
86dc2e34e22c24609c80e5b6f91fda2a8d121d5c	2021-09-27 12:10:47.648509+00	582
05c2a9f6dcc9dab8b29b27a72ec8f41b8f34a855	2021-09-27 12:10:47.912864+00	583
fd68676f5e7655f2587ab6af669a0bea796731dc	2021-09-27 12:10:53.574721+00	584
3d3c8ba0748ec1391c618639e7bfd5c2e7773117	2021-09-27 12:10:53.826124+00	585
a9e1025c1418e5e9ccc466a5d410166c115c3d10	2021-09-27 12:10:59.475216+00	586
73c4d0972fe64fc336fa8e69d230600fae14ef3a	2021-09-27 12:10:59.742162+00	587
fcd96845c2c3437b0bf0c1e8a388b5e97fdaad85	2021-09-27 12:11:05.42677+00	588
211a59a44f0266392dc62b38cab9c1fe4b2b7a51	2021-09-27 12:11:05.682066+00	589
b766961b8eff53647fdd66015515c02e053e7823	2021-09-27 12:11:11.922677+00	590
94462dd69165c8a60cc5eedf5e31cd3e6549daf5	2021-09-27 12:11:12.181128+00	591
3534e0fb01659c3b1dce52c8953d0a7f42d53195	2021-09-27 12:11:18.599313+00	592
b86c5a1d8e56d3b882392b8ab045013106c7c4ce	2021-09-27 12:11:18.841666+00	593
ab58bf5b260f068f111e6f833814991663c3e513	2021-09-27 12:11:24.704155+00	594
34e0ccd42844816203698e00f2517c1f22c5e578	2021-09-27 12:11:24.960464+00	595
3f5f2e5bcd21b9745b6aee8d3ec68d2d30f435d4	2021-09-27 12:11:31.153049+00	596
f55b080783aa0b9cf4587f17da97f3dd36665b24	2021-09-27 12:11:31.424341+00	597
9a78036293a8ffc3092b5fd74f69481081eab7d9	2021-09-27 12:11:37.266641+00	598
34d1528003172cb52ecbe868903f25333ce8043c	2021-09-27 12:11:37.589062+00	599
10f73cfb8eb9744f1fcea05027658af6339e8443	2021-09-27 12:11:43.720823+00	600
fe22d3d0537fa32105d0a6e482dc8512248ff9fd	2021-09-27 12:11:43.961352+00	601
dfdd8d1c732f324d2a91d1644bca2765fe2d2d60	2021-09-27 12:11:49.882487+00	602
e007292f1a0ec3643027a881d610363accb1fd79	2021-09-27 12:11:50.237441+00	603
d62e89b48521384625b3a72879bd2f2b689a4970	2021-09-27 12:11:56.30608+00	604
8a32b167aadef902f262a0ae9194bbce2e95e845	2021-09-27 12:11:56.585932+00	605
0c955de314547b756d4153dfb703543ca7984e14	2021-09-27 12:12:02.784535+00	606
046097be850b3738966bd2e8801d6ec125e647cc	2021-09-27 12:12:03.055472+00	607
d428bbc597e9a6abb58a2d0a7ff4f93ed36b93f7	2021-09-27 12:12:08.839347+00	608
21b9e43320560075ac2ad1f6a063f597cec11833	2021-09-27 12:12:09.105213+00	609
95206642d3457559301708f1ed72d52e087d2068	2021-09-27 12:12:15.422452+00	610
a86905a0af57382b2f22ccf6865be8ea95a934a3	2021-09-27 12:12:15.670701+00	611
a35b39f17bf725a0db2846be35aa5c0d826e8337	2021-09-27 12:12:21.525167+00	612
edcee2f04da0b4e56e996fccbcea0310fb2b5336	2021-09-27 12:12:21.789407+00	613
6b03116b207171e597583ad82cfe7631f25d5ac2	2021-09-27 12:12:28.044562+00	614
d787b161b896931ca8b4be2b3f2dc389976e296e	2021-09-27 12:12:28.299943+00	615
1e9b4eb06b946ec5780c4334551515d74c23ec21	2021-09-27 12:12:34.077541+00	616
7744cb8eb89ce82522b6932a91a01819888bd3ed	2021-09-27 12:12:34.322462+00	617
874d55501087ecdb31519a0f2ed634963ae20e3e	2021-09-27 12:12:40.69928+00	618
95b20265c19e90fb8a8ec85a99a56f2bccfc27a3	2021-09-27 12:12:40.954293+00	619
99bdd573d37189d52348885bcb7cd5491f0e45c3	2021-09-27 12:12:46.64874+00	620
6b35c5fcf8bb6cb9c0793b0798d930325901bdad	2021-09-27 12:12:46.902037+00	621
68816df62c557e33850ba0bc61f33a97bcbb24c2	2021-09-27 12:12:53.173405+00	622
e97cbd481f47c6f86932f45410ff0cfb60dbe8ff	2021-09-27 12:12:53.448692+00	623
fd3a5d29d531f4010829a83b9afd059a0663d4d8	2021-09-27 12:12:59.247037+00	624
8816c6e2ddc4f461e34bc71f8574ac77c7315758	2021-09-27 12:12:59.484891+00	625
70f00c315e40c77e5798f0ecd1551a5ee1cc918c	2021-09-27 12:13:05.651631+00	626
78fe2bcafb8ce38ff2cf7b5f963adbf122f7410f	2021-09-27 12:13:05.917281+00	627
7f5577a2b7f27f8bc36bb0020b9e289cf3b28e99	2021-09-27 12:13:11.904417+00	628
9ad9e5e43088da7e2cdbb811e3f20fb6d6cf274b	2021-09-27 12:13:12.162253+00	629
0a6582dae7e7aa81a9673372109026b1e2ed5d98	2021-09-27 12:13:18.109138+00	630
f41001c23cf42d9f17dfca4b82ac0d01e6c22822	2021-09-27 12:13:18.367181+00	631
dfad9c261ce870ad199755738cc20752ec11f571	2021-09-27 12:13:24.297001+00	632
0b14cccbbd82bb78ed7cf9250ee60f7239bfffc4	2021-09-27 12:13:24.538252+00	633
87f71f2048b26d7a3fa7cddd2bc4ad6876fec42c	2021-09-27 12:13:30.561077+00	634
d88971356c385586c82f78d652f56ff8f29c8034	2021-09-27 12:13:30.817472+00	635
c9fef8c6bf83ad4dd3c9a3f0101d3197a870797b	2021-09-27 12:13:36.840661+00	636
80a1fd7962dd82f676290fff82b8c3dff1a7532f	2021-09-27 12:13:37.088393+00	637
ca0679f96a3e70b5adc844dababdf2524c71f85d	2021-09-27 12:13:43.156705+00	638
15e161010b3a26560418baa1a0e73b82259c1a8f	2021-09-27 12:13:43.393451+00	639
91591c2077c6e562750cb4c83eedd7e8acdfa3bc	2021-09-27 12:13:49.516416+00	640
b79780c80a5212cd4dd18a0ebc5c35107458e18c	2021-09-27 12:13:49.751575+00	641
e6b2c59b2ac4e9603a8ebf782846e6a178042c7c	2021-09-27 12:13:55.577615+00	642
b2d694c4157ecfe35524e88a37b9ec461666f81d	2021-09-27 12:13:55.842175+00	643
37149757d049bde1b084afb59bc3c04fdad08927	2021-09-27 12:14:02.07683+00	644
686fe7dfd9a4ebaf064a56c6e65cd4656487d26c	2021-09-27 12:14:02.32725+00	645
c36ec39fcaeda9ff2e07109526b34a6801e26f61	2021-09-27 12:14:08.314739+00	646
83e760e7ef988630f0d1b81e9b0b99def6857634	2021-09-27 12:14:08.553899+00	647
429edf6fca62eea7502319fe47be945f4d5bb449	2021-09-27 12:14:14.684499+00	648
163984cc39bd2629cbd446c684f5fbb49574d7b0	2021-09-27 12:14:14.913544+00	649
f1189ab1dea629e986c2e77373cbf894969e9f14	2021-09-27 12:14:20.716041+00	650
82640083b5133bc81d749382b575d7810bcec652	2021-09-27 12:14:20.952032+00	651
04a38da385c32f3dadc6f4b2fa48dea7d34eb398	2021-09-27 12:14:27.159897+00	652
4643762f328ed4fbe077c554eef363965c82db71	2021-09-27 12:14:27.408032+00	653
26e4b6b3b108ca7cc1d0b8e2c510cf9e197783ab	2021-09-27 12:14:33.289248+00	654
77925ad0b0d763085383a6b472973e76b5e50353	2021-09-27 12:14:33.567984+00	655
79539f4c8d78e43755e8097a59cbab8b0c84ba08	2021-09-27 12:14:39.673944+00	656
a10312e0dc8eb31d887a9b97d344088163be720e	2021-09-27 12:14:39.919836+00	657
38142ec52905f57d756a20a87750b73a5612dc6d	2021-09-27 12:14:45.865605+00	658
8003ef0b3286581dbad62fb81ad19c4e16cb361b	2021-09-27 12:14:46.119845+00	659
a52ec52d025642e64ac5484352457dd7950a3e9b	2021-09-27 12:14:52.113086+00	660
b87ca0220be8954f568622bdda11621717ecdee8	2021-09-27 12:14:52.367114+00	661
6b331bc5e2d8ecbf2a4c6e89ef255ed7b9b2481b	2021-09-27 12:14:58.384621+00	662
683afff06ca79d52926e2e03eee1d334b4fc549a	2021-09-27 12:14:58.620131+00	663
cd8918c65992828e475ceaf6f2ede8310f2baefa	2021-09-27 12:15:04.615102+00	664
faef83a8cee0fa536d3023d9fcdb368a3d11d8af	2021-09-27 12:15:04.876799+00	665
878d879bd4fc137e0b0102e2efc097dccbf3d2d7	2021-09-27 12:15:11.042977+00	666
0df2027ba828e631c3b5cfa6b8836fd3ff4c65aa	2021-09-27 12:15:11.286458+00	667
9a5b36f9af41d4508596091d21106637182f13ea	2021-09-27 12:15:17.165327+00	668
8950518dddd51a5bc31c37d82f59c062d8f4aeb3	2021-09-27 12:15:17.418956+00	669
32fafd678b1a34825f5e172e10b746559fc63905	2021-09-27 12:15:23.679861+00	670
695286fff9b718fc868e743adafb8ce794471261	2021-09-27 12:15:23.928744+00	671
bd5e76625fc0690d27ebb454b0554532221b6886	2021-09-27 12:15:29.732827+00	672
c9756998c6b8077a946051a519c6e2f5b326c826	2021-09-27 12:15:29.988111+00	673
1a8b357353576cb217e828110b4915c829dfd8bf	2021-09-27 12:15:36.203151+00	674
079b460bc8ba213480dd1c3e0c8823b6bcfdb784	2021-09-27 12:15:36.450065+00	675
d69054e1828b553df84d0fa4d022b675c5b7d207	2021-09-27 12:15:42.193789+00	676
1dcdfb0a03798300bd5d79ac5c5fa61974514672	2021-09-27 12:15:42.456465+00	677
ed3d209448bb9fe776ce259aadf8583e68b7f9bd	2021-09-27 12:15:48.661386+00	678
265b955882189b38f1edba358ece774a7b2097c2	2021-09-27 12:15:48.915009+00	679
2082e29ef0e1e021e5386a7c7ce9ed1db2a7121c	2021-09-27 12:15:54.669093+00	680
1dbaf3d567c5aa0a66f8d6ac1ea4b7b830984324	2021-09-27 12:15:54.91145+00	681
0346bc9f2b42b97c52d5f81107740409f1773158	2021-09-27 12:16:01.092215+00	682
f851dc3ad26d0126bb5c06b83d2b6104e1498d57	2021-09-27 12:16:01.349874+00	683
0e8bdafa1e7add450679ddd313133c4fd4b456c7	2021-09-27 12:16:07.197763+00	684
7498f6fcac83ec1aec7f58046ee33ec8f780e914	2021-09-27 12:16:07.450694+00	685
fd462f94d5433516667634622f16f6aa1971cc98	2021-09-27 12:16:13.653684+00	686
a1804d6deb00e0053248aa2d4a2056ad3b081343	2021-09-27 12:16:13.910591+00	687
70cc3d4c1e3f688241c2cb371177809ae44fa143	2021-09-27 12:16:19.690251+00	688
2e85c0d3b842d2ff80dde7fd07dc440d3abe872a	2021-09-27 12:16:19.941543+00	689
ecf058239054356c84405fbd7914ad589f09a8ca	2021-09-27 12:16:26.278832+00	690
46e6536a387b9d475dd2e055b6b371e6fe336803	2021-09-27 12:16:26.508236+00	691
6642950391a6f65b80419cb6343cbe379ee3d388	2021-09-27 12:16:32.353468+00	692
5b2549e3a89a95f561350d2a026a7cbaddc6fb63	2021-09-27 12:16:32.600277+00	693
d0f07c29df029faf29ed7e2f0ccca5a84ca9d182	2021-09-27 12:16:38.642225+00	694
a796c13b5ad4a81190a28f08db4045f2022d1d68	2021-09-27 12:16:38.924513+00	695
abbac370c8b14866a0c02be1cdacfb91121e7419	2021-09-27 12:16:45.081663+00	696
d2739ee7fe6f853734af77f6aca24d69cfef40ac	2021-09-27 12:16:45.328921+00	697
fd3807bd454588093cc04b74d247ddb5fabee80d	2021-09-27 12:16:51.689088+00	698
dd350b1c4a7f1818a3a6a74ff976d0fff3b52191	2021-09-27 12:16:51.927521+00	699
200d60018c7cb7076b5d14737c7e4b88da895c85	2021-09-27 12:16:57.884678+00	700
9c496d6fa68c4e58a8e9f809bcc901915fbf7ee0	2021-09-27 12:16:58.149422+00	701
739bf73ef20093e3bc517d3da838f93ee908f6b4	2021-09-27 12:17:04.346609+00	702
bb7d296ad4213997255774fd1fb982f0d3012a38	2021-09-27 12:17:04.59451+00	703
e0e32e58b0108dc4576e335dd40e7f272a32479a	2021-09-27 12:17:10.377664+00	704
c1bbcaabb917ffe8d6f1c8e2e9ca28722d60497e	2021-09-27 12:17:10.622311+00	705
2bf667238805915244595597c9fea89de110a79c	2021-09-27 12:17:16.953254+00	706
65e0032a2c3ca05eff1ad887d4d42cf0e1754f4a	2021-09-27 12:17:17.201348+00	707
c370cefe2a2ddf0c1aef0e98bde5ee84f1a8d627	2021-09-27 12:17:23.105154+00	708
d6ee1b01b7aeeda776addaa77bc16931b8a8c6b8	2021-09-27 12:17:23.354671+00	709
fb342e5ac31a76bf6d33de2c251ad44d18708796	2021-09-27 12:17:29.624834+00	710
838d3863b8c1e651ec34b0b238b0099a6383828d	2021-09-27 12:17:29.872506+00	711
489f363efde0c62d501515f96e0e79af3e00d132	2021-09-27 12:17:35.743712+00	712
b94c3d277e0f436152e751bed3825c51d046bc1a	2021-09-27 12:17:36.016772+00	713
a62a4dbc2e739f10e2c612dfef4f86c859236e6d	2021-09-27 12:17:42.282578+00	714
896f4905bb5f526508ff049b0de51eb547d8525d	2021-09-27 12:17:42.537602+00	715
e9a0f322e272bf45864a24d6ca02a2270a788dc0	2021-09-27 12:17:48.323699+00	716
d27ffefc5b75888a9e9469946ebcdcfb124b4eef	2021-09-27 12:17:48.670852+00	717
139587dae374232eb85fc1ba85abbfb15fbbcf3e	2021-09-27 12:17:54.773606+00	718
14708f6bf76082d875091b16ad5cd2f9f083371b	2021-09-27 12:17:55.062881+00	719
f3ccc7d5331288a39363993e36f297d714758506	2021-09-27 12:18:00.957962+00	720
fbd5a73ea89b2462d4353a1034dc1a683d8c01ef	2021-09-27 12:18:01.210371+00	721
1cc6cb5e4286b723e562f867332010306a6c8777	2021-09-27 12:18:07.259225+00	722
cf8f9115bfd966184b3e5e358ff68eebf0ae1c94	2021-09-27 12:18:07.503067+00	723
d9e68695a10c5cae9f5f515fad607abb202e7b88	2021-09-27 12:18:13.4858+00	724
74e3b233a3d6328a7d6c226f66c0619d42e7f783	2021-09-27 12:18:13.848682+00	725
d71f81c279d90ba427f7cd956db7be90286bee1f	2021-09-27 12:18:19.654465+00	726
990dcd9deda4349cdb2c8c253cf71e3f1000d397	2021-09-27 12:18:19.92201+00	727
de3e00b3e26fde2c46f3f9232893945a2f4b973c	2021-09-27 12:18:25.905095+00	728
ee781cd69e8e762ae569c945b4280324e9d25ead	2021-09-27 12:18:26.250447+00	729
983dc904778c05a54c967a123eb4cd5a995556fe	2021-09-27 12:18:32.16404+00	730
782417146ec69cbd8052516b232946483dcd0223	2021-09-27 12:18:32.429078+00	731
3bc3e7407de0cfa5ba08cb1f0742556d4ad92b38	2021-09-27 12:18:38.525648+00	732
f5e5aed23a271bb835d27c00459aac01a8e6e09e	2021-09-27 12:18:38.756221+00	733
53caf075d31546b145df1904e15aa93319e52b7a	2021-09-27 12:18:44.825465+00	734
645c00bcc1c80ae93db6714b43ae9319e0c26c11	2021-09-27 12:18:45.082358+00	735
ad75650296084cc9fdc370b0965e2951b14d72cc	2021-09-27 12:18:51.330052+00	736
3ea1289a4eda09f360191e91104106a113ed7e3e	2021-09-27 12:18:51.563618+00	737
74cd000ae8646e123a5116ed39c3daa20b85730f	2021-09-27 12:18:57.377761+00	738
7834e543c23a4b1c1faf6e3d525ad3a25207030e	2021-09-27 12:18:57.618138+00	739
3569a5b7c2b777702a8458eca03a24af67edbc66	2021-09-27 12:19:05.41706+00	740
ca940cd43ea7d82126075084948720e860be4bcf	2021-09-27 12:19:05.669585+00	741
8db16d0f7c976ad7ec22cad2d8df2151b3c88f5b	2021-09-27 12:19:11.808241+00	742
63686ee70bfe539913b9186fe7af29aac99d21b9	2021-09-27 12:19:12.054356+00	743
b352cd04405d4437a024d6c6c2f89fe831a75cc9	2021-09-27 12:19:17.896139+00	744
7504429a18d11fe78809198f9a1bbb7d4ad30ef5	2021-09-27 12:19:18.155021+00	745
035545bceb6c03da535a5fb5a69ce9fefef96c3b	2021-09-27 12:19:24.418206+00	746
fb17780a30fc1613787bda9f852e73efb827de42	2021-09-27 12:19:24.670325+00	747
d60451cf7fbe1ef1b73f7ef9067a195935e9c99c	2021-09-27 12:19:30.436535+00	748
20a598787ebc1483d5be07fb7edabe11d16e0c94	2021-09-27 12:19:30.6884+00	749
7fbc376fc2540a8d78871ead664e4fef1afd294d	2021-09-27 12:19:37.002462+00	750
dda06925e5e717cdb8b8f57a5f764cf1ef6528ec	2021-09-27 12:19:37.277905+00	751
07ba575a88a12f4f9884a4e651f50b7b39b58aa5	2021-09-27 12:19:43.109918+00	752
5336d3c7c77255373d7ffe353990b4ce584df2b1	2021-09-27 12:19:43.358816+00	753
ff1486ea8d5cfbd78f2caa8e707f9d83f29cf99b	2021-09-27 12:19:49.540706+00	754
b580c2ce9da3bac19ba451f403f83a8f2dda2691	2021-09-27 12:19:49.799254+00	755
60d3723283cc328e6a94c80459e99f3699ffc6dc	2021-09-27 12:19:55.763197+00	756
e6da8c43401f2dff18ef21296128e1d30674c13a	2021-09-27 12:19:56.010352+00	757
e14a14d5b67a4b81a614823070abfe7ac4a6233e	2021-09-27 12:20:02.024072+00	758
d3add85ba923d5e2cdcf8e930ecb2ebbafcb76f4	2021-09-27 12:20:02.29286+00	759
f6ab0a1aacc9f84014700eab5c578721743b0ad0	2021-09-27 12:20:08.399188+00	760
81d4b9a340f9e19a824731c68ddc06a58428a855	2021-09-27 12:20:08.635882+00	761
aad2253b8784b46fda9caebb7ec0fcc37717b855	2021-09-27 12:20:14.534943+00	762
b177184ba8d8a5a66429c8537c315acbd1026840	2021-09-27 12:20:14.772426+00	763
520dc8794e4abce4629b27f829ff3ced4ae3cd86	2021-09-27 12:20:20.917725+00	764
7610e2f6c9c348f679f315aa4d24f71f96c9360a	2021-09-27 12:20:21.151286+00	765
6d1798de714c08286ce63a54818ad988fbe05578	2021-09-27 12:20:27.053004+00	766
bed51b85ac6579b6b286fcc797d6e36bbe29a4b3	2021-09-27 12:20:27.307385+00	767
56c879f473d1b2df21ce4230250c9509ca90857f	2021-09-27 12:20:33.415664+00	768
d94ba601923295e1a7a2f93dd404e17d603835a8	2021-09-27 12:20:33.677339+00	769
a1ca69e7ab2e36092ff00b50daafe2ba56e87921	2021-09-27 12:20:39.533762+00	770
4dd445ca45a3f282496975ee3f8b50ec8f33e673	2021-09-27 12:20:39.779466+00	771
edcc98e269717a32c4b2b19cb0821a36a613f5a7	2021-09-27 12:20:45.903127+00	772
1feacdad6cf3d185a970e31e168cd0af03f3688c	2021-09-27 12:20:46.177456+00	773
716ea1509f8fb539f07e61ffca6985c11ef929d1	2021-09-27 12:20:52.231378+00	774
6fb30acd921a522909219e2b2f3e7112a1f31cb7	2021-09-27 12:20:52.518262+00	775
5d3047b2ef22d3eadc553f64a8f15c55c27ec4b7	2021-09-27 12:20:58.683656+00	776
bc5d7ff67828d7b607ab64bedfa246669df179ef	2021-09-27 12:20:58.941977+00	777
71944ea4ac71c3f8050f0c3bc7e547d075174095	2021-09-27 12:21:04.758517+00	778
02f4ee8037618ae9995ed61c751c457862289f75	2021-09-27 12:21:05.004683+00	779
ccefd30dfe81508d56635a33f9e38dcd20c421d7	2021-09-27 12:21:11.097648+00	780
9893df1d48597628c131001fffdbe0c3b11a4e09	2021-09-27 12:21:11.332255+00	781
53ab7b0e121ca541a31a045fa4b41925e11bc860	2021-09-27 12:21:17.202175+00	782
8242c8659dbe2712fc6cf06cc9276d9563e5c350	2021-09-27 12:21:17.549855+00	783
ed71064de841ff7deaee6f86bb1241e601dac715	2021-09-27 12:21:23.538291+00	784
a8976a568204e57a0a03063f09210de46158eac1	2021-09-27 12:21:23.79036+00	785
bf167bf9e0c7cef60e386c610c8067d8f020d17b	2021-09-27 12:21:29.841853+00	786
e027d616f4a7df8ee3c30210a3b7ac0a3baeab05	2021-09-27 12:21:30.18869+00	787
c23f6390f65cd4fb77cee181dbe8dd3fc2c039eb	2021-09-27 12:21:36.029704+00	788
794e3f2401066ec10f5f6b0c7197773b54690141	2021-09-27 12:21:36.272232+00	789
9f36c6c71531609e2658af2f1ee3c54e6336e615	2021-09-27 12:21:42.365048+00	790
c62568cf474979348d4e217b192e1fae62267c6e	2021-09-27 12:21:42.611732+00	791
82ae49ddd7b98425b0dbe104b3c31d3e288d5609	2021-09-27 12:21:48.455516+00	792
98acb7b1f0ed08302333cd04dd2165e8edecfe42	2021-09-27 12:21:48.707732+00	793
d98bc91e180d2fa51e9882fe066c3945c34bbbc5	2021-09-27 12:21:54.779174+00	794
fb2e9028f6beb2a984890cf1eec70d40b2160767	2021-09-27 12:21:55.127628+00	795
ee2218b1c01a510d10b698a32bd40d5cdaf44551	2021-09-27 12:22:00.933027+00	796
630e86ed854866b5afe381069a168fdb09bd9a16	2021-09-27 12:22:01.178847+00	797
a80531d6354335777129e66543cac155870d6200	2021-09-27 12:22:07.292208+00	798
34b47ba7c30f4199ec6d14b219513797d65aa2b2	2021-09-27 12:22:07.552559+00	799
838d5cf0a2957a6f7ba181c06f53da66a3566201	2021-09-27 12:22:13.336354+00	800
4554cd88686e52de492bc0773b30f183a8c26027	2021-09-27 12:22:13.609093+00	801
cf7f1b0d3cd44142a92df3be866e301c7a565ce3	2021-09-27 12:22:19.771513+00	802
d1088104f8f0cd117de9f21ff9529abc3e60c7b7	2021-09-27 12:22:20.034519+00	803
e32ea9880c619ba9b257b51d63d52af6f8e76b20	2021-09-27 12:22:25.877158+00	804
e0dfdaeadad4bc052a1c41c51ec6af305c11c95e	2021-09-27 12:22:26.119742+00	805
da96436351d50f69894dd45398adb918709345e2	2021-09-27 12:22:32.32378+00	806
932d9d3c526c623523685b1c7bdbfc45e29b28ff	2021-09-27 12:22:32.580766+00	807
5bc9f1ebc358e059f3396f59fb0be1fd5022a5f7	2021-09-27 12:22:38.354917+00	808
54a792ce15200eb789a2d52f9151cf5dbcbb556f	2021-09-27 12:22:38.610234+00	809
1394b94f15bcd6ce97d8d800e2647f28b41b6b33	2021-09-27 12:22:44.736709+00	810
4042eb8625f1793c5ad612c268d3517b20f502f0	2021-09-27 12:22:44.972569+00	811
f583dc236646a248b68a7fe38004369fd4482068	2021-09-27 12:22:50.748257+00	812
66df9d05aa52dd99fbaa7ea32c1aa6ca612cc307	2021-09-27 12:22:51.009131+00	813
fe653a79c84b35f4b206feef16e157f3b30ba3b1	2021-09-27 12:22:57.132426+00	814
83f8836bcb797d8482a96fb77c6f2d3ae6280ed4	2021-09-27 12:22:57.38791+00	815
9c326b84612385c9d116b94cba953d33af907d52	2021-09-27 12:23:03.17687+00	816
5ea69a9719ce1420408af8ac1cc7980258900af4	2021-09-27 12:23:03.420571+00	817
7f6e2284e0581dc64fbe525efaa327443295101b	2021-09-27 12:23:09.573838+00	818
f5ee3e1e1bb1bb095e6d192a16e9b673cc06bd24	2021-09-27 12:23:09.8293+00	819
dc959216902ca94fd12ea436f2ae70922d07dfd7	2021-09-27 12:23:15.555754+00	820
72902e530424163371edc2ab0cc97800ad9a39a1	2021-09-27 12:23:15.796335+00	821
cea1af4f7fad2b745b209ed5e15a5dcac058d0d2	2021-09-27 12:23:21.911398+00	822
408abbd556d28d203925d7505e9bebdc1f074d3e	2021-09-27 12:23:22.160736+00	823
5f5da232dd31ef96913072d1113b6dcfc255d707	2021-09-27 12:23:27.931627+00	824
5b5778da9b548feeb2fab52af358d79d014f4e49	2021-09-27 12:23:28.186879+00	825
29ffca83e9fe5dd03eda5dc77d9438787b068952	2021-09-27 12:23:34.341761+00	826
9eb02b6f4c671cf7d67a26017dbe36d438ee91c7	2021-09-27 12:23:34.589539+00	827
15ceb62011e7e8363b163f397023bd3b34a5ece7	2021-09-27 12:23:40.339505+00	828
101e776cece187223ba94a54ca6a16978a4058ed	2021-09-27 12:23:40.633193+00	829
2a0239b54bbaea689ec3e005a4d1e38324a6192d	2021-09-27 12:23:46.788575+00	830
2b5c4bd12d8b16243007a5874abf96995c93b73f	2021-09-27 12:23:47.039355+00	831
0cb97529a1ef7d9544fcc2e60abf10e657d01f37	2021-09-27 12:23:52.807106+00	832
a89a3dad6b0cfeb0d2b829b44396c048f5ad7e5e	2021-09-27 12:23:53.058819+00	833
10f4c2cc571031a8851f1004605a69aeb6875e47	2021-09-27 12:23:59.132749+00	834
9824079b9bec6f838e4c094e715a7c09d53c773f	2021-09-27 12:23:59.398217+00	835
3dbb923884b16fb4229586e22643ddc0e84e80f4	2021-09-27 12:24:05.122467+00	836
6c5e6d604ec440d8ebb4928e7c7ee48d0663685e	2021-09-27 12:24:05.459903+00	837
622f6c6534937f65820258be8f0cc47281d37f84	2021-09-27 12:24:11.492178+00	838
2d39578cf617849d102d35a1b6b945804c1b2100	2021-09-27 12:24:11.741988+00	839
7c66ea35bc8257a17386194067dee913ec85f3bd	2021-09-27 12:24:17.633207+00	840
3ac3e87762589987e9ac99ca1d9f00898a29e269	2021-09-27 12:24:17.878328+00	841
32565e56db0c2e39a3614a2c8ea6da503e4e7260	2021-09-27 12:24:23.941167+00	842
4dc3d5b34c1d35c97fe24d5bbb9c34026842501a	2021-09-27 12:24:24.187174+00	843
5884622505ab6ffee6333765f0fdc9bc946a02da	2021-09-27 12:24:30.161973+00	844
61fa093c50c7d1971dc5da871a565c45cee74d30	2021-09-27 12:24:30.407943+00	845
17b16581b37595cbb1f00b4ee2a31498496071f8	2021-09-27 12:24:36.280692+00	846
2c38122051c0a2932607444cb845889bb2cbadf3	2021-09-27 12:24:36.513444+00	847
61be5efa788b3d972d167f9e2f291acfc609440c	2021-09-27 12:24:42.702231+00	848
282820099da8338ad99e58a1a7ab6c5b46ab5113	2021-09-27 12:24:43.008757+00	849
8e653ad69b25d5b81108db734283ccef14771cde	2021-09-27 12:24:48.85639+00	850
8381e4c4dca8265b3264b3a231b01a39c2d21f58	2021-09-27 12:24:49.113374+00	851
b3f5fe0c2b82a7cc369f5e08f3ed4dbf21a00a9d	2021-09-27 12:24:55.217764+00	852
1306062b59c04cd86d38b6b7d0da05ab5c87e6b3	2021-09-27 12:24:55.469216+00	853
9b54566c083dfc02ff8cb4cfb0571a869ab9ea95	2021-09-27 12:25:01.31945+00	854
7bb09dec9a124cd67b6526e9f8e2b1b556e62309	2021-09-27 12:25:01.56435+00	855
627fa1f24a4a0097947ef5935ddf9ed384a635fc	2021-09-27 12:25:07.677139+00	856
d2aa914678178539dcd37b54bd8c6ffd18e32138	2021-09-27 12:25:07.912251+00	857
0e1c846b664c6ab3e045d04e7a8fd1903fe06bf8	2021-09-27 12:25:13.883986+00	858
54c421c5fbf3ed71f959ac5f8dfc9464cb65797f	2021-09-27 12:25:14.14869+00	859
8aa1d37a9bd931a3f6b129f430dc049820b0522f	2021-09-27 12:25:20.346768+00	860
2f0928c7ee1ba984d62bf297a11c0bb2663a5997	2021-09-27 12:25:20.609216+00	861
dd48db8540e6401880e1ec53267acd8e35aa34cf	2021-09-27 12:25:26.492944+00	862
01725478ee9bac09391ec948aafd67e0688fac95	2021-09-27 12:25:26.744179+00	863
7982f91c473ee14bd4fca98d3dcca7fbd7bbf4e5	2021-09-27 12:25:32.844251+00	864
eb4e506237075019fa3eabda94b7d40e3a48727e	2021-09-27 12:25:33.08119+00	865
98a859474c17e6164d46f1a14cfd62848ce9cd23	2021-09-27 12:25:38.959474+00	866
c9e4de6740154d88873e8d500812916070118163	2021-09-27 12:25:39.203986+00	867
b63467e2b138b885113f291e1686532e060b6776	2021-09-27 12:25:45.3884+00	868
2fd3590ac0bd9e6af7f7d6a5b16bf55ce9c58552	2021-09-27 12:25:45.633319+00	869
3f01215ba7be4af7308476ac4706ace93a1ab840	2021-09-27 12:25:51.39186+00	870
ac1616fdcd78d13649ed50cac97cb475b4ab2bd2	2021-09-27 12:25:51.724265+00	871
f19f75a7058d6d357fadda42e91a00ae4fac0416	2021-09-27 12:25:57.777851+00	872
1464aea7a94676eca32ee3b047c055dd13e9553e	2021-09-27 12:25:58.035891+00	873
807c77647ff34bfca4a331dc1826ad43f812af9b	2021-09-27 12:26:04.00342+00	874
701d76ffdae16cb99df15c9827dac1ce06a613aa	2021-09-27 12:26:04.354812+00	875
05d4d3ad7030768f13c3a0d36d4a27a717a1c49a	2021-09-27 12:26:10.25931+00	876
85ad27c78b05f0bc11069047c5c46d0b828a4125	2021-09-27 12:26:10.526493+00	877
c51ccc38048056a9d87c4f42dd9b0db3e7296154	2021-09-27 12:26:17.007506+00	878
c4326a283eac865ffeb2b629d25979105937aa90	2021-09-27 12:26:17.263618+00	879
6d02f71f9384e205cbc994e7e7f0e81318535059	2021-09-27 12:26:24.459639+00	880
e4e0b2fafd4d6f45d387c15dc53277806c6f8395	2021-09-27 12:26:24.702696+00	881
325c0200cae0b69afb67e9fb1e74c2bbdcf300d8	2021-09-27 12:26:30.768409+00	882
fb180e83b649bd45d85350dda75ba4b7a1745a2f	2021-09-27 12:26:31.032039+00	883
292845418886fa10924a88c7bb046a5d6d424c58	2021-09-27 12:26:37.104772+00	884
b12920f693e068f55eab3dbe1a48cd93500e06e6	2021-09-27 12:26:37.345526+00	885
901f4fedb59db3113f15ea7aa87bc2a7e1338b67	2021-09-27 12:26:43.597309+00	886
6533f46388764763520eb6653ea70c407c34d740	2021-09-27 12:26:43.860735+00	887
0738749de6a9bb944840cc08c91c857b0e2b7631	2021-09-27 12:26:50.204793+00	888
e78a71e09d6e216b26a939d13e66de69ae60b1b9	2021-09-27 12:26:50.487226+00	889
2dff93742f3d54504dd0922b3cc48c132ddd156a	2021-09-27 12:26:57.36326+00	890
98eebb2c85b382609fb0b55eed8ccb25c09a061d	2021-09-27 12:26:57.696671+00	891
05c2f69f359c8e1460667cff88fb168a710a2bb0	2021-09-27 12:27:03.49785+00	892
ce8581e166d964cb1d3fc1f3fcfdbb2072ab09bb	2021-09-27 12:27:03.753621+00	893
a3c78b6c1bb0e49e4cd267604117459d7329dae5	2021-09-27 12:27:09.759419+00	894
328b1529ef41b4fd6fa6520976130151b8a04a42	2021-09-27 12:27:10.052564+00	895
abd831e5ac2acfaec583e305febc4cdba37f2e01	2021-09-27 12:27:16.355046+00	896
86afb5183c7a6470d5ccca3c907fcfad02dac68d	2021-09-27 12:27:17.707703+00	897
2fad64a0acbbddd94296983b94f120077c15bc44	2021-09-27 12:27:23.822495+00	898
02b12ebf8c83954a498f574cf07548b43adb11cb	2021-09-27 12:27:24.063209+00	899
9fd61f744f85bb5b0f0b34fee3987594c930f09a	2021-09-27 12:27:29.812266+00	900
46d364432798e9d332cc268399a99f46ea872f82	2021-09-27 12:27:30.111921+00	901
bf9fa0219c8d30e151593c12605d6e7612d85c20	2021-09-27 12:27:36.17657+00	902
7f0a4a6913a9ef90789b221bcbb5bc236c1f0d9a	2021-09-27 12:27:36.412478+00	903
133e506a421aaf9508c9ab1a8bc682d8b9103a9b	2021-09-27 12:27:42.288073+00	904
94c79ddb8d07d5a75fcad9596e3a2cf648919887	2021-09-27 12:27:42.539001+00	905
8b8a3dcf799f330c36a8b414128158668d697696	2021-09-27 12:27:48.525697+00	906
19219bfd7731b30a32d69f34d99f03ea1c75c762	2021-09-27 12:27:48.763135+00	907
a41ce8bfdfef85d8773259cdb49657079e9c333e	2021-09-27 12:27:54.714713+00	908
38d63d787e4b926b2dcb25e3c207d22f18eea7e2	2021-09-27 12:27:55.325342+00	909
9e3403350a4e8291030cac73d427800d6bc383be	2021-09-27 12:28:01.104221+00	910
9e7bce9107924280dc18c5c4ee033286e14db82d	2021-09-27 12:28:01.362087+00	911
68c07ef1fe2eb26ef5b7ff203aa8bf0cb1de3ca8	2021-09-27 12:28:07.478832+00	912
e1272490f316002046d2ca225111d307b5f11173	2021-09-27 12:28:07.91796+00	913
d8fba351aa8f6c201753480f2a95a94c79d4f55e	2021-09-27 12:28:13.581508+00	914
e5ca7a4adfed77ac52f5674857688b0aedc8be64	2021-09-27 12:28:13.839155+00	915
ac9f01a74861c9d08210d6df079822d2c41b9a6f	2021-09-27 12:28:19.545819+00	916
1efdcf14092ec40465d3010211ba0afc7ffce739	2021-09-27 12:28:19.809115+00	917
c9ea6809461fb6ba12e412bf24ce02d2e25f1891	2021-09-27 12:28:25.455076+00	918
9e97a89a39b3945b7f638151409968b2a3ee0303	2021-09-27 12:28:25.699492+00	919
84ff3c566bdf4a2db3c6f00e49748185b7b5b005	2021-09-27 12:28:31.397065+00	920
9c48634cb6e86e099f9ca21a9937ce140d06cb3c	2021-09-27 12:28:31.660888+00	921
31d9ec6e99bfd1cbd3acff728dd937799ba74220	2021-09-27 12:28:37.345193+00	922
fd4a76e1ef03fb27e84f06481ca26537601c3dba	2021-09-27 12:28:37.609507+00	923
3a12b87fb0445bf5082c459a42774f8185df67c6	2021-09-27 12:28:43.173278+00	924
1cc3be8a856e1d5d507d04f6454439e3c0070625	2021-09-27 12:28:43.429894+00	925
cd52e6ab60984f62f4d10d19042950e6076ec932	2021-09-27 12:28:49.177304+00	926
2fc591e4d9693276370543e829ea96f9db50c07c	2021-09-27 12:28:49.444509+00	927
1bcb925ceb8a0ef3bc023b1e0880566f8eb52209	2021-09-27 12:28:55.034236+00	928
381de7157c6e57d03bb8f944727e0b4fe4d61817	2021-09-27 12:28:55.274249+00	929
65e6b0ed6b597a914ac6480ee185d2742e541097	2021-09-27 12:29:00.995627+00	930
ff0157f1ce1489163c62200b757694b814526e57	2021-09-27 12:29:01.239193+00	931
b8bd2c699c2f8907d28dac547b96833daac4630e	2021-09-27 12:29:06.877932+00	932
59bb68c338a03471703bd6700b333f06a626b86d	2021-09-27 12:29:07.139135+00	933
ecb2ae69df7b8a62cfea897a7d46e5be79b79a05	2021-09-27 12:29:12.856271+00	934
43247f48543f4cb3f7dd0b6f651b3bd4769eb988	2021-09-27 12:29:13.120537+00	935
0e3e9fcf98bbd7f76937d196da07086d092acd20	2021-09-27 12:29:18.515466+00	936
60a6300e3ffbb0ba087ca705c4627bc73711770c	2021-09-27 12:29:18.770344+00	937
a6eb63882a827fa0792a02cd4cd4ed381020fbd6	2021-09-27 12:29:24.407847+00	938
5e5da61ffcca5367ef0e6f0db9191b1d1ceb49d1	2021-09-27 12:29:24.654701+00	939
9e555fc0fe2302a70d285766d7dd7b0083e3561a	2021-09-27 12:29:30.099272+00	940
c439281766452ea30ac879253ef06d373d964bf3	2021-09-27 12:29:30.370747+00	941
bfbdeb05b9d58cb6ac9559a873ae56493161132b	2021-09-27 12:29:36.142756+00	942
5718c7110c1a0d5080d52f4504bd384f0b7b3b49	2021-09-27 12:29:36.400543+00	943
5e8b833eb94049697ca6fa668acb3c01eef44990	2021-09-27 12:29:41.898395+00	944
56f8fd855ac58cd9b6f659170e472fc1a06b8311	2021-09-27 12:29:42.142469+00	945
91a21ff4792e1204445c74cf8ddf4b5ce4bb14c4	2021-09-27 12:29:47.966595+00	946
6d1b6c49c82a20e55ab29e4de9826369559279c9	2021-09-27 12:29:48.230028+00	947
979cd0ee2436f3c3700d12a325fdcb64fc4cf40c	2021-09-27 12:29:53.691786+00	948
b920e9623b6ef7cb9906b103befdd4fb21370ea6	2021-09-27 12:29:53.962202+00	949
fb0d1782aa00056e0a0d57638909d4d7295d4d46	2021-09-27 12:29:59.715952+00	950
1b5f5cdfb57f2dd2f69e39c7ecb1a4d0d80b75da	2021-09-27 12:29:59.969473+00	951
880b06d44f56617e7f79378e0b5b325ce1f4296d	2021-09-27 12:30:05.320774+00	952
08697b0dc268ade09979b4ec55306198faa857d9	2021-09-27 12:30:05.565283+00	953
b04c9df709f677e9bb135cfb83a73b4f34ef2126	2021-09-27 12:30:11.333241+00	954
1fd7ede9d43d2f34d1c5097f3bfc4da76f9f9e38	2021-09-27 12:30:11.588583+00	955
eb399a47bad0b1b5510f80edbde211d57782fc4a	2021-09-27 12:30:17.017705+00	956
b07c20b88202bf9e426c6795c0ee2557ca689c56	2021-09-27 12:30:17.273225+00	957
c122b10c5c248db4a545c39c20852683510f9e37	2021-09-27 12:30:22.977703+00	958
e82e1caa2f5a7a208ca25d1e4a302ca2cd3b9a38	2021-09-27 12:30:23.223976+00	959
de854be3a387a0143e216ca3a504a0ad3a5d5f31	2021-09-27 12:30:28.642452+00	960
76957c0ce162c79641d377bfd6f2385672f1d169	2021-09-27 12:30:28.888552+00	961
652a88f4dcf380faef4cfa8a2ef4c96a8163a992	2021-09-27 12:30:34.568871+00	962
01a53c3d6fb6b365195e5daf30209fd023d19c81	2021-09-27 12:30:34.813415+00	963
94d6bde7d789ea44e3bb4a51cd88bc6bf355b411	2021-09-27 12:30:40.229162+00	964
9e48c01091d92fe4e91650d2022b307903533644	2021-09-27 12:30:40.474112+00	965
b4c2ee86fdbde09dd0072b382c6c5d3ef6d7eb01	2021-09-27 12:30:46.207362+00	966
5dd504db77a0aa08fa685a629d2587be209af7f9	2021-09-27 12:30:46.453877+00	967
f635cfedf4645b5e1d4f3ad35c991d1c84e16967	2021-09-27 12:30:51.814674+00	968
babe425b9ffad8f219832c1701b510a8fad0ad7e	2021-09-27 12:30:52.064602+00	969
b5c5cb83973c15a758e05590ddcd9d6e4df581e3	2021-09-27 12:30:57.778953+00	970
abf271d6f96a704154a80b5204d6f6c04a0c3c88	2021-09-27 12:30:58.058709+00	971
6c93043546542043921b787cde58d8661db5a6d6	2021-09-27 12:31:03.517098+00	972
b9ffb8bdd5e570c15c33d78d7eb770dc371e84e9	2021-09-27 12:31:03.769842+00	973
8edbdabeddfa07948ab2ff79d1945b4df0e78d78	2021-09-27 12:31:09.475661+00	974
69757169c0daf29cf8e3da1410266d99a49497f6	2021-09-27 12:31:09.703516+00	975
657dfce294e93dc48a181be5d3334b21dc140d50	2021-09-27 12:31:15.138191+00	976
f2e1231197805901f21ca3012f0168df5784d4dc	2021-09-27 12:31:15.394378+00	977
ae58d5819ffc6cc6cf9118444e9133b63426b55d	2021-09-27 12:31:21.093493+00	978
bc9463495eb127ad4413eebf22a1d8a97e600f9d	2021-09-27 12:31:21.359723+00	979
146a67acaead7f491b48c3867de23d4b6428640a	2021-09-27 12:31:26.789128+00	980
5b5468b8498c40cb923cf1340cabf4f2d824b0e5	2021-09-27 12:31:27.024672+00	981
9ab590735305b9ff87c75a87f16a6364c16f2f04	2021-09-27 12:31:32.748271+00	982
fdadda941e684a53797f2487125f0b6675830162	2021-09-27 12:31:32.994486+00	983
381b704e4ae32e6ae0e7b4d20210547bf19282ed	2021-09-27 12:31:38.373616+00	984
691ec1013ffc514bd3c96bfc3a136f420be1a1ae	2021-09-27 12:31:38.641106+00	985
4b03ba0a0520ca21e5711f4517dd77e47a332dca	2021-09-27 12:31:44.320386+00	986
c28ba8f335d7df47366e13ccc608b05c698cad3f	2021-09-27 12:31:44.574858+00	987
a717c06496ee4bf1d87fad85785595ae586095d6	2021-09-27 12:31:49.983735+00	988
96091295b233659ba47e5089eb733192a202c80d	2021-09-27 12:31:50.243807+00	989
b28fcac1d34465be6f62dbf360fc7254c9bece86	2021-09-27 12:31:55.868511+00	990
644f98897f87fa0cd4c5bc7ccf263192a3e63f9b	2021-09-27 12:31:56.123829+00	991
7e7e189690e40d5c07894c648c8ef0b06f86d16b	2021-09-27 12:32:01.472782+00	992
5f27913ae4581423fae5c55c5a3d955766bfbcd2	2021-09-27 12:32:01.70596+00	993
b3bca8b1546fcbcafa7c88472ed6f0e01902243d	2021-09-27 12:32:07.481365+00	994
f11ce0cc097a1b3c65940958fb14fa1182bc8118	2021-09-27 12:32:07.751623+00	995
b0b588240d38875b3bbe8e674fdab594dd952d6e	2021-09-27 12:32:13.14575+00	996
cd1a545437f4cd139cbb588b44beabf3ceb194eb	2021-09-27 12:32:13.400251+00	997
30dc563d20c44d8738bcfddbf95d3ed214350e5c	2021-09-27 12:32:19.146322+00	998
5f404a37f51b3e2c13eed2f3b388568de3e65257	2021-09-27 12:32:19.410862+00	999
1b8e519988fa939bec9260c8c326022e835d9a17	2021-09-27 12:32:24.806186+00	1000
7e992458b9f917f7e47eb0b371f6e10357b601f9	2021-09-27 12:32:25.070358+00	1001
ca67b510c7a44f9d6d58a98af50de922df0e3e87	2021-09-27 12:32:30.704979+00	1002
1d838771bc9ea07b06d0aa55047f24bbcd283b15	2021-09-27 12:32:30.969159+00	1003
92acf74b63b5667501133615f17585d890d1eabd	2021-09-27 12:32:36.378462+00	1004
7ba2be52a00debcfb80e4fc238d09611ebc95b8f	2021-09-27 12:32:36.641481+00	1005
4fc84c6e15ee97a1e902965d04ab92a9afae26d7	2021-09-27 12:32:42.373817+00	1006
875ecd7c77ed1e57c7b54555f32c32ac549875d3	2021-09-27 12:32:42.676905+00	1007
8dba160a7f5fdc35980d398ea7be36c6931a3849	2021-09-27 12:32:48.083014+00	1008
3509a0da9c02fe385b2735b1c7d57c5ee89c6278	2021-09-27 12:32:48.349868+00	1009
2c4c19d2a65d753a0f5c229068e959041ec9f6b7	2021-09-27 12:32:54.149695+00	1010
5821833e249db3e9c5584f6c2cda41a2674ebedc	2021-09-27 12:32:54.389307+00	1011
ef073e27275b2d1f0e1f6232e2c4fc67bb679c61	2021-09-27 12:32:59.848911+00	1012
058ad75f11eb6dfa4e4d541a8800737afed80e6a	2021-09-27 12:33:00.295285+00	1013
f738030cd7ff99e160275bff2fc1e084e92b7c60	2021-09-27 12:33:05.55456+00	1014
b8bdcc925258349cac0937dfe9f04b589fc25fd1	2021-09-27 12:33:05.821841+00	1015
5dcd3edca46912a3e6ed403e287e92149d88eabe	2021-09-27 12:33:11.585296+00	1016
19a726f5ba9c52cd7242476ecd2adc820e608d72	2021-09-27 12:33:11.839248+00	1017
39b39ee947864e86bc0ebafcc5e5f76e507a9b50	2021-09-27 12:33:17.283644+00	1018
965c39c41732c53f7d85247bee14cd9ac4eccf25	2021-09-27 12:33:17.551088+00	1019
2e62a3d70b1429484bde9f739133816e38b8b3be	2021-09-27 12:33:23.344792+00	1020
f308859832c81eafae2acef1ee45c90bd8c2ce32	2021-09-27 12:33:23.609156+00	1021
707f3c2b0a8d5825b646ee745c6231b6cedd7949	2021-09-27 12:33:29.094135+00	1022
7252c880072d0e402ae59b941f33c588a9e9923b	2021-09-27 12:33:29.34052+00	1023
08cf4a65ed844580ea8b0aab780b6e9eac46f525	2021-09-27 12:33:35.161347+00	1024
13c3c696f7079fbfa308e7b9c3b6988c3fe1d394	2021-09-27 12:33:35.40813+00	1025
fa46eae62fe45140c76f1981cb48012d66d3f35b	2021-09-27 12:33:40.824074+00	1026
395d043a7225f146e91ea3ed2f08aa5de9db4438	2021-09-27 12:33:41.082713+00	1027
70bd54323f5f52ce928742cbb071311a1d2046e3	2021-09-27 12:33:46.861096+00	1028
b254461b4979fe8a415e1c6160509fdcfbe6723e	2021-09-27 12:33:47.108795+00	1029
2a78f38383797b27eaa3d0d660601c36ea237447	2021-09-27 12:33:52.437665+00	1030
6008d1450a5c397971999a6f25f2a5b973d10cef	2021-09-27 12:33:52.736447+00	1031
1ffb69179b0b7f8e30faf520e7199742a8a6e1c7	2021-09-27 12:33:58.449152+00	1032
550249ca3698080c8c72967960f59bcea67adb33	2021-09-27 12:33:58.714393+00	1033
149f30698118f6464b0629e88b976869a08f8019	2021-09-27 12:34:04.209168+00	1034
0c75df60aa800c3d182e874c1c3e561c559149b8	2021-09-27 12:34:04.452015+00	1035
34be3cc4de69a82c7ba83242376c951258351c59	2021-09-27 12:34:10.300188+00	1036
652f253c22edde59a70df765c4192b3e0bb343d5	2021-09-27 12:34:10.579654+00	1037
503abd605d4f61b65410c8297060c817aef747ac	2021-09-27 12:34:15.872467+00	1038
f3f4f287e8254f72890e9af74cdd7d85ea8606bb	2021-09-27 12:34:16.113388+00	1039
f50090efae935e88627e156958938e6fe6e0854b	2021-09-27 12:34:21.85737+00	1040
548ce4041e2e959c2aca16a2b4d5e66a3e655c49	2021-09-27 12:34:22.103779+00	1041
d541fd675513b8877b80196161e7aaf968d0ae2d	2021-09-27 12:34:27.47202+00	1042
43a19c5c36afc5f1862b054f5b8a3b3ac7cfd1c4	2021-09-27 12:34:27.713827+00	1043
cce0c34fe4e56f4c394aa60a22ce960d832e9b02	2021-09-27 12:34:33.483368+00	1044
6c94cd17f0d150b97fa16453b54f7283a24737a5	2021-09-27 12:34:33.729542+00	1045
ccb30bb41be16e025d4340a1f0b38d0a9699c65c	2021-09-27 12:34:39.1379+00	1046
432afe7315edbfdae2f9eb5f2cef4ede66e931c3	2021-09-27 12:34:39.415059+00	1047
9cf2bcaf18f9d800b92b62fc8ecb975810997bd8	2021-09-27 12:34:45.08148+00	1048
3d2b6e0861687de68dc3d915d7472820189b375b	2021-09-27 12:34:45.333597+00	1049
4449ea2811678418096a88c36ef133d6d8d09d77	2021-09-27 12:34:50.846179+00	1050
6fc1bbf23ca093b477be5909799edd135c7a3da3	2021-09-27 12:34:51.103227+00	1051
007492959abf943c26d9ff9433c8a367e5f297fd	2021-09-27 12:34:56.832601+00	1052
7277f7f4d19fc2185e4ca89ba2bca7bd479de490	2021-09-27 12:34:57.077835+00	1053
babc2ddea55e467f49fa9ca92b0db46dce60bc7d	2021-09-27 12:35:02.4896+00	1054
22e1bec344ca48a0e897268a6ee334b7e221fc0c	2021-09-27 12:35:02.74096+00	1055
06cb7af433240b9ccf46106d2e99c3b37565aa6c	2021-09-27 12:35:08.470355+00	1056
9207b17283aae7cdaf217cbd2c26a125227c96c7	2021-09-27 12:35:08.713528+00	1057
df69b8f9a8cd3832596376e0ccba64dc42807ba1	2021-09-27 12:35:14.05874+00	1058
68e3897c0d6a39b56528d26332d23e5a4b6ad3a3	2021-09-27 12:35:14.304389+00	1059
02db891094312fb191209ff88c321a0ab1074777	2021-09-27 12:35:19.985656+00	1060
146620fa5d6c64cd4ed1110602f0c6f1138a3f6e	2021-09-27 12:35:20.236478+00	1061
b4246558d77d556740c5ee1920f1fe1a70777690	2021-09-27 12:35:25.667048+00	1062
e5694afa0e64776ae19984ce7752a100db78bb30	2021-09-27 12:35:25.929707+00	1063
14dae702fd820466629676f80a3b72ed6a5130da	2021-09-27 12:35:31.326892+00	1064
5fe28d4fe45e3baa614ce270b04e9235d7f020ae	2021-09-27 12:35:31.59536+00	1065
c04592ba7dd1eec2da253b73897506338e3bd9f6	2021-09-27 12:35:37.42336+00	1066
b8eed8dc957fb52e99ad643a7380bcb90957fddf	2021-09-27 12:35:37.67966+00	1067
6661c226593a717e33366f313b43209a0c989939	2021-09-27 12:35:43.093918+00	1068
adfefbcedf743b5d7351eb3f9a1c3e7112188918	2021-09-27 12:35:43.339672+00	1069
d3b7f72a3c294c6b749506f0815347bd9557fc9a	2021-09-27 12:35:49.033176+00	1070
177bd6eea775cd44982972742eb9522db51d77b2	2021-09-27 12:35:49.285847+00	1071
39ce57714d1bc54d2e877057250801785355917c	2021-09-27 12:35:54.61572+00	1072
abba069c1edf8c540597979d957a702292386182	2021-09-27 12:35:54.882495+00	1073
db02d30f80e5893999c639e94aa4acafd9cf254f	2021-09-27 12:36:00.623206+00	1074
1b5bfa37871d66321973ab27869e12c4c3013828	2021-09-27 12:36:00.879146+00	1075
8442de33220779a97a13da3f6835e8b1167f4746	2021-09-27 12:36:06.208552+00	1076
41f38e111695c46c5f9f0aa2ec837eb989414602	2021-09-27 12:36:06.455918+00	1077
eb80b31841d3d5c48b5612d00b1825c0c521093f	2021-09-27 12:36:12.186994+00	1078
720a6e2ccd16a758ddcdcbd9fae2a8bc55d19989	2021-09-27 12:36:12.424376+00	1079
00efaf00887d9aa7e60b192e811fdc2e37992ba7	2021-09-27 12:36:17.858387+00	1080
18d125c2bb3c6c936e4330ad9fe3605728b5ea1f	2021-09-27 12:36:18.120423+00	1081
1ec1a7ec516a68bad47796e5c535d905a61f2fbd	2021-09-27 12:36:23.777759+00	1082
67f16f711227467ddd4452b4bce3bb60e32f0d6e	2021-09-27 12:36:24.053303+00	1083
b9f11f935e94f90626b46a8767a8744ebb656a1c	2021-09-27 12:36:29.408784+00	1084
711a7351471e886d97cb0e4f79a68898e3a369bb	2021-09-27 12:36:29.640095+00	1085
0fdb4ab7eca457fc19b4a3c72fd2b63d46db6753	2021-09-27 12:36:35.504617+00	1086
8fec8f55175972520c46b6cb6db2fcadd8e50cca	2021-09-27 12:36:35.75967+00	1087
97487276b40d94687341630d05bae9dcf07d946b	2021-09-27 12:36:41.117802+00	1088
c17fb8aa5327040602b15137cde117dede7afddc	2021-09-27 12:36:41.369366+00	1089
7845cdecc9a991c2a203459d91d528940aa4c7ae	2021-09-27 12:36:47.117633+00	1090
4f929c944113d983bf5ee82f87e4f14709688e7d	2021-09-27 12:36:47.373083+00	1091
92a0239a101dadba082b3cbe5815ac49ec2f1ba4	2021-09-27 12:36:52.789004+00	1092
fd2a9eddf89e481fa64fe04aa330a65538be361f	2021-09-27 12:36:53.044572+00	1093
8ad966deeddf694d950ce23e97543a7885032378	2021-09-27 12:36:58.79846+00	1094
dab23a99dde98dfd89854d9051765d362196af91	2021-09-27 12:36:59.037817+00	1095
fd786e0eaf62fc4c4aad1b0215ece379e5c80e55	2021-09-27 12:37:04.394895+00	1096
09d646673bda98bb037e67dd3ae4643fb006e464	2021-09-27 12:37:04.6344+00	1097
30244ddce7a2edea1fef74a8637fd2d19ac76c02	2021-09-27 12:37:10.445185+00	1098
35f6f5724744e1eb023539b5b419fcf0fbd36d71	2021-09-27 12:37:10.70021+00	1099
3a5f57d67a6626abd917d72095d746cba942022b	2021-09-27 12:37:16.049509+00	1100
aa65dd2eefd3b4b26a81211497d7b7c1bf2eb916	2021-09-27 12:37:16.294063+00	1101
2de48a03ece065566bd191a9f48ad23ec1e79492	2021-09-27 12:37:22.07571+00	1102
8a784bdf4f1e52cedf0d46da45192adf1804dd00	2021-09-27 12:37:22.318341+00	1103
03b62efc41b97e8e1b91a12b0912a19bc11957d1	2021-09-27 12:37:27.691094+00	1104
14e1f72a200129b7f7b868e983c2737f0740ebd3	2021-09-27 12:37:27.934908+00	1105
0e478cb23e50462fbc7adcad50fae33f176c0d5e	2021-09-27 12:37:33.759787+00	1106
7baf3c4bb3fa7e6690cb319a4c9cb5224499f7eb	2021-09-27 12:37:33.99168+00	1107
35d2b573f1c0e3a02e07d8f7eeca8b71d7593088	2021-09-27 12:37:39.427799+00	1108
c9da6db34a8f40410523e01b597324523b70f067	2021-09-27 12:37:39.679969+00	1109
f3a088ced7629259dbfd28da01ab650310c37c87	2021-09-27 12:37:45.432936+00	1110
8e518e05c81fc6224023b5fc1a3016071f251c12	2021-09-27 12:37:45.68044+00	1111
6e034bd44d4607a3ab833ea7a37998cc10843f3f	2021-09-27 12:37:51.0887+00	1112
41ac62fdc8707e1e82e961cd1e21e8fd2d0971bf	2021-09-27 12:37:51.325456+00	1113
ae4ed200261e1af8f313fba22a8d39c54f643274	2021-09-27 12:37:57.113526+00	1114
295252f3216a72bde28262587abed868c784efe9	2021-09-27 12:37:57.360002+00	1115
70132a0beb31f425bcdb9ec05c8144adf413166d	2021-09-27 12:38:02.733202+00	1116
c818f1de8e832df4699c8f46840083b845aa3666	2021-09-27 12:38:03.019521+00	1117
c158d9b1f9d523f4520048980490765619cc6a98	2021-09-27 12:38:08.731123+00	1118
8b3ff8632441c4bee941da87a4dde3467f2d55e2	2021-09-27 12:38:08.982579+00	1119
4758a633fec623dbde538eeb6539399ed493f2cf	2021-09-27 12:38:14.484095+00	1120
970c361596a5f457e40577bbfbe15370c4ca319d	2021-09-27 12:38:14.738194+00	1121
28dd6f83e1db245190ef5908a3c6343558301c8e	2021-09-27 12:38:20.489556+00	1122
50834cc28420e75a4749b3d0e59ca053d07d83eb	2021-09-27 12:38:20.744241+00	1123
2063b1be106e0a083361aef4944d2980fead5533	2021-09-27 12:38:26.203933+00	1124
e15cc0b6fa8963d3f30f55907b98c668f84988a7	2021-09-27 12:38:26.457735+00	1125
d0d81273c92737808e1619705bacf40695809685	2021-09-27 12:38:32.377248+00	1126
d08064ad298e274401266043f0757f0c65656592	2021-09-27 12:38:32.639375+00	1127
63d288b06ef7b666014d8c70fb70fc62cf4a857f	2021-09-27 12:38:38.159188+00	1128
a944ff569c24ca5596f91372660808debeed0808	2021-09-27 12:38:38.398918+00	1129
641f1c74d5b948bf5b9fe07d380a06a59fbb343a	2021-09-27 12:38:44.204424+00	1130
4724e0ebfe44222f8ac6cd010931cb65e0d89d54	2021-09-27 12:38:44.448692+00	1131
34df0d03e1913a2f44b52281748f45b967d71878	2021-09-27 12:38:49.732824+00	1132
95a7ea7866f296e78e6fd43ae95a4372a208b6d9	2021-09-27 12:38:49.976603+00	1133
348438639f7070a27b460c198146ca62de84b2ac	2021-09-27 12:38:55.757398+00	1134
3e2863cbc1c340687cf0a69fa272b03f30c6e350	2021-09-27 12:38:56.006154+00	1135
80893c2478107e78dbd94f198aa837d3e92c4c2e	2021-09-27 12:39:01.391171+00	1136
9205cc47adbbce13a635476c3ac7996c5034f359	2021-09-27 12:39:01.642832+00	1137
ac2ecf8c6775eb9b4aea8585624bba5562dafbc9	2021-09-27 12:39:07.356039+00	1138
476698527109a3587e8ee6f65c4442a09815693f	2021-09-27 12:39:07.641427+00	1139
15033ec4396692e2e2dee5c7718c084218bf5477	2021-09-27 12:39:13.017466+00	1140
08772800611f252c04ace0e6bd6bfa532bbc0a07	2021-09-27 12:39:13.312573+00	1141
3becd11211fcd242a351f5c8f89fc92fa8fd374b	2021-09-27 12:39:19.005612+00	1142
1ef1df06096751c557baf4b8fef52a3cc4c44a49	2021-09-27 12:39:19.235794+00	1143
d10147fe6220191787b57fa8fa11780facf8ee53	2021-09-27 12:39:24.697754+00	1144
77a7c31ad70c560de1fa8345875b7a0b0b599f2a	2021-09-27 12:39:24.942792+00	1145
4a15f40d67fdcf620d9a16e45ac17767f4ca164d	2021-09-27 12:39:30.714265+00	1146
81f547acc524b5b7b2b4e1433d371bce07be3ffc	2021-09-27 12:39:30.978231+00	1147
8e1bac4629db6fb6ce43f834f8522ea8f8b256c5	2021-09-27 12:39:36.437294+00	1148
8be61e1e8b7a91b5eb0c1126b8a627d7b67ea12a	2021-09-27 12:39:36.682604+00	1149
75accbc650d17ef3bb2a2f3de145a01ff9db5be3	2021-09-27 12:39:42.465757+00	1150
198caa35f1901f7d6ddda7d9350525e667c2d8c3	2021-09-27 12:39:42.759252+00	1151
c99c8e3a4a01037086accb59501d24824b1869c9	2021-09-27 12:39:48.223323+00	1152
73321d949426fb124c1c0ff490823881993d4489	2021-09-27 12:39:48.46972+00	1153
681872537ed80eefd002bca0feb3b25a41f501da	2021-09-27 12:39:54.29793+00	1154
02e1741c33897cc26c700d480f1ac43dd8da64ca	2021-09-27 12:39:54.560371+00	1155
a53f2dc870752eb94f4f96d0063481bb35d82e60	2021-09-27 12:39:59.917952+00	1156
476d92155a8178b86260aa1dd31b8ce2d4ea2fdc	2021-09-27 12:40:00.167312+00	1157
26cd9dfc58995523ed96121aea907149f5491eac	2021-09-27 12:40:05.984847+00	1158
e9aea8cd9c0d26d5d10d67598857271097aaea80	2021-09-27 12:40:06.239506+00	1159
a985bf1e52681c2d3006538380735a455e730575	2021-09-27 12:40:11.713538+00	1160
799a43555bba8083a4984a3f0bdabc93444b9f67	2021-09-27 12:40:11.969744+00	1161
afae3a3be8da0ea9a0d166394cdd5507318b7059	2021-09-27 12:40:17.715699+00	1162
fdf4155ba9713c009de8d45ff796ee9d6d04b579	2021-09-27 12:40:17.957579+00	1163
620f42b8bcb0c3bc4b7af8d44479d53d44119a50	2021-09-27 12:40:23.408157+00	1164
0c808ad6f1153393d8a7423779c434239ae06fa1	2021-09-27 12:40:23.65354+00	1165
a652015532b77271e31ce9ab49412cb6a5c57b6f	2021-09-27 12:40:29.502272+00	1166
b3712fe2b3bc7749a225de5f57a50c45d6937eb5	2021-09-27 12:40:29.759692+00	1167
d2ef68f9b75aa495b6b40f99c98c7007dbfb573b	2021-09-27 12:40:35.208622+00	1168
2254bde4479c42bd6b4f885d15791aad479afecc	2021-09-27 12:40:35.45861+00	1169
e36c91ad3c2d4931fe7bb7eece49066ea5677999	2021-09-27 12:40:41.347467+00	1170
8da04ee2b256faf126663acc2da5ba6728b4636d	2021-09-27 12:40:41.601165+00	1171
c0438c00c5333c8243920f5993f14d46ce448334	2021-09-27 12:40:47.025326+00	1172
4d2af324e6b587fa02e3c58046e8b145c668afc9	2021-09-27 12:40:47.270563+00	1173
9eadc9faca41d263d534e01951f18e40bea0289c	2021-09-27 12:40:53.114215+00	1174
aa14d56a3f288afbb2262b67375a16d66466b8e9	2021-09-27 12:40:53.367733+00	1175
a229fb508f6d6eeb02c4cfe82214ea3e5df970b8	2021-09-27 12:40:58.850762+00	1176
e39aeaf5cefceda65a75ae82d788e8a3a52152c8	2021-09-27 12:40:59.107868+00	1177
9e623aa9e5d92be56cce95b15b136af02fa8046c	2021-09-27 12:41:04.952043+00	1178
ce1934bd920164a1479afe5f39ab498ec78c56a7	2021-09-27 12:41:05.215308+00	1179
6b7ddd83232cb6e6adc1f02d5aa4aa7bd6bc42b8	2021-09-27 12:41:10.658815+00	1180
7d1bb6a2cec5bc21df8ba5c52e32da54084e0bd0	2021-09-27 12:41:10.898914+00	1181
c81ea6fa1dd55150cc338b48a8c4791eca85337e	2021-09-27 12:41:16.71751+00	1182
a73223ea4465e18779d501bbcbb73fcbcd80280a	2021-09-27 12:41:16.95363+00	1183
692d044c72489ff80fbe1e89d708aa58f632476b	2021-09-27 12:41:22.38878+00	1184
52be24cb2616103f0b87edf34ff5a05c7d57ce03	2021-09-27 12:41:22.63273+00	1185
d0b95eecbe93640217d84ea46f3334e2aa9f9542	2021-09-27 12:41:28.517495+00	1186
11b64d12206d3c7a292b95c083243c24d5d8ca89	2021-09-27 12:41:28.753863+00	1187
dc7392fc02ed05624a041fef2d6f948d90bf36e5	2021-09-27 12:41:34.1795+00	1188
c6f45f20ff64b6b10b5c4a13e0d1aca9e3eabce8	2021-09-27 12:41:34.412978+00	1189
76191c74e443c2a5f14f29195f649d2422c6d31f	2021-09-27 12:41:40.213059+00	1190
67b0a6f2182b0204de25de3b2d47d9de86cba064	2021-09-27 12:41:40.478451+00	1191
2fd4cddd1b51d25bbe16f1c7de2f27ecd68e284d	2021-09-27 12:41:45.824863+00	1192
82802cfebb11d3e315e29009fd51298dbb4eabe4	2021-09-27 12:41:46.085381+00	1193
365781e36bd45dd0527b0b18d858de3ba038cc60	2021-09-27 12:41:51.813488+00	1194
74bf0c25591a54bd14cdffc8fe9fccd2e33705bc	2021-09-27 12:41:52.054292+00	1195
ef9ce46eaeaa65d22801fd9f416f01c6541bb3c8	2021-09-27 12:41:57.539565+00	1196
00c6604300c76feee1ccd29066637917988cbaa7	2021-09-27 12:41:57.775148+00	1197
58a7082f12891fe400f5839b24ae28bcb99fa68a	2021-09-27 12:42:03.59697+00	1198
0d84fee0531cff325141ed89e898cc2a3b24def8	2021-09-27 12:42:03.832946+00	1199
225f3155fc3b9ca23750243ac05b780926cdb9e0	2021-09-27 12:42:09.344745+00	1200
a5af8f58ef73006dcc34dd1ba67d952d94dffb64	2021-09-27 12:42:09.599041+00	1201
fbe397f0b4fabe71c990b494dfd15c585ac92031	2021-09-27 12:42:15.336405+00	1202
e22484a95472d46f50275f6187d16fd013a7c4fb	2021-09-27 12:42:15.588274+00	1203
4d5fcec4ff384ea05e567d0005cd9464f7e85639	2021-09-27 12:42:20.994498+00	1204
7f691be4a7ef5881b8d3b9a6491a1f47572bd18d	2021-09-27 12:42:21.253663+00	1205
e6142f23f70ba17a95223c55d9b35d91659b8850	2021-09-27 12:42:27.094739+00	1206
e470eb4bae372ec34aace2cd7b972b6312d6c5a2	2021-09-27 12:42:27.349692+00	1207
95b1162bfa854270532c62ea15f32f05908ac1d5	2021-09-27 12:42:33.364273+00	1208
8ed47b42a361fcf015e71518e0a220fa8a5e5cb7	2021-09-27 12:42:33.704831+00	1209
d69b6cc43c634b13df6c930618c566f625c3103d	2021-09-27 12:42:39.918269+00	1210
cf2526d712ab1595bec53c72e25c30dc200e26b4	2021-09-27 12:42:40.174143+00	1211
39d63410f252103be98139158e74e149b131fa2b	2021-09-27 12:42:45.553367+00	1212
8e247811a367ee00b97323d37046832e64130e51	2021-09-27 12:42:45.799663+00	1213
95c062ce9eec50ba8cd24d8436a2a5b5c97a7db2	2021-09-27 12:42:51.988133+00	1214
ab3c9631d56d29770e142d73c41df289a1d15f57	2021-09-27 12:42:52.245632+00	1215
cf165a7d4fe652c88b0113543422c3ee963e64c6	2021-09-27 12:42:57.691596+00	1216
d78d081b2876b2671b1f0cbf095ab193fb62db48	2021-09-27 12:42:57.955522+00	1217
1576e51c79b13516b6518915e6ab8afdf733bba1	2021-09-27 12:43:04.052866+00	1218
62782f91d0c12390c5d5b84c7eae603b8fb11b8c	2021-09-27 12:43:04.290018+00	1219
73ecac3a31125809142708798cfce5993a1cc8e9	2021-09-27 12:43:09.831766+00	1220
97df2872e8dab8575c19fac77afb31d3c972b631	2021-09-27 12:43:10.105954+00	1221
cf03fe44e98fb51b7da1d814b629c8b7dabe4d43	2021-09-27 12:43:15.874051+00	1222
d42f2a3fb30517963c40276352136496514cc42f	2021-09-27 12:43:16.106312+00	1223
417e8f28bbb63c20a9f3a9a59ef3904f27402732	2021-09-27 12:43:21.557403+00	1224
d09bf6d6ccb0622ceb25e3acc55597ab54fdcd72	2021-09-27 12:43:21.808698+00	1225
dbce5bb0a5a25a1a5ed4c2abfeba67036637cce3	2021-09-27 12:43:27.573261+00	1226
70403059b6e3f3813098ae295e6daada647eaf46	2021-09-27 12:43:27.81024+00	1227
53208e225707fc0c392c3817b1ff194cdba1dc9d	2021-09-27 12:43:33.31058+00	1228
080402c60d5421792cd64d8db10cab5cfdf28a94	2021-09-27 12:43:33.563942+00	1229
63575dc1b48a4e7cde569302bddfd104bf82ca10	2021-09-27 12:43:39.427895+00	1230
00ef9c6e69ee24e58743439ab4cdbd346c84fd33	2021-09-27 12:43:39.673255+00	1231
9d93be9692219db96a4b4f32ec1c9159c16d404c	2021-09-27 12:43:45.103705+00	1232
828bece1efe2926e87334c362360eeb0067d1d38	2021-09-27 12:43:45.366183+00	1233
432e4d203fed1555efa3398cca3d19757302584c	2021-09-27 12:43:51.192032+00	1234
8b67d492b2f474dbf40c2bca159274d0d1e9fc93	2021-09-27 12:43:51.443744+00	1235
f0726936a0c1ba4e0af3e8e50789b9822b873b6e	2021-09-27 12:43:56.792598+00	1236
a89ab31c206521e9029a4c477484807b2c4b1d8c	2021-09-27 12:43:57.040237+00	1237
28067391145499be96a22a2bd88912e1eb2d8602	2021-09-27 12:44:02.974629+00	1238
7eb1823b44ea6557610f1d1de1e625dd4f976676	2021-09-27 12:44:03.248567+00	1239
f21aebfa2be7c5a4623c21c0384247070b2e055d	2021-09-27 12:44:08.613483+00	1240
615c251d0c72b6560402566b2782358b7930d260	2021-09-27 12:44:08.848488+00	1241
4cd05ff5e60853800c671e85cf7e1682e2552c9d	2021-09-27 12:44:14.528923+00	1242
6350bd9c41b369791e0c0d9ced7f8c3aa4a57b42	2021-09-27 12:44:14.773016+00	1243
545c0cc728ca24131e0d9c28c9e5c2b742fd3f0e	2021-09-27 12:44:20.267089+00	1244
e22b8b9e38d1455167bbd53aa606bf24ab4b6ed2	2021-09-27 12:44:20.522905+00	1245
d31fa8f81e241ea9bc8285d2944080124df0555d	2021-09-27 12:44:26.186389+00	1246
30362df70e42751b857b5f4fdcdc9ef9266d31fa	2021-09-27 12:44:26.417144+00	1247
ae084298fa13e68fa45d0fd7f5049a13c647b642	2021-09-27 12:44:36.682224+00	1248
93a132041a1ce88ee65f743a863aef44a0570fc3	2021-09-27 12:44:38.40651+00	1249
fc947f11940b17103290aef27627928409f990d6	2021-09-27 12:44:55.432645+00	1250
5e650437db29a3c3102ac6afda20612a07536b8c	2021-09-27 12:44:55.944742+00	1251
f044ca1a4b977e368e77baccaf303b322007a73f	2021-09-27 12:45:01.73051+00	1252
84a11a641e8f46b93e400f5db0c8a9bcd652506e	2021-09-27 12:45:01.99158+00	1253
f0162bc73ed89451bc0d8a2e9a48f3698f82ba65	2021-09-27 12:45:07.331459+00	1254
aa3276e9d5f227b7df6f4b0ad5dd5c5a25b6b8d0	2021-09-27 12:45:07.578262+00	1255
5ee6c315eccca843dc9ae0862fec121076d93f24	2021-09-27 12:45:13.022242+00	1256
fbe3efa9a24036ef1f4953f520b9c155b58e9c5e	2021-09-27 12:45:13.280289+00	1257
e67d740715dfc7ad667b908f4d68a51c8a611386	2021-09-27 12:45:19.041606+00	1258
ddcaac9126e2c99d6dd16896ae79fd65cfe21e19	2021-09-27 12:45:19.304444+00	1259
d2423af700259a31027339e089b063e5c0ea6092	2021-09-27 12:45:24.773138+00	1260
bec1f91d2d190dd4a6434c4ccba223ae2560f48a	2021-09-27 12:45:25.01984+00	1261
57afb3833ac16f95cb89d34a33da220716406ba2	2021-09-27 12:45:30.935046+00	1262
beb572fe74630cc546be0efccf9a4a78ea4b266a	2021-09-27 12:45:31.189996+00	1263
bf491c3ca1946049acb3386cf9e8779ac60f49ca	2021-09-27 12:45:36.572028+00	1264
473a8e7c28bf3682e66223cb5763fd4340855947	2021-09-27 12:45:36.827431+00	1265
29a849532f9908a45e449e7b763f39e227d13637	2021-09-27 12:45:42.567442+00	1266
51e6922beb4f87588669f6c3e8a4847a5bf3fd28	2021-09-27 12:45:42.819979+00	1267
b27f14dedc4ca6ef2673ba8f21ad33070f5df197	2021-09-27 12:45:48.252446+00	1268
5b98918232a46f89548fb5775dbdb99923ca1655	2021-09-27 12:45:48.528718+00	1269
d5dea1251cecf79ebc61075763085be8b7e4f134	2021-09-27 12:45:54.350142+00	1270
30a08871d288f4fc3f4f230e7a27cf8c7741bf1d	2021-09-27 12:45:54.604576+00	1271
52174b0a629ffe01742cec395258a4a34480f73b	2021-09-27 12:46:00.072551+00	1272
74c787342719292a2f0f4195711779b6c1a907a8	2021-09-27 12:46:00.336919+00	1273
b797e054a3b6d2a6c7bf70489688364cbebbfd9f	2021-09-27 12:46:06.123465+00	1274
cbdd58588d4163de975309b80d07032ab1409895	2021-09-27 12:46:06.37344+00	1275
10c8b0f98884fbcea6d651584bbd82ae8538a482	2021-09-27 12:46:11.827672+00	1276
3c4c40f8199793e671e5740160200dbb5d519cd6	2021-09-27 12:46:12.082413+00	1277
6f79f8810f0bf7c0cb00246aa4d1c4cf72ea8683	2021-09-27 12:46:17.866947+00	1278
25519052c4a4e72d6fec0b0a562308e1abbb45b8	2021-09-27 12:46:18.124782+00	1279
2787be613955bff5627d59e0472e6abad2f948b3	2021-09-27 12:46:23.535095+00	1280
3355321243ff5fa16a1b7cd336241340a957db05	2021-09-27 12:46:23.763546+00	1281
9b148e721070ab65fa45c9c94824a615e0a3a838	2021-09-27 12:46:29.628657+00	1282
45663cb5419d27928f3cfc4f737de9e57c3c73c0	2021-09-27 12:46:29.904182+00	1283
c9b0d3335fb1dd2a972a1069561769c9dc1b92e0	2021-09-27 12:46:35.378419+00	1284
ece6ec2211d1505ccf693a7f4311c73fdb8d8240	2021-09-27 12:46:35.643688+00	1285
a6c32c510ec95a061312c3ba8f951f52eea198cd	2021-09-27 12:46:41.167965+00	1286
2adf30122486f4f993cfe835dcfa5284c586b111	2021-09-27 12:46:41.425873+00	1287
d7ea10480f6938fa9d69b3bcee794ae3e00e7783	2021-09-27 12:46:47.211272+00	1288
ffc6023e20a9cb4c583d3e6a6ded0264fe47d696	2021-09-27 12:46:47.495622+00	1289
d5d45bb8208e5013371350c2f6f680b70b11b98a	2021-09-27 12:46:52.833525+00	1290
7a41c12de533dcc988897d29dad6448c28532890	2021-09-27 12:46:53.115321+00	1291
55c6dbe17becca682023950361a93ed17e5bf15e	2021-09-27 12:46:58.899054+00	1292
dd3d0fbef295fdc5d1c2903baf19fc3515272f11	2021-09-27 12:46:59.178208+00	1293
5c67e03c2aeb6b768d7c5b9d3a686e6e18db007d	2021-09-27 12:47:04.630512+00	1294
4dd844fb2086b885e7eb9a6a200efcfa1a3b74ed	2021-09-27 12:47:04.899705+00	1295
1d133144cd511145034f808ceeedc7b2e9eb7308	2021-09-27 12:47:10.708528+00	1296
8b73001ee7dd4ae1d0b74a034e283433027af626	2021-09-27 12:47:10.976061+00	1297
8d66b241d3be59794713f02f05ca85ac64328c32	2021-09-27 12:47:16.393484+00	1298
426ec552e3a2aeacf5146627409d70c4878d8f87	2021-09-27 12:47:16.628729+00	1299
6120f7e4f60b715b86ad068666225be0385f4d08	2021-09-27 12:47:22.447393+00	1300
275ec30a90abbc8a364bb81c236f8eebccedb5b6	2021-09-27 12:47:22.714104+00	1301
985ae095e75dfa47225daa2a4c7478053a901ec5	2021-09-27 12:47:28.153235+00	1302
a4c5d5b250fea8a8513e791cdb4111a5e09319da	2021-09-27 12:47:28.425191+00	1303
820f4f0c43119842eb98bcce5f6fceb9974ec7a1	2021-09-27 12:47:34.134759+00	1304
43b78d8d9c5256513407573025c8785ebf330352	2021-09-27 12:47:34.409793+00	1305
c33dbaee05f6812bf18c20451078f0a32fb5fb8f	2021-09-27 12:47:40.212153+00	1306
5da4e34db53dd05f1adcaab496990c92565e3dbf	2021-09-27 12:47:40.457586+00	1307
088c1861a4619b7aba1af3ae4073c2afac2b9746	2021-09-27 12:47:46.057668+00	1308
df2a6683ecfb35af37cd0c82d24d5913df14322b	2021-09-27 12:47:46.323007+00	1309
e8c2b00dabd3148697f3081e9aa29b206208d2a6	2021-09-27 12:47:52.091186+00	1310
c1a5f6eef1141cce60c146a19c7da35f77a897f6	2021-09-27 12:47:52.332627+00	1311
5074f542fcead4d9061a04dde3ddade8aba01491	2021-09-27 12:47:57.767608+00	1312
97a8504b1e0f848db3d701b75ac84a0d6d955dd7	2021-09-27 12:47:58.028489+00	1313
61aee9de3803c8725cb7482efa8ccd7033ad5e17	2021-09-27 12:48:03.834011+00	1314
a54b02ffcbd802067b67b94c57421021d5eabb9f	2021-09-27 12:48:04.118128+00	1315
107adf85f5a1c534da36624b8926b6b68a832266	2021-09-27 12:48:09.509121+00	1316
80f73ba9852111c7993f42f44b8955e88724c6a4	2021-09-27 12:48:09.81854+00	1317
e59810a364f2fe4406648f05c2abcc31d397c77d	2021-09-27 12:48:15.69419+00	1318
cb00e863bf98c680d8fa59a7cfbfb01e2d0c9c44	2021-09-27 12:48:15.959278+00	1319
ac0c77aa3ccfca8adae4b8f448ee5cec6d39dc1e	2021-09-27 12:48:21.657274+00	1320
3ea60e954cdb63ba8887cd37014f9c948a2c5b54	2021-09-27 12:48:21.908578+00	1321
0872c6c8dd7fa838ad58257510a5bff59ffb5144	2021-09-27 12:48:27.674001+00	1322
5e8d822e0ae1a5eb8b73c24ee9d1d24f87c85d4a	2021-09-27 12:48:27.928537+00	1323
8dd3c80b123e3b3e4e0759a9f2cfd3f48bda2468	2021-09-27 12:48:33.398435+00	1324
b347e4b88b5b868bc22be61cdde0ad187ddf0c85	2021-09-27 12:48:33.682843+00	1325
cab9101aaacdb8ef0f729745ba61a3af0bd2db08	2021-09-27 12:48:39.588775+00	1326
c3ec8319a70886ff0432bbe9e0457545d4cb8d3a	2021-09-27 12:48:39.854448+00	1327
6e4c232e313ba38dac529fcf24c997776d2e0641	2021-09-27 12:48:45.253142+00	1328
cc2e0922a1ab5e5768d5c199c36486da119da7f0	2021-09-27 12:48:45.496658+00	1329
a62024c966ce9f3dfc39dd3f98cc98a791a6c54a	2021-09-27 12:48:51.309753+00	1330
5fe3af158790cb6b6d4f19a17bc2dd1104b110e3	2021-09-27 12:48:51.573954+00	1331
39e1ebfad2fc414b83f530d1995a92789579bc38	2021-09-27 12:48:57.062105+00	1332
37a19574861964ce642e2ed5f8b357119f564939	2021-09-27 12:48:57.308152+00	1333
1ecea53976741572240f0e843a8baf727028862e	2021-09-27 12:49:03.127154+00	1334
9ce376b04c23e9f64e15b4bdbefc3648e56f6488	2021-09-27 12:49:03.37145+00	1335
3936bfe6e985d385766d99f8af855f13fb66e70b	2021-09-27 12:49:08.811826+00	1336
dddbc9bc3ad3df2b4928594a16b5ed082068f458	2021-09-27 12:49:09.150594+00	1337
cd2e7cd20144f9ae637b16b6286abf2595ecc7ad	2021-09-27 12:49:14.816629+00	1338
93b7ddf6a143666f8f8d3150f70199b66ddada21	2021-09-27 12:49:15.068401+00	1339
672867abdbcc049ecc0f996ad43790f6dba3f9a5	2021-09-27 12:49:20.549003+00	1340
0c1b6890b8d9fb85815b092f601eb47bcf427cec	2021-09-27 12:49:20.80472+00	1341
a789c93347b8bd5372818c75937cb3edf38d8889	2021-09-27 12:49:26.588766+00	1342
57b8653a2d5c6b5ca40d4c7e4df3bf62ca58fa33	2021-09-27 12:49:26.843112+00	1343
5709cbb42c28391039ab45e4084068af005b60bc	2021-09-27 12:49:32.289217+00	1344
fd349f6f0023932ebdbb02c5c87ba0d6ab3f125c	2021-09-27 12:49:32.549373+00	1345
ab2f1090edd6a8da914543179613ac7085fd1919	2021-09-27 12:49:38.290426+00	1346
df236a8cba6f7d60af064e1adb3a457f5d96dce7	2021-09-27 12:49:38.554544+00	1347
0f063726aae7d7d04edc966f03426f6dc567128c	2021-09-27 12:49:44.024799+00	1348
26f93db943acefe2922011d6f6b6bcf4b9c4085d	2021-09-27 12:49:44.279715+00	1349
ed27617b8232d87ee2ac6966d78f9f73e77a659f	2021-09-27 12:49:50.048597+00	1350
39e14a176b3da759831ed9ac9f33cbc439925b2a	2021-09-27 12:49:50.288673+00	1351
8c4816a01d9e4613ed2431d30684060c7a7275e9	2021-09-27 12:49:55.801775+00	1352
e6f5e1a8bad5c1224ba1ad2cb71a0dcbd0c04f2c	2021-09-27 12:49:56.043955+00	1353
55ecaa8ac22c1c4bcb3e8ea76a19612a120016c4	2021-09-27 12:50:01.90429+00	1354
dce367e3461263f08cdb2e91842e8cdb694d7084	2021-09-27 12:50:02.189631+00	1355
52f3c6e696fb2163561863ea138872816f488bb4	2021-09-27 12:50:07.633345+00	1356
ed6c31a3d74064b17a064ae93807176cf7810b29	2021-09-27 12:50:07.888632+00	1357
4a49f3f153153d715e7d4f7bc3a7ca01c6933fe5	2021-09-27 12:50:13.946944+00	1358
b2e082e63368c16ddd2fca9ed5ad47fe02dd9256	2021-09-27 12:50:14.236726+00	1359
fad9266dbf269d765eb6384606efe6c2b3d0f0dc	2021-09-27 12:50:19.813596+00	1360
d62aac4a9114e9e8512a6ee0599a885944ce0034	2021-09-27 12:50:20.062021+00	1361
96b7b812857c61ac229e7a2fe012ee93baebef5f	2021-09-27 12:50:25.882757+00	1362
8bc61ff0bfa8a74ea4eb21baa9fae4b86ddf80fb	2021-09-27 12:50:26.107679+00	1363
7ba2bc9ab507eee86814ea38e17626cecd179f43	2021-09-27 12:50:31.67369+00	1364
3df41a7c8073d147057a1c35dccab64a3b11f499	2021-09-27 12:50:31.943282+00	1365
f476823ff85fa9adbf6f6e7ae70f70fc42e7f2b1	2021-09-27 12:50:37.708464+00	1366
de3b89437a084f8ec54a3db4173cd725215f48ee	2021-09-27 12:50:37.96661+00	1367
edc6782452d9a5ec7fa9495fd85bc051abd083d9	2021-09-27 12:50:43.512806+00	1368
b47f7339d978362740aa9877b2a55926e08cbd26	2021-09-27 12:50:43.783784+00	1369
4859862121538181dfb372e5df55872c51c677da	2021-09-27 12:50:49.470821+00	1370
b792376afcc991c1ea8082596d6b387bd141c8a4	2021-09-27 12:50:49.734577+00	1371
9e14e28fdf68db023b56ab3d5b3024c274c3c856	2021-09-27 12:50:55.229038+00	1372
0110711741e0efcebda99e85c03218e4c6b14ed8	2021-09-27 12:50:55.503681+00	1373
f07ae0e3fec391de5aa70a8556d9b0ef6ec8fd2a	2021-09-27 12:51:01.397093+00	1374
7dd851ef6655ca7ef8d294a0ed2821f8f547580e	2021-09-27 12:51:01.628565+00	1375
5977720a67190f5dabc6f0bd3efd9ec5f3a57e0b	2021-09-27 12:51:07.090593+00	1376
3009489acf995d43b23e2630ac4373098b774ae1	2021-09-27 12:51:07.343309+00	1377
099fc3c3705b075d7e228f1c21a0e7e2e51b9076	2021-09-27 12:51:12.779915+00	1378
bb9eb5ce2ca1e4d7ab086f886eeb6d6d21021a12	2021-09-27 12:51:13.036888+00	1379
2aef14c103ded8e96160d9d4faad9b927f816bfe	2021-09-27 12:51:19.03743+00	1380
281fdb0378d031ad0a2ae5ce74a85398cfd4e30f	2021-09-27 12:51:19.314846+00	1381
323dce86c23d944c091d554eda958e7572c500f4	2021-09-27 12:51:25.260205+00	1382
ae40dc4ae49a9338bbea37fcd43b9ca6d6ebe367	2021-09-27 12:51:25.525255+00	1383
517af604a33ca9c0d2f51e61b4d553ef7bf81621	2021-09-27 12:51:31.409278+00	1384
34134e69758a5deb11a462ddaa4a5b4d14283014	2021-09-27 12:51:31.684751+00	1385
ce9af103901f191937acbdd014e6663b2831cee4	2021-09-27 12:51:37.409031+00	1386
830089495d81b4c58e4ee2c7964c68e80474905f	2021-09-27 12:51:37.668919+00	1387
76e4b0d0b7a68fc77f5db0457b6f558ee0f1f02e	2021-09-27 12:51:43.934915+00	1388
f11346be3f1f86e86be4694458d84be7dc4afbe8	2021-09-27 12:51:44.169515+00	1389
6b444ef5869c696087c1d77e032fa58e540960ca	2021-09-27 12:51:49.707354+00	1390
848dc2a0f1441e5aa95df83cdc9e71cc3077b3e3	2021-09-27 12:51:50.047183+00	1391
f274337eb907a650dd6d54582ab81b4dc614f686	2021-09-27 12:51:55.93097+00	1392
796dac022083a50d831f6476a5439e789a1a8ed6	2021-09-27 12:51:56.243489+00	1393
dba7acc0d5586546ec3bf4a1943136c88b255209	2021-09-27 12:52:02.184266+00	1394
53c9d870e68caf4e7f6b88da5952b458abdf4f09	2021-09-27 12:52:02.460503+00	1395
61364f5bbf8ad82fe76aa2df7f0081588e28c9a4	2021-09-27 12:52:08.53985+00	1396
6eb2428467cd10bda92fddd70ead719e7b587a72	2021-09-27 12:52:08.839607+00	1397
54b11bae3d68fa40183c6ab609791a4b2054f9f9	2021-09-27 12:52:14.310839+00	1398
2e0a096305c74ee0ef5772c8b7d27052f534319b	2021-09-27 12:52:14.563248+00	1399
fb144e9e05ebdb3535359f3813afa1f85d097b29	2021-09-27 12:52:20.423935+00	1400
516c9291bd52c7542a42f291638b3b0be882afd4	2021-09-27 12:52:20.679668+00	1401
286f15f3b04709c1640c2f24de35c2391a86f412	2021-09-27 12:52:26.15108+00	1402
7f39105bbba89dc81062d159fc1422cb73de4b87	2021-09-27 12:52:26.405282+00	1403
65eb0630e7c4e5af69f76c25b58e5b8db463c75f	2021-09-27 12:52:32.153977+00	1404
ccdb222a683f5d6e0a7ed67b6ee817078314c72f	2021-09-27 12:52:32.39752+00	1405
9a916fa1b6d0c387a0e9945a7e4052b68013a9a9	2021-09-27 12:52:37.938104+00	1406
394f933d885d393243c53a4b9d849fcf5407722c	2021-09-27 12:52:38.207182+00	1407
77811e7be75b3531966ad4a62cc1d5f7a5e6b8f8	2021-09-27 12:52:44.078937+00	1408
0659f5ee90ed878ba2e1d0d91ad0718fddad0655	2021-09-27 12:52:44.324091+00	1409
33ee71d393719e5ee6360784fbe340884d072b4e	2021-09-27 12:52:49.811046+00	1410
e8d02fabb9df88a10ac6c52e117856344dcf23a7	2021-09-27 12:52:50.052913+00	1411
88a8024bfe1ce61bfbdc90b4838152efbc073012	2021-09-27 12:52:55.917862+00	1412
de4efb6c6fe86c41223d831c4455ce1f682b7634	2021-09-27 12:52:56.193975+00	1413
258d5971b2a48e041df33643b243f0aec0abc1a6	2021-09-27 12:53:01.644858+00	1414
d4d48198918f586c4f88845b6379061d7b9e84b9	2021-09-27 12:53:01.924952+00	1415
357cb23cc31930bf8d7dcfb6d60de4ba6fecf1f7	2021-09-27 12:53:07.730487+00	1416
9a4c8b3f3166d8e8825c853e950ca9f56d32d2a6	2021-09-27 12:53:08.008401+00	1417
e5e3ea7279389a352991173a4f18e796d4ee15ec	2021-09-27 12:53:13.448191+00	1418
875ef16ed080afca1674e4140d515d3a655b8e7e	2021-09-27 12:53:13.712475+00	1419
3ba440f83c984c1e95606ea67c92b9a0cb215488	2021-09-27 12:53:19.488675+00	1420
5a8e3384fcee1c082b27282c05f606d6ca65ce76	2021-09-27 12:53:19.753636+00	1421
961ad7cd2a03070385c1fd9f7db202ce22c34299	2021-09-27 12:53:25.209121+00	1422
558175f2ed3fdc9258136939317c61f01e97eb95	2021-09-27 12:53:25.468674+00	1423
34aa6d9a6bebe64b0e5e52e5381602fee90a8db4	2021-09-27 12:53:31.31509+00	1424
9c66c3626e49bbe0c583fb74ce4bea2dd2b7c595	2021-09-27 12:53:31.566909+00	1425
21c2ccbc242080030723b279434bc8967ba00cf4	2021-09-27 12:53:37.051407+00	1426
f03846aa3251a95dc74e916dcd8e7a61ed7cc872	2021-09-27 12:53:37.326158+00	1427
7bcd645dd8c38f0dd2c706df261e9ea258e64385	2021-09-27 12:53:43.726745+00	1428
eabf5983cd8d2092bff79466c4ff772f27f8930b	2021-09-27 12:53:43.99419+00	1429
12fc75e7a6ed31160f3a3b26147713b1b1975ec5	2021-09-27 12:53:49.744358+00	1430
8ec83fe0405ecfc5eb3c42deab420c207e26f5fa	2021-09-27 12:53:49.992958+00	1431
70891b25cc728df132a720de6ff2a0cb22936379	2021-09-27 12:53:55.778665+00	1432
add412e1c7a8022a48f6a4b544887389ed36c297	2021-09-27 12:53:56.123037+00	1433
7ba063822ba0a2ddad40af873b827639eaee15c4	2021-09-27 12:54:02.026191+00	1434
85a7cf0173e79b29389b5a09f0c6442c5524467a	2021-09-27 12:54:02.265438+00	1435
9b5c16e8e58b506fe4695c388d2c156a17bf2766	2021-09-27 12:54:08.08965+00	1436
f323f21a50b5a374b1c5f0553122a4cec0f3d1ce	2021-09-27 12:54:08.393469+00	1437
cfa434a78bf8c30e0ffee577af5b3917caf571c1	2021-09-27 12:54:14.20312+00	1438
558d8485910c0ad28e024c2463bcb8ee03046ead	2021-09-27 12:54:14.457641+00	1439
814e69ca5a5e69ed96d622ba4cd54550cfd0df9e	2021-09-27 12:54:20.20093+00	1440
4ad7ff8571748a6f2868d096e1d980fcb2794ebe	2021-09-27 12:54:20.444171+00	1441
a7c7a2c84bc8419a7db4307927662ee86b405473	2021-09-27 12:54:26.378272+00	1442
0bacfeca80d809e64bd6cd39a9868b37e8f4ff66	2021-09-27 12:54:26.612706+00	1443
06a5bfd642a21b0f1f48f8febeeab7e269d45e67	2021-09-27 12:54:32.542258+00	1444
a67a8d6e3367af5d71c46eec8d54a6d89a9a1b85	2021-09-27 12:54:32.868157+00	1445
809bf7e3332d7e4a76a4e3b4c551b888cba7f1d6	2021-09-27 12:54:38.772724+00	1446
b85c3863fcd9b19e4a172aee13c292e192bf57f4	2021-09-27 12:54:39.018284+00	1447
cac19710575a142aa0a7d43ce2241e8bc1553c28	2021-09-27 12:54:45.038624+00	1448
08583340f8175293824170756e797869e12b379e	2021-09-27 12:54:45.391358+00	1449
2fec26cbb285537597ab9586f581d4c39820228d	2021-09-27 12:54:51.130707+00	1450
4336a011b89c85cd9f58b6b8d35581106aac02e3	2021-09-27 12:54:51.398544+00	1451
a351db3a1ee8d1fdf2a87ede25ffabf9b062e927	2021-09-27 12:54:57.559959+00	1452
1ef7ad07f5a98bd0d2aa67f26f6f0f27ff90bae9	2021-09-27 12:54:57.816072+00	1453
4538e102b96545b7592c82dfe2fd26b9faa58ef7	2021-09-27 12:55:03.586084+00	1454
8488c11f92e24367280bac538fab0f072c0ce08b	2021-09-27 12:55:03.833746+00	1455
4eb266d15837ed68690a43e06bee980e0acdd2fb	2021-09-27 12:55:10.098336+00	1456
7ba08c545674fd41bb0bc3c85080ac8655ff9268	2021-09-27 12:55:10.456735+00	1457
eb5662c808dfdcff58c6def4fa5f5db00afcc3b2	2021-09-27 12:55:16.14856+00	1458
e0d0f83b957140e91c36097c34ac4ca7fe1b0bb8	2021-09-27 12:55:16.400781+00	1459
01e1767057fee52b09a4fcf1ab596119f784bad1	2021-09-27 12:55:22.383611+00	1460
a9fa821c4bcad9df99ed43a81d49105f6cb943ee	2021-09-27 12:55:22.743847+00	1461
de6da10298d514c2899fa30ef6f114690fe2b5c6	2021-09-27 12:55:28.502835+00	1462
66ac1f430c1514d7e1a6d916a249e395d63159b0	2021-09-27 12:55:28.749563+00	1463
e684001c7314a48c8c6fc16bb5deaa90b8bd5fb4	2021-09-27 12:55:35.12461+00	1464
5e43960fca472cb4deee3e79197d80b77ce9c609	2021-09-27 12:55:35.365355+00	1465
731a630056e46a0b3d49f2035b33416fe13410ff	2021-09-27 12:55:40.805456+00	1466
8abd619a507c12990d742d32023118914a95be56	2021-09-27 12:55:41.04664+00	1467
7bc9fe6ab5dc75959aacdb07b41d6ca0ed0dc801	2021-09-27 12:55:47.18154+00	1468
cac89d909b9b5e65bd61fec26522ca1184024a91	2021-09-27 12:55:47.438915+00	1469
ee9c302b72a270e11ee6d9b7407b88bc239ffc1f	2021-09-27 12:55:53.216513+00	1470
376c2e1a49bfda4ca0a81dc4ddddbe1a176b0b19	2021-09-27 12:55:53.45106+00	1471
3954d7609188ca636247e9948cbc07d7926b7cc2	2021-09-27 12:55:59.835745+00	1472
c68b5e1f08df2450b827db18c65dfbf8e4f66bcd	2021-09-27 12:56:00.103007+00	1473
697b2f03cbac2369c9863ae9a2000ffb27f7ec7a	2021-09-27 12:56:05.440399+00	1474
d5169c061ffb660aede9d0dabde7e5f8238212ae	2021-09-27 12:56:05.69375+00	1475
7a6cece95be9512f88b219e06cc21d0d5b5f4c49	2021-09-27 12:56:12.112783+00	1476
113a9eea4f3cc92a79c832d4dd2d7e606a8e72b2	2021-09-27 12:56:12.358896+00	1477
05faa171d93406c89709e2c1a393af09f58c671c	2021-09-27 12:56:18.291248+00	1478
a435b2e448523167404c974f2219a1d9e9fd0472	2021-09-27 12:56:18.571423+00	1479
2d173fa8e619dd03eef04e36aab27527d39f75ec	2021-09-27 12:56:24.530638+00	1480
ff9a599e3f08f989f20e66f3d1a6a27639ef097c	2021-09-27 12:56:24.788284+00	1481
83d1ebe7e71dc587ad138e5853bc4fb692b1c7bf	2021-09-27 12:56:30.498618+00	1482
3f4f8bdebc94c04f40a1186d447d3720ad81bc37	2021-09-27 12:56:30.777586+00	1483
91fc5e61ac9703207207f7c5df1930fc4c7dc62f	2021-09-27 12:56:36.675725+00	1484
8117123f6e924152f903cc5caa5eba4b192a3f33	2021-09-27 12:56:36.907329+00	1485
821f1dc14d09e893c11f8458d1b465855eed4cbe	2021-09-27 12:56:42.621411+00	1486
a8f626a751f9e3291a56fa6e8a0d7e886917b61c	2021-09-27 12:56:42.897791+00	1487
8460823ae9f91a24c07ca4619c44c8df52434fa6	2021-09-27 12:56:48.487401+00	1488
38a8bb039a48c18049d408950d487cd501157aff	2021-09-27 12:56:48.753357+00	1489
daa2734b52fe546e4a7b430dc7bc93aa931f4db9	2021-09-27 12:56:54.472371+00	1490
734da99861bc96b89a9a4275def7e08ab850b508	2021-09-27 12:56:54.717269+00	1491
881cbd3608d1835881d1d2ebf980169912b75bff	2021-09-27 12:57:00.454517+00	1492
4c850fc7bdf966398621b668306a528dd42f8c3e	2021-09-27 12:57:00.70789+00	1493
512bad3178e9a222bb19fe0ccc27bb46d8b9c393	2021-09-27 12:57:06.481429+00	1494
3a63d358fa5385dbc512fb3b299bf52e680207e1	2021-09-27 12:57:06.744398+00	1495
8c9c461fd60c1def1f9173ab9e923d1fda60eaa3	2021-09-27 12:57:12.212118+00	1496
817991577337cf8af3faba97fbc17e518e3a0135	2021-09-27 12:57:12.47703+00	1497
9f32c7d120032231f959669f03dbed8bb4eff50a	2021-09-27 12:57:18.460611+00	1498
edc3cba846aade6bfd081a62329dc6fd486ab3dd	2021-09-27 12:57:18.717311+00	1499
8ad6fb34314eb458433c00fa9bac3da643af0a34	2021-09-27 12:57:24.660507+00	1500
681120db1df73889056267b1747f3109a7032030	2021-09-27 12:57:24.984565+00	1501
99debf81f27af0ed6e54fdd78947bbedf570225d	2021-09-27 12:57:30.848741+00	1502
a968ce2b3875564652d1359f194b4811df8ca65c	2021-09-27 12:57:31.123618+00	1503
2b4b8fcc0cd911f3db71acee51a0c7dbb4dd1eda	2021-09-27 12:57:36.820232+00	1504
75520c93c3e9168f640da72742987d096e48605c	2021-09-27 12:57:37.133011+00	1505
df419c9e1ffd8d79ef3a6dce87d950c766a1f5e5	2021-09-27 12:57:42.961118+00	1506
6f5511f01cc47cf2271375a3dacb175b986f01b9	2021-09-27 12:57:43.218089+00	1507
70d2102e8bf49452566336f21d6a5f9ae027172b	2021-09-27 12:57:48.707674+00	1508
35b7ad4055f59fb0643832038bc16dd0168a6d46	2021-09-27 12:57:50.233964+00	1509
e3023fb650f516520e885cdc2c2074f6d51d0590	2021-09-27 12:57:54.8684+00	1510
1b6322f9b32f10fe2ad7ecbc2ed1b9bfe2dcb4f3	2021-09-27 12:57:55.134191+00	1511
70b443e5f78cdc4b15526c176a832bcc733cfbcd	2021-09-27 12:58:00.75234+00	1512
4ead67ee8a7340a89a918d69222cdab2590335e6	2021-09-27 12:58:01.000687+00	1513
c3bcdc4c3c9bade6379398dc5df775a018399dbb	2021-09-27 12:58:06.675825+00	1514
8d6e7de5e46894611b7e935231ee5a161b85986d	2021-09-27 12:58:06.921467+00	1515
6bac363379b77b547d271d51b03311e1d09513d5	2021-09-27 12:58:12.867524+00	1516
062c9c20015841cf0c53a402d4b3e440edaff158	2021-09-27 12:58:13.108414+00	1517
eb6375b3f926f9782d1810461eaccf29199d5286	2021-09-27 12:58:18.748031+00	1518
31c4ad7f4c64f98391adb4bba64d28dc7a9af201	2021-09-27 12:58:18.990624+00	1519
d68a67f9e21ad08af24d9d714f38b7992361b1f2	2021-09-27 12:58:24.783641+00	1520
501bf0e928125627d2967fc79bece50c05c947e0	2021-09-27 12:58:25.119193+00	1521
f62bc016e4b9577bec7a6527dc64fdaaf5255002	2021-09-27 12:58:30.911989+00	1522
2ec68f32a7421dc64e0c5f77efc927b61008a475	2021-09-27 12:58:31.157497+00	1523
df653990daf379a8b5b62ec0ad00b4aa07f7b94c	2021-09-27 12:58:36.571919+00	1524
a6f11dd993592f4e4599782aa5aad75f64ca5554	2021-09-27 12:58:36.82426+00	1525
79a3cd906fb25a4a46763417bda92190bc357eb1	2021-09-27 12:58:42.559559+00	1526
026dc0d499389034cc3cbc500b77a49acb472473	2021-09-27 12:58:42.833777+00	1527
8786ed31a6ddfd654250ab2089250bc2e04c0e5d	2021-09-27 12:58:48.266321+00	1528
096770f51310d7f7fa4a35e5a18795253db86ac9	2021-09-27 12:58:48.512849+00	1529
a133e43e056995d11d5b1231a55bbd087ba0a275	2021-09-27 12:58:54.222755+00	1530
a8341baa22bb6daef903804fef44a57e2daa9b6a	2021-09-27 12:58:54.484579+00	1531
61098e2218cb4db8e8fa3fba6dce2146107e5e66	2021-09-27 12:58:59.876893+00	1532
bb7cd011eab97cbaf9fcbf30db1c6a5496508d05	2021-09-27 12:59:00.163195+00	1533
e54435ff6d0ceb1fb28d7070f33446a2293c03c1	2021-09-27 12:59:06.25266+00	1534
4c8efd9a06dc56f848be3c4820461f7f3904c95a	2021-09-27 12:59:06.488039+00	1535
2f7f97fd2579dc2df33cb2741b8ba421da3124d5	2021-09-27 12:59:11.979313+00	1536
ce619a6e493c536fd20ec900e45fb23fc4b55f23	2021-09-27 12:59:12.237765+00	1537
43be651b347a61441f51541997ce526a68ecc13a	2021-09-27 12:59:18.011519+00	1538
2ee1b3b4984299c1e9419c0ce9660530b65456e2	2021-09-27 12:59:18.25709+00	1539
460d8a53b0da4ec3009975800eae9e53d5098a96	2021-09-27 12:59:23.666524+00	1540
2ccaa2317c730331ad6c66e221dc6cf539b51f2d	2021-09-27 12:59:23.926625+00	1541
e66b34194a8805f8111963c35294f2104ab9d2bf	2021-09-27 12:59:29.671244+00	1542
fe93cdc60738d58aaa31741875d4caffca570ade	2021-09-27 12:59:29.918222+00	1543
3f91729d845bc65d0005ff9e6c39f9112a02810f	2021-09-27 12:59:35.304413+00	1544
b54cd7ae20b223af79bcef168efade4d3b944a45	2021-09-27 12:59:35.549356+00	1545
2d40ee4bafc42d57a162f38f6fdb876a8f458c77	2021-09-27 12:59:41.312161+00	1546
aee9bbab51036a44abbd8e64b12b2db2a46b2d64	2021-09-27 12:59:41.578364+00	1547
d9dba4d28ea1b70975052526b9117589a073abf7	2021-09-27 12:59:46.98842+00	1548
181a2ae66137c0ee95e828bc317e329fba7b3a90	2021-09-27 12:59:47.264299+00	1549
f3758ae748eb511a0ff81309e1e721d27f44daac	2021-09-27 12:59:52.983697+00	1550
3a12c2bb16e87b8d77bdc4bdd77b641d84e7503a	2021-09-27 12:59:53.228558+00	1551
ef18ca8d8aa001c5165adfbd9c3f8f1a7209fcd4	2021-09-27 12:59:58.890399+00	1552
bd99f38060ce64adeb7a7f18d6e8780fe6b98997	2021-09-27 12:59:59.154664+00	1553
60de9a622bae4a0f1780357be8cd5419737a0b0d	2021-09-27 13:00:04.856692+00	1554
9852a27cd91dcba9f2f51ef4eb99e42e24f681b0	2021-09-27 13:00:05.120107+00	1555
8d8e4f547b1f159ac1b3a7b0f9e9a53ef9799bf9	2021-09-27 13:00:10.529287+00	1556
96cbeddab12021689b14cf9e7b1276ec09ca2b27	2021-09-27 13:00:10.768181+00	1557
3a357b1725879a2aaefd3b2b7836dff11b8b8501	2021-09-27 13:00:16.581751+00	1558
c3384dd8e7a765b7e872bc3bd1b9f8a425684d81	2021-09-27 13:00:16.817413+00	1559
11b5766fc017b703fb2683cfdaee292ac6672b7a	2021-09-27 13:00:22.219668+00	1560
dce2ab661be6a2d86ea03e3b838e168f890d547d	2021-09-27 13:00:22.482703+00	1561
65d57d00a71b79c1454ef408ca25e8ba274f6296	2021-09-27 13:00:28.193855+00	1562
ece63c9f57b309d657e27c113b0f3d6a739a083e	2021-09-27 13:00:28.438761+00	1563
18cf44665ef324eefb02a7097e332f9395d61640	2021-09-27 13:00:33.821912+00	1564
87b16a3920d5c9d0a603d7a2339a74aeb3cb0ae1	2021-09-27 13:00:34.103932+00	1565
09187e7a1cfeb3550513fe4783acc65e913d012d	2021-09-27 13:00:39.883278+00	1566
cb270d57205f66296a3893c7c1389841110f48c4	2021-09-27 13:00:40.143411+00	1567
4f61a8a3fa7354e17a033bcaa539bb3a97a33aec	2021-09-27 13:00:45.56638+00	1568
aae32aa51e297acd242c3b50f83c68f6b8507a53	2021-09-27 13:00:45.834921+00	1569
1fc7401ec454cbafbcd4dd6d792e76bf7f98823c	2021-09-27 13:00:51.630709+00	1570
5362d9c27ee66bb709cf56d04214bcc64aeedbbd	2021-09-27 13:00:51.897808+00	1571
f5023903e4a5c457febaf5d439a9c71727e8211c	2021-09-27 13:00:57.269867+00	1572
449bb47455a6e280ae73e7f94d6d18dbd0caf56f	2021-09-27 13:00:57.524546+00	1573
01f4e256bd3cd2a827883fbb2b955ffbe74401b6	2021-09-27 13:01:03.203585+00	1574
70375d5d386968768e69789510fb6a4ec99179de	2021-09-27 13:01:03.463646+00	1575
4f12233c219d1f93794b85fe9ebb5772a1fb6556	2021-09-27 13:01:08.860749+00	1576
643ff6d5e3b7979f9e3929952a9c6d2312156f8c	2021-09-27 13:01:09.150831+00	1577
69ecde6c77b2d01d8c84c44d0415a8c9ce2af191	2021-09-27 13:01:14.759045+00	1578
3981ac8918b99b1b55a878fdf3ac5aa4f06f8906	2021-09-27 13:01:15.030046+00	1579
0e7e3a36abd70bb7cf92a8e9e605546e37a4cbd9	2021-09-27 13:01:20.460937+00	1580
6a933d506f4ba6b91e72534271b984128fb4a323	2021-09-27 13:01:20.743999+00	1581
4910fe78c2a641af4cf935dc6496d3290b1b3537	2021-09-27 13:01:26.461968+00	1582
277630c588979117b81adf793ea02ef3235ef3a9	2021-09-27 13:01:26.709323+00	1583
27b64248210e156c7b500dcef054b08649780685	2021-09-27 13:01:32.193981+00	1584
42c499f59e7032be6e16cf921e13a1b3c7dde75f	2021-09-27 13:01:32.455016+00	1585
fffb44d1acaeff9db85e6321b9113c0600246537	2021-09-27 13:01:38.259069+00	1586
4c6b72ea3441f7a5e544a710f10701f67687f38b	2021-09-27 13:01:38.523237+00	1587
58f212928b939b73e962e408121ab5adcbf56a4e	2021-09-27 13:01:43.93961+00	1588
4808343c755a3b5fe02d95fbdf644f2d60d04c5e	2021-09-27 13:01:44.215237+00	1589
3de07c7cf3e2e8ef3007dfe4a502e916950c73ba	2021-09-27 13:01:50.018764+00	1590
08abd0bd9488c6f513647242e18dd3d6f2b1b2b9	2021-09-27 13:01:50.26974+00	1591
f83b2460625e8d6e260e364b787873e57139eabf	2021-09-27 13:01:55.70891+00	1592
22cc56ddba7ac21b71cbb793321f0f7b4e98fe4a	2021-09-27 13:01:55.965276+00	1593
7c1a5339722d7bae658c7f8d2a0481391f927c98	2021-09-27 13:02:01.767809+00	1594
6b8aabbc47abaaa2f89cdd9805ab2dd78f2fa91a	2021-09-27 13:02:02.023621+00	1595
4739e6a80303cb41098662aecf2af099bf324055	2021-09-27 13:02:07.418091+00	1596
8ca107abc2a5cf11fd6bf7ff6957f6d1c068d619	2021-09-27 13:02:07.673881+00	1597
5a470be3bff19eef6385ab575f4c5756b5372baf	2021-09-27 13:02:13.442714+00	1598
73e3326357fe6180dd7341b2251607a8979b4803	2021-09-27 13:02:13.698721+00	1599
4f994d442241dc72f527bb5acd4574797b1af858	2021-09-27 13:02:19.051488+00	1600
67bb0abcd886eed6014a46677cd8bdf98dff267b	2021-09-27 13:02:19.285209+00	1601
dbd122fcb21dacc2c775fdf7252cf66aa0d5802e	2021-09-27 13:02:25.085825+00	1602
72c9bd400346c1a745aeec25797458ec4412c098	2021-09-27 13:02:25.339085+00	1603
13f2a9a15e0da31a679f7b69897818874d8a136d	2021-09-27 13:02:30.768883+00	1604
0b45b0dd76d935c0023278d86d253a3e7982c062	2021-09-27 13:02:31.051275+00	1605
af5a53b99ac11dc53bc3b4433289a0df109378f2	2021-09-27 13:02:36.798348+00	1606
ad66e22b9a7ed461091b7fe4e7ae9811893d64ee	2021-09-27 13:02:37.044672+00	1607
0a7df9f18df5adb1a3b1139e615b9d065066b84c	2021-09-27 13:02:42.581979+00	1608
5b7e813f20d8a595350d6b6a61ed0a43edcc9cbf	2021-09-27 13:02:42.83457+00	1609
2d4a982471183e9f1c63097eec78f6d340a8dbd3	2021-09-27 13:02:48.588948+00	1610
e8f373977ba6c63f9329871ee339ecbcabed7463	2021-09-27 13:02:48.84841+00	1611
04540667a4abbfad6faf026db93d0392c06e5a14	2021-09-27 13:02:54.203413+00	1612
58b5ace630eb420292ec6bd5645b8fbd8c4023f5	2021-09-27 13:02:54.458457+00	1613
a66163143fde70bf578bda24641cb979a9009bc8	2021-09-27 13:03:00.215647+00	1614
22482f2840c0e4d92d3635c4eba7d0440c29ee3d	2021-09-27 13:03:00.460667+00	1615
7e32f953c3b197ee7594140bb2211b38e68e5917	2021-09-27 13:03:06.293858+00	1616
d794c91cf92b26a33831006b5f8f5faf5867d89c	2021-09-27 13:03:06.527537+00	1617
ae88b195fb24acff51fd6e61f9b117b341bbc23d	2021-09-27 13:03:12.283126+00	1618
bfbff128c746c25429ddff97b004e617fadc5a96	2021-09-27 13:03:12.51748+00	1619
a4b70d67233fd9a151ec560fe50d23bdd263c666	2021-09-27 13:03:17.878211+00	1620
74daf4f9fece74449d7ba0e60e3570e0aa77fb68	2021-09-27 13:03:18.128365+00	1621
f282c4e04f73d3793000535c86a8c4735c3d4e3e	2021-09-27 13:03:24.038348+00	1622
5145afedf67af2002c1c48e45925112f2eaa58d6	2021-09-27 13:03:24.293456+00	1623
dfde8b066ceff3074eb12e203318dde0bc579745	2021-09-27 13:03:29.702822+00	1624
ef39d60c18fd23b86cfa796c2bd9940820f5c9ca	2021-09-27 13:03:29.940762+00	1625
1b946355c609a0aebf60aace96d182b03f0cda64	2021-09-27 13:03:35.821007+00	1626
4ba769f59837cd138eb742d27f69ee5f4f7647e4	2021-09-27 13:03:36.084271+00	1627
556143da953aae1a04383d05676dc40e8607704a	2021-09-27 13:03:41.547239+00	1628
3a72963007be07ac6449d0f932dade110573f2e9	2021-09-27 13:03:41.80528+00	1629
ab50af042276c1b815850f873d8e7fd8dbd9164f	2021-09-27 13:03:47.46209+00	1630
02d425bab8f5f6b818f8f7abba5f2288d7e12542	2021-09-27 13:03:47.714665+00	1631
0aa1f05716e8dabb27b7de93619d8aa437ce948b	2021-09-27 13:03:53.098918+00	1632
5e6d337648e1cff5be0a8619df48abe3dbc72cd7	2021-09-27 13:03:53.356149+00	1633
edf1b5c45c96857695a9d5dfd1dba37145ac9988	2021-09-27 13:03:58.973071+00	1634
99be3c58f11a6994cca43f15bd3b0c44ff2d655b	2021-09-27 13:03:59.227861+00	1635
b10c4bbbb388538d486a9e99b9ad7b9f471edcc7	2021-09-27 13:04:04.621988+00	1636
e883905dccdba67c546a858039a7b9184cc57c6a	2021-09-27 13:04:04.867556+00	1637
dfbdcc778b97c601a34a15a64242b23958e316ba	2021-09-27 13:04:10.681427+00	1638
74e12a53222d08553991970575993896df359cea	2021-09-27 13:04:10.94383+00	1639
967b403d1e9ed7124d0448ab12f10e5e0f8dbca5	2021-09-27 13:04:16.341386+00	1640
263116c5964a0f4bac8b73fee2abcdc014220b9b	2021-09-27 13:04:16.604897+00	1641
d3286211dd9dbcd6c7a98b53430a796ffde6f6ac	2021-09-27 13:04:22.297663+00	1642
612e6cd4ebc1b315e63a27567e8851691b091e8c	2021-09-27 13:04:22.554795+00	1643
99465683dbab6d5aff939b7bb52bce25baedc29c	2021-09-27 13:04:27.91327+00	1644
cc0fae3681c73318fb03e75fa82949b9fe3994e9	2021-09-27 13:04:28.155778+00	1645
98025f65fb1dd89c2aecfacae01fc93aab7e9091	2021-09-27 13:04:33.837318+00	1646
d256699c58e7e202e424bd9fb837a72af2348cea	2021-09-27 13:04:34.10447+00	1647
b7da93b474a5d341d00fc0759b21078250d21111	2021-09-27 13:04:39.492893+00	1648
8774d0d0b0cedabfec11047d21551ca057c9ee36	2021-09-27 13:04:39.73876+00	1649
6c176dc0ae2c8b36794e1982fc8442a88f96c48f	2021-09-27 13:04:45.402148+00	1650
a6e7ab2541e5769db862b8e6201f0513122514c0	2021-09-27 13:04:45.637365+00	1651
5ba68580c8cbe92f0127e202a2525ce2bdf7e66c	2021-09-27 13:04:51.079124+00	1652
8ff56769f4a1d31ac866a16207de7667c7187957	2021-09-27 13:04:51.341861+00	1653
ab409bd78f1c30b8fe798b778f955dff80b419f1	2021-09-27 13:04:57.056891+00	1654
a56fb194b3b66f7536053beeba17a2629c0382ee	2021-09-27 13:04:57.313509+00	1655
90ca06f5357fbf10bd7064a2db0379d0b1f06343	2021-09-27 13:05:02.706118+00	1656
a2b68483b21d6067a2875b1e9e788a3902b184cf	2021-09-27 13:05:02.952496+00	1657
2cc2abc34d9634928a51e875c350c20e84721925	2021-09-27 13:05:08.742514+00	1658
95638957bd9658cb556e3c27f3d15bc049afcfc5	2021-09-27 13:05:09.012859+00	1659
d19340a5342ea38c07caca1d46f0d1133bd93fe6	2021-09-27 13:05:14.393553+00	1660
477544555e53594a2ca7d53c39408eda845b71d7	2021-09-27 13:05:14.65312+00	1661
5623ec722678154935a28082d227424a94334a5d	2021-09-27 13:05:20.331575+00	1662
14727f0a8d07dec62876cae7c1b01b8f0ff94982	2021-09-27 13:05:20.589646+00	1663
0567313b57eca76cf69402a1547cfe2fee797785	2021-09-27 13:05:26.055917+00	1664
67722772e9981e84ad8599aedac4e8ce60cdd847	2021-09-27 13:05:26.288957+00	1665
d17c3270f1ffb0ea970ceb71eb7f12218f6c5d80	2021-09-27 13:05:31.914803+00	1666
6a90c4f091b9df1a34a30053121da24e33019bdc	2021-09-27 13:05:32.19511+00	1667
d43918d116bf7a4d9128f7a88294a935c19be7bd	2021-09-27 13:05:37.569023+00	1668
b5be28ca8adafebf8f6e99aed31d913f9aff7034	2021-09-27 13:05:37.824093+00	1669
768cc9c63932f8dc17a697302ab5cb8623902180	2021-09-27 13:05:43.596713+00	1670
f357dd7586f97c8dc59b525c87bbe07c9fa7d300	2021-09-27 13:05:43.855139+00	1671
f845fc52288fc3dd3d0dcb3d0908db458a40abe1	2021-09-27 13:05:49.219583+00	1672
fd756d0da6416bbd7bc5045ab6edef7d9f49f5e9	2021-09-27 13:05:49.573093+00	1673
df54f51dd39fbf9bf93f0a7ce0da3774aa63efbf	2021-09-27 13:05:55.382027+00	1674
c628f7919cf5fb1f514faa5e11bcf8454d8c8e6f	2021-09-27 13:05:55.774633+00	1675
3dc6418cc18793acb83a1c61eca81e04a1b9ab8c	2021-09-27 13:06:01.058566+00	1676
e81bb23a96d1143c1897935fa597a90d70fda0e1	2021-09-27 13:06:01.314658+00	1677
cf63da684a224afe48db9393edb41c080f4b3c71	2021-09-27 13:06:07.024597+00	1678
b7a682ac4a11a86cf6cda53e0961cb4d4f9987e0	2021-09-27 13:06:07.283314+00	1679
8fc7a4bb3a4bb10dc27e44172ab1e176a77c724d	2021-09-27 13:06:12.636703+00	1680
edbf5b0e77d46291e648f075835fd257eae91080	2021-09-27 13:06:12.884229+00	1681
f2d417b16cdfa34b3cb1eb2e025154d227375e26	2021-09-27 13:06:18.646849+00	1682
1171265e4ed46a12b1ad41f85ae87539b3c6b985	2021-09-27 13:06:18.924751+00	1683
74f0095c7eca48be6cef863e0aecc9ecd6a19d57	2021-09-27 13:06:24.321356+00	1684
e63932461a3a6ff619c5a1a4310e9a298027d9e9	2021-09-27 13:06:24.577218+00	1685
7c95db1e94a450c370210b1de622629074485a58	2021-09-27 13:06:30.264704+00	1686
a26d140551aab97fb3a9e6e02af60672c1f75d0f	2021-09-27 13:06:30.509208+00	1687
c10ec3c4755b7c195ddc5f6c8c4ed0d1a9f754a8	2021-09-27 13:06:35.92678+00	1688
81f2423a87ae38a60e255271891e743563d7dfc5	2021-09-27 13:06:36.202842+00	1689
ce763f9e5b975271ee7d6a643ae0b94747b8a33f	2021-09-27 13:06:41.841956+00	1690
bf5403aa62d48e01e79ee3d9251e57ccaefbb873	2021-09-27 13:06:42.08912+00	1691
e6135eee83bded8bfd0fd04618158ecbe9739d72	2021-09-27 13:06:47.441119+00	1692
de2171585e8127da137f2884ee1fd9caf2515fdc	2021-09-27 13:06:47.677181+00	1693
983769887a3edd14fdeae8b9624124845d2c0460	2021-09-27 13:06:53.322425+00	1694
d5d0d95f814c22901f565f28cec0da9d8d7536b6	2021-09-27 13:06:53.567586+00	1695
24f67f71d6b1618f3da64dcd4a181cf6c09da125	2021-09-27 13:06:58.982116+00	1696
c87abd7cd92a2d67185458d9ea721696f093b6eb	2021-09-27 13:06:59.221261+00	1697
c58cc2561268b1267c6056afed3a0d0358e27566	2021-09-27 13:07:04.952934+00	1698
20baa67b0e60a7d7d3d33fd5ad4adf44fde06505	2021-09-27 13:07:05.197518+00	1699
e2918dd2911e260a30043da36d9963544900ab07	2021-09-27 13:07:10.552437+00	1700
c4ea5b37d38f2d51ab853bd76247aa19c13438a1	2021-09-27 13:07:10.807339+00	1701
1ee3a466ef03db1ab251798a6d90938e26241607	2021-09-27 13:07:16.489915+00	1702
cb532295401be3148ec4ff5d605d2862b757a7eb	2021-09-27 13:07:16.74546+00	1703
dcfd5c1348c69473afc4f7dfc70917806fb87c6a	2021-09-27 13:07:22.19438+00	1704
145ee1ed5a4aaa92013d291a9d989326e0789e0a	2021-09-27 13:07:22.438943+00	1705
1ad487162826e5cb1f6d7cc7c859c7c9e5a7bc30	2021-09-27 13:07:28.039157+00	1706
6e98b8ae5c6a82c3cbb9c42b1c103144eea94a6c	2021-09-27 13:07:28.29314+00	1707
d3e9fd2f3b44521002a71bf3947f861dd1d743b4	2021-09-27 13:07:33.777427+00	1708
04df4c67c16565b30e70a55556d6fd8330905fff	2021-09-27 13:07:34.037727+00	1709
b1c8d5c3dad7bb943ec308284bd5fb957d81de36	2021-09-27 13:07:39.798676+00	1710
2802156f512d7401ac22c301ebd94800bcf9096b	2021-09-27 13:07:40.099051+00	1711
624b15c8debd97b9cc90a79ca523e0c232da8d32	2021-09-27 13:07:45.478323+00	1712
4bb7146f87c5296c85d512b7808c7f9652bb6c49	2021-09-27 13:07:45.733579+00	1713
0ec4a789993a860fcb8f6754a0204b1b01557481	2021-09-27 13:07:51.499295+00	1714
14a30187144332eb53b449af85c59cc4c6afdd0c	2021-09-27 13:07:51.743626+00	1715
fd404ed512c52da8df93dfd2a46089070780acbb	2021-09-27 13:07:57.215681+00	1716
f09776a7ccd4946ced8961e869c8c2a3ba78eb8e	2021-09-27 13:07:57.493379+00	1717
b08053cada0406316cf09adae86d01c61ba2f30d	2021-09-27 13:08:03.226371+00	1718
1bb2b0829656a04a3bba40918da147500076f7dd	2021-09-27 13:08:03.459476+00	1719
45e43beab69e1e671135b2f18c81af1609f987ce	2021-09-27 13:08:08.92029+00	1720
1ecf04ea82cc1cfc1316ebaf4a544faa545f8382	2021-09-27 13:08:09.165194+00	1721
4e6c9c29ae147ea22964bd2c531de335f1270315	2021-09-27 13:08:14.988986+00	1722
adf366873addfb294429d38a593684cc6d0b8574	2021-09-27 13:08:15.264185+00	1723
214484792d489544a7a418d3cc9da0ae39ad43ea	2021-09-27 13:08:20.711714+00	1724
14fb3734297e02ffa643fc3582eebd2a5ab2b1d9	2021-09-27 13:08:21.00992+00	1725
e6c92fd0b8af9620cfd8312541b948ce161eb682	2021-09-27 13:08:26.86007+00	1726
afeb1c3d74c8614f866ed33e8adf8b5c3c88a67b	2021-09-27 13:08:27.125731+00	1727
a98a380dff05b1b24b7c6014463b7016b242467b	2021-09-27 13:08:32.540869+00	1728
8c3ea16cc236cbc38667a3511b2726a267d9ac23	2021-09-27 13:08:32.785931+00	1729
b1dc37adf76b91032c0dd030a04b798291d9d044	2021-09-27 13:08:38.568362+00	1730
d7dc797e4ee537831fec106b06d06a48de2ab597	2021-09-27 13:08:38.822123+00	1731
541afc5f503e0e01abb75b22cd20012399d94fa6	2021-09-27 13:08:44.171427+00	1732
c5b7eeeaa2caf49dd0cfe5905b5aac7171a5c202	2021-09-27 13:08:44.417199+00	1733
1da0a48784f7ccdee9c24ff7a022497beb2ca691	2021-09-27 13:08:50.199373+00	1734
be4fb13e9d259c0b2c55b4a19d9e5e00b5438fef	2021-09-27 13:08:50.443671+00	1735
062f33c001a6a9522d509d002a86c2847b0e82ca	2021-09-27 13:08:55.821942+00	1736
678376a7fcbfe5702f6488eb20e8cbce528884fb	2021-09-27 13:08:56.088208+00	1737
240bc18253c01c51b9f535281981153dadbc5575	2021-09-27 13:09:01.847407+00	1738
61430ee1c614df1de294744dd07385b213681e2d	2021-09-27 13:09:02.088605+00	1739
71d0d4c88e73e03807f3cb7dcade4c401525f7e9	2021-09-27 13:09:07.584149+00	1740
167cdabbafec08876c28bb27cc31dbd93b33c62e	2021-09-27 13:09:07.864792+00	1741
9814536ef07dcf447f407bcf8188ca499e9f219a	2021-09-27 13:09:13.620041+00	1742
37a00b85b92d1faec0277e3c6614dbbab10c0db4	2021-09-27 13:09:13.893776+00	1743
bf96225d6f79e60d278bcab2363eea0e266626eb	2021-09-27 13:09:19.304497+00	1744
661e28d2758b7ad3a4d24ef6c6692de3625efd5c	2021-09-27 13:09:19.539989+00	1745
b50f9800d5f56e39e0f3e311b1bf5d292c5db10f	2021-09-27 13:09:25.281006+00	1746
cd5ef49c2d0aa9cfca3f87863a56668b90595831	2021-09-27 13:09:25.543694+00	1747
66ff929208d5c759b541d5a8e9b784cb8c5fe4af	2021-09-27 13:09:30.926305+00	1748
2721ba7e1958183924cc256a7bb6273789f9e1e5	2021-09-27 13:09:31.193673+00	1749
a12ceae576d7a82a81ac40709cf26abd719f17ca	2021-09-27 13:09:36.945997+00	1750
b1381c4d8dfbe7f0399a576bd3817ae2abc81fa8	2021-09-27 13:09:37.20868+00	1751
764131c4cfb9905903090e59a569d9bfbf725bab	2021-09-27 13:09:42.602112+00	1752
55618893610d7e9bbe155f512367c909c0169f7a	2021-09-27 13:09:42.848738+00	1753
47ab5a27a664736ca0ca0ab8d7643a5df605f464	2021-09-27 13:09:48.551581+00	1754
14bbc16da335605491d4ff64a8878aefdc5ec909	2021-09-27 13:09:48.797268+00	1755
93e925fb718793fcf7ad7c61f15533fcaac2247e	2021-09-27 13:09:54.200865+00	1756
6c830a560030f10ea2f9cf6cc2dc22ae1bcd4d03	2021-09-27 13:09:54.458684+00	1757
8bd34899b323ce7cfa4940de3f995c7b7261439c	2021-09-27 13:10:00.166184+00	1758
e8e2d3ed279436bb587dfbdfbcedf4bf101e4c23	2021-09-27 13:10:00.405276+00	1759
1d552cc9c6278d6441fd7dbaecd301ab5720912f	2021-09-27 13:10:05.843845+00	1760
dde6774e71b802ac1f870925b7bd2b8992ebb970	2021-09-27 13:10:06.124439+00	1761
a78999aa07cb21bd864f03a23850f37a77123864	2021-09-27 13:10:11.902457+00	1762
d529c14d42c50e05f70e525633e34222c719d12e	2021-09-27 13:10:12.149725+00	1763
42a38619644433e14ef3945f6e196e3da38eefee	2021-09-27 13:10:17.6074+00	1764
d5def3bba3baa0244914de6f22df81aeac506f9a	2021-09-27 13:10:17.855058+00	1765
aefba98a22102579ab730161fa0dbdfb054aa939	2021-09-27 13:10:23.667225+00	1766
ba23eda7eaf1744baf5457f48beb3ca79342ce28	2021-09-27 13:10:23.925203+00	1767
758cbc28b3c0529f06e75adea2b47dc68b17fca9	2021-09-27 13:10:29.245552+00	1768
82c01be323888e61d3ae36c08ee754861b098186	2021-09-27 13:10:29.492092+00	1769
30546aaf516895d7e867c6935ba39cea43884b83	2021-09-27 13:10:35.389607+00	1770
c58a44dabd7df71518562c15283d765a18aac2db	2021-09-27 13:10:35.644143+00	1771
6407e4de3f2bbe366390d2da1c44a4ac932618dc	2021-09-27 13:10:41.040001+00	1772
201db6b20a4ad4ca1bc364fe89e712d5409e99f5	2021-09-27 13:10:41.298304+00	1773
895d7929af1d77cf851fddbb18eee1b1bdf1cf76	2021-09-27 13:10:47.063552+00	1774
7816f72c60c484272aba0c91462f9d5d67b796d4	2021-09-27 13:10:47.308822+00	1775
39e6e09d4f5a663474c8c6da80c6123e6ab53c30	2021-09-27 13:10:52.718356+00	1776
b99e8ef6ba12a569502d2774f6a2b0266d00c6cc	2021-09-27 13:10:52.97922+00	1777
7ed7c41e434f9c9c0ddd1d428500307204edd93c	2021-09-27 13:10:58.701822+00	1778
fae83591d7af1fa014085020d7b6bc5b996300e4	2021-09-27 13:10:58.948787+00	1779
5dc8b0d2d86d16cc0719468c63a6a90f1e78a8ff	2021-09-27 13:11:04.444756+00	1780
c0d5929fe7c6a6e96a53073736b47826574cd122	2021-09-27 13:11:04.68171+00	1781
b38e4a9e6a135dcbb1bc863fe3e2de99348240d9	2021-09-27 13:11:10.468662+00	1782
5dec63036421a13f10be6a346294e37546b3470f	2021-09-27 13:11:10.714098+00	1783
7e20284f068e1614848e474be1655006817d14f1	2021-09-27 13:11:16.193825+00	1784
297bd303c9225c05952e55cab72f7024ff33c6a7	2021-09-27 13:11:16.447904+00	1785
929112f6eff6f712bc14360860596d8c010f1040	2021-09-27 13:11:22.257852+00	1786
ea8b82445b0b2aedcc720af27c0fb161835264cc	2021-09-27 13:11:22.524728+00	1787
c914423751de09d79fe216f917e4ee713e2df7e3	2021-09-27 13:11:27.939192+00	1788
426738df1979dfd568890d9ccf1f7e00537f2d55	2021-09-27 13:11:28.194829+00	1789
ec180f4491cbcf78c77b15e47c42d65ef91cb440	2021-09-27 13:11:33.94652+00	1790
9dc18b5d62e2ac88fc7cd70613d21d38e73c56bb	2021-09-27 13:11:34.207591+00	1791
87771b7ae06328da1bd1abde7750c394c6a0f11c	2021-09-27 13:11:39.641913+00	1792
2b5e2e1d39af9d71feee72581a32967442c393b6	2021-09-27 13:11:39.899714+00	1793
1c46bd6b60865c9e95d23d4ffe0fd819adb74520	2021-09-27 13:11:45.659207+00	1794
8971b2e1dff7951448be1b4f829e019a867a2798	2021-09-27 13:11:45.913805+00	1795
fda48d1382f79fa9662ba7bad74109b0e1448618	2021-09-27 13:11:51.316939+00	1796
2b6cdf2108aa81a1773625d669385eeeadbc29cc	2021-09-27 13:11:51.571852+00	1797
9978f065915401c4ad6bfc8f6010d45df2d43d43	2021-09-27 13:11:57.368281+00	1798
bf11337536ce3d852f57b3621f9f986bb0e27114	2021-09-27 13:11:57.623967+00	1799
c186907a4522d7795791d36d71b4473ff81dc10f	2021-09-27 13:12:03.039717+00	1800
3b91dd0e49edd57e14d758d9abe742dd4ddd8738	2021-09-27 13:12:03.28359+00	1801
da4c9220f3ad9516b40db0eafc21e04447ca2943	2021-09-27 13:12:09.006819+00	1802
de4b3b163bf0f3f5652c54a98163e0b0207c300b	2021-09-27 13:12:09.248016+00	1803
741013b333ff2def30e316172e41989464a2fc5f	2021-09-27 13:12:14.824422+00	1804
f23297a37c5781f0b8dd97b384b81f399e3a87fc	2021-09-27 13:12:15.074618+00	1805
b025905126e66925cc97cfb49365cdaff1bdb6db	2021-09-27 13:12:20.768268+00	1806
b009a64532dcfbc4d8031426860a0ebcf0115ef0	2021-09-27 13:12:21.010947+00	1807
6bfd2c4f6355c15e15342e38898017767381fe11	2021-09-27 13:12:26.492524+00	1808
19e32a56761c1365fb751206f5b32bb1b1060935	2021-09-27 13:12:26.737712+00	1809
8631f6f835509cb226250b198d936ab8feb4c3be	2021-09-27 13:12:32.500412+00	1810
8933b9e4df175034d620131ab0f16057c39c6e3f	2021-09-27 13:12:32.812827+00	1811
5a6957e053b0604ea589ab19c42b6c2f6dcac574	2021-09-27 13:12:38.205353+00	1812
c7787610f56587a4ebe5ba0f23f97ce8c784694d	2021-09-27 13:12:38.437848+00	1813
f36aca2c22e3d50dfd634f368beb120c49efcc18	2021-09-27 13:12:44.302087+00	1814
fa4e4c685c429e91a6d2f4dce71858ab90299e9b	2021-09-27 13:12:44.537656+00	1815
9b3c570928a4b132c5c790f7bd9a1570269d85b8	2021-09-27 13:12:49.92989+00	1816
48626a3f55ec1badf68e8fe3d829ceafe96f4c3d	2021-09-27 13:12:50.187714+00	1817
cbf56264f8bc353b4278d94f1e3084153006e18f	2021-09-27 13:12:55.889046+00	1818
6aefbd45b3466183b35b29b9fa6655f27ccc5927	2021-09-27 13:12:56.173982+00	1819
526eb9324bfacbff7557addd9f058244475e0f09	2021-09-27 13:13:01.532188+00	1820
2c701b5b9feee3e03410fb0e742c9d1afde5d261	2021-09-27 13:13:01.770271+00	1821
7efac9d5e8cc84e238b02466da927b4783eea199	2021-09-27 13:13:07.423619+00	1822
bdccb4aa2658b5eab6673e91642eaec65d4ea2eb	2021-09-27 13:13:07.659337+00	1823
e6f5112a21c744cbdbf3230b57cc7f201fc34a4e	2021-09-27 13:13:12.983155+00	1824
561949a592f4e9a3e5abe294fd98f7a76c11eed3	2021-09-27 13:13:13.218421+00	1825
df4cf32c8bfdbcb6867efebe2a81c028fc65b63d	2021-09-27 13:13:18.968105+00	1826
efafb6d66e2c04596f7edcd944959102ae000133	2021-09-27 13:13:19.224072+00	1827
5c2a7f31d6ff406c03b341acd295d0a34abe8627	2021-09-27 13:13:24.632449+00	1828
0fcec59dddca15167f0e08b84e8deea92d6bd3fe	2021-09-27 13:13:24.883958+00	1829
015e3fc0a091a732111292cb544d473e42dcbfb1	2021-09-27 13:13:30.644428+00	1830
50c09e3e5ccb4bce0e5c89ff150b9ae1d705f464	2021-09-27 13:13:30.884107+00	1831
ce8b383d3ecff51101851b90a704e6bffcff3773	2021-09-27 13:13:36.287465+00	1832
0293d7ef75b2f3303e341432206bb4eadf9d21d9	2021-09-27 13:13:36.550706+00	1833
edcb2003507f77ef5c18d0006b589725085b27d5	2021-09-27 13:13:42.449359+00	1834
193e7f2c14fc39ee29e02adeb3b42f4976ccdab8	2021-09-27 13:13:42.703668+00	1835
f98515bfcaafa1b4d26ea4f099b60556c39550e7	2021-09-27 13:13:48.063176+00	1836
160c7a98df6134889c77ffce265fc27cab19d97f	2021-09-27 13:13:48.303526+00	1837
a4527469fd572aadbee5b87e15e8a81b152b7d42	2021-09-27 13:13:54.068588+00	1838
5785914505e1d9622eb2cf57ff7e24763e040bf0	2021-09-27 13:13:54.324642+00	1839
d7a42757ab79857e85f91d1cf18b8ab825d04f34	2021-09-27 13:13:59.697785+00	1840
2c32b104f3d05f12a5b638c536d4d753af254ff8	2021-09-27 13:13:59.944582+00	1841
9f58a4ec241c2d46aba23f360e32f14efc832d76	2021-09-27 13:14:05.818491+00	1842
6622a2077b413ee7911ec436eb613c445de2277f	2021-09-27 13:14:06.083947+00	1843
514f92d6a151c4962354620523930dbdc8af6bcc	2021-09-27 13:14:11.359664+00	1844
42a2ed6c26399a2eb749bffac6fe8577af4447f2	2021-09-27 13:14:11.599136+00	1845
55e91e75430b6422d3e77da72bbabb50732cf112	2021-09-27 13:14:17.362647+00	1846
c9d693e0a698e6acfffabee10d6627c42ab93084	2021-09-27 13:14:21.479799+00	1847
306f8c45c68802eb0f8260b0ed065335ee354ba3	2021-09-27 13:14:27.67298+00	1848
778b2cc4a6dd8acc204bee4c81792bcaa047f82b	2021-09-27 13:14:27.933608+00	1849
55a017fd3d591efe8baa5867350e667422b7cd22	2021-09-27 13:14:33.66274+00	1850
9319b41706a007818847ff14d3da81d6dd8c2978	2021-09-27 13:14:33.918576+00	1851
d6683340e759e2e0be7891dac86058159f155890	2021-09-27 13:14:39.377323+00	1852
6ff9a7ea137153b951492b42a95aed3e76b2c16a	2021-09-27 13:14:39.644231+00	1853
ad679135c25f0f86f9af83bd912ca1c05a4fa49b	2021-09-27 13:14:45.385777+00	1854
a9ef578d429669952c567f0a97779b1a710ff036	2021-09-27 13:14:45.628623+00	1855
3c781b0a7bdd8c6b9eb9516471c5c9dceb48b80f	2021-09-27 13:14:51.061789+00	1856
92224d63806dc033e06c1328cd2b03c51026eb95	2021-09-27 13:14:51.326399+00	1857
ea853cd336c2c80c5926593c01179b32d9edee10	2021-09-27 13:14:57.055619+00	1858
a5868dc35c7ca9401675a53e8444cdd76955e71f	2021-09-27 13:14:57.313745+00	1859
43e1dce14cc7b632e5819bea4f806c0fe6c7eccd	2021-09-27 13:15:02.688687+00	1860
00566977f1313e1d9a311a3db2eabbb39630a215	2021-09-27 13:15:02.964479+00	1861
dcaa226c36596b1d6737d5dc833acf422e570742	2021-09-27 13:15:08.739562+00	1862
f08375434e40f6ba75f9c4d2b7ad0eb9402036d4	2021-09-27 13:15:08.9777+00	1863
c06014db55b748e8c9998b88d7effbded2118459	2021-09-27 13:15:14.601059+00	1864
2f7f37cde02a39a6ce7d4676309d1742648365eb	2021-09-27 13:15:14.849508+00	1865
54644f3bf88f838bad377f5c613caf45e36b58e3	2021-09-27 13:15:20.759703+00	1866
ec21f3927f4f688f0997680148e50a9c3f6087e4	2021-09-27 13:15:21.023307+00	1867
11407775476d0212c11198c5f17bf8da022e69c3	2021-09-27 13:15:26.452764+00	1868
5c805d3818708ca4295e3824ab379dc6cc38625b	2021-09-27 13:15:26.697539+00	1869
dc4e808ab74cf58bc987c36c103dd94b08e49bba	2021-09-27 13:15:32.65051+00	1870
3aaeea640e76d82bc7f02ae538d4eb665707c138	2021-09-27 13:15:32.949985+00	1871
02c04c1242857b2119dcef4ae33a4382af4477ab	2021-09-27 13:15:38.359691+00	1872
98438a7f2e733e730e0bfca4060a2fd511fd240e	2021-09-27 13:15:38.616097+00	1873
10f0f446e4e50caf4f83a057179c6b53c9cb99a0	2021-09-27 13:15:44.451026+00	1874
047a5ff5f54a2029ffeefcef317472a914480cbe	2021-09-27 13:15:44.698529+00	1875
b00e7d83be24f1c40deba194fb21d6f5b7017e3e	2021-09-27 13:15:50.141026+00	1876
3bc0a404f3b10267964a35df61203f398ee0ef7d	2021-09-27 13:15:50.369043+00	1877
e862121faa1698f7cefccbcfda5b857a50ca7b70	2021-09-27 13:15:56.15658+00	1878
3175bb64afeca3b7d9bb38567c67e466e866bab7	2021-09-27 13:15:56.418692+00	1879
c6539892866915b7b368235c02525363084b5c88	2021-09-27 13:16:02.014891+00	1880
ea5196adc5ea2eedc9a9b93d74f29604b5ee1b5e	2021-09-27 13:16:02.263704+00	1881
44320fc03b6c609db3d6613c536f5e6d0114d0c3	2021-09-27 13:16:08.028385+00	1882
ecaba7f40ef651abcec8e312864ed5c980fb94a5	2021-09-27 13:16:08.345496+00	1883
d65a4fc4b60aa7945001ee0f31f97a248bc7b018	2021-09-27 13:16:13.678951+00	1884
4ad12d80a3b65fc163d91377cdea3af190c2c957	2021-09-27 13:16:13.957513+00	1885
abf47352f2323fbbf51e777da4a41dc130e0c109	2021-09-27 13:16:19.847467+00	1886
ccde08215c43670d6b3bd8bfe3f877158e299794	2021-09-27 13:16:20.115448+00	1887
3e7c72de6a4d37c62f02b2aa47292412bb6f2e56	2021-09-27 13:16:25.852613+00	1888
e8417110e08b0081d9cfac4faae234ba377a0601	2021-09-27 13:16:26.098879+00	1889
1a6666fea35e5026c59c58c9680d38a3786b9875	2021-09-27 13:16:32.069411+00	1890
e24ae2c13fb03f12ddfa10fddc7050320ace4a04	2021-09-27 13:16:32.353642+00	1891
28f01d4b3c31defb4282abf4e228d4768c996ea4	2021-09-27 13:16:37.783589+00	1892
0ec8b405b08e187a4f2044c86048f2acbde3d332	2021-09-27 13:16:38.045724+00	1893
f75e5285cbd0016180dd7a9ecf28b519e77b8bd5	2021-09-27 13:16:43.761409+00	1894
06570b021d06b4232897487a28a5458a5ec87c20	2021-09-27 13:16:44.013628+00	1895
882933f6f090410ff998aeaf7b29c6f477d00f39	2021-09-27 13:16:49.521373+00	1896
cbb88375ea11f8ab41fb74d7a5363a3c61319a41	2021-09-27 13:16:49.768553+00	1897
039b76497f139eeba70bc0efc30db334adbb7402	2021-09-27 13:16:55.489608+00	1898
affab959ab537ceb63b64242834c955324e962e4	2021-09-27 13:16:55.744665+00	1899
46e2a36cc87f9127e81bd204a473ddb9bab7cf9a	2021-09-27 13:17:01.085503+00	1900
5c5f6ee2a76d9a62c6d6adf331d2fe87bd40b969	2021-09-27 13:17:01.338654+00	1901
783ce8a814dc62a17bd5521f46ee85b78d1fffef	2021-09-27 13:17:07.225305+00	1902
8d1e809c70932eb6ee2dddcc6597078d350e8ece	2021-09-27 13:17:07.518865+00	1903
d1c906dbe14f8706ad9159d12991f05aba949bd4	2021-09-27 13:17:12.996225+00	1904
a0a1e1bd8c1d1d58dc4f55dc026db82bca0e5d05	2021-09-27 13:17:13.252668+00	1905
87e2024705d6a525b7294bd9c9883c5876818c78	2021-09-27 13:17:19.302841+00	1906
12639db188c42c5bd7735720945d34a601297f53	2021-09-27 13:17:19.576408+00	1907
2365290b8cea9f77b58aab2c69618084224b8149	2021-09-27 13:17:24.992654+00	1908
321ca26cfb3fd1d59187548d59c85e2a22ad03bd	2021-09-27 13:17:25.263084+00	1909
5521ed31b0d3eed4bc079ebd50eb2d9fe2d5ea89	2021-09-27 13:17:31.039124+00	1910
626ea6f94af38580cd6521f8d16aa802507c90c9	2021-09-27 13:17:31.303892+00	1911
cfca1f0d1a79d0046e3313d40194e4da2f688c44	2021-09-27 13:17:36.702221+00	1912
fac91311151a271217bb60757ad2b2e0ec2de969	2021-09-27 13:17:36.929637+00	1913
53f442212f3da0cef752af0203b58ff741e023a4	2021-09-27 13:17:42.764148+00	1914
e74c7c95349d6c5822915f71a53206ad2edf6d9c	2021-09-27 13:17:43.027121+00	1915
9b5096a8644d6d4eafb9bccfe0c33dd6d22446ae	2021-09-27 13:17:48.424161+00	1916
53fd0eba41b53bf2389444ee7aecf62096c726ca	2021-09-27 13:17:48.674276+00	1917
fd864c741bef88c14ce768be9e524bf87e18af2a	2021-09-27 13:17:54.558483+00	1918
1d85a05de2b5b3a5bbedf3af25ba2f0bbb8711a6	2021-09-27 13:17:54.814316+00	1919
648703a9ba7d272bf90cdc3e1ebad787ddecc360	2021-09-27 13:18:00.279472+00	1920
9c1e9d4a884bd3e3b264dadf1591f997c5f3fc67	2021-09-27 13:18:00.548165+00	1921
0e79364d648f2e109f1e0fe188934bf750a7047e	2021-09-27 13:18:06.53215+00	1922
7ef2fdb1cb8ad1119763829e87784a6b0093f9b8	2021-09-27 13:18:06.778039+00	1923
4835e5ef0a28d6e7f352b14d6f1baeef0182fee4	2021-09-27 13:18:12.228396+00	1924
cd003683917979be41b45faa17d896f5f9c5da36	2021-09-27 13:18:12.493687+00	1925
381544d803ca837092ff0aaec26019e566de2c51	2021-09-27 13:18:18.590927+00	1926
bc895711c53d3b021179a90c4a4e17d11c1ce498	2021-09-27 13:18:18.896967+00	1927
ff2ccfeaf5039e39d58b2e8de537a47818a5b71b	2021-09-27 13:18:24.798134+00	1928
1aea7efe8448178de6667526566861efada53438	2021-09-27 13:18:25.041474+00	1929
3e6738e1ca95e4a0fb18ca4c2c65db3edb093dc9	2021-09-27 13:18:30.870842+00	1930
6e69ee7d9e6163124aa0cd8c34d40a8d4fec963f	2021-09-27 13:18:31.114644+00	1931
c10ae98a50b3b1f1e721ae3dae107d4c606d8698	2021-09-27 13:18:36.598469+00	1932
39ddc61b5591f3b06c5037cd606c85eb576c4023	2021-09-27 13:18:36.828667+00	1933
157706a938d37a5d3a5f643f3748682231e21570	2021-09-27 13:18:43.009136+00	1934
cd9df8fa0865e7d82efdb63808ee74c052209d3e	2021-09-27 13:18:43.27411+00	1935
02c53e1909414660601076c9471d0b75f25e50ec	2021-09-27 13:18:48.629032+00	1936
44f06d24afa8594b28ce0918a056c068b51ff350	2021-09-27 13:18:48.903632+00	1937
8ae9099ef0c2132bd70c2fc47a93ebe8be40e6b8	2021-09-27 13:18:54.612775+00	1938
749499fc79a2d046a663ed35d3fc0e84aa77f9fe	2021-09-27 13:18:54.858096+00	1939
d07be7ecf9f58845ffa4b790996e8b853406ae81	2021-09-27 13:19:00.284589+00	1940
f46f2b40e52903025513e39e702eeb478f9f8ab3	2021-09-27 13:19:00.529075+00	1941
3ed94eca0293dc49cb5a8da3a4960d1a7b30a74c	2021-09-27 13:19:06.192782+00	1942
33690add1d3286a35205a8a8b6aa6b9317f467d5	2021-09-27 13:19:06.456256+00	1943
d2cfb97d9c8e9d73606e7c306ab481bf3f8c4763	2021-09-27 13:19:11.901855+00	1944
ba14fe99c4b621606205588f8d14433321924f4c	2021-09-27 13:19:12.162969+00	1945
100b7bcdb35850ba524bdcf96c3d335dbf324b2c	2021-09-27 13:19:17.819801+00	1946
90f7d104aac77b71adff5b1794405a66abb57567	2021-09-27 13:19:18.096775+00	1947
000f871e8d101ccd7b89018a452fe0c6a8af6001	2021-09-27 13:19:23.650409+00	1948
7bfd2c01fd338203e8d4407010c156aea8c255cf	2021-09-27 13:19:23.935692+00	1949
272ff5e208b883fdee5c1238c7601587bdbed228	2021-09-27 13:19:29.672764+00	1950
a4c9b6550f403c7b61134a53ce4fd92006e7fe70	2021-09-27 13:19:29.910132+00	1951
09e160322ef6994635e53b84a1dc477c7a63cef8	2021-09-27 13:19:35.282339+00	1952
8d4c1aeafe474c3c3401e7866b8feb9b37cf57a4	2021-09-27 13:19:35.538328+00	1953
9189ad3600c04a0fb65837d4a27b44e80e9b4fad	2021-09-27 13:19:41.195115+00	1954
8ac5c6ec3b4a8009195b0c90b664b7ed22b7fbc3	2021-09-27 13:19:41.433097+00	1955
d75088a80ec69098fcc1f91b7fbcc3e845379082	2021-09-27 13:19:46.891974+00	1956
0650b0d918c107a490cae89b2ad048a32cabcd20	2021-09-27 13:19:47.142978+00	1957
94fd5bd8e620edf246a7752fdb8d62aac2bad39b	2021-09-27 13:19:52.831319+00	1958
a5109316b8bc88a94ae79986b1682f6f9a183dfe	2021-09-27 13:19:53.078404+00	1959
adb3b6c564da65d808c645310fbfb631e6dd5a65	2021-09-27 13:19:58.468611+00	1960
ff13cab3197559b542a286cf56665dcfd138b985	2021-09-27 13:19:58.707164+00	1961
7809d2fd939f89aa8d99e681252ad57dd04c5cc4	2021-09-27 13:20:05.204056+00	1962
ac0b8f00a7d07d2d07e6b4cd0b0e5b2d066475c4	2021-09-27 13:20:05.573379+00	1963
449daa69e5dc362cd2e8f2578e5824f1a3a7a2cf	2021-09-27 13:20:10.871493+00	1964
f8f10ef5477eecda6d6a1f52f5d31f0a585d390e	2021-09-27 13:20:11.111294+00	1965
4c8bb3452798d32f357ae111463d3739c027f9ae	2021-09-27 13:20:16.786556+00	1966
aa58ac905faf94f534aa956d82faff010b0f7ce4	2021-09-27 13:20:17.01955+00	1967
ebe2d3fe3e055549e5eeef45fe709805e359a879	2021-09-27 13:20:22.571039+00	1968
b8ddaf70b112044141d2e5c94eb97d5fae126583	2021-09-27 13:20:22.843054+00	1969
a6165e1e0818351eae91dcf738166e743d6c50e3	2021-09-27 13:20:28.478308+00	1970
a7bdeadf16253ca926a8e060fac4d7d0c50d9ec1	2021-09-27 13:20:28.736725+00	1971
8164448ef9403dde76d172ae2dc91a6e1a08b21c	2021-09-27 13:20:34.181364+00	1972
aceadbf37b1b2285f11925a2ab3cce57bfa80a45	2021-09-27 13:20:34.44491+00	1973
e24eb8edf32ad3d910c4ef377710d56d7af1453a	2021-09-27 13:20:40.092948+00	1974
886e60777b0550ae281e15727abee6e7328dabe0	2021-09-27 13:20:40.339121+00	1975
c5c03d8142d68f257cfa47ec470d221a8bce2190	2021-09-27 13:20:45.762686+00	1976
835a6860d6857594dc49e1b6c5d66fc2cba42f53	2021-09-27 13:20:46.009898+00	1977
227bb334a6730459daf666e0a00b9bdc5ee97f40	2021-09-27 13:20:51.852571+00	1978
78b2be9ae9c0630ba2ae6ad0b37c30a248d75c86	2021-09-27 13:20:52.110547+00	1979
6268fa38ed97fde8742077df9ab622d253d456e3	2021-09-27 13:20:57.832378+00	1980
92295b09dca8c96110be3998fd3bf234f1f0439b	2021-09-27 13:20:58.069748+00	1981
14693aac7439fbe14f3f95b47e2a0afe96b8c5d2	2021-09-27 13:21:04.210109+00	1982
f8b0c168c7d941b565bff5712b2522bffc05cd44	2021-09-27 13:21:04.475504+00	1983
14337e1e15a09b8ba8d41314e1c7435ebe25d0f6	2021-09-27 13:21:10.042833+00	1984
058a9cfc8188b109f16c1a75d67afbd46fa47a0b	2021-09-27 13:21:10.313814+00	1985
6fdfa562e4fc8ff031c66355d731d339978225ac	2021-09-27 13:21:16.144154+00	1986
dd5f53da2512bbe5d1e5bc4686a31447a4eb5481	2021-09-27 13:21:16.389721+00	1987
fe1b81d6a60aabe6b68cfe1bc01a4c38b1f8f6af	2021-09-27 13:21:22.106792+00	1988
62917d386229addaf233dce12e0ad63501650550	2021-09-27 13:21:22.374892+00	1989
ca81bfd1e413ded538a7eb239f23d388bd73ce0a	2021-09-27 13:21:28.241575+00	1990
b9b1b06e12e22193fd3fb7757a7cd73865050ab2	2021-09-27 13:21:28.537613+00	1991
dc052fcd433ccd7d32655d26a8b5f77ebb37e5e6	2021-09-27 13:21:34.157932+00	1992
a91c83031864481cf90ac6b3096025fa8fd7bb07	2021-09-27 13:21:34.425034+00	1993
169f1d155c74fb7867246b241d78a362924a1c30	2021-09-27 13:21:40.290727+00	1994
27f661901c295c187b9c1ecc3f70723609b750b2	2021-09-27 13:21:40.640867+00	1995
c5578b84eb0fa91fdc61179b87dcf5a9ee1e0a38	2021-09-27 13:21:45.971399+00	1996
582da5ab2df3f8f0a55181ed17e30d4d3d01cf74	2021-09-27 13:21:46.255743+00	1997
5571b460133a353784be49e159a95fce96e9e7e2	2021-09-27 13:21:51.950874+00	1998
92fa984f6ac528babaf4649285333670ab6a562d	2021-09-27 13:21:52.191161+00	1999
086a27e256d4124e5bd2b551ee9b2218ec706ddf	2021-09-27 13:21:57.615282+00	2000
cecd51e94fd2e01f3fc390d51ed68c5e6a020750	2021-09-27 13:21:57.849821+00	2001
d1a0cd7123b446811813c6b4499628f6803192d9	2021-09-27 13:22:03.837376+00	2002
964dfc327704cb985b7c1b3f1886762b778021c4	2021-09-27 13:22:04.166044+00	2003
9aadd8d530951b2efd9ce437db15ff6cd0f1b805	2021-09-27 13:22:09.4514+00	2004
e62c4f23be9eca74f63295e6c66b8f179cc6d877	2021-09-27 13:22:09.689686+00	2005
6bb8d9cd94cc7f5752dc669e7c0ab14caf2cac02	2021-09-27 13:22:15.363068+00	2006
600de22173c45362602a0cac7a876fdde11d2b34	2021-09-27 13:22:15.597881+00	2007
0d5447de2e315567cb029ed23f3e07d8130f1086	2021-09-27 13:22:21.06981+00	2008
a815f42646776fcd3fa849dc65343801411a8c99	2021-09-27 13:22:21.344645+00	2009
c1c680f24842e07af8d7501b8bf9827e0c5118b8	2021-09-27 13:22:26.969927+00	2010
ddcb0009bc0758fb45eddd5e9d50d3572f188634	2021-09-27 13:22:27.241441+00	2011
880ed0252c4608c7abe91764810b5a31c6c10564	2021-09-27 13:22:32.599236+00	2012
ea80502791ab881c57603e50f91deedf75b60f1f	2021-09-27 13:22:32.884603+00	2013
28b4096cce65ea7c7a60cb308abc7cacdaac9fb3	2021-09-27 13:22:38.892177+00	2014
1210dcb6b4453b1c2e15b95d11de832563ace9a6	2021-09-27 13:22:39.16434+00	2015
79f799e038aa1a36d38f0e502e2db97a88b14fec	2021-09-27 13:22:44.812604+00	2016
5e2377c6ed0f931cb0e5d57f884c47f72300f2f3	2021-09-27 13:22:45.12661+00	2017
6c00bdfa624e802084d4f29884573e05d85e9428	2021-09-27 13:22:51.019594+00	2018
7e4216096d1f62cb0a537f13f2aff2d1a124dd78	2021-09-27 13:22:51.269434+00	2019
d040c2110ee643edaf93673c881b009a1c5e1acf	2021-09-27 13:22:56.808143+00	2020
7968e80c8912630b94d41e1c7c1ab107c9202599	2021-09-27 13:22:57.047693+00	2021
c1b1f394e1c115fb01994b7afbc2a43a6ab70b75	2021-09-27 13:23:02.823627+00	2022
c9197ddb0740a83d9305b41c90b905e49a1aeb82	2021-09-27 13:23:03.075749+00	2023
45eafe6b4d2fce6ff0deaf45288dd98e45bffda4	2021-09-27 13:23:08.524756+00	2024
7cb7fc5b7bb359376e7ccabdce43962d4e0fd8a5	2021-09-27 13:23:08.795803+00	2025
cacf70e58978f7a6d724243a60eaa3a9a2a30d49	2021-09-27 13:23:14.383609+00	2026
1b8a5431dfe1c93a775262bd47049050b57f4b8d	2021-09-27 13:23:14.616445+00	2027
acdd5d43571df81a26f304161233af2f8f0cde3c	2021-09-27 13:23:20.031538+00	2028
2a8dd81bb551ba84514dbc0a41e59d675545a40a	2021-09-27 13:23:20.314798+00	2029
3579b156bcfdc644e42caadee36fe00a415999ec	2021-09-27 13:23:26.35378+00	2030
6c90d392f1ece338f36166a5ee4535401ff82834	2021-09-27 13:23:26.598907+00	2031
ce1c257b937d93c79190e5a7c1d92a0ff2715a9a	2021-09-27 13:23:32.152659+00	2032
128bf646953f65255b3d07d0ae1520c7ee6678d4	2021-09-27 13:23:32.387473+00	2033
b1c2b287e94950f2b229a16cd0d3860ecd814b68	2021-09-27 13:23:38.20974+00	2034
c476d08f6c2b4cba9a5cbc5cb454aa79d8184464	2021-09-27 13:23:38.473771+00	2035
95eca1d8b21eb69b50a87d3b972999f874443581	2021-09-27 13:23:43.852803+00	2036
63195c4e204f74c5c5f7475b1397ced4ef06aaaa	2021-09-27 13:23:44.101167+00	2037
5fa5d8252a7b1d1b9890be131d7510a8f374cb47	2021-09-27 13:23:49.860739+00	2038
149494547a929a42ef1f9f92778d7116d21e2f6d	2021-09-27 13:23:50.113466+00	2039
2ddbcd07279119390f4ea5c27243007877a06580	2021-09-27 13:23:55.47348+00	2040
6a37a9ffae210d04d7dec01af2d956043a035d6f	2021-09-27 13:23:55.718375+00	2041
7a8eae835e35a4c3404e8eae6b286acab5b2c43f	2021-09-27 13:24:01.439574+00	2042
d71ebd36f04d895cabf36654159c97db897a1836	2021-09-27 13:24:01.690206+00	2043
39929066b3a0f66f223b0ee46b8d8fca75450e4e	2021-09-27 13:24:08.210493+00	2044
89873db913d611d3ca7f1d915f5cdbe21d61896f	2021-09-27 13:24:08.523396+00	2045
2aa13d2752465a27aeed125ef1b19db71e335b7f	2021-09-27 13:24:14.375643+00	2046
81c0b9449e20d0d31e1e6c0677c299663c9f4b29	2021-09-27 13:24:14.635488+00	2047
3b8d0b4450efdf13a833afb91a6ddf841cc9da4d	2021-09-27 13:24:20.381539+00	2048
37dbd44b5b54bee89b10f780b52ea537146f1418	2021-09-27 13:24:20.653878+00	2049
6bc5bb5cd65421da990802fc767bcd57d7441e94	2021-09-27 13:24:26.694843+00	2050
19bed7705a3208f356258f51c091a1ba9ba657e5	2021-09-27 13:24:27.042357+00	2051
954b07185ee4f6a06f2b8d39ed6b2b182981ddeb	2021-09-27 13:24:32.669567+00	2052
deb1d23fcfb92dc8aeba575bb1d16cec72b3e25f	2021-09-27 13:24:32.954951+00	2053
5101e7450b4fb3c1d9a33485f568c0e00fb50d4f	2021-09-27 13:24:38.991352+00	2054
37e3a865b2fc116775ac383e229d55c769225454	2021-09-27 13:24:39.228428+00	2055
2de7b2b57165f4a87825ac71f933e46b9e8e55e0	2021-09-27 13:24:44.635864+00	2056
e2b93bb16e669c6d8e5d3d27cd9a2b40ea48c1d5	2021-09-27 13:24:44.878127+00	2057
2523e127bd71ae2dc8dd82c3e0445717a886aed8	2021-09-27 13:24:51.102682+00	2058
e3535f4bee22b4de42476d7cf72f7cc968e1260a	2021-09-27 13:24:51.354738+00	2059
cc0920b007b5997eead8164ee6eda7641f6a34ac	2021-09-27 13:24:56.761761+00	2060
01f64f3629ecf8702c599ab112368411725abb89	2021-09-27 13:24:57.014176+00	2061
e95896543b7370efc54337b05da7d7925c0465d5	2021-09-27 13:25:03.200246+00	2062
692587ea1c444771faa160dbb413b47357be97b7	2021-09-27 13:25:03.483755+00	2063
8ef8bab978a6e5bf2fc188d5d79865af5e82732b	2021-09-27 13:25:08.832582+00	2064
74ec5dd1208169aa25e8f581b27e721dd2aa6b0a	2021-09-27 13:25:09.125694+00	2065
9bd42c6097a2cae6c299bf66b2d59026c596643c	2021-09-27 13:25:15.164672+00	2066
b13ff9082741b8fc8d8c6d3c2d0427c617c8aa2e	2021-09-27 13:25:15.413351+00	2067
81c5e068c430f1209649fddfb61486c9bbb01fbe	2021-09-27 13:25:20.859499+00	2068
92415585a1429c3873b04425f1b9774bceb8f625	2021-09-27 13:25:21.113373+00	2069
94da5b9b15dfb9e2109361d04b5752237873c626	2021-09-27 13:25:27.300441+00	2070
e236b3c5ebba246e901301a0885c64fa3017253a	2021-09-27 13:25:27.542103+00	2071
23b7a7efea9398914b77da2012639bf48f55efe1	2021-09-27 13:25:33.202349+00	2072
153aa4bbd7890a1a4a0be6bd5b46581ffc1aac2c	2021-09-27 13:25:33.458178+00	2073
a2983933f7ce4760a3f6685782fcfc5bf01288e4	2021-09-27 13:25:39.583868+00	2074
a06e048a65d4744a96be4009be5fa37b7b01f12d	2021-09-27 13:25:39.831393+00	2075
423a44d2549b1243afbbd807d9692a4c1ba0ea66	2021-09-27 13:25:45.53284+00	2076
1f354a7111254b92d4392fd84664d3f1f1efe4bc	2021-09-27 13:25:45.783529+00	2077
96ca1e7559a5aad9e7150d6232457da94b4a829f	2021-09-27 13:25:51.944351+00	2078
d3d9eca9fe0de590c9e00d19f0abb48f860465b3	2021-09-27 13:25:52.18041+00	2079
496925be9ca52fbb9ed7439ec54a8847028031e6	2021-09-27 13:25:57.765129+00	2080
848124c4957e4cd72cd732f18bbcb536e85df7bf	2021-09-27 13:25:57.998095+00	2081
8481b45637c308fc30927420c9350f8c021d5496	2021-09-27 13:26:04.05428+00	2082
a4ec66c8b6c77c755c621030ed3ee6f617016531	2021-09-27 13:26:04.299029+00	2083
adc017515c5ac837964e2e52ea2f6adb1f5231bd	2021-09-27 13:26:09.873547+00	2084
eea1ed05349ef9b86d36338e457bafbbcdec4b8c	2021-09-27 13:26:10.142627+00	2085
56ed6a6e1a50b44da2633d7a7f6be50767176ac9	2021-09-27 13:26:16.182973+00	2086
09f1e52b3c52b847dc84fd447d10ed2820608dd1	2021-09-27 13:26:16.428844+00	2087
affb1ad9221d8286ee65c4ebce6e5336608665ac	2021-09-27 13:26:22.079983+00	2088
29b8510ef3c5f2924acadf7d0c9facf86e265296	2021-09-27 13:26:22.33389+00	2089
bd3eb5fa53ba022b7af3e961a1cb27651aad6344	2021-09-27 13:26:28.757459+00	2090
c44c4bf23f32cc183dd3f0f53e48fe59e4925c21	2021-09-27 13:26:29.027027+00	2091
c898cbed9bae3720860df2a83b0bec2d9e4a6057	2021-09-27 13:26:34.660443+00	2092
ee7c67fcccc8a06d75cfffa407a053f62b3583de	2021-09-27 13:26:34.916174+00	2093
fde4815fb295bdc1347a37cf744a4ab587972c47	2021-09-27 13:26:41.002975+00	2094
4b6e855fbc7358d883482c81a8b68874c3d71b6d	2021-09-27 13:26:41.266393+00	2095
7008e1659adab838e1408292fe7052b756fd1d19	2021-09-27 13:26:46.832106+00	2096
a86d3634b38b94e5c24a93abbaf87833beef70a9	2021-09-27 13:26:47.057703+00	2097
cb3b1ea6dac27eea647db7fb25bf0c2a7d94b999	2021-09-27 13:26:53.358111+00	2098
0a5d275bbfaf99f1899fe51c53c480f8e34befee	2021-09-27 13:26:53.626345+00	2099
732812a5e1ed7af6bac256084717ae8781acf6a7	2021-09-27 13:26:59.277158+00	2100
393850e45d05a2e1a842e4b492a7478862639e4d	2021-09-27 13:26:59.533891+00	2101
3cb19be6cb8193c9e54badae959305f1b49834d4	2021-09-27 13:27:05.668778+00	2102
2eff5a98eec31a72b8ced32bd8ddaa9eb394049f	2021-09-27 13:27:05.931776+00	2103
041e5fabb680a9036fe4036f9faab4871f8acbb1	2021-09-27 13:27:11.601264+00	2104
f7225bdf25bd0eca897ec11147579f274d6d2a29	2021-09-27 13:27:11.865742+00	2105
70893a4954e86d6d3d8ae7012a756be0410bc6ee	2021-09-27 13:27:17.979543+00	2106
6d5e15c57369f2fbd08f7daa78ba4e29c20b4ac4	2021-09-27 13:27:18.235265+00	2107
86942387c61ea678c916993af28a20ed630ebbbc	2021-09-27 13:27:23.930658+00	2108
6290df1682bd2ee8692b3a741a715b5c0e2cf6e5	2021-09-27 13:27:24.184298+00	2109
ace7a8c82d98b8e327e6fbe02a99d1c1b75e20d4	2021-09-27 13:27:30.467059+00	2110
0972860ae8fdb8fdd985b02bf42a26416a89e05d	2021-09-27 13:27:30.741608+00	2111
d71920913aad901aa13238c94f8b8dd061353415	2021-09-27 13:27:36.339879+00	2112
34c2593780bb68b460264704f9f95774251cada6	2021-09-27 13:27:36.603906+00	2113
23b5c615723333f48005e7edf74b786892b06a98	2021-09-27 13:27:42.668738+00	2114
7e0bb00ae0a5cb564819ae4cd1f6bf5ae8ee98f0	2021-09-27 13:27:42.923433+00	2115
2065971a948e6972342e3e5dfc3c81e1b9f65349	2021-09-27 13:27:48.658718+00	2116
6def23b3021c9e3c782f1d75fa85648289c2af30	2021-09-27 13:27:48.914529+00	2117
f90c09ce0813e0276e7390046d8ca232bda88c15	2021-09-27 13:27:54.786623+00	2118
9118c18ea3586a8761e757ad6cc9621c7235f824	2021-09-27 13:27:55.065059+00	2119
583ea27fea010e9d3c1079699d30c03a065bb699	2021-09-27 13:28:00.809883+00	2120
a15960694a4eb804c8fc2b8561a9d0ba8c5eb63a	2021-09-27 13:28:01.076139+00	2121
ff0f3508a77f904404f185b458f7f5032a76bbdf	2021-09-27 13:28:06.794547+00	2122
33626c074c46aaac7adc548818f8a038f02a0501	2021-09-27 13:28:07.032989+00	2123
a67f49b6f9b8fead35c85021968639d5c0523ede	2021-09-27 13:28:12.820353+00	2124
ce35eef4b2ae1259fba4ab3dbaccfcfc0e71eab5	2021-09-27 13:28:13.076532+00	2125
e53e18d4d8ba962fa07561164e1c180ffebc4010	2021-09-27 13:28:18.88496+00	2126
810170ea5d71feae69775e878c265ac8c2763c6d	2021-09-27 13:28:19.120418+00	2127
de841b84640286462ab7922a5c05e3a883bebe6d	2021-09-27 13:28:24.789734+00	2128
4f99c6a7b50ccda29966994b772a915c6a41a82d	2021-09-27 13:28:25.042616+00	2129
8dacce7469a2bce065fb866af868916cf61d87d4	2021-09-27 13:28:30.867735+00	2130
e4391e261eac76481aa1131e0afe49516c9a3c62	2021-09-27 13:28:31.113338+00	2131
264f681877ad4fafaa961c3646e6190b5227a72d	2021-09-27 13:28:36.789611+00	2132
6639c56fa1bbc7bd5508aebf4d411b781bdf7082	2021-09-27 13:28:37.044564+00	2133
e8c0818874e451ffc60c4eca50121e3fd20fd38a	2021-09-27 13:28:42.711672+00	2134
83f360ca8712e9c4c598554eefbdcc5d8d6609e1	2021-09-27 13:28:42.946981+00	2135
c37c436c4fcda5ff208044bd90846e28af466620	2021-09-27 13:28:48.728923+00	2136
4c488c83df7ac7634882f3e624c5e5c78a614c88	2021-09-27 13:28:48.98482+00	2137
3c8450bd829390f2571b04298ec35cd4e60915b0	2021-09-27 13:28:54.765191+00	2138
94b366ea1ddf55308e62ec8eaef17b9e80eb5974	2021-09-27 13:28:55.027251+00	2139
fa78544a5df9a802258e9255bc25c0030ef72d8f	2021-09-27 13:29:00.702742+00	2140
fd4888448ca405a34d900aa3d06b0cbf8052b875	2021-09-27 13:29:00.927679+00	2141
15d0d16ffe761300be236ac73ed73ca05c1d668e	2021-09-27 13:29:06.682911+00	2142
ec13b46fb0f7bff4e0e92d2ecfa47aa6e9fa6a4d	2021-09-27 13:29:06.955661+00	2143
a12332e68e82128c4d85556bf205941329b50901	2021-09-27 13:29:12.559869+00	2144
a228772a72061621a66fad0a884ab609fc1a14eb	2021-09-27 13:29:12.809566+00	2145
134340fdfc58f119da9705fa2ebd9288520b1476	2021-09-27 13:29:18.588786+00	2146
1157bf5686dde27911f4e742fff4378245f04647	2021-09-27 13:29:18.85751+00	2147
531c6627aa0c261e2a420f7f2bf23b3634969e8d	2021-09-27 13:29:24.488774+00	2148
757c011e2d652fea2a4e3ad5b99467bcfd2db643	2021-09-27 13:29:24.754018+00	2149
19dccdb66cecfb6668572773763e55b245a36af4	2021-09-27 13:29:30.5143+00	2150
5e1b299c8493f8415ada62fbcc1dad3a1ba0476f	2021-09-27 13:29:30.761375+00	2151
8c826abaace63efcca94d9016f14292a6972f593	2021-09-27 13:29:36.462654+00	2152
fabc306c212b5192e927e6fa95e6183f40687193	2021-09-27 13:29:36.705069+00	2153
990f72f67fcb9d914b4cdb8b29ac41d4f41de475	2021-09-27 13:29:42.48291+00	2154
536d2060132c1473680951b4949d26c731b6aacb	2021-09-27 13:29:42.739473+00	2155
a19cd702e0318503eb4dce0713555aae1d68150d	2021-09-27 13:29:48.372865+00	2156
8cca6c5860c703b305231b11a7de5590a0ff1cc0	2021-09-27 13:29:48.634376+00	2157
b1eaacabbccc5523bd7d96e2c05a2f3b64c045da	2021-09-27 13:29:54.631005+00	2158
a1c6608834c9dce3ba50d7c34b6263babfd9cbfb	2021-09-27 13:29:54.885612+00	2159
16f8b5aabfa5b37eb0a2dfcb2621b20cb999f4d5	2021-09-27 13:30:00.524532+00	2160
faab7fed609bf66b25194039da8077b91f3a4c4d	2021-09-27 13:30:00.759409+00	2161
573fb5d731dc0c740c82f4b920248bcf62e8e778	2021-09-27 13:30:06.48909+00	2162
3aae3e0a7343e4e196aaa174f324e7eb2422210a	2021-09-27 13:30:06.754912+00	2163
7ced7218f7b0f7de65558ae6fed3697e153aa9e1	2021-09-27 13:30:12.578632+00	2164
26a30ea897d4e85b58ae988e2e8503c93c26da07	2021-09-27 13:30:12.830022+00	2165
637723de9f9e6b228322a19647116311cc760a1d	2021-09-27 13:30:18.632409+00	2166
8b12fefddf99b8a9a0e9f2e19532933097ed5eb1	2021-09-27 13:30:18.895172+00	2167
041d3d5efa3f7364b3f4a670c9d89b49716d8a70	2021-09-27 13:30:24.514097+00	2168
b66f75820293811da0823786bdae38ccad083a65	2021-09-27 13:30:24.758982+00	2169
4abe7113b7cad036473f52e5fcdca8930213ec97	2021-09-27 13:30:30.651521+00	2170
00ebb0c15ab6d21d9d7229e0da57904ce4719f61	2021-09-27 13:30:30.900512+00	2171
4eea9a033b617f55f70494d74988d92fb7b5c18c	2021-09-27 13:30:36.537606+00	2172
db18b09bf2d780562092b156eea66e4b2be16d24	2021-09-27 13:30:36.788748+00	2173
877594696b6cdf3242b40f9edbce5557441057b0	2021-09-27 13:30:42.58068+00	2174
1d8572bfbe4e985be93e6ca9113aae9aaf277c70	2021-09-27 13:30:42.835201+00	2175
369742feba54036a8e18c15998e61b96ff41e935	2021-09-27 13:30:48.453735+00	2176
2df7026c071708c80b8a45f519ba79e22c898603	2021-09-27 13:30:48.699985+00	2177
1c891f31dfb83bd1a484dbca775f2d1476483b35	2021-09-27 13:30:54.613772+00	2178
8742775b2d20eecdb95f796590548e30fd9bfbd9	2021-09-27 13:30:54.864133+00	2179
d88fb1de0f0b7bd0e3d5dad60df5e4acede3f3ed	2021-09-27 13:31:00.477945+00	2180
5bda549d24dd88a4706ecfcb40991ca4ce7099c6	2021-09-27 13:31:00.733077+00	2181
5e823ba42162395e2f029742230089c4bd32a71d	2021-09-27 13:31:06.513558+00	2182
a28d958759a3dfd05e588d8b2d4e5630f5890670	2021-09-27 13:31:06.768146+00	2183
3c0320e12a44ded45fccec31f42a0849d7b5500f	2021-09-27 13:31:12.599205+00	2184
129de866597d73f38c6bec94fa080297086b66bf	2021-09-27 13:31:12.855058+00	2185
8bd9f7b8bb9a1e6ab33ddaa07a95687f6987bb3d	2021-09-27 13:31:18.567656+00	2186
65cf34530588bac65cbd387d3aa42002578509c0	2021-09-27 13:31:18.84394+00	2187
89638b756c13f8d8d5490be047a705b0ee0cc238	2021-09-27 13:31:24.494655+00	2188
e6359b0d121a1a24cf64c422d9c247c03e43c7dd	2021-09-27 13:31:24.767427+00	2189
a340b8e7a0a72b170db7493458f9936933f506aa	2021-09-27 13:31:30.507606+00	2190
2d25daf9b01e3d501084e3b08019431c9dc77c4c	2021-09-27 13:31:30.764431+00	2191
631fbdaffae899a8a4ab83e17abbb522d1a78e8e	2021-09-27 13:31:36.434091+00	2192
59c5fb9407af1819554e5b7d8694d5ffe906894b	2021-09-27 13:31:36.668219+00	2193
6dd68808622d9b7fb9e203565c4b96fbd395f664	2021-09-27 13:31:42.459123+00	2194
40546247e4646dd46ae212ec9b5800d4ecaf438a	2021-09-27 13:31:42.704518+00	2195
98a0aad3787b9a9e8b5321fbb137087f953dd485	2021-09-27 13:31:48.322279+00	2196
41c91f4f62a13ee88cd40720521eddc3b2b078ea	2021-09-27 13:31:48.559427+00	2197
47eb2bae798a7e6ce9716473893ca179e33c4d7d	2021-09-27 13:31:54.356626+00	2198
8f7b285eac0bd111178274b175da7a7689f505f8	2021-09-27 13:31:54.588536+00	2199
4b9dae9ccc6d3711a011e003832971e165eac10a	2021-09-27 13:32:00.309731+00	2200
259ca58a0e56e869748ab3ad967b416e46ce2ed7	2021-09-27 13:32:00.576262+00	2201
8278bfb9c9cc81d640d5e0c3ac69a97001b8fe88	2021-09-27 13:32:06.389299+00	2202
1de9ed38446e30a94627db3060968b433948d195	2021-09-27 13:32:06.640671+00	2203
d4b9fc20d06da7b2ac2e1563b64ef87d72eb9d4f	2021-09-27 13:32:12.461503+00	2204
4c8140ca26a47d939211e7bfa111650ccbcf1f5b	2021-09-27 13:32:12.705325+00	2205
6d131f149b4681713483b5b519d094259510468e	2021-09-27 13:32:18.426608+00	2206
24391736194350196dfb88db80a29422d5f32d7a	2021-09-27 13:32:18.670443+00	2207
26049aec84a69356b596e9ebfc854cd8e4af5319	2021-09-27 13:32:24.313942+00	2208
809b2b1451d2029ea33e2d3da85bca2e7a4bb362	2021-09-27 13:32:24.559408+00	2209
e4efae5794773d943f3d3a7351e0bd7371d1bdbe	2021-09-27 13:32:30.392105+00	2210
ccec82f41030bae57ef8ecd8daa3a85d85d42825	2021-09-27 13:32:30.667331+00	2211
5a7c817745831e44c26b9a9814aa7a104c36df13	2021-09-27 13:32:36.321925+00	2212
2365e568d75d2d429285dbcaaccfa31d1a119561	2021-09-27 13:32:36.575531+00	2213
248ab227ddffadbb6224e9394dbb113f238a6896	2021-09-27 13:32:42.303879+00	2214
7a69cc4228632431f4d6a246d20bea6f95d4e893	2021-09-27 13:32:42.556227+00	2215
d94aa856cf19d40cce2b90c81ba1342def0dfe23	2021-09-27 13:32:48.174025+00	2216
207e93930dc47f31b9979e56a2a1a7ee2f85a7d7	2021-09-27 13:32:48.419944+00	2217
d4b3a33bf25c27b2c9eb9d1b8d0a80b22c41eb7c	2021-09-27 13:33:25.856563+00	2218
25ef626cdcad446478258da4e7285cca16cf5144	2021-09-27 13:33:26.115087+00	2219
425a4b77a5106e9e4d105265c7db5abcda202371	2021-09-27 13:35:14.179051+00	2220
9c27d2c2edcb096cb120ecc05e0c7016982123ae	2021-09-27 13:35:14.675281+00	2221
a8f0c8bb6a900ea3ee71ca4690f703854fdec745	2021-09-27 13:35:56.924845+00	2222
21c5ced9ecbc05bcd826a8cb4aab6bd70b3c284f	2021-09-27 13:35:57.259818+00	2223
cba719908fdc077beb59520b8bf14a6746956271	2021-09-27 13:38:13.52621+00	2224
6fc9ecb2195d84ca20124e0b74a8b2d055c5301f	2021-09-27 13:38:13.875388+00	2225
00e648cacba5132f947bba52319722988cf760dd	2021-09-27 13:40:15.346732+00	2226
543e57e428121b6e1ed5e5b65e1aa8ed195e9a3f	2021-09-27 13:40:15.607463+00	2227
198771db0ad679ef964d781b29eb1328ab7384d6	2021-09-27 13:40:35.610969+00	2228
7f107a5668c9971abe4290807410c268ce644504	2021-09-27 13:40:35.941186+00	2229
1428a94190644a41735bc5e1c1918d14ca964081	2021-09-27 13:44:32.89935+00	2230
9323b1d965d769f805f2a2c4353a104140b1ab60	2021-09-27 13:44:33.160084+00	2231
501ba6fed11eb006b4bab67b561a00faad0fd76c	2021-09-27 13:45:36.070322+00	2232
6db51a6c219b7835ad790f02701fdd6b687f7505	2021-09-27 13:45:36.37276+00	2233
0a118d1478c4d59600657d1a8bd512af5de61690	2021-09-27 13:47:45.240496+00	2234
f9550f5fa78b4d03dc93fb12518bec93e75e5f23	2021-09-27 13:47:45.480108+00	2235
261cc873d336960dc3fc610b1a1900350cb5e54b	2021-09-27 13:56:10.733633+00	2236
6a5ea83f110cd9f36b4fa3973b76a6cd031e5b6f	2021-09-27 13:56:11.024662+00	2237
b482638b8a9093b47651ec8a0a542a497ece545f	2021-09-27 13:56:40.153552+00	2238
48bb62d7eb60827f2743779c80813f1a206b725e	2021-09-27 13:56:40.413171+00	2239
7369026d64e0ed9d67f4bae2ebd94d83b0aa6a3f	2021-09-27 15:04:21.457824+00	2240
375a2af9f667fa0b2b3a4ed243828a1ef3eb719b	2021-09-27 15:04:21.697861+00	2241
544e81756feb9c1a091530cd8e2681f9b73d28c9	2021-09-27 16:41:58.507856+00	2242
60efd93cbc99b0e32f63f58c37e7764b4b716117	2021-09-27 16:41:58.702004+00	2243
83a5ca5e252a3e2b6f220d48715cc03a31229f4e	2021-09-27 16:42:03.435757+00	2244
070db6a1338b3336b819cddb162720cea0606f8c	2021-09-27 16:42:03.627817+00	2245
2827253a9191327d8065119c24ccb0adc3b528d7	2021-09-27 16:42:08.372785+00	2246
3b565607b163ff180413c2570de4cb098ba69fd6	2021-09-27 16:42:08.569931+00	2247
f7906b9521d0059ca3944b1c749838a5168b556b	2021-09-27 16:42:13.304667+00	2248
a8ae6bb5d6f30a0dda31c112ec5ab2987b48bb95	2021-09-27 16:42:13.501093+00	2249
00be57f0a65c940cbab6468a8317bfd1f088ec93	2021-09-27 16:42:18.226408+00	2250
8ae57254f4c72c8d642ebf3bf7201fcd5e579d71	2021-09-27 16:42:18.417626+00	2251
590c35e2b335a4cb85a6fbce189bbdfc39058961	2021-09-27 16:42:23.143156+00	2252
d92fdf4d45da7faf125025e70f0280426ac5c24d	2021-09-27 16:42:23.335445+00	2253
1f905c834605ec59771c0189421363a33613ac51	2021-09-27 16:42:28.051707+00	2254
43ca8aa4a7779c69c255bfcec397a3b12f3d88a5	2021-09-27 16:42:28.249982+00	2255
96f43b55596d453a2637f92cda47b555e2f79fd2	2021-09-27 16:42:32.979407+00	2256
d112be69260d08c1cb0a11f58847ff68c17c4394	2021-09-27 16:42:33.172994+00	2257
5309817818e0775233f40a0c7e792cfed19351a8	2021-09-27 16:42:37.916623+00	2258
50c9e1f92fe30f69d9f1dddad44622161f34d05c	2021-09-27 16:42:38.108149+00	2259
4543b676f35ff42dc2873133cb5896ece900cbba	2021-09-27 16:42:42.883205+00	2260
0787c77ca028e92de3cca0b1560d9a4d663218ef	2021-09-27 16:42:43.075601+00	2261
931f1822888512743b67115011f73ddb2cf03109	2021-09-27 16:42:47.779067+00	2262
796856c67e7d1878e2ae0edb566350081eb037d0	2021-09-27 16:42:47.972005+00	2263
b6ebbbca5f218b49ca5826bca4e3292ad613043a	2021-09-27 16:42:52.708443+00	2264
5ef10ff704b61b147ed4b760f75e4ddca0a26893	2021-09-27 16:42:52.905065+00	2265
99096402d3bac4b2a755f867538e13564d08f4a1	2021-09-27 16:42:57.637026+00	2266
44b9342beefd3464e14cdca4bd98bc44a866f9cb	2021-09-27 16:42:57.833666+00	2267
17227d506403001da5c86dd8171d1c51f4780db9	2021-09-27 16:43:02.557851+00	2268
4d4c7272a42d7bb4b8a550430e8941b2677ef9f3	2021-09-27 16:43:02.749857+00	2269
21d6558b1253b7c2065649c77a6b83e4500498a1	2021-09-27 16:43:07.497165+00	2270
ce0a95f32cc259210ab2b3a9ab00bbe9c0b37d0f	2021-09-27 16:43:07.720805+00	2271
af74eec0dc27277674247077b697e47da06d9da7	2021-09-27 16:43:12.432658+00	2272
d133299f3b0998284dc9c436cb83c5157ca62f6e	2021-09-27 16:43:12.627515+00	2273
d01c7e9f0946f982d70a5f9a01270a02b73d01a2	2021-09-27 16:43:17.368278+00	2274
be6ac0cc98840f96ba8b217adc99a33cf1626419	2021-09-27 16:43:17.561979+00	2275
02b2394637c65e4d83ade439e0fd1b9b200b7dd3	2021-09-27 16:43:22.268732+00	2276
3666f6b34d46125e8d5f02c458809b5d32de1333	2021-09-27 16:43:22.459796+00	2277
b7058d86ec00785841d3c69255dbbe49ef4b8c5b	2021-09-27 16:43:27.184297+00	2278
c42b57c7a87ac3a24319e4d669440247f122f59a	2021-09-27 16:43:27.375859+00	2279
74bd2c732ba8bf945ba01b6b7027c4f880e15b75	2021-09-27 16:43:32.110716+00	2280
c07f5b90580fc522b8e72bb1fa9c5ea7d296d187	2021-09-27 16:43:32.303156+00	2281
69cb49efb0e15a5e47fadbb0f3f3d97644101f7e	2021-09-27 16:43:37.033743+00	2282
9ffae0e20231540b6cbe4051e26c962547a60768	2021-09-27 16:43:37.226907+00	2283
1879ab765c3b816f6432808b3772f4876ff8b3dc	2021-09-27 16:43:41.944252+00	2284
813d167a940d5989cf3d67ac43775e9cef0e9138	2021-09-27 16:43:42.136774+00	2285
5904e9293626b4a710375418098ea4f535f8e45a	2021-09-27 16:43:46.88048+00	2286
0d01942a83673df2cb62c61d5eb660672482fa58	2021-09-27 16:43:47.071132+00	2287
80827bccafee3243cee04cdb7990eb2194d33fd0	2021-09-27 16:43:51.803941+00	2288
0942e9c40d8df7cd37f8b1ce150b2f8994c74169	2021-09-27 16:43:52.006975+00	2289
6638a4750f49b28ee03d12952537d9f0e5e92d36	2021-09-27 16:43:56.772126+00	2290
87f32ae37bea5bfe74cee06ac1ad99f429982d37	2021-09-27 16:43:56.963313+00	2291
845d7a1cd43f9f6b1d66925317dbe63638097e15	2021-09-27 16:45:38.99265+00	2292
80d74415b46bbb773fc51884815508fb5abb2674	2021-09-27 16:45:39.185643+00	2293
406e37cf9b9c0fc468344b07d8d4d8e935e08452	2021-09-27 17:31:28.995121+00	2294
edc41c6d85a2985b61623b698d0b1d5c6fcabca8	2021-09-27 17:31:29.18555+00	2295
c9130f30b46591759bc4062d2b83c019621b8ff4	2021-09-27 17:32:44.007337+00	2296
e26b67663a68b75d0f74d5f6162ae2935953a436	2021-09-27 17:32:44.200925+00	2297
51ce668a0fb4b51ad183b249b85815ce4c39a552	2021-09-27 17:37:02.359615+00	2298
12fd09d93c3b0a4e4b557c4e2cf7127b67eb74fb	2021-09-27 17:37:02.556929+00	2299
671a95d3eaa44e97ee7e9702063a0141a0631bd3	2021-09-27 17:48:31.906984+00	2300
36b597afbd373e948f9810ef3ea5c4ad003719fe	2021-09-27 17:48:32.097923+00	2301
4a43a29a21edff88d6d3cf16579c5d7f1d58ee0d	2021-09-27 17:54:24.308099+00	2302
5f28d3af2838083735ff15c535b590a8c9d50789	2021-09-27 17:54:24.499383+00	2303
408759d58dba91dbfe912fcdbcf0b743a48a42cd	2021-09-27 17:54:58.167395+00	2304
35162d506eb614719478e482b4809ee9ca9485d8	2021-09-27 17:54:58.359073+00	2305
22b9dfe806340f3ebb328e298fb76ada61477e69	2021-09-27 17:57:54.378858+00	2306
e12562b8bb8691a8c612d54c037b177b36dc4516	2021-09-27 17:57:54.583867+00	2307
d3a0b4f74e6d78e8d3f668962d678342a96d5b81	2021-09-27 17:59:03.501361+00	2308
8ed03d969b3c967136a49ef1b9933aeafbdfd4e8	2021-09-27 17:59:03.693219+00	2309
b361d3d637c87c8f0ab8a8de771a673d3b2d5b45	2021-09-27 17:59:08.500193+00	2310
8006cb1a85658491cc9f6b3caa58144a3178be1e	2021-09-27 17:59:08.690428+00	2311
cb86f374ae4cfedd167a8cda9b1eb568be367112	2021-09-27 17:59:13.724168+00	2312
40236a1aaa416e96563f2b4f594e95cc4e1b0b66	2021-09-27 17:59:13.917606+00	2313
d39e3965548d5c4fe19e3fa32ee0228fb2b51f8b	2021-09-27 17:59:18.893704+00	2314
502a223c435c6f49db5fdf739a9560cc50390acd	2021-09-27 17:59:19.106527+00	2315
1bec84dccab6c13362548dbfc65120b1eef11cb6	2021-09-27 17:59:24.267172+00	2316
8ee65237d14329b645aacdcfbc65b07483741cec	2021-09-27 17:59:24.459224+00	2317
5385e9ef65d9626a515381eddc88c206b155f5b2	2021-09-27 18:05:02.39868+00	2318
dc6352b721e1c49ac3c2408bb4fa4c4285b35572	2021-09-27 18:05:02.590854+00	2319
3c094e996246f0a31bef4e21c580ab14055a335c	2021-09-27 18:05:16.9445+00	2320
a8d89d37132de5dff16ea77679b2e454ead20fef	2021-09-27 18:05:17.150044+00	2321
ab2f54cbb9328552ca8f35a58694f16d8c940290	2021-09-27 18:06:16.930727+00	2322
ecb416bc1e09e87c3394cc5199330506bb4b87c9	2021-09-27 18:06:17.131639+00	2323
c65883be07197fb29ff6b25a4e2aaa56a733fa80	2021-09-27 18:06:28.502509+00	2324
29ecb7ceae51e00eef834d2c158e05b011ed48d8	2021-09-27 18:06:28.694354+00	2325
f10c5c40fcdeabc923bb8650cfd14e548637686a	2021-09-27 18:06:39.768964+00	2326
e195ce5f1b3c58106b99136f5b2d0a2e20ddce07	2021-09-27 18:06:39.962216+00	2327
b8f435e2b8361da0d6a09c5b417183d148954b57	2021-09-27 18:10:07.986215+00	2328
a998d6be7bc6a0571d49dcbc6838adafc91dc009	2021-09-27 18:10:08.179234+00	2329
05dfbe5c1b57a49d6d49895ebba8411287a27edb	2021-09-27 18:10:16.198271+00	110
02e8b425d1c76e3ea4e5bf8551a71b1b31eecda6	2021-09-27 18:10:25.083252+00	2330
8823e0f14d33cc8a78ba3903a043d99e9971dd4c	2021-09-27 18:10:25.279092+00	2331
de9703e140f48706be905b57eda41a063b7aaf19	2021-09-28 01:27:06.005724+00	2332
d519ed48cd6629ea2546fff0d81344beab670b08	2021-09-28 02:19:20.407202+00	2333
77777c6d3e0ea0d1a917ccf300c820bd5006db53	2021-09-28 02:19:20.59963+00	2334
b32caf691a3e9a671359f405508e190f6229880d	2021-09-28 02:19:54.232774+00	2335
479ee78025a63f8bce8b0823642163eb73684c65	2021-09-28 02:19:54.433501+00	2336
699327406b52c8f4d22c6816e870d87d3c6d466a	2021-09-28 02:39:00.220348+00	2337
8e97ea4c7ad7247a2cac1c73db5d0b301e22f321	2021-09-28 02:39:00.457994+00	2338
9550eab406e941b74f68cddc84c205b8cc9df4b1	2021-09-28 16:16:18.64782+00	51
319eef520a5f8f9760106ee64843d6cc3fc1233f	2021-09-28 17:35:50.435083+00	2339
dba6eb4a5ddca4e9ae5355e80f268f3e94c57986	2021-09-28 17:35:50.626522+00	2340
302b36baff03faf5870d2089b0ff39c0404b0695	2021-09-28 17:37:14.5876+00	2341
0063d85c77f9a122f44b1e98bb6d83e31854178e	2021-09-28 17:37:14.778285+00	2342
cc09b7f6d02245b1e14670f7d0b6aa19f390551a	2021-09-28 17:37:37.174315+00	2343
93d0af6865a66f398e816c260bb66ac0f6f6b2bf	2021-09-28 17:37:37.365065+00	2344
a1f9ca3ee7176ac9c93d3a896ce09a199437bbb8	2021-09-28 17:38:12.958414+00	2345
681003e6b857f315b8fff073ffb20c5c176b760d	2021-09-28 17:38:13.15269+00	2346
f5bfd2ae34b6403986db2ebd9f387d5df1d6dc28	2021-09-28 17:38:36.456296+00	2347
34b725311d527da0d204ed4ce2718ae3850fd2b3	2021-09-28 17:38:36.877076+00	2348
9890786e7ab7fd2c42bc9cb7bf68362cbca21b87	2021-09-28 17:39:24.631451+00	2349
9b933de4497415ca0120f2f8dcd8ee7120f2769f	2021-09-28 17:39:24.830283+00	2350
f20dab655cb461364be88ddb5d81884a7d6e0f55	2021-09-28 17:41:25.750526+00	2351
acfa6f75c8c8f0b374f3461c55648f26377d68e7	2021-09-28 17:41:25.941049+00	2352
6c2ecce37534bc7b9e8a3b4d9ecdab27567f7f48	2021-09-28 17:44:06.41716+00	2353
4a605005054b6a9dcc07bc81aa25ea044bc52271	2021-09-28 17:44:06.611664+00	2354
a0992dfb6a7a57f942c9b004182dc3a420d02d38	2021-09-28 17:44:18.662444+00	2355
fdb7cc25aa53ded68ece16c56ff83bdd747ecfe9	2021-09-28 17:44:18.854075+00	2356
3f3b4a8fc2285e43376c9d56a4b079ed467ccf1f	2021-09-28 17:45:34.411294+00	2357
313af94d5c976411e66ab286c3b442f478fa62c4	2021-09-28 17:45:34.605708+00	2358
3eac12e562a6911751f01e971afd7d070dfecad4	2021-09-28 17:46:01.337842+00	2359
9c483e3a6471194b33aef8e9b92ee7b063a227f9	2021-09-28 17:46:01.53867+00	2360
b57d4dd7e51eb8587d9b43748a050ba8d55dde8e	2021-09-28 17:46:45.109659+00	2361
c7178675d24c83d01e23a251a342ae08b8d8026d	2021-09-28 17:46:45.302521+00	2362
d5c3f6d8c964c4cb49c3db72f0f1e1b5bdf2988b	2021-09-28 17:47:13.573525+00	2363
f077b51ce026030f577f113fbbe0f5e24b7fd45e	2021-09-28 17:47:13.764845+00	2364
d8a7ceeea5fe5d77f32c127fcebd7bc5948bb22b	2021-09-28 17:49:41.436068+00	2365
57d3095441b24cb3a92060a6512f388442cf5259	2021-09-28 17:49:41.634535+00	2366
a7f982f613f0cf28a6576c52e51b547aa6c557dd	2021-09-28 17:50:45.115032+00	2367
8a74cf38e07b35e115587dc2b6963fdda6efe7c0	2021-09-28 17:50:45.309963+00	2368
929cc7ef34af7266584c611505998bdca0baecbd	2021-09-28 17:52:24.279406+00	2369
3c29559804b47b82e9c2ae0d035a0cf1193c3d30	2021-09-28 17:52:24.470365+00	2370
1e452f3fa6c8738a47f5fc79570e55d5d1af2efb	2021-09-28 17:52:40.519972+00	2371
d3557d414d75adc0ee6a0f276705a36a75ba2158	2021-09-28 17:52:40.712935+00	2372
5a2e7395a243bc59e71058a3df926f47b5dc56e3	2021-09-28 17:52:55.849208+00	2373
e7158529b8dd56a3c4a00dbe01b6d78256059be1	2021-09-28 17:52:56.0414+00	2374
e46c9c4ed65c82f69e129c1acfddbc179f42bccd	2021-09-28 17:53:14.26497+00	2375
1f8824e4eab0e1572d1fcebb2ada5268016508ef	2021-09-28 17:53:14.457551+00	2376
03a3803190d1b58491ecb10cfd6b690c76b38828	2021-09-28 17:53:28.222543+00	2377
39149e0af0eb7172683db1cc5fdbb064ed1af401	2021-09-28 17:53:28.415165+00	2378
3f37ddebd9a2234ca7e09a2efc77cbd5fc8d9352	2021-09-28 17:56:02.518148+00	2379
3ddd953aadabe70db05a848f283e066d00e1ce3a	2021-09-28 17:56:02.710966+00	2380
e655bcf69b46d0edb49cc0067f512a8ca8b9b7c6	2021-09-28 18:06:45.104242+00	2381
d75c30df27ff50ed59e6e998f1f50ee7ad44c18c	2021-09-28 18:06:45.310974+00	2382
8fffb261c8633341f4b2282ec92e60c7ea6968d7	2021-09-28 18:10:04.648976+00	2383
20751ca3cd7de1e75880d72b937611100ceb91dc	2021-09-28 18:10:04.843365+00	2384
a8b3a147ceefb40c7aad4eac8b19583e4719928a	2021-09-28 18:24:36.769409+00	2385
d9be58c4e493e0de36c96da6f65d11cb0b2b44b1	2021-09-28 18:24:37.116659+00	2386
4e051200052dce957d6e297de90547b52397ca1b	2021-09-28 18:24:53.452405+00	2387
5bbbd924efbed924c088a29e8b8a2af9605bb305	2021-09-28 18:24:53.655633+00	2388
9b42d5cdfb07e1ca016df9c87b517d89dde29412	2021-09-28 18:26:16.048883+00	2389
ac25016316214f4d016f4a8819d5f550b8b9a038	2021-09-28 18:26:16.241487+00	2390
8861439b92a9b26f4482052dfa32d71ff58c6dcc	2021-09-28 18:26:32.15325+00	2391
f5d5e0e44f4a9a57314507017a6877a5a95cb3ea	2021-09-28 18:26:32.343899+00	2392
0af1752fc8fefa6f167617b92e35b5fe782c6119	2021-09-28 19:01:46.365914+00	2393
ee456c2347198870438c12540ed799c7bf53eb8b	2021-09-28 19:01:46.559085+00	2394
8f6a918620d8c07892ea68a11cb927c8316a5471	2021-09-28 19:04:56.038923+00	2395
efd0f4d1a42f89d20124067d7dfa01176f9d694f	2021-09-28 19:04:56.233484+00	2396
311e88a80973e5ae41cb7b084791e8de1a640ac6	2021-09-28 19:05:56.753542+00	2397
f44d301d619a596aee7936b0971b5f3cdc8ca2c6	2021-09-28 19:05:56.945059+00	2398
de233a1d5792b0d92031901b44e032b769db33e5	2021-09-28 19:08:15.851187+00	2399
b4d50cfc8072b83dfa4e80e8b6c91b1bdfa9cc77	2021-09-28 19:08:16.044088+00	2400
00385b9377380af2dc63ed918681ee2504c63f97	2021-09-28 19:09:16.033749+00	2401
fffdd935b9314d82f65cc991df02c4ee340812b7	2021-09-28 19:09:16.226761+00	2402
fafd31164a16147f3aba9d98e98e52d391164f10	2021-09-28 19:11:23.731891+00	2403
4867451d63ee142df303ab93a13fc65ab2fbeaf4	2021-09-28 19:11:23.923909+00	2404
69e400be5c6d4f44b5adfe84d1c9202e99fb4246	2021-09-28 19:17:59.521874+00	2405
8c612547d6616f9dac86aff52ac4554e1cbc9c8b	2021-09-28 19:17:59.715754+00	2406
fa8cd309fc957137150f1a81ca909e5d02dab1fb	2021-09-28 19:18:53.158572+00	2407
7ec57d68984f0d0dec582525f79b407ecf62b777	2021-09-28 19:18:53.350819+00	2408
7af7dc79426a16a0c2132d942e672cebc8400879	2021-09-28 19:24:22.031799+00	2409
572b2f474432631d0e8cd581992f29e7f7d57742	2021-09-28 19:24:22.224089+00	2410
4f8992018da140d0e9ef047eee3b04cb8dbf28db	2021-09-28 19:28:17.541681+00	2411
eaab47aabdc2df270c6ed2cdd015dcdb1a85ab6f	2021-09-28 19:28:17.732184+00	2412
2f94c6cd5372b4144c5bb2cb16c9e475ed3bdf92	2021-09-28 19:34:44.059883+00	2413
6dbbfdd97c6bb5f5c672621354e7d02e20767199	2021-09-28 19:34:44.25393+00	2414
30c3ebec1321142bf4330a76d20ab6185ff96386	2021-09-28 21:02:48.004372+00	2416
0f03974d8629e1c495e16d7dfd63eb2cb52402a4	2021-09-29 01:15:33.993492+00	2417
e123306c499514edc905081ddd00e5151fe46f7f	2021-09-29 01:15:34.18657+00	2418
a3b02e6c4a7a48b095aab125f319ebfb6f3febce	2021-09-29 01:19:44.629215+00	2419
1a778d419b51b0afa9418f854b88f65bf548cbe9	2021-09-29 01:19:44.822507+00	2420
2ab910ed9a29a51782551512b5f5be27afa7d023	2021-09-29 01:19:48.447418+00	2421
f1d0921fd19eb79f926c0b5df0eefa360f43aa08	2021-09-29 01:21:59.030451+00	2422
e3055a0f430c4a67b7c6150fd927f0430f8e6e52	2021-09-29 01:21:59.222601+00	2423
7a567e3ac9ebbe1cd2b29cd0b74787b7a5713a83	2021-09-29 01:23:07.069204+00	2424
bc25b2bbdadb673aec78baf9bb042ca654d9199f	2021-09-29 01:23:07.264839+00	2425
b1aeccf49c163ae6dbea27ecabc164f583d67bb7	2021-09-29 01:24:07.486914+00	2426
37e271b67fba22afa304c3451ea060d3dbad7ff2	2021-09-29 01:24:07.679876+00	2427
d6e95ab268c908208f121ca05be6937dccf3e18d	2021-09-29 01:28:37.374063+00	2428
3c9b15f7f34b0892e2e9f48216b50190d2380026	2021-09-29 01:28:37.568178+00	2429
7584e3fb092ada8174cd5fb42a5f0eac818aaf52	2021-09-29 01:29:26.29282+00	2430
474c1a0a08d4925725ab2936e082d9aca33d27d7	2021-09-29 01:29:26.484742+00	2431
ab7705823ba8cbc3105c09e698175da29e8495b7	2021-09-29 01:30:39.711198+00	2432
cedd7187de62be65ac2e1d5f647343654632281a	2021-09-29 01:30:39.903432+00	2433
8f8f91fcbd8a4fa6cba396aa4ebb9502be2990a2	2021-09-29 01:31:29.123865+00	2434
8fbb022adb318952de3722da2c9786c3b9d4a1dc	2021-09-29 01:31:29.316778+00	2435
6d84729d24fc9fb6afc55528029fe86f6d9b1b79	2021-09-29 01:32:50.866651+00	2436
26dc2a748a77c66f912d38e63f39469dc3135e68	2021-09-29 01:32:51.062654+00	2437
7b4fcd7276b4c067b0d558be925bb286ccd0558d	2021-09-29 01:33:57.3886+00	2438
e39f9ec3e7884976e883ee18e929734c21446762	2021-09-29 01:33:57.581168+00	2439
7aac95c44ee977176c96addb636342ac4c8daf88	2021-09-29 01:36:44.37203+00	2440
9d72706ca0579a5b437d1c36ca1c218e4c774653	2021-09-29 01:36:44.565827+00	2441
b20e9ac9f93d93b10e4a395840740c42d560affe	2021-09-29 01:38:38.873793+00	2442
71c07cd8ce1b9c34bf41763a24c80256157eaee8	2021-09-29 01:38:39.066101+00	2443
749c9b2b3e4031b3feba62e7f629062b870fe785	2021-09-29 01:39:39.269502+00	2444
53be8f9555386df76ec22b71c78355e2b65291a7	2021-09-29 01:39:39.464793+00	2445
3cb5e46352efc9bf478dbb2f85308d39866230a4	2021-09-29 01:41:53.361176+00	2446
bbfeb935bb32eb1ce5bf89e8584474f413dbc811	2021-09-29 01:41:53.553871+00	2447
64668c3565109c60620313dcc47fc9d724dd8fe4	2021-09-29 01:46:11.14408+00	2448
13127e4484a8da74c59cd61e09eb684429f4cf3b	2021-09-29 01:46:11.335899+00	2449
87f2582cab110f1ce4f70c33581f83f14ad35f00	2021-09-29 01:47:40.618035+00	2450
88b4fa48111ea10dcc575b702668c8870f304f39	2021-09-29 01:47:40.811391+00	2451
c429e188326b739e2345dfac10f51852828ff6a9	2021-09-29 01:51:16.337052+00	2452
423197a08450ca0f06db3addf29dd58c117d4fff	2021-09-29 01:51:16.533168+00	2453
92dfabb090de30ea122b5994bcd53a8a4f8ced5d	2021-09-29 02:40:51.084694+00	2454
9c2c77417fc41d476284f81f501efa5329381ab9	2021-09-29 02:40:51.278223+00	2455
4c770880c8d90766dcfb851d6aee676326f74080	2021-09-29 02:41:35.268367+00	2456
a393a24895c13f0887f45e632b97108dbe192fe8	2021-09-29 02:41:35.464042+00	2457
1b7b1a27998d670c85bdd9ce136e45e731544588	2021-09-29 02:45:15.104055+00	2458
cc0fa071710f8d8808f6624137995b1aacfae276	2021-09-29 02:45:15.296084+00	2459
b05aeb875b50c5d8cbaa1b9f3b4b831cc6ed2f84	2021-09-29 02:47:55.915947+00	2460
16c52faacddfc8427aca87b483667e8fd3f7f770	2021-09-29 02:47:56.107796+00	2461
09dffe1adeab30b29377c1aba2702f057c7fba0f	2021-09-29 02:48:57.076228+00	2462
d2395c166daca96e07bed7e73afffb7d8d1ed3e3	2021-09-29 02:48:57.268701+00	2463
aaf1b728a378052c4c7a7638c5d697e236a9d851	2021-09-29 02:59:14.396397+00	2464
4e875d1bac0d7ce68a05d3cc3e5dfa6ff92eb677	2021-09-29 02:59:14.585431+00	2465
5aab4aa0dd647be802a47f17675e07a9a3bdc87d	2021-09-29 03:00:16.197947+00	2466
ff0c77a4a2a71b3a7d82cc5f8d4c4aa4f22b2712	2021-09-29 03:00:16.398477+00	2467
34640bdda52be28df47bdf0aee93e354487c47da	2021-09-29 03:02:14.779091+00	2468
9edd348817263fa40121d336940070b8d2b50627	2021-09-29 03:02:14.972695+00	2469
3864503103071f9405be637533fb5a37732fd4ca	2021-09-29 03:02:53.349801+00	2470
fae285f9a6b739e1b193dd4d6d20e659c2464486	2021-09-29 03:02:53.54584+00	2471
49f8011cc7c91b8e2370ae54d73592e3cee16581	2021-09-29 03:07:28.887908+00	2472
d6ae8f7f44eb104e29e7c5d4d7a669002369987a	2021-09-29 03:07:29.082996+00	2473
add445c41d835761e4a257157555f23da81b03f1	2021-09-29 03:13:32.854003+00	2474
a1f631ae13f606e29a066aaac38e08f0c94680dd	2021-09-29 03:13:33.04507+00	2475
03cf65d7c3b20e16fb4b55a79198bd6dd6856b16	2021-09-29 03:14:24.170424+00	2476
e2dded618636cd14348034e10db9b59d60608cc0	2021-09-29 03:14:24.3643+00	2477
99299a75b5c021a953115b4a37ff90bdce478349	2021-09-29 03:15:11.45812+00	2478
a91f34383decced3e0329ad45b8dc8a921c7f302	2021-09-29 03:15:11.651438+00	2479
32c09c0dcf7511e9e8b9735b746918af9733ac8c	2021-09-29 03:16:16.151117+00	2480
2f37a77c4db33655000b23f778bc6e863fc4b1b3	2021-09-29 03:16:16.343704+00	2481
d568efb3d8b2cefac97297a1a377325179d77155	2021-09-29 03:17:16.697751+00	2482
5e8ef4d074005a1a3ac19df269bbcc87b1b7d82b	2021-09-29 03:17:16.891205+00	2483
a1291043293e1c04c82e8d22aaccdcc68c56f49b	2021-09-29 03:22:30.791282+00	2484
7574c3976144eedfed6c274e744bb10be9f02874	2021-09-29 03:22:30.984409+00	2485
0493eec92993b5fb0ad195ce950f0149e2dcc337	2021-09-29 04:24:00.782618+00	34
40b7e2677920b6f902a1273d59cd5b389872c924	2021-09-29 05:45:00.372999+00	2486
76e432d0090fb3d80465352ca0fc95d7e361b45f	2021-09-29 05:45:00.584225+00	2487
37fb09b41175c98bf29115ba567795202532cd82	2021-09-29 05:56:15.760257+00	2488
ba1a9ba3ab95451b63217e5d9b9faba1a9d11b52	2021-09-29 05:56:15.966296+00	2489
40aa2c5d9d8e877e3ecfe1a116fe6f19fd6e2226	2021-09-29 05:58:40.935987+00	2490
9fdc8842a81d6a862914d2efc1a45df5e4c0461c	2021-09-29 05:58:41.127688+00	2491
ed3ebc5099abcd5d4a2a6d502cba824a5d4e4168	2021-09-29 06:05:20.826014+00	2492
99feaf875b463add7a9e5ed6172cef1567725f05	2021-09-29 06:05:21.019334+00	2493
5d135f3791349378a1f9dcb9f684c6d7a01dacb1	2021-09-29 06:07:03.474892+00	2494
983d14f5df530ad13f38c1039510d3f54356a862	2021-09-29 06:07:03.666698+00	2495
840cb956b6be64f1bac4c4a8e27f91904722ee78	2021-09-29 06:13:56.756203+00	2496
0c07b1e8a276072512b5e7d3763fbbf2121cfcbf	2021-09-29 06:13:57.078691+00	2497
d30200693011b1041b007c7882047466c508fab6	2021-09-29 06:33:33.266005+00	2498
86a2e5aad5ad0a8f93f687f12d74a361f0480c69	2021-09-29 06:33:33.459118+00	2499
f461327d0fe65dfcfae4d788675db405f759552f	2021-09-29 07:57:07.601999+00	2501
dfd47e4dc1a9f2d72494fa63a930c5e8b62753b8	2021-09-29 07:57:07.809401+00	2502
df4af2b6c29f152b1697d7d419173027221d74e6	2021-09-29 07:58:44.589119+00	2503
7e5b120fad4b969bf87988caef53b955a1f11036	2021-09-29 07:58:44.785453+00	2504
9d00f33a53291268821d18cf9440a39584c7125f	2021-09-29 08:02:44.441164+00	2505
1107a89dbff2f1e30a9a6902bff2f842f3e9bf46	2021-09-29 08:02:44.636402+00	2506
fba502d123d9a5c4e3e3bb6317804903b99b0b54	2021-09-29 08:07:01.260036+00	2507
706badc461cc5ef186bb61e406f8150226fc6b0a	2021-09-29 08:07:01.68878+00	2508
1dba282a36ba6bb072c62466827238e9376f9861	2021-09-29 08:10:42.116252+00	2509
1da55edcc9440fa7b57ac408ced6e62a5dc6b1e4	2021-09-29 08:10:42.308675+00	2510
824aa3e0b2ab3b757a50b5a3e278587db075a328	2021-09-29 08:12:45.283501+00	2511
de79f9542d003d93bdfbf96be0c12280f9c7ea86	2021-09-29 08:12:45.488388+00	2512
7069517abcd80a51ee3d7532cbdb35bcbdee805a	2021-09-29 08:15:44.753864+00	2513
1f5a1b66d44780bdd31b63541ebcec3fbba6b25a	2021-09-29 08:15:44.948293+00	2514
189047e4fade7aaf453597f8f2077ec54a69f569	2021-09-29 08:17:51.858517+00	2515
8f8ffcca3263305303df2ac226f7827d022753f8	2021-09-29 08:17:52.051113+00	2516
e7266134222aad9d8e3811f5deedbc1c46d94928	2021-09-29 08:21:22.791368+00	2517
1995bf4cad45ce893a846fd08b55e88317792a44	2021-09-29 08:21:22.991999+00	2518
a5dfafc349730a6499eba658c2eb28da757d02fa	2021-09-29 08:22:37.607157+00	2519
7b9142bf7de0d39484956d74b5724fa22796fee1	2021-09-29 08:22:37.922508+00	2520
27bf8563a0bb16ab7399fc971fdfa8e275e0d405	2021-09-29 08:22:58.213167+00	2521
eb11b2b67c1fe18ad786f1ac368ceb8c4ae4c147	2021-09-29 08:22:58.407291+00	2522
4c99134b94e45b8fdcd84ed2ede85ce73851888d	2021-09-29 08:24:19.067267+00	2523
bee4be4c0651347c3e82b7accf4a43396523996a	2021-09-29 08:24:19.256941+00	2524
7f8ad84b7f1a570488800cc33711b27417325365	2021-09-29 08:25:57.238817+00	2525
1c2cdb0730a24d491099fcfcec59548a9c871ebc	2021-09-29 08:25:57.434465+00	2526
6e2e2fc121fd1a02540a8a3f0632992618dceae7	2021-09-29 08:27:44.301484+00	2527
a7914cac9ae2f3df3f6dd5de5e947a6c4616352d	2021-09-29 08:27:44.494139+00	2528
e1c165205965f39a7bf37ab3378a4077d5af63cf	2021-09-29 08:29:43.889732+00	2529
210eebab99fea1d4a5682619d8fd3923afb6aed6	2021-09-29 08:29:44.08047+00	2530
5aac40a442b0e08b271f571bc294da8b84cfd0cf	2021-09-29 08:37:39.511932+00	2531
ca4c5cbeb10c0d7536a6792e7642f1421350c69f	2021-09-29 09:17:33.156854+00	2532
5b41c52047057205ee61fff4d775aac92b012ad1	2021-09-29 09:25:44.797428+00	2533
89fbe28da22551baecc4d11b22643aaa2295a285	2021-09-29 09:30:23.655566+00	2534
c50102cf813879a425dd5b5fcac15da1ccfa1d60	2021-09-29 09:35:18.433747+00	2535
72b45b89b9d4eba90efb11ea9fc207289be6b613	2021-09-29 09:37:55.439215+00	2536
d736563de2f3af1ac7e5228d195089c62ea2870c	2021-09-29 09:39:39.572083+00	2537
dc3ee4bf41530a36adcadd82c905eb5f1693f296	2021-09-29 09:39:56.018074+00	2538
936ae41f02a2e2a0ecd51092585b0a643b31e5e6	2021-09-29 09:43:34.720704+00	2539
b40469b13f73dc431419ef6c32700abd81d49f2d	2021-09-29 09:50:02.953597+00	2540
796fb6872d694c13d06838fd46d0725df36856ad	2021-09-29 09:51:35.987622+00	2541
2bd468e4fc509ce8ae6bd35ae477f2e9496a5e30	2021-09-29 09:51:49.129911+00	2542
c76bcbc938084c73574e22a5791f275ef0ca222e	2021-09-29 09:54:26.5896+00	2543
02c09e89c01c7df445e5d64b9f738b5633acf6e7	2021-09-29 09:56:14.573683+00	2544
038a216194aa4176d6947c6e1e4a5e8fe43024a8	2021-09-29 10:11:23.21398+00	2545
fdbad998e7b35eb791410c8b50d20630c6cd9e0c	2021-09-29 10:11:23.405499+00	2546
7fcaf7c1b9c0c0d57a50c317d05caeba96879b46	2021-09-29 10:20:00.50442+00	2547
d5998474dc4e60cc59e4b29afd8f20ae180823a6	2021-09-29 10:20:00.695105+00	2548
9a135522770871d0e676092b3223e8d4d19240cf	2021-09-29 10:29:05.688834+00	2549
996a805cc3a211bcc49e09c4d5b88c4e3c134e1c	2021-09-29 10:29:05.892318+00	2550
d222c467d0c75c9e0e1d85ef27392abf8bae7807	2021-09-29 10:32:28.6554+00	2551
d67e7c27af558f3fccc1fd03cab609a9b3a9c29b	2021-09-29 10:32:28.845676+00	2552
609c80fe582257e4f6ff0031b84b35e851ec6bf7	2021-09-29 10:33:16.740692+00	2553
e11ad43e12b68dc358595701f78a5eadaad7148f	2021-09-29 10:33:16.936115+00	2554
87edb237c0207488b584e7c00eb06fd9cbf3c7f9	2021-09-29 10:35:46.254201+00	2555
93f3f6394254b0e2633a5882a963da52f8881f94	2021-09-29 10:35:46.449426+00	2556
8735ff49ed1f2f20938f85e244265c55faf5a03d	2021-09-29 11:21:26.69115+00	2557
6f3347a41c0024919c4156f3d0e2f915ae40f7a6	2021-09-29 11:21:26.882353+00	2558
184b2b57b654deb70ee9d8a2006fee35547db7fd	2021-09-29 11:23:28.092882+00	2559
e1b675f74d4232feb984b1e2a4313cf7e6208290	2021-09-29 11:23:28.282997+00	2560
1032867110f890213364e3b5561f3b4762c6b42c	2021-09-29 11:26:09.409899+00	2561
d389befa7e6af9e54260d628f525c2654c88328c	2021-09-29 11:26:09.612409+00	2562
0c6a6d46cbfae9c7761546eab30677079c020f6d	2021-09-29 11:26:39.333569+00	2563
9c862c84602ca7e3d13afb8211e45fd6073a9e60	2021-09-29 11:26:39.521952+00	2564
4f29826ae5fa00ec11311c88dec15cd91a12d913	2021-09-29 11:29:46.598143+00	2565
43057cb8fcd2f3ed3c29f63fb22cb99b7003125f	2021-09-29 11:29:46.801318+00	2566
643d0a4271b0aaff5c180c50f8a842b606cb0206	2021-09-29 11:40:47.046559+00	2567
916657bbc02c45b0efaa6f0fd080cd1e0a9774b6	2021-09-29 11:40:47.237528+00	2568
214be659e86153db16fb7fb000237e4999edf863	2021-09-29 11:40:58.758938+00	2569
69559c92c5c163832fc7438742ecac79b10112c9	2021-09-29 11:40:58.952685+00	2570
645abaee032380386913ea6111e45d845ad5f4b4	2021-09-29 11:42:26.000888+00	2571
9f530cd93d2d6e99796219c2e730f0142816dca0	2021-09-29 11:42:26.191657+00	2572
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-03-16 12:44:25.755686+00	1	casino.someshwara-test.com	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	8	1
2	2021-03-16 12:44:44.246191+00	2	vijaymallya	1	[{"added": {}}]	14	1
3	2021-03-16 12:44:58.329855+00	3	niravmodi	1	[{"added": {}}]	14	1
4	2021-03-16 12:45:01.219021+00	1	Facebook login	1	[{"added": {}}]	12	1
5	2021-03-16 12:45:13.48547+00	1	Andar Bahar	1	[{"added": {}}]	15	1
6	2021-03-16 12:45:29.586549+00	1	Beginner	1	[{"added": {}}]	22	1
7	2021-03-16 12:45:32.332012+00	1	GameTable object (1)	1	[{"added": {}}]	16	1
8	2021-03-16 12:45:37.820711+00	1	GameTable object (1)	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
9	2021-03-16 12:46:07.826216+00	1	TX casino -> niravmodi (7)	1	[{"added": {}}]	18	1
10	2021-03-20 13:43:07.638542+00	3	Beginner2	2	[{"changed": {"fields": ["Title"]}}]	22	1
11	2021-03-20 13:43:16.696561+00	3	Beginner	2	[{"changed": {"fields": ["Title"]}}]	22	1
12	2021-03-20 13:43:26.44627+00	2	Beginner2	2	[{"changed": {"fields": ["Title"]}}]	22	1
14	2021-07-07 15:34:03.879321+00	13	superman	3		14	1
17	2021-07-08 13:21:28.944843+00	1	Beginner	3		22	1
18	2021-07-08 14:16:27.303428+00	2	TX casino -> +919845067969 (10)	1	[{"added": {}}]	18	1
19	2021-07-08 14:17:37.73716+00	14	+919019979582	3		14	1
20	2021-07-08 15:57:55.241665+00	3	TX casino -> +919632159466 (10000)	1	[{"added": {}}]	18	1
21	2021-07-08 15:59:06.944183+00	4	TX +919632159466 -> +919845067969 (200)	1	[{"added": {}}]	18	1
22	2021-07-10 10:29:02.106468+00	21	+91901997958	3		14	1
23	2021-07-10 10:29:38.095489+00	19	+919019979582	3		14	1
24	2021-07-10 12:24:23.938083+00	23	+919019979582	3		14	1
25	2021-07-10 12:27:06.730824+00	24	+919019979582	3		14	1
26	2021-07-10 12:36:19.317447+00	20	+919654514784	3		14	1
27	2021-08-04 09:02:19.451294+00	50		3		14	1
28	2021-08-04 18:48:12.772866+00	7	Table 2	1	[{"added": {}}]	22	1
29	2021-08-04 18:48:27.327921+00	8	Table 3	1	[{"added": {}}]	22	1
30	2021-08-04 18:48:58.642829+00	9	Table 4	1	[{"added": {}}]	22	1
31	2021-08-05 07:23:16.36667+00	3	Beginner	3		22	1
32	2021-08-05 07:26:35.226234+00	10	Table 5	1	[{"added": {}}]	22	1
33	2021-08-05 07:27:03.543438+00	11	Table 6	1	[{"added": {}}]	22	1
34	2021-08-05 07:27:27.753813+00	12	Table 6	1	[{"added": {}}]	22	1
37	2021-08-17 13:44:14.544766+00	5	TX +919632159466 -> +88001719595033 (10)	1	[{"added": {}}]	18	1
38	2021-09-08 06:01:05.021139+00	83	sashfd	1	[{"added": {}}]	14	1
39	2021-09-08 06:37:58.056847+00	31	TX +88001612378290 -> sashfd (10)	1	[{"added": {}}]	18	1
40	2021-09-08 06:39:03.556286+00	32	TX +88001612378290 -> sashfd (10)	1	[{"added": {}}]	18	1
41	2021-09-09 06:15:56.894155+00	40	TX +88001612378290 -> sashfd (0)	1	[{"added": {}}]	18	1
42	2021-09-09 06:23:27.312102+00	41	TX +88001612378290 -> sashfd (0)	1	[{"added": {}}]	18	1
43	2021-09-09 06:32:44.189996+00	42	TX +88001612378290 -> sashfd (0)	1	[{"added": {}}]	18	1
44	2021-09-09 06:34:34.98681+00	43	TX +88001612378290 -> sashfd (0)	1	[{"added": {}}]	18	1
45	2021-09-09 06:39:05.302477+00	44	TX +88001612378290 -> sashfd (0)	1	[{"added": {}}]	18	1
46	2021-09-09 06:42:11.488036+00	45	TX +88001612378290 -> sashfd (0)	1	[{"added": {}}]	18	1
47	2021-09-09 06:44:51.359954+00	46	TX +88001612378290 -> sashfd (1)	1	[{"added": {}}]	18	1
48	2021-09-09 06:48:08.93837+00	47	TX None -> None (1)	1	[{"added": {}}]	18	1
49	2021-09-09 06:51:10.853565+00	48	TX None -> None (0)	1	[{"added": {}}]	18	1
50	2021-09-09 07:53:53.074845+00	49	TX None -> None (0)	1	[{"added": {}}]	18	1
51	2021-09-09 07:59:50.854427+00	50	TX None -> None (0)	1	[{"added": {}}]	18	1
52	2021-09-09 08:02:36.838021+00	51	TX None -> None (0)	1	[{"added": {}}]	18	1
53	2021-09-09 08:05:02.328385+00	52	TX casino -> sashfd (0)	1	[{"added": {}}]	18	1
54	2021-09-09 08:07:56.031122+00	55	TX casino -> +88001612378290 (9)	1	[{"added": {}}]	18	1
55	2021-09-09 08:13:54.810406+00	56	TX casino -> sashfd (10)	1	[{"added": {}}]	18	1
56	2021-09-09 14:20:41.267434+00	57	TX casino -> sashfd (7)	1	[{"added": {}}]	18	1
58	2021-09-13 07:42:30.113358+00	89	test_user	1	[{"added": {}}]	14	1
59	2021-09-14 06:38:09.016318+00	1	Round object (1)	1	[{"added": {}}]	26	1
60	2021-09-14 06:40:39.421852+00	60	TX casino -> +88001612378290 (0)	1	[{"added": {}}]	18	1
61	2021-09-20 09:05:59.372339+00	3	Beginner2	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
62	2021-09-20 11:08:07.776494+00	3	Beginner2	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
63	2021-09-22 13:25:04.649795+00	24	Beginner2	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
64	2021-09-22 13:25:52.000028+00	24	Beginner2	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
65	2021-09-22 14:11:13.133843+00	42	Beginner2	1	[{"added": {}}]	16	1
66	2021-09-24 07:46:29.235358+00	475	test_user_1	1	[{"added": {}}]	14	1
67	2021-09-24 07:47:03.577942+00	476	test_user_2	1	[{"added": {}}]	14	1
68	2021-09-24 07:47:32.063679+00	477	test_user_4	1	[{"added": {}}]	14	1
69	2021-09-24 07:49:42.91768+00	478	test_user_3	1	[{"added": {}}]	14	1
70	2021-09-24 10:18:52.508124+00	1	ws://localhost:8765	2	[{"changed": {"fields": ["Game"]}}]	24	1
71	2021-09-24 10:22:40.449154+00	1	ws://localhost:8765	2	[{"changed": {"fields": ["Game"]}}]	24	1
72	2021-09-24 10:24:09.166937+00	1	ws://localhost:8765	2	[{"changed": {"fields": ["Game"]}}]	24	1
73	2021-09-24 11:50:31.005624+00	44	Four Player	1	[{"added": {}}]	16	1
74	2021-09-24 11:56:16.021603+00	1	ws://localhost:8765	2	[{"changed": {"fields": ["Max rooms"]}}]	24	1
75	2021-09-24 12:25:01.528773+00	1	ws://localhost:8765	2	[{"changed": {"fields": ["Max rooms"]}}]	24	1
76	2021-09-25 11:40:12.911306+00	73	TX casino -> +919632159466 (50000)	1	[{"added": {}}]	18	1
77	2021-09-25 11:47:39.758233+00	74	TX casino -> +919632159466 (20000)	1	[{"added": {}}]	18	1
78	2021-09-25 11:56:46.106446+00	506	vinaykrishna	1	[{"added": {}}]	14	1
79	2021-09-25 11:58:29.044937+00	506	vinaykrishna	2	[{"changed": {"fields": ["First name", "Last name", "Staff status", "User permissions", "Phone"]}}]	14	1
80	2021-09-25 11:59:39.58096+00	506	vinaykrishna	2	[{"changed": {"fields": ["User permissions"]}}]	14	1
81	2021-09-25 12:00:10.938389+00	506	vinaykrishna	2	[{"changed": {"fields": ["User permissions"]}}]	14	1
82	2021-09-26 08:22:03.93086+00	1	Transaction Admin	1	[{"added": {}}]	3	1
83	2021-09-26 08:23:36.719208+00	506	vinaykrishna	2	[{"changed": {"fields": ["Groups", "User permissions"]}}]	14	1
84	2021-09-26 19:24:23.384007+00	24	Beginner2	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
85	2021-09-27 03:12:03.082982+00	83	51814f36cacaeb3201e3a9fce4f66c8b9724d5b2	1	[{"added": {}}]	7	1
86	2021-09-27 03:21:30.422149+00	542	NK1	1	[{"added": {}}]	14	1
87	2021-09-27 03:21:48.699929+00	542	fea9dde38bf3a166b29b94b08e6a4e603af65b35	1	[{"added": {}}]	7	1
88	2021-09-27 03:46:17.059318+00	1	ws://localht:8765	2	[{"changed": {"fields": ["Url"]}}]	24	1
89	2021-09-27 05:23:33.718852+00	2	1000	2	[{"changed": {"fields": ["Title"]}}]	22	1
90	2021-09-27 05:24:58.55522+00	13	10000	1	[{"added": {}}]	22	1
91	2021-09-27 05:25:11.240918+00	2	1000	2	[{"changed": {"fields": ["Min currency", "Max currency"]}}]	22	1
92	2021-09-27 05:25:47.109661+00	14	1L	1	[{"added": {}}]	22	1
93	2021-09-27 05:26:09.059515+00	15	2L	1	[{"added": {}}]	22	1
94	2021-09-27 05:26:36.01131+00	16	5L	1	[{"added": {}}]	22	1
95	2021-09-27 05:27:02.000511+00	17	10L	1	[{"added": {}}]	22	1
96	2021-09-27 05:27:20.807243+00	18	20L	1	[{"added": {}}]	22	1
97	2021-09-27 05:27:36.481577+00	19	50L	1	[{"added": {}}]	22	1
98	2021-09-27 05:28:23.447409+00	20	1Cr	1	[{"added": {}}]	22	1
99	2021-09-27 13:49:48.377871+00	28	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
100	2021-09-27 14:49:19.118069+00	47	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
101	2021-09-27 15:03:46.742924+00	47	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
102	2021-09-27 17:31:10.859658+00	2	1000	2	[{"changed": {"fields": ["Max users"]}}]	22	1
103	2021-09-28 03:06:43.598546+00	1	ws://localht:8765	2	[{"changed": {"fields": ["Max rooms"]}}]	24	1
104	2021-09-28 03:09:03.441058+00	13	10000	2	[{"changed": {"fields": ["Image"]}}]	22	1
105	2021-09-28 03:09:54.27574+00	13	10000	2	[{"changed": {"fields": ["Image"]}}]	22	1
106	2021-09-28 03:14:02.472977+00	51	10000	2	[{"changed": {"fields": ["Server url"]}}]	16	1
107	2021-09-28 03:33:28.253314+00	4	Four Player	2	[{"changed": {"fields": ["Server url", "Joined users"]}}]	16	1
108	2021-09-28 03:33:51.472318+00	4	Four Player	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
109	2021-09-28 03:34:02.146947+00	4	Four Player	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
110	2021-09-28 03:35:23.375834+00	5	Beginner	2	[{"changed": {"fields": ["Server url", "Joined users"]}}]	16	1
111	2021-09-28 03:35:47.610274+00	28	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
112	2021-09-28 03:36:16.385606+00	44	Four Player	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
113	2021-09-28 03:37:00.123539+00	48	1L	2	[{"changed": {"fields": ["Server url", "Joined users"]}}]	16	1
114	2021-09-28 03:37:35.909377+00	49	1L	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
115	2021-09-28 03:38:09.558013+00	50	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
116	2021-09-28 03:38:36.218344+00	3	1000	2	[{"changed": {"fields": ["Server url"]}}]	16	1
117	2021-09-28 03:39:15.074526+00	51	10000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
118	2021-09-28 04:04:17.784504+00	1	ws://localht:8765	2	[{"changed": {"fields": ["Max rooms"]}}]	24	1
119	2021-09-28 11:41:36.023777+00	82	TX +919632159466 -> test_user (1)	3		18	1
120	2021-09-28 17:42:59.802506+00	51	10000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
121	2021-09-28 17:45:29.536632+00	52	10000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
122	2021-09-28 17:48:37.968694+00	2	1000	2	[{"changed": {"fields": ["Max users"]}}]	22	1
123	2021-09-28 17:50:33.978567+00	13	10000	2	[{"changed": {"fields": ["Max users"]}}]	22	1
124	2021-09-28 18:21:21.089962+00	3	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
125	2021-09-28 18:21:48.432924+00	50	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
126	2021-09-28 18:21:53.244333+00	49	1L	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
127	2021-09-28 18:21:58.23645+00	48	1L	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
128	2021-09-28 18:22:03.159198+00	47	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
129	2021-09-28 18:22:13.377559+00	46	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
130	2021-09-28 18:22:20.515665+00	45	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
131	2021-09-28 18:22:24.821704+00	44	Four Player	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
132	2021-09-28 18:22:28.447824+00	43	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
133	2021-09-28 18:22:31.979577+00	42	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
134	2021-09-28 18:22:36.157011+00	41	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
135	2021-09-28 18:22:45.109365+00	28	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
136	2021-09-28 18:22:49.194579+00	24	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
137	2021-09-28 18:22:54.415406+00	22	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
138	2021-09-28 18:22:59.204638+00	21	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
139	2021-09-28 18:23:04.860014+00	5	Beginner	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
140	2021-09-28 18:23:09.696524+00	4	Four Player	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
141	2021-09-28 18:23:58.456596+00	1	ws://65.1.64.12:8765	2	[{"changed": {"fields": ["Url"]}}]	24	1
142	2021-09-29 08:28:50.550154+00	51	10000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
143	2021-09-29 08:28:59.383726+00	42	1000	2	[{"changed": {"fields": ["Joined users"]}}]	16	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	authtoken	token
7	authtoken	tokenproxy
8	sites	site
9	account	emailaddress
10	account	emailconfirmation
11	socialaccount	socialaccount
12	socialaccount	socialapp
13	socialaccount	socialtoken
14	accounts	user
15	misc	game
16	misc	gametable
17	misc	reward
18	misc	transaction
19	misc	level
20	misc	invitation
21	misc	inapppurchase
22	misc	gametabletype
23	misc	gametablehistory
24	misc	realtimeserver
25	analytics	tx
26	misc	round
27	accounts	phoneverification
28	misc	thirdpartygamemakermodel
29	misc	orderid
30	rest_framework_api_key	apikey
31	misc	gameservertransaction
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-03-16 12:43:20.012282+00
2	contenttypes	0002_remove_content_type_name	2021-03-16 12:43:20.020805+00
3	auth	0001_initial	2021-03-16 12:43:20.046918+00
4	auth	0002_alter_permission_name_max_length	2021-03-16 12:43:20.072439+00
5	auth	0003_alter_user_email_max_length	2021-03-16 12:43:20.078749+00
6	auth	0004_alter_user_username_opts	2021-03-16 12:43:20.084968+00
7	auth	0005_alter_user_last_login_null	2021-03-16 12:43:20.091053+00
8	auth	0006_require_contenttypes_0002	2021-03-16 12:43:20.093562+00
9	auth	0007_alter_validators_add_error_messages	2021-03-16 12:43:20.099601+00
10	auth	0008_alter_user_username_max_length	2021-03-16 12:43:20.105614+00
11	auth	0009_alter_user_last_name_max_length	2021-03-16 12:43:20.113018+00
12	auth	0010_alter_group_name_max_length	2021-03-16 12:43:20.119197+00
13	auth	0011_update_proxy_permissions	2021-03-16 12:43:20.125288+00
14	auth	0012_alter_user_first_name_max_length	2021-03-16 12:43:20.131368+00
15	accounts	0001_initial	2021-03-16 12:43:20.155106+00
16	account	0001_initial	2021-03-16 12:43:20.204793+00
17	account	0002_email_max_length	2021-03-16 12:43:20.228007+00
18	admin	0001_initial	2021-03-16 12:43:20.244548+00
19	admin	0002_logentry_remove_auto_add	2021-03-16 12:43:20.262781+00
20	admin	0003_logentry_add_action_flag_choices	2021-03-16 12:43:20.271939+00
21	misc	0001_initial	2021-03-16 12:43:20.405967+00
22	misc	0002_auto_20210315_1327	2021-03-16 12:43:20.553847+00
23	analytics	0001_initial	2021-03-16 12:43:20.567684+00
24	authtoken	0001_initial	2021-03-16 12:43:20.592226+00
25	authtoken	0002_auto_20160226_1747	2021-03-16 12:43:20.650571+00
26	authtoken	0003_tokenproxy	2021-03-16 12:43:20.655013+00
27	sessions	0001_initial	2021-03-16 12:43:20.664403+00
28	sites	0001_initial	2021-03-16 12:43:20.677419+00
29	sites	0002_alter_domain_unique	2021-03-16 12:43:20.687099+00
30	socialaccount	0001_initial	2021-03-16 12:43:20.810724+00
31	socialaccount	0002_token_max_lengths	2021-03-16 12:43:20.865684+00
32	socialaccount	0003_extra_data_default_dict	2021-03-16 12:43:20.880087+00
33	misc	0003_realtimeserver_max_rooms	2021-03-22 09:35:26.755155+00
34	misc	0004_realtimeserver_game	2021-03-22 09:35:26.781003+00
35	accounts	0002_auto_20210614_1151	2021-06-18 07:42:46.119297+00
36	misc	0005_auto_20210614_0658	2021-06-18 07:49:00.755719+00
37	misc	0006_round	2021-06-18 07:49:00.816167+00
38	misc	0007_auto_20210614_0812	2021-06-18 07:49:00.909582+00
39	analytics	0002_tx_fix	2021-06-18 07:49:03.979483+00
40	accounts	0003_auto_20210702_1021	2021-07-07 15:27:06.518083+00
41	accounts	0004_phoneverification	2021-07-07 15:27:06.648082+00
42	accounts	0005_auto_20210702_1110	2021-07-07 15:27:06.997037+00
43	accounts	0006_auto_20210703_0829	2021-07-07 15:27:07.118096+00
44	accounts	0007_user_full_name	2021-07-07 15:27:07.233436+00
45	misc	0008_orderid_thirdpartygamemakermodel	2021-07-07 15:27:07.395025+00
46	misc	0009_orderid_response	2021-07-07 15:27:07.60207+00
47	misc	0010_auto_20210708_1318	2021-07-08 13:18:08.574406+00
48	accounts	0008_user_reference_code	2021-09-06 14:45:36.200292+00
49	accounts	0009_auto_20210907_1059	2021-09-07 10:59:22.688916+00
50	misc	0011_transaction_receiver_ref_code	2021-09-07 11:04:45.622827+00
51	misc	0012_auto_20210907_1110	2021-09-07 11:10:09.688301+00
52	misc	0013_auto_20210907_1111	2021-09-07 11:11:24.009789+00
53	misc	0014_auto_20210908_0614	2021-09-08 06:14:21.922213+00
54	misc	0015_auto_20210909_0810	2021-09-09 08:12:00.72203+00
55	misc	0016_auto_20210909_0811	2021-09-09 08:12:00.811098+00
56	misc	0017_auto_20210909_0813	2021-09-09 08:13:24.050239+00
57	accounts	0010_auto_20210913_0740	2021-09-13 07:41:04.679464+00
58	accounts	0011_auto_20210913_0749	2021-09-13 07:49:06.425943+00
59	misc	0018_transaction_bank_transaction_id	2021-09-13 10:49:57.205598+00
60	rest_framework_api_key	0001_initial	2021-09-16 13:28:13.569517+00
61	rest_framework_api_key	0002_auto_20190529_2243	2021-09-16 13:28:13.783345+00
62	rest_framework_api_key	0003_auto_20190623_1952	2021-09-16 13:28:13.9012+00
63	rest_framework_api_key	0004_prefix_hashed_key	2021-09-16 13:28:14.224691+00
64	misc	0019_gameservertransaction	2021-09-20 07:52:43.076065+00
65	misc	0020_auto_20210920_0556	2021-09-20 07:52:43.51386+00
66	misc	0021_auto_20210920_0619	2021-09-20 07:52:43.975347+00
67	misc	0022_auto_20210920_0825	2021-09-20 08:26:39.362166+00
68	misc	0023_auto_20210920_0826	2021-09-20 08:26:40.067561+00
69	misc	0024_gametabletype_max_users	2021-09-24 06:47:19.380566+00
70	misc	0025_auto_20210926_0943	2021-09-26 09:43:35.849195+00
71	misc	0026_auto_20210926_0950	2021-09-26 09:50:57.503669+00
72	misc	0025_gametabletype_reference_note	2021-09-27 05:30:06.618054+00
73	misc	0027_merge_20210927_1128	2021-09-27 11:29:03.652566+00
74	misc	0027_delete_gameservertransaction	2021-09-29 11:53:07.222822+00
75	misc	0028_merge_20210929_1216	2021-09-29 12:17:36.802938+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ga54fu4hwagkbubcusmvtw7z44evnkth	.eJxVjEEOwiAQRe_C2hBmChRcuvcMZAaoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIsQJx-N6b4yHUH6U711mRsdV1mlrsiD9rltaX8vBzu30GhXr41w5S0j5bI4xCTyTCRstaPmBRTNgyKncWoLCANgHpg7b2y6NCN2YB4fwDsETcr:1lM93V:RqQTPYpy8yrhrXEInZE2SfdtccaUBP8KWCqOGyc0RQ0	2021-03-30 12:44:13.834972+00
bmpragqm1q7bmbngjb0w0thz4nxi5qu6	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPgnV:QXT_HCgbYA-s9BlYMOQzLIogfn1uolKAQdcOBGhKO88	2021-04-09 07:22:21.451077+00
p4krwhmj6uvbqn8x3rtkn4xh1hhle5qr	.eJxVjEEOwiAQRe_C2hBmChRcuvcMZAaoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIsQJx-N6b4yHUH6U711mRsdV1mlrsiD9rltaX8vBzu30GhXr41w5S0j5bI4xCTyTCRstaPmBRTNgyKncWoLCANgHpg7b2y6NCN2YB4fwDsETcr:1lM93t:yoINrx4IotdOU5ySBvUfsnIvandt9TZWcOj8Imn9gyU	2021-03-30 12:44:37.545193+00
rhgehepyn604ah4wz2yn1xel7tdihzv0	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1lQrJN:xiIliZIsJi5rWkCLobTP30GzgPl2ZXJp1HVZd_ASZKo	2021-04-12 12:48:05.505148+00
abq1ppljoxkju6jaifes531irus8vhue	.eJxljEEKgzAQRe-StYhOTDTu6kXCOBkxNI2gSTeld6-KFEqX89789xJItOSY7JNXP3l2lh_og-hjDqH42rzxKnrRiEJYzGk-gfXun41Id46HwBAOXF6N8vy59Fbe9otj8oTJL3G4Vj-pGbd574DRrHWNgHXXKaVqSSPJqnLGGGBqNbZsAI0kVqAUSL0vGqjcxF0DKMX7A9e-TMQ:1lMBMT:Z2xtcph7YSKpqIsLCbelyWyCl1NCLjUQE7_9TSbqs60	2021-03-30 15:11:57.523007+00
348kptezlihtlxk75n6ai8mgjwrjjmk3	.eJxVjEEOwiAQRe_C2hBmChRcuvcMZAaoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIsQJx-N6b4yHUH6U711mRsdV1mlrsiD9rltaX8vBzu30GhXr41w5S0j5bI4xCTyTCRstaPmBRTNgyKncWoLCANgHpg7b2y6NCN2YB4fwDsETcr:1lNAgE:BFV4Q7mS_sV0Byqi4nhQP1i3xUOKDDv3tWhj3dmUOL4	2021-04-02 08:40:26.897226+00
0866tiqyfd8xkf8rjedmexiy4ahwvkpv	.eJxVjEEOwiAQRe_C2hBmChRcuvcMZAaoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIsQJx-N6b4yHUH6U711mRsdV1mlrsiD9rltaX8vBzu30GhXr41w5S0j5bI4xCTyTCRstaPmBRTNgyKncWoLCANgHpg7b2y6NCN2YB4fwDsETcr:1lNGHP:uBEIQeiD6XBNkzj4AeK4ILOxY8igQJTwUXWqMWx76W4	2021-04-02 14:39:11.658308+00
uhivaxt490f5ods8ut1f2svo2gkj9n0z	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lNI3J:iDZ-KujjzsBKYcHOsax_7Cz-x7Daib0rlVqLW2r7hzQ	2021-04-02 16:32:45.621414+00
nvd9cr7tkirrbpg1fv2jt3icnk17uqnm	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPRkr:rq969mvaXnB9gmy-yS7UpkRDmeFcg0BavGFsdKYkTJs	2021-04-08 15:18:37.506806+00
gm6kopa2lqvgtjksm4gz5kem2rpwh3de	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lPSyK:UHLlBZLXnhIqPSxfqnTjzE-d43pYNJ7-Nev9RhVMH4g	2021-04-08 16:36:36.873161+00
ev4n4bl7s5fl55jcksbl60k2bpc0z5dk	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lPT5F:fAsQBUIJDS0ereSTDkHoxCLU4cVEFyUykvPZcVmaWwA	2021-04-08 16:43:45.005938+00
3ovpfs5mu2mkkvwt3tulvez8puqdifck	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPTUX:_88qVnkhnDpSklSWJZyS7UsdUhFAukQFaJjXzZISV6g	2021-04-08 17:09:53.155514+00
d9p9uib8ywa84t3u08ou0idfsh1pdr89	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lPaG8:CDbnGRAW4XGXU7eMVD9HLLqKHPfiIbIekHORhkbQyqk	2021-04-09 00:23:28.672686+00
a4nhg9ue198qtk6y2h83th6fls3wnx96	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPaGL:K4J__hJALMxr7kcs_Tp8io3iDFzQRmJnhXTpWEu5fDY	2021-04-09 00:23:41.575755+00
0obzrdjlqx30n77f5dds3tkcmt7i7nuv	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lPanm:GEMo1Nd-yAlen0ItBzmttLLxR6oUuROqAK9wcpCDcO4	2021-04-09 00:58:14.293584+00
3ncyto9bc8w2spt8rxeeurzrq6t0hzfe	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPans:CZlaRQ5V0DKGRJYz9auwEItC25Dr0fvMIAOFKLzaPiY	2021-04-09 00:58:20.173049+00
12ybukj9yhndyzgfrd06vuc6goaxlbyb	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lPbuA:qgqNsMcRxpLSUCGKOVtjcedk2QXBlzDmNIfIlohcrHs	2021-04-09 02:08:54.063714+00
sbo3v2abyrqpf9x8dv06wmahl0p0wgz6	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPbuD:edOESUIgwzq96murKHiXiEsvOq0rPRi-SZMf4qpv4Jc	2021-04-09 02:08:57.204063+00
zg6o3e54245w0n1udbx0bnow986d1i4f	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lPbwj:SpRvuDDZHJUqFCGl6wyRfDoWjD2bYtX8pye7vgA9o-o	2021-04-09 02:11:33.692736+00
o1s3978mmuuo7rtu4bf5cgngqaqpa5d0	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPbwv:LtvQnwTUlnfH1VqMZB4ST8JnIkrtxNWQz6NYwGYlIBY	2021-04-09 02:11:45.307751+00
8ekhuys0fpzd8v7e3xo46y0pjuhsf5x5	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lPcG6:nagz34s27SxbO8NJhTpVwtOALo3JGmwMjTygfWMzwrQ	2021-04-09 02:31:34.505145+00
rxaopln0ps3ev4qdi8wky4g0avq2y8ab	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPcG9:IxMizIHwUYb2xa4qjSsjIKCYeZmDsC3KBR_MFEb48Tw	2021-04-09 02:31:37.597068+00
5vkijnf0oq6w9bzx7zqjkkckwig7kd1g	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lPcUJ:s6NpFNcGa6yJg3CA-KwE0IYJkSj6Ul3lteatcgLICPY	2021-04-09 02:46:15.237475+00
s5hcbzhk1y50f8kci9edwwc9povj56hz	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPdTu:_z0bkVqQ3QMgqIVP-WL96Hggts0Sk_G4CH66TvREZ98	2021-04-09 03:49:54.828131+00
2vtuwuuh557cvwf576va2qe0jotluvxj	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPeS9:22T2MVOj5Em7h5DJApg5g8j3YOSRlTC7OxFVsUp0Na4	2021-04-09 04:52:09.106358+00
0fro2utizfrku05c7qcsm0080qtcdpwi	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPhfn:UVD6LanCiRbVTneevKs06IKUgETE3LMvMTRVSsjUtJg	2021-04-09 08:18:27.382931+00
or3n1fqfoctsa306slilcr5vt9t2ajsk	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1lQrGC:uPZZwO6_tulWJpT19skgETiJiEI8FSbcgFSvTLudNtM	2021-04-12 12:44:48.343024+00
0q18wqspmv72n1arhj52mfxfn0mysrme	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPflA:ZWY5wReWMpY2Ek3inAPioeW39I0UoN8VS_jmvxsPquI	2021-04-09 06:15:52.003763+00
ht5b0wvelc34e3l8gjtczly861j2ib5j	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1lQrHT:A7-w2QcsNAv-RNewQh6KFv-2Pqzyt87hV3gdybeE6Zk	2021-04-12 12:46:07.005554+00
yib3etwy4ifidqycjlpqanjyxlexkgrf	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lPgdi:Z1usO6i_AlB2txR2AjFy6nn69NhSQAjpK3RxbMuj3Go	2021-04-09 07:12:14.729732+00
y1z2948m87huuuek7co67no90uzddvvb	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lQrWN:rQ7SMtcFcUdnfjsuzaWL8u8Ixs3tEti0CFIiRbR6DLw	2021-04-12 13:01:31.317854+00
kffqkykc3dsjq17jg1bzza3znfrps5pi	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lQrYZ:JFaDRfFGM3Fe4waV5skGXbaAuqz2BZWwzq3H9i67zYc	2021-04-12 13:03:47.085914+00
rp2w23exwkuzknq2fintn535xxfga375	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1lPmbB:vxTIu8yjrSUebiZGkk1IKjzIxwccg5DL928Z0xXyC64	2021-04-09 13:34:01.044216+00
klt9rx9qqavcktxjwxkka32rjinnxe11	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1lQsRQ:_PE43QMlkNzxc0c2k6jFPjOFWxHn7M4oG8qoRrkWfoM	2021-04-12 14:00:28.174126+00
wv4dlfxionm3a5zs4ppodjdejdbg2m1p	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1lPnNT:He_v4Xwr37XDrvhaXk8Pswm3nIOqcdWPnPN1XPSJG0k	2021-04-09 14:23:55.262015+00
is8xny2025z016kvf4x84hqdhmw4hbkg	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1lQsSb:lgrgvtuZtMPSj5VyMF5PmNjXLl0Ppz7XiewS-6LX5Gw	2021-04-12 14:01:41.282906+00
chqnby5p1kd3hzklrcsz5ql9yj2591mq	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1lQtOu:eJOzzRW2QVZ2Mc-A38Zc67E05-fxti3-sAoozQdLi_Y	2021-04-12 15:01:56.235784+00
vij95puly59rn7k5pbb6pkjuzvy6k6fa	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lRUEV:2BQsL5VQb_Jh4xMgKp44rzbclDtc-jbY-F2jv27eyKk	2021-04-14 06:21:39.655425+00
3286wlebf4sxd49uvei69o27koq3s5c4	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1lRYYg:VGhbRor1A-7peD8Fv2xEIwH6H0d3YX9SUxUNz7Mqonk	2021-04-14 10:58:46.665367+00
hbd276c4pe4l1hqiv3xzjgqo27ds9ehh	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lQ5or:64BhVY0UhPumukx5o5oPrCGeTk67MqeyFRhiog-DQ-w	2021-04-10 10:05:25.964836+00
j2fzn8ipunndcldbegmfn232o3ly5kmr	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lRmVI:J7nD7xf0dvVcwb2mpXCECGgpZcqInYEiZaLv0aM0Hq0	2021-04-15 01:52:12.145505+00
bwhai241s1j1hw79o8xuxpcwcvkss7sq	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1lQ63F:TwhhZB4-UfcY2dkK3xO5bS6f0RUEYUVrbn5MMyFUuXQ	2021-04-10 10:20:17.82516+00
pmej8oe4cjbq68vmam9c87ceepd2i7q7	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lQ9Wu:GY84p_prKBINxKQpOT1dWtbfrlp4zDFaO6z-EfpQTiI	2021-04-10 14:03:08.86666+00
kxv64583fw2dcm8sa55psmbmqnnmwb8e	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lQANt:AslLewkIVlDAwiB9Tn8DH3TjFQ9b5_107byPjixutpM	2021-04-10 14:57:53.854134+00
gs9zz5mv61fexmlh7iigmqhn23x91wr3	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lQARf:3Qig71uTRc2Ei-h9rlavSTA96bI87fn1nJzfyWUYNzY	2021-04-10 15:01:47.609616+00
adfng9me7zwv7dxca72591kgrztt8a2c	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lRsDC:sX9fhASQVXgp_vgFO4acO2Dm3GMN3LHWYiFJMnoUDpA	2021-04-15 07:57:54.753442+00
g4pvgx6xh0817b2dmv0l0sax4rtvngch	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lQAgL:I13GD6cq4k82fEsnUGFvtASS9Vg9bGyqnjxxDkXXEAk	2021-04-10 15:16:57.846985+00
061ven60hlsj4azahk54lf4mknd69xf6	.eJxVjM0OwiAQhN-FsyELXQrrTV-kWf4CsaGJpSfju9uaHvQ438x8LzHx1su0rek51SiuQilx-YWewyO1o-F5PrDkEJatdfndnPUqb3tKrdfAvS7tfr7-VIXXsnswa8zRhTT6CMQE6LxFHzWMg3EpO8Vg0khExmqETMRWqwwYHA9IUbw_3R88AQ:1lQFJp:fu-9txJXLe-b9P5sWvhAQ4bxg7PlizAQpjS2Ry5CeHQ	2021-04-10 20:14:01.930473+00
qyyld1gyw03rwhozkichkqxa4g4iv4or	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lQgof:hfWD39S2QAGsBmi3QmulHkkIR-Or7-Y4mavHwtMk9LM	2021-04-12 01:35:41.526719+00
xqalkvj9m5duuvi809g3j4ydq7l7r69x	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lQmjI:oNZ0BIAFu3wq3MIK0g-VPfV0I911W9TygVbBmrV02Hc	2021-04-12 07:54:32.245064+00
ubxlqsdukgp62nqcje36dmsq37is6bh6	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1lVT1j:mBrY140kV9CHgaXoKyjGcw2pRLNNWFL20wgJOn6EC2s	2021-04-25 05:52:55.352719+00
ai0m2xm9g31q8j54qq9wzbs9s98w2v4e	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1llyvZ:W16zhJydt-hjARDaWpVFL774PEg-JrWXOTMxR9EWNVE	2021-06-09 19:10:49.669251+00
q0l49nyavx88lfveyndk0z9j0jv5k6ou	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1lT1oR:4W8_620qr3xluw5n_UnOZjtOAsKnyNvWmN3i8Mq5iM0	2021-04-18 12:25:07.794663+00
5n74twn9zapfy9jcixvs4ykmr08ji2cs	.eJxVjMEOwiAQRP-FsyGw0hK86Y-QZVkCsaGJwKnx321ND3qcNzNvEx5Hz340fvkSxU1M4vLLAtKT61HgshxYItE6apffzVk3ed8T114Ie1nr43z9qTK2vHushmQ4TkCske0Vo9HOIrkEdtaYgiIDyqECAoqKeWY3TwGCccgqBvH-ANFJPSE:1lTbZJ:ERKxKQLWRGxglvbniCqBBYQQSTRJ4ZM_zR1JVlTwlI0	2021-04-20 02:35:53.424741+00
dzqfj5se3w0mrj2xncavn27zn6k7di8j	.eJxVjMEOwiAQRP-FsyGw0hK86Y-QZVkCsaGJwKnx321ND3qcNzNvEx5Hz340fvkSxU1M4vLLAtKT61HgshxYItE6apffzVk3ed8T114Ie1nr43z9qTK2vHushmQ4TkCske0Vo9HOIrkEdtaYgiIDyqECAoqKeWY3TwGCccgqBvH-ANFJPSE:1lU52J:vAeTIgHhkdvCucTwQswscnp7fIKfKdXcbMYhgw-YFG8	2021-04-21 10:03:47.656537+00
w6mn43kvvpkbjuk2zdn01cql6z8v8s63	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lRmr7:lmPgyjMhkD2zY6Xjv-N27uDkVrCTk4KQ9zBdTGDEjOY	2021-04-15 02:14:45.103995+00
ulxf8xtfiyv71gim0z6dlz03oxkeekjz	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1lT2CZ:zlXZ0CmwHnOKOu63-wwPqGCi2XPvUqPmiu_GImZTr4Q	2021-04-18 12:50:03.383491+00
lrhkt708hlequ8nbb499z45ii4tiibg6	.eJxVjMEOwiAQRP-FsyGw0hK86Y-QZVkCsaGJwKnx321ND3qcNzNvEx5Hz340fvkSxU1M4vLLAtKT61HgshxYItE6apffzVk3ed8T114Ie1nr43z9qTK2vHushmQ4TkCske0Vo9HOIrkEdtaYgiIDyqECAoqKeWY3TwGCccgqBvH-ANFJPSE:1lUrSN:EQrhuLF_pdYwGZ25a38tlhOLQz37wBMptwM1tUL-BNg	2021-04-23 13:45:55.870995+00
4jqfbntmcd68nt3db5f73mqkwcblsio1	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1lkrsr:yTMboWiawgSSgJ4PcZ1d2IgkXuDMehcH8AlU5U8wVVg	2021-06-06 17:27:25.064616+00
mjwhti22lpj7906g39vazoszao15vyrf	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1lU55w:Eoid18qb0Im1F0MYWNplJzYAjX0_avuBoLARur8dyoM	2021-04-21 10:07:32.947394+00
jptzsuqhvo6qft0kw23lap80tjh99f7x	.eJxVjEEOgyAQRe_C2hgcRNRdexEyDkMkpZgodNP07rXGNHE57_15b4FES0nZvngNPrCz_MQQxZhKjNXflo1XMQoSlbBY8nwAG9zOGrjCCenB6Wcwxh-uz0h9bE691bf94pQDYQ5Lup9fl9SM27x3NEqjJ_LgFSiQsjeN1qAZ5KR8A9Q66EF57IClJDP5XrWuc1oNA0nnjPh8ATT4TZM:1ltpPB:IBP8UXm12adoZ8fOVqf7WUv3frm0ta3OYA-dxRgBnoY	2021-07-01 10:37:49.560741+00
a1dkl6mfa3odzyxalh88dbrozmuw5n8c	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lRnqK:ARRrgdjq0gyqp0Ny_y1PuSSGFHbK4JLObD29Jkywkec	2021-04-15 03:18:00.331488+00
pkkl98xlu48fz3o4wlw3ldv77jvm1qfn	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1lUZmE:Ua1wIhkYr_pEgAYxQZx16aBXt9AjZmj3F3hNbTXQNOE	2021-04-22 18:53:14.11239+00
4plmlq7nef8x6xfnrt7jkk85kczfrg0p	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lRr0F:HTNQQk_5gEeqXDI1BULaahBRWY72ZwTpToUUHUTb9rg	2021-04-15 06:40:27.419116+00
3sv3iod4p1x4si5o7ojl4dr7mquhqy42	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lRs3t:sDfbFop8ax60dJq1xogR9ctSDnO2yyQvftluNfFZSsU	2021-04-15 07:48:17.499119+00
regnxcqs26biv7oroi3yv6t2bi7l1me5	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1lT1pu:LNik90sa1AhWoAInax2AlKMSF8LS_cf2Q5k2zjb3owg	2021-04-18 12:26:38.480324+00
3jdnkoqs3hgunmr768glpdf4nc5ebcyp	.eJxVjM0OwiAQhN-FsyELXQrrTV-kWf4CsaGJpSfju9uaHvQ438x8LzHx1su0rek51SiuQilx-YWewyO1o-F5PrDkEJatdfndnPUqb3tKrdfAvS7tfr7-VIXXsnswa8zRhTT6CMQE6LxFHzWMg3EpO8Vg0khExmqETMRWqwwYHA9IUbw_3R88AQ:1ll49V:R142m-2OyisqmySXKc6-47yZRRbenIuIRYx5kYKy-oM	2021-06-07 06:33:25.705945+00
ss8utp6l6cnv2ip3kw266vdee1g0a338	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1lU4oO:XFNXVU3CTOsyGHpb5Vs-rMv965665VDkbDzLbeFuR78	2021-04-21 09:49:24.828752+00
l2s2gnydmhwz6csr6otet5i7216ewqbb	.eJxVjEEOwiAQRe_C2hBmChRcuvcMZAaoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIsQJx-N6b4yHUH6U711mRsdV1mlrsiD9rltaX8vBzu30GhXr41w5S0j5bI4xCTyTCRstaPmBRTNgyKncWoLCANgHpg7b2y6NCN2YB4fwDsETcr:1lshgM:S8SYGjgJBiyCPWjyZLVkfAUv7XlGyq32k8FZ7ayMp2Q	2021-06-28 08:10:54.624066+00
rda4ii4txcqohb8ghwmxu7uz6d4eoi5t	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1lRshm:m-ahGfMQobxbMer_Yuq8RKPjPM6PKeXpF4Ljb-gLvk8	2021-04-15 08:29:30.935756+00
t59ps86krdvzhg0ejyo7ee6nf2katu6c	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1lWQM7:Nl80cWPi11LSCp3Gmm-kP1L2nk4YfcjQYsZIenruhdg	2021-04-27 21:13:55.145272+00
wsx3gyakg0ej1lgnkn47m8avinu6xbis	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1lTQiK:2pOLzGU_RpYo8MlClqdrddSC3hQdtQ6F-KkgkNk4yyE	2021-04-19 15:00:28.039068+00
tg5drw4zqtbbpy4kgsbr0e7pdzr5u2hx	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1lU4qE:gVA3eC7BcGoKau3k-PgGwpikm3tf69CyGPZna8v-nwU	2021-04-21 09:51:18.827299+00
h4wrw81d255a638yh5w6iewqaefnxvzu	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1lr4in:M7L6GmegzFr1rKRAg270Ic08b0MwDAjyLqQMkjU1ko8	2021-06-23 20:22:41.103044+00
3h6exdb3oloxxpyfldtbhsak05kgjbp8	.eJxVjMEOwiAQRP-FsyHLUgr1pj_SLAsEYkMToSfjv9uaHvQ4b2beS8y09TxvLT7nEsRVKBSXX-iJH7EeDS3LgSUxr1vt8rs56yZve4q1F6Ze1no_X3-qTC3vHkNgjeeESaNGAGeVMWgigtdJIQ8BHepEI0YAtj45PYQxGD1NDCFY8f4AvPE70Q:1lvE4H:h1M2Jgvc1Uh6ruDntucTfn--JAWyMbeMdIHgFokW4Zc	2021-07-05 07:10:01.155903+00
a0p3deyg6a8v1o4z4u6whbr9twpj5wvd	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1lTdz3:PWEe4JZdr7KrCaqnVE3n3DbbYK4EYtQ8eyaZ9moYQZ0	2021-04-20 05:10:37.036249+00
lb64nvjppv0lilb16rzhd5xwc6qew979	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1lSGDS:ipCUixC71mGjG34pq4CzDIghf8AsTjYspLWi5uyU68I	2021-04-16 09:35:46.35256+00
llsta7kkge0yitkbgfqqe1jfxnxnwdab	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1lWWmy:dRAfZo-rEaBKnzjcBevmeE4w9MycqEq8Ek6BlQg3eZ0	2021-04-28 04:06:04.911074+00
bvyk6qglfkp7gg3zfc2o7ccvh51kqfi6	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1lu8J1:HzyzI9FMraVYIUPPBFK1DvP2FZqN7BuqF05Db1do1VU	2021-07-02 06:48:43.518148+00
7hzla1z7sy4qma4krhmq0qve47ngyomt	.eJxVjMEOwiAQRP-FsyGw0hK86Y-QZVkCsaGJwKnx321ND3qcNzNvEx5Hz340fvkSxU1M4vLLAtKT61HgshxYItE6apffzVk3ed8T114Ie1nr43z9qTK2vHushmQ4TkCske0Vo9HOIrkEdtaYgiIDyqECAoqKeWY3TwGCccgqBvH-ANFJPSE:1lUSS1:i7TSXW-JNE98l9Lo-EZf1q-Ijkw2Ob5wZ-7QHAuA_6o	2021-04-22 11:03:53.488821+00
n3plpx344lrpeevsl9w14rg41s6hpnkl	.eJxVjM0OwiAQhN-FsyELXQrrTV-kWf4CsaGJpSfju9uaHvQ438x8LzHx1su0rek51SiuQilx-YWewyO1o-F5PrDkEJatdfndnPUqb3tKrdfAvS7tfr7-VIXXsnswa8zRhTT6CMQE6LxFHzWMg3EpO8Vg0khExmqETMRWqwwYHA9IUbw_3R88AQ:1lUnFl:kPJQOsqWCPM1OQIYP18b6y3abmPqR574fCznfHRc8UI	2021-04-23 09:16:37.817559+00
us0cj0dolwzzfjaytvo4shmhzvyhs1fw	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1lTfUu:d7YTRpKtSA4epx-9UmXfQE3aySR_cSGRtHo4xpjD3jU	2021-04-20 06:47:36.13702+00
h6a1ym0zpx1b4jsbztjjnwqak0sx5ktv	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1lZvCo:xL137LwW-czDWPESWMcCVu-H6rFh5B7oDrqiAAJ7Q6M	2021-05-07 12:46:46.831862+00
get2gy5nzm54dqw2445wjp7y7ynz042q	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1lUSTE:Px6rAUAsORIl6QMJXbhNsfWWm5eLFKLx3293bDx4Zkc	2021-04-22 11:05:08.231252+00
4diify1dui92afdfsj72bfxejit4whkz	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1lx77W:qHKawp0yNLmeoT-dgU8nXc6bAxXIXcExNhLBjBBGrKA	2021-07-10 12:09:10.076179+00
o6daijxc5zqmfl6aragyqwg7te9yvcof	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1lT1Xv:4OyRBr12yU80Z9h7xP-d7oXWVGu5PvSstNUbAeabuQ8	2021-04-18 12:08:03.637312+00
qpg7ga49ccvfokcbgdcwyb4oh0kd6dpa	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1lXewy:r5lCQFh5FRQQSlR1CY9Kqz1s4U2fFRHej4xX2hHsBps	2021-05-01 07:01:04.253023+00
enf5xybt50psxzpuhwe1iaj8bogytnqn	.eJxVjMEOwiAQRP-FsyGw0hK86Y-QZVkCsaGJwKnx321ND3qcNzNvEx5Hz340fvkSxU1M4vLLAtKT61HgshxYItE6apffzVk3ed8T114Ie1nr43z9qTK2vHushmQ4TkCske0Vo9HOIrkEdtaYgiIDyqECAoqKeWY3TwGCccgqBvH-ANFJPSE:1lTfbz:Bs4FtuOvwdg3p0lvDjjjgpEzBnryBNGkw-4kUtvFThQ	2021-04-20 06:54:55.507199+00
iyrixy23s689thmyfalujl21zvr2vqrc	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1lx7Zs:BXra-LCER9tJsaGBIw7SgCUvwtLEHHqGKn_kyXBxQac	2021-07-10 12:38:28.326484+00
4jwvmfo2jfu639igfmd09gnx028l5lkg	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1lUSU6:MHfubZFjglLl9w5NwicCWslYqwnVbBu_f1ov3zQiJqk	2021-04-22 11:06:02.085989+00
f4c04oifkumpnk7z41w2rrcmuvckhgwy	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1lUZac:nJU5UmfEGtjXciHw0NMffJhktkZ-pKPZXzowBXoGtEs	2021-04-22 18:41:14.132719+00
o49ly3pk6qs9nq36gdsk72rsijf1nnje	.eJxVjMEOwiAQRP-FsyGw0hK86Y-QZVkCsaGJwKnx321ND3qcNzNvEx5Hz340fvkSxU1M4vLLAtKT61HgshxYItE6apffzVk3ed8T114Ie1nr43z9qTK2vHushmQ4TkCske0Vo9HOIrkEdtaYgiIDyqECAoqKeWY3TwGCccgqBvH-ANFJPSE:1lgQLp:HsOxwSCAT4Cu1l-FIIrewDN8ulb8tkzGu6c3O5816Ak	2021-05-25 11:14:57.498162+00
0oi41mn9a584ymzeen2asz5et1uorrvd	.eJxVjMEOwiAQRP-FsyGw0hK86Y-QZVkCsaGJwKnx321ND3qcNzNvEx5Hz340fvkSxU1M4vLLAtKT61HgshxYItE6apffzVk3ed8T114Ie1nr43z9qTK2vHushmQ4TkCske0Vo9HOIrkEdtaYgiIDyqECAoqKeWY3TwGCccgqBvH-ANFJPSE:1lTgPy:e-_dtNhAfRXUWsTTbGqf23Ya05FusKWmwMXzAmkU1rI	2021-04-20 07:46:34.573646+00
zptouu9p1enj4rccd9hd968mdo193787	.eJxVjMEOwiAQRP-FsyHLUgr1pj_SLAsEYkMToSfjv9uaHvQ4b2beS8y09TxvLT7nEsRVKBSXX-iJH7EeDS3LgSUxr1vt8rs56yZve4q1F6Ze1no_X3-qTC3vHkNgjeeESaNGAGeVMWgigtdJIQ8BHepEI0YAtj45PYQxGD1NDCFY8f4AvPE70Q:1lyUfE:VxiWoAt_vcG-HEvHvYrAjF0S85gy5ks9QvsSuWpkEq8	2021-07-14 07:29:40.004984+00
yq17iczdjodvlueb6wghkcjkvrofxqpb	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1lSGsQ:FKluOV3_KLDI5o-Z9OwQHaVcHYnj1y8k7tXpwkYh-V8	2021-04-16 10:18:06.839319+00
aadlrwgf7bclszcsulm93ts6ldknxxyf	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1lTiix:kePhFCptXBByYjaAp7rwNV70I6ipY30RNlKNHjv1JxU	2021-04-20 10:14:19.100407+00
vc88wznmx1wx868x5csvwzogr09555cq	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1leeGx:X5cenTNBi2bJqFU28l1JbXMbuBI1j4IaV5wkkJcK_uk	2021-05-20 13:42:35.883074+00
zmmmatfvoq2ob58we4bh18mft3q61xs0	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lSwEt:GZKpZ49CAQhqHURvDvWFh8jQBNECi6z3amzo8ytjs1s	2021-04-18 06:28:03.910273+00
wcpvtxui8hywgw01qs9ovwlftivdffe3	.eJxVjMEOwiAQRP-FsyGw0hK86Y-QZVkCsaGJwKnx321ND3qcNzNvEx5Hz340fvkSxU1M4vLLAtKT61HgshxYItE6apffzVk3ed8T114Ie1nr43z9qTK2vHushmQ4TkCske0Vo9HOIrkEdtaYgiIDyqECAoqKeWY3TwGCccgqBvH-ANFJPSE:1lTgWk:zr5IomXFbk2-Jzr-L9LPZ79Et51YrAdTQi-CNdNGDuc	2021-04-20 07:53:34.714982+00
zs5r7v2r2e0rv2uwnpuplu3x87ttv632	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1llWTO:p3aTTXxavZup0YRQGRcckocHpNB9lpBKCaKwkSegDWI	2021-06-08 12:47:50.687668+00
z0o5celiieq0ar5ozegy677zwhj3624d	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1lghsY:LYjHDPCDT5ZPCtNpPgS1UK_7Ryw29lGIqjTYsf5Efgo	2021-05-26 05:57:54.3471+00
5d1pnc8zn9dtqcjf4idvq1tl31yd0e5x	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lTeHn:eKbd6jxpVjn5FmbUPr6LMnv_dEgmPW7Yo_bArluCwNM	2021-04-20 05:29:59.362886+00
q6lr1d0pmo05rgovl04fxmmkz4tqdu0u	.eJxVjMEOwiAQRP-FsyFAWWi92R8hy7IGYkMTCyfjv9uaHvQ4b2beSwTsLYe-8TOUJK7Cicsvi0gPrkeBy3JgiURrr01-N2e9ydueuLZC2Mpa5_P1p8q45d0DEzqLbKNLNmrGZFM0o1akYXCAymivGSb2YEzy1hOPZOIQ011ZUh7E-wO-xjw1:1lU53J:B1W0S6vh0OABvMmU62SfC8NGZ2BLnlJWwj6IhwJz3k8	2021-04-21 10:04:49.529138+00
k4pl7usor7z7mnms3u586j8pdrmxja8y	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mC9Th:9XydMBPgOm6nPfKoiUsheJHt4X_gSkbLI6jdjSEcrZM	2021-08-20 23:42:13.623479+00
z85c2jft7mtpx5eu8dzh6peyuqq642el	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1m19Yf:Uxg37w6hN6XdR3-2mtPMeKXPa95DPms_iFQj2rY2t7w	2021-07-21 15:33:53.825645+00
6311hx5n6fdivs0ud5npoa8tu8lmkjtn	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1m19nP:VTMGUeqrwrlL0HhJueY2xPBkQPmknCPhJBcz9YIooAU	2021-07-21 15:49:07.510118+00
pxp5g7dzjrpu9ukqg8f9aqhgi9bfkbov	.eJxVjMEOwiAQRP-FsyHLUgr1pj_SLAsEYkMToSfjv9uaHvQ4b2beS8y09TxvLT7nEsRVKBSXX-iJH7EeDS3LgSUxr1vt8rs56yZve4q1F6Ze1no_X3-qTC3vHkNgjeeESaNGAGeVMWgigtdJIQ8BHepEI0YAtj45PYQxGD1NDCFY8f4AvPE70Q:1m1OkX:QuncGj79fpqqrurrDsL0HGD6iXhRme5tCRqpIrSuR2Q	2021-07-22 07:47:09.518569+00
zbrx55wh40lif1bixw2gz1v6cy14oomi	.eJxVjMEOwiAQRP-FsyHLUgr1pj_SLAsEYkMToSfjv9uaHvQ4b2beS8y09TxvLT7nEsRVKBSXX-iJH7EeDS3LgSUxr1vt8rs56yZve4q1F6Ze1no_X3-qTC3vHkNgjeeESaNGAGeVMWgigtdJIQ8BHepEI0YAtj45PYQxGD1NDCFY8f4AvPE70Q:1m1Omi:FvVPvPZJQVC4E9DduzCLeJVUnmzKA5VEO1DWQEV0AqU	2021-07-22 07:49:24.320518+00
0kfqahbtdlfdzmivme88kg8n0o8p8wqk	.eJxVjMEOwiAQRP-FsyHLUgr1pj_SLAsEYkMToSfjv9uaHvQ4b2beS8y09TxvLT7nEsRVKBSXX-iJH7EeDS3LgSUxr1vt8rs56yZve4q1F6Ze1no_X3-qTC3vHkNgjeeESaNGAGeVMWgigtdJIQ8BHepEI0YAtj45PYQxGD1NDCFY8f4AvPE70Q:1m1OoO:TveICKtGnKTpJkKu3iZG8T8c2D29MlgapdIhOM5FEQY	2021-07-22 07:51:08.489494+00
50h2olqvqtdz56n38ai5gilsagev86eg	.eJxVjMEOwiAQRP-FsyHLUgr1pj_SLAsEYkMToSfjv9uaHvQ4b2beS8y09TxvLT7nEsRVKBSXX-iJH7EeDS3LgSUxr1vt8rs56yZve4q1F6Ze1no_X3-qTC3vHkNgjeeESaNGAGeVMWgigtdJIQ8BHepEI0YAtj45PYQxGD1NDCFY8f4AvPE70Q:1m1Ov0:boFG9_TcxATqgfnewwwfD4RwXZIxQV_8z5p3jVMMHR8	2021-07-22 07:57:58.123972+00
t937e5qqd4wdc11h7ozllx9ho8m1kuwv	.eJxVjMEOwiAQRP-FsyHLUgr1pj_SLAsEYkMToSfjv9uaHvQ4b2beS8y09TxvLT7nEsRVKBSXX-iJH7EeDS3LgSUxr1vt8rs56yZve4q1F6Ze1no_X3-qTC3vHkNgjeeESaNGAGeVMWgigtdJIQ8BHepEI0YAtj45PYQxGD1NDCFY8f4AvPE70Q:1m1RmX:VxQ1kCYYOs0etFtWBoQg8akZW0fF56w0uzfcw7dSL0I	2021-07-22 11:01:25.256379+00
2nbb97elkecljh2le3z0qjehit0it5nj	.eJxVjMEOwiAQRP-FsyHLUgr1pj_SLAsEYkMToSfjv9uaHvQ4b2beS8y09TxvLT7nEsRVKBSXX-iJH7EeDS3LgSUxr1vt8rs56yZve4q1F6Ze1no_X3-qTC3vHkNgjeeESaNGAGeVMWgigtdJIQ8BHepEI0YAtj45PYQxGD1NDCFY8f4AvPE70Q:1m1Ro8:mk2MUX67w_MtRlVTF1E2lUeC2aJtu9LY4-KrHKrB-jc	2021-07-22 11:03:04.06992+00
a4h7sd5yhynbyl8so3edubqttsd7usxc	.eJxVjMEOwiAQRP-FsyHLUgr1pj_SLAsEYkMToSfjv9uaHvQ4b2beS8y09TxvLT7nEsRVKBSXX-iJH7EeDS3LgSUxr1vt8rs56yZve4q1F6Ze1no_X3-qTC3vHkNgjeeESaNGAGeVMWgigtdJIQ8BHepEI0YAtj45PYQxGD1NDCFY8f4AvPE70Q:1m1SKT:VdV4gCOSUZGPHq_cNiVTfzygUfyj2udspFcvJUetzNo	2021-07-22 11:36:29.442755+00
zhlgs70dunoz17nfahbwh3azp4v2eth4	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1m1TeJ:4KOVTatgfiVrb2m7H9oRXEMARQE7d2UBfbExwmSse-s	2021-07-22 13:01:03.072127+00
erhi6arrpozspo05qw6q15ip89immz8e	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1m1TqI:eyI4tD5EdqWcbaB50ECbqPbmjJT7Q8E4cqd1x2HtNBw	2021-07-22 13:13:26.277236+00
ylsdxyvd0b2fxlefgqih6cpml07msk4d	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1m1UhO:smME2XNzI5xAIxmJEN-8Bhm-VMjGIBLSWyVr2rA7flQ	2021-07-22 14:08:18.237694+00
et0uktnaicaq9tt6m5tsfa86eyrazu6i	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1m2ACw:K3-GzHl6MboRgNSKF9Uey4B2URwdg9VbLgxC_a78I0Q	2021-07-24 10:27:38.176581+00
4743l2n7wdef94zn21sj05tmg6aunmef	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1m2D1l:YqG8a_JiQ99pvMddGy_i12YFAyS5RjU8aPUXOPCoYEs	2021-07-24 13:28:17.564203+00
h2wsjdhi3ep7ryoy91yqltqf151h8y7e	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1m69Md:uB7_R_4nK18Jw8UdUO_TAGwukxrNoLqVNIcZ3FQP9Pw	2021-08-04 10:22:07.570018+00
smwr8agbfzvkvpx20k6rl1o8zcck5zms	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1m6B0i:PCJVOb7vD021wQZi1lWDrTsLMJOmkDlXJrSEKmlL-_w	2021-08-04 12:07:36.776557+00
01ifgcpwtyon28eu0q13e77khbueu0oq	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1m6B4n:EYebQ--6-Fb7uC9Yn3KTmngLjXI_xXeAk4tjIBevys0	2021-08-04 12:11:49.400806+00
fy8298po9z18y3fm8bd7lsx43wjchjft	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1m6CG0:qQ8ElGlfLR8EwZc8aYf0407CsCJZPw_ZeJisUjb2EuU	2021-08-04 13:27:28.040739+00
m1s4ppajmg5kvsfd4c86c0ho40q0s4cg	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1m6RFG:_x3J2qQzCgftlCGy46l_IyVkBk2Kbh53fJyWw7rzScA	2021-08-05 05:27:42.164246+00
2ksr7yyvevrjx0ly88jh5rd57pabu4ol	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1m6UMq:A9auMZeN_1somr3z6hujJj9PbRxur2V50gOCgS3yQpo	2021-08-05 08:47:44.415009+00
5dzd326al7aop08mxjx0hag1y01n5mbj	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1m6X1m:ATV76cjPRK1ctunVCY2cigg8QJ9uOexmTeJGYJp8hus	2021-08-05 11:38:10.182895+00
o6ybs57y8o246pq2x3mnme47h4je7hrk	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1m8IvA:DmjnQbiG5d7IztTO3RhotexOueqTfQrBAUvAvxgXLnY	2021-08-10 08:58:40.946019+00
qeubmgfzdovqh5euh98h8mr5qg08fusp	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1m8LTQ:VrD95Fu_OhOeqHZOxi23zqmEphESwAdo_BxvHwbszhg	2021-08-10 11:42:12.205796+00
0hs3y8nzqf4cc71wkytrvy69xis8tr9o	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1m8Rax:sqyRZy8t9ZYtvTN8EnNAEeRPq9pfdq_YEGdqt4YX1L4	2021-08-10 18:14:23.215794+00
i35m9xefad4ybe7fi3xr3d5u9nllhgq5	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1m8fI0:R7zkGzf3GKJeF_OHVXuamfGmLKpHt3Kyj6_baBOOPzE	2021-08-11 08:51:44.362641+00
h14y9c7s3p2mzchkqwdtiua1tcez8ccb	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1m8gBz:nqzrUdE-QhU7A19H_pBoFjF9X_M_qeIQxrVd5qAQmis	2021-08-11 09:49:35.243833+00
u5wq3ss3ku7esxes5fxpn8zzpzqxkcv5	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1mCPkj:GxJHpeVYMWlDVooKnyE9W_bCJ4-gv1gUFqCmZgRU1LY	2021-08-21 17:04:53.009854+00
cqro5u5vhbcenq8fa5zbrljsf65fopg4	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1m8nOS:EEtdT8AyHkUhmu1Q1zrkaRcRZE_YKqNqbk_GfR0TKN8	2021-08-11 17:30:56.829942+00
9wiz8ds3vizfhqctar9dwgx9e9bpgcvi	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1mCRuQ:NiwgZ37LTCRW6z9m_Jroq0ZJ5SapBN2-bhXYeh9m6wA	2021-08-21 19:23:02.279631+00
0fz5fpfv3pxiwjmvt7xl8uo1powm18c3	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1m9227:dmCEnUm6PaLIHijRdInTr-x1oBXOLKsukCQbYL6yiEo	2021-08-12 09:08:51.155974+00
if02d76iiqwgtqbnjuzbyfctrx1mstjn	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1mAxLe:86sq5vdmSDYFuJXe_UcG1bO6z0Z9m68hiDPRhbqHQNY	2021-08-17 16:32:58.472154+00
7n4qhmj54k4sjphxl3f7ahbn8ybpfh1e	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mCS0U:IDDS8IXjHg-lbRkCYInuvXLZYFpr3UBLbYkBq0jpG64	2021-08-21 19:29:18.833086+00
1ox7qzs8ld7cspa7diftvkvb3e8vgie8	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1mBBQ2:rCawxr4qGWz5LNBKiHq83n24UdxB3MgUTOogiNSKUsY	2021-08-18 07:34:26.886627+00
ap44ki9mmvfrlnrt1d1l3bi1xbevq644	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mBCdC:hJnPX7Mr3JVLhhQUgm0o7rperxCKtSrm6EO-sDsv1bM	2021-08-18 08:52:06.41559+00
utphb0y3frkzq69jiyjqg4ot5rz15r4r	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mCayS:axKxszjH4U8mx4lcbb7WdavXEB-omIIqELq3tU5zMQ0	2021-08-22 05:03:48.402167+00
lt1ob60rltyuh79pneqrlnhs7onj95bl	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1mBL8Q:SAurc0iMixHDpfKd4Ti2q5zp1f8QioXbbTZ-fVzSLW4	2021-08-18 17:56:54.485122+00
r9d7e3tu2ukx84uvbaa34n3zu51f9f54	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mBLtv:azSVgDco9gyPFDEZAWWeFWAWJCyRvM1QfnXU4x6ozxM	2021-08-18 18:45:59.32164+00
kuhn3wva62mdwy0ddahlbw2t7n2j3p1z	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1mCccT:f2-q9U_krSC2VcLdtBBy5vatJ_syR5VX2Hwwmt0ZvAo	2021-08-22 06:49:13.151247+00
fmg7sd0fi7df6mysgbdjw0nvgff3gpab	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mBLvB:E8vrRhWYQhVHjAczWIrYnRvUY8gLvrWgMTsGb0mo-As	2021-08-18 18:47:17.908357+00
of7qizpekoutvp95hvnko5qq1u2u6cr2	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mBXx2:AJdFnyCvN-NAforBfti55U6MaKQtyVBDpzc19v6Iae0	2021-08-19 07:38:00.158049+00
2dp1i77blz69bjhpwiutjuvzc3vuysio	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1mD6qk:WHlzK__QYO3izn-dfH7RtRNoXaWYp2SxPHOBk9RYAMs	2021-08-23 15:05:58.674595+00
fms6huv1sfu5ibv5kjr7fk2ars45ij92	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mBbo1:fvXrXqf_yGoy3aviE5piiMENyLAbUxBcOrZWTnYoz10	2021-08-19 11:44:57.53608+00
cka5dnzw0x0fbok46f14t23b8y9ydwo3	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1mBbva:i00lT7ukZXWQD_1x45sTMQuC9BUASahgaHJpf3oEsnc	2021-08-19 11:52:46.971975+00
5pl48x9u3388riug3vvdqnoe4n29hv53	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mBcKr:tqKIyGIOV_VTM8anXoiP-6elZ0Lsi8uxQdc--1VN-so	2021-08-19 12:18:53.005217+00
upgrraxlb37w3v234ucf7kj4yq3giptd	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mBed5:RyABbp2EiuP9_h3M2w19FUtQEuJ9GQYgx7JBlwtc9YI	2021-08-19 14:45:51.991713+00
442h4jrm36mgp3i6rn4tk36z6ny1zoiv	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mBetL:iIG8WbwKvLpkeTMvXAMY6TiFSrzdfK8nu0JxfuDfkcQ	2021-08-19 15:02:39.301354+00
em7yn0ir6i021fvs08xvte1on1b5eqyh	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mBf1l:UpJXG3Oro2w559KHEjTOV4viZunz1lElfEjUbFaoKmk	2021-08-19 15:11:21.613138+00
g6v3n23nodv0i72tvcvqf996ue51l6gy	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mBgIu:geKyUzxx_uy1N0sx9k0XPN9PGF2P0gP-tWekCoiuxqs	2021-08-19 16:33:08.598668+00
u8xppbtv4gdnf1v3xi79xkycvbm2onqj	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1mC4hx:cUcZfQJT-mbhQhn_8y4HeSekvULIt57Cp1qJWtaQyoI	2021-08-20 18:36:37.961916+00
94ad9uhcw2mrjkpif0vi3e4pokajl6rl	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1mC4la:NLOk0dTDC_0NrZgs6PqPlk5rCV6Zg_ODIRqoZev68C0	2021-08-20 18:40:22.817769+00
ensmjmlpj75d5havknaq5bxxnzao1ebu	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1mDB5P:DAlEM6HVUfyvCF4NRYHQ54g9DN3ghbzVaX9d_XTJ9aY	2021-08-23 19:37:23.264709+00
pqs5w7cr4vgh9abiuj90qdw997va4w1i	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mT1vL:HJOCw3-KR82Neut4NvrjvaFwaxqt6xrwZ2pHaPePapc	2021-10-06 13:04:31.88824+00
8i18s4qlwqamsykgccux1osf924bsiip	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mDB6p:wd4Qd-euTO1xT0ZzVHjeAqmiCNyBn29ojCVv9tS1cE0	2021-08-23 19:38:51.449985+00
tu82l5t1c4pb1v3by86duc5k4h6a7nwj	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mU5xw:AvN_Fyh8t-6EHlKVF-mkgH0l2Oii24wIN_7TRb3Onpw	2021-10-09 11:35:36.949471+00
wep192281r6qedihrkx9d5ffjkupmahk	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mDC9Y:2wILqOk_h_2jvJJ3Ik4u12t-vuq0IlkEnnrtnNr23F8	2021-08-23 20:45:44.251303+00
opiq2lso32ladyx17ohpg3udmtrr7dah	.eJxVjEEOgjAQRe_StWnagamtS_ecgUxnBosaSCisjHdXEha6_e-9_zI9bWvpt6pLP4q5GHTBnH7XTPzQaUdyp-k2W56ndRmz3RV70Gq7WfR5Pdy_g0K1fGtPCb1D5ACSABNzaInd4NsmJxLXAsYGfFaVRgHOoOKYcowuAAwo5v0BF_k38g:1mU6Kb:FZTggpvBceGFQXiQRbr1QP2dB_dJxHOWuP6H9nlFTSM	2021-10-09 11:59:01.509749+00
spdjkfbrdcsjdg18mx3qonjv4q88iwdl	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1mDCB9:rbDRazDJiXHspGco2xxBV4d1cDnXBjys8RlW0kixHnA	2021-08-23 20:47:23.980994+00
6vns08d0ibpzvaixdygf91eqn261kfes	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mDJSo:99yX1kUIAB8khmFaVR8sC8XNqf1XYAxO0h3iC63q19M	2021-08-24 04:34:06.483603+00
hcqs9ucfbb7jaklgenf31sc0lldm3ym6	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1mDU6p:paaHpLeNxJZH_TYvxYQi5IS2FCmitzv9TWztU2_CijQ	2021-08-24 15:56:07.414527+00
d8vb9gbg8mfehf1hsi946es0y5vottvh	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mUMWg:9fFgzVDl4__I7__-v30GfOWQtriEcJ9ZwkqbqBbXWNY	2021-10-10 05:16:34.948998+00
sy1cifuu6xswyrnmfbqd85ngrj0f2obh	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1mEGIq:NnsedXmYiuAr4Xo0jcKEJGas0cMDsW4Fnb8kipXBQLk	2021-08-26 19:23:44.378475+00
dyqlyvv3rc78aa6n5cqrh5xobt7qp57g	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mEJN3:FmSq0Gz8IYCYmMbfC8tODEKm-SrDf1jLN-Vset2IHqE	2021-08-26 22:40:17.173126+00
9ogiliwkkzvnsfwtwy0ml1meoz1vorsd	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mUNei:Zs7QexphxA76L2hLYo55F_Yws3DaMNoZXWO3aU0VaV4	2021-10-10 06:28:56.860671+00
5na6ol6e7mwtkjoiuwnigfxo0azgdej5	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1mEKrz:bOZ1DW5A_JEVd_0Ml4uINN19ezQ0WPPaQlAOIrhjjWs	2021-08-27 00:16:19.765637+00
5cho0vtgwxf8xfk63ppeyn60gmvkc4uk	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mUONr:yfxZGLHyozBLuwZoZVo7LINPwcsIcncrss4TvvxHoJA	2021-10-10 07:15:35.040933+00
rtytyqqq65mfdjo5aizsz0nmhjz68d0r	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mERVy:yGNOuBsCSooNvI8eE7JF1hlFhVgfExPGsc7SonDxll8	2021-08-27 07:22:02.173574+00
vyjqvvccby7f76qtkpj5mvi4xy0jsvxk	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mUh11:M7xwzOKnK1-pOXHEe9aRxb6sKb1i-38EeV4jIscsFuY	2021-10-11 03:09:15.46616+00
ps9frfj9htt9til8vxir3fusa7abdaya	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1mEYl2:Cb50RWMvx50hb0KwjOhYq7zc5ZHJYw4grhyHcmHZbjk	2021-08-27 15:06:04.97319+00
hlx3pm9rnut8vam8106mp1otjgd76iqj	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mEmU1:TkVIw0uvcQiQJM-zycu7BhM5-Pay4lMlZtwvj_7T8jk	2021-08-28 05:45:25.241047+00
gusa93bttt4wgu8326jqbznh846t0akk	.eJxVjEEOgjAQRe_StWnagamtS_ecgUxnBosaSCisjHdXEha6_e-9_zI9bWvpt6pLP4q5GHTBnH7XTPzQaUdyp-k2W56ndRmz3RV70Gq7WfR5Pdy_g0K1fGtPCb1D5ACSABNzaInd4NsmJxLXAsYGfFaVRgHOoOKYcowuAAwo5v0BF_k38g:1mV4eh:BbnVvD6eY18E1FOwYRbt4_ynKFhPMZzLu5x3JGUd-yE	2021-10-12 04:23:47.476386+00
014k0xdi5u2uc5mvwslpqkfbg7hypywr	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mEn1M:PHGP9CNIrLyBT0M7v_lgGv4-oZU8dZmi1GFBa34_Tck	2021-08-28 06:19:52.782236+00
vabumcus2v1gbc1czkj2gojdq50egen8	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1mEn1j:LPipfyHrLigOfMyUUsO0iDWW3wrVJBbdqOrDBYVcsHc	2021-08-28 06:20:15.66467+00
f825mngkwvus4o5mjvh8vbnk78kdet8t	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1mEo3i:hTyyXALTYVjWS3aT0lUtnbisYm8KlX8cTQ77m2hKrC0	2021-08-28 07:26:22.177274+00
viyli50fxg66ugn7jwu7ndq36tplq9x2	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mF8s0:k2yIzvIyD2s3uGjsqdz65q71EaCiW64c88bi3WwnntU	2021-08-29 05:39:40.97802+00
a6rcehmbthqgbcy2wlawuxpc6jwmp34h	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1mF8t5:DhWOXQ5vzNRARJB7peyjsJ5IoefTyqnd2ZBpWQsPPpw	2021-08-29 05:40:47.280272+00
d1yc1ygu3mkgdsvfyxcy7sjjr94yxg8c	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mF9uN:zLJrOO2v9PSfvwNTQUFZsuxWAWF6Q_QKOV8MwTbP32k	2021-08-29 06:46:11.205616+00
j3wjquq3x84vju694b4g4q8gvvji1e8n	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mFGSX:sRiWxAhWMHmPWsubxTye5BJOAq4fupDeE6DpLdRyK8c	2021-08-29 13:45:53.910952+00
j4w7kz978b5gxi9gx5iu0y9zhz2xolfl	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1mFGT5:PS_wjC1Iy4KLRxEEu03d0otJNDXDIjk7LG-FDkw_p3M	2021-08-29 13:46:27.185344+00
xurm8qoffdasz57cv4uzuv9hcuum7w8f	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mFGWg:QRwEZLG5U_zjbjsgiWvsngueixDuSU9SpM18Xcj9N-U	2021-08-29 13:50:10.874328+00
wubb8vw9m2o4yot4pzl3fbr0xx2a3l0c	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1mFGYo:uFqwNXUanIfnJBAzzc8EKLMSqRInIle3iaT7oaoXItc	2021-08-29 13:52:22.808763+00
5mrhrnkl4bxp2nwkmrc58jyotn4foxtc	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mFywt:ZQ1VjAujIKK1yzFDvXdyIs4T9P-rGq_uAfDZwCh1-uU	2021-08-31 13:16:11.054982+00
xwjc9z4eoz3811mqf0f15p5oomg0cv9q	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mGDKk:jvPZFLGPso5BoCz7Etbe39aufOo9cWyNOMyt1eP3P94	2021-09-01 04:37:46.166507+00
0li2x06z6gdxcpksnrt2k7uhhajvskm1	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1mGEvv:0carXZHoynVy8UOXitl1sipmyGNnm2YAopJ17C55Bv8	2021-09-01 06:20:15.806008+00
234wxvbwuh0mh5o611ofmq8ct3gam1tk	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mGEx5:G5YWOiOCXgMihqjvOfG2jzaCYsQVsqv4Mha2jvMQhNw	2021-09-01 06:21:27.100546+00
3484ejt7xrz6kfxvjgflfbpps9738p24	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mGJTQ:2EmLEUvlJX1jwuPzUvhTzllRgyN0oRYwUNULTD-zPF8	2021-09-01 11:11:08.924445+00
kxrfcs16vxrys7q5o405a7gm3woqh01n	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mGLXv:AFlSRJtY7lQrMg7UDRifFcdnUcaED_UkmhhwQs7n5lY	2021-09-01 13:23:55.357398+00
ri8vjyu303ilmug4g37qx54cncs4tlm8	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1mGN8n:CdbohtvoiFfNK0m589o0CKrCjoqkd8ejCEDsNtxN_Rc	2021-09-01 15:06:05.814546+00
25hyby8o1jrbi43xasyupy8z7sv81x2c	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1mGdX0:DI5FK2zs1pWSfx9xf7mXT4zrGW9Fqd1BuBHhi6Hf48E	2021-09-02 08:36:10.273682+00
rlm5f6g5vmpg9iyr7y51ujcktq1y2omg	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mGeFj:CKTrdCxAzNh-fiHqfF-DfGBKl7NFaOVTYziT6TMDZtQ	2021-09-02 09:22:23.796647+00
ye6ee2dm6s6nlk6pcjj4g33ofi27w0mm	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mIHJw:VR86iSRAnPeTjTohvurmiqQozVV8KvFp4hunP9zoUyA	2021-09-06 21:17:28.916697+00
ygxefb6yun5fi38vjtneo1ami88u0hm4	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1mIHLF:LFiJMer5esRjP38ODMSJTYi5STxV4-ianBRqU7PfyLU	2021-09-06 21:18:49.463914+00
tlzcjtce389f2jhimx0m4l68cdzy2inb	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mINJ7:uCrBBnr1es3ZCCUlKwY7LDxoKFY-cC_eRoQzB19oX5g	2021-09-07 03:41:01.269875+00
uysyj757ty6h974l41depwdcmkhbjw3k	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mIyie:lOV4-DGIN1vGOkShy1uXM2tuVwPDdcya45FMkiH3wMo	2021-09-08 19:37:52.55453+00
8be328hus6gr6fc0uelb8ggzfey3xlan	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1mIylq:SaFDufmAc_5HHCPFHPTuVYGC-c938XiBtqZLCnsZ0kU	2021-09-08 19:41:10.906297+00
rfa7vmgzgieb6iwco9j11v8mt94vw1zg	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1mIynw:qdyDQyDrR9uFdMzItCDfBCTBBWKRGGvuTt6RLekyUe0	2021-09-08 19:43:20.840398+00
s2ruormxcuov1g8gmpqjags1td07pzge	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1mJ4cD:U0lJYdXTTOHzHxUI_nb72NkAE6txDR7yFfeYW82akt0	2021-09-09 01:55:37.751902+00
dzczucc89du2nurjb16c99tu2v2inr64	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mJ6yf:kfKkH_VDi31A5uR-R8es-A-hX6Evz2E-qsyT7AcR9dg	2021-09-09 04:26:57.80079+00
cbajhek3uef9s91gtg61yrg4xvygdxje	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1mJ6zs:yYPouFICKpLrMsWn0aomyaQg0ykShs8EES0_XSG91s8	2021-09-09 04:28:12.697679+00
7a4ihvggxqq9vhn3puip2pe60c38ybrp	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mJ75u:khwXhep53d1gFf1mNhrNWIqxdxH-hxdG35HzHQKVovE	2021-09-09 04:34:26.604943+00
vfvtlabrin4r099jla0ascprzspbq8n9	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1mJ85d:HXsq4eBHlHcwV3f6sOquJKWoV5YpdLfonZ-NjQuDv3Y	2021-09-09 05:38:13.953939+00
0djylqsa2eimd0h241w2n3gzlyg3bsfe	.eJxVjM0OwiAQhN-Fs2lg-WnxZl-EbJc1EBuaWDgZ311qetDjzDffvETAVlNoOz9DjuIqjLj8dgvSg8sBcF2PekCirZU6fDcn3odbT1xqJqx5K_Np_V0l3FP_Ae_YOYWAapqstUrTQlrK6L0HptHhyB7Qa2IL1oJ23TAg450nA6jF-wOTITsx:1mJUE8:N7quyyVKYCarF7pqjlNZoWbCp7NOGzIz11FCJ5cTQDM	2021-09-10 05:16:28.495757+00
ox370j4fb8gos1da56atn7c1d1jmcpgc	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mJV1Y:idGKuu98NcTPtuJC_4RfpFPY6oo3Sci09QxVm2y1mA8	2021-09-10 06:07:32.646706+00
8poaujojs42is35r1z1kar7v36q6x1g1	.eJxVjEEOwiAURO_C2hAKlvLd6UWa-Z8mbWxoIrBqvLvUdKHLeW9mdjWilnmseXqNS1Q3FdTllzHkOaVDYF0PrCGy1VT0t3PqrO8tTaksgrJs6XGu_q5m5Ln9DJGoD8ZxiCKdt1cDDp4EwgCs435wYmEcwRERt6IPlqOxPgDcqfcHwe08bQ:1mJqcM:TKEmmhnxnfoHykMboMh3r7K4X-UHwDve8eoLMr6abbM	2021-09-11 05:10:58.254167+00
yl6mhx7j45lm2uw1zvi2dl1ntqxsvokz	.eJxVjMEOwiAQRP-FsyEgW2i92R8hy7IEYkMTCyfjv9uaHvQ4b2beS3jsLfu-8dOXKG5CK3H5hQHpwfVocFkOLJFo7bXJ7-asN3nfE9dWCFtZ63y-_lQZt7x7YFBJa-uGUYWriQg2qcgjB0PRcEJCZ6ZgeLJAI8QUACIzQmAgpzGJ9wfuzj3A:1mJqhl:nF6SXvdKSEJh2c1AAmeHRjgfxed-Cl9g5LV4kNrc5Fo	2021-09-11 05:16:33.188411+00
jk4l8bvcz38rykxvwqzsx4usydkpwqs4	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mJrWv:4sNLs5tK1omeyj2-RTUV9x6SUdq_WEhYTVFNukITORk	2021-09-11 06:09:25.439298+00
mjp3pd949gsd4moqpr1ad6art0xtrq1z	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mJrii:l1HiL9ABcmqcYEqBsPF5lGO2hnoKchrj8v6uN2aPwCE	2021-09-11 06:21:36.597421+00
4yzqpg1bi0p2p3s360w7yhl7wl85umkr	.eJxVjMsOwiAURP-FtSE8LA939kfI5XIJxIYmQlfGf7c1XehyzsycFwuwjRK2Ts9QE7sxzy6_LAI-qB0FLMuBOSCuWxv8uznrzu97ojYqwqhrm8_Xn6pAL7tnysp5a9Eor7QkCSli1sJFQXbKiZSEbAGF1JqiE4qMFuRVjFcHyWXD3h_Arjym:1mJrvN:4PkfD0YtBDO4kcDFruAHf7qCVjjG4B8AZloRQTVUCJ4	2021-09-11 06:34:41.815996+00
xzhp7sgjyntrbhy1esj8tfvu1c0qtnmx	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mJsFE:WkIexqcMP2HgIP9RsVjmMwPx32qAdu3dxShqMTjssu0	2021-09-11 06:55:12.528015+00
gdz6b7ryoqjr63r202jsbddfdehb60qg	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mN6oZ:frLuFJfp3DwjZMVm4fxizUN1JpXDtngpxoYZWGblAKU	2021-09-20 05:05:03.506259+00
8h50lv6cqdbqfwc10jmoxluep13lcrii	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mN90D:8meK4bZONWkmNCQbkQa_me98ags-2NTDfNTJfNay-Gs	2021-09-20 07:25:13.619461+00
97eywr10prmbn7vzmdlavuqzuduuopw0	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mNFyv:zYIZ24DAKj7CJKFtZTALqu0H30ZjJP38HG4Dtulea7I	2021-09-20 14:52:21.900083+00
sxbpromrdx37vkm9gl0bgdfl8c3wnojj	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mNU1o:-qVE5vtkPs9EZbbosYPiFZNH72BhynKIvlIp_eePow4	2021-09-21 05:52:16.903051+00
byug01o1i83e0sqo6fk8oaep4vwwp3jo	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mNUXW:gx8Xscjc2JfRwe-qRU8sinVr3up4jUS9TVWFrpRB0PQ	2021-09-21 06:25:02.97688+00
9h803iabx6jbeui50154fn6vl7ha3cj1	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mODKr:m9bKZJEf5QH_OpRoLaI271ayuRPQunVhJeaLFRWHgeg	2021-09-23 06:14:57.769982+00
d2bce2s0qbmkwclkgc8e1c0m4oqpwawc	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mOOjy:T9xp7dNSk3hrZg2s7PGeWg05ms3UTddxFyGUiAFnWW8	2021-09-23 18:25:38.51747+00
o283ir4i7fgn8bgbdwzsr7xw0t8czk54	.eJxVjMEOwiAQRP-Fs2koKQvrTX-ELLuQEhuaWDgZ_93W9KDHeTPzXipQb3PoW3qGIuqqnLr8skj8SPUoaFkOPBDz2msbvpuz3obbnlJthamVtd7P159qpm3ePdFYAi_T5DNkxCxRRvTWj4KZE4IB1uAsihjOJo5ZAEUnFzU7EQD1_gDQIz0I:1mPT2u:kWtr2qi-e1hawZ1ik4hUgm0bTgPXnOBR5HuF0dbgS1E	2021-09-26 17:13:36.281822+00
9m27s2jhctexqdy7aazom83xwbddl47i	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mPfNO:YbD4RfaYyGCY2yiRNEeSgj0mU6z5uNVHn8pJwEYCQ-w	2021-09-27 06:23:34.032217+00
67c55hd7e8250n0vjtjyw3ep1zzefrfe	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mQET9:uW-kG9jDZrQC-RslB8nJhH71OvJkhUu-fNSzDZ0YYyY	2021-09-28 19:51:51.883584+00
zdirujxz5w7ll89khd275q22xifsaq4s	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mQrUn:Vsyf_yQaXDurjZLyHmnIAbXkJeTayQCJ_P8rah31Ap4	2021-09-30 13:32:09.682015+00
prgrg47631edp71x0adv8zw5wzzjkjwh	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mSCZC:OxqfJoUdkMpwm0QXbRcyh3fFA9wtz23K4pofR2KiMdY	2021-10-04 06:14:14.935446+00
bnb35kg1u12dc9jgh2exa4iwjnrbwvs7	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mSE6k:beny-saHuKcT3lEvQPmNomk1bm73Zw8h40GB82IGLzM	2021-10-04 07:52:58.890584+00
xi7h5ruyi6bg4bqr540xt7va8y4rf9av	.eJxVjMsOwiAQRf-FtSEMjwIu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmwE6_W8T0yG0HdMd26zz1ti5z5LvCDzr4tVN-Xg7376DiqN_ae4i5QAJtjBFFuYLOGpIuTUISGW2V0FRyss4bJdELBR7QuiKkLjix9wfNvDce:1mScjL:SBb2szv7sdtSucAi41GYQVNYwRjsXdrOuVLUUpOLWrc	2021-10-05 10:10:27.290769+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.django_site (id, domain, name) FROM stdin;
1	casino.someshwara-test.com	casino.someshwara-test.com
\.


--
-- Data for Name: misc_game; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_game (id, title, description, winning_percentage, image, created_at) FROM stdin;
1	Andar Bahar	\N	0.5	\N	2021-03-16 12:45:13.484316+00
2	Poker	\N	0.6	https://demossga.s3.ap-south-1.amazonaws.com/temp/casino/Poker.png	2021-03-19 16:53:47.395762+00
3	Teen Patti	\N	0.6	https://demossga.s3.ap-south-1.amazonaws.com/temp/casino/Poker.png	2021-07-07 16:17:26.990243+00
4	Ludo	\N	0.6	https://demossga.s3.ap-south-1.amazonaws.com/temp/casino/Poker.png	2021-07-07 16:17:36.146613+00
\.


--
-- Data for Name: misc_gametable; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_gametable (id, is_closed, game_table_type_id, created_at, server_url_id) FROM stdin;
42	f	2	2021-09-22 14:11:13.130354+00	1
53	f	2	2021-09-28 17:35:49.741527+00	1
52	f	13	2021-09-28 04:04:35.955595+00	1
3	f	2	2021-06-21 07:46:53.997988+00	1
50	f	2	2021-09-27 17:31:27.942637+00	1
49	f	14	2021-09-27 11:12:34.30322+00	1
48	f	14	2021-09-27 11:12:34.295635+00	1
47	f	2	2021-09-24 11:56:40.438257+00	1
46	f	2	2021-09-24 11:56:25.094179+00	1
45	f	2	2021-09-24 11:55:21.530977+00	1
44	f	6	2021-09-24 11:50:30.945195+00	1
43	f	2	2021-09-24 10:20:42.357211+00	1
41	f	2	2021-09-22 06:26:53.962155+00	1
51	f	13	2021-09-28 02:39:10.410679+00	1
28	f	2	2021-09-21 18:42:36.530304+00	1
24	f	2	2021-09-21 18:34:52.156355+00	1
22	f	2	2021-09-21 18:30:08.163756+00	1
21	f	2	2021-09-21 18:26:02.735246+00	1
5	f	5	2021-07-07 16:22:21.46666+00	1
4	f	6	2021-07-07 16:20:44.84599+00	1
\.


--
-- Data for Name: misc_gametable_joined_users; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_gametable_joined_users (id, gametable_id, user_id) FROM stdin;
\.


--
-- Data for Name: misc_gametablehistory; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_gametablehistory (id, data, game_table_id, created_at) FROM stdin;
\.


--
-- Data for Name: misc_gametabletype; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_gametabletype (id, title, image, min_currency, max_currency, created_at, game_id, extra_1, extra_2, extra_3, max_users, reference_note) FROM stdin;
5	Beginner	http://pathtoimage.com	10000000	20000000	2021-07-07 16:18:46.598357+00	3	\N	\N	\N	4	\N
6	Four Player	http://pathtoimage.com	10000000	20000000	2021-07-07 16:18:52.895363+00	4	\N	\N	\N	4	\N
7	Table 2	\N	500	5000	2021-08-04 18:48:12.771525+00	2	20	\N	\N	4	\N
8	Table 3	\N	1000	10000	2021-08-04 18:48:27.32683+00	2	40	\N	\N	4	\N
9	Table 4	\N	2500	25000	2021-08-04 18:48:58.641167+00	2	100	\N	\N	4	\N
10	Table 5	\N	5000	50000	2021-08-05 07:26:35.224948+00	2	200	\N	\N	4	\N
11	Table 6	\N	10000	100000	2021-08-05 07:27:03.54226+00	2	400	\N	\N	4	\N
12	Table 6	\N	25000	250000	2021-08-05 07:27:27.752616+00	2	1000	\N	\N	4	\N
14	1L	\N	100000	0	2021-09-27 05:25:47.108554+00	1	\N	\N	\N	4	\N
15	2L	\N	200000	0	2021-09-27 05:26:09.058345+00	1	\N	\N	\N	4	\N
16	5L	\N	500000	0	2021-09-27 05:26:36.01001+00	1	\N	\N	\N	4	\N
17	10L	\N	1000000	0	2021-09-27 05:27:01.998826+00	1	\N	\N	\N	4	\N
18	20L	\N	2000000	0	2021-09-27 05:27:20.805647+00	1	\N	\N	\N	4	\N
19	50L	\N	5000000	0	2021-09-27 05:27:36.480391+00	1	\N	\N	\N	4	\N
20	1Cr	\N	10000000	0	2021-09-27 05:28:23.446326+00	1	\N	\N	\N	4	\N
2	1000	http://pathtoimage.com	1000	0	2021-03-19 14:20:18.041234+00	1	\N	\N	\N	5	
13	10000	\N	10000	0	2021-09-27 05:24:58.552209+00	1	\N	\N	\N	5	
\.


--
-- Data for Name: misc_inapppurchase; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_inapppurchase (id, title, image, sku, reward, game_id, created_at) FROM stdin;
\.


--
-- Data for Name: misc_invitation; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_invitation (id, created_at, receiver_id, sender_id) FROM stdin;
\.


--
-- Data for Name: misc_level; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_level (id, number, points, reward, game_id, created_at) FROM stdin;
\.


--
-- Data for Name: misc_orderid; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_orderid (id, order_id, game_maker_id, transaction_id, response) FROM stdin;
\.


--
-- Data for Name: misc_realtimeserver; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_realtimeserver (id, url, is_closed, created_at, max_rooms, game_id) FROM stdin;
1	ws://65.1.64.12:8765	f	2021-03-19 14:34:58.075561+00	20	1
\.


--
-- Data for Name: misc_reward; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_reward (id, title, amount, created_at) FROM stdin;
\.


--
-- Data for Name: misc_round; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_round (id, result, created_at, game_table_id) FROM stdin;
1	{"result": "winner"}	2021-09-14 06:38:08.899505+00	4
2	\N	2021-09-22 14:08:29.339033+00	24
3	\N	2021-09-22 14:08:32.315069+00	24
4	\N	2021-09-22 14:08:34.033557+00	24
5	{"won": "Player 2"}	2021-09-22 14:08:38.07263+00	24
37	[{"ab": "2", "won": 2500.0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 0, "total": 80049.0, "playerid": "15"}, {"ab": "2", "won": 0.0, "bets": [], "lost": 0, "total": 20000000.0, "playerid": "2474"}, {"ab": "2", "won": 0.0, "bets": [], "lost": 0, "total": 35000000.0, "playerid": "2475"}]	2021-09-29 03:13:36.683503+00	42
6	{"data": [{"total": 100, "playerid": "1", "playerstatus": 1}, {"total": 130, "playerid": "2", "playerstatus": 1}]}	2021-09-26 07:53:00.228811+00	21
7	\N	2021-09-28 19:07:34.374636+00	24
8	\N	2021-09-29 01:14:49.787812+00	24
9	\N	2021-09-29 01:30:43.53556+00	51
10	\N	2021-09-29 01:34:01.225323+00	51
11	\N	2021-09-29 01:36:48.217245+00	51
12	\N	2021-09-29 01:37:15.66353+00	51
13	\N	2021-09-29 01:38:42.730868+00	51
14	\N	2021-09-29 01:38:58.412217+00	51
15	\N	2021-09-29 01:39:43.093667+00	51
16	\N	2021-09-29 01:40:01.338047+00	51
17	\N	2021-09-29 01:41:57.210911+00	51
18	\N	2021-09-29 01:42:15.210517+00	51
19	\N	2021-09-29 01:42:57.217152+00	51
20	{"won": "Player 2"}	2021-09-29 01:44:08.284003+00	24
21	\N	2021-09-29 01:46:14.984386+00	51
22	\N	2021-09-29 01:47:44.436571+00	51
23	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 10000, "total": 69549, "playerid": "15"}, {"ab": 2, "bet": 10000, "total": 59549, "playerid": "15"}], "lost": 20000, "total": 79549, "playerid": "15"}]	2021-09-29 01:51:20.206727+00	51
24	\N	2021-09-29 02:40:54.939341+00	42
25	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 0, "total": 78549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2456"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2457"}]	2021-09-29 02:41:39.120044+00	42
26	[{"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2458"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2459"}]	2021-09-29 02:45:18.943628+00	42
27	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}], "lost": 0, "total": 79549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2460"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2461"}]	2021-09-29 02:47:59.756765+00	42
28	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}], "lost": 2000, "total": 79549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2462"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2463"}]	2021-09-29 02:49:00.915633+00	42
29	[{"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2464"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2465"}]	2021-09-29 02:59:18.299988+00	42
30	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}], "lost": 2000, "total": 79549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2466"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2467"}]	2021-09-29 03:00:20.035712+00	42
31	[{"bot": 0, "total": 78549, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"bot": 1, "total": 20000000, "deviceid": "bot", "playerid": "2468", "playername": "Krishna", "playerstatus": 0}, {"bot": 1, "total": 35000000, "deviceid": "bot", "playerid": "2469", "playername": "Ruby", "playerstatus": 0}, {"status": 0}, {"status": 0}]	2021-09-29 03:02:18.622591+00	42
32	\N	2021-09-29 03:02:31.275483+00	42
33	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 2000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2470"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2471"}]	2021-09-29 03:02:57.181721+00	42
34	\N	2021-09-29 03:03:19.892934+00	42
35	[{"ab": "2", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 78549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2472"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2473"}]	2021-09-29 03:07:32.747693+00	42
36	\N	2021-09-29 03:08:08.564588+00	42
38	\N	2021-09-29 03:14:01.892272+00	42
39	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 0, "total": 81549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2476"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2477"}]	2021-09-29 03:14:28.005523+00	42
40	\N	2021-09-29 03:14:59.216843+00	42
41	[{"ab": "2", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 79549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2478"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2479"}]	2021-09-29 03:15:15.314244+00	42
42	\N	2021-09-29 03:15:38.378982+00	42
43	[{"bot": 0, "total": 78549, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"bot": 1, "total": 20000000, "deviceid": "bot", "playerid": "2480", "playername": "Number 1", "playerstatus": 0}, {"bot": 1, "total": 35000000, "deviceid": "bot", "playerid": "2481", "playername": "Raju", "playerstatus": 0}, {"status": 0}, {"status": 0}]	2021-09-29 03:16:19.988024+00	42
44	\N	2021-09-29 03:16:31.816983+00	42
45	[{"ab": "2", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 0, "total": 78549, "playerid": "15"}], "lost": 0, "total": 80549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2482"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2483"}]	2021-09-29 03:17:20.553972+00	42
46	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 79549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 72549, "playerid": "15"}], "lost": 0, "total": 74549, "playerid": "15"}, {"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 2000, "total": 77549, "playerid": "2482"}, {"ab": 1, "bet": 4000, "total": 73549, "playerid": "2482"}], "lost": 4000, "total": 20004000, "playerid": "2482"}]	2021-09-29 03:17:49.733733+00	42
47	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 0, "total": 81549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2484"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2485"}]	2021-09-29 03:22:34.664001+00	42
48	[{"bot": 0, "total": 80549, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"status": 0}, {"status": 0}, {"status": 0}, {"status": 0}]	2021-09-29 03:22:52.857076+00	42
49	\N	2021-09-29 03:23:15.010192+00	42
50	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 0, "total": 81549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2486"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2487"}]	2021-09-29 05:45:04.27138+00	42
51	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 80549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 71549, "playerid": "15"}], "lost": 0, "total": 75549, "playerid": "15"}, {"ab": "2", "won": 16000, "bets": [{"ab": 2, "bet": 8000, "total": 72549, "playerid": "2487"}], "lost": 0, "total": 35016000, "playerid": "2487"}]	2021-09-29 05:45:34.256836+00	42
52	[{"bot": 0, "total": 10549, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"status": 0}, {"status": 0}, {"status": 0}, {"status": 0}]	2021-09-29 05:46:16.437275+00	42
53	\N	2021-09-29 05:46:39.760285+00	42
54	\N	2021-09-29 05:56:19.672085+00	42
55	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 2000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2490"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2491"}]	2021-09-29 05:58:44.779722+00	42
56	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 44549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 9549, "playerid": "15"}], "lost": 0, "total": 13549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [{"ab": 1, "bet": 32000, "total": 45549, "playerid": "2490"}, {"ab": 1, "bet": 32000, "total": 10549, "playerid": "2490"}], "lost": 64000, "total": 20000000, "playerid": "2490"}, {"ab": "2", "won": 0, "bets": [{"ab": 1, "bet": 2000, "total": 42549, "playerid": "2491"}], "lost": 2000, "total": 35000000, "playerid": "2491"}]	2021-09-29 05:59:15.378454+00	42
57	\N	2021-09-29 05:59:47.815932+00	42
58	\N	2021-09-29 06:05:24.673278+00	42
59	[{"bot": 0, "total": 78549, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"bot": 1, "total": 20000000, "deviceid": "bot", "playerid": "2494", "playername": "Diamond", "playerstatus": 0}, {"bot": 1, "total": 35000000, "deviceid": "bot", "playerid": "2495", "playername": "Rani", "playerstatus": 0}, {"status": 0}, {"status": 0}]	2021-09-29 06:07:07.334046+00	42
60	[{"ab": "1", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 75549, "playerid": "15"}], "lost": 1000, "total": 73549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 76549, "playerid": "2495"}], "lost": 1000, "total": 35000000, "playerid": "2495"}]	2021-09-29 06:07:21.563801+00	42
61	[{"ab": "1", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 79549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2496"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2497"}]	2021-09-29 06:14:00.940151+00	42
62	\N	2021-09-29 06:14:23.530315+00	42
63	\N	2021-09-29 06:33:37.230471+00	42
64	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 2000, "total": 77549, "playerid": "15"}]	2021-09-29 07:44:19.275711+00	42
65	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 76549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 75549, "playerid": "15"}], "lost": 2000, "total": 75549, "playerid": "15"}]	2021-09-29 07:44:37.539219+00	42
66	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 74549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 73549, "playerid": "15"}], "lost": 2000, "total": 73549, "playerid": "15"}]	2021-09-29 07:45:03.878414+00	42
67	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 72549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 71549, "playerid": "15"}], "lost": 2000, "total": 71549, "playerid": "15"}]	2021-09-29 07:45:34.039703+00	42
68	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 70549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 69549, "playerid": "15"}], "lost": 0, "total": 73549, "playerid": "15"}]	2021-09-29 07:45:53.299832+00	42
69	[{"bot": 0, "total": 72549, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"status": 0}, {"status": 0}, {"status": 0}, {"status": 0}]	2021-09-29 07:46:20.293562+00	42
70	[{"ab": "1", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 71549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 70549, "playerid": "15"}], "lost": 1000, "total": 72549, "playerid": "15"}]	2021-09-29 07:46:43.461227+00	42
71	\N	2021-09-29 07:47:05.454624+00	42
72	[{"ab": "1", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 79549, "playerid": "15"}]	2021-09-29 07:47:27.586135+00	42
73	[{"ab": "1", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 79549, "playerid": "15"}]	2021-09-29 07:47:48.497679+00	42
74	[{"ab": "2", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 79549, "playerid": "15"}]	2021-09-29 07:48:06.443982+00	42
75	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 2000, "total": 77549, "playerid": "15"}, {"ab": 2, "bet": 0, "total": 77549, "playerid": "15"}], "lost": 0, "total": 81549, "playerid": "15"}]	2021-09-29 07:48:38.578733+00	42
76	[{"ab": "2", "won": 2500.0, "bets": [{"ab": 2, "bet": 2000, "total": 79549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 78549, "playerid": "15"}], "lost": 1000, "total": 81049.0, "playerid": "15"}]	2021-09-29 07:49:00.396648+00	42
77	[{"bot": 0, "total": 79049.0, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"status": 0}, {"status": 0}, {"status": 0}, {"status": 0}]	2021-09-29 07:49:26.500077+00	42
78	[{"ab": "1", "won": 4000, "bets": [{"ab": 2, "bet": 2000, "total": 77049.0, "playerid": "15"}, {"ab": 1, "bet": 2000, "total": 75049.0, "playerid": "15"}], "lost": 2000, "total": 79049.0, "playerid": "15"}]	2021-09-29 07:49:46.996018+00	42
79	[{"ab": "1", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 78049.0, "playerid": "15"}, {"ab": 1, "bet": 2000, "total": 76049.0, "playerid": "15"}], "lost": 1000, "total": 80049.0, "playerid": "15"}]	2021-09-29 07:50:13.986719+00	42
80	\N	2021-09-29 07:50:36.130572+00	42
81	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 0, "total": 81549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2501"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2502"}]	2021-09-29 07:57:11.644633+00	42
82	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 80549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 79549, "playerid": "15"}], "lost": 2000, "total": 79549, "playerid": "15"}]	2021-09-29 07:57:36.526263+00	42
83	[{"bot": 0, "total": 77799.0, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"status": 0}, {"status": 0}, {"status": 0}, {"status": 0}]	2021-09-29 07:58:05.564698+00	42
84	[{"ab": "2", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 79549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2503"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2504"}]	2021-09-29 07:58:48.564742+00	42
85	[{"ab": "2", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 79549, "playerid": "15"}]	2021-09-29 07:59:11.41134+00	42
86	\N	2021-09-29 07:59:45.260042+00	42
87	\N	2021-09-29 08:02:48.324874+00	42
88	[{"ab": "1", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 76549, "playerid": "15"}], "lost": 1000, "total": 78549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2508"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2507"}]	2021-09-29 08:07:05.453889+00	42
89	[{"ab": "1", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 74549, "playerid": "15"}], "lost": 1000, "total": 76549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 2000, "total": 75549, "playerid": "2507"}], "lost": 2000, "total": 20000000, "playerid": "2507"}]	2021-09-29 08:07:28.425928+00	42
90	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 71549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 70549, "playerid": "15"}], "lost": 2000, "total": 70549, "playerid": "15"}, {"ab": "1", "won": 8000, "bets": [{"ab": 1, "bet": 4000, "total": 72549, "playerid": "2507"}], "lost": 0, "total": 20008000, "playerid": "2507"}]	2021-09-29 08:08:12.861227+00	42
91	\N	2021-09-29 08:08:48.162683+00	42
92	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 0, "total": 81549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2509"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2510"}]	2021-09-29 08:10:46.194224+00	42
93	[{"ab": "2", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 72549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 71549, "playerid": "15"}], "lost": 1000, "total": 73549, "playerid": "15"}, {"ab": "2", "won": 16000, "bets": [{"ab": 2, "bet": 8000, "total": 73549, "playerid": "2510"}], "lost": 0, "total": 35016000, "playerid": "2510"}]	2021-09-29 08:11:18.823377+00	42
94	[{"bot": 0, "total": 68549, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"status": 0}, {"status": 0}, {"status": 0}, {"status": 0}]	2021-09-29 08:12:20.9396+00	42
95	[{"ab": "2", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 79549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2511"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2512"}]	2021-09-29 08:12:49.322285+00	42
96	\N	2021-09-29 08:13:09.896719+00	42
97	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 2000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2513"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2514"}]	2021-09-29 08:15:48.645699+00	42
98	\N	2021-09-29 08:16:11.950348+00	42
99	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 2000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2515"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2516"}]	2021-09-29 08:17:55.739627+00	42
100	[{"ab": "2", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 76549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 11549, "playerid": "15"}, {"ab": 2, "bet": 0, "total": 11549, "playerid": "15"}], "lost": 1000, "total": 13549, "playerid": "15"}, {"ab": "2", "won": 64000, "bets": [{"ab": 2, "bet": 32000, "total": 44549, "playerid": "2515"}], "lost": 0, "total": 20064000, "playerid": "2515"}, {"ab": "2", "won": 64000, "bets": [{"ab": 2, "bet": 32000, "total": 12549, "playerid": "2516"}], "lost": 0, "total": 35064000, "playerid": "2516"}]	2021-09-29 08:18:27.625899+00	42
101	\N	2021-09-29 08:19:01.699653+00	42
102	[{"ab": "1", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 79549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2517"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2518"}]	2021-09-29 08:21:26.736958+00	42
103	\N	2021-09-29 08:21:48.527751+00	42
104	\N	2021-09-29 08:22:42.054837+00	42
105	[{"bot": 0, "total": 79799.0, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"bot": 1, "total": 20000000.0, "deviceid": "bot", "playerid": "2521", "playername": "Shahrukh", "playerstatus": 0}, {"bot": 1, "total": 35000000.0, "deviceid": "bot", "playerid": "2522", "playername": "Poker Raja", "playerstatus": 0}, {"status": 0}, {"status": 0}]	2021-09-29 08:23:02.041139+00	42
106	[{"ab": "1", "won": 84000, "bets": [{"ab": 2, "bet": 8000, "total": 71799.0, "playerid": "2521"}, {"ab": 1, "bet": 8000, "total": 63799.0, "playerid": "2521"}, {"ab": 1, "bet": 32000, "total": 23799.0, "playerid": "2521"}, {"ab": 2, "bet": 8000, "total": 14799.0, "playerid": "2521"}, {"ab": 1, "bet": 2000, "total": 8799.0, "playerid": "2521"}, {"ab": 2, "bet": 1000, "total": 7799.0, "playerid": "2521"}, {"ab": 2, "bet": 4000, "total": 2799.0, "playerid": "2521"}], "lost": 21000, "total": 20084000, "playerid": "2521"}, {"ab": "1", "won": 16000, "bets": [{"ab": 1, "bet": 8000, "total": 55799.0, "playerid": "2522"}, {"ab": 2, "bet": 4000, "total": 10799.0, "playerid": "2522"}], "lost": 4000, "total": 35016000, "playerid": "2522"}]	2021-09-29 08:23:16.098654+00	42
107	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 2000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2523"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2524"}]	2021-09-29 08:24:22.946361+00	42
108	[{"ab": "1", "won": 64000, "bets": [{"ab": 1, "bet": 32000, "total": 36549, "playerid": "2523"}], "lost": 0, "total": 20064000, "playerid": "2523"}, {"ab": "1", "won": 16000, "bets": [{"ab": 1, "bet": 8000, "total": 69549, "playerid": "2524"}], "lost": 0, "total": 35016000, "playerid": "2524"}]	2021-09-29 08:24:43.835752+00	42
109	[{"ab": "1", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 79549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2525"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2526"}]	2021-09-29 08:26:01.125606+00	42
110	[{"ab": "2", "won": 16000, "bets": [{"ab": 2, "bet": 8000, "total": 71549, "playerid": "2526"}, {"ab": 1, "bet": 4000, "total": 65549, "playerid": "2526"}], "lost": 4000, "total": 35016000, "playerid": "2526"}]	2021-09-29 08:26:20.118084+00	42
111	[{"bot": 0, "total": 82049.0, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"status": 0}, {"status": 0}, {"status": 0}, {"status": 0}]	2021-09-29 08:27:48.402509+00	51
112	\N	2021-09-29 08:28:00.139794+00	51
113	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 2000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2529"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2530"}]	2021-09-29 08:29:47.74839+00	42
114	\N	2021-09-29 08:30:23.348676+00	42
115	[{"bot": 0, "total": 79799.0, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"bot": 1, "total": 20000000.0, "deviceid": "bot", "playerid": "2532", "playername": "John", "playerstatus": 0}, {"status": 0}, {"status": 0}, {"status": 0}]	2021-09-29 09:17:36.835203+00	42
116	\N	2021-09-29 09:17:49.168649+00	42
117	[{"bot": 0, "total": 79799.0, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"bot": 1, "total": 20000000, "deviceid": "bot", "playerid": "2533", "playername": "Rani", "playerstatus": 0}, {"status": 0}, {"status": 0}, {"status": 0}]	2021-09-29 09:25:48.462508+00	42
118	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78799.0, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 45799.0, "playerid": "15"}], "lost": 2000, "total": 13799.0, "playerid": "15"}, {"ab": "1", "won": 128000, "bets": [{"ab": 1, "bet": 32000, "total": 46799.0, "playerid": "2533"}, {"ab": 1, "bet": 32000, "total": 13799.0, "playerid": "2533"}], "lost": 0, "total": 20128000, "playerid": "2533"}]	2021-09-29 09:26:06.587406+00	42
119	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 12799.0, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 11799.0, "playerid": "15"}], "lost": 0, "total": 15799.0, "playerid": "15"}]	2021-09-29 09:26:41.669969+00	42
120	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 0, "total": 81549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2534"}]	2021-09-29 09:30:27.517089+00	42
121	[{"ab": "2", "won": 2500.0, "bets": [{"ab": 2, "bet": 1000, "total": 80549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 79549, "playerid": "15"}], "lost": 0, "total": 50049.0, "playerid": "15"}]	2021-09-29 09:30:45.82298+00	42
122	\N	2021-09-29 09:31:16.374412+00	42
123	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 2000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2535"}]	2021-09-29 09:35:22.137196+00	42
124	[{"ab": "2", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 74549, "playerid": "15"}], "lost": 0, "total": 75549, "playerid": "15"}, {"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 2000, "total": 75549, "playerid": "2535"}, {"ab": 1, "bet": 1000, "total": 73549, "playerid": "2535"}], "lost": 1000, "total": 20004000, "playerid": "2535"}]	2021-09-29 09:35:43.978706+00	42
125	\N	2021-09-29 09:36:27.791752+00	42
126	[{"bot": 0, "total": 79799.0, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"bot": 1, "total": 20000000.0, "deviceid": "bot", "playerid": "2536", "playername": "Gambler", "playerstatus": 0}, {"status": 0}, {"status": 0}, {"status": 0}]	2021-09-29 09:37:59.254566+00	42
127	\N	2021-09-29 09:38:19.87648+00	42
128	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 0, "total": 81549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2538"}]	2021-09-29 09:39:59.914642+00	42
129	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 48549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 47549, "playerid": "15"}], "lost": 2000, "total": 47549, "playerid": "15"}, {"ab": "1", "won": 64000, "bets": [{"ab": 1, "bet": 32000, "total": 49549, "playerid": "2538"}], "lost": 0, "total": 20064000, "playerid": "2538"}]	2021-09-29 09:40:17.442045+00	42
130	\N	2021-09-29 09:40:54.597855+00	42
131	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 2000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2539"}]	2021-09-29 09:43:38.391194+00	42
132	\N	2021-09-29 09:43:59.221579+00	42
133	[{"bot": 0, "total": 82049.0, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"bot": 1, "total": 20000000.0, "deviceid": "bot", "playerid": "2540", "playername": "Master", "playerstatus": 0}, {"status": 0}, {"status": 0}, {"status": 0}]	2021-09-29 09:50:06.880839+00	51
134	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 10000, "total": 72049.0, "playerid": "15"}, {"ab": 2, "bet": 10000, "total": 62049.0, "playerid": "15"}], "lost": 20000, "total": 62049.0, "playerid": "15"}]	2021-09-29 09:50:18.237772+00	51
135	\N	2021-09-29 09:51:03.151171+00	51
136	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 2000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2544"}]	2021-09-29 09:56:18.211231+00	42
137	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 76549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 75549, "playerid": "15"}], "lost": 2000, "total": 75549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 2000, "total": 19998000, "playerid": "2544"}, {"ab": 2, "bet": 1000, "total": 19997000, "playerid": "2544"}], "lost": 3000, "total": 19997000, "playerid": "2544"}]	2021-09-29 09:56:46.26795+00	42
138	[{"ab": "1", "won": 4000, "bets": [{"ab": 1, "bet": 1000, "total": 74549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 73549, "playerid": "15"}], "lost": 0, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 640000, "bets": [{"ab": 1, "bet": 256000, "total": 19741000, "playerid": "2544"}, {"ab": 1, "bet": 64000, "total": 19677000, "playerid": "2544"}], "lost": 0, "total": 20317000, "playerid": "2544"}]	2021-09-29 09:57:17.31539+00	42
139	[{"ab": "2", "won": 2000, "bets": [{"ab": 1, "bet": 1000, "total": 76549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 75549, "playerid": "15"}], "lost": 1000, "total": 77549, "playerid": "15"}, {"ab": "2", "won": 1024000, "bets": [{"ab": 2, "bet": 512000, "total": 19805000, "playerid": "2544"}, {"ab": 1, "bet": 8192000, "total": 11613000, "playerid": "2544"}], "lost": 8192000, "total": 12637000, "playerid": "2544"}]	2021-09-29 09:57:50.124568+00	42
140	[{"ab": "1", "won": 2000, "bets": [{"ab": 1, "bet": 1000, "total": 76549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 75549, "playerid": "15"}], "lost": 1000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 2048000, "bets": [{"ab": 1, "bet": 1024000, "total": 11613000, "playerid": "2544"}, {"ab": 2, "bet": 4000, "total": 11609000, "playerid": "2544"}], "lost": 4000, "total": 13657000, "playerid": "2544"}]	2021-09-29 09:58:26.740892+00	42
141	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 76549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 75549, "playerid": "15"}], "lost": 2000, "total": 75549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 16000, "total": 13641000, "playerid": "2544"}, {"ab": 2, "bet": 4000, "total": 13637000, "playerid": "2544"}], "lost": 20000, "total": 13637000, "playerid": "2544"}]	2021-09-29 09:59:09.641459+00	42
142	[{"status": 0}, {"bot": 1, "total": 13637250.0, "deviceid": "bot", "playerid": "2544", "playername": "Shahrukh", "playerstatus": 1}, {"status": 0}, {"status": 0}, {"status": 0}]	2021-09-29 09:59:52.01832+00	42
143	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 0, "total": 81549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2545"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2546"}]	2021-09-29 10:11:27.147451+00	42
144	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 80549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 79549, "playerid": "15"}], "lost": 2000, "total": 79549, "playerid": "15"}, {"ab": "1", "won": 1024000, "bets": [{"ab": 1, "bet": 512000, "total": 19488000, "playerid": "2545"}, {"ab": 2, "bet": 1000, "total": 19487000, "playerid": "2545"}], "lost": 1000, "total": 20511000, "playerid": "2545"}, {"ab": "1", "won": 2048000, "bets": [{"ab": 1, "bet": 1024000, "total": 33976000, "playerid": "2546"}, {"ab": 2, "bet": 2000, "total": 33974000, "playerid": "2546"}], "lost": 2000, "total": 36022000, "playerid": "2546"}]	2021-09-29 10:11:50.77891+00	42
145	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 2000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 8192000, "bets": [{"ab": 2, "bet": 64000, "total": 20447000, "playerid": "2545"}, {"ab": 1, "bet": 4096000, "total": 16351000, "playerid": "2545"}], "lost": 64000, "total": 24543000, "playerid": "2545"}, {"ab": "1", "won": 20000, "bets": [{"ab": 1, "bet": 8000, "total": 36014000, "playerid": "2546"}, {"ab": 1, "bet": 2000, "total": 36012000, "playerid": "2546"}], "lost": 0, "total": 36032000, "playerid": "2546"}]	2021-09-29 10:12:24.792675+00	42
146	[{"ab": "1", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 76549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 75549, "playerid": "15"}], "lost": 1000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 34000, "bets": [{"ab": 1, "bet": 16000, "total": 24527000, "playerid": "2545"}, {"ab": 1, "bet": 1000, "total": 24526000, "playerid": "2545"}], "lost": 0, "total": 24560000, "playerid": "2545"}, {"ab": "1", "won": 256000, "bets": [{"ab": 2, "bet": 64000, "total": 35968000, "playerid": "2546"}, {"ab": 1, "bet": 128000, "total": 35840000, "playerid": "2546"}], "lost": 64000, "total": 36096000, "playerid": "2546"}]	2021-09-29 10:13:18.724415+00	42
147	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 76549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 75549, "playerid": "15"}], "lost": 0, "total": 79549, "playerid": "15"}, {"ab": "2", "won": 16896000, "bets": [{"ab": 2, "bet": 256000, "total": 24304000, "playerid": "2545"}, {"ab": 2, "bet": 8192000, "total": 16112000, "playerid": "2545"}], "lost": 0, "total": 33008000, "playerid": "2545"}, {"ab": "2", "won": 64000, "bets": [{"ab": 1, "bet": 4096000, "total": 32000000, "playerid": "2546"}, {"ab": 2, "bet": 32000, "total": 31968000, "playerid": "2546"}], "lost": 4096000, "total": 32032000, "playerid": "2546"}]	2021-09-29 10:14:01.79179+00	42
148	\N	2021-09-29 10:14:38.367419+00	42
149	[{"ab": "2", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 79549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2547"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2548"}]	2021-09-29 10:20:04.320114+00	42
150	[{"ab": "2", "won": 2000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 1, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 1000, "total": 79549, "playerid": "15"}, {"ab": "2", "won": 320000, "bets": [{"ab": 2, "bet": 128000, "total": 19872000, "playerid": "2547"}, {"ab": 2, "bet": 32000, "total": 19840000, "playerid": "2547"}], "lost": 0, "total": 20160000, "playerid": "2547"}, {"ab": "2", "won": 130000, "bets": [{"ab": 2, "bet": 1000, "total": 34999000, "playerid": "2548"}, {"ab": 2, "bet": 64000, "total": 34935000, "playerid": "2548"}], "lost": 0, "total": 35065000, "playerid": "2548"}]	2021-09-29 10:20:24.979693+00	42
151	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 2000, "total": 77549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2549"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2550"}]	2021-09-29 10:29:09.63482+00	42
152	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 76549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 75549, "playerid": "15"}], "lost": 2000, "total": 75549, "playerid": "15"}, {"ab": "1", "won": 2048000, "bets": [{"ab": 2, "bet": 2048000, "total": 17952000, "playerid": "2549"}, {"ab": 1, "bet": 1024000, "total": 16928000, "playerid": "2549"}], "lost": 2048000, "total": 18976000, "playerid": "2549"}, {"ab": "1", "won": 8000, "bets": [{"ab": 1, "bet": 4000, "total": 34996000, "playerid": "2550"}, {"ab": 2, "bet": 4096000, "total": 30900000, "playerid": "2550"}], "lost": 4096000, "total": 30908000, "playerid": "2550"}]	2021-09-29 10:29:37.182472+00	42
153	\N	2021-09-29 10:30:08.192827+00	42
154	\N	2021-09-29 10:32:32.463055+00	42
155	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 78549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 77549, "playerid": "15"}], "lost": 0, "total": 81549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2553"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2554"}]	2021-09-29 10:33:20.670315+00	42
156	\N	2021-09-29 10:33:40.333129+00	42
157	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 76549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 75549, "playerid": "15"}], "lost": 0, "total": 79549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2555"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2556"}]	2021-09-29 10:35:50.309323+00	42
158	\N	2021-09-29 11:21:30.487429+00	42
159	\N	2021-09-29 11:22:08.873651+00	42
160	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 74549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 73549, "playerid": "15"}], "lost": 2000, "total": 73549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2559"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2560"}]	2021-09-29 11:23:31.8994+00	42
161	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 72549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 71549, "playerid": "15"}], "lost": 2000, "total": 71549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 512000, "total": 19488000, "playerid": "2559"}, {"ab": 2, "bet": 512000, "total": 18976000, "playerid": "2559"}], "lost": 1024000, "total": 18976000, "playerid": "2559"}, {"ab": "1", "won": 2000, "bets": [{"ab": 1, "bet": 1000, "total": 34999000, "playerid": "2560"}, {"ab": 2, "bet": 16000, "total": 34983000, "playerid": "2560"}], "lost": 16000, "total": 34985000, "playerid": "2560"}]	2021-09-29 11:23:53.822437+00	42
162	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 74549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 73549, "playerid": "15"}], "lost": 2000, "total": 73549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2561"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2562"}]	2021-09-29 11:26:13.235573+00	42
163	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 72549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 71549, "playerid": "15"}], "lost": 0, "total": 75549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2563"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2564"}]	2021-09-29 11:26:43.166593+00	42
164	\N	2021-09-29 11:27:12.838093+00	42
165	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 70549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 69549, "playerid": "15"}], "lost": 2000, "total": 69549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2565"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2566"}]	2021-09-29 11:29:50.440867+00	42
166	[{"bot": 0, "round": 166, "total": 69799.0, "deviceid": "f0031071039910e6c7419091fcd00664877b511b", "playerid": "15", "playername": "basavaraj66666", "playerstatus": 1}, {"bot": 1, "round": 166, "total": 20064000.0, "deviceid": "bot", "playerid": "2565", "playername": "Major", "playerstatus": 1}, {"bot": 1, "round": 166, "total": 34996000.0, "deviceid": "bot", "playerid": "2566", "playername": "Sheetal", "playerstatus": 1}, {"round": 166, "status": 0}, {"round": 166, "status": 0}]	2021-09-29 11:30:16.631889+00	42
167	[{"status": 0}, {"bot": 1, "round": 167, "total": 20066000.0, "deviceid": "bot", "playerid": "2565", "playername": "Major", "playerstatus": 1}, {"bot": 1, "round": 167, "total": 35508000.0, "deviceid": "bot", "playerid": "2566", "playername": "Sheetal", "playerstatus": 1}, {"round": 167, "status": 0}, {"round": 167, "status": 0}]	2021-09-29 11:30:36.105113+00	42
168	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 67549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 66549, "playerid": "15"}], "lost": 2000, "total": 66549, "playerid": "15"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2569"}, {"ab": "1", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2570"}]	2021-09-29 11:41:02.676751+00	42
169	[{"ab": "2", "won": 4000, "bets": [{"ab": 2, "bet": 1000, "total": 65549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 64549, "playerid": "15"}], "lost": 0, "total": 68549, "playerid": "15"}, {"ab": "2", "won": 32768000, "bets": [{"ab": 2, "bet": 16384000, "total": 3616000, "playerid": "2569"}, {"ab": 1, "bet": 32000, "total": 3584000, "playerid": "2569"}], "lost": 32000, "total": 36352000, "playerid": "2569"}, {"ab": "2", "won": 0, "bets": [{"ab": 1, "bet": 32000, "total": 34968000, "playerid": "2570"}, {"ab": 1, "bet": 1024000, "total": 33944000, "playerid": "2570"}], "lost": 1056000, "total": 33944000, "playerid": "2570"}]	2021-09-29 11:41:22.767078+00	42
170	\N	2021-09-29 11:41:57.054535+00	42
171	[{"ab": "2", "won": 10000, "bets": [{"ab": 2, "bet": 1000, "total": 67549, "playerid": "15"}, {"ab": 2, "bet": 4000, "total": 63549, "playerid": "15"}], "lost": 0, "total": 73549, "playerid": "15"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 20000000, "playerid": "2571"}, {"ab": "2", "won": 0, "bets": [], "lost": 0, "total": 35000000, "playerid": "2572"}]	2021-09-29 11:42:29.831866+00	42
172	[{"ab": "1", "won": 0, "bets": [{"ab": 2, "bet": 1000, "total": 72549, "playerid": "15"}, {"ab": 2, "bet": 1000, "total": 71549, "playerid": "15"}], "lost": 2000, "total": 71549, "playerid": "15"}, {"ab": "1", "won": 1024000, "bets": [{"ab": 1, "bet": 512000, "total": 19488000, "playerid": "2571"}, {"ab": 2, "bet": 32000, "total": 19456000, "playerid": "2571"}], "lost": 32000, "total": 20480000, "playerid": "2571"}, {"ab": "1", "won": 8192000, "bets": [{"ab": 2, "bet": 8192000, "total": 26808000, "playerid": "2572"}, {"ab": 1, "bet": 4096000, "total": 22712000, "playerid": "2572"}], "lost": 8192000, "total": 30904000, "playerid": "2572"}]	2021-09-29 11:42:59.475248+00	42
173	\N	2021-09-29 11:43:38.117039+00	42
\.


--
-- Data for Name: misc_round_players; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_round_players (id, round_id, user_id) FROM stdin;
1	1	83
2	2	15
3	3	15
4	4	15
5	5	15
6	6	1
7	6	2
8	7	15
9	8	15
10	9	15
11	10	15
12	11	15
13	12	15
14	13	15
15	14	15
16	15	15
17	16	15
18	17	15
19	18	15
20	19	15
21	20	15
22	21	15
23	22	15
24	23	15
25	24	15
26	25	15
27	26	15
28	27	15
29	28	15
30	29	15
31	30	15
32	31	15
33	32	2468
34	32	2469
35	32	15
36	33	15
37	34	2471
38	34	2470
39	34	15
40	35	15
41	36	2472
42	36	2473
43	36	15
44	37	15
45	38	2474
46	38	2475
47	38	15
48	39	15
49	40	2476
50	40	2477
51	40	15
52	41	15
53	42	2479
54	42	2478
55	42	15
56	43	15
57	44	2480
58	44	2481
59	44	15
60	45	15
61	46	2482
62	46	2483
63	46	15
64	47	15
65	48	2484
66	48	2485
67	48	15
68	49	15
69	50	15
70	51	2487
71	51	2486
72	51	15
73	52	2487
74	52	15
75	53	15
76	54	15
77	55	15
78	56	2490
79	56	2491
80	56	15
81	57	2490
82	57	2491
83	57	15
84	58	15
85	59	15
86	60	2495
87	60	2494
88	60	15
89	61	15
90	62	2496
91	62	2497
92	62	15
93	63	15
94	64	15
95	65	15
96	66	15
97	67	15
98	68	15
99	69	15
100	70	15
101	71	15
102	72	15
103	73	15
104	74	15
105	75	15
106	76	15
107	77	15
108	78	15
109	79	15
110	80	15
111	81	15
112	82	2501
113	82	2502
114	82	15
115	83	15
116	84	15
117	85	2504
118	85	2503
119	85	15
120	86	15
121	87	15
122	88	15
123	89	2507
124	89	2508
125	89	15
126	90	2507
127	90	15
128	91	2507
129	91	15
130	92	15
131	93	2509
132	93	2510
133	93	15
134	94	2510
135	94	15
136	95	15
137	96	2512
138	96	2511
139	96	15
140	97	15
141	98	2513
142	98	2514
143	98	15
144	99	15
145	100	2515
146	100	2516
147	100	15
148	101	2515
149	101	2516
150	101	15
151	102	15
152	103	2517
153	103	2518
154	103	15
155	104	15
156	105	15
157	106	2521
158	106	2522
159	106	15
160	107	15
161	108	2523
162	108	2524
163	108	15
164	109	15
165	110	2525
166	110	2526
167	110	15
168	111	15
169	112	15
170	113	15
171	114	2529
172	114	2530
173	114	15
174	115	15
175	116	2532
176	116	15
177	117	15
178	118	2533
179	118	15
180	119	2533
181	119	15
182	120	15
183	121	2534
184	121	15
185	122	15
186	123	15
187	124	2535
188	124	15
189	125	2535
190	125	15
191	126	15
192	127	2536
193	127	15
194	128	15
195	129	2538
196	129	15
197	130	2538
198	130	15
199	131	15
200	132	2539
201	132	15
202	133	15
203	134	2540
204	134	15
205	135	15
206	136	15
207	137	2544
208	137	15
209	138	2544
210	138	15
211	139	2544
212	139	15
213	140	2544
214	140	15
215	141	2544
216	141	15
217	142	2544
218	142	15
219	143	15
220	144	2545
221	144	2546
222	144	15
223	145	2545
224	145	2546
225	145	15
226	146	2545
227	146	2546
228	146	15
229	147	2545
230	147	2546
231	147	15
232	148	2545
233	148	2546
234	148	15
235	149	15
236	150	2547
237	150	2548
238	150	15
239	151	15
240	152	2549
241	152	2550
242	152	15
243	153	2549
244	153	2550
245	153	15
246	154	15
247	155	15
248	156	2553
249	156	2554
250	156	15
251	157	15
252	158	15
253	159	2557
254	159	2558
255	159	15
256	160	15
257	161	2560
258	161	2559
259	161	15
260	162	15
261	163	15
262	164	2563
263	164	2564
264	164	15
265	165	15
266	166	2565
267	166	2566
268	166	15
269	167	2565
270	167	2566
271	167	15
272	168	15
273	169	2569
274	169	2570
275	169	15
276	170	2569
277	170	2570
278	170	15
279	171	15
280	172	2571
281	172	2572
282	172	15
283	173	2571
284	173	2572
285	173	15
\.


--
-- Data for Name: misc_thirdpartygamemakermodel; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_thirdpartygamemakermodel (id, name) FROM stdin;
\.


--
-- Data for Name: misc_transaction; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.misc_transaction (id, amount, created_at, receiver_id, reward_id, sender_id, round_id, bank_transaction_id, receiver_ref_code) FROM stdin;
21	0	2021-09-07 11:05:56.921966+00	53	\N	63	\N	\N	\N
1	7	2021-03-16 12:46:07.82512+00	3	\N	1	\N	\N	\N
2	10	2021-07-08 14:16:27.299492+00	18	\N	1	\N	\N	\N
3	10000	2021-07-08 15:57:55.239955+00	15	\N	1	\N	\N	\N
4	200	2021-07-08 15:59:06.942543+00	18	\N	15	\N	\N	\N
5	10	2021-08-17 13:44:14.54292+00	63	\N	15	\N	\N	\N
6	0	2021-09-07 05:22:48.912014+00	54	\N	53	\N	\N	\N
7	1	2021-09-07 05:25:28.10941+00	54	\N	63	\N	\N	\N
8	1	2021-09-07 05:25:59.895068+00	63	\N	54	\N	\N	\N
9	1	2021-09-07 05:30:45.95222+00	54	\N	63	\N	\N	\N
10	0	2021-09-07 10:28:23.94693+00	53	\N	54	\N	\N	\N
11	1	2021-09-07 10:28:41.158609+00	53	\N	54	\N	\N	\N
12	1	2021-09-07 10:29:13.554275+00	63	\N	53	\N	\N	\N
13	0	2021-09-07 10:34:55.682234+00	63	\N	53	\N	\N	\N
14	0	2021-09-07 10:35:39.02636+00	63	\N	53	\N	\N	\N
15	0	2021-09-07 10:35:59.704432+00	63	\N	53	\N	\N	\N
16	0	2021-09-07 10:39:50.207318+00	63	\N	53	\N	\N	\N
17	0	2021-09-07 10:40:15.232076+00	63	\N	53	\N	\N	\N
18	0	2021-09-07 10:52:27.264216+00	63	\N	53	\N	\N	\N
19	0	2021-09-07 10:55:55.640275+00	53	\N	63	\N	\N	\N
20	0	2021-09-07 10:56:18.202712+00	53	\N	63	\N	\N	\N
22	0	2021-09-07 11:13:11.565373+00	\N	\N	63	\N	\N	\N
23	1	2021-09-07 11:14:40.209421+00	\N	\N	63	\N	\N	\N
24	1	2021-09-07 11:15:02.02866+00	\N	\N	63	\N	\N	\N
25	1	2021-09-07 11:49:03.070527+00	\N	\N	63	\N	\N	\N
26	1	2021-09-07 11:49:36.492795+00	\N	\N	63	\N	\N	\N
27	1	2021-09-08 06:14:32.347504+00	\N	\N	\N	\N	\N	\N
28	1	2021-09-08 06:15:23.171166+00	\N	\N	\N	\N	\N	\N
29	1	2021-09-08 06:24:01.662761+00	\N	\N	\N	\N	\N	\N
30	9	2021-09-08 06:24:22.170094+00	\N	\N	\N	\N	\N	\N
31	10	2021-09-08 06:37:58.026549+00	83	\N	53	\N	\N	\N
32	10	2021-09-08 06:39:03.507968+00	83	\N	53	\N	\N	\N
33	5	2021-09-08 06:39:57.364866+00	\N	\N	\N	\N	\N	\N
34	0	2021-09-08 09:07:41.328668+00	\N	\N	\N	\N	\N	\N
35	0	2021-09-08 09:08:04.278886+00	\N	\N	\N	\N	\N	\N
36	0	2021-09-08 09:10:22.846296+00	\N	\N	\N	\N	\N	\N
37	0	2021-09-08 09:11:16.442393+00	\N	\N	\N	\N	\N	\N
38	0	2021-09-08 09:11:59.668608+00	53	\N	83	\N	\N	\N
39	1	2021-09-08 09:12:50.495354+00	53	\N	83	\N	\N	\N
40	0	2021-09-09 06:15:56.870417+00	83	\N	53	\N	\N	\N
41	0	2021-09-09 06:23:27.283723+00	83	\N	53	\N	\N	\N
42	0	2021-09-09 06:32:44.110192+00	83	\N	53	\N	\N	\N
43	0	2021-09-09 06:34:34.962289+00	83	\N	53	\N	\N	\N
44	0	2021-09-09 06:39:05.250679+00	83	\N	53	\N	\N	\N
45	0	2021-09-09 06:42:11.459095+00	83	\N	53	\N	\N	\N
46	1	2021-09-09 06:44:51.335816+00	83	\N	53	\N	\N	\N
47	1	2021-09-09 06:48:08.912403+00	\N	\N	\N	\N	\N	\N
48	0	2021-09-09 06:51:10.825486+00	\N	\N	\N	\N	\N	\N
49	0	2021-09-09 07:53:52.997784+00	\N	\N	\N	\N	\N	\N
50	0	2021-09-09 07:59:50.746369+00	\N	\N	\N	\N	\N	\N
51	0	2021-09-09 08:02:36.756907+00	\N	\N	\N	\N	\N	\N
52	0	2021-09-09 08:05:02.250976+00	83	\N	1	\N	\N	\N
53	1	2021-09-09 08:06:56.428919+00	53	\N	83	\N	\N	\N
54	1	2021-09-09 08:07:11.985291+00	53	\N	83	\N	\N	\N
55	9	2021-09-09 08:07:55.993182+00	53	\N	1	\N	\N	\N
56	10	2021-09-09 08:13:54.785323+00	83	\N	1	\N	\N	\N
57	7	2021-09-09 14:20:41.234204+00	83	\N	1	\N	\N	\N
58	0	2021-09-09 14:23:37.732704+00	\N	\N	\N	\N	\N	\N
59	0	2021-09-09 14:24:20.095247+00	\N	\N	\N	\N	\N	\N
60	0	2021-09-14 06:40:39.392825+00	53	\N	1	1	SHJ3267GSDH	\N
61	1	2021-09-14 08:29:02.225944+00	\N	\N	\N	\N	\N	\N
62	2	2021-09-14 17:40:49.599319+00	\N	\N	\N	\N	\N	\N
63	2	2021-09-14 17:55:45.533555+00	\N	\N	\N	\N	\N	\N
64	2	2021-09-14 17:57:07.9522+00	\N	\N	\N	\N	\N	\N
65	3	2021-09-14 17:58:32.013628+00	\N	\N	\N	\N	\N	\N
66	3	2021-09-14 18:00:59.179289+00	\N	\N	\N	\N	\N	\N
67	4	2021-09-14 18:03:00.782099+00	\N	\N	\N	\N	\N	\N
68	4	2021-09-14 18:03:07.648089+00	\N	\N	\N	\N	\N	\N
69	4	2021-09-14 18:03:14.733334+00	\N	\N	\N	\N	\N	\N
70	4	2021-09-14 18:03:23.108681+00	\N	\N	\N	\N	\N	\N
71	0	2021-09-20 08:23:00.545228+00	\N	\N	\N	\N	\N	\N
72	0	2021-09-20 08:26:55.312526+00	53	\N	83	\N	\N	\N
73	50000	2021-09-25 11:40:12.909858+00	15	\N	1	\N	asdasdasdsadsd	\N
74	20000	2021-09-25 11:47:39.757029+00	15	\N	1	\N	asdasdasdsssdasdsd	\N
75	1	2021-09-26 09:44:21.06245+00	89	\N	15	\N	\N	\N
76	1	2021-09-26 09:44:39.623062+00	89	\N	15	\N	\N	\N
77	1	2021-09-26 09:45:42.179254+00	89	\N	15	\N	\N	\N
78	1	2021-09-26 09:46:58.068889+00	89	\N	15	\N	\N	\N
79	1	2021-09-26 09:52:22.529209+00	89	\N	15	\N	\N	\N
80	1	2021-09-26 09:54:25.8958+00	89	\N	15	\N	\N	\N
81	1	2021-09-26 09:56:13.287979+00	89	\N	15	\N	\N	\N
82	1	2021-09-26 09:56:42.32227+00	89	\N	15	6	adsd43	TEST8322
83	1	2021-09-29 11:38:35.037079+00	15	\N	1	6	\N	\N
84	1	2021-09-29 11:38:44.984875+00	1	\N	15	6	\N	\N
85	1000	2021-09-29 11:41:05.074285+00	1	\N	15	168	\N	\N
86	1000	2021-09-29 11:41:12.736281+00	1	\N	15	168	\N	\N
87	1000	2021-09-29 11:41:28.083029+00	1	\N	15	169	\N	\N
88	1000	2021-09-29 11:41:38.435366+00	1	\N	15	169	\N	\N
89	4000	2021-09-29 11:41:50.489337+00	15	\N	1	169	\N	\N
90	32768000	2021-09-29 11:41:50.733517+00	2569	\N	1	169	\N	\N
91	128000	2021-09-29 11:42:01.52245+00	1	\N	2569	170	\N	\N
92	1000	2021-09-29 11:42:37.10695+00	1	\N	15	171	\N	\N
93	4000	2021-09-29 11:42:45.752116+00	1	\N	15	171	\N	\N
94	10000	2021-09-29 11:42:52.814936+00	15	\N	1	171	\N	\N
95	1000	2021-09-29 11:43:10.244117+00	1	\N	15	172	\N	\N
96	1000	2021-09-29 11:43:16.282266+00	1	\N	15	172	\N	\N
97	1024000	2021-09-29 11:43:31.725647+00	2571	\N	1	172	\N	\N
98	8192000	2021-09-29 11:43:31.970435+00	2572	\N	1	172	\N	\N
\.


--
-- Data for Name: rest_framework_api_key_apikey; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.rest_framework_api_key_apikey (id, created, name, revoked, expiry_date, hashed_key, prefix) FROM stdin;
chct0zi3.pbkdf2_sha256$216000$t3ctjW5KnYda$Xn7L9zF7rOeM7k1p6ai+HvAjvZytEUdsJbcw9SyrDu8=	2021-09-16 13:29:04.331631+00	game_server-api_key	f	\N	pbkdf2_sha256$216000$t3ctjW5KnYda$Xn7L9zF7rOeM7k1p6ai+HvAjvZytEUdsJbcw9SyrDu8=	chct0zi3
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
2	facebook	10159348494546974	2021-05-11 11:14:57.476967+00	2021-03-23 06:22:29.234489+00	{"id": "10159348494546974", "email": "jayadevbs@gmail.com", "name": "Jayadev BS", "first_name": "Jayadev", "last_name": "BS"}	5
8	facebook	2855391134749165	2021-05-24 06:33:25.690152+00	2021-03-26 14:19:47.251669+00	{"id": "2855391134749165", "email": "sibad1190@gmail.com", "name": "Siba Das", "first_name": "Siba", "last_name": "Das"}	11
4	facebook	4004720829588298	2021-09-12 17:13:36.25775+00	2021-03-26 13:27:57.663192+00	{"id": "4004720829588298", "email": "mahichintu93@yahoo.com", "name": "Aman Singh", "first_name": "Aman", "last_name": "Singh"}	7
9	facebook	109696454668492	2021-07-08 12:17:32.934356+00	2021-06-07 11:45:17.464325+00	{"id": "109696454668492", "email": "kumsudev@gmail.com", "name": "Kumaresan Kumsu", "first_name": "Kumaresan", "last_name": "Kumsu"}	12
1	facebook	10162183530695717	2021-08-27 05:16:28.474591+00	2021-03-16 15:08:26.270343+00	{"id": "10162183530695717", "email": "basavaraj@me.com", "name": "Basavaraj B Pujar", "first_name": "Basavaraj", "last_name": "Pujar"}	4
5	facebook	3917396771675237	2021-08-28 05:10:58.234497+00	2021-03-26 13:33:28.859506+00	{"id": "3917396771675237", "email": "sujansannashe785266@gmail.com", "name": "Sujan Sannashe", "first_name": "Sujan", "last_name": "Sannashe"}	8
7	facebook	967899404019669	2021-08-28 05:16:33.16867+00	2021-03-26 13:52:24.798801+00	{"id": "967899404019669", "email": "sujansannashe7@gmail.com", "name": "Sujan Sarkar", "first_name": "Sujan", "last_name": "Sarkar"}	10
6	facebook	964608051024423	2021-08-28 06:34:41.797767+00	2021-03-26 13:41:11.25712+00	{"id": "964608051024423", "email": "palashbasak12@gmail.com", "name": "Palash Basak", "first_name": "Palash", "last_name": "Basak"}	9
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
1	facebook	Facebook login	641270353018343	e7ed140f0e4021f6ad10d18ed5e414c4	
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: casino_dev
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
8	EAAJHO2OYvecBAIJZBkOjESka33s5Qk9fCbkb3bOUZABJN13XVRloPVrAWaBoRILF35elZBjpMi2YJTYGbyLTVVhZCGrcsgnEdLMZBuk59A5fZAE6YXZClEKrymtMM1oO1zGBOpd3PFZBy5JCu88v19urBhZCv4wFKZB9c4ZAi3I9afQqwOv6t2LJVeESHFPGr0Fi48YBtdzzaL3SHIJ8Qo7xtjuyvOR4Q7klsaTJfmoRetDRQZDZD		\N	8	1
2	EAAJHO2OYvecBABJyuCEnIlgkk3IHoSWZBxZB2fIIY19zJDkEdgvDZCbUTnWxvyr4gNr07HtrIAcu4wYGmGUmzHGdribjs9ZCh7kCuRL20CzTsFUC4uP77WN4PWHfsllPZB0KfBXudatiiY5FbZAcq2V7H0GbyTcHSrlMeSDCRSZC4GW3XVweOypZAOPww52ljwJWbiIZBKy1APzUVPsxOsGkR3EQVkd0eJF4ZD		\N	2	1
1	EAAJHO2OYvecBAGNfXn9XXnAv6OdhwmXUZCOYwfxhSJm18rZCJn0WUZCRZAmqN0mG6SaD7TsfbAVdcSx7PnoWRWJMZAJ5fMMuso5AHYHyXJ8PXZBIdmBhoQkydNSOKK3AAOrKIjzdnhW0QkaqZCQZB3UNsetroHkHut28zKaYKWZApZBAHACcX2F4s32PbFFIWUUuJNFnIL0gfXhrAPtbfQnAlmdkSvKRUEU7LFx0d954UcTzxW34MZAhCTJ		\N	1	1
5	EAAJHO2OYvecBAAMDqdYwdTUOLgHjNOdgFAmo8T19YOZAdauT6ejP6IZAojX3zqNXXE8KoKl87plxZBZC2RdZBWkbNuJhBqrJfhHZAdIFIrKaPCOqRpIIlXlpZCsoZBd3WZCa2FzN5VHfuRlsZBXsuZAClZBoIGHUmfXIaaF9ljfGY2wz2gsDJLXWeUaZCHm3UbsLYKt2KVqYiZCVh7ZBXzjY5MZC3nupIzo9xBRuQwqkjd7ybZBfN7AZDZD		\N	5	1
7	EAAJHO2OYvecBABRLnG55ZBX2eVWhY2bk0ZC6Cht3cXFQEJ6C5RhBP34cRi5gDzBgj00MIKAD20TiMRZAGSnYxsxxt8O28KmZC5jy7MuyMZCDa3EBli9UwGf5t2Ubu1xRYOUguf4lsCqX83mBm04X0z2MjKhmY04k5HBJw3YT2uxnTnaODFR7UfIktcG5ZA66Dl3ZBAXPMI5uXeJRpDs4np1m4avb295u1GZCN8JxkzHjIwZDZD		\N	7	1
6	EAAJHO2OYvecBAAu9yzWBcPlZCZBjbc1hdzqPi2C2FXLaFhbsBkMf8vUiqu2OZChRdra3nvxjUgiVWPsm5rdUZBrDPoFJtDZCnfUgz8ks7GoF5xyWILxTRP4F3FECYRrSbBd1PpcMMu0DBSqRm2M8wRVkXgZA8K6sSMhEy40uJxMCzTvDpgzNmWqMAbZCkAqmijRVcyY7G5rckXCIXkKuINxqOPwGnkbtN4EZASrUsYIAmAZDZD		\N	6	1
4	EAAJHO2OYvecBAEfai7wucR8diDufnQysiMzplZBFJLkVYXJqp8qQPHkgmOLIXGGEVqZC887CbjYQnMJS5ZBlhB8IZBzilo1TyRCX8VUXXZCZCHJ28m4ocGCFXWdejFLHcodnPi5cyKX593bJlZBsfPrFL2ZC9suHTdHvB93vhTXjOu0QB9qcuTPAGbnvIBCfXqvOApnxWoOZCghQi4TFu0PCk9otK1P8nxF9JGDUVV48yT2UjzlsACmBB		\N	4	1
9	EAAJHO2OYvecBAB7xphpCser8z5oIybhIImx87AAcUwkPAVJn770PDTHOH0lmccevQ8bZBOjBgh1NEsWZC0gySLgPaTJXMWFUL0lJr1QZAt0rFbeONjggGvYRbEY7aPzZBvybT0svUxtR30B2LvtMDq85oufZAobW89jWhnHxUdAZDZD		\N	9	1
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 7, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: accounts_phoneverification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.accounts_phoneverification_id_seq', 134, true);


--
-- Name: accounts_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.accounts_user_groups_id_seq', 1, true);


--
-- Name: accounts_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.accounts_user_id_seq', 2572, true);


--
-- Name: accounts_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.accounts_user_user_permissions_id_seq', 5, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 3, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 124, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 143, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 31, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 75, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: misc_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_game_id_seq', 4, true);


--
-- Name: misc_gametable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_gametable_id_seq', 53, true);


--
-- Name: misc_gametable_joined_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_gametable_joined_users_id_seq', 703, true);


--
-- Name: misc_gametablehistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_gametablehistory_id_seq', 1, false);


--
-- Name: misc_gametabletype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_gametabletype_id_seq', 20, true);


--
-- Name: misc_inapppurchase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_inapppurchase_id_seq', 1, false);


--
-- Name: misc_invitation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_invitation_id_seq', 1, false);


--
-- Name: misc_level_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_level_id_seq', 1, false);


--
-- Name: misc_orderid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_orderid_id_seq', 1, false);


--
-- Name: misc_realtimeserver_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_realtimeserver_id_seq', 1, true);


--
-- Name: misc_reward_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_reward_id_seq', 1, false);


--
-- Name: misc_round_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_round_id_seq', 173, true);


--
-- Name: misc_round_players_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_round_players_id_seq', 285, true);


--
-- Name: misc_thirdpartygamemakermodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_thirdpartygamemakermodel_id_seq', 1, false);


--
-- Name: misc_transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.misc_transaction_id_seq', 98, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 9, true);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, true);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, true);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: casino_dev
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 9, true);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: accounts_phoneverification accounts_phoneverification_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_phoneverification
    ADD CONSTRAINT accounts_phoneverification_pkey PRIMARY KEY (id);


--
-- Name: accounts_phoneverification accounts_phoneverification_user_id_2b159574_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_phoneverification
    ADD CONSTRAINT accounts_phoneverification_user_id_2b159574_uniq UNIQUE (user_id);


--
-- Name: accounts_user_groups accounts_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user_groups
    ADD CONSTRAINT accounts_user_groups_pkey PRIMARY KEY (id);


--
-- Name: accounts_user_groups accounts_user_groups_user_id_group_id_59c0b32f_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user_groups
    ADD CONSTRAINT accounts_user_groups_user_id_group_id_59c0b32f_uniq UNIQUE (user_id, group_id);


--
-- Name: accounts_user accounts_user_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user
    ADD CONSTRAINT accounts_user_pkey PRIMARY KEY (id);


--
-- Name: accounts_user accounts_user_reference_code_21790859_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user
    ADD CONSTRAINT accounts_user_reference_code_21790859_uniq UNIQUE (reference_code);


--
-- Name: accounts_user_user_permissions accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user_user_permissions
    ADD CONSTRAINT accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq UNIQUE (user_id, permission_id);


--
-- Name: accounts_user_user_permissions accounts_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user_user_permissions
    ADD CONSTRAINT accounts_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: accounts_user accounts_user_username_key; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user
    ADD CONSTRAINT accounts_user_username_key UNIQUE (username);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: misc_game misc_game_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_game
    ADD CONSTRAINT misc_game_pkey PRIMARY KEY (id);


--
-- Name: misc_gametable_joined_users misc_gametable_joined_users_gametable_id_user_id_351ef67c_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametable_joined_users
    ADD CONSTRAINT misc_gametable_joined_users_gametable_id_user_id_351ef67c_uniq UNIQUE (gametable_id, user_id);


--
-- Name: misc_gametable_joined_users misc_gametable_joined_users_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametable_joined_users
    ADD CONSTRAINT misc_gametable_joined_users_pkey PRIMARY KEY (id);


--
-- Name: misc_gametable misc_gametable_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametable
    ADD CONSTRAINT misc_gametable_pkey PRIMARY KEY (id);


--
-- Name: misc_gametablehistory misc_gametablehistory_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametablehistory
    ADD CONSTRAINT misc_gametablehistory_pkey PRIMARY KEY (id);


--
-- Name: misc_gametabletype misc_gametabletype_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametabletype
    ADD CONSTRAINT misc_gametabletype_pkey PRIMARY KEY (id);


--
-- Name: misc_inapppurchase misc_inapppurchase_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_inapppurchase
    ADD CONSTRAINT misc_inapppurchase_pkey PRIMARY KEY (id);


--
-- Name: misc_invitation misc_invitation_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_invitation
    ADD CONSTRAINT misc_invitation_pkey PRIMARY KEY (id);


--
-- Name: misc_level misc_level_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_level
    ADD CONSTRAINT misc_level_pkey PRIMARY KEY (id);


--
-- Name: misc_orderid misc_orderid_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_orderid
    ADD CONSTRAINT misc_orderid_pkey PRIMARY KEY (id);


--
-- Name: misc_realtimeserver misc_realtimeserver_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_realtimeserver
    ADD CONSTRAINT misc_realtimeserver_pkey PRIMARY KEY (id);


--
-- Name: misc_reward misc_reward_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_reward
    ADD CONSTRAINT misc_reward_pkey PRIMARY KEY (id);


--
-- Name: misc_round misc_round_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_round
    ADD CONSTRAINT misc_round_pkey PRIMARY KEY (id);


--
-- Name: misc_round_players misc_round_players_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_round_players
    ADD CONSTRAINT misc_round_players_pkey PRIMARY KEY (id);


--
-- Name: misc_round_players misc_round_players_round_id_user_id_cfa07966_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_round_players
    ADD CONSTRAINT misc_round_players_round_id_user_id_cfa07966_uniq UNIQUE (round_id, user_id);


--
-- Name: misc_thirdpartygamemakermodel misc_thirdpartygamemakermodel_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_thirdpartygamemakermodel
    ADD CONSTRAINT misc_thirdpartygamemakermodel_pkey PRIMARY KEY (id);


--
-- Name: misc_transaction misc_transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_transaction
    ADD CONSTRAINT misc_transaction_pkey PRIMARY KEY (id);


--
-- Name: rest_framework_api_key_apikey rest_framework_api_key_apikey_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.rest_framework_api_key_apikey
    ADD CONSTRAINT rest_framework_api_key_apikey_pkey PRIMARY KEY (id);


--
-- Name: rest_framework_api_key_apikey rest_framework_api_key_apikey_prefix_key; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.rest_framework_api_key_apikey
    ADD CONSTRAINT rest_framework_api_key_apikey_prefix_key UNIQUE (prefix);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: accounts_user_groups_group_id_bd11a704; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX accounts_user_groups_group_id_bd11a704 ON public.accounts_user_groups USING btree (group_id);


--
-- Name: accounts_user_groups_user_id_52b62117; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX accounts_user_groups_user_id_52b62117 ON public.accounts_user_groups USING btree (user_id);


--
-- Name: accounts_user_reference_code_21790859_like; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX accounts_user_reference_code_21790859_like ON public.accounts_user USING btree (reference_code varchar_pattern_ops);


--
-- Name: accounts_user_user_permissions_permission_id_113bb443; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX accounts_user_user_permissions_permission_id_113bb443 ON public.accounts_user_user_permissions USING btree (permission_id);


--
-- Name: accounts_user_user_permissions_user_id_e4f0a161; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX accounts_user_user_permissions_user_id_e4f0a161 ON public.accounts_user_user_permissions USING btree (user_id);


--
-- Name: accounts_user_username_6088629e_like; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX accounts_user_username_6088629e_like ON public.accounts_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: misc_gametable_game_table_id_0d239483; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_gametable_game_table_id_0d239483 ON public.misc_gametable USING btree (game_table_type_id);


--
-- Name: misc_gametable_joined_users_gametable_id_72a992d3; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_gametable_joined_users_gametable_id_72a992d3 ON public.misc_gametable_joined_users USING btree (gametable_id);


--
-- Name: misc_gametable_joined_users_user_id_b945fbd5; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_gametable_joined_users_user_id_b945fbd5 ON public.misc_gametable_joined_users USING btree (user_id);


--
-- Name: misc_gametable_server_url_id_8b198b95; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_gametable_server_url_id_8b198b95 ON public.misc_gametable USING btree (server_url_id);


--
-- Name: misc_gametablehistory_game_table_id_157f1eed; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_gametablehistory_game_table_id_157f1eed ON public.misc_gametablehistory USING btree (game_table_id);


--
-- Name: misc_gametabletype_game_id_1ef96afa; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_gametabletype_game_id_1ef96afa ON public.misc_gametabletype USING btree (game_id);


--
-- Name: misc_inapppurchase_game_id_82fdf7a6; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_inapppurchase_game_id_82fdf7a6 ON public.misc_inapppurchase USING btree (game_id);


--
-- Name: misc_invitation_receiver_id_26a01ee7; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_invitation_receiver_id_26a01ee7 ON public.misc_invitation USING btree (receiver_id);


--
-- Name: misc_invitation_sender_id_816d9b35; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_invitation_sender_id_816d9b35 ON public.misc_invitation USING btree (sender_id);


--
-- Name: misc_level_game_id_7ce5244b; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_level_game_id_7ce5244b ON public.misc_level USING btree (game_id);


--
-- Name: misc_orderid_game_maker_id_c79a5d33; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_orderid_game_maker_id_c79a5d33 ON public.misc_orderid USING btree (game_maker_id);


--
-- Name: misc_orderid_transaction_id_83e6c619; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_orderid_transaction_id_83e6c619 ON public.misc_orderid USING btree (transaction_id);


--
-- Name: misc_realtimeserver_game_id_83eb104d; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_realtimeserver_game_id_83eb104d ON public.misc_realtimeserver USING btree (game_id);


--
-- Name: misc_round_game_table_id_d79feb5a; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_round_game_table_id_d79feb5a ON public.misc_round USING btree (game_table_id);


--
-- Name: misc_round_players_round_id_7cfc619a; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_round_players_round_id_7cfc619a ON public.misc_round_players USING btree (round_id);


--
-- Name: misc_round_players_user_id_13fc39ef; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_round_players_user_id_13fc39ef ON public.misc_round_players USING btree (user_id);


--
-- Name: misc_transaction_receiver_id_f858a84b; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_transaction_receiver_id_f858a84b ON public.misc_transaction USING btree (receiver_id);


--
-- Name: misc_transaction_reward_id_e30912dc; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_transaction_reward_id_e30912dc ON public.misc_transaction USING btree (reward_id);


--
-- Name: misc_transaction_round_id_6cf2b680; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_transaction_round_id_6cf2b680 ON public.misc_transaction USING btree (round_id);


--
-- Name: misc_transaction_sender_id_76cdd937; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX misc_transaction_sender_id_76cdd937 ON public.misc_transaction USING btree (sender_id);


--
-- Name: rest_framework_api_key_apikey_created_c61872d9; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX rest_framework_api_key_apikey_created_c61872d9 ON public.rest_framework_api_key_apikey USING btree (created);


--
-- Name: rest_framework_api_key_apikey_id_6e07e68e_like; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX rest_framework_api_key_apikey_id_6e07e68e_like ON public.rest_framework_api_key_apikey USING btree (id varchar_pattern_ops);


--
-- Name: rest_framework_api_key_apikey_prefix_4e0db5f8_like; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX rest_framework_api_key_apikey_prefix_4e0db5f8_like ON public.rest_framework_api_key_apikey USING btree (prefix varchar_pattern_ops);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: casino_dev
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_accounts_user_id FOREIGN KEY (user_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_phoneverification accounts_phoneverification_user_id_2b159574_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_phoneverification
    ADD CONSTRAINT accounts_phoneverification_user_id_2b159574_fk_accounts_user_id FOREIGN KEY (user_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_user_groups accounts_user_groups_group_id_bd11a704_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user_groups
    ADD CONSTRAINT accounts_user_groups_group_id_bd11a704_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_user_groups accounts_user_groups_user_id_52b62117_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user_groups
    ADD CONSTRAINT accounts_user_groups_user_id_52b62117_fk_accounts_user_id FOREIGN KEY (user_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_user_user_permissions accounts_user_user_p_permission_id_113bb443_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user_user_permissions
    ADD CONSTRAINT accounts_user_user_p_permission_id_113bb443_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_user_user_permissions accounts_user_user_p_user_id_e4f0a161_fk_accounts_; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.accounts_user_user_permissions
    ADD CONSTRAINT accounts_user_user_p_user_id_e4f0a161_fk_accounts_ FOREIGN KEY (user_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_accounts_user_id FOREIGN KEY (user_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_user_id FOREIGN KEY (user_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_gametable misc_gametable_game_table_type_id_bc72ab5f_fk_misc_game; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametable
    ADD CONSTRAINT misc_gametable_game_table_type_id_bc72ab5f_fk_misc_game FOREIGN KEY (game_table_type_id) REFERENCES public.misc_gametabletype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_gametable_joined_users misc_gametable_joine_gametable_id_72a992d3_fk_misc_game; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametable_joined_users
    ADD CONSTRAINT misc_gametable_joine_gametable_id_72a992d3_fk_misc_game FOREIGN KEY (gametable_id) REFERENCES public.misc_gametable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_gametable_joined_users misc_gametable_joine_user_id_b945fbd5_fk_accounts_; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametable_joined_users
    ADD CONSTRAINT misc_gametable_joine_user_id_b945fbd5_fk_accounts_ FOREIGN KEY (user_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_gametable misc_gametable_server_url_id_8b198b95_fk_misc_realtimeserver_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametable
    ADD CONSTRAINT misc_gametable_server_url_id_8b198b95_fk_misc_realtimeserver_id FOREIGN KEY (server_url_id) REFERENCES public.misc_realtimeserver(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_gametablehistory misc_gametablehistor_game_table_id_157f1eed_fk_misc_game; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametablehistory
    ADD CONSTRAINT misc_gametablehistor_game_table_id_157f1eed_fk_misc_game FOREIGN KEY (game_table_id) REFERENCES public.misc_gametable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_gametabletype misc_gametabletype_game_id_1ef96afa_fk_misc_game_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_gametabletype
    ADD CONSTRAINT misc_gametabletype_game_id_1ef96afa_fk_misc_game_id FOREIGN KEY (game_id) REFERENCES public.misc_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_inapppurchase misc_inapppurchase_game_id_82fdf7a6_fk_misc_game_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_inapppurchase
    ADD CONSTRAINT misc_inapppurchase_game_id_82fdf7a6_fk_misc_game_id FOREIGN KEY (game_id) REFERENCES public.misc_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_invitation misc_invitation_receiver_id_26a01ee7_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_invitation
    ADD CONSTRAINT misc_invitation_receiver_id_26a01ee7_fk_accounts_user_id FOREIGN KEY (receiver_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_invitation misc_invitation_sender_id_816d9b35_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_invitation
    ADD CONSTRAINT misc_invitation_sender_id_816d9b35_fk_accounts_user_id FOREIGN KEY (sender_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_level misc_level_game_id_7ce5244b_fk_misc_game_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_level
    ADD CONSTRAINT misc_level_game_id_7ce5244b_fk_misc_game_id FOREIGN KEY (game_id) REFERENCES public.misc_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_orderid misc_orderid_game_maker_id_c79a5d33_fk_misc_thir; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_orderid
    ADD CONSTRAINT misc_orderid_game_maker_id_c79a5d33_fk_misc_thir FOREIGN KEY (game_maker_id) REFERENCES public.misc_thirdpartygamemakermodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_orderid misc_orderid_transaction_id_83e6c619_fk_misc_transaction_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_orderid
    ADD CONSTRAINT misc_orderid_transaction_id_83e6c619_fk_misc_transaction_id FOREIGN KEY (transaction_id) REFERENCES public.misc_transaction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_realtimeserver misc_realtimeserver_game_id_83eb104d_fk_misc_game_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_realtimeserver
    ADD CONSTRAINT misc_realtimeserver_game_id_83eb104d_fk_misc_game_id FOREIGN KEY (game_id) REFERENCES public.misc_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_round misc_round_game_table_id_d79feb5a_fk_misc_gametable_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_round
    ADD CONSTRAINT misc_round_game_table_id_d79feb5a_fk_misc_gametable_id FOREIGN KEY (game_table_id) REFERENCES public.misc_gametable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_round_players misc_round_players_round_id_7cfc619a_fk_misc_round_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_round_players
    ADD CONSTRAINT misc_round_players_round_id_7cfc619a_fk_misc_round_id FOREIGN KEY (round_id) REFERENCES public.misc_round(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_round_players misc_round_players_user_id_13fc39ef_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_round_players
    ADD CONSTRAINT misc_round_players_user_id_13fc39ef_fk_accounts_user_id FOREIGN KEY (user_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_transaction misc_transaction_receiver_id_f858a84b_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_transaction
    ADD CONSTRAINT misc_transaction_receiver_id_f858a84b_fk_accounts_user_id FOREIGN KEY (receiver_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_transaction misc_transaction_reward_id_e30912dc_fk_misc_reward_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_transaction
    ADD CONSTRAINT misc_transaction_reward_id_e30912dc_fk_misc_reward_id FOREIGN KEY (reward_id) REFERENCES public.misc_reward(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_transaction misc_transaction_round_id_6cf2b680_fk_misc_round_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_transaction
    ADD CONSTRAINT misc_transaction_round_id_6cf2b680_fk_misc_round_id FOREIGN KEY (round_id) REFERENCES public.misc_round(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misc_transaction misc_transaction_sender_id_76cdd937_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.misc_transaction
    ADD CONSTRAINT misc_transaction_sender_id_76cdd937_fk_accounts_user_id FOREIGN KEY (sender_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_social_user_id_8146e70c_fk_accounts_; Type: FK CONSTRAINT; Schema: public; Owner: casino_dev
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_social_user_id_8146e70c_fk_accounts_ FOREIGN KEY (user_id) REFERENCES public.accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

