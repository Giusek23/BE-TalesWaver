PGDMP         0                {            TalesWeaverDB    10.23    10.23     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    16393    TalesWeaverDB    DATABASE     �   CREATE DATABASE "TalesWeaverDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE "TalesWeaverDB";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �
           0    0    SCHEMA public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16422    jugador    TABLE     �  CREATE TABLE public.jugador (
    id integer NOT NULL,
    primer_nombre character varying(255) NOT NULL,
    segundo_nombre character varying(255),
    primer_apellido character varying(255) NOT NULL,
    segundo_apellido character varying(255),
    universidad character varying(255) NOT NULL,
    carrera character varying(255) NOT NULL,
    semestre integer,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.jugador;
       public         postgres    false    6            �            1259    16420    jugador_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jugador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.jugador_id_seq;
       public       postgres    false    197    6            �
           0    0    jugador_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.jugador_id_seq OWNED BY public.jugador.id;
            public       postgres    false    196            o
           2604    16425 
   jugador id    DEFAULT     h   ALTER TABLE ONLY public.jugador ALTER COLUMN id SET DEFAULT nextval('public.jugador_id_seq'::regclass);
 9   ALTER TABLE public.jugador ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    16422    jugador 
   TABLE DATA                     public       postgres    false    197   �       �
           0    0    jugador_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.jugador_id_seq', 2, true);
            public       postgres    false    196            q
           2606    16430    jugador jugador_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.jugador
    ADD CONSTRAINT jugador_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.jugador DROP CONSTRAINT jugador_pkey;
       public         postgres    false    197            �
   �   x�͐͊�P��}��Pԥ+�2t���bo(�6��z|#>E_lzg:O ��|I΁��t��,�.�񇊋��/�X����Kl}PJ�Q��ؿ��Ɔ����z�Ϥ�vr��b��ɝ��w��uC�.V����]���(��ã�]]�7�k��Q����]�71?t��@�[�*�LJ&�>`�gp��cC�_��x�Q�ґ��E���<��'K�U     