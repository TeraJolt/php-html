PGDMP     "            
        |            1AtividadePHP    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25451    1AtividadePHP    DATABASE     �   CREATE DATABASE "1AtividadePHP" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "1AtividadePHP";
                postgres    false            �            1259    25467    cliente    TABLE     �  CREATE TABLE public.cliente (
    id integer NOT NULL,
    nome character varying(100),
    endereco character varying(100),
    numero character varying(5),
    bairro character varying(100),
    cidade character varying(100),
    estado_id integer,
    cep character varying(9),
    telefone character varying(13),
    celular character varying(14),
    email character varying(100),
    data date,
    est_civil_id integer
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    25466    cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cliente_id_seq;
       public          postgres    false    219                       0    0    cliente_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;
          public          postgres    false    218            �            1259    25460 	   est_civil    TABLE     `   CREATE TABLE public.est_civil (
    id integer NOT NULL,
    est_civil character varying(15)
);
    DROP TABLE public.est_civil;
       public         heap    postgres    false            �            1259    25459    est_civil_id_seq    SEQUENCE     �   CREATE SEQUENCE public.est_civil_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.est_civil_id_seq;
       public          postgres    false    217                       0    0    est_civil_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.est_civil_id_seq OWNED BY public.est_civil.id;
          public          postgres    false    216            �            1259    25453    estado    TABLE     \   CREATE TABLE public.estado (
    id integer NOT NULL,
    estado_uf character varying(2)
);
    DROP TABLE public.estado;
       public         heap    postgres    false            �            1259    25452    estado_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.estado_id_seq;
       public          postgres    false    215                       0    0    estado_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.estado_id_seq OWNED BY public.estado.id;
          public          postgres    false    214            q           2604    25470 
   cliente id    DEFAULT     h   ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);
 9   ALTER TABLE public.cliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            p           2604    25463    est_civil id    DEFAULT     l   ALTER TABLE ONLY public.est_civil ALTER COLUMN id SET DEFAULT nextval('public.est_civil_id_seq'::regclass);
 ;   ALTER TABLE public.est_civil ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            o           2604    25456 	   estado id    DEFAULT     f   ALTER TABLE ONLY public.estado ALTER COLUMN id SET DEFAULT nextval('public.estado_id_seq'::regclass);
 8   ALTER TABLE public.estado ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    25467    cliente 
   TABLE DATA           �   COPY public.cliente (id, nome, endereco, numero, bairro, cidade, estado_id, cep, telefone, celular, email, data, est_civil_id) FROM stdin;
    public          postgres    false    219   6                 0    25460 	   est_civil 
   TABLE DATA           2   COPY public.est_civil (id, est_civil) FROM stdin;
    public          postgres    false    217   S       	          0    25453    estado 
   TABLE DATA           /   COPY public.estado (id, estado_uf) FROM stdin;
    public          postgres    false    215   �                  0    0    cliente_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cliente_id_seq', 1, false);
          public          postgres    false    218                       0    0    est_civil_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.est_civil_id_seq', 4, true);
          public          postgres    false    216                       0    0    estado_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.estado_id_seq', 7, true);
          public          postgres    false    214            w           2606    25474    cliente cliente_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    219            u           2606    25465    est_civil est_civil_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.est_civil
    ADD CONSTRAINT est_civil_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.est_civil DROP CONSTRAINT est_civil_pkey;
       public            postgres    false    217            s           2606    25458    estado estado_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.estado DROP CONSTRAINT estado_pkey;
       public            postgres    false    215            x           2606    25480 !   cliente cliente_est_civil_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_est_civil_id_fkey FOREIGN KEY (est_civil_id) REFERENCES public.est_civil(id);
 K   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_est_civil_id_fkey;
       public          postgres    false    217    219    3189            y           2606    25475    cliente cliente_estado_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_estado_id_fkey FOREIGN KEY (estado_id) REFERENCES public.estado(id);
 H   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_estado_id_fkey;
       public          postgres    false    219    215    3187                  x������ � �         5   x�3���)I�,��2�tN,NL��2�t�,�/J�qL8�2�*������ c:�      	   0   x�3�t�2��u�2��2���2�
�2�v�2������� �"�     