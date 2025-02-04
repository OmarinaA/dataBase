PGDMP     '    
                {            studioDance    13.9    13.9 c    X           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            [           1262    16621    studioDance    DATABASE     j   CREATE DATABASE "studioDance" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "studioDance";
                postgres    false            �            1259    17155 
   Directions    TABLE     �   CREATE TABLE public."Directions" (
    "DirectionID" integer NOT NULL,
    "Title" integer NOT NULL,
    "Description" integer NOT NULL
);
     DROP TABLE public."Directions";
       public         heap    postgres    false            �            1259    17165    OrderID_SubscriptionID    TABLE     �   CREATE TABLE public."OrderID_SubscriptionID" (
    "ID" integer NOT NULL,
    "SubscriptionID" integer NOT NULL,
    "OrderID" integer NOT NULL
);
 ,   DROP TABLE public."OrderID_SubscriptionID";
       public         heap    postgres    false            �            1259    17142    Orders    TABLE     �   CREATE TABLE public."Orders" (
    "OrderID" integer NOT NULL,
    "UserID" integer NOT NULL,
    "Payment" integer NOT NULL,
    "Date" date NOT NULL
);
    DROP TABLE public."Orders";
       public         heap    postgres    false            �            1259    17170    Photos    TABLE     �   CREATE TABLE public."Photos" (
    "PhotoID" integer NOT NULL,
    "ParentsID" integer NOT NULL,
    "Path" character varying(255) NOT NULL
);
    DROP TABLE public."Photos";
       public         heap    postgres    false            �            1259    24802    Products    TABLE     z  CREATE TABLE public."Products" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    sessions character varying(255) NOT NULL,
    periods character varying(255) NOT NULL,
    directions character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Products";
       public         heap    postgres    false            �            1259    24800    Products_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Products_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Products_id_seq";
       public          postgres    false    215            \           0    0    Products_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Products_id_seq" OWNED BY public."Products".id;
          public          postgres    false    214            �            1259    17160    Sessions    TABLE     d   CREATE TABLE public."Sessions" (
    "SessionID" integer NOT NULL,
    "UserID" integer NOT NULL
);
    DROP TABLE public."Sessions";
       public         heap    postgres    false            �            1259    24844    SubscriptionTeacher    TABLE     �   CREATE TABLE public."SubscriptionTeacher" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "subscriptionId" integer NOT NULL,
    "teacherId" integer NOT NULL
);
 )   DROP TABLE public."SubscriptionTeacher";
       public         heap    postgres    false            �            1259    17134    Subscriptions    TABLE       CREATE TABLE public."Subscriptions" (
    "SubscriptionID" integer NOT NULL,
    "DirectionID" integer NOT NULL,
    "TeacherID" integer NOT NULL,
    "Title" character varying(255) NOT NULL,
    "Services" character varying(255) NOT NULL,
    "Price" integer NOT NULL
);
 #   DROP TABLE public."Subscriptions";
       public         heap    postgres    false            �            1259    24859    TeacherDirection    TABLE     �   CREATE TABLE public."TeacherDirection" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "directionId" integer NOT NULL,
    "teacherId" integer NOT NULL
);
 &   DROP TABLE public."TeacherDirection";
       public         heap    postgres    false            �            1259    17147    Teachers    TABLE     �   CREATE TABLE public."Teachers" (
    "TeacherID" integer NOT NULL,
    "FIO" character varying(255) NOT NULL,
    "Experience" integer NOT NULL,
    "Direction" character varying(255) NOT NULL,
    "Phone" integer NOT NULL
);
    DROP TABLE public."Teachers";
       public         heap    postgres    false            �            1259    17126    Users    TABLE     >  CREATE TABLE public."Users" (
    "UserID" integer NOT NULL,
    "FIO" character varying(255) NOT NULL,
    "Phone" integer NOT NULL,
    "Email" character varying(255) NOT NULL,
    "Login" character varying(255) NOT NULL,
    "Password" character varying(255) NOT NULL,
    "Role" character varying(255) NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    24835 
   directions    TABLE     �   CREATE TABLE public.directions (
    id integer NOT NULL,
    "Title" character varying(255),
    "Description" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.directions;
       public         heap    postgres    false            �            1259    24833    directions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.directions_id_seq;
       public          postgres    false    221            ]           0    0    directions_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.directions_id_seq OWNED BY public.directions.id;
          public          postgres    false    220            �            1259    24874    photos    TABLE     �   CREATE TABLE public.photos (
    id integer NOT NULL,
    "photoPath" character varying(255),
    type character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.photos;
       public         heap    postgres    false            �            1259    24776    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    title character varying(30) NOT NULL,
    sessions integer DEFAULT 0,
    periods character varying(30) NOT NULL,
    directions integer DEFAULT 0,
    price numeric
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    24774    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    213            ^           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    212            �            1259    24685    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    24813    subscriptions    TABLE       CREATE TABLE public.subscriptions (
    id integer NOT NULL,
    "Title" character varying(255),
    "Services" character varying(255),
    "Price" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public.subscriptions;
       public         heap    postgres    false            �            1259    24811    subscriptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subscriptions_id_seq;
       public          postgres    false    217            _           0    0    subscriptions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;
          public          postgres    false    216            �            1259    24824    teachers    TABLE     6  CREATE TABLE public.teachers (
    id integer NOT NULL,
    "FIO" character varying(255),
    "Experiens" character varying(255),
    "Direction" character varying(255),
    "Phone" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.teachers;
       public         heap    postgres    false            �            1259    24822    teachers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.teachers_id_seq;
       public          postgres    false    219            `           0    0    teachers_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;
          public          postgres    false    218            �            1259    24742 
   user_roles    TABLE     �   CREATE TABLE public.user_roles (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "roleId" integer NOT NULL,
    "userId" integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    24733    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255),
    login character varying(255),
    phone character varying(255),
    email character varying(255),
    password character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    activated boolean DEFAULT false,
    activation_code text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24731    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    210            a           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    209            �           2604    24805    Products id    DEFAULT     n   ALTER TABLE ONLY public."Products" ALTER COLUMN id SET DEFAULT nextval('public."Products_id_seq"'::regclass);
 <   ALTER TABLE public."Products" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    24838    directions id    DEFAULT     n   ALTER TABLE ONLY public.directions ALTER COLUMN id SET DEFAULT nextval('public.directions_id_seq'::regclass);
 <   ALTER TABLE public.directions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    24779    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    24816    subscriptions id    DEFAULT     t   ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);
 ?   ALTER TABLE public.subscriptions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    24827    teachers id    DEFAULT     j   ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);
 :   ALTER TABLE public.teachers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            ~           2604    24736    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            A          0    17155 
   Directions 
   TABLE DATA           M   COPY public."Directions" ("DirectionID", "Title", "Description") FROM stdin;
    public          postgres    false    204   ;{       C          0    17165    OrderID_SubscriptionID 
   TABLE DATA           U   COPY public."OrderID_SubscriptionID" ("ID", "SubscriptionID", "OrderID") FROM stdin;
    public          postgres    false    206   X{       ?          0    17142    Orders 
   TABLE DATA           J   COPY public."Orders" ("OrderID", "UserID", "Payment", "Date") FROM stdin;
    public          postgres    false    202   u{       D          0    17170    Photos 
   TABLE DATA           B   COPY public."Photos" ("PhotoID", "ParentsID", "Path") FROM stdin;
    public          postgres    false    207   �{       L          0    24802    Products 
   TABLE DATA           o   COPY public."Products" (id, title, sessions, periods, directions, price, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   �{       B          0    17160    Sessions 
   TABLE DATA           ;   COPY public."Sessions" ("SessionID", "UserID") FROM stdin;
    public          postgres    false    205   �{       S          0    24844    SubscriptionTeacher 
   TABLE DATA           h   COPY public."SubscriptionTeacher" ("createdAt", "updatedAt", "subscriptionId", "teacherId") FROM stdin;
    public          postgres    false    222   �{       >          0    17134    Subscriptions 
   TABLE DATA           u   COPY public."Subscriptions" ("SubscriptionID", "DirectionID", "TeacherID", "Title", "Services", "Price") FROM stdin;
    public          postgres    false    201   |       T          0    24859    TeacherDirection 
   TABLE DATA           b   COPY public."TeacherDirection" ("createdAt", "updatedAt", "directionId", "teacherId") FROM stdin;
    public          postgres    false    223   #|       @          0    17147    Teachers 
   TABLE DATA           \   COPY public."Teachers" ("TeacherID", "FIO", "Experience", "Direction", "Phone") FROM stdin;
    public          postgres    false    203   @|       =          0    17126    Users 
   TABLE DATA           a   COPY public."Users" ("UserID", "FIO", "Phone", "Email", "Login", "Password", "Role") FROM stdin;
    public          postgres    false    200   ]|       R          0    24835 
   directions 
   TABLE DATA           Z   COPY public.directions (id, "Title", "Description", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   �|       U          0    24874    photos 
   TABLE DATA           Q   COPY public.photos (id, "photoPath", type, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    224   �|       J          0    24776    products 
   TABLE DATA           S   COPY public.products (id, title, sessions, periods, directions, price) FROM stdin;
    public          postgres    false    213   ]}       E          0    24685    roles 
   TABLE DATA           C   COPY public.roles (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    208   �}       N          0    24813    subscriptions 
   TABLE DATA           c   COPY public.subscriptions (id, "Title", "Services", "Price", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   �}       P          0    24824    teachers 
   TABLE DATA           j   COPY public.teachers (id, "FIO", "Experiens", "Direction", "Phone", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   ~       H          0    24742 
   user_roles 
   TABLE DATA           R   COPY public.user_roles ("createdAt", "updatedAt", "roleId", "userId") FROM stdin;
    public          postgres    false    211   ~       G          0    24733    users 
   TABLE DATA           �   COPY public.users (id, username, login, phone, email, password, "createdAt", "updatedAt", activated, activation_code) FROM stdin;
    public          postgres    false    210          b           0    0    Products_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Products_id_seq"', 1, false);
          public          postgres    false    214            c           0    0    directions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.directions_id_seq', 1, false);
          public          postgres    false    220            d           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 1, false);
          public          postgres    false    212            e           0    0    subscriptions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.subscriptions_id_seq', 1, false);
          public          postgres    false    216            f           0    0    teachers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.teachers_id_seq', 1, false);
          public          postgres    false    218            g           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 19, true);
          public          postgres    false    209            �           2606    17159    Directions Directions_pk 
   CONSTRAINT     e   ALTER TABLE ONLY public."Directions"
    ADD CONSTRAINT "Directions_pk" PRIMARY KEY ("DirectionID");
 F   ALTER TABLE ONLY public."Directions" DROP CONSTRAINT "Directions_pk";
       public            postgres    false    204            �           2606    17169 0   OrderID_SubscriptionID OrderID_SubscriptionID_pk 
   CONSTRAINT     t   ALTER TABLE ONLY public."OrderID_SubscriptionID"
    ADD CONSTRAINT "OrderID_SubscriptionID_pk" PRIMARY KEY ("ID");
 ^   ALTER TABLE ONLY public."OrderID_SubscriptionID" DROP CONSTRAINT "OrderID_SubscriptionID_pk";
       public            postgres    false    206            �           2606    17146    Orders Orders_pk 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pk" PRIMARY KEY ("OrderID");
 >   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pk";
       public            postgres    false    202            �           2606    17174    Photos Photos_pk 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Photos"
    ADD CONSTRAINT "Photos_pk" PRIMARY KEY ("PhotoID");
 >   ALTER TABLE ONLY public."Photos" DROP CONSTRAINT "Photos_pk";
       public            postgres    false    207            �           2606    24810    Products Products_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_pkey";
       public            postgres    false    215            �           2606    17164    Sessions Sessions_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public."Sessions"
    ADD CONSTRAINT "Sessions_pk" PRIMARY KEY ("SessionID");
 B   ALTER TABLE ONLY public."Sessions" DROP CONSTRAINT "Sessions_pk";
       public            postgres    false    205            �           2606    24848 ,   SubscriptionTeacher SubscriptionTeacher_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SubscriptionTeacher"
    ADD CONSTRAINT "SubscriptionTeacher_pkey" PRIMARY KEY ("subscriptionId", "teacherId");
 Z   ALTER TABLE ONLY public."SubscriptionTeacher" DROP CONSTRAINT "SubscriptionTeacher_pkey";
       public            postgres    false    222    222            �           2606    17141    Subscriptions Subscriptions_pk 
   CONSTRAINT     n   ALTER TABLE ONLY public."Subscriptions"
    ADD CONSTRAINT "Subscriptions_pk" PRIMARY KEY ("SubscriptionID");
 L   ALTER TABLE ONLY public."Subscriptions" DROP CONSTRAINT "Subscriptions_pk";
       public            postgres    false    201            �           2606    24863 &   TeacherDirection TeacherDirection_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."TeacherDirection"
    ADD CONSTRAINT "TeacherDirection_pkey" PRIMARY KEY ("directionId", "teacherId");
 T   ALTER TABLE ONLY public."TeacherDirection" DROP CONSTRAINT "TeacherDirection_pkey";
       public            postgres    false    223    223            �           2606    17154    Teachers Teachers_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public."Teachers"
    ADD CONSTRAINT "Teachers_pk" PRIMARY KEY ("TeacherID");
 B   ALTER TABLE ONLY public."Teachers" DROP CONSTRAINT "Teachers_pk";
       public            postgres    false    203            �           2606    17133    Users Users_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pk" PRIMARY KEY ("UserID");
 <   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pk";
       public            postgres    false    200            �           2606    24843    directions directions_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.directions
    ADD CONSTRAINT directions_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.directions DROP CONSTRAINT directions_pkey;
       public            postgres    false    221            �           2606    24881    photos photos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.photos DROP CONSTRAINT photos_pkey;
       public            postgres    false    224            �           2606    24786    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    213            �           2606    24689    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    208            �           2606    24821     subscriptions subscriptions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_pkey;
       public            postgres    false    217            �           2606    24832    teachers teachers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.teachers DROP CONSTRAINT teachers_pkey;
       public            postgres    false    219            �           2606    24746    user_roles user_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY ("roleId", "userId");
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    211    211            �           2606    24741    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210            �           2606    17195 1   OrderID_SubscriptionID OrderID_SubscriptionID_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public."OrderID_SubscriptionID"
    ADD CONSTRAINT "OrderID_SubscriptionID_fk0" FOREIGN KEY ("SubscriptionID") REFERENCES public."Subscriptions"("SubscriptionID");
 _   ALTER TABLE ONLY public."OrderID_SubscriptionID" DROP CONSTRAINT "OrderID_SubscriptionID_fk0";
       public          postgres    false    206    2954    201            �           2606    17200 1   OrderID_SubscriptionID OrderID_SubscriptionID_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public."OrderID_SubscriptionID"
    ADD CONSTRAINT "OrderID_SubscriptionID_fk1" FOREIGN KEY ("OrderID") REFERENCES public."Orders"("OrderID");
 _   ALTER TABLE ONLY public."OrderID_SubscriptionID" DROP CONSTRAINT "OrderID_SubscriptionID_fk1";
       public          postgres    false    202    206    2956            �           2606    17185    Orders Orders_fk0    FK CONSTRAINT     }   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_fk0" FOREIGN KEY ("UserID") REFERENCES public."Users"("UserID");
 ?   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_fk0";
       public          postgres    false    2952    200    202            �           2606    17205    Photos Photos_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public."Photos"
    ADD CONSTRAINT "Photos_fk0" FOREIGN KEY ("ParentsID") REFERENCES public."Teachers"("TeacherID");
 ?   ALTER TABLE ONLY public."Photos" DROP CONSTRAINT "Photos_fk0";
       public          postgres    false    207    2958    203            �           2606    17210    Photos Photos_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public."Photos"
    ADD CONSTRAINT "Photos_fk1" FOREIGN KEY ("ParentsID") REFERENCES public."Directions"("DirectionID");
 ?   ALTER TABLE ONLY public."Photos" DROP CONSTRAINT "Photos_fk1";
       public          postgres    false    204    207    2960            �           2606    17190    Sessions Sessions_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sessions"
    ADD CONSTRAINT "Sessions_fk0" FOREIGN KEY ("UserID") REFERENCES public."Users"("UserID");
 C   ALTER TABLE ONLY public."Sessions" DROP CONSTRAINT "Sessions_fk0";
       public          postgres    false    200    205    2952            �           2606    24849 ;   SubscriptionTeacher SubscriptionTeacher_subscriptionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SubscriptionTeacher"
    ADD CONSTRAINT "SubscriptionTeacher_subscriptionId_fkey" FOREIGN KEY ("subscriptionId") REFERENCES public.subscriptions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 i   ALTER TABLE ONLY public."SubscriptionTeacher" DROP CONSTRAINT "SubscriptionTeacher_subscriptionId_fkey";
       public          postgres    false    217    222    2978            �           2606    24854 6   SubscriptionTeacher SubscriptionTeacher_teacherId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SubscriptionTeacher"
    ADD CONSTRAINT "SubscriptionTeacher_teacherId_fkey" FOREIGN KEY ("teacherId") REFERENCES public.teachers(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public."SubscriptionTeacher" DROP CONSTRAINT "SubscriptionTeacher_teacherId_fkey";
       public          postgres    false    222    2980    219            �           2606    17175    Subscriptions Subscriptions_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public."Subscriptions"
    ADD CONSTRAINT "Subscriptions_fk0" FOREIGN KEY ("DirectionID") REFERENCES public."Directions"("DirectionID");
 M   ALTER TABLE ONLY public."Subscriptions" DROP CONSTRAINT "Subscriptions_fk0";
       public          postgres    false    201    204    2960            �           2606    17180    Subscriptions Subscriptions_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public."Subscriptions"
    ADD CONSTRAINT "Subscriptions_fk1" FOREIGN KEY ("TeacherID") REFERENCES public."Teachers"("TeacherID");
 M   ALTER TABLE ONLY public."Subscriptions" DROP CONSTRAINT "Subscriptions_fk1";
       public          postgres    false    201    203    2958            �           2606    24864 2   TeacherDirection TeacherDirection_directionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TeacherDirection"
    ADD CONSTRAINT "TeacherDirection_directionId_fkey" FOREIGN KEY ("directionId") REFERENCES public.directions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public."TeacherDirection" DROP CONSTRAINT "TeacherDirection_directionId_fkey";
       public          postgres    false    221    223    2982            �           2606    24869 0   TeacherDirection TeacherDirection_teacherId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TeacherDirection"
    ADD CONSTRAINT "TeacherDirection_teacherId_fkey" FOREIGN KEY ("teacherId") REFERENCES public.teachers(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public."TeacherDirection" DROP CONSTRAINT "TeacherDirection_teacherId_fkey";
       public          postgres    false    223    219    2980            �           2606    24747 !   user_roles user_roles_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_roleId_fkey";
       public          postgres    false    208    2968    211            �           2606    24752 !   user_roles user_roles_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_userId_fkey";
       public          postgres    false    2970    210    211            A      x������ � �      C      x������ � �      ?      x������ � �      D      x������ � �      L      x������ � �      B      x������ � �      S      x������ � �      >      x������ � �      T      x������ � �      @      x������ � �      =   ^   x�3���M�I�H���W�M,��KTp�I�.NM-�K䴰40441�0�����fg����'gd':��&f��%��rB�B�q&��f�q��qqq e� j      R      x������ � �      U   e   x�3�t��-N-*�/��.���%��E�Y��%�@�2�pfn�~bYI~Qf�^A^:gfnbz�>�ed`d�k`�k`�`hfebjel�ga`�m`�G�+F��� �]"W      J   F   x�3�0�bÅ}6^�$�*\�~aÅ��/6]�qa+�!'P|+Pf3PP���@>P-Pʀ+F��� ��(�      E   !   x�3�,-N-��".#�Ĕ��<(/F��� ���      N      x������ � �      P      x������ � �      H   �   x�u��m�0@ѳ\���\���鿎ЗX����G�Y>h����8*�>~P
���еek`&G�&*���~�s�"I�6�J�\MR�E`;*6;f��F�R�R��ԛЍ�c./p/���n&���a����?Ex�p�c9�^����и��=Ü��1Qa�Jm�K
��ٍ���y@��:)�eZ�:�ҁ�)hʹ�X���s
�fJ��^֑iNA�Bc+c��&M)踾p]�/�6�C      G   �  x���ɖ�F�ת��E�\
��R� $���7��<��`������7~��7j�L�Nq�_���R��P���Ӄ��4M��N�{!0��r�s�����H�L�i�x����j�su�3+�L���zj�W������k`ϼA;����4���O��ӸN3���O4��Ȧ~�?�k��Ǵ�C�rjFs�6Y�F�xِܰ24���she+�U����y4�实k�L��q�Gg\|��C/ֿ��ο�i���f(�Eӗ.�ر9W����)�N.)r�&��i���R]T�����\Gg����o�����٣ �����CI�|�����a����2��9��8�J��؄f{X-Du����3�����+�K��k8;�z�ֱ���\� �?�G������d�9�H ��sCP��GP�(|g�O- 
'a�̲S�`Hc���w�	Y����}�����?^���T��8����yN��"/M�$Qb���Ϋ*��Yh��zKD����~^��F\�d�Q��d��������Q��5'Bu"�	w�RI��:���6?x�-�e�~F���lu��hci�8�c�L�O_�������IP8���YtC�������!�K΄<���S���������zivW��m�1)f
��am��Y&b>�GX9F���*2`_�7�Pg��m^�yB��:������������~;<:&w�[��N�56�'���]�]��4Q��%ۓz��'Y� ���A�'���P�B�A�����At&�4ESz�Ŧ����{>�_��R�c04k�nL�X*��!�-�[�b�<h@�eQ���|1�5ıL���T&�T��хR�7��hp�w,��,�y�O�y#�`Ϭ�\���(�2�μ�ǔAY*��Ǣ^�7Fu� �{��肅ޏ$�Kt��h���L{��m�����e;W��6��c~<�[M�����Y���y��)�����΄�>v�8�@����.�*����A�ٴ���2�p"o[��PT��Y����ٲ��O�#�zØ����
+98�k�D�F�=��Ș��m�kl�B�r�52�WD�.�Ҙ�D8IM�t�'	?7W��w�D���y,������*�¦�4���(d;k8��O�l/�x�S'�ܒ,������i���ԑ X�H�:���G���Q5p��8�����k���7�G��&�5���Ki�rL/t�G�N߳j��2������	�і��.��-�����G��n:��� O{���8��������N�I"�^�č�j���^�J��c�\G�jh�����N�/����Gİ�k���5��7Z��y�G�>-������ao��l�bl�ה�sz�$�*P�.�6<��P���õAG�:�4觪 x&�S��Ƈ���|��a�I3y��{%�ʛ���Lz����Fg�_��O��x��     