PGDMP                         w            tareaNCapas    10.8    10.8                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            
           1262    16419    tareaNCapas    DATABASE     �   CREATE DATABASE "tareaNCapas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Canada.1252' LC_CTYPE = 'English_Canada.1252';
    DROP DATABASE "tareaNCapas";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16470    empleado    TABLE     �   CREATE TABLE public.empleado (
    id integer NOT NULL,
    nombre character varying(30),
    edad integer,
    genero character(30),
    estado boolean,
    sucursal integer
);
    DROP TABLE public.empleado;
       public         postgres    false    3            �            1259    16468    empleado_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empleado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.empleado_id_seq;
       public       postgres    false    199    3                       0    0    empleado_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.empleado_id_seq OWNED BY public.empleado.id;
            public       postgres    false    198            �            1259    16462    sucursal    TABLE       CREATE TABLE public.sucursal (
    id integer NOT NULL,
    nombre character varying(30),
    ubicacion character varying(30),
    horario_apertura character varying(30),
    horario_cierre character varying(30),
    nmesas integer,
    nomgerente character varying(30)
);
    DROP TABLE public.sucursal;
       public         postgres    false    3            �            1259    16460    sucursal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sucursal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sucursal_id_seq;
       public       postgres    false    197    3                       0    0    sucursal_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sucursal_id_seq OWNED BY public.sucursal.id;
            public       postgres    false    196            �            1259    16488    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    password character varying(30) NOT NULL
);
    DROP TABLE public.usuario;
       public         postgres    false    3            �            1259    16486    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public       postgres    false    3    201                       0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
            public       postgres    false    200            {
           2604    16473    empleado id    DEFAULT     j   ALTER TABLE ONLY public.empleado ALTER COLUMN id SET DEFAULT nextval('public.empleado_id_seq'::regclass);
 :   ALTER TABLE public.empleado ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            z
           2604    16465    sucursal id    DEFAULT     j   ALTER TABLE ONLY public.sucursal ALTER COLUMN id SET DEFAULT nextval('public.sucursal_id_seq'::regclass);
 :   ALTER TABLE public.sucursal ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            |
           2604    16491 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201                      0    16470    empleado 
   TABLE DATA               N   COPY public.empleado (id, nombre, edad, genero, estado, sucursal) FROM stdin;
    public       postgres    false    199   L                  0    16462    sucursal 
   TABLE DATA               o   COPY public.sucursal (id, nombre, ubicacion, horario_apertura, horario_cierre, nmesas, nomgerente) FROM stdin;
    public       postgres    false    197   �                 0    16488    usuario 
   TABLE DATA               9   COPY public.usuario (id, username, password) FROM stdin;
    public       postgres    false    201   B                   0    0    empleado_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.empleado_id_seq', 17, true);
            public       postgres    false    198                       0    0    sucursal_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sucursal_id_seq', 22, true);
            public       postgres    false    196                       0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 2, true);
            public       postgres    false    200            �
           2606    16475    empleado empleado_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public         postgres    false    199            ~
           2606    16467    sucursal sucursal_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sucursal DROP CONSTRAINT sucursal_pkey;
       public         postgres    false    197            �
           2606    16493    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         postgres    false    201            �
           2606    16495    usuario usuario_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_username_key UNIQUE (username);
 F   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_username_key;
       public         postgres    false    201            �
           2606    16481    empleado sucursal    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT sucursal FOREIGN KEY (sucursal) REFERENCES public.sucursal(id) ON DELETE SET NULL;
 ;   ALTER TABLE ONLY public.empleado DROP CONSTRAINT sucursal;
       public       postgres    false    199    2686    197               �   x���;�@�z|
N��B8 t�i�H*��`������>�z�8ޟ��r}0��ͯ��q mDa)a.D5"s%=�u�	����_k��ٙ�,>&���Hh��F|LqWQ��Vͮ��!�7S`ams5cGD/ �l�          M   x�32�.M.-*N�1�M�LNL���3�4��20�42����E�y%��\FFp�F�F��`�F ��ވ+F��� �a1            x�3�LL����,��/����� 2��     