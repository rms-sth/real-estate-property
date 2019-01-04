--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2019-01-04 16:14:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 203 (class 1259 OID 16416)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16414)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 2344 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 205 (class 1259 OID 16426)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16424)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2345 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 201 (class 1259 OID 16408)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16406)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 2346 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 207 (class 1259 OID 16434)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16444)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16442)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 2347 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 206 (class 1259 OID 16432)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 2348 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 211 (class 1259 OID 16452)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16450)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2349 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 220 (class 1259 OID 16581)
-- Name: contacts_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts_contact (
    id integer NOT NULL,
    listing character varying(250) NOT NULL,
    listing_id integer NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    message text NOT NULL,
    contact_date timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.contacts_contact OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16579)
-- Name: contacts_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contacts_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_contact_id_seq OWNER TO postgres;

--
-- TOC entry 2350 (class 0 OID 0)
-- Dependencies: 219
-- Name: contacts_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contacts_contact_id_seq OWNED BY public.contacts_contact.id;


--
-- TOC entry 213 (class 1259 OID 16512)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16510)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 2351 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 199 (class 1259 OID 16398)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16396)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 2352 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 197 (class 1259 OID 16387)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16385)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2353 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 214 (class 1259 OID 16540)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16563)
-- Name: listings_listing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listings_listing (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    address character varying(200) NOT NULL,
    city character varying(200) NOT NULL,
    state character varying(200) NOT NULL,
    zipcode character varying(200) NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    bedrooms integer NOT NULL,
    bathrooms numeric(2,1) NOT NULL,
    garage integer NOT NULL,
    sqft integer NOT NULL,
    lot_size numeric(5,1) NOT NULL,
    photo_main character varying(100) NOT NULL,
    photo_1 character varying(100) NOT NULL,
    photo_2 character varying(100) NOT NULL,
    photo_3 character varying(100) NOT NULL,
    photo_4 character varying(100) NOT NULL,
    photo_5 character varying(100) NOT NULL,
    photo_6 character varying(100) NOT NULL,
    is_published boolean NOT NULL,
    list_date timestamp with time zone NOT NULL,
    realtor_id integer NOT NULL
);


ALTER TABLE public.listings_listing OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16561)
-- Name: listings_listing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.listings_listing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.listings_listing_id_seq OWNER TO postgres;

--
-- TOC entry 2354 (class 0 OID 0)
-- Dependencies: 217
-- Name: listings_listing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.listings_listing_id_seq OWNED BY public.listings_listing.id;


--
-- TOC entry 216 (class 1259 OID 16552)
-- Name: realtors_realtor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.realtors_realtor (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    photo character varying(100) NOT NULL,
    description text NOT NULL,
    email character varying(50) NOT NULL,
    phone character varying(20) NOT NULL,
    is_mvp boolean NOT NULL,
    hire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.realtors_realtor OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16550)
-- Name: realtors_realtor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.realtors_realtor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.realtors_realtor_id_seq OWNER TO postgres;

--
-- TOC entry 2355 (class 0 OID 0)
-- Dependencies: 215
-- Name: realtors_realtor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.realtors_realtor_id_seq OWNED BY public.realtors_realtor.id;


--
-- TOC entry 2119 (class 2604 OID 16419)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2120 (class 2604 OID 16429)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2118 (class 2604 OID 16411)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2121 (class 2604 OID 16437)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2122 (class 2604 OID 16447)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2123 (class 2604 OID 16455)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2128 (class 2604 OID 16584)
-- Name: contacts_contact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact ALTER COLUMN id SET DEFAULT nextval('public.contacts_contact_id_seq'::regclass);


--
-- TOC entry 2124 (class 2604 OID 16515)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2117 (class 2604 OID 16401)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2116 (class 2604 OID 16390)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2127 (class 2604 OID 16566)
-- Name: listings_listing id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing ALTER COLUMN id SET DEFAULT nextval('public.listings_listing_id_seq'::regclass);


--
-- TOC entry 2126 (class 2604 OID 16555)
-- Name: realtors_realtor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.realtors_realtor ALTER COLUMN id SET DEFAULT nextval('public.realtors_realtor_id_seq'::regclass);


--
-- TOC entry 2321 (class 0 OID 16416)
-- Dependencies: 203
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2323 (class 0 OID 16426)
-- Dependencies: 205
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2319 (class 0 OID 16408)
-- Dependencies: 201
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
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
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add listing	7	add_listing
26	Can change listing	7	change_listing
27	Can delete listing	7	delete_listing
28	Can view listing	7	view_listing
29	Can add realtor	8	add_realtor
30	Can change realtor	8	change_realtor
31	Can delete realtor	8	delete_realtor
32	Can view realtor	8	view_realtor
33	Can add contact	9	add_contact
34	Can change contact	9	change_contact
35	Can delete contact	9	delete_contact
36	Can view contact	9	view_contact
\.


--
-- TOC entry 2325 (class 0 OID 16434)
-- Dependencies: 207
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$120000$Ol97o395Y5Uc$oeNf+brDOXYj1UYnvhReJY65M7NhDVmIW0zKG6NG/yo=	2019-01-03 21:36:47.311204+05:45	f	ramesrest	Ramesh	Pradhan	rameshpradhan@gmail.com	f	t	2019-01-03 21:36:46.97194+05:45
3	pbkdf2_sha256$120000$GUeKLj0uEFaf$Dd9vHeuAfUCe0cD2GVYsZuWSHfs3QUBXZ9AOfVTxiDg=	2019-01-04 01:44:44.122836+05:45	f	bhuwan	bhuwan	pandey	bhuwan@gmail.com	f	t	2019-01-03 21:39:42.885827+05:45
1	pbkdf2_sha256$120000$oaWYKAZodwqh$5rmNMt89KdyWO/EN1CS0QSxf248p9W5wibtZw7pa+pE=	2019-01-04 01:47:17.731488+05:45	t	rameshpradhan			ramesrest@gmail.com	t	t	2019-01-02 00:29:27.73299+05:45
\.


--
-- TOC entry 2327 (class 0 OID 16444)
-- Dependencies: 209
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2329 (class 0 OID 16452)
-- Dependencies: 211
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2338 (class 0 OID 16581)
-- Dependencies: 220
-- Data for Name: contacts_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts_contact (id, listing, listing_id, name, email, phone, message, contact_date, user_id) FROM stdin;
17	Biratnagar, Shantinagar	3	 Ramesh Pradhan	ramesrestt@gmail.com	9862135291	I want this property	2019-01-04 07:32:41.202586+05:45	1
\.


--
-- TOC entry 2331 (class 0 OID 16512)
-- Dependencies: 213
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-01-02 00:48:05.878156+05:45	2	Ramesh Pradhan	1	[{"added": {}}]	8	1
2	2019-01-02 00:49:00.134829+05:45	3	Bijesh Jung Basnet	1	[{"added": {}}]	8	1
3	2019-01-02 00:49:26.718517+05:45	4	Bhuwan Raj Pandeya	1	[{"added": {}}]	8	1
4	2019-01-02 00:54:09.534446+05:45	1	25th street Patan Dhoka, Lalitpur	1	[{"added": {}}]	7	1
5	2019-01-02 00:57:04.799406+05:45	2	Mahendranagar, Mahakali	1	[{"added": {}}]	7	1
6	2019-01-02 00:58:13.005245+05:45	3	Biratnagar, Shantinagar	1	[{"added": {}}]	7	1
7	2019-01-02 01:00:25.218699+05:45	4	Biratnagar, Hatkhola	1	[{"added": {}}]	7	1
8	2019-01-02 01:01:38.285094+05:45	5	Biratnagar, Pushpalal chowk	1	[{"added": {}}]	7	1
9	2019-01-02 01:39:38.39415+05:45	2	Ramesh Pradhan	2	[{"changed": {"fields": ["hire_date"]}}]	8	1
10	2019-01-02 20:22:05.812121+05:45	1	Patan Dhoka, Lalitpur	2	[{"changed": {"fields": ["title", "list_date"]}}]	7	1
11	2019-01-02 23:26:36.643145+05:45	3	Biratnagar, Shantinagar	2	[{"changed": {"fields": ["is_published"]}}]	7	1
12	2019-01-02 23:26:44.353797+05:45	5	Biratnagar, Pushpalal chowk	2	[{"changed": {"fields": ["is_published"]}}]	7	1
13	2019-01-02 23:26:44.357676+05:45	3	Biratnagar, Shantinagar	2	[{"changed": {"fields": ["is_published"]}}]	7	1
14	2019-01-02 23:58:39.717205+05:45	5	Biratnagar, Pushpalal chowk	2	[{"changed": {"fields": ["is_published"]}}]	7	1
15	2019-01-03 00:24:58.079254+05:45	2	Ramesh Pradhan	2	[]	8	1
16	2019-01-03 00:39:45.20776+05:45	3	Bijesh Jung Basnet	2	[{"changed": {"fields": ["is_mvp"]}}]	8	1
17	2019-01-03 00:53:30.815099+05:45	3	Bijesh Jung Basnet	2	[{"changed": {"fields": ["is_mvp"]}}]	8	1
18	2019-01-03 00:54:27.120062+05:45	2	Ramesh Pradhan	2	[{"changed": {"fields": ["is_mvp"]}}]	8	1
19	2019-01-03 00:54:30.973517+05:45	4	Bhuwan Raj Pandeya	2	[{"changed": {"fields": ["is_mvp"]}}]	8	1
20	2019-01-03 16:25:59.090703+05:45	4	Biratnagar, Hatkhola	2	[{"changed": {"fields": ["state"]}}]	7	1
21	2019-01-03 17:06:58.35898+05:45	4	Biratnagar, Hatkhola	2	[{"changed": {"fields": ["price"]}}]	7	1
22	2019-01-03 17:07:24.924031+05:45	4	Biratnagar, Hatkhola	2	[{"changed": {"fields": ["zipcode"]}}]	7	1
23	2019-01-03 17:07:51.015147+05:45	5	Biratnagar, Pushpalal chowk	2	[{"changed": {"fields": ["state", "zipcode"]}}]	7	1
24	2019-01-03 17:08:19.600107+05:45	2	Mahendranagar, Mahakali	2	[{"changed": {"fields": ["state", "zipcode"]}}]	7	1
25	2019-01-03 17:08:38.088542+05:45	1	Patan Dhoka, Lalitpur	2	[{"changed": {"fields": ["state", "zipcode"]}}]	7	1
26	2019-01-03 17:11:11.166704+05:45	5	Biratnagar, Pushpalal chowk	2	[{"changed": {"fields": ["state"]}}]	7	1
27	2019-01-03 17:11:46.806915+05:45	1	Patan Dhoka, Lalitpur	2	[{"changed": {"fields": ["state"]}}]	7	1
28	2019-01-03 17:12:01.802944+05:45	5	Biratnagar, Pushpalal chowk	2	[]	7	1
29	2019-01-03 17:12:09.928304+05:45	4	Biratnagar, Hatkhola	2	[{"changed": {"fields": ["state"]}}]	7	1
30	2019-01-03 17:12:16.770554+05:45	3	Biratnagar, Shantinagar	2	[{"changed": {"fields": ["state"]}}]	7	1
31	2019-01-03 17:12:24.221902+05:45	2	Mahendranagar, Mahakali	2	[{"changed": {"fields": ["state"]}}]	7	1
32	2019-01-03 17:17:53.670103+05:45	1	Patan Dhoka, Lalitpur	2	[{"changed": {"fields": ["state", "zipcode", "price"]}}]	7	1
33	2019-01-03 17:18:09.07569+05:45	1	Patan Dhoka, Lalitpur	2	[{"changed": {"fields": ["state"]}}]	7	1
34	2019-01-03 17:18:32.865685+05:45	1	Patan Dhoka, Lalitpur	2	[{"changed": {"fields": ["price"]}}]	7	1
35	2019-01-03 17:22:17.308042+05:45	1	Patan Dhoka, Lalitpur	2	[{"changed": {"fields": ["bedrooms"]}}]	7	1
36	2019-01-03 17:27:24.595419+05:45	5	Biratnagar, Pushpalal chowk	2	[{"changed": {"fields": ["zipcode", "price"]}}]	7	1
37	2019-01-03 17:27:39.699131+05:45	3	Biratnagar, Shantinagar	2	[{"changed": {"fields": ["price"]}}]	7	1
38	2019-01-04 01:00:28.410241+05:45	9	 sdfs	3		9	1
39	2019-01-04 01:00:28.477426+05:45	8	godofh	3		9	1
40	2019-01-04 01:00:28.478419+05:45	7	 dsd	3		9	1
41	2019-01-04 01:00:28.489781+05:45	6	sdf	3		9	1
42	2019-01-04 01:00:28.490771+05:45	5	ssdjk	3		9	1
43	2019-01-04 01:00:28.49226+05:45	4	dinesh	3		9	1
44	2019-01-04 01:00:28.493559+05:45	3	 Babhu ram	3		9	1
45	2019-01-04 01:00:28.494554+05:45	2	 Ramesh Pradhan	3		9	1
46	2019-01-04 01:00:28.495538+05:45	1	 Ramesh Pradhan	3		9	1
47	2019-01-04 01:46:59.203845+05:45	16	bhuwan pandey	3		9	1
48	2019-01-04 01:46:59.220496+05:45	15	Jsoon Ramesh	3		9	1
49	2019-01-04 01:46:59.221491+05:45	14	Jsoon Ramesh	3		9	1
50	2019-01-04 01:46:59.222978+05:45	13	Ramesh Pradhan	3		9	1
51	2019-01-04 01:46:59.223972+05:45	12	Ramesh Pradhan	3		9	1
52	2019-01-04 01:46:59.225459+05:45	11	Ramesh Pradhan	3		9	1
53	2019-01-04 01:46:59.22668+05:45	10	 Ramesh Pradhan	3		9	1
\.


--
-- TOC entry 2317 (class 0 OID 16398)
-- Dependencies: 199
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	listings	listing
8	realtors	realtor
9	contacts	contact
\.


--
-- TOC entry 2315 (class 0 OID 16387)
-- Dependencies: 197
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-01-01 23:35:25.334467+05:45
2	auth	0001_initial	2019-01-01 23:35:25.627203+05:45
3	admin	0001_initial	2019-01-01 23:35:25.703132+05:45
4	admin	0002_logentry_remove_auto_add	2019-01-01 23:35:25.710609+05:45
5	admin	0003_logentry_add_action_flag_choices	2019-01-01 23:35:25.7195+05:45
6	contenttypes	0002_remove_content_type_name	2019-01-01 23:35:25.743311+05:45
7	auth	0002_alter_permission_name_max_length	2019-01-01 23:35:25.748268+05:45
8	auth	0003_alter_user_email_max_length	2019-01-01 23:35:25.7567+05:45
9	auth	0004_alter_user_username_opts	2019-01-01 23:35:25.76415+05:45
10	auth	0005_alter_user_last_login_null	2019-01-01 23:35:25.772076+05:45
11	auth	0006_require_contenttypes_0002	2019-01-01 23:35:25.774062+05:45
12	auth	0007_alter_validators_add_error_messages	2019-01-01 23:35:25.782493+05:45
13	auth	0008_alter_user_username_max_length	2019-01-01 23:35:25.810764+05:45
14	auth	0009_alter_user_last_name_max_length	2019-01-01 23:35:25.821677+05:45
15	sessions	0001_initial	2019-01-01 23:35:25.883181+05:45
16	realtors	0001_initial	2019-01-02 00:23:49.713836+05:45
17	listings	0001_initial	2019-01-02 00:23:49.755499+05:45
18	contacts	0001_initial	2019-01-03 22:45:50.991343+05:45
19	contacts	0002_auto_20190104_0029	2019-01-04 00:29:16.627038+05:45
\.


--
-- TOC entry 2332 (class 0 OID 16540)
-- Dependencies: 214
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
zx8jtsc11dw70sw73oz3le4rvl9jm5h3	OGQyODIxOGQ1Zjg0OGVkNTI3NmM0MjBiNmFjZjY5NTUxOTRmNzgyZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0Yzk2NzhkZjAyZDQ3MTJkN2M3OWMzZmYwZThiNDZhYzc1NGJmMTJiIn0=	2019-01-18 01:47:17.734997+05:45
\.


--
-- TOC entry 2336 (class 0 OID 16563)
-- Dependencies: 218
-- Data for Name: listings_listing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.listings_listing (id, title, address, city, state, zipcode, description, price, bedrooms, bathrooms, garage, sqft, lot_size, photo_main, photo_1, photo_2, photo_3, photo_4, photo_5, photo_6, is_published, list_date, realtor_id) FROM stdin;
4	Biratnagar, Hatkhola	Biratnagar, Hatkhola	Biratnagar	1	1500000	act that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infan	3232440	8	2.0	2	343	1.0	photos/2019/01/02/home-4.jpg	photos/2019/01/02/home-inside-1_H4GLZXx.jpg	photos/2019/01/02/home-inside-2_6edmnL2.jpg	photos/2019/01/02/home-inside-3_VkIOwZb.jpg	photos/2019/01/02/home-inside-4_Hz6BSVG.jpg	photos/2019/01/02/home-inside-5_ivyf5O8.jpg	photos/2019/01/02/home-inside-6_lO6EDqX.jpg	t	2019-01-02 06:44:19+05:45	2
1	Patan Dhoka, Lalitpur	25th street Patan Dhoka, Lalitpur	Laltipur	3	55600	This house is sale for $200000K.	5000000	7	2.0	2	3000	2.9	photos/2019/01/02/home-1.jpg	photos/2019/01/02/home-inside-1.jpg	photos/2019/01/02/home-inside-2.jpg	photos/2019/01/02/home-inside-3.jpg	photos/2019/01/02/home-inside-4.jpg	photos/2019/01/02/home-inside-5.jpg	photos/2019/01/02/home-inside-6.jpg	t	2018-12-05 06:35:46+05:45	2
3	Biratnagar, Shantinagar	Biratnagar, Shantinagar	Biratnagar	1	23334	Biratnagar, Shantinagar\r\nWhat is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.	1800000	9	2.0	2	344	3.0	photos/2019/01/02/home-3.jpg	photos/2019/01/02/home-inside-1_nqyf2ao.jpg	photos/2019/01/02/home-inside-2_W5F3gBF.jpg	photos/2019/01/02/home-inside-3_87TvdSz.jpg	photos/2019/01/02/home-inside-4_Xnbebyp.jpg	photos/2019/01/02/home-inside-5_eApBl7p.jpg	photos/2019/01/02/home-inside-6_PQymu19.jpg	t	2019-01-02 06:42:07+05:45	3
2	Mahendranagar, Mahakali	Mahendranagar, Mahakali	Mahendranagar	7	2000000	What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.	232323	11	2.5	3	333	4.0	photos/2019/01/02/home-2.jpg	photos/2019/01/02/home-inside-1_QR0cbIX.jpg	photos/2019/01/02/home-inside-2_SxxVyiV.jpg	photos/2019/01/02/home-inside-3_lCRqPtn.jpg	photos/2019/01/02/home-inside-4_rZHTnLn.jpg	photos/2019/01/02/home-inside-5_MNE19Q9.jpg	photos/2019/01/02/home-inside-6_VG2kfB9.jpg	t	2019-01-02 06:39:46+05:45	4
5	Biratnagar, Pushpalal chowk	Biratnagar, Pushpalal chowk	Biratnagar	1	32322	Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alte	500000	15	3.0	3	3223	3.0	photos/2019/01/02/home-5.jpg	photos/2019/01/02/home-inside-1_pBVUifA.jpg	photos/2019/01/02/home-inside-2_dbx6e4T.jpg	photos/2019/01/02/home-inside-3_eeikzX9.jpg	photos/2019/01/02/home-inside-4_oyLRfH5.jpg	photos/2019/01/02/home-inside-5_y3xTm0k.jpg		t	2019-01-02 06:45:27+05:45	2
\.


--
-- TOC entry 2334 (class 0 OID 16552)
-- Dependencies: 216
-- Data for Name: realtors_realtor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.realtors_realtor (id, name, photo, description, email, phone, is_mvp, hire_date) FROM stdin;
3	Bijesh Jung Basnet	photos/2019/01/02/43255789_1142656279208770_1618796980866121728_o.jpg	What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.	bijeshjungbasnet@gmail.com	9862135291	f	2019-01-02 00:48:58+05:45
2	Ramesh Pradhan	photos/2019/01/02/19620950_1351670614940539_6426405727003658740_o_6z8jGoQ.jpg	I am a BSc. CSIT student. What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.	ramesrest@gmail.com	9860298534	f	2019-01-02 01:39:37+05:45
4	Bhuwan Raj Pandeya	photos/2019/01/02/27021242_1592096704214203_3513701933829184542_o.jpg	What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.	bhuwanpandeya@gmail.com	9832323223	t	2019-01-02 00:49:25+05:45
\.


--
-- TOC entry 2356 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 2357 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2358 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- TOC entry 2359 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2360 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- TOC entry 2361 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2362 (class 0 OID 0)
-- Dependencies: 219
-- Name: contacts_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_contact_id_seq', 17, true);


--
-- TOC entry 2363 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 53, true);


--
-- TOC entry 2364 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- TOC entry 2365 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- TOC entry 2366 (class 0 OID 0)
-- Dependencies: 217
-- Name: listings_listing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.listings_listing_id_seq', 5, true);


--
-- TOC entry 2367 (class 0 OID 0)
-- Dependencies: 215
-- Name: realtors_realtor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.realtors_realtor_id_seq', 4, true);


--
-- TOC entry 2142 (class 2606 OID 16423)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2147 (class 2606 OID 16478)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2150 (class 2606 OID 16431)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2144 (class 2606 OID 16421)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2137 (class 2606 OID 16464)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2139 (class 2606 OID 16413)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2158 (class 2606 OID 16449)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2161 (class 2606 OID 16493)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2152 (class 2606 OID 16439)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2164 (class 2606 OID 16457)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2167 (class 2606 OID 16507)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2155 (class 2606 OID 16535)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2182 (class 2606 OID 16589)
-- Name: contacts_contact contacts_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact
    ADD CONSTRAINT contacts_contact_pkey PRIMARY KEY (id);


--
-- TOC entry 2170 (class 2606 OID 16521)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2132 (class 2606 OID 16405)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2134 (class 2606 OID 16403)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2130 (class 2606 OID 16395)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2174 (class 2606 OID 16547)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2179 (class 2606 OID 16571)
-- Name: listings_listing listings_listing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_pkey PRIMARY KEY (id);


--
-- TOC entry 2177 (class 2606 OID 16560)
-- Name: realtors_realtor realtors_realtor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.realtors_realtor
    ADD CONSTRAINT realtors_realtor_pkey PRIMARY KEY (id);


--
-- TOC entry 2140 (class 1259 OID 16466)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2145 (class 1259 OID 16479)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2148 (class 1259 OID 16480)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2135 (class 1259 OID 16465)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2156 (class 1259 OID 16495)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2159 (class 1259 OID 16494)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2162 (class 1259 OID 16509)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2165 (class 1259 OID 16508)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2153 (class 1259 OID 16536)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2168 (class 1259 OID 16532)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2171 (class 1259 OID 16533)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2172 (class 1259 OID 16549)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2175 (class 1259 OID 16548)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2180 (class 1259 OID 16577)
-- Name: listings_listing_realtor_id_90583529; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX listings_listing_realtor_id_90583529 ON public.listings_listing USING btree (realtor_id);


--
-- TOC entry 2185 (class 2606 OID 16472)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2184 (class 2606 OID 16467)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2183 (class 2606 OID 16458)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2187 (class 2606 OID 16487)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2186 (class 2606 OID 16482)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2189 (class 2606 OID 16501)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2188 (class 2606 OID 16496)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2190 (class 2606 OID 16522)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2191 (class 2606 OID 16527)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2192 (class 2606 OID 16572)
-- Name: listings_listing listings_listing_realtor_id_90583529_fk_realtors_realtor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id FOREIGN KEY (realtor_id) REFERENCES public.realtors_realtor(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2019-01-04 16:14:45

--
-- PostgreSQL database dump complete
--

