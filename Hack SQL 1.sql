PGDMP  	    4                |         
   Hack SQL 1    16.3    16.3 o    w           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            x           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            z           1262    16407 
   Hack SQL 1    DATABASE        CREATE DATABASE "Hack SQL 1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "Hack SQL 1";
                postgres    false            �            1259    16435    contact_request    TABLE        CREATE TABLE public.contact_request (
    id_email character varying(100) NOT NULL,
    id_country integer NOT NULL,
    id_priority integer NOT NULL,
    name character varying(50) NOT NULL,
    detail text,
    physical_address character varying(255)
);
 #   DROP TABLE public.contact_request;
       public         heap    postgres    false            �            1259    16410 	   countries    TABLE     l   CREATE TABLE public.countries (
    id_country integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.countries;
       public         heap    postgres    false            �            1259    16409    countries_id_country_seq    SEQUENCE     �   CREATE SEQUENCE public.countries_id_country_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.countries_id_country_seq;
       public          postgres    false    216            {           0    0    countries_id_country_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.countries_id_country_seq OWNED BY public.countries.id_country;
          public          postgres    false    215            �            1259    16459 	   customers    TABLE     "  CREATE TABLE public.customers (
    email character varying(255) NOT NULL,
    id_country integer,
    id_role integer,
    name character varying(255) NOT NULL,
    age integer NOT NULL,
    password character varying(255) NOT NULL,
    physical_address character varying(255) NOT NULL
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    16491 	   discounts    TABLE     �   CREATE TABLE public.discounts (
    id_discount integer NOT NULL,
    status character varying(255) NOT NULL,
    percentage numeric(5,2) NOT NULL
);
    DROP TABLE public.discounts;
       public         heap    postgres    false            �            1259    16490    discounts_id_discount_seq    SEQUENCE     �   CREATE SEQUENCE public.discounts_id_discount_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.discounts_id_discount_seq;
       public          postgres    false    230            |           0    0    discounts_id_discount_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.discounts_id_discount_seq OWNED BY public.discounts.id_discount;
          public          postgres    false    229            �            1259    16512    invoice_status    TABLE     {   CREATE TABLE public.invoice_status (
    id_invoice_status integer NOT NULL,
    status character varying(255) NOT NULL
);
 "   DROP TABLE public.invoice_status;
       public         heap    postgres    false            �            1259    16511 $   invoice_status_id_invoice_status_seq    SEQUENCE     �   CREATE SEQUENCE public.invoice_status_id_invoice_status_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.invoice_status_id_invoice_status_seq;
       public          postgres    false    234            }           0    0 $   invoice_status_id_invoice_status_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.invoice_status_id_invoice_status_seq OWNED BY public.invoice_status.id_invoice_status;
          public          postgres    false    233            �            1259    16553    invoices    TABLE     �   CREATE TABLE public.invoices (
    id_invoice integer NOT NULL,
    id_customer character varying(255),
    id_payment_status integer,
    date date NOT NULL,
    total_to_pay numeric(10,2) NOT NULL
);
    DROP TABLE public.invoices;
       public         heap    postgres    false            �            1259    16552    invoices_id_invoice_seq    SEQUENCE     �   CREATE SEQUENCE public.invoices_id_invoice_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.invoices_id_invoice_seq;
       public          postgres    false    239            ~           0    0    invoices_id_invoice_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.invoices_id_invoice_seq OWNED BY public.invoices.id_invoice;
          public          postgres    false    238            �            1259    16484    offers    TABLE     j   CREATE TABLE public.offers (
    id_offer integer NOT NULL,
    status character varying(255) NOT NULL
);
    DROP TABLE public.offers;
       public         heap    postgres    false            �            1259    16483    offers_id_offer_seq    SEQUENCE     �   CREATE SEQUENCE public.offers_id_offer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.offers_id_offer_seq;
       public          postgres    false    228                       0    0    offers_id_offer_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.offers_id_offer_seq OWNED BY public.offers.id_offer;
          public          postgres    false    227            �            1259    16570    orders    TABLE     �   CREATE TABLE public.orders (
    id_order integer NOT NULL,
    id_invoice integer,
    id_product integer,
    detail text,
    amount integer NOT NULL,
    price numeric(10,2) NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16569    orders_id_order_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_order_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.orders_id_order_seq;
       public          postgres    false    241            �           0    0    orders_id_order_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.orders_id_order_seq OWNED BY public.orders.id_order;
          public          postgres    false    240            �            1259    16498    payments    TABLE     �   CREATE TABLE public.payments (
    id_payment integer NOT NULL,
    id_customer character varying(255),
    type character varying(255) NOT NULL
);
    DROP TABLE public.payments;
       public         heap    postgres    false            �            1259    16497    payments_id_payment_seq    SEQUENCE     �   CREATE SEQUENCE public.payments_id_payment_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.payments_id_payment_seq;
       public          postgres    false    232            �           0    0    payments_id_payment_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.payments_id_payment_seq OWNED BY public.payments.id_payment;
          public          postgres    false    231            �            1259    16429 
   priorities    TABLE     s   CREATE TABLE public.priorities (
    id_priority integer NOT NULL,
    type_name character varying(50) NOT NULL
);
    DROP TABLE public.priorities;
       public         heap    postgres    false            �            1259    16428    priorities_id_priority_seq    SEQUENCE     �   CREATE SEQUENCE public.priorities_id_priority_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.priorities_id_priority_seq;
       public          postgres    false    220            �           0    0    priorities_id_priority_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.priorities_id_priority_seq OWNED BY public.priorities.id_priority;
          public          postgres    false    219            �            1259    16537    product_customers    TABLE     |   CREATE TABLE public.product_customers (
    id_product integer NOT NULL,
    id_customer character varying(255) NOT NULL
);
 %   DROP TABLE public.product_customers;
       public         heap    postgres    false            �            1259    16519    products    TABLE     w  CREATE TABLE public.products (
    id_product integer NOT NULL,
    discount integer,
    id_tax integer,
    id_offer integer,
    name character varying(255) NOT NULL,
    details text,
    minimum_stock integer NOT NULL,
    maximum_stock integer NOT NULL,
    current_stock integer NOT NULL,
    price numeric(10,2) NOT NULL,
    price_with_tax numeric(10,2) NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16518    products_id_product_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_product_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_id_product_seq;
       public          postgres    false    236            �           0    0    products_id_product_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_id_product_seq OWNED BY public.products.id_product;
          public          postgres    false    235            �            1259    16453    roles    TABLE     f   CREATE TABLE public.roles (
    id_role integer NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16452    roles_id_role_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.roles_id_role_seq;
       public          postgres    false    223            �           0    0    roles_id_role_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.roles_id_role_seq OWNED BY public.roles.id_role;
          public          postgres    false    222            �            1259    16477    taxes    TABLE     a   CREATE TABLE public.taxes (
    id_tax integer NOT NULL,
    percentage numeric(5,2) NOT NULL
);
    DROP TABLE public.taxes;
       public         heap    postgres    false            �            1259    16476    taxes_id_tax_seq    SEQUENCE     �   CREATE SEQUENCE public.taxes_id_tax_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.taxes_id_tax_seq;
       public          postgres    false    226            �           0    0    taxes_id_tax_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.taxes_id_tax_seq OWNED BY public.taxes.id_tax;
          public          postgres    false    225            �            1259    16417    users    TABLE     �   CREATE TABLE public.users (
    id_users integer NOT NULL,
    id_country integer NOT NULL,
    email character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16416    users_id_users_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_users_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.users_id_users_seq;
       public          postgres    false    218            �           0    0    users_id_users_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_id_users_seq OWNED BY public.users.id_users;
          public          postgres    false    217            �           2604    16413    countries id_country    DEFAULT     |   ALTER TABLE ONLY public.countries ALTER COLUMN id_country SET DEFAULT nextval('public.countries_id_country_seq'::regclass);
 C   ALTER TABLE public.countries ALTER COLUMN id_country DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    16494    discounts id_discount    DEFAULT     ~   ALTER TABLE ONLY public.discounts ALTER COLUMN id_discount SET DEFAULT nextval('public.discounts_id_discount_seq'::regclass);
 D   ALTER TABLE public.discounts ALTER COLUMN id_discount DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    16515     invoice_status id_invoice_status    DEFAULT     �   ALTER TABLE ONLY public.invoice_status ALTER COLUMN id_invoice_status SET DEFAULT nextval('public.invoice_status_id_invoice_status_seq'::regclass);
 O   ALTER TABLE public.invoice_status ALTER COLUMN id_invoice_status DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    16556    invoices id_invoice    DEFAULT     z   ALTER TABLE ONLY public.invoices ALTER COLUMN id_invoice SET DEFAULT nextval('public.invoices_id_invoice_seq'::regclass);
 B   ALTER TABLE public.invoices ALTER COLUMN id_invoice DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    16487    offers id_offer    DEFAULT     r   ALTER TABLE ONLY public.offers ALTER COLUMN id_offer SET DEFAULT nextval('public.offers_id_offer_seq'::regclass);
 >   ALTER TABLE public.offers ALTER COLUMN id_offer DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    16573    orders id_order    DEFAULT     r   ALTER TABLE ONLY public.orders ALTER COLUMN id_order SET DEFAULT nextval('public.orders_id_order_seq'::regclass);
 >   ALTER TABLE public.orders ALTER COLUMN id_order DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    16501    payments id_payment    DEFAULT     z   ALTER TABLE ONLY public.payments ALTER COLUMN id_payment SET DEFAULT nextval('public.payments_id_payment_seq'::regclass);
 B   ALTER TABLE public.payments ALTER COLUMN id_payment DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    16432    priorities id_priority    DEFAULT     �   ALTER TABLE ONLY public.priorities ALTER COLUMN id_priority SET DEFAULT nextval('public.priorities_id_priority_seq'::regclass);
 E   ALTER TABLE public.priorities ALTER COLUMN id_priority DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16522    products id_product    DEFAULT     z   ALTER TABLE ONLY public.products ALTER COLUMN id_product SET DEFAULT nextval('public.products_id_product_seq'::regclass);
 B   ALTER TABLE public.products ALTER COLUMN id_product DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    16456    roles id_role    DEFAULT     n   ALTER TABLE ONLY public.roles ALTER COLUMN id_role SET DEFAULT nextval('public.roles_id_role_seq'::regclass);
 <   ALTER TABLE public.roles ALTER COLUMN id_role DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16480    taxes id_tax    DEFAULT     l   ALTER TABLE ONLY public.taxes ALTER COLUMN id_tax SET DEFAULT nextval('public.taxes_id_tax_seq'::regclass);
 ;   ALTER TABLE public.taxes ALTER COLUMN id_tax DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16420    users id_users    DEFAULT     p   ALTER TABLE ONLY public.users ALTER COLUMN id_users SET DEFAULT nextval('public.users_id_users_seq'::regclass);
 =   ALTER TABLE public.users ALTER COLUMN id_users DROP DEFAULT;
       public          postgres    false    218    217    218            `          0    16435    contact_request 
   TABLE DATA           l   COPY public.contact_request (id_email, id_country, id_priority, name, detail, physical_address) FROM stdin;
    public          postgres    false    221   ̓       [          0    16410 	   countries 
   TABLE DATA           5   COPY public.countries (id_country, name) FROM stdin;
    public          postgres    false    216   y�       c          0    16459 	   customers 
   TABLE DATA           f   COPY public.customers (email, id_country, id_role, name, age, password, physical_address) FROM stdin;
    public          postgres    false    224   ��       i          0    16491 	   discounts 
   TABLE DATA           D   COPY public.discounts (id_discount, status, percentage) FROM stdin;
    public          postgres    false    230   ��       m          0    16512    invoice_status 
   TABLE DATA           C   COPY public.invoice_status (id_invoice_status, status) FROM stdin;
    public          postgres    false    234   ˅       r          0    16553    invoices 
   TABLE DATA           b   COPY public.invoices (id_invoice, id_customer, id_payment_status, date, total_to_pay) FROM stdin;
    public          postgres    false    239   �       g          0    16484    offers 
   TABLE DATA           2   COPY public.offers (id_offer, status) FROM stdin;
    public          postgres    false    228   V�       t          0    16570    orders 
   TABLE DATA           Y   COPY public.orders (id_order, id_invoice, id_product, detail, amount, price) FROM stdin;
    public          postgres    false    241   ��       k          0    16498    payments 
   TABLE DATA           A   COPY public.payments (id_payment, id_customer, type) FROM stdin;
    public          postgres    false    232   Ά       _          0    16429 
   priorities 
   TABLE DATA           <   COPY public.priorities (id_priority, type_name) FROM stdin;
    public          postgres    false    220   �       p          0    16537    product_customers 
   TABLE DATA           D   COPY public.product_customers (id_product, id_customer) FROM stdin;
    public          postgres    false    237   M�       o          0    16519    products 
   TABLE DATA           �   COPY public.products (id_product, discount, id_tax, id_offer, name, details, minimum_stock, maximum_stock, current_stock, price, price_with_tax) FROM stdin;
    public          postgres    false    236   ��       b          0    16453    roles 
   TABLE DATA           .   COPY public.roles (id_role, name) FROM stdin;
    public          postgres    false    223   
�       e          0    16477    taxes 
   TABLE DATA           3   COPY public.taxes (id_tax, percentage) FROM stdin;
    public          postgres    false    226   >�       ]          0    16417    users 
   TABLE DATA           B   COPY public.users (id_users, id_country, email, name) FROM stdin;
    public          postgres    false    218   m�       �           0    0    countries_id_country_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.countries_id_country_seq', 11, true);
          public          postgres    false    215            �           0    0    discounts_id_discount_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.discounts_id_discount_seq', 3, true);
          public          postgres    false    229            �           0    0 $   invoice_status_id_invoice_status_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.invoice_status_id_invoice_status_seq', 3, true);
          public          postgres    false    233            �           0    0    invoices_id_invoice_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.invoices_id_invoice_seq', 3, true);
          public          postgres    false    238            �           0    0    offers_id_offer_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.offers_id_offer_seq', 2, true);
          public          postgres    false    227            �           0    0    orders_id_order_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.orders_id_order_seq', 3, true);
          public          postgres    false    240            �           0    0    payments_id_payment_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.payments_id_payment_seq', 3, true);
          public          postgres    false    231            �           0    0    priorities_id_priority_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.priorities_id_priority_seq', 3, true);
          public          postgres    false    219            �           0    0    products_id_product_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.products_id_product_seq', 6, true);
          public          postgres    false    235            �           0    0    roles_id_role_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.roles_id_role_seq', 3, true);
          public          postgres    false    222            �           0    0    taxes_id_tax_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.taxes_id_tax_seq', 3, true);
          public          postgres    false    225            �           0    0    users_id_users_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_id_users_seq', 2, true);
          public          postgres    false    217            �           2606    16441 $   contact_request contact_request_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.contact_request
    ADD CONSTRAINT contact_request_pkey PRIMARY KEY (id_email);
 N   ALTER TABLE ONLY public.contact_request DROP CONSTRAINT contact_request_pkey;
       public            postgres    false    221            �           2606    16415    countries countries_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id_country);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    216            �           2606    16465    customers customers_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (email);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    224            �           2606    16496    discounts discounts_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.discounts
    ADD CONSTRAINT discounts_pkey PRIMARY KEY (id_discount);
 B   ALTER TABLE ONLY public.discounts DROP CONSTRAINT discounts_pkey;
       public            postgres    false    230            �           2606    16517 "   invoice_status invoice_status_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.invoice_status
    ADD CONSTRAINT invoice_status_pkey PRIMARY KEY (id_invoice_status);
 L   ALTER TABLE ONLY public.invoice_status DROP CONSTRAINT invoice_status_pkey;
       public            postgres    false    234            �           2606    16558    invoices invoices_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id_invoice);
 @   ALTER TABLE ONLY public.invoices DROP CONSTRAINT invoices_pkey;
       public            postgres    false    239            �           2606    16489    offers offers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_pkey PRIMARY KEY (id_offer);
 <   ALTER TABLE ONLY public.offers DROP CONSTRAINT offers_pkey;
       public            postgres    false    228            �           2606    16577    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id_order);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    241            �           2606    16505    payments payments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id_payment);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public            postgres    false    232            �           2606    16434    priorities priorities_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.priorities
    ADD CONSTRAINT priorities_pkey PRIMARY KEY (id_priority);
 D   ALTER TABLE ONLY public.priorities DROP CONSTRAINT priorities_pkey;
       public            postgres    false    220            �           2606    16541 (   product_customers product_customers_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.product_customers
    ADD CONSTRAINT product_customers_pkey PRIMARY KEY (id_product, id_customer);
 R   ALTER TABLE ONLY public.product_customers DROP CONSTRAINT product_customers_pkey;
       public            postgres    false    237    237            �           2606    16526    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id_product);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    236            �           2606    16458    roles roles_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id_role);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    223            �           2606    16482    taxes taxes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.taxes
    ADD CONSTRAINT taxes_pkey PRIMARY KEY (id_tax);
 :   ALTER TABLE ONLY public.taxes DROP CONSTRAINT taxes_pkey;
       public            postgres    false    226            �           2606    16422    users users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_users);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            �           2606    16442 /   contact_request contact_request_id_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_request
    ADD CONSTRAINT contact_request_id_country_fkey FOREIGN KEY (id_country) REFERENCES public.countries(id_country);
 Y   ALTER TABLE ONLY public.contact_request DROP CONSTRAINT contact_request_id_country_fkey;
       public          postgres    false    4768    221    216            �           2606    16447 0   contact_request contact_request_id_priority_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_request
    ADD CONSTRAINT contact_request_id_priority_fkey FOREIGN KEY (id_priority) REFERENCES public.priorities(id_priority);
 Z   ALTER TABLE ONLY public.contact_request DROP CONSTRAINT contact_request_id_priority_fkey;
       public          postgres    false    220    4772    221            �           2606    16466 #   customers customers_id_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_id_country_fkey FOREIGN KEY (id_country) REFERENCES public.countries(id_country);
 M   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_id_country_fkey;
       public          postgres    false    4768    224    216            �           2606    16471     customers customers_id_role_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_id_role_fkey FOREIGN KEY (id_role) REFERENCES public.roles(id_role);
 J   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_id_role_fkey;
       public          postgres    false    224    223    4776            �           2606    16559 "   invoices invoices_id_customer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_id_customer_fkey FOREIGN KEY (id_customer) REFERENCES public.customers(email) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.invoices DROP CONSTRAINT invoices_id_customer_fkey;
       public          postgres    false    224    239    4778            �           2606    16564 (   invoices invoices_id_payment_status_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_id_payment_status_fkey FOREIGN KEY (id_payment_status) REFERENCES public.invoice_status(id_invoice_status) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.invoices DROP CONSTRAINT invoices_id_payment_status_fkey;
       public          postgres    false    239    234    4788            �           2606    16578    orders orders_id_invoice_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_id_invoice_fkey FOREIGN KEY (id_invoice) REFERENCES public.invoices(id_invoice) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_id_invoice_fkey;
       public          postgres    false    239    4794    241            �           2606    16583    orders orders_id_product_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_id_product_fkey FOREIGN KEY (id_product) REFERENCES public.products(id_product) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_id_product_fkey;
       public          postgres    false    241    4790    236            �           2606    16506 "   payments payments_id_customer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_id_customer_fkey FOREIGN KEY (id_customer) REFERENCES public.customers(email) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_id_customer_fkey;
       public          postgres    false    4778    232    224            �           2606    16547 4   product_customers product_customers_id_customer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_customers
    ADD CONSTRAINT product_customers_id_customer_fkey FOREIGN KEY (id_customer) REFERENCES public.customers(email) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.product_customers DROP CONSTRAINT product_customers_id_customer_fkey;
       public          postgres    false    224    4778    237            �           2606    16542 3   product_customers product_customers_id_product_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_customers
    ADD CONSTRAINT product_customers_id_product_fkey FOREIGN KEY (id_product) REFERENCES public.products(id_product) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.product_customers DROP CONSTRAINT product_customers_id_product_fkey;
       public          postgres    false    4790    237    236            �           2606    16532    products products_id_offer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_id_offer_fkey FOREIGN KEY (id_offer) REFERENCES public.offers(id_offer);
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT products_id_offer_fkey;
       public          postgres    false    236    4782    228            �           2606    16527    products products_id_tax_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_id_tax_fkey FOREIGN KEY (id_tax) REFERENCES public.taxes(id_tax);
 G   ALTER TABLE ONLY public.products DROP CONSTRAINT products_id_tax_fkey;
       public          postgres    false    4780    236    226            �           2606    16423    users users_id_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_country_fkey FOREIGN KEY (id_country) REFERENCES public.countries(id_country);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_id_country_fkey;
       public          postgres    false    216    4768    218            `   �   x�U�M
�P���"(�g��)J�nb_�'iSҦ���^̸d3|3W]�۞�l�s��a8��(1�Sn��J�iBM�X���/�Ų�ʨ��JC�)����\�/�M3r~b�P��h	Loԍ�k1l���`�����4�x.c��A^      [   t   x�=̽�0��n�����4HiS��X2v�$b#Jf�bP1�{*7KcH�
>���qѸA3��?��%{M��\Lܣ�����>���薨�a,���9�J����/�$�      c   �   x�U�A
�0D�?��(�$�[�7�dL��$��m=���<��3^��\R�^2�F�$���kg�%aA�}��η��r��x�)~0�-�5��Z0Moy�:: a��\�_R��?�z��)"Gu�J�/F/�      i   *   x�3�tL.�,K�44�30�2���K�
��a�`�=... R�$      m   *   x�3�H�K��K�2�H�L�2�tN�KN��IM����� �	6      r   A   x�3�L�O�wH�H�-�I�K���4�4202�5��5 1���9��2QT#TsCT��qqq ���      g      x�3�tL.�,K�2���K�0c���� ^�      t   <   x�3�4�4��/JI�SHIU((�O)M.�W0�4�420�30�2�4�4â$nQ���� �Qx      k   <   x�3�L�O�wH�H�-�I�K���H�H��2��O�D�pJ��V)J�+NK-����� �^      _   #   x�3�t�)I�2��MM�L�2�tJ�J����� ^�H      p   '   x�3�L�O�wH�H�-�I�K���2��O�D����� .*      o   v   x�u��	�0D��)<��t�'�  ?��!!u���@ӟp�;��D:4���y�5(=j�V�a�-l�_�O(��DO
D�dC?�� ��ц�� X27.��� @�%9w ��Tb�#3T�3      b   $   x�3�tL����2�-N-�2��M�KL�b���� }��      e      x�3�42�30�2�44�Ɯf *F��� >X      ]      x�3�4�L��w b= ���b���� eg)     