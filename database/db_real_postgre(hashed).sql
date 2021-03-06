PGDMP         0                 w            btredb    11.1    11.1 z    %	           0    0    ENCODING    ENCODING         SET client_encoding = 'LATIN8';
                       false            &	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            '	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            (	           1262    16384    btredb    DATABASE     �   CREATE DATABASE btredb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE btredb;
             postgres    false            �            1259    16416 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    16414    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203            )	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    16426    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    16424    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205            *	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    16408    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    16406    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            +	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    16434 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         postgres    false            �            1259    16444    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            �            1259    16442    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209            ,	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    16432    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207            -	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    16452    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            �            1259    16450 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211            .	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    16581    contacts_contact    TABLE     }  CREATE TABLE public.contacts_contact (
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
 $   DROP TABLE public.contacts_contact;
       public         postgres    false            �            1259    16579    contacts_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contacts_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.contacts_contact_id_seq;
       public       postgres    false    220            /	           0    0    contacts_contact_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.contacts_contact_id_seq OWNED BY public.contacts_contact.id;
            public       postgres    false    219            �            1259    16512    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            �            1259    16510    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213            0	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    16398    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    16396    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199            1	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    16387    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    16385    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            2	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    16540    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    16563    listings_listing    TABLE     �  CREATE TABLE public.listings_listing (
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
 $   DROP TABLE public.listings_listing;
       public         postgres    false            �            1259    16561    listings_listing_id_seq    SEQUENCE     �   CREATE SEQUENCE public.listings_listing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.listings_listing_id_seq;
       public       postgres    false    218            3	           0    0    listings_listing_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.listings_listing_id_seq OWNED BY public.listings_listing.id;
            public       postgres    false    217            �            1259    16552    realtors_realtor    TABLE     X  CREATE TABLE public.realtors_realtor (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    photo character varying(100) NOT NULL,
    description text NOT NULL,
    email character varying(50) NOT NULL,
    phone character varying(20) NOT NULL,
    is_mvp boolean NOT NULL,
    hire_date timestamp with time zone NOT NULL
);
 $   DROP TABLE public.realtors_realtor;
       public         postgres    false            �            1259    16550    realtors_realtor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.realtors_realtor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.realtors_realtor_id_seq;
       public       postgres    false    216            4	           0    0    realtors_realtor_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.realtors_realtor_id_seq OWNED BY public.realtors_realtor.id;
            public       postgres    false    215            G           2604    16419    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            H           2604    16429    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            F           2604    16411    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            I           2604    16437    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207            J           2604    16447    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            K           2604    16455    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            P           2604    16584    contacts_contact id    DEFAULT     z   ALTER TABLE ONLY public.contacts_contact ALTER COLUMN id SET DEFAULT nextval('public.contacts_contact_id_seq'::regclass);
 B   ALTER TABLE public.contacts_contact ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    220    220            L           2604    16515    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            E           2604    16401    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            D           2604    16390    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            O           2604    16566    listings_listing id    DEFAULT     z   ALTER TABLE ONLY public.listings_listing ALTER COLUMN id SET DEFAULT nextval('public.listings_listing_id_seq'::regclass);
 B   ALTER TABLE public.listings_listing ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    217    218            N           2604    16555    realtors_realtor id    DEFAULT     z   ALTER TABLE ONLY public.realtors_realtor ALTER COLUMN id SET DEFAULT nextval('public.realtors_realtor_id_seq'::regclass);
 B   ALTER TABLE public.realtors_realtor ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    215    216            	          0    16416 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   >�       	          0    16426    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   [�       	          0    16408    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   x�       	          0    16434 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   ��       	          0    16444    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   q�       	          0    16452    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   ��       "	          0    16581    contacts_contact 
   TABLE DATA               w   COPY public.contacts_contact (id, listing, listing_id, name, email, phone, message, contact_date, user_id) FROM stdin;
    public       postgres    false    220   ��       	          0    16512    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   >�       	          0    16398    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   ^�       	          0    16387    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   ߪ       	          0    16540    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    214   ��        	          0    16563    listings_listing 
   TABLE DATA               �   COPY public.listings_listing (id, title, address, city, state, zipcode, description, price, bedrooms, bathrooms, garage, sqft, lot_size, photo_main, photo_1, photo_2, photo_3, photo_4, photo_5, photo_6, is_published, list_date, realtor_id) FROM stdin;
    public       postgres    false    218   ҭ       	          0    16552    realtors_realtor 
   TABLE DATA               i   COPY public.realtors_realtor (id, name, photo, description, email, phone, is_mvp, hire_date) FROM stdin;
    public       postgres    false    216   ̴       5	           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            6	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            7	           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
            public       postgres    false    200            8	           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            9	           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
            public       postgres    false    206            :	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            ;	           0    0    contacts_contact_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.contacts_contact_id_seq', 17, true);
            public       postgres    false    219            <	           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 53, true);
            public       postgres    false    212            =	           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
            public       postgres    false    198            >	           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
            public       postgres    false    196            ?	           0    0    listings_listing_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.listings_listing_id_seq', 5, true);
            public       postgres    false    217            @	           0    0    realtors_realtor_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.realtors_realtor_id_seq', 4, true);
            public       postgres    false    215            ^           2606    16423    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            c           2606    16478 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            f           2606    16431 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            `           2606    16421    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            Y           2606    16464 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            [           2606    16413 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            n           2606    16449 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209            q           2606    16493 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            h           2606    16439    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            t           2606    16457 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211            w           2606    16507 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            k           2606    16535     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207            �           2606    16589 &   contacts_contact contacts_contact_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.contacts_contact
    ADD CONSTRAINT contacts_contact_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.contacts_contact DROP CONSTRAINT contacts_contact_pkey;
       public         postgres    false    220            z           2606    16521 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            T           2606    16405 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            V           2606    16403 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            R           2606    16395 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            ~           2606    16547 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    214            �           2606    16571 &   listings_listing listings_listing_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.listings_listing DROP CONSTRAINT listings_listing_pkey;
       public         postgres    false    218            �           2606    16560 &   realtors_realtor realtors_realtor_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.realtors_realtor
    ADD CONSTRAINT realtors_realtor_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.realtors_realtor DROP CONSTRAINT realtors_realtor_pkey;
       public         postgres    false    216            \           1259    16466    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            a           1259    16479 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            d           1259    16480 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            W           1259    16465 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            l           1259    16495 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209            o           1259    16494 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209            r           1259    16509 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211            u           1259    16508 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            i           1259    16536     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207            x           1259    16532 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213            {           1259    16533 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213            |           1259    16549 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    214                       1259    16548 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    214            �           1259    16577 $   listings_listing_realtor_id_90583529    INDEX     g   CREATE INDEX listings_listing_realtor_id_90583529 ON public.listings_listing USING btree (realtor_id);
 8   DROP INDEX public.listings_listing_realtor_id_90583529;
       public         postgres    false    218            �           2606    16472 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    201    2139    205            �           2606    16467 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    203    205    2144            �           2606    16458 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    201    199    2134            �           2606    16487 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    209    2144    203            �           2606    16482 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    207    2152    209            �           2606    16501 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    211    201    2139            �           2606    16496 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    211    207    2152            �           2606    16522 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    2134    213    199            �           2606    16527 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    2152    207    213            �           2606    16572 L   listings_listing listings_listing_realtor_id_90583529_fk_realtors_realtor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id FOREIGN KEY (realtor_id) REFERENCES public.realtors_realtor(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.listings_listing DROP CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id;
       public       postgres    false    2177    218    216            	      x������ � �      	      x������ � �      	   q  x�]��n�0F����	�� -�{�Jj#�� A��o?p�p�G��ٙ�n*���S\�ƙ���k(m	�㻛����b��c�L-+ �𧰣�PMfKX�m�ɔ���H9��`��O�((�+*גe�ί�x��u)��腈�NADJV� X�ؓ�k��@�xZW��8��	��vpyލcX��W������Z�K05`��Xw�"'��J��~�//�y�AW�����~�a�l���z����&��X�I�-So��SeKrf��eL囱|}�f(�^F8�k��8��FXY������&��UֺG4-�l����K�H`�9Y	��сJe�@������u      	   h  x�}�oo�0�_���ؖ�R�%s�tc��!B�,E@t"��>�0��ef�K���=�==$�޻��<�("D�q�f4�q�5��^�g�
Z�f��GG!jF�4~����S�^��@��	�:���h�J2,eq!2y�0>�"�9�~�7�A����E̗ki���JqEW������׍���xZ�m�����]?ضC����zS'w�����Ⱥ���=�/����0�� j�)A�TY�6�E�}�]��o��Xu��3#IU��h���'�v������H$Yl
�����&�L�hrVSf���+�=My#������!V�
���݂�s�������I
1V��J�Z�����      	      x������ � �      	      x������ � �      "	   �   x��=�0����+n׆\>�5�����rhiM[.��[^^j����#��/%���i�^�_{ �Q�\�iLg�\tmm��\��X��q�u�|��*C��h���ޓ�Ɔ�>��� �Z)�&'�      	     x���Oo�8��ʧ|ݔ�����(v��{�)�b�2$y�ݢ�}ǉE˔�$v
� �x�'���!&�} � <Ȥ�@1k,*��L��'��cі�u���/L����</�Y�����kb�౓� 
i��:��z�8}Z/��+�.�n�M�ݸf�B�u��U����g��^�e^��'�d�d�)!��G�	W]��]S�ud�����2��/�n�n�2W���@2㜄����b�7~��}s��O?'�	K[�P\��\6����E��UO?&,͞%��d\1�V;��Ё�ﾛ���Дn�l쇙��[Nn�Ԟ���-W~��mY�Oغ�V���p�T��薞fwU��[z�2+�������}���0Dp��y��	a8�c�����2�-��07�B�c
�r&4�R�+��j���7�,���yR2��q�U�sSL0�6�W�QF<�$�Q�0ԯ�`����䒰��J��6y:RS�%�A0{4��/���?�A�M�P"@�}y��	bc�̸a�4?e�� n�Q8#^(�o�pBPS=̔c���8^�a�no�sܣ�٠7��:{:d�T�C�!���� �t���·1�(d�
��u�y樂��2�ҁ�@0/��'2՘IGX�$?�8B����6�3�-�4c��̂v�=}x;��1t�"a�������rr+����_�)H��J�i�X��h�r��;dz��}�`*u�]�L�Q]q�@�Y20J��˘��QgV+mωr<�� P㈆	�pVA�)��).���+�$�����kq����c��ǠAU��m�2��erI��w-�$������&�u^ߕ�F����$i��A���эx��	�W��j"��j��a$bB��@d�WKj��DNH�R���Z��r�6�1�ԄN�A��F�Z/�b��y��H,���� l��P?|��­�ڷ��ӱ�r�.\�U����qJz)J.w�T�a饜־������qnz�p&ԆQK܋��b%���rB��k��V�ovqq�?O�      	   q   x�M�K
�0�z�)����K7&����$/r��Cw3�M��k��Y�6�)��Pc[�{Q��X�io�ҝ7ZT�����39���j�(�} d�j�� <�������79�      	   �  x���ю� E����{Ոa ���B	�"a;d���b���V"Y<�������Nc�cJ�wBh7��o(��@~�;��D�D�����m�#�=	�R��s��\����m*����çv�>��UL��n� ���7n�,���4������6�kvc��
߼���������v��VZ[ͤ��d���0��f������]�4I�\i��p�=b^�`�
�êb�W̼,%M�t`�`P|R)�+ś��&�|��?ANN+
*Hd��.T���ٽ#��	��kAƻ�IS�KlSЃ���GA���j�J��F=�\B>%+0Va�_/�(���x풢�[JY	�	6�?�r��gB�,f*�J��j�brc���s�ʀ�\�*O�ϔ�'� Ym��OI��
��@No~�6[~�:��D��ͯ��t�dm_j      	     x�=�Mo�0 @��+v_4�� $;l:I��@��.ӶP5����v���K���vm l\�,��˽��$��Q6�k2>�>�4*;ZLM����h��G��1-rC�a��'} [��.�`�~We*Ud$jPm`�}�h�������>)�em����{}̧]E�9+�n��w����}�K�n}m2�]���n��CR6����v�Z�	�:�u��"�(JpZ%V>�B*����(6�������9\>�~���� ����p���h�       	   �  x��X]o۸}V~Q\ �X۵��yY4ٴ	ֹm��lP0h����H��⨿�����&[��� [C���9��0:��{͗�v����(��/�8�G}��x�Ϲg�Y�3a�Z*��e�y��"c�6"�,5��Y`Yɗ��s��2f%��a7�S�6��k,-�l�+GScE��KWL���,�x�5���sL[pՀ���K�i%��uV��4(������+:[��i��
@�8�˔\�xv��J���.��Y&�ʛ��՜��e%OWp8u��b޸/2�%�k`O��䟐�-x�<�˄b^��N؅3'�Ms�0����T���&�N�S$:�I ��K�7�K��:$�d8�G�Q��GI4�Oen�qo�~<yۏ�����)Dw���\��Rj'3эgg��/��-l��Xd��&-l�������y���������C��L�Ջ������8>���m���u�q�����h8<�'��GG�Q����'�f��f�;lʕ�ee�d�s$�
���x��h4�s}n�R��8
�r��$p��^Ԑ�<��>$��k��m��&m��&_m��&?�y9��I�?�����6/�'jw�s�e�r?�B���k�_�W�G'���_��g�dQ*HFUu 7��fi%m�\�u)�+(��*�M�{"��s!��&�Dw��6�=A�,@�R�I�!�A�Q��^A�t ��䎳%WJ��T.����e���QH$^4�])RY`�9���y�Ү�w�����/����J�jƕ3���3�Z(�zk�Lwcс\j
T�H��I�������k\��R�J�F�X<��4l�N���T����r�ӅN�9e7�%w�4��cj?؄\���}���_sX���N!O`�R\ t$Ʃ�2�C�z�p��E�aC��V����u�núx��Ջ��VJ����`y���R\�eW�[)����y]�Rj�<VmlǳO�뢊'/+ur�?�(�`/�.88�Y�a4>�Ը���������r��~B�4\��}z(�-(���6]9�}�����Vܿ�����M+�o��n�}���ZO�؎f�=�'�'���!Y-�_��`�x��O��K�0@��Y�Z�í����Xfp�9R@bk	��r[g6�	�*)����d#�����[>YcP�(h�R�G�*ԥLn�ATX��������,&�-Vc�@�)��R�B����D��|�ci�tõwƋ2�{Ug�pb K� v#���u��%�*�y� p�0f�RB�l�66sa�r�� �N���D��wKCn�ܚj�093��ڒ�<F�1�ÀD# �+D���0�9S�T<YJ�k�@и�{�$`i�t��L���~���XE���߰�h�=��ݿh�~0&���I�3��'2�@���Īɋ�;�Q$�T"\̠^�v5ʆc�T�������2Hm�`�Bs�`j�-�u�ne���;���q�Da��&/����tv�Û x��(�����ڶ�4G�yv����&E�Z��˪�~[
C3�?>74Q�Γ�_�]~�eh�Fzz�����Y��� �J�:�h+�"%ײ�d����� M����N�(X��}<]�؆�Q����-�1!ֿn�H��F�;�8��C�zZ~ǥ�"o�m #�.���~��"�ӧ�L�Q<
�L���o�m��xV��O.޵�9��~,�׭z�r���Mo�L=�\���;�Ճ�뢿
��D�����X�������Lp�      	   �  x��U=o�0��_�Md�%�K[w(\�@��@�%ڢ-�I�u}�du���-$�>��$Z��|��������9#T�	�6O�y^��Ҕe<c�`��sRҌ��DA�,���(m����F��S�z?t�ܓ�؏�^w}{�z�#�+��@h�N���45�c��
�^�z������Hk�̔�7���/]}�A=+��M��h�	�7ph0[��؃9��`�$le۪��L�|�d�nU:`tr��s߫JwXq��1���Y?c��8���7��J�08��z [o'd��=��U�����%7�HmFZ��XE#�#�P5�lU=5>`���C+��#�ITd��A�f�:l!��S��2�o�
*k¹�%��^nG�#�`�qD0�����C?�[�1��M8H�l5r���{�{,��s��j�z����?���3�֓^w(���֏[$��+�E��M84�D�zo	�%Y�ł�	_�|Ƣٍ��w�F�^�;RÈ�(��,'MEJx"������$/򔔶�~�/�����E�|�b�����
j$%��#��xG�Q�N�V L<I_X�.�H��h����æ�VG��P쌲����/�)�IJ�G�c`�h�"�t}��b���k���O���$
/�~�`�,��x6���     