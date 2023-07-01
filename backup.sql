PGDMP         +                {         	   testepoke     15.3 (Ubuntu 15.3-1.pgdg22.04+1)     15.3 (Ubuntu 15.3-1.pgdg22.04+1) �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16496 	   testepoke    DATABASE     u   CREATE DATABASE testepoke WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt_BR.UTF-8';
    DROP DATABASE testepoke;
                postgres    false            �            1259    23097    ataque    TABLE     !  CREATE TABLE public.ataque (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    accuracy integer,
    power integer,
    id_tipo integer NOT NULL,
    categoria character varying(50),
    pp integer,
    tm character varying(10),
    descricao character varying(200)
);
    DROP TABLE public.ataque;
       public         heap    postgres    false            �            1259    23096    ataque_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ataque_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ataque_id_seq;
       public          postgres    false    239            	           0    0    ataque_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ataque_id_seq OWNED BY public.ataque.id;
          public          postgres    false    238            �            1259    22978    cidade    TABLE     �   CREATE TABLE public.cidade (
    id integer NOT NULL,
    id_regiao character varying(50) NOT NULL,
    nome character varying(50) NOT NULL
);
    DROP TABLE public.cidade;
       public         heap    postgres    false            �            1259    22977    cidade_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cidade_id_seq;
       public          postgres    false    219            
           0    0    cidade_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cidade_id_seq OWNED BY public.cidade.id;
          public          postgres    false    218            �            1259    22960    classe    TABLE     �   CREATE TABLE public.classe (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    premio character varying(50) NOT NULL
);
    DROP TABLE public.classe;
       public         heap    postgres    false            �            1259    22959    classe_id_seq    SEQUENCE     �   CREATE SEQUENCE public.classe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.classe_id_seq;
       public          postgres    false    215                       0    0    classe_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.classe_id_seq OWNED BY public.classe.id;
          public          postgres    false    214            �            1259    23153    equipe    TABLE     [   CREATE TABLE public.equipe (
    id integer NOT NULL,
    id_treinador integer NOT NULL
);
    DROP TABLE public.equipe;
       public         heap    postgres    false            �            1259    23152    equipe_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.equipe_id_seq;
       public          postgres    false    245                       0    0    equipe_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.equipe_id_seq OWNED BY public.equipe.id;
          public          postgres    false    244            �            1259    23131    ginasio    TABLE     �   CREATE TABLE public.ginasio (
    id integer NOT NULL,
    id_cidade character varying(50) NOT NULL,
    id_treinador integer NOT NULL,
    id_insignia character varying(50) NOT NULL
);
    DROP TABLE public.ginasio;
       public         heap    postgres    false            �            1259    23130    ginasio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ginasio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ginasio_id_seq;
       public          postgres    false    243                       0    0    ginasio_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ginasio_id_seq OWNED BY public.ginasio.id;
          public          postgres    false    242            �            1259    23044 
   habilidade    TABLE     �   CREATE TABLE public.habilidade (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    descricao character varying(500) NOT NULL
);
    DROP TABLE public.habilidade;
       public         heap    postgres    false            �            1259    23043    habilidade_id_seq    SEQUENCE     �   CREATE SEQUENCE public.habilidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.habilidade_id_seq;
       public          postgres    false    231                       0    0    habilidade_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.habilidade_id_seq OWNED BY public.habilidade.id;
          public          postgres    false    230            �            1259    22992    insignia    TABLE     c   CREATE TABLE public.insignia (
    id integer NOT NULL,
    nome character varying(50) NOT NULL
);
    DROP TABLE public.insignia;
       public         heap    postgres    false            �            1259    22991    insignia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.insignia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.insignia_id_seq;
       public          postgres    false    221                       0    0    insignia_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.insignia_id_seq OWNED BY public.insignia.id;
          public          postgres    false    220            �            1259    23032 	   medicinal    TABLE     �   CREATE TABLE public.medicinal (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    id_mochila integer NOT NULL,
    nome character varying(20) NOT NULL,
    descricao character varying(200) NOT NULL,
    quantidade integer
);
    DROP TABLE public.medicinal;
       public         heap    postgres    false            �            1259    23031    medicinal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medicinal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.medicinal_id_seq;
       public          postgres    false    229                       0    0    medicinal_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.medicinal_id_seq OWNED BY public.medicinal.id;
          public          postgres    false    228            �            1259    23001    mochila    TABLE     9   CREATE TABLE public.mochila (
    id integer NOT NULL
);
    DROP TABLE public.mochila;
       public         heap    postgres    false            �            1259    23000    mochila_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mochila_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.mochila_id_seq;
       public          postgres    false    223                       0    0    mochila_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.mochila_id_seq OWNED BY public.mochila.id;
          public          postgres    false    222            �            1259    23055    nature    TABLE     �   CREATE TABLE public.nature (
    id integer NOT NULL,
    nome character varying(10) NOT NULL,
    aumenta character varying(20),
    diminui character varying(20)
);
    DROP TABLE public.nature;
       public         heap    postgres    false            �            1259    23054    nature_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.nature_id_seq;
       public          postgres    false    233                       0    0    nature_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.nature_id_seq OWNED BY public.nature.id;
          public          postgres    false    232            �            1259    23188    pokedex    TABLE     v   CREATE TABLE public.pokedex (
    numero_pokemon integer NOT NULL,
    nome_pokemon character varying(50) NOT NULL
);
    DROP TABLE public.pokedex;
       public         heap    postgres    false            �            1259    23165    pokemon    TABLE     p  CREATE TABLE public.pokemon (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    nome character varying(50) NOT NULL,
    apelido character varying(50) NOT NULL,
    numero_pokedex integer NOT NULL,
    ataque_fisico integer NOT NULL,
    ataque_special integer NOT NULL,
    defesa_fisico integer NOT NULL,
    defesa_special integer NOT NULL,
    speed integer NOT NULL,
    nivel integer NOT NULL,
    hp integer NOT NULL,
    experiencia integer NOT NULL,
    status character varying(50) NOT NULL,
    id_habilidade integer NOT NULL,
    id_equipe integer NOT NULL,
    id_nature integer NOT NULL
);
    DROP TABLE public.pokemon;
       public         heap    postgres    false            �            1259    23224    pokemon_ataque    TABLE     h   CREATE TABLE public.pokemon_ataque (
    id_pokemon integer NOT NULL,
    id_ataque integer NOT NULL
);
 "   DROP TABLE public.pokemon_ataque;
       public         heap    postgres    false            �            1259    23164    pokemon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pokemon_id_seq;
       public          postgres    false    247                       0    0    pokemon_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pokemon_id_seq OWNED BY public.pokemon.id;
          public          postgres    false    246            �            1259    23211    pokemon_tipo    TABLE     r   CREATE TABLE public.pokemon_tipo (
    id_pokemon integer NOT NULL,
    id_tipo character varying(50) NOT NULL
);
     DROP TABLE public.pokemon_tipo;
       public         heap    postgres    false            �            1259    22969    regiao    TABLE     a   CREATE TABLE public.regiao (
    id integer NOT NULL,
    nome character varying(50) NOT NULL
);
    DROP TABLE public.regiao;
       public         heap    postgres    false            �            1259    22968    regiao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.regiao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.regiao_id_seq;
       public          postgres    false    217                       0    0    regiao_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.regiao_id_seq OWNED BY public.regiao.id;
          public          postgres    false    216            �            1259    23020 	   seguravel    TABLE     �   CREATE TABLE public.seguravel (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    id_mochila integer NOT NULL,
    nome character varying(20) NOT NULL,
    descricao character varying(200) NOT NULL,
    quantidade integer
);
    DROP TABLE public.seguravel;
       public         heap    postgres    false            �            1259    23019    seguravel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.seguravel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seguravel_id_seq;
       public          postgres    false    227                       0    0    seguravel_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.seguravel_id_seq OWNED BY public.seguravel.id;
          public          postgres    false    226            �            1259    23062    tipo    TABLE     _   CREATE TABLE public.tipo (
    id integer NOT NULL,
    nome character varying(50) NOT NULL
);
    DROP TABLE public.tipo;
       public         heap    postgres    false            �            1259    23083    tipo_efetivo    TABLE     V   CREATE TABLE public.tipo_efetivo (
    id_atacante integer,
    id_efetivo integer
);
     DROP TABLE public.tipo_efetivo;
       public         heap    postgres    false            �            1259    23070    tipo_fraqueza    TABLE     R   CREATE TABLE public.tipo_fraqueza (
    id_forte integer,
    id_fraco integer
);
 !   DROP TABLE public.tipo_fraqueza;
       public         heap    postgres    false            �            1259    23061    tipo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tipo_id_seq;
       public          postgres    false    235                       0    0    tipo_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tipo_id_seq OWNED BY public.tipo.id;
          public          postgres    false    234            �            1259    23109 	   treinador    TABLE       CREATE TABLE public.treinador (
    url character varying(255) NOT NULL,
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    id_mochila integer NOT NULL,
    id_cidade character varying(50) NOT NULL,
    id_classe character varying(50)
);
    DROP TABLE public.treinador;
       public         heap    postgres    false            �            1259    23108    treinador_id_seq    SEQUENCE     �   CREATE SEQUENCE public.treinador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.treinador_id_seq;
       public          postgres    false    241                       0    0    treinador_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.treinador_id_seq OWNED BY public.treinador.id;
          public          postgres    false    240            �            1259    23198    treinador_insignia    TABLE     p   CREATE TABLE public.treinador_insignia (
    id_treinador integer NOT NULL,
    id_insignia integer NOT NULL
);
 &   DROP TABLE public.treinador_insignia;
       public         heap    postgres    false            �            1259    23008 
   utilitario    TABLE     �   CREATE TABLE public.utilitario (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    id_mochila integer NOT NULL,
    nome character varying(20) NOT NULL,
    descricao character varying(200) NOT NULL,
    quantidade integer
);
    DROP TABLE public.utilitario;
       public         heap    postgres    false            �            1259    23007    utilitario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utilitario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.utilitario_id_seq;
       public          postgres    false    225                       0    0    utilitario_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.utilitario_id_seq OWNED BY public.utilitario.id;
          public          postgres    false    224                        2604    23100 	   ataque id    DEFAULT     f   ALTER TABLE ONLY public.ataque ALTER COLUMN id SET DEFAULT nextval('public.ataque_id_seq'::regclass);
 8   ALTER TABLE public.ataque ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    22981 	   cidade id    DEFAULT     f   ALTER TABLE ONLY public.cidade ALTER COLUMN id SET DEFAULT nextval('public.cidade_id_seq'::regclass);
 8   ALTER TABLE public.cidade ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    22963 	   classe id    DEFAULT     f   ALTER TABLE ONLY public.classe ALTER COLUMN id SET DEFAULT nextval('public.classe_id_seq'::regclass);
 8   ALTER TABLE public.classe ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    23156 	   equipe id    DEFAULT     f   ALTER TABLE ONLY public.equipe ALTER COLUMN id SET DEFAULT nextval('public.equipe_id_seq'::regclass);
 8   ALTER TABLE public.equipe ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245                       2604    23134 
   ginasio id    DEFAULT     h   ALTER TABLE ONLY public.ginasio ALTER COLUMN id SET DEFAULT nextval('public.ginasio_id_seq'::regclass);
 9   ALTER TABLE public.ginasio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243            �           2604    23047    habilidade id    DEFAULT     n   ALTER TABLE ONLY public.habilidade ALTER COLUMN id SET DEFAULT nextval('public.habilidade_id_seq'::regclass);
 <   ALTER TABLE public.habilidade ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    22995    insignia id    DEFAULT     j   ALTER TABLE ONLY public.insignia ALTER COLUMN id SET DEFAULT nextval('public.insignia_id_seq'::regclass);
 :   ALTER TABLE public.insignia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    23035    medicinal id    DEFAULT     l   ALTER TABLE ONLY public.medicinal ALTER COLUMN id SET DEFAULT nextval('public.medicinal_id_seq'::regclass);
 ;   ALTER TABLE public.medicinal ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    23004 
   mochila id    DEFAULT     h   ALTER TABLE ONLY public.mochila ALTER COLUMN id SET DEFAULT nextval('public.mochila_id_seq'::regclass);
 9   ALTER TABLE public.mochila ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    23058 	   nature id    DEFAULT     f   ALTER TABLE ONLY public.nature ALTER COLUMN id SET DEFAULT nextval('public.nature_id_seq'::regclass);
 8   ALTER TABLE public.nature ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233                       2604    23168 
   pokemon id    DEFAULT     h   ALTER TABLE ONLY public.pokemon ALTER COLUMN id SET DEFAULT nextval('public.pokemon_id_seq'::regclass);
 9   ALTER TABLE public.pokemon ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            �           2604    22972 	   regiao id    DEFAULT     f   ALTER TABLE ONLY public.regiao ALTER COLUMN id SET DEFAULT nextval('public.regiao_id_seq'::regclass);
 8   ALTER TABLE public.regiao ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    23023    seguravel id    DEFAULT     l   ALTER TABLE ONLY public.seguravel ALTER COLUMN id SET DEFAULT nextval('public.seguravel_id_seq'::regclass);
 ;   ALTER TABLE public.seguravel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    23065    tipo id    DEFAULT     b   ALTER TABLE ONLY public.tipo ALTER COLUMN id SET DEFAULT nextval('public.tipo_id_seq'::regclass);
 6   ALTER TABLE public.tipo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235                       2604    23112    treinador id    DEFAULT     l   ALTER TABLE ONLY public.treinador ALTER COLUMN id SET DEFAULT nextval('public.treinador_id_seq'::regclass);
 ;   ALTER TABLE public.treinador ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    23011    utilitario id    DEFAULT     n   ALTER TABLE ONLY public.utilitario ALTER COLUMN id SET DEFAULT nextval('public.utilitario_id_seq'::regclass);
 <   ALTER TABLE public.utilitario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �          0    23097    ataque 
   TABLE DATA           b   COPY public.ataque (id, nome, accuracy, power, id_tipo, categoria, pp, tm, descricao) FROM stdin;
    public          postgres    false    239   �       �          0    22978    cidade 
   TABLE DATA           5   COPY public.cidade (id, id_regiao, nome) FROM stdin;
    public          postgres    false    219   �	      �          0    22960    classe 
   TABLE DATA           2   COPY public.classe (id, nome, premio) FROM stdin;
    public          postgres    false    215   �      �          0    23153    equipe 
   TABLE DATA           2   COPY public.equipe (id, id_treinador) FROM stdin;
    public          postgres    false    245   �      �          0    23131    ginasio 
   TABLE DATA           K   COPY public.ginasio (id, id_cidade, id_treinador, id_insignia) FROM stdin;
    public          postgres    false    243   �      �          0    23044 
   habilidade 
   TABLE DATA           9   COPY public.habilidade (id, nome, descricao) FROM stdin;
    public          postgres    false    231   1      �          0    22992    insignia 
   TABLE DATA           ,   COPY public.insignia (id, nome) FROM stdin;
    public          postgres    false    221   =      �          0    23032 	   medicinal 
   TABLE DATA           U   COPY public.medicinal (id, url, id_mochila, nome, descricao, quantidade) FROM stdin;
    public          postgres    false    229   -?      �          0    23001    mochila 
   TABLE DATA           %   COPY public.mochila (id) FROM stdin;
    public          postgres    false    223   �C      �          0    23055    nature 
   TABLE DATA           <   COPY public.nature (id, nome, aumenta, diminui) FROM stdin;
    public          postgres    false    233   2F      �          0    23188    pokedex 
   TABLE DATA           ?   COPY public.pokedex (numero_pokemon, nome_pokemon) FROM stdin;
    public          postgres    false    248   DG      �          0    23165    pokemon 
   TABLE DATA           �   COPY public.pokemon (id, url, nome, apelido, numero_pokedex, ataque_fisico, ataque_special, defesa_fisico, defesa_special, speed, nivel, hp, experiencia, status, id_habilidade, id_equipe, id_nature) FROM stdin;
    public          postgres    false    247   th                0    23224    pokemon_ataque 
   TABLE DATA           ?   COPY public.pokemon_ataque (id_pokemon, id_ataque) FROM stdin;
    public          postgres    false    251   �                0    23211    pokemon_tipo 
   TABLE DATA           ;   COPY public.pokemon_tipo (id_pokemon, id_tipo) FROM stdin;
    public          postgres    false    250   �M      �          0    22969    regiao 
   TABLE DATA           *   COPY public.regiao (id, nome) FROM stdin;
    public          postgres    false    217   a      �          0    23020 	   seguravel 
   TABLE DATA           U   COPY public.seguravel (id, url, id_mochila, nome, descricao, quantidade) FROM stdin;
    public          postgres    false    227   va      �          0    23062    tipo 
   TABLE DATA           (   COPY public.tipo (id, nome) FROM stdin;
    public          postgres    false    235   �w      �          0    23083    tipo_efetivo 
   TABLE DATA           ?   COPY public.tipo_efetivo (id_atacante, id_efetivo) FROM stdin;
    public          postgres    false    237   �x      �          0    23070    tipo_fraqueza 
   TABLE DATA           ;   COPY public.tipo_fraqueza (id_forte, id_fraco) FROM stdin;
    public          postgres    false    236   *y      �          0    23109 	   treinador 
   TABLE DATA           T   COPY public.treinador (url, id, nome, id_mochila, id_cidade, id_classe) FROM stdin;
    public          postgres    false    241   �y                 0    23198    treinador_insignia 
   TABLE DATA           G   COPY public.treinador_insignia (id_treinador, id_insignia) FROM stdin;
    public          postgres    false    249   �      �          0    23008 
   utilitario 
   TABLE DATA           V   COPY public.utilitario (id, url, id_mochila, nome, descricao, quantidade) FROM stdin;
    public          postgres    false    225   �                 0    0    ataque_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ataque_id_seq', 915, true);
          public          postgres    false    238                       0    0    cidade_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cidade_id_seq', 102, true);
          public          postgres    false    218                       0    0    classe_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.classe_id_seq', 8, true);
          public          postgres    false    214                       0    0    equipe_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.equipe_id_seq', 317, true);
          public          postgres    false    244                       0    0    ginasio_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ginasio_id_seq', 49, true);
          public          postgres    false    242                       0    0    habilidade_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.habilidade_id_seq', 296, true);
          public          postgres    false    230                       0    0    insignia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.insignia_id_seq', 49, true);
          public          postgres    false    220                        0    0    medicinal_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.medicinal_id_seq', 37, true);
          public          postgres    false    228            !           0    0    mochila_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mochila_id_seq', 322, true);
          public          postgres    false    222            "           0    0    nature_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.nature_id_seq', 25, true);
          public          postgres    false    232            #           0    0    pokemon_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pokemon_id_seq', 1191, true);
          public          postgres    false    246            $           0    0    regiao_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.regiao_id_seq', 9, true);
          public          postgres    false    216            %           0    0    seguravel_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.seguravel_id_seq', 161, true);
          public          postgres    false    226            &           0    0    tipo_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tipo_id_seq', 18, true);
          public          postgres    false    234            '           0    0    treinador_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.treinador_id_seq', 317, true);
          public          postgres    false    240            (           0    0    utilitario_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.utilitario_id_seq', 11, true);
          public          postgres    false    224            (           2606    23102    ataque ataque_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ataque
    ADD CONSTRAINT ataque_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ataque DROP CONSTRAINT ataque_pkey;
       public            postgres    false    239                       2606    22985    cidade cidade_nome_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_nome_key UNIQUE (nome);
 @   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_nome_key;
       public            postgres    false    219                       2606    22983    cidade cidade_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_pkey;
       public            postgres    false    219                       2606    22967    classe classe_nome_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.classe
    ADD CONSTRAINT classe_nome_key UNIQUE (nome);
 @   ALTER TABLE ONLY public.classe DROP CONSTRAINT classe_nome_key;
       public            postgres    false    215                       2606    22965    classe classe_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.classe
    ADD CONSTRAINT classe_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.classe DROP CONSTRAINT classe_pkey;
       public            postgres    false    215            .           2606    23158    equipe equipe_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.equipe
    ADD CONSTRAINT equipe_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.equipe DROP CONSTRAINT equipe_pkey;
       public            postgres    false    245            ,           2606    23136    ginasio ginasio_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ginasio
    ADD CONSTRAINT ginasio_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ginasio DROP CONSTRAINT ginasio_pkey;
       public            postgres    false    243                       2606    23053    habilidade habilidade_nome_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.habilidade
    ADD CONSTRAINT habilidade_nome_key UNIQUE (nome);
 H   ALTER TABLE ONLY public.habilidade DROP CONSTRAINT habilidade_nome_key;
       public            postgres    false    231                        2606    23051    habilidade habilidade_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.habilidade
    ADD CONSTRAINT habilidade_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.habilidade DROP CONSTRAINT habilidade_pkey;
       public            postgres    false    231                       2606    22999    insignia insignia_nome_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.insignia
    ADD CONSTRAINT insignia_nome_key UNIQUE (nome);
 D   ALTER TABLE ONLY public.insignia DROP CONSTRAINT insignia_nome_key;
       public            postgres    false    221                       2606    22997    insignia insignia_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.insignia
    ADD CONSTRAINT insignia_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.insignia DROP CONSTRAINT insignia_pkey;
       public            postgres    false    221                       2606    23037    medicinal medicinal_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.medicinal
    ADD CONSTRAINT medicinal_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.medicinal DROP CONSTRAINT medicinal_pkey;
       public            postgres    false    229                       2606    23006    mochila mochila_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.mochila
    ADD CONSTRAINT mochila_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.mochila DROP CONSTRAINT mochila_pkey;
       public            postgres    false    223            "           2606    23060    nature nature_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.nature
    ADD CONSTRAINT nature_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.nature DROP CONSTRAINT nature_pkey;
       public            postgres    false    233            4           2606    23192    pokedex pokedex_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.pokedex
    ADD CONSTRAINT pokedex_pkey PRIMARY KEY (numero_pokemon, nome_pokemon);
 >   ALTER TABLE ONLY public.pokedex DROP CONSTRAINT pokedex_pkey;
       public            postgres    false    248    248            0           2606    23172 '   pokemon pokemon_numero_pokedex_nome_key 
   CONSTRAINT     r   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_numero_pokedex_nome_key UNIQUE (numero_pokedex, nome);
 Q   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT pokemon_numero_pokedex_nome_key;
       public            postgres    false    247    247            2           2606    23170    pokemon pokemon_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT pokemon_pkey;
       public            postgres    false    247            
           2606    22976    regiao regiao_nome_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.regiao
    ADD CONSTRAINT regiao_nome_key UNIQUE (nome);
 @   ALTER TABLE ONLY public.regiao DROP CONSTRAINT regiao_nome_key;
       public            postgres    false    217                       2606    22974    regiao regiao_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.regiao
    ADD CONSTRAINT regiao_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.regiao DROP CONSTRAINT regiao_pkey;
       public            postgres    false    217                       2606    23025    seguravel seguravel_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.seguravel
    ADD CONSTRAINT seguravel_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.seguravel DROP CONSTRAINT seguravel_pkey;
       public            postgres    false    227            $           2606    23069    tipo tipo_nome_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.tipo
    ADD CONSTRAINT tipo_nome_key UNIQUE (nome);
 <   ALTER TABLE ONLY public.tipo DROP CONSTRAINT tipo_nome_key;
       public            postgres    false    235            &           2606    23067    tipo tipo_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tipo
    ADD CONSTRAINT tipo_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tipo DROP CONSTRAINT tipo_pkey;
       public            postgres    false    235            *           2606    23114    treinador treinador_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.treinador
    ADD CONSTRAINT treinador_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.treinador DROP CONSTRAINT treinador_pkey;
       public            postgres    false    241                       2606    23013    utilitario utilitario_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.utilitario
    ADD CONSTRAINT utilitario_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.utilitario DROP CONSTRAINT utilitario_pkey;
       public            postgres    false    225            =           2606    23103    ataque ataque_id_tipo_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.ataque
    ADD CONSTRAINT ataque_id_tipo_fkey FOREIGN KEY (id_tipo) REFERENCES public.tipo(id);
 D   ALTER TABLE ONLY public.ataque DROP CONSTRAINT ataque_id_tipo_fkey;
       public          postgres    false    235    239    3366            5           2606    22986    cidade cidade_id_regiao_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_id_regiao_fkey FOREIGN KEY (id_regiao) REFERENCES public.regiao(nome);
 F   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_id_regiao_fkey;
       public          postgres    false    3338    217    219            D           2606    23159    equipe equipe_id_treinador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipe
    ADD CONSTRAINT equipe_id_treinador_fkey FOREIGN KEY (id_treinador) REFERENCES public.treinador(id);
 I   ALTER TABLE ONLY public.equipe DROP CONSTRAINT equipe_id_treinador_fkey;
       public          postgres    false    245    3370    241            A           2606    23137    ginasio ginasio_id_cidade_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ginasio
    ADD CONSTRAINT ginasio_id_cidade_fkey FOREIGN KEY (id_cidade) REFERENCES public.cidade(nome);
 H   ALTER TABLE ONLY public.ginasio DROP CONSTRAINT ginasio_id_cidade_fkey;
       public          postgres    false    3342    243    219            B           2606    23147     ginasio ginasio_id_insignia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ginasio
    ADD CONSTRAINT ginasio_id_insignia_fkey FOREIGN KEY (id_insignia) REFERENCES public.insignia(nome);
 J   ALTER TABLE ONLY public.ginasio DROP CONSTRAINT ginasio_id_insignia_fkey;
       public          postgres    false    221    3346    243            C           2606    23142 !   ginasio ginasio_id_treinador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ginasio
    ADD CONSTRAINT ginasio_id_treinador_fkey FOREIGN KEY (id_treinador) REFERENCES public.treinador(id);
 K   ALTER TABLE ONLY public.ginasio DROP CONSTRAINT ginasio_id_treinador_fkey;
       public          postgres    false    243    3370    241            8           2606    23038 #   medicinal medicinal_id_mochila_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicinal
    ADD CONSTRAINT medicinal_id_mochila_fkey FOREIGN KEY (id_mochila) REFERENCES public.mochila(id);
 M   ALTER TABLE ONLY public.medicinal DROP CONSTRAINT medicinal_id_mochila_fkey;
       public          postgres    false    229    3350    223            H           2606    23193 0   pokedex pokedex_numero_pokemon_nome_pokemon_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokedex
    ADD CONSTRAINT pokedex_numero_pokemon_nome_pokemon_fkey FOREIGN KEY (numero_pokemon, nome_pokemon) REFERENCES public.pokemon(numero_pokedex, nome);
 Z   ALTER TABLE ONLY public.pokedex DROP CONSTRAINT pokedex_numero_pokemon_nome_pokemon_fkey;
       public          postgres    false    247    248    3376    247    248            M           2606    23232 ,   pokemon_ataque pokemon_ataque_id_ataque_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_ataque
    ADD CONSTRAINT pokemon_ataque_id_ataque_fkey FOREIGN KEY (id_ataque) REFERENCES public.ataque(id);
 V   ALTER TABLE ONLY public.pokemon_ataque DROP CONSTRAINT pokemon_ataque_id_ataque_fkey;
       public          postgres    false    239    251    3368            N           2606    23227 -   pokemon_ataque pokemon_ataque_id_pokemon_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_ataque
    ADD CONSTRAINT pokemon_ataque_id_pokemon_fkey FOREIGN KEY (id_pokemon) REFERENCES public.pokemon(id);
 W   ALTER TABLE ONLY public.pokemon_ataque DROP CONSTRAINT pokemon_ataque_id_pokemon_fkey;
       public          postgres    false    251    247    3378            E           2606    23178    pokemon pokemon_id_equipe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_id_equipe_fkey FOREIGN KEY (id_equipe) REFERENCES public.equipe(id);
 H   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT pokemon_id_equipe_fkey;
       public          postgres    false    245    3374    247            F           2606    23173 "   pokemon pokemon_id_habilidade_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_id_habilidade_fkey FOREIGN KEY (id_habilidade) REFERENCES public.habilidade(id);
 L   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT pokemon_id_habilidade_fkey;
       public          postgres    false    231    247    3360            G           2606    23183    pokemon pokemon_id_nature_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_id_nature_fkey FOREIGN KEY (id_nature) REFERENCES public.nature(id);
 H   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT pokemon_id_nature_fkey;
       public          postgres    false    247    233    3362            K           2606    23214 )   pokemon_tipo pokemon_tipo_id_pokemon_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_tipo
    ADD CONSTRAINT pokemon_tipo_id_pokemon_fkey FOREIGN KEY (id_pokemon) REFERENCES public.pokemon(id);
 S   ALTER TABLE ONLY public.pokemon_tipo DROP CONSTRAINT pokemon_tipo_id_pokemon_fkey;
       public          postgres    false    250    3378    247            L           2606    23219 &   pokemon_tipo pokemon_tipo_id_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_tipo
    ADD CONSTRAINT pokemon_tipo_id_tipo_fkey FOREIGN KEY (id_tipo) REFERENCES public.tipo(nome);
 P   ALTER TABLE ONLY public.pokemon_tipo DROP CONSTRAINT pokemon_tipo_id_tipo_fkey;
       public          postgres    false    250    3364    235            7           2606    23026 #   seguravel seguravel_id_mochila_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seguravel
    ADD CONSTRAINT seguravel_id_mochila_fkey FOREIGN KEY (id_mochila) REFERENCES public.mochila(id);
 M   ALTER TABLE ONLY public.seguravel DROP CONSTRAINT seguravel_id_mochila_fkey;
       public          postgres    false    223    3350    227            ;           2606    23086 *   tipo_efetivo tipo_efetivo_id_atacante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_efetivo
    ADD CONSTRAINT tipo_efetivo_id_atacante_fkey FOREIGN KEY (id_atacante) REFERENCES public.tipo(id);
 T   ALTER TABLE ONLY public.tipo_efetivo DROP CONSTRAINT tipo_efetivo_id_atacante_fkey;
       public          postgres    false    237    235    3366            <           2606    23091 )   tipo_efetivo tipo_efetivo_id_efetivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_efetivo
    ADD CONSTRAINT tipo_efetivo_id_efetivo_fkey FOREIGN KEY (id_efetivo) REFERENCES public.tipo(id);
 S   ALTER TABLE ONLY public.tipo_efetivo DROP CONSTRAINT tipo_efetivo_id_efetivo_fkey;
       public          postgres    false    235    237    3366            9           2606    23073 )   tipo_fraqueza tipo_fraqueza_id_forte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_fraqueza
    ADD CONSTRAINT tipo_fraqueza_id_forte_fkey FOREIGN KEY (id_forte) REFERENCES public.tipo(id);
 S   ALTER TABLE ONLY public.tipo_fraqueza DROP CONSTRAINT tipo_fraqueza_id_forte_fkey;
       public          postgres    false    236    235    3366            :           2606    23078 )   tipo_fraqueza tipo_fraqueza_id_fraco_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_fraqueza
    ADD CONSTRAINT tipo_fraqueza_id_fraco_fkey FOREIGN KEY (id_fraco) REFERENCES public.tipo(id);
 S   ALTER TABLE ONLY public.tipo_fraqueza DROP CONSTRAINT tipo_fraqueza_id_fraco_fkey;
       public          postgres    false    235    236    3366            >           2606    23120 "   treinador treinador_id_cidade_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.treinador
    ADD CONSTRAINT treinador_id_cidade_fkey FOREIGN KEY (id_cidade) REFERENCES public.cidade(nome);
 L   ALTER TABLE ONLY public.treinador DROP CONSTRAINT treinador_id_cidade_fkey;
       public          postgres    false    219    241    3342            ?           2606    23125 "   treinador treinador_id_classe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.treinador
    ADD CONSTRAINT treinador_id_classe_fkey FOREIGN KEY (id_classe) REFERENCES public.classe(nome);
 L   ALTER TABLE ONLY public.treinador DROP CONSTRAINT treinador_id_classe_fkey;
       public          postgres    false    3334    241    215            @           2606    23115 #   treinador treinador_id_mochila_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.treinador
    ADD CONSTRAINT treinador_id_mochila_fkey FOREIGN KEY (id_mochila) REFERENCES public.mochila(id);
 M   ALTER TABLE ONLY public.treinador DROP CONSTRAINT treinador_id_mochila_fkey;
       public          postgres    false    223    3350    241            I           2606    23206 6   treinador_insignia treinador_insignia_id_insignia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.treinador_insignia
    ADD CONSTRAINT treinador_insignia_id_insignia_fkey FOREIGN KEY (id_insignia) REFERENCES public.insignia(id);
 `   ALTER TABLE ONLY public.treinador_insignia DROP CONSTRAINT treinador_insignia_id_insignia_fkey;
       public          postgres    false    249    3348    221            J           2606    23201 7   treinador_insignia treinador_insignia_id_treinador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.treinador_insignia
    ADD CONSTRAINT treinador_insignia_id_treinador_fkey FOREIGN KEY (id_treinador) REFERENCES public.treinador(id);
 a   ALTER TABLE ONLY public.treinador_insignia DROP CONSTRAINT treinador_insignia_id_treinador_fkey;
       public          postgres    false    3370    249    241            6           2606    23014 %   utilitario utilitario_id_mochila_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilitario
    ADD CONSTRAINT utilitario_id_mochila_fkey FOREIGN KEY (id_mochila) REFERENCES public.mochila(id);
 O   ALTER TABLE ONLY public.utilitario DROP CONSTRAINT utilitario_id_mochila_fkey;
       public          postgres    false    3350    225    223            �      x��}Kv�H��ع
LjH����/eC,��ʓ�$Q�;<�Ԩvѧ�����J��g�N*��deFHn�f��W�Z�_�G����q���������2]���Po��]���e�Pm�����M;��:���E��~|j��M��M���1�cӽ:�V�o�����V���E�j��P�A_o �������u��2h��m�9�۠���������Y�z���m�w���W��p�4�ƴ��Y���an�~��˚�Z&�1\TOA�=b��g������z?ԯ�R���w]OwC�0��8���}��'|w3�C0�Ezy&�����n4 �v̀�<>��b�ա��<�Ǝ�a�w���>� �����l���l��0%�����w�;���}��Ǡ/	��i��Fx�*���m��ݫ���C_�����������m��'�����u��Q_oj,\ek�`��Q��|��	~��j� H��{Eh������
�K���-"i,�=�3���/�Ŭ>b�!8V�]}}��P��g_�y�c���]��/�ظ��u�G<V��r�i�o�#�B_�����"��W��{Z���j~�,ed�T�6 }�7���+��m{�e<��nW�o�������j#i�Ӻ���9n�g�*
�����{F���j���ع�+6�����X�9�C�#>��=�wGƁ���yĵ�k�J��k�u�G������6����ik�X�ւ�i�X؎��n�c�ۭq��4�%�$
8I,�@Kz���j[�]�����!8@���5+LV��[�*8�8��b"��?�Ja���U�{Yf�X�����Q�<ۍ���O��ZG&�* �[��5D��'�<��:���ƶ��_=teb�uմ�rM�qV������	�q_d�;�����������\�ъ˂�m��w{�b�e�X�����u��}b�����G�.�ގ|Q��g�C`u������������Mp�GEQ�u��ڜs�-�G���0 ���ڇ����=�� x�C�7O�vڶ����� �y��3!��Z�Ti3�M6�Z�^_W�'�V�l�]uW+<T;�,1�8�o�i\��)��0Nh]��xS�=`��r�E5�P������Xc���&o�6�v݈C�>����}7H�f_v���::4М�_���͒1�:�"q���P��J���-6��i|W��w��0������5CG��k=/��B��v_׭�F�lj���{�]�$Nn�A�y]����Q�%A� �$�@�5�P^�M\&���Z�GN �87��SՒd��t�	.�1-:�|Kz/a�5������Z�Y����ގ�|5�lA&�V��^�$r4u�֥A�gsal4�B����?����r)Q9��)���-h; � �v̀Ý%��Mu�t�����a���n��!�#-Q�(y��� oGKtZ�kd�LUE_��e�k P@���͸��9�;֛�0i��
V�'�����ty9 �73�X�.�0R��-ݚ��}ER2m��'�J�/R?/�>I�k����"���#��j\��"r�n�{ǚ0���"A�-X)���ki��>oX#gN�^;F��Qo`X��3X��`�Y�c��A�#4ޓƠ�����pB�4��z�A�{SI� ����h��|H��wO{��D�ib�k�m�߅��[hъXK���؍����Gø�$����iF�����q73b��#�H��F����C�:K��=�0�C���^|� �n��h����7=>v���=0�o�7$ŕ,���o�dr}i��3P�ͧ_DK�?i��C������3��,R`/*������(��L$R�tW�:,}�i�à�?b��]�?�f[���$�4���4l� �2�����aں�� �c�0x�Ɩ��^�P���1����X+}߁y�S[��ǆ�3̇�0�LSY7��=t������6?~T���RLr��!6i�m_�?j�|����N} ��(	�!S�Ȧ_�)���a)�;�����i>������؎u�z!bǨ�\^L� O/��m�������=^�(Q��gy,�\�R�*,b���k��'�r ���Վ�����J��j��@!�Y�����Kg ��|ێ7�8Z���K�y.�}f���,|F����p���� &���#x��H��k*�H^>�?I[*���Ym�#A�W<�����r�Ꭾ=��e)ؒ����Y�eп�p��K�ivW 	ɶcQ\+/��"�"�_A��i��6�f�H�(u�����i%s�f�6؃�!��ab��k4���cC��F e��*j�k��Ȑ���4���C�<��7003�f�]���{����M��"�H?��no�Z�Wl�f�+�W0��B���R�{_+���
��j�Ǵ�z�|@�#�G| .�ꓒ�{lxdb]�XC�s��H���%k\���[��(�t$�"t��ߛM�o�;&d`]bb�	_<)H�P�Ҳ�g�A�X?��r�ڟ�U!!z}{KOÖ�2�@Vn��UF���a�OD��,�P�4���]�{5���	��%}�<��`����J�^_D��K��(��5��A�:�`(�񂫯���+�ўԤ~v�CI=�JK ;I6���D���m;HN2�֝��$��[]��8<)gl� $;��~VF���d=bj��K)j(v�^���]pA��纜�(�ٍכ;��!���%���S���Q��t=;��Vu�Zb�� �pl�W�]x�Ƒ�q%�1|G=�#ʾ;4��ω�!�'��u5�̬�o��%Ӷe�p���,��p��?���p�b�����"�/s>mIBϾ��?��J̍]�9�}O���:�k�^�A�d�B�~���{�0X�~O�R�]�0f�{@e��(ڵ���
���=QlD|�Gp
���{v��:��1�(	�,df��Ux��vp���MK���[����匢9���E2���������󑜼r�0�w���M��)
��$�äʻG�N@?�+�N�S�C������o;3.���C��j:a�h���j�#��ܗ�y/�p�
 9t��d��Hgs��Ư�w�J�G��G��E3�|�X�O�mzՍ�Ƥ°�$ֻ!�<�pJ|�$`�소L-5��K�G<�K	�����j�q�)�=*�b�����rT:O�w~Kg�BW��Sh 4n���O�|���Ul��>=)L�����1�� ����p�y	���Ho ��`�+��)��C�ۃ�� ):���?,��K���|C�	�d#>�n��jEC<m�Q�4�0��x8�pR8s��*0�CK�T�F��j|d�7��I�m�OE9�/ӯe\�O���+�-�������?ur/��� ���!FB��L	�;��Hu�Jr�m��ռ�8=�,SP��d���)Z�o{���]l}�6���<�XC��Ē���ÏS�kR��;	/6��"�эX@�S�HfE/���/�v �=<Ag�*\Pm,6o-%l����v�FJ2���2׮��䢩�����\~2�I�P�HLX�?���~����:�u��V�w� ?VS'1��$/q���w�A)���WO�a��ń�G
?|��D��l{��
C/�0�O"�\�^봑�I�tZ�nCx=��!�%ݿ�O�MPD5�M���d�G_Y� q;Y�[���LEɞ�f%���L��l}�p6��!�K[s�]9�
���n�!"(�H`c�2�,V���(yuOǚ���jZgf{Y�����7������:b��ar�Z��i=셩+�l�>�?&��^���56����X����ya ��Qf\yB�� ����}3E�lO'�V�)��IyZx���\V�Ґ�D&����������0�nh�%�
�f.W	B�}
�Y�Mm�¢=�E��rl�ڸ]+�L2��D���k�^�1L�]��t���C[���2�L��    �o��V�3�Y>� ���S>���Dߔ��V^z��,Aʡ��H7l�̌�9a[%<��\�Ŋ�i+SG$�Լ��`�i�R? &�� L�Q�VvJ���k�#�"�HU��
�E�,���M7�UrÖ0	�UC^򲽫�!�t�ԓ��Mk������yЯ"��ѝ��K��wMN��O2Ѵ���m�y�����)T���)�-��Q���v�в�k�{F&/t�L<񌌖w�P)�����ѭ#}�f�� �q�������A�� J����M3�d˗$�f%�1H����n! BP��ȑ�����K~$�{�9P�!����= �Y4X|캭�V��'�P�X�4d�-ߴ2�S=6��a�N; ��HU(^[�x�Y]2�*s'��9�ZD���8�=�dK1�BO�����tjE6˄���+�O䙂�f���ț�c�j�ս* ��$�������Y��Ћ��0O<x.&BH �$1<I���*��3T�l�>�5*B�_�.� S�
;�X�����%,"�_$�|����x�XA���qB�b��Qv���,-/yF�#��w�-�l����R|EYE6ꏃ6�5� 	#'�����{0u�	S�������B��$�zor"�:x���k�.���K$�6,Nf9V4��]�m�.u,[�Mq�8����ʰ�l+X&6*�%Y���br0�2���v�,J��*�ۍs�db�IK��fo��t�7��?�D�&��K3L��(���m໎��3�	��W���o.�e�J�:3�܂0��&{YK�Y�e9�޹���qO��G��XȲqWR�;
aU@����چ�_9GrI�aY�`�/�# "��k�a�l/�g��S(��v�*��[� ���w���{�-��"��*X�<`�2h&pI��:�;�H�z�k�o1Zǫ�`b�Fe
�J8d�/^G�D���X=L��6�fI�Jxۺ�g*��N�
1m���o�;�Rz�xu;^kˬ�����o������!:a�f/��\��ߴ�EV�Y���k�m/3�'����X����峻�Э]Y�+��{b3n�Q>^ˇ��*��4���UL������o��O.��Q`���E �,�pd:�P����q��1��²0dVGz5x��H�����0E��� ��b��5��o"X�w7��N˶�T��T@a.�5��c�����KPn|'�/��x���Mä�̂h����F;.���RP�6��a�}��}�����{79?-��u���`�b�J�H� @��O!qs%���V�L���t����&�P�&�(��6R/��! ����hb��TW���$d���~X��GRV��E��RY�y%t8��Ū���9�̔���E@`�Ⱦ����0s%������o��JU�����K�Gg��٨�A �u?K��-.�'�c�'�&)m�v:~�CuR�ġ@�?�z^��<GZ�⌢���x��߻b3�\�S�kO�[�,��P��O�O5�� 2*W��J*��\_���%=����ޞE��>TM��j$ ;�x��)�X�ݹ��7JVRrsRG�{�`* ���x�d�q�߉U�XuM~�9k�$?S��	 B<Wc�s��JU�-8p��GQ�*`:U��.�zI^U��0�"���C��Ҫ���u�.��D0 >�Ɏ��aݗ=V3��Z�rҩI����驇��B���d������K*C�	�HQ��u�$��D�n� ���_�?��hj`�t���k��w*�)JB	�[��	NY�"�H���.r���vF*�씯�<�7f����=�����4��	M�<U{U��'� 2-A|�4�g��a�~ ��(�";<��n�&|�D���8M���c�Y"#^�.�H6�	��*��S�a�"T]�k?U�6��dD5�{��H�֒Z��D���	�Ώ6t���vK���V�%7P�pXqQ�!�MqN��wڭ���������X{+[&eŶ����"I��}�0T(i@�P�2�=*�{N(�.L�ޑ_MHm�#��ʫ�ZK	P��K�e5QJ$#:~Č�%���s��|�OA-9e�j�B��Y�(Mh�]a%�*�?#K��O��o��
�����v
���l��jZi&�O�̙�zAu�,ᅔ�oX�ΫS�wu���Y�\�.�Q��Wg�%���l6���Ta-����
30��/ud!�;���-5�Y`	���G�tA9��.//�gGa�R��5��\b����+�Fכ(#�l�5��I�pRDpa'�T] ����]���<`��.�/�2BȎ�|�+�M��j�۫&%)�DeA�:��JA_���:���@�8G�ۓ�#�Ig"\�:�-��f&#t
��i�>
i�ȼ�(+�.�}#�|�)��jOd��_��9|���3�,K���}�2}�f5TQN�����\t'��n��p���9�U�e����� �n�,{�L��LFʜ��H���O��d�y��䱄0�;�U��φ��^O)-t���t-N\xs(?�,{îy�H�k#��ڝy���P�g���ҽ�@d�MG��\�Ɵ��y�fjS����4�
� @�nl�;�|�rV� U�K���$K'r�BT�,Ed7�}�,�A�����w�N^���p]aoY������P��k��P@I1U��ù�>����H����\�6���|&e�O9Q��=���jT̑C,�3�Q���U ��M7<��S,J�j#Ĥ���9�T�W+�c�S��>�I���@Ѐ�#�i��tk������X2/u;�!/
���AFU"7;*����P!��5��=�q�H�>��Ϧ�;�?�X޹e�\]|
<p{<�>y�,D��m�>�Q�����$��v܊4�P�f���_�H��E��%����P�?J��%1(�Hu$2��%H�:
��*f�p��e���6�u���>1���|x [�_�ȶ`��SL�(��oTy���p%�@����gDV�)���3d��gýg�#]/���zW�Z�v����ո��V?ܹ�C<e��R��k�EG�kӶ�M�햎+}5�� �2�!����׷k�n��*�F�G�Ml�a����ЛXѐo��,���ac@���j��<�� �KC�����V�p"�;^+
��Ak�#.����3�C$*¾�K�*j͟����������̐gS���k(5]�B4��Ɏ��kE�����T{�4����X��"��}E�U�m�^�Z��C���4s2�%^+���{��e-ﻅ=\�K �{�q��%ٳ/:1�x���˞���Qo+��w�Is;��6�����$�W%���q�V�Q@z]igE�_�CCz��wbm���ugE�_�3�fwj_�����E��y�P��:5�Q��ZĻJ/l(�(9��:@�}��]}&�_�nd#�Px������T��P�CE�W;Q�o��O�_�f�b2'���q����ħ�}����_Bd]��}���"f��F�2I�-V���g�Ė�j����xb��q������@�w}��W���o��RUA�4�q��)C���O
���<�.zm�9W�����r/��(��j8u?��'e���j-a*���z�6�'i����j|*�� ��Rs�c���9���d%.sn�H�)B���kϻ���q�ƥmL]p�_]0���ѵв��ޥ��� 5�a��[�.�h�}�5l6:�;X�E�H�췦��6}mh)2ߺo����]��kI�&`�2�11?y-���aOV�"
�2;��Ȅ�Wt0� �m�>�V��Aܹ��F��nx���@�� �M�R;3�T�\�b�Ԕdm:B�F�w|�玫9���ѹ�\�W��Y�-���^�\R��#�q� ���)����S�*���Jׇ&i&�S%q2���Q;�2'7��P�c�^sW�֩@�4��_�i���݁z�Jw�[\�F��3�8b8G;E8�'��I7���g:U3��D���?��fz�t�1������T���*_����h����v�i;�Q�盆ZP_�z�}n�ʝ!�E`���,�s�qF	9�y }����u �<�?    ؎�RS�c��/rD3�?R��έ6��1���Cs��s~G+@z
>
�s�{[��4�%P�lC�˾�1���^_�HK�a��@����ze�NU\ȥ�$[��(~�u�fԕ�荛M����R��Pn����M)��*%Ne���'��$����n���6h��|i�Ng9�I����S�L٘��Ṍ�Lə��$�{��t���h[ ���8IW�ƜUp�F�O\,�i ���#�r�/�kM���U����E�2'������I�ˎ�����r�8]���n^kW2�"���?q�`���o�]k�`�,�NT�L�Lk�`��cu��]Ui�����4q
�M�'|z�vme�I&^W��NB�ey�a�����`_5����p)����q� �/���-�֢#ڬ*;N��!bv􌕎��D�p�/?�r�@�o���t�c9�� ����cG(��L��`C�{�s�����+�cd�D���4��1�ߍe���Y<�VO�'cd�)�ɜAp��#%��ԅ`���oko/Mo~���}�sk�Rp&������p��kq	W;�
��B� 1��:s$|Ax=�^�v@-K%��[���b(d�ԇٽf�_�����=V+A�$�V�.�l���V?~}�	d2f� �\-�Q_�� @(Q�c`Z�i�Wh �J�/��<�cL�B�j)X��l��))�E���,	h)-����I��a�(�'{g�y��.��+�:Q?q�J&���9#�di:�425,���X��V}�xe:�p_Q�3.7��:<O��溝ܙ��庰O�T�o�L����K	}�7��������� ��L/�x�@�����cW ]sGDn�������QC^�S�5��Af���u��i*�<�\P��Ee��I)6�۸;L���/��z�(p�&���?��C�gp������(�,?��`j���$"@@e�c�zԀ,�{I[�r��X�]uR�@�2�D��k�U=`����)C�є�8/�ˤ��Ić�Oj���ѱ��\Ae��Ɲ�O2����hI�3���(��s����p.ǝ�Π�:����!�~u�]�,������=,�}K/��J8t����0�j5E�'�A	\z����R�=�
����e,�4�%���C&!�芌��E$��D� ;y/T�1�©&��8���9]u&~:*莔g�>D�g<�d/���܃&�T턕"�"X���}74qYKF�v	.����]reCn��Jy"	&�sPl�%��0$�����Cb(�g%�l^�$v��__�����)�aN��{3�OVC�|A�ȶۺ�J�\rh	C�r��f�ҝ���22u��x��s���:�{)w���b�D7���n'oI����zB�#����Y�.��+��DE�{���sք��J�~�vNv�,������G'�� C�%��9��D�	�p��,e���4&RV&n�Ԥ���Qg��{�z͆�	���S���U_M���ί��/�m:Urn��7�e ]���_ {�=u�w�	�2��C�S�nѤ��fu���$�R��.��4P�i����$�m=l�C�5�#��}�n�����ܚo�5&��r.�Oª$0@`jR���7t:�U�1"#Z��TW}.�j��38� �dTCG�ݚ�b����� P�\ J��o����\l.��K�h���QT7��ݹ���g�1_�4���߬6�vv�x2wf�%����;]9,�3����aN�G6eJS��Nq��Oj���q{�Z�ae�8	����&um0z��^wB�_*b*�Q���s���.ITP2���mf��j$���3�6`m~�@�Bɤ=����=u��r{��ǉ?om:��T��V�P�ӌ���_��c��eKhQ���HTӪh�+Yv!�cQ�g1~F��i�>���L����^=Tt1�!�G��KVNK�e%'$ǨZG�橫`�3\���E@�"���ے��֯dVR�Po�q��
WU�Q�ٹ`�fe��^�5��4����QG/Pq�����A�{ӎ!�vC�T�`4�}�&�6�+�-�|��j�$.V��խ=��	���e�@a����/�Õ��5,�j��I	�*��L̉$��A�M�!=*��(7�������NMRǱT�?ol'I,A��r=�||g����|B#=Ib��0hjƪ&)� �yr�~�#�KU ߅�4��⎛]���g�$�e�c���.��$	p�=j���ʫeO� Gy���ױ��]w�m�$��C4�tx���cS���c��k�~ߨy��G#�����{{��z�w?v����2[�*J㹰b8��4I
�o�96�I������~F_Ii"�����,����k���)�x������m��l�L}�1�\Mv�r�>��C (��Ŧ��֒%�����w��UY��y+��U�?�p�?�}ex�=�R�o��������
.IA0�h�#�O]jm�EPf�Ha��FM��1��Q�V'���������E]{��y��B�c�m���@ڕ�D;ɀ�#�R�U$.w]@/*'Lx�v��B�/�dT|�l��]巜���4���1�
*{%��(��d���{���rT�U�a��=ٴ�����iN������QzfD���;F{��+ق�ɱ�>�|��X��03���*�xH������3���r�d�Y��V�_p�|� }m����噘� un�����i��\"%`�Ӈv��m����̚c�-��H,��Ȓ<b��q��\���[buHL�W	Is������@�{[]x�0����o�2�J�e���М���E������G�h^)_Rg�k-%'l?�P��o�i��%=K}�
d{�$'��3xM$�O�n3�R=�;��"�D>��*';V	�<g�Կ�s�u�I� j���3p|���A������6�O6XU��;�������F�U�,f�s��:~�f��A�e��EY8&�|���W��D�h�&�
pwuޱ��r�1,ʆ�qY:+D816�\^���a���������E�8�-sO`�t]	Ces?yL�;�٪���	h�@i����������Y7�����95�|VQ ��/�#� r�ޙIt�b�Bu�Q݌ƤdrI�]5�W��ܣ�E�=�^!���ǩ�~��ǽ>��'ȥ��W����,U�f���
�J�1���P��e�?���f8��XF����jv&��$C=���h|m,a�<�N���ܶ�����=c,���C����Ep�"Oވ�N(&*�I��db	�J���������v�����[�X��v��Ӈ�j+�?�R�_�fٰ�ɕN@�~c���@;K��F�G�c��~9�zF?�����K�[C�G���<ھ��k�#~��Ն�0�=Mx�����^(�l�禭N�P���E%�F�y��W�C���9C��J�j�S�s/�5�{�d�q�7�!���(���kB+���2�k���d1�!��k�΅�(�Ѵ}��������%�lF��)�
@.�n-׳7X�-r��u����K��|�C�CS�QN(�0��O*���p��U�Ro&�x��}�������IDL����xN���ټŘؖ��I�s��B{ד����|�+#��_���X@��]�?vg[)��EC����O��Tϛ� =P��t�~6��,4[�B� ��&���5��x�RA9�~aw{�Ýb;��ZE�UD�c�ˠD�V���!�n��fGG�B�7e���E�R���`�ĕ����%�f��d_�&MŮ9)�蚨84�����N#`8$���]��Y����N�]�7��xB[���W�3��d�5�:e�܂ژ���l��{E5�SV���J s����'��%W���,&K��T��l.�Ώ�9���?�s���mJ�@�hW����z�/y�WA�b�q+�9��ʟ�#�X�t(�eJ'Y&]t�q$(N��}�����! � B����aHi��=�Y<2ęS������     ley]Ei�7��*�Ő�͹����5��]%�MC�"ۚ�"! ���O�?.W��Ь��~v�l��]�\)\(��v�J}���o��˶�te�m� �W�Uؑ��U���~^j��8�R�T
�LhJ�=C�����h!CnS�L%L?7�\�`7�D����PB�3U[v3�z��oh�K�t��"�&��7 y[sIϼtp1S4MbѢ���h�����b۲��2�$+�u��jrh�J�ko|��TB�sN��I�K��&��yZ|AK�2O7��n����x������L<B�d9�i��(�7�s�N v�<�ޑ�_�>���0a9�|�4jw�-�^Y>Q��B��������?q���:��!�?�	f�B�p�F�/7m����s��AaOꞳ^�4h�
�5(��<�mS1��V6O�&�/��&�%��u��{j2kڡ�4{��	)�es�~t�C%��Oq�4���Uye��X�!�V��\<�Y�i���lI�m�q^������/�fOX�{�g�5Yr�ڣ��R��~�WT�� ��:�c�� 電F������<9�4��՗��Wf�;���ڡC�Pt.'����^��d�	�H�sI�w�?s������O���Rǋ�(-'��a���}�2+yQT��/㨦�*&2���9e
��Z��NE��9�&���Pi�h����7�fK�%�&�I��z��3˱u��qc�}=�J��`�(�+����#44�y����;�N3XEj�����!�.a��U7�X6��뽑iF-�Q�Hn����7�����;ibv�Ɏ�ie.O�4�$�wVÍh�����x��X��t�r��GD�Wn��VR�9�E��E8K:��b*�b�#+�N5�R��M��I9G
��
��a��fS�kr�cҳ��и�F�_����v6ˇ�eu,Jg]VOU"�9(zӮ�!0ȌG�Mj�S��\����r����ԅ!�YӼ`�Re��f��G�_�*��|َ��o6C�ݷ��Hw�Vv�!  B �����}Sm[O_������V�S�iQ�����r���~}Q�f/��7-B���,/�u���Nպ+=�� '6�:�q� \��ΕE<vby6c��А�ڮm��v�)ץU�!���v�����
�8e��/>D ��vh3���p��T�la������������QZ�����rҟp����Ė!L��y���U�CJ��Kn2�/2u� �i�R��z��Bܔ��V撕΢r���:aA�}K8Թ�Qmg��Nr�e"��Z�Zcx��$���qUW�d�|:�]���-)��A�s[��C��2S��o���r���e���d��S�ZYH�b��T|����{��(dZ� ��r���w�U*�C�5�;*���Y��?�ScZ,����,[����
:��W������?#�J]S���Pg���'�j��ClK�y��	�P���s�����&�W�J^����JIb\d!}�3��Tqy�uG9��vl) !�}U��=�u[v��`q�^�N�=썞�󹹌E%��(_y�:�*�^(�"��J��ny�+妑Գ�l]�,��߳!6�L�.U��n�ȟl=�f��ʨ!-@�K�埭�����9Z���� am��2P�?��*��~q�e`��3�ɜU:U�r�||́b1հ�b2���1�lL�f&s���G��~{�K��k$����'vu�w]�A.�ޖF�c���n�I���܁�Â72F�l��>�+3Ҭ(t0/MfnN�e�$0&֠��ϬN��9�La���ڼKo�� ����t�oS[[��B��B\6<���̲�A�&��5�6ӆ�-.����ƨ�d^����Q�%��Ռ�d�I�z���I��f�ȁ����^�6�h�al�!�NQ�[��!NAi�vt1��[��)ˢd��9l�j�2�\�ܩ�E(��R�@k��Z��,��"��3��b��j93g�G��
�De4�6�"�9A��#���cD @���?ۯTX1�G�{@�����f��{)]�Q�5�P� 0Q�1��:�p�T��/�������R^���*r�ߌ�c_hЩ��\�BI�x����]��q����q;M)��Hm-{��PS��4�Yuu�7��J2֊���#�cz������]Kf�8];�8Y���:n����ܱ�$+n^��R������B��#��=!��L.����$�|6�d1XF]=�v�n͸�+���A����,.W���O9�]j��P�t3(��x0�_��Lca�ڇ���.������$T@B���R�������A�D�v}�[Q>94��hZ�k�=���y�9�fq�QK�%	���.�P��5��[�<ߊu@;�6�W��c�d��J{<�ox��g�_d���t�sf����Զ;K2:�Mh[P^w��8�,���P2��d�3���T�5�O�=_`S@zt��^��Tu�g��gp����*ᖔ�����m'�ڝ,�R"���w��O�����O8�@��Sg��(2U����mF�n_MUw>g�
W�ͯt@�f|ޫƞ�Y�?�;v���|�b�iU�������{�a:j�w���2��m#r�ʙ`_0X�L���کda~�R�	�4˯��s�������YZ��;��9^�g��di)@\ӤW��nUJ �2���{SB��AUꀰ�A̲P,���{����Q�9#|jk1�p�-�M�׽�����徝��^�3
^J}ɲ��B����
�F�|?�,#T�4�^��7��ETi�Y�	y���oZ�PB�cw����K����$�����	QG#l��ޭQwGW��ƻgxl����I�I	2�̠3--WWՆ�|p"Z��C��i��享�n�[�H��9�Cy8���U�f�B�"��6�8ac�^�`%���`����-r����UT��S�S�^�k�L�y�s�L���n<���A����2-3����r3�4Z1P�|Q�[��<���Ky�3����.a+,�$�[J���J(���P�5����_Й#���N�NF�9��Ѧ	[]3��9�;h���I�CO��V�2k��YX�>�EI&�l�MBar�Yk,�_��WOc�7�������&at*����șܠU�K�k<�ȸ�)�t)��Ɋ-GQI�&-���P�_]�V�Ȭ���ٴp�DB֪J�����;�]����
 !�O=}��~�ɟ�P���+j�M%��eE��Ň��n�8Kh#K�gHڃ��e@N���F�ј�mϐ�@úv�?v��ӆ#�W��:��X����jP%��[����B�bB�m�8�Hn�Aj�������������A�I\*��e�'3<�(3cJ��46; �������"i����ɖ
YY(HW�����/hݙ�������hA��o�����Figa�5ЊLs|��=V\Oc��$mƛ���c�U��� 	�^tz���F�����n��
*�N������w2M�"*܃���A �(Q)��z3����s��T.'q���	]��nfJ@	�W�p;y�?
�T4����f�����^�&�ln�M�R_�[>k�=؟+X�&�dEu��\��y�ׄ�t:�X���
�5O$�I����t�WԃC'���r�]��3���=�k���<uYL����J�]]g�r
�_�R�s�� M�X+�7u��+�,2$4%��ҫfwh���.��=qd�ݫXJ`@�I����T9�kn>���]L��䇅Á�6�v��j���C`y��G�$�{I�N@{j(f>���&�h�չ��]E�k��&�Q��C{�z��]K%���F�f��_���oD��x+��͘ϋ�=�W�Y]=�8���ޠ��}cI�<�Vjl�'?���4S��j���3`1��f�n��_�3�P�,�ndyk+���]�9|q�{���([��)/�w�����{�x�<*��몝7��[7M&�dd�E$B ��M;��``N;n�$pC�E2�,^�U�R:�T�U,���o*Z]�/�X
#ީJ빃Lđ�7F��j�����~ز���"#�yl��a��vظFF��f�R	�P' �  �"-�=��ew^����������	�flYu�pw���x�·�h	.L�ht��?�W;�X���N��)�x�%}+�kadk�8���y\�[%C<rx�T�f��̔,�Ji�d��|Jᐭf)kN�dn2����@V��e>���31%Z��z�R|G����͓��=r�qy�퓉fl�6�F�Y��<t�vBY�Z�;a6"�G�q�z`tw{<Ӂ��q/`�IJf{���n�a�<��z��F��-K���Ջ���}*Y�$"���(�?Z�c���=g�#r�ϩ��J����U.�	�`>]%�� ԯ�/�c�b����彞���,����P,�ox�7���N��&�њ_���"��9��c�OIvſ��*�sd�,X�nP�i;:F����ҙ���X�)g|i��==Og��\�Z�bz���'��/V���n�p�vuh6Ԗ������w��Z��4�	?����`��^������n##gAN%i�IJ�'�h-k!V��� 1�f�i��[U����~RE�������Wޓ���5��㑲,���W�C�]8�M��Ҍh����m�e�e=/��H��Ͻ�&�-����9eyF����b\�
1%�Î�Q['�Ij�DGᇆ%K���Z���Q��@�Kb��F��}$���=^����O��H+�[����@Pmi�� 8����Ꟁ�}����,gP��S 1�l�2c�˻���e�;E����3�V�ˌq��@������N��X
'��M=U%Κ��b;���e|�F1V�B�7P�������]���B�a��}��}ه��*M����6�S������A���`@ ����;��*#�#����8F'Zd�"�l���Pv��d�-�ȠgN�4�uڟ�f����}�R2�b�nJ`2	�k��nvɵ�4μ���i��`�>!�U��{�
l=o|W��������+���P,��c?V4ˆ ���0�5�a�oe;�ܬ=Iǂ�''���l���S��ة���k���bm��>����Q;�J��+��;�	ߓ����#�XP)�v$I���Z�N(\��P�h�4��3ʙS@�7yOf��[+W��f�'TA��q����)�I���6��<�:�`yE��B�ԛń��7b$����z����eꪌ�i?9��dM��N�LN�9U�tU�|m���˷9��:[�}�*_�J1���\�a(x���P%�P��2��������Ӝ	ZmgƒH2c���O��/9��`���6���)(AoƩJ�r��@ݡ�q�������l8��eW�B�����ݜ�q�8�Ⅶ%9���D)N8��dW��B~:��u���X�C�=7:��'9���Q�
:��x�阭�ާlvn��k�F��Ҵ��|k�tb��J���ߋn	��ͩ�tԤ�2����
�(�H�� ���:[���VP�o4�`���w7�STf�hTPD��4/��N�ڗ�+(	L$�d���v&c�TA�B��ƍf��LL�3���+����T����PP�o�9/_N�L�J.O���L��e'P|���DC�Ylǽ,�WR�/Q�Rф�� 8��cYh�/1��_����6fa�I�Ǌ�{h��H')D/6���}����9�dO$��xe�v1��Zũ81�>�WP�U��iē�]��G�]�}�,�1XRȅ��wO{�Mos,���aA0��|�X@��ࣁjvI{_��u���+`�2(��W�.�R�WGb9�;��vz T���h��FS��V�~N�8Q츠�����eD__ �O
����F/�����k��6� ��F��[M
�w��srM�9;U��#� IIJI�V�<����B����u	;y�礪��E���qT��k n�
7wM)_���K'6mp2�F6��%`���,+�j��������||U����Vz
D7V���{��[�4��@D���݂Ut�4Ll_Q�>��"�	֑� ��)�74��k��p��u���Ok�n~���m� GFΜ���`�=˩�}-g�4x�V��p9~������j")�$�*t�G0�Av��߱ߋ���s8��Apu_w�s��!�B+�s�t��k��)����#�nj�X�*$	�B���eǡ���(b�q*�z�Ի2�*pK��A�ڦ����P�L7��L��R����bĶ���j
%/����:���0O'���U��=�Q��d��GKZ�0}�@��N���rC�הA �٤nl,[rbq�o�nK�ɝ�Ϯ�$M�"Z1&��}� ��~�Ds��Põ&����b���H��������'F&I�Ws^�0UR[�D^c�H����]�K�fI�_~�$U �!����B��1�q�u����>�(�6ۧ�>�״[���N�3@g���t~=��u���P��9V	A6��Ky�Sq�=n�t�8 �C^���S"B��B]��y��T�@��O؎n�/:��s��'i$VV���Xp}Q��.^�E�
�Ja��7j�y��#l&�R�&��Ѵ7-5��%r��h����ũl�a�9�U�IS_*.�>4;9�?f��Y"3��6)����+B���eYZ8�1~L�y�Zj1���y�U�i)@�w��57��Xق���FJ/���	ȁ�G�����bfc�
|��g��VgN����S�0ߢ��l���"��w�e�#^��l�ų�iu�k��svC��)�{���Y�[����Td���ab���i��!��8����fh]eto���Ě����۷r�x�<Ϋ���
HC��H3�Ӑ)kƔVƳ��P:�6��Y��2	�XnӸ��/o���x���Q��\��;��C2^3ۼ���zK��`�r�7�9Gn
h˿z�7�t��LQSj+�Jђ��"�V��-G �d�r$���"�WT�q�M	����T3|�E����q��J���i�����P������Z�T����"p��.��U�)s�<c�S���Լ���ܝ����is��������]kgj�.vbMy����If�:�?"T�R��C�tV���h��Q�ˎ����X�I��+����Oa�#��3SOm�=�����0��p=��	���"^}�ȥ|z��O&��<D�J��ȏ�^ᾑj��^��7�m��f�R�So�E�K��'��@�Hu�$�S
Hl���L���8B�����Xƙu<���G,�\.����.g�6��^¢P0Cb*��a%s�WQN��iX���i�jHQ�3��[��.qL�<���h��ٌ�ل��� }�eD��EQ��o梸`cb;v4�~x��%�����C׵���N�q���2�Y��/
�o���/������������#�@CJ�1;m��֧m�x���&8m�$/����t��d��˖�9��M�.��:=��ϰ�=�r��2�۞�u.kp&�,���qN�d��%+(����S\g��u|Bi��J��vL������n��g���H*�����C���s�6uz�e4�k i�m�O"x<%H�XF ��<&�B����m�g�ި�w�)̌�Y2d>�n�o*��"���ч�.a�}�	���S��hƐ�J��_m�a�zM�3:�M���?��Y�+��7�Oa��,�}��:��TIu�>�R	��;ԾO0�o��Qz�������F�����^i�c��]��R���ja:�A�O��ǫ����VYn      �   �  x�]��r�6���S��c��<&�$�n�x�4��K��E��h��F}�}��6�����̏ �?�������`�&�xrj&L��'3�՜�B�`5�M�~h�k�q:[�fC��n0g���΋e!ۍs�?y�-�Z�r��6C<e��j���� !�8��aC�U�&��ۛ�x�x�h��{�G͎��a�L����}�����y��8c�P�@A��s�o����
	���p�Q2^A�{pg��)�{U;4�Y�Ld����oG9|Ѱzr�j6�����^�0X����fkR�0a�{�-z�3R�_�i��f��
��P��qΘ����	~��/<R��'��K	�@7��`�S�k=����R����k>v.BW�����"sC����� R�T�O�
L<����R5Ϣ&6���8�	�7υo��^w���zd'���߼��k�������I]j�t��If�����J沰�^:.I�/����$�wx:�q�ɨwܹ�ʓ��G����HFşx�*)�?!zG-��)û�
]��cƛ�$ㄙ������$k+��D�M��^h���7��H�c�1_�~�`����se�\Gi����m��q*��&#��"�F�χL4���	;���x�*��d�}����,a~�w���Uxʜʓ�)HҲ��E��М��C��f�
���_��!+�CG=,����:�R8y,:J1��|&����z�'��\�il셊��ɹR��ѝEKw՚[�y�d	�� {�jh��I���LK?�%�X�QSfk��R���&��*f�ٯ�^�*��u���~8��UE�dEC���%)�w�;�m����2\�#������bu�X0�x������DK��4��2�T9e�0�j4u�We,���]U��yv����g����RU&�o�Z��ӡ�"-S��x��2aKh[~z�|�dx��Hp���(�?��!����4hG\a�a�
�>�3�ݰ��7���XY      �   �   x�]�=
�@��z�sA�?}� .bi3��fwt7�>b�9�b�B������=p�`sU�zJ�ތz�_��xi%Rٍ���d�F8�e-c�K���W�΢vҴ�bɘw��]��Rrx�B|�EQX�(G/����9��Z���Ƙ'�M      �   (  x���UD1ѵ��o�B�qpŢO����iѲG�#g�\�r��'o�|�}Ѿl-Z�֣�l#��6��l+�ʶ��l'��v��l/���E����~�Գ��#��>���+������'��~���/����b�=��ү9r�3Ǌ�r�;ǉqr�7ǋ�r~1��-f��c��#���9s��+玹s��'�ys��/����b�\=V�5b�\3�O�G�r�X;׉ur�X7׋�r���-v��c��#��=c��+����s��'��}s��/�����<=N�3�<3�̳�<;�o��s��87ϋ��~q��-n�����#��;�μ+�ʻ��'��֗{�/�����|=^�7�|3�̷�|;��w�|72�Ql������ȇ�"F>�|(�`���ʇ�*V>�|h����+��i+��pE\!W�tE]aW�xE^�W�|E_ᇿ@��z�[ ۃ�h{HlPm����!�AR�o����2���N���� *�FHE��i�h{Xm`mo�c%�=Ȋ���[���۠+l���_��� ,��*kK[{@m�̢��Z�=L7P����l��v݁:��-���Ņ���s���ޠ.���E�;uY���h{�o�m�����@�=4��w�Vձ�Gq�챡�A�=F4J��ǊF���Ѩ!�ޫ�W��_@��A~t~�v���!�1�G�h����kuQ���h{���m������C����u��B׉���u��ՙ�;]��.u���u��Z׹�{]�.v�l~t~��Ǐ��u���C�=~t~��Ǐ������!�?:?Dۛ���Cb�����C�=~t~��?:?D��G�h{�^�z���C�=~t~��Ǐ������!�?:?D�����cg�����C������!�?:?D��G�h{�^�z>��C�=~t~��Ǐ������!�?:?Dۻ�׃l��e�Ǐ������!�?:?D��G�h{�^�z�덯G�+��z~~����c�C����=����-�k�_C��`����c�C�=~~��Ǐߟ��Ʀl�      �   a  x�uUKr�6]���"����8eˮ���d�!%P��"�HVYx��biڤ�`fV*QOݯ�{݌؋|s'�N,I؃i��;�`R��W+*�1[H�Z��D�!h� <a�k���p�4���[�R=���B�
���OT��
�[�"�����q`,��;/���~�`�\�x��� N�dQ6;�z-Z�{U�J�O<��zk�|N�9���~�Q�Y�tx�MSJy�pQ�q��W���Aey�;���ϊ��D�#`�V�:{�Z5]�|]T�H�E���]�Pr;y������J7Κa�'��)Q�^�p�+e���fle���*�z�iX����V%U�٭@�$�{��W�_l?WVs�vou)ڲ�iĶ���.��ќ=kuT��Ǝ>��QP���dm�+fߑ�5v)����� ��+vA)F�� ��@ŴC�����(�I�	{>H�*{	��L���H֕��V�I[��)wY�h8����gl	�7��a�u�8gKUo��F)�!�+���ݠں#�_���++7gO�q�&�g7n�/��h�軘g�����hy�k�ӥ'�G[k�P��T̮��Dw�
Ϟ�7Zr��+�k�R�8JC��.�Ik�����,��ny��G_+����:�Z���<�e�@[��Z��y�%����9�I�zҬ`�p�;��K��݁��GW�ԇ��4�ӜD�O���Z��e��H�q"���.�d��9����LA>l>T��S��]�7��k@��ix��/������r����㌶a�_С���8ݿE����ʇ:/-֠y��;z�:�Q2${_���`װ� y�=�(����[BǊ,����3��?�N��      �      x��}Ks�H���E�V�or)ے]���rWEt�&	&ɴ@$;ȦW3�d*:�Vw�˫?v�s2H��$�jfQeIN���;�<�GK�+�B���G�Vf��u��Ki⥌��^�u/u���Vǅ�����s7��ᗭ��Nх4*���5���f+�8�q�M&�-��̏Z,��e0|^�<��`y��K\�����No�[<\&��d]�
�a�Mt%�����
I���e�a'��n�U�' ���N�+�����Y(��D��TӍ8;E�����.�L���X�\Iū�4�R=����b�	�x��P���N��h������`o�p��7|��vا����b�P[�7ZeEt]?��h�{:-�a�D"�֘��_1݋��3�����e��Z�o��ԍq��i�����7tz�M�GG&���R��`��~�%~�t�W�Ӥ�0B݋���<��6�Tq^��5�4`��e�����ي����ζ���ī?�T'<����U��(���É�r]��	CU�= ��Y?�;�Iⲝ�1�^l�Li�^h�z���������<�0����]��v'�7L5?$�ǫ�#$&d��9l���J�$R�3RY"v�dY�P���C�Ü����&�h�)i���Ta�`�~���vb����1�^9Հ_�k�h/��D��rF+�Dc=M=�Q�K��:��e���v�r������1ֲ���]j�窄4�U@U�X�K#�]t�l�h�ғ�'�Q�R,��xc�G�����_v�-���X�$oE�1v`�J3�MH�J-��?�`i_�"�D�f���V��W�"�݀Yig{��y����;I*O�Ao%��%��4������Ù�J�x��H�0� (��^�i��N6Ys��P�O�'���j���X3xt��%�2�L��2����gy��)4�4�^b���j���i,E,����ϐ�J��fI�j���Yp����>
�qz,��m'�z*�������Y�
*NA��0�V�	��jiԝ�*	Ն��*��G/�X��W��R���[�
�N6���T�a�Y��)��ro�S�S��IC=D�Rlw����H̘����N��l���GTg_Y�"���k'p��V��_x뺎C�1�ɥ�����Õ:SG�,HUUƎ�XA����s��	�q�6P�3�oo0�A�R�������k^��2�r�m`�N��e*��`	7���Е^W&���<��/��LG �T��,��zud~"]�Y�+'��H�p�t=s
�>]@���ŗ��v���8z���TJ��d�I��?�d0%� }l�ɒ�[6�P�8�=�:Q��*[�?H���@��o:e!��H�Ug����H��l�P��;E��b�4��b�T���_�C���k=xN�վ��v��`�J%���^�C�l]&-Jp
�L�$Las���e��"��u�sx�©���F �AV����nKH�,��ZQY��-I�D�L0��s��谏���u.C����"�`/C�LLH�g%0
��6Ka�al�x��^vB4�N���:S跂!����Y����L���f�/�2y&`0�$��d2�y�.��U�cD
y�<���!�ن�ݣ ���Q!uJ0?Kev/aꭎ$�p;�-�=hÞ3�3�x��&��#�Ȧd1�x�t�{H��lz�	4�-&M	.�!��,���pЇ�� ���S�1v�q��|G㐖�K�)a��M��N;D��l��jg~#���Aj!?Pm���B,@�v��譬���0�+���m}JF,��id1Ƙ����Bva�5p�;���$�k���Ʀl~Y*�Kƒ	=e� ��C�� רuZ����לU��w���
����'�s�o.�V���"�d#��9߂��S�ݏʣ�JN3��;i!�e�!7|�I����J�X(s��sv�٭`�f�j_C�� ,^)cz�nZ�F.W��rl2���[��^�yS&E�x2��p�)� �Âm��1N���X)��~{�{FK-k��N{�c.5�>p^��5�� 	��{��
����gd �^>�3�J��?\J��%}fpL�ˣ�i�b����� ��[�	��o�px��*�.;��I�	��Bt[�
�\��4�Ε׶$(��0�\ޛ����-
���6�6�)/I�*R�$�=6:sb#X�'-��nF�jy�`]�q��^�� ���mA.jh<تkκK�L�%V�F�"������9��K����,�2m�����_����V9�;��_��$�P�:�	v�9�fdS!pȂ ��?_�|�;`_Q1/�!����0@)V�Ɯ�M^��ca%G��b�]�e1M�+���L�]p��J�E:���C����;r�j��aB��N��1F�a��w��S�B��K��q�m<>��@���\'�cݶ#X�٩���ÈXw2�]�7�sIX�̪�B�1�����;x��C�ݛ2/��$W�9���^��:�g� �Rqvq����rCJ������p8�P�����T}�ʓ\5|�G �;�.�I��Ke��
�������O/�@`pf�Î�{<��M|I�
5��a ��? ��^�1=0)���˸s����y���Moe��a��<�\�dRķ *�͊;$˳��HU���i/b7�ڬO���`P���.��H���x�
��9�
�}G8��6�9X��Y���:��:�ю�,UQ�
!�e��-���g�� ��\�,��UWa�{��㸵H����k�V=ct��w�I�5§QݯB WbI;;��9AUд띜V�������qt��E,�6����;^0��c`���j�i��~޶q2����]��7e���!��\�̢�`�iJ#��J�ΨQG��5jz[����O �F�������U�ϖ��E�ӎ���S�?�TpІA�u�r��@~����m<��J�bp�c������9F,W���s!Ns
�yP�`��RE�����jC�e�	H��Ǒh�Տ��,�x5�P9	'@V�!�1��梎�؀�}��p7ٴ��LI�H_�Є՚������)}��l���e����V�ior+��i�1�鈞�����k�{��k�#J�LS����������%J�� ��4z#`~�P��k��ڣ!�}4�ފ(׀ȉl���MgD�^d��7��k�����<z��FjFԂ-o�����@M���LW&�Ȯ% �%����O���z�U"=;��Go�^�	�|�F5;m��`��?���o))�%!�`&T�2s�Ղ�! l1����I;h���m�xj6 =�R���@��~���(1y-6�k�m�j�t������@2���o�'4҇�a��;{<P0���G����+��l�x���'�,sg3��'nwg��;�:�XsƯ����� �e���)�!�
� �bE���l'���Kb��,�hT������=_-Cv���I��M#(�x����(��ȣҦ~^5�g�Eot�<@j�K��]Br�g��C�s��~|f�N�WeQ'�a�\3��[9�6�z���N��X����l�51J�����Wgb��[�q�� �(����������g�F��h�UB����x��wa���y�|2�Go%����3wN��٥-/8��y���h�<�c���;`��^#����p>$��{k��:�ɼ�R�Q��`����n�8V6�Z���@9����rM ��@���������O��:��@Q��͐��|
y��㊺ch�Y�z�0(΢����uP�(�4a�?�fZ�=�/ Y�Ç�_�T�Ѩij��*?���k��??��K�����W�&�^���%�z#C�d�I/�h�3�+�`C���x���XbP� +�>4��\n�6�()%m��{��V�5%� �6�`(!���si¨�O��N����k�˺M �y�c�5��ž�����!���v~�%��-�7�u������4-)�\�LJ)�e6l��jb��    �(㼟��F�h��v;5�V�`�|�������]N?>��מ���Yf�����p�7�VxiB���J�(ݰu�$\d���]��J��4�[LFR�3��!m賜\`�(�;�F�e+��,Xt�i�"+c���@,�`�0[e#EΜ��g���X��u	��9�ډ���r`ֶj2(��u=-�|S��jM���oUJ�s����>����4�H��.�c�@�߇��r�͔�~p'��Ls��C`�-F/d#�&tP6\9��=8��<u"pڍ�(4��,a��?x��	\J��ғ������}�%ᨗ�,r����B]��\�E64�̲���8#;Εz2:֕��)�O��8�7:�Rr��][��X������gXG�j]�G�F#|���Bh*��/RfT�,�V[W�;���Kȁ��V��
�p����{)V.��]��hW��V���\�?�{�p���o�hi%B�F �ڽ�k�^���Q�����*yϣ������d���U��X��gr����Ё���}�]o
���������׍U�
�\���+��A8��!����4��j���H�g4���.��#d��"x���8HZWaD��Ƈ��{@�:)n�-�؍i��-`���.�k�E�
�y�N��Y��A���,�3zs��������PNxk�m,OL�l~�
��C{R�+G#�"O�2N�(V+S�L��5��M�N�qEc˅�H���Dn�k�}/5Ԝ���U*��y�ǈ��Q�*"�<>��Ŗ�<`p��9r��tӢ��j��#T��IZ�O�#�l=�~I��|;��Ixn��D�f��M	��u�`kDy���Gx��>�oښ�&�M4D�IŖ�	�׼Je�i�}���Yކ"
ߔij�Z��Ǝ��Lon]���#�R`���#���d�����M�
��{bE�%���RW吶ș�:�8>8�8�������P7Oe��6�㜻�T*���%����M�����Q~{�-:�jW�����M^�zN�w���7lGH��-�A��Qq"6�B$� ���3+�� |� K #7pFT3������D!�
 �8}1*��󠀗b�خ�V�K�~!��Y���ӯ��G�R�.���J���lYJ\J's�w���q��hCL5���O��IVq
X�����GIн6a�on�n��x
9ֶ��uSy/|�C�՟�s/Β���ٰ1i1^W OF��^N��ཻ��t�Ro��mh֝��8��ؒ.�;yT��ƻ{U�q��{������>'�@���#	�Zn�un�A�-a�+�>�>�HU�ixB`��d ~���J�"��R �_��	�IB���L��!�f�;W0PUY��U��\���G��el���}L���(�Ζ���� F�� �_���-����B�h,=�Y�;���ץ�swU;�~��Ѱ]�|���Q�A�ΉHA��!�7����{v�n{VnǸ���۟����4�I� 2c!�:�j�/7ќ���a�.�蔞�
�7V�@������Uu�0��?|xQ�x@�pԾ2�yZ{K��"�z�U��	Ws_�{�Z�B�M�R~�k����������xL�H�����z��{*|�vs��JWa7T��v��TT��M\�PuzA�aG���<
��y�s���v�犴�s͚��W(^䤅���sU*��Z�x��]����5�F�	����.�j%���U(L'��N�ߝ��a��B�u|��թy��U9-,`]��l�h�hx���N��J���S�f��H�q<eRk�?=�R�+z浸�x]ʀ �ݜG{̈U����yt�g�J�V:ú�
�T�q�i,]�ur��	��m�F�T�&4ؘ8�¹L�����76����ń�؈sY[�����U��j��.`�uԦ��z����j�{�ՙ���tr�l�0$9[��aJ&��F%w;���"zOn��▾R���.u�ͼ�0���A&��w�1��Q�=�ld�*����! �H2�6.<�0�Ͽ���J~s�L2�����j&������K�!�͜3iך����Z.G�'SO��������wk6�����-��i��X�d����W\�K��)kt_G-_Z�$��c8h.�B�7��kHЕ���6������)|�ݒ�Җk��s�8���A����&����nrz_�p����C��׀�!�{Ӿ#u��Eta=\��lR/u���LP�2[�v�t
������kW%p��v����L�2�P� ��1tֺ�F�<�n�R/���LƗ�PF��_���J��dl�h:&z���ؒ���������tB	I�k��:Ӧ}_�H2\�U{4^�qC�{��1�Ԛ<�������}S.��jw|Օ�Z�Lg<���Y��T��r���,��C��H���'�%�U�.�_.���{�d<�'�G.(�Ͽ6,3����]���=1�[�%x �c�7A�����C'IS��Cx\��srl��m��l@�jO��H��!7\=�w������z�5�S�fw��h�	v�����sY��.�_T׼���f#�L��;�/�9�Z'W�Ѳ�zƥ��l��MX��D�����E�*Qr�DP����9���<��6U��!���p��m������Ol��\Ļ}A-�������]cU��+)�JGowR.J��A�M��t��ҏ� ���v�+=��PC�eLt	�^Ŗ�.�e9%�\1iX�f�u�ͭ��.�~�K�$n�HZ���9���X���Q��r�*[ч��*�>彌�j�oG�o�:3Z�0�5`����`���7����R\��p ����	*k�O囊�����qFSH��"�5|���T�	}֮O�}ڶ�9||��O��n.џ�����o�خ�WŃO�I����1��$"�D���Ht����0�w���|O���c�%���3�*�{����e�)��ⓠNU�'�������9�m_&�*�7c��o�J�<�Ŝ	�w^��,x'z�老8��8���l��2�oGz_B�=��d�⿶�A5��P-(��u�:\���6$��⪟׭�v	���%H��~d�C���%y��S	�7�v���#K�^p;���{�1��K��.�U�el�W�����Y/Mk���+ 4�It�l��n.*Eg[�j{{�l��.fI�t��l��e���6lן$b!����G�Ht�S3�afm�A��%m��)�j�n�?�y?� k_� ���I�X�������j�9Y�ߦ~ ��- �i�h�TOFͣ2��<M��?YR��KIʞ^ A۝�&f��	�b�!�T�����78�G���n�?y��9�N����9����@��ԋ���U�t�iMP͝}�!�Pm���o5����+���F>s)�A��kjO�v
Z���k�+�.Q�>��	�)U��!Q7��	�:M��O��v1R@n�>4ц��Ner`ojpZ�u�8�K��	�^2�*�ۘhs����%�3�q6����_�3�D�V�;�-<J�,�u"��v��>T �y���wl~�J��[QX�t��1�)��]�Gܶ4�̍��:[�R�bt��wkj�m��`��t@P����� ��bwT5�ч�����q�7]. ~w
;����w��oL@���6�e����ym?�����s!{b��.%�ÑS����*��\����6�m]�<�O����ķÖ�; �$.SM�٠�J�س�,�AAS��{��FC 3��+�ۻ@��L�4~�ǖ�O�P���~�H�:;�����?�'����_���8M���Ě�?�;rk�T{n�-��s�R?��������&^E�hh0�Ҁjicg�Ѕb0���2}��t4K�1�k��M�0�o���h�9��-���7�2mxU8�/������`1瘇������1��.!ᅸ��偛�v�]�oL���K�*�b��дBD�>���`8�AҴ�E�-M���`8�'?с��q��pD������.�ٕ� 4  ��D�"[U�f���P_�t2�����r$�d�qg����p����z��"��c�T�U���/� `��h0��qfr��04TI�qgLx[��u��6�oQ��(W˒>����0ˮ�{0��d�I��'mAX�K�w���{rF�z��K�f8L9��+�="q��
t7#�6Ӹ��z��
�r�:�fy�=�j	�$a�".o���u��6�S���j�9�N;�=Y����"-ү�{�`D��s�>��xc0"I7T��o�[��ˇ_�\�� ��e���Q.Т��}i��W��<�@��٬i��Ъ����D����o�C׏�q����L�zo����-����=�]8�� 9��}�qD�鑎�8�5�|�����YV8�0�a6
C��o7W����ف������A���&gw��p��h\<,c*5J�ݡ�������Ѕ�K�=û�4�T޻*h���޲=umv|IP�6jH������	�
��y�9F��@9p�0�@Ù-���7U�PC�}����m���c��1��')!k]e���R)[h��k��&��&�Pk�Ԫ���� g?����`�D1��lS�v��hS}Єv�o�5��&�����:��O�+�t��jd� �E���uA������\�ع]ypE�n6֋���a݅/�r4�$� �,:�~����EiE4���w˕�S��S��#�;G=�J��F����g�%��
e��S�Ou�����l2{��0={�+#�fU-��?�T�D�����p?��TD�6�p�MX ����QC����q�I�z���;ry��_y�c0D6�C����a�F�v��nl��*?L����h]�j66`XlIl9�c8�D���=�'�����{3��:S.�%;��%����.��a�n�"�6�(I�~�������XXSq�S��*R�Y!k�s�7b���٫T|ʟ��AV� A6�@z�g��H�&%�w%�@�=~�"�Wx�k0�9����(B.�:NQe�>3�X"�ە3�=���TE���h��gGCC�9,��O׌�?#�~ ��8'�������. ����)�(lտ����I�_C��n 겣͢��e�kz��i�] iT��,�B/�KN�h�3E��	�T��O���F �zL��-,����tR�q�=Bd+\8yJ�g��!�)	�3�	�g��ˈkx��!^���x�7tIwsv���*�)��.�r�t����Z<}]8B�	��WGԷ0s�Z[�΢ɹL;1�v!L��h|���=_74�G?�;��Ps#o��1�ʍ�]��9hP��s�[��)��az�_@��m��]��R�L$w���я0���^̢���UΟӾ����A��������TP���q:]1�A5D�Uz�/��CW����ܰ/�Ţ�.���d�]�!��Q�ABFQi�`6v#ry������j��>oh�����w�A{UҰ���=����*Ջ�F?Iq�b��>�[�5`�A͙]m�����9V�F��a2i�⥸��6�6O�&�e,���X!u|�د]1���f��U?�n�yU��J.��
�J�t�������\����<�	�pK�F=x}�l����=��1L��Ju�I�����s�r���w74����X��[�b��xm!�6����b��c���1h.�Z	�z�V��*g@��8�/��_w,OD[�Q�rB;?�p.>l`����}#��;[7K�B��8�`�;L�V�u��|kL@�Ph>~K�yv��*�
EWr{ţ�чߔ������g'''��+ʈ      �   �  x�m�MN�0���)z��%�@�Tm6S�4�&IE�%`Ţ;n��1^ ��(o&o��q��+����38X��̫
!��16
[�"��7���2�OI����LG����õ�<K��F8�]:���0n]h"�Q�;�+��x��kgl�[��eI�m˅<�W݆����F��[ƽ������I�e͊�����s�-d	W��ѐ��ʽc����No4�	�9�:�]��:�h�������m���^�Q,�.�p�y�6� cq����Z�P�{jTG�,ٴ3��\rg]���dCS�*OPH��5��PH�o[\����R"�}pT	t���PH�i�U�QPJ�+����PJ��ÚIs�q��6����j�R!1������T��RBL*ߴP�&�)�82< �wmw"      �   �  x����R�F��3O1��� lI�l�d7$>��Xj�	#������l����b�#�KA�l���>�����OVu]��F#�osQ��ec@�����SU�
#�
>���J�F75�~-���Z�E�Dj���h�R�P�aU�ğNȼ�$�6�W΂1;��$���±OVdC���h�c�H���9��#H��H�7H���"r�7O j�)�,�4����FJo\�n��3*�L�4<i�E'q�������?w_����g�; ^6��'9F������Z��@+��Q ��f�a���U���Y7��;`=ҩ\�z��Ո��'�����o���σ]ju������`Sy)/���_�(!s���v�b���U\s)nyg��ܫڟ�	M��o����[�`���B�R���u�ڶ��7t�t!J,��� ��c�]����Tݭs��Q/��F��	�J(��J	�p�1�}�>N�M�.�z�p���5ڈ<Z-%�=��xB}I1�H~�n	��w*P��k㸕>ً)2f�e@'s%+ ~H��(���Nk� (
��"Z�|j��1�"���Ɛ��.�c��$��`=0�	��"",��5��Ϋ$F{��µ�o&����uo۲���+X(���d}������ߚ�_pqߖ�w_6�P$�Q�E~�j�<nV��fL�Ď��Ѫ�]/y��|e*�o����HlV��3�nn�$���x�\C����%vb%r�xc�V�� �k?
���E����vk]w�|���l��z8\���"34�{o�%�O��O��Î���S�����K����3��I��>a�.�B���y��5��e�~i���MpP|��K㐜������-��h�">dSe ��P���Ʉ�u2��ʯ�DLabV\�F{���)&�Nd+�a�q����Ƚ�Knx��
�ɱ��y/��J�1�ڂ�O���~�ڠ�`h��rv������1]$����np����ٔ|���j{��%�(���H�D�*Uuy�#��F�\U{��E���.2KGᐵ�q��k���r�R��
!�����Vc�=<1���a�Mu�����r�x�oU\U��̰�OQ�`�r�ԣ�FG���a��R��G�`�;2�\x}�h���C�ó^v�t����^��z�?)�� e�-�      �   8  x��ˑ@ѻ��F�|s!�8hsW�B?VT�Z�:�z�-G.y�K�����X�R�T����\婆�*�d��j��ꨮ�iMkF��85���<�W�i-kE���@Kkk��������]�S�ϻ����~:C�:�)���t�:G��<ݡk����]�[�o{u��г^�Jo�-��w��5�1�12(2H2h2�2�2�2�����p]��u����:�L@������h*����	iJ�����!ؑ��4AMQ��45QMU�ճ��Q֤5mM\S��5}M`Sثi��T6�Mgڔ6�Mkۻo��MpS�$7�MtS�d7�}�Xؑ޴7�M}���7 F���U�C�0a$��0Fïϯ��#x��<�G��#�Ce�G��#x�����>��E���������#x�T�>;<�G��#x��<2����#x��<�G��#�;<�G��#x��<��ձ�#x��<�G��#��';<�G��#x��<r���#x��<�G��#�|�x�<�G�Qx�G�Qx��i`�G�Qx�G�Qx�G�C��G�G���      �     x�U�ے� D���I4�ٗQ&��,`j���5��"V��g%�>x��v��'h��O$�"����E�E�ѡϛ|X��	<��!O̪]gС7��]���>q�Hi3��{�40�r�J��*%$�&��q��l��Kq�ʦ�%��umh�;X[e�ok޴k���>Z���R�*V����{���g4�3�2�bA����䜊��/VУu�JW<�g����ZH��Ľ��Ri��Ϋ��:!� [tͭ      �      x�}�K�۸����*4��D���e�Y�W^�˾��HDJ���T���.z	���I��(eRi��T�P$��"�ItՕӘ�M���A��o�꞉�veF�����[S��{Ŗ�W�$(����P?��禿Fit�w�궴�,�n��9��JӴ�5gr���E�Ҵ��9;�L���5;_�&S^�����t��wk�5�E�ͦ���<���ve9��wM�kW��a4I{ɷ�M��2��ȣ/�mM;Ǘ�/M5�^��-�P~�D7;kj�M�ћ�G�7�jF�YtY/�f4��ȍY���4�&�Lz���j4���ϔ����y\�)���'W��T����Q|�k�9�'A�����ӧ���(�O��Q<��U�Q�M��ָ�0��^^�q}�ʝ��NϏ3~^���mΔ����Z��]w{;�]D߃�m���ͦ�[_)�>��mg��m��v4�G�\iwe����mjӌfi/�%?�d���� n}��/�WnUڶ��q�'ѫn������)�����I��k�֔�	5�ѵ��s���Yt��n���z�^L����`�sޣv[kvv4Ϣ��S����2~�.�?Ǿ��b���cr]����j�Lzq��r�L{�6�SG��ڌ���q]�fc�v(��%�`�k�%i/m�(ɂh����mY6��w�(���ݹjA�(��x˖��:J��W[�f�=J|T�N],��EW؁x�Ĕ�����ʏ݉&�n��&�W�����li�nܹB[k .ȣ���wz݁�tAv�������qyfU٭õd�^i�Y�1��m���L�v�bJx�\��6K���ei���W���f0��I:ME�G���Sc�(�,�� �����i%����a���;�U�Q�R��@��5�G�+�C�D����x�F�;�K�E�k�Xp�<z���N..�o�2C�ъ'��u�ή=�p���F���j��Z]�ZǍεӻN.��n�+]=g����+��k��*�G�Q��ՙE�r�ڎ	�\�V��V�s2	���L~Z�	��e}X�Z�Tr�%Ƃת��y_M��%�ҽG6�&<�L=���׍�|XS���h��' ���O����ԇqĭ��X��kʏ��m|슣��o��s�{�y�6f�=<��U��F������������K� �W��b��x�?7_�ݙ��\On���"z{ 
�~��,~0;!�P|�U _ۻ@>����[����`�7�J-�4$��^{9��0I�,SVA΢�Ь�, DnZ�	�����#��^�1���b�f��g�q� �M��R㙉e@K�ʟ)S4�]��Gq��:��m����
`�*��I�Ō��5y�	����۽�'����/Z����=���
"j^���y���u[ɡ*LS�/���`���4�zحK�8M����#�Я����/_�~�k0 ��M�*��`y��V���^��y���.?�e$#ϣ�8,�>��q������W �K�2,A-~3ys|�g�2ƪ������' ���-7
]Z�.M���~�"&Adݑ��i��,�w/hC�7� &jnoq. ��v�ט��Ā$�oX���q>����ͣ���{���$0��k#E��n��\�������:t[��йt;597,H�� ߖ^���T[I���;��Gq|mpn�p��_�Y�YX_��u�{��s���%���7�铼G���'ßG]S���u�y������1��-�1a޺����L�.=�<z�e=�'�L�fg�N��S`���́ܯ�T��:�|O�OuT&ѿ���C*�6?Xn��|��hn��Ov��y�X��͹v��e�,�ʃ�`���Ս�f�j����);` 1�楩W̍�g�x1Dة���b�SP�%0�����=_��p�,��l�EK�2�^1uW�+�궿)�H�W�*�2�������^�����1A���nw�Bp᫝�x
L��e&,�ZQ�)�p��W�d�����N�F��ј����w� D ���|A�� �GWr_�I �t��  ���>����P3��=)�A����sB��¤nw�3����v|q\��n��������_µ<����ܰ��l������}����=S�w��k��5�j��w�n2�k��s��C��'�Z�n=��4�yغ=S���S{��4�[�ۣG?����7�ik�� 6U������ơ�h�+���xk���B�� �K�{@ͮi=���[�b��{�)�)S_��/�\  f_ :S �S�PZs��"��m+{��7l%��7{{�3�j|(p����{N3�2ʖ���OL�e������yW�kǩn��]d��4w�	�̄FS�k�+ c��OA�H��S`��[��W��|D�TE�$�DV����y�����G�׮�j���?������_߃-�dm�M���*�`�F��lК��?����.�ǃMm{@��{,M��l%<v(�S_���'��%
�*�8��� &��ju.�.'��[��/E���r�6?�>�Q<�w���<׎���e�h��}��|�>��B?b��e�m���q�_��B�;�̎��=���r�p}g��.a��;,�L9>���T���%{|r�C��m��/������3�t����]�u��������5����=�*t5��&f�J��٢5�c1���c��K���E�xq�7o�(;D�/[k���bQ�
�يo�9��g���L����径Z2X\����hT�va�Keb�9��[��0�����h⿄�� .�ei������ӹ�K��s�}D2��!%�r(�]��"�̾�a,N�q���2�nU���A�_�~�ۧ�{���xX^�7��_a��,�I>�&@���7�s�fY*����k�s��L�xk!�(yt�h4'�x+���C��E���(L$��m	����F�[[�.����#��MY[�}��g ]�#��0����.�8�/�%x��˗wwk�<�}�٥�����s������\;�.�1^9qeb��W���i����c�z�S�
%<!b#>9�����d����$���.V��W�ғ8V�R����O�3p�@p�`Δӭ���Ͱdl���C3��e������m�r�s�+{k����q�7�1��n�r!�uB�B�����8���ˮ�>��x� �~�2�1HtM4ӱ"^�:* �v��� )��M
I4w�+y�+;%�b���A7��@\����2�|c[��9j�t��1W�#�ݽ�HsI�9 ��]A`=[����U&�Q9Š��tl	D�6Q��aw�{6��6@��8����%F>~Yz�٧VA~j���Z�m�h���d�q~�A��� p�E��hy1��mv2��( ��	M�2��4�`�n�e��n`�3�Ir��N��ZjV�$�=�~"t��]�Pu�(����БeQ����X#+��I�N~u(ߔ��˘���,��B`:���-y
e�;�~�8dV�8�,�� 7rP �,��b�����̅��p'=}k�Կ�f �;C��q
��&���,L3�B\��tc�+30	��s����;*���VJS� �/��3`�CG(�}�O�! ������Q�!u�  ����w���J��ceT̪���E�ѫLFI#SW�NQ��y�ʆ	���d!T<lt��m��@�˅ߚ��Z��p���}��I�I��2à�����> 'N��(�[�S�Xh����4�M�JF�f!��!�C�C*$<ZhC$���Y����sRq��1��.�8��4�WY��$�������<^�Օ����)���o�'N���r���v��F���Kߘ꧶�L�����L�� �m��"O!��ĉB��)����s�V�:"��6�ƙ����y���]"'C�G	�(�ӺJg���#u=��\�mzr=r��.IH�٭��敩7�S�rC�u�?�O�4�l�������h�6%jg��4�NwW��     (������V\z]�UH����[Xk�8�>7k����t���^u!{�<�M*�T�xU�gX!'��ġ��\�)�.�
B��w-Q��r{u	�́��
���iL՘�TF���J:�FN��^��c�\�|������=UI�^��f�`����S)�\�)�wk�(!	��#���h��{��_�lU+�5+�<�Z�B��H��(�2�J�u��?�ʨ�r��C�:.�B��Ob�]��W��7�����^&���F�2���C (�:;'�k�aZc�xtR��yF	Rܘ�f4%n���Ř�LE �9@�#",@�PfB\T貙B��<�X��?j���
����r۸e�(`�ڶ�N^[y(Y�*��P{26`β�@��[��a-vǝy�{Uv���f�O��Pi!?W�S{0��?��v�iw[#+(�� =��Ɓ�c�	�PE���g�?���E��f�����F��ZQo��G���"�[ީk� ���ڬV,�riȷ�d� �Vv�@���*A�$^�{�o�O�J������-CM3
<��D�km����z�����9��VQ4{h4�~� ̓�d� -���P�$�r���U�8����$,�)O�kɱR��(��u�� �W]�4�VW�e�W�^�̺l9{%�`����͂OGMo�͎Zw�>屉=���:�7�fjE@��[/��+�5�V����f�F,�C[ް?��:��iS��\��ލpQ�+W��o�G�+�O7�CX�;�O��T'f෎\��H��p�=��~�lM��/�&
h�v��WD�[��3��n�=�f'M�nr����n��vmm�����R?�B*Pg�	�����68.�	�P�Mm���)t����:l� �(�6:<E�Lk"]_�&B����	���r�p�F��ul���y8[��	Ӌ 4R���+
��@25O��Da<#N���}�B!���	�v�L��no��)T�5Z��%W!�$*OUAJ�u��ā�.�'��h�V����Q^Y�<������<��ݡ�m�q�`��U��^���` �҅��mo��|#�x蕉b��]3��Z
��SX���pM��ԅ5��
����������R�h���IT�*��o8�|~�$z�ʶ�ǔa�T���ރ����i��)M�2¥�L �JL�;h�v��B��ԙ�>ǆڸd��F��\�	:�?h��S�n�օ1[�Hi�f2#wo%�����#'
XJ� �L`sI�W�(q� *ŕ-eqI(�[ٺ	�TuS�t�Nۃ�BUj�|5��n��8ɨ8t��j���~���;��CL�wPJ/H��D��f�����Tyar�I�A�ze1je�6�(�m����D���BZ>I��)r��[f9Չ�xV�f�,�i��7�=oyc�}��+[�T?Ǭ�n��D���څ��>1sZ̳����z��Y*�J2�D���	Qg:j�u����
0���jcX�LA'���W��ǥ��)l���Ԭ?�$�~`�}�t��}-[����`��8��ߟ	&��W��5�p(�|m���dmBˀ,ө<�$���NuZs(��`�;�/;�E�I!�E�iB���v�= ��1=\�@~�酠���I��)K{�q�Y8n��%�9蝭�*S��Yp��;���{�Ϻn0��W���E�b�c�>!�
��>ʰ��)Î����b�U�ԫP�����0�n��O�3Q=�S���w*�H��#XB����Ζ�Q!h�8�t�8�_���['�l}�u����RЕ�Z�3��ҩ�j~����?u�Y-t�O��G�Jh��_�^���pk�=2��.]��`�L{����jp-U�#«��A<R
:_�ݎ���>#&�(�z��NUt�6�#��<v��)8G�1�J������2��6�^	'fpi]�������4�q���A�PT����}�����-cP�����k�3�ꮌ�;o���k�}��_v��W�7��H�:��T��}�7�)�^njy�T |�k�{�W�#p>�t���.�N�I�R���S7��u�(by�JC=f��)=wovӘ���X(	��Э+�B�>UM98�P�<�7��;����Yu��FQ:�>)�����,���:8��i:O������gAyxO�EBoo;~�^ٽr )0_����9���0R��
aU�������񃭟�
ք�\AӸm�n�����[�4���}��!Pf��� �Q��:){}�6ݖ?h��;��ǟ��� �\�Zw��(ͅ:���W?�O�/��S�<z��*�N�������)h��i����s����ݻP�}!�B!R���X��S���~�_�73�=o�Q��GYi�]7~�7Ғ^�`�:o�vՕ<3�z�Rs)���7[�ԑ�Dի�N���K�Oá�^-�k��J�p1��^I�,�q	�]��%np*�GKC�N8�Sg[�uP�r�p"������[s���D5��'4������,[t�J�mH�eӾ��~��*2S��	^�W=���e��-Q]���֢��)��6��B��j�s�[}|2�Bɜ���"쾮������*T�T�OZ��l��ʅJ=3����\4v���l��X����������L����c�eS=ފ�H���<Ӫ�?�ݹF�NI�{}�L9Ɲ|u�#'߆��L�\���V`ʧP������wl�<y��s�?Q&��b��:Q����AY��{}����%�wM^նPul��N�w���2�u�X��A	�!�pw�����KA�>Z�6;�Ie*j�ĭP����I���1K�ʎl�Pܨ�O�7S¨��.t�⦵i6v���e43��ޫƵ����1����ߏ��#|d�l���1A��b7��
���qYz���f��Mo㉫2����l��}��p8z������Ij[����]�fp�hy������2|7�.�y��-�Yͻ�?/��C�Z��o����-�<x��Nf
���$�n��틊��D�XHH�e�xǕK�Of���r�c��L1�Q҆��]��T��c&U�5�n�O��TG����Wa��=�vͲ��ߗ���� �O�
D
��GLg-ǈ)é3+0!P��@�Ч7�}�t��؎ev��xRY�
����}��?��d���e{Ҧ}ߝP"�}Gm2#e�zȔ�Sq5��ʃ�l�Yu��}x�����f�L�;����ʱ R��Ͱ�e������>xg��Qك�����/y�yG��U݂Ҿgڸ��MC����T��kw)�oB�ّ���7Rϻc�R뻭�ҹ��ym�B�%:�ԉ��DgR�P�4���P���,�K`P�֛��y��@���B��Bn%OB=r��Gs��O�3U�ɲ�7.�ɖ��2�q}&��{�J�X	�_e��:�3D9 �0}Eh�z�4�����K}����ћ�.��>}.yű��,�3��#nC����^_h�bU�2�ՄZ��3�,Qq�}fc��㞵��`"SCC�7W��eW�>�>���|�2֍>�R-��o�4H�}�R�>i-��>��T��0[�nƼ��x����En��߭���4�\7 7J(�.�"�/���K\d^��aN���N�C�\���n��ğ�ub�Ͻ�R��ɿA�n�,�}v�Ԩ�	ME�Hϒ���ϱ�0 �,NBYk� ZWc�E��+�EW.��//���8���p?}^��.���ɉ��j�u۫���W�|�,|^yk�a�3�� ȅ�A����~��M��30+-|Ι��9��ۇ�]cTߞ��I�W�NE��\��2�<�/6�-���=�<|�a�u�,{Ձ;3��{��1L{�'�;�]�U�q��7I��/]�����Q�P`n�N��cP8l}7h�Gߌj�U+pg�Ku`���$(��n���'�j4�:Q�A� ���*���&���l��	�����d#�@s���m}8�́T��!���t�T�( ��m�����P9�y�+ƽ�eύ��Z���	U��D�p9H
3*79@�F��4���   ����޿���-Xu������_�O0�6Xn�j���W�T*�o�*�G��*e~�d�����G��РR�!u��q+h◐���]�_�o!}��W,�&\Հ���|ԸW��V�0��A�jh���t:�^e͙�ț��س=*(t��w:���a�+��Οf���*�U�7� ���k�
KA��>��U/·v�zqmBg�}�z񡓢�%�{�W�U���-|�eҿ�7�':EKJ(��p�~��'-W-m���ل�v���Zh���m4��at      �      x���[zɱ-�L�B��ʺ�o�t���ek7����[,�e(� HM=��ř�ɉ�"2+��| �g	�]���DF�Z�]ݟN�����?��?Ƈ~7�oo���O>����|��6�?�K���~��y?N�n�����;v��OwÇ���I�UuU�ov�����?����nǫ,/��|��\���Ǡ��ZwՖ��쪭�qW��ʪ�ʉ��q�_�<E�b�'h�ߟ�����o֝��*__�?X?]{��WE{U�W��0�e<\�_A�|U\�����x�����t�߅�>{+�<��?��߶�r뵴2D��&.�D���ո��xE���,�r�2al6�����^_ҫЍ��*[ˠ��g�KΎ�5�����a/��~ω��hf���WU�^����^��b�ӴW���B)��2VY<�Eu�zU'�3|�۠{���sU�"����UYc��5?�"�eE#�j�s8���������쿿���j2�ԢRy%SKfw#/�)�/Mԕ�d��iz=~M����Y�9�wu���Ņ�U�7Uq���\��^6�,_�$��_���a:m{��k��B}U�xU������>$�ѹ�����a��y��k�NcP�wߋ$YL�x��"Ï�o���]��d��K�R6e��x������"��#1�k��Y�	S��/ܕ��yOl*nNY��.ٞ�Yt�w��x��t�+y����)�*���͋K�\����d����\�ݩ����+�̂LD�yO>E��2V�%�aXe)��?u�Q���*�V����y��JK)���O����s�*Kىo�'������ϗ�X�))sDf����XN�2،�.:�2l�r��ZJَ?���_H}#�B�(k�#SY΢f���"o�[�z�]�K�������}#�Ovڲ�A)M�G��o��� ��y�]��~��ȿ{�[}5֙��L�5���2*y�].+���[��]��r��cxx���[ċ^��� *aow2<2}ݺ�)\���Bfs�r)��a���9(�(�fT�A��˧l�EMKTfûn�rL�嘅S�\�^K5��i�5A/���G���ڢ�)#�,/֕�.왕K1�M�X���0�F"�p��S�F��:�Ӱ��^�������y��Su~,:��Q�]�~�<��W�z���;Yr�p�ʥ�Sw:u��v�_�ZY�P���,?U�Ө��X�-A�s&GT�r�l�����w�q��98��g/��Ӯ(�r�+[�`��v �	O��_$V.e��� �;�{d2�eq7�_m�
�)y9rE:��peA���z,���Ec��j��eMˡ,�� �N�<ڒ1�r�5+��%}7����T9���xQ��ɧN���B�*� �t6�U�b�~�u�Qm�,e� ��[�ܚ
��d+�^Q���\�)�p�����H��x2�Ss��y,�
O��&����U��M��n����}b�e�e��8�2Z�b�g�(k�����<m�}�6�g[8�Z�V79ƣ�y���M9���01��v�Y�_����6����,^��������/�o��n�����Q�'�,�0��Wp���_p�� aA;��8t�\�C*kWy��{��������{��0K�o&WE9%Ŷ��FE6�p�����.�y#�*(�P���_`��t�ކ-��:�m���%�k�X{y��K�v?�z����1%ρ�Pҭ�`�/�`X�*����������_�V���9&x��jhgΨu��,Wᯭ���x?܎S��U�W������bQ]�Y�7�-�_3�塉��VEʆLu����:��=����2�������^Y�*Rvd(��s���ER���5���'.��l�}C�\�E�&�����Ǣ,l2��)aX`��v\��bm�bU��������� �/�/<%>KzpV�n�mZ�E>WE�U]��]��Y���ŌUG5T�,��Bfut��q�	&o*�7��?tä��W֙�\��,����t^a�Dڈ��D�w�c��1_�+�̂�3<�"pO�|y3���i\�9���H٘?�����tP�A��(D��Z����Ñ��F��������O���'*a�D��0s�B/Y�ͪLہ�ou��hs�z�$'��<�
�Ⱥƶ��]9^Z��%[ptX�	������Q� Y��j���#/ǉ�-v9�`�e�2e_��pw�}<�?�&��ЍE9�5� �,t�6��qP!��Z�)��'>��U�=tc�+����
>sٮ�V.��Q!:��ϟ�7����C�O���b�o�`0�R7`ˡ��-��|U���w�vV�;����T��)#��u΅�+��U���������9���a���R&m�fVe����kޭ�U����m�q��}�+��N6���*��� �p�m���e$��ö?l�;����#	�}�c�����EVo����*Ve�� ���w�׏�Y0H)��,�q2U�.F؍E�U���R�~s����,�ɉ`d�+d͍���U���ezY_U)���K�;� ȡ-��a@�1R<#��M��Pp�Q�*e��&��tTAg��[�V7��L0�dE�2��eۯR����Nn�:4�Um��[.m"a7-�5��n�Ι Ѭ�Kv֯�L���45����o8��1V*3�`076��j2R6����i�&�rh�^g����pɜj�5_�=al��U�꒍�äO]�~�iمzu��?"�%���ڵ�'E��*e_���'��o)�F��VS��|BBBF�J��L����pɶ��aR�QR��,{�V�!�OFR<���>�l,%aU]�7�K��m7K���w_�yteL'���fx&!��2Z���5�:i��#�⮭rh˜nH�^��֌�"�&o�h�:���/ٰ�>L�F��L�ƞt�Ld�Di*�n��Ş]d�J�����N��o�u*�S9�r�����&L�Ɖ;���V#0[�ꔝ[�����C[��/Q�5��ܕ��2��6R�3��S��]����[��aZ3j&K ܌��F�������H٩�w}w�+�;���2��o���^��m��֮/(�D���O��t�ʼ�H*�!�ibV����ɏ;���f,g/[՗l�__RA���������ɳ��ۯ|�|C�OyL#�d���}8Vu�%�M��e�hg�ġ;�ɡ9���ȋE�3޸U��^��b��aT���!�oMoOC�%c��S0$�Y\�VM�N=n�O�z�ީZ��e*�{���aN!��*�s��;�^5I�x��0mg=Ћ$����񳸢C����ܜVMҞ�N��|/���/�Ei��Χ*�5��
eXRv��fR���:�=�u�-p��U�" "�,�vդl��m��g�C����'!"��ʋ�c�Y��DMِŌy�>w���º� �	[q�Il���v�i��E�<�V��&WB��&�,{H��Ѩ4�9mђ��<>H^B�̪I2����x�c�o*͌/�Håbj*NM�9OC �@��&e��&���CZ��uHd��̳��J�a����J�]@�n7�ȡ���J��XӨ��?-�V�*Wm��z�o��w���R�|7q-_3������T�D�?��>�WmRq��=t�ɏ֍E$�`i�3:kej`}�=>�9lyv-�	έ�$gư9M}/�5ϗ��bMd�TL����3.�bGO��bզ켧~�6�
���HBОI���!����K��x�5��MًU������u�C���U�lo\�b���+ի6Ɂ܏��[�KU-�l����A6�O��y��V�������Zg���'ݚ���w� Bshf�
aHXY�U��L����ְ0o�3u��<[F��]�@!nM0f��Ml�O_�}F�Iȅ��t��߫)�aa�zmVmʶ,w�~�o���>a\"�<�w��[�y��B�A}@9.�2���|�$��t��{+kZ�w�j�_�d��Ɏ�/@/�
��s�x���蛚yJ5��:��od��;L˔��%��"��Z:�����i_툢� ��+Y�8.�"�B�6��]J��a��)B�Zg�a4��1��W�2O�n    4�w?����꣖������o�bV>a��Z]���$Ȭ�vB2�v�t��׵uf��X��gt���{%0��ݘ�
ˡ�*���7�Fo�������+
�VX�i�t3�a�D-��z�9��)�%�C����ݟ���%���E�aZ3)����k5aP��֒�V�O�/^��xS�/��6X��0\0
�'�"Ɔ�$�ݮ���;���x�E��`B���)� `�5�S^V򎪜J��:��0�͔`�"Č��]R��$�݇n�П6�
����"��-SsQ
�<�%�����e��n�]x�r҄�ϳ�+_5H;�+�q�q?�Ʌ��L��|+��h^�א��m�u��L[hx(HF��%0K݉�%�����U�ш,�A�vXB%3��U��;�va�A?��K'f~�Ql��,HU�zeXeI �����hY�U�lemc�p
L,b���Ģ���$�����"���4׹�3Lh�@�d0F��_e�������K{���x�k�Zs^nq��j1�6�_�Ǣ����v�����y{~�o� ��h
�K+u�a'o�N�b�Ӌ�u�"\�R�!�:�Т(4�WX�wp6�`�?�rZ��ד�u��~����֙�vmXaƿ������p��ڿʒ u���x<y�����y�E!0�o�:�����d�]��U�O[Ž��.I�-���TE�łb9f��t��y�G�'�C���Ӭs����ŵ���"$ݷ����6���j���!��A)y�l��h�_�[�:��\�G��ˢKN_*���⓰�A����]���f���҂�&�~�A�п�0ފ��Y���K�iE�*K���N�Ͻ���Um�H@a
������/:]Z���@�z�x����'����=��I!�2*�E�4Q��<	!�0u77�R�蛖�����"&��f6$�+î�$|����g�CG[C9|�u�z�Z�`���%a�>���8ݨ3Y���sT���04�#���e_�}p���}�"������"l�����>4� ��fV2�X�i��xw)�l��7�i4?��I�o�j���##���SƱ,������OM�,F-(���o�V���5/=��SC��]��*�Ja�]���������m�v=���"	�R��&�.d����2�������e"ͺ�I��~��EE���֖��3qd^�{�@lᅧ{��/���+8�#g��y�tǮ�$��|3ZZ�+�����3���;s�9R�]ٮ�߫,	9�|�3�[��2�
o$S8�#g�j.�@~%��*�B�HL���_K|�U2�5�	c� *4�H^�z#����.	D'_�_��	���E)z`δ��eW
z\"�r⤠L���l�-��ЍE���pΐ���	�Y��uxu){�v�<��ݮ�H�o�����=7��'P�F��0�S������Y��b�
0�U��4�R�K�#�{Y��S��j��rh����=2u�O�@�U���"]���>2S`v�}�U�-�*W��1:��:{3�fݬ���u���?ޏ�ǫ��������a���4����:����,;s�N�#=��=,���k)���)�+m��R�g��e��R9�$1�ퟫ	���Cq��,s4�$ݩ�R��*���(쁜����~��Lv��\j��%a������o�?�n,ҊΕ�:r�ѣ�0yr�3w���{�q��x�@/�O�P�1}��>�&�7��)������$l���c���'���C��GF�5�'���%U���$��乷��wM�7X4�:��ޔX�������Ǆ��$%H��۾�ϰC�BK�	�
�ҵ���fQ���+h&!�dtp}5���Z((�>�
��͓��n��hN��xV=(�&�`�R��D�  �)�k�>֫,	v5vF_x�rh�� �-�Υ�VDQ,�&�ָ�VY�n7=�;Nz+rhPQ\ãY����ǲ�@ٶn���{�$��O7��p���Y��ӯ��cҮ}�x��,횃C�U�v�y<�����Z{�U:�\}��>эK
%�͕�_��HM��Eh�o����1����tΔe��ĭ
-ѡp<�ļI��ѓ�ݜ?�=��"��`��+�˚�_�ы*[$��4z8,);�ۙS�-E�p�q�j�r\ �	#���&
<�=�-�ŕ�%��q��Y
�ox	�\�V��	�K��Ks�;�Eh�%�������f��L$��A�
]�@���)6&l�a�mz���h�D�(3IM S�u���ɋ%u�Mh\�.��c�*<?tr(�n�:<{5�n�ӳ�S��~�;5�t6.�#wP�,�q"hQ�4�d�e?��z/��R��+*'#�a����03�)]�]�w�6����X��_�}Cu�X`����/ا0͖��0�pi�镄���?<t��6�֝B�x滋4��2���	y;A�,	rw�(��[;�Ȭ;��(��r�,4ekrAy��u�	d!�"�TPdw�7�Z��x:�G�� �%/�K;�P��U���vω�E�0/��_C��f
k��T�UΏ�Px߆�{B�א�1dhE?�Ҷc��9IN�����~�d���k��g�q�Р�XD���L��n`��n����n�)�=���M���/H�ȘE�ӷ%؟8�9d\�)g�%��>v�q�e~��,dj��u���B�VkCR>��`���/	]��q{���E���[ߚ����h�n˔�X�
JB�}��+�ʡŽ��>?���<���%�/I�:y�w��w*��2MZ����('[F~� xah	�#e�w��ѢFS9����(5�^f#�U4^��c^���7Y�NT�eϫ9�,�Bb������i<[3r�y�)��8C�6��)��F�5c��K���4'�}��A������*�c���8<Exu#T�H���Q�^Œ"�$	��O�m�9=j�ދЍE2�fI�G.p�+��&o�m��sV B<�����O}�7V�]��H�o�2_�JR��$_���N��*���$��ǉ-ARx�Wj>d�,	\�M�as6��֙:��f]�[�"s@� � {�]��[���9KG��m��*���h���0����x��s���ʒv��í]��N�7F,��@eP����8�v��RA�@A���%�˱R-�qyڧzZ�.��r<�@�HG�f�ZOY�n'��d��oU-����0 Q�F]�j��"7�{؜ߍ���?q|����/�ZC��F�UXn��(>˸�p�l�Ix�[p��K�Zl0�ִ�p��u��:�x&Qʦ-��%љ+��E�� [��!������JZ�9��H�ERfiްpVWӛT)�}��`h�����]���6�ӧӧ�؜ ����z�j�Fy�#C%b�f�0���y�|P\�J�+\-{)��-��M��~$.�t�/�X����z=~���<�A���N�wz|���)�p	�K���E��|������EЊ�)xOI5�Q�Jg�X�E�}`��Q���2��O�L!d6F%e3���}o�T-v������:f�ly��S�]����k�p�do�;��*��͍�ţ�s;�^�[�$���q���<�����"�tu�����8c �����:�L���vu���ʡE\v)+�T|S��tb)�iF���Y���t�t ?��q����ЍEx�p�࡝�%#c?l�ȭ�E8��?4<j�G9k�&��U������"n
�F�˞�N^�$��i<����`���,�HZd�\I�v���q������L�FNl�_Yg�l�x�Oه5���w�����.�}�_���tםԦ�1tc�^�c�6ܖ+�eD��6�cr�t�8H��v�~/F�ɂ�C�C(��R�tӃ��(�Z���L�}8O^�)�q��/�h�e����UXs+�����~-�C;� ,,uVϤ[o��]�ia3���5�Qʎ�7����U9��q��*L5g.��Aa}����x��>��JX�����pf�yf� ˂ӛz�/�    �K�j'
��/���[�c�
�ȴf( ek�}��$�\�(d%'�펇a�M��{m�Y@�ȍ�>�l�_4�0�Y*�r������W�*������z�3���O)JZ�I�;�do�M�EߐjD����W�2Y"|�5M�4�����܏gog�3��Z&�����\����vIB�m���<�-�D9�����l� 3����1[^�\�rIȻJ'YF�V��'����[��x��[��#	q�z������S�|��+�����b����EǧK*X�� 7�r��^$���_:�� �.��,�h傂E����ƻ�0���7�:Tp!��5)�Le�J�cI֭<�4l�"����V��&�n�L�y�(�^�T�\�nߝt��U�@d��G��l�讘B�g�����|�o<����|��Dr--]%f]�v�l]I��]7��'�����K�J�F���᧝z�PN��}�v݇�>�9�����es��bUP��.(#�����v��}��v^XgH�Z�s�L�ƔV1Q������g�.��-����(^b�X�d�S�\!��20������T�q�\R]:P����|��E����?��ғ]Ji2f�;���4��Pw�-E� ̋�>n�p�P��#�]��$�\��i���"IiI��j��kVs�k��T����sߴϷ�q����kߏ$|#aծ�\N%K��Ö�'YPIh9p���֗���,d,��z��|1R�e�W9˛�R����pvł�<�f��&������)#*���%U�;>ԇ�7d�Y�B�[Y�N���E�Xְ�35֒ s�8��Pq�:��د.#E74ʤ��T�ݒ�đ �$�\7BM����D@�[�H�m�,���<��`r����7��Z��"�[�lň��ˈ�t�0{�0�����Q֙�z���UI���A�+���E�.�$��c�ߩ.��>Ne4���uZ� ��?���S6^��!M�wv|�PnC�C�����i�yǸ�Ч�r�]g���l�����WO�PK�`��~2!�y��Z/�Ip�����0�RP�i�Y�A�2-c��C�.,�!8�J�A������E��� ��.6dM��N�%l�%�WXЯ���;�nB��Z8?նם�=��"��b\G*����۝��i��#1�-��5�1s2\�̥b�H���Օ�JW.���B��k����\"��*���+�c��We��|I-��@�~�u�	UkL3����x^x Oŕ�K���۩�>�-�"tc�y���V~ے�"�k2���c��l����ɦ7$�DZ�L~�AZ{��|�%��>�7pl���5[?��[���ᰲ����gQ��K���S�A�����H"��!]p-��-.b)`vC�-:�2ݰ�7��̈�D�A�\2�Q��O�7�Ϯv�C<	�aD�c�:��Xd�wj!�,X����К�f���ݞ��C7m,���"��8�o��6�y"�vN��t,�Ǘ�T�q�)TxH⥍[k��v�	�AT6�rAT]iMf��;��~;��/w��3n��eV�ϘI�քEK�����"p\\��?���F>w�KA*`�Z���jM�a��
T�O1	wܟek�;��uf�xƝ�l�:�bj4Ћ�y�K'	w7u�����v5MS��O��cp�[@��M#�Ӱ��k���uf�e
f�fV4��%�t�r֜s	E�>�t�N�����b�jm� ��Z��p!b6%��;n����E�7��$�k��)�U���9A�ѕ�g�L�>/2�m�E2Ui��բ�3��y�a�fi�֜Tn�x�<Xzŵʡu:�{+��6p9bk`�H9eCN����S��ƣǜ�����섂)C�&C�9�?͒A�䙎9�����e���;z�%gL�1_��j�6ٲl],8�����}w�~*k/�����U�ظ�S���5�31�/½}â7-�o:�e��O��e!��Jy��(D�`��lק��v8OG#K�H�En����nhNofM���p��%a���i���/���;�0�����W'.:����&�����μ=�}�O4�H'���(�Ԡő�����uw2��F�{eg�˕Z�0����-/.�c�	�$\��� ��
E��eR�U��R��[f�!�,��ܰ��w����HB�9˙V_��9#OL4:z�ʪJ��m��8�+�C���e���\T�\õ�q5Hr�n�.�������t$�����/�]���)��PX0HX�P;A�1S=��s��ݩ���W��NO_d�V��\�4!G �*+<6�E�bJ��Ӱ��ӣͥ��~$a�6���$��BP �&:��q�<�@u�r��&��֙���]td�uLk_�I!&�PZ����W}�rh��#���T��fQ_1�~�]9�F��d�<ZI;���ъV��.#A�9��j"_�㒰t��Y������3>�0��J�W!���T(q%L�$@��bI?Yw���$1:��d��l%�9V��Ƌ�nd]Pc6��=�a��F����s*H�K��&���@��^?�Z$֨{N���Qr�"���.�:���t���F�i�	�i��9c��Rƒ$.	*w;�G���^h��iA�tD˖$/�ßL84mR�� ��,8���o�֒P�����!e�`�i\I.9IX��I�9O�}m�Y@�yf�E��w�j��$��q׋��o�֙G�.���'�ߋ���|Le�E�\X��8�wg��ZDD\���Yn�
��Z�ʓ�q�$�=Yן|/���st\D���b}0*��1�RZ�C�(�@ލ���l�֙��8V�aA��%k��3��([�����׃�Y?P�� =0�9��P#���q�l�7OC�uw7�D�H�I�r�0�1���#\��=FO�P�ΐ'��v�V֭QI�Zb�t���2lQ��=[��|c��*O��m��gM}�rh�����B���^�`�BME�����������(
M�yeZ��H'h���ʓq���kz����4�Ʀ��f
i�{=��3���Þ�V�В��iD��Y!3�(����ӕ.�$0F7}<��/֙�P��{�TNh��0cSI[��r��!��N�����9Q���`뚕�����w�}{���Uz�{���	�I�픨�ۂ�w���s���?����3gC7����.Uk](ޅ�ISy�D���"�l0R);��|7���$�d�TțcO�p�T�G)��x-�"�~|>��mD$�$� ��ZQ�M_,12�.�/��E��~�șx�{�+��A��:�^�<��1H�ګ<	���ܛu�W9���,`P��C��3�j�l',؝'������oT-k����(�X�Ȇ42��I;�?�<���:��*�v&�M�|�|i��ߩh:]��[��qqJ�񁨸G�`���1�4�J���EV��yt39���p�q������^h�zZµQl�"OY��E�V�2JI��͸�93�+ߏ$��"�lv.��MC�83"��B9nE��W��<�j���,�&<�b%r(Ԭϊs�V���-�^�Ep��P*�����g٣>k����8j� ���oZuӬ�$���|�`y�o)�Ʊ�Sn��3����%UðL�ʓ@s�n:ޟ�]��h/��!�tX���P���y���&/����]���ɠ�֙�退��k���0zP�;_�	؎<+���bv�'��=ɾ�=iуV%y`
�`.k��li� � �;e�>�Z�(�Q��X/�hW���`��!��������R���pw
����HB���$�J�c��x�u�Rk"�jI0������n4���}/���U��UɈY�*HS)���З%o�"�݂��?�	]��:b���+�����^���l�4
�������ї��E��"9H�.�W���%R�C��63�(�;�=|9H��y<����W�EN*?T�˺��9�<	���<�f��rh������=���Z�'�B��;����a���Z��0�$��I3R%8OI�&����Χ���G�^�~$�+�zWJ�ʤ���F�v�=0	���a8^�Z�    s��jn�ZG���-b⊡�'	�w{>�F�)����N��H&�J9'-��gf�e�#'��S��/���*�!DH����&�v��D�U��ێ@9�}CN���|���T\+ 1@UD�+y{�6����,0���Z�; ��E�[�v�JI�m};z��A��-��sѬi����Ȥu�I �����>ؠ�U{�E�����g��px��|>ሕ--	y'�ևS�_k/��G�q����e8.@/�8I^pҦl��n�nG�Qz�rh� �3L�V���*�5<	%��>(q�rh�O͉�"e�pQC���]�J��;�V��ʡE��I0%-I6�l�HB�	�ϓ�w�~;|g�Y@ƙcB�'-#	
�][��L��k��U�붧���E�O�&@W3�3D��̂�b�uN�j,�$���0mF���5���2�`�G��	R�hJ���U��������h�o|/��^d�z����}x>�8�â�k�;/B�ť��Z�++ư�:�~�d�UM*��g�܃e��v��M�����a��_�кF!��(��v�5������D�$/Dw�繟�ao�ߍE�©��	��#�V^GGu]��YyR���4�;!���Hr!-���h���)�����II�����K�C��`Q�ջҝ�v���fO�Tиf'���a<��Z��9�,�F=��P���_e��Rv���8y%~��, Սl:4b����U�D�-8��6��՟�v��
�YK��u������k@�E�79V\�I8����t��3�U��"٭�r�'c$t��9=qG�T�$�������ՀZ��H�-�XC[]�0_֞��o�CbD$A���-lkZ;� ?o�[� |���Z����Z=O��7ǝ���rhaت���5�lO��4~P2�u�:	V�ϷS�g�C��6uK)�6�KI��M�I�5��jh�_��2��>�[]5�+���lߕ,"��-�����޳'���, ����5w]�#�����2��`��B)��}7���~��,8R�k8�y����Ň,׵�iWy���|��~<�[�6���Hǉ2���	�/B��I�f����3��_�3��*��wJ���@
+y���� sb0�|&2D��xzשr����#�7�"g}~X�_$�o:��k���R���Ykݤ��"?n�3�i���f�?ZW��"���>�0@w���]���� s�/מ�K���������c�f������R����1�fܮ��C�o)�&���prhSi�DVf��N����;!���yH��:�L5@ji_%�-,��D��zV�gBl���p�d.�"�G��$�WpE�dj��c���\�c����v�W����G�"sD��t�M:Z3�z�� HB�uwwa0(���G{����N�I�ȃ�(�4n���U�����F�������gd7p;#%����I�*O��Qv�/O�vg����o1j��e�@pפ�̓o�gs��"}Н�\q�9���û*Tʖ�x�d���"�۲�)1/b�Ɩ��T&�Usƅ��a�c�얼ey�5������ڋ�\}�prX��켰��'���j�����=��%�E�ZY�R�(�����]1v��/��-ޕF���W~�]t�
t�i7�SL <�2�"3�T��,	j�=�,zG�7�z��3�.�590q`���i_I(7�7����>q�,��SС�������LƑv�'��>�ۛ�ȴS9���!��2j3�Y�,+�~�\/̇�ʓ�mbO�w�Q��Xgr����[:YL�P�$d�$V�v�t��j/���b�>V���5�(���=o���zÎoXX(Ǐ��aI�,�����؂�"ۿH	ڎ�����t�5vS��y��E�.��XLUo�m�M���ጭ3H�d��ڳ��9�xpy���}v�k��lG����ќ+ڙ���R�u.3��>d��;���=}/K�=-���3�=�TV� ��)3%�	�'\WsͳK��}����E��Z���D���F�����@[K3	�=F���rh�jIXJ7Q+������~(=!�$$�����l���#WtA;��RT���$�n��`�t����_Ywr��� ��j�Q8���<`��r�����l��:��럮SuكB��XBi����-�v�p.�oD��"C���m}�1���N�wxEc�3�����0����)i>��ޗ��$��z��J��e_�2 �_GP:�*�a�$X��t��;K��Zx�s�?
z��bШ�Ǚ�dcf��I[���￦�\�f��!)�X�5-�"	�v��J��A;��\S�5��������*�Me�����p3��f��Z䚶��~�jCA�py/�����(�"	��a��?R�RL���]�~[�l�p,�T7_��D��x�m��7 �9�Jj���֛��H#������nP����vg	�F�I���� �AV.��k%�]%	�&�����m;}��R��j�&�|6���GZ��4IB�u��K��rh�A�uGk%������E��� �F'jq9�ͪX�#��~a�����t(-���	K1��d{IB�}��w�hף�[g���/G��h�R >�E��6#�^�%�>>#�Z��"�U�{j�V��P��y��@�a+��m��;�$j��B�k��6�W��j�Ѣ\���J�";M��8n�qc��ʡE�+�m��k�Mº��L��BMRv��n�;;�^Zg���+5�OI���W(�S�3�4Id���q�Y���֙���\	>��Օ�5�=�8���I��8�}��+���_���@��A6	]��
=̼ �H��m���mw��:g֋$d��ւ����5#�Y��:�A�$�ۍ쌣a�)���Ơ\zN�(,7µQ�@��:p���v��*����XA�_��)�N���PE�VER5����%�~����愥�����G�#�<��J�M����}��rh�����BV�1�@���ih�'�ں=�-�jz�rh�C�`m؊T���`i?J�i+�o��ç�f^�Zd²��R��iB�@�!�_1m���}����8�)���d'�E���k��l8�%�WI�2��)`h�j/�9ӄ��H��hהK��ĸJ¬�~� �ǎ�3y�9�O�
b�c.�,�k^����~�����5�z�c�`�tUgV��T�Y�Dj|�!Q5	y�UE��U�WOT�������U}QF��f�jI��y<�㧧㉯������-k�+��ix�]�(�D��o��6��*��B�U(Us��*v���ph3U$͑|>|qd�C��� ;��ptVVO��Y3�9zE�����u����Z�<k�,�������>z�ᒽ{�gD�q�� �qj�`��4�ya-+ڴ�8�a�H"�<<�ʡ͕��qn���5��O_Q�ft*�m�G�
;����I� �/�1�}��ƈa0��O»���0Xa��*�I�-/[�S~�R���Q��UYI������7�z��, �:c&�V-������J�j��s%ߺ����/ �gN<�R�2d��@�1��0:!1M/¹-�Z��{���.f�JԺ|4�	�(���k�h��������κ��N�7H����
"V1�e�(� )F�r��ߩ�Um�Y���PE�$���V(�(����m�?h�3}W���	?��6*0�k����n����þat"z������A8�p�p�u�K�Z��x��-�rM�7�r(�6�
�����"'1�K�<��x.E� ����~4��W_�D�c�M+��m����*�w�C��s�f�"'N�ck"zI�n�HB��%����, �\s��Bw��V0���-ƦLwU9��n��Z�A5�I��"��3�����:�Z�����(Cd�Ϥ�rw���<ZB����΁�t�ݶ��Z3�G�J����ʁ��q�������{������Dtض�i�B�J��q0p�I�m�o���ܳ�C�+���	;�\hӵ�x�F��K�}�Q/!�'2�[n.u��e�'��Rs�p�XN´��    ���Z��"��nX�P~r��S�p�4s����l���~��)�֋����z��J�
��4+<`�:�+���7N_�����+����B'�I�7,3��Þ5v�nR������ޞCl}��x=��嚡�`����&C�mן:�ڽ��dŋ��L`�q%;q(`�f�Q뮊$d��C���{���x�y�#�`EgR5p���d�&�u}�-���όs��+������.i-�7�W��	���W�����{���!��~��,�v/Ê"AE$G ����L�إa�'ࠏ��_)�������4�N����k��$�`���{���~e�i|崘ݕ�c�(N��m��`��_(���b�ˈ\�%A����t�$@��)�Ϟ��>Y'k,CFݑ߈h�	�n�(e��g>�$��A���7��}����k@n�8��T�`��{���������a`���cI Ŋb�!�A�e��!b�e�I¿=<�wƭ�3E��d��Bl��'q�؉�!b�~o�8}�s�Q�#�~���<�A��b�+B��"
'3�
9�N�T�'� ���6oT-�r�`�V�� ��A� �� [��08c����#d*�Ay҅b5M�*70�Ƶ�pp���������sg�%ڙ@?�F�8�b�Ro3�;yY�ֿ߱�՘�WA�ղ����@5Jt�F�-/WاWEF���m�/*�6�	�~�[)vd��}Ҋ�<�k� ����_��W�X7S����ˮ�9%���$ϰ�ٝN����~��s��D��z� _���-�XE��a�Thδ��?�{�m2�^�WK}�_Ba`j���uRCG��Dp28	�gz}ky�/�:�_Qâ�_�F93��Ʊ$�q,��fl�t�N�,1��ʡh��0����\�-{���F�P����V|�)�Oʰ�&o�0`!kc����rE�)��l�I ��8���J���, _���#�$,Z,�p�
�(���q?�6�F���:� ̒&j�9���4����e�KR:���io��3�-��Q��٬^�%Ua��M��>�;���")7l:sM�ǝ�;Z���V����]�0�g��yG�7 15z1��� e��!���(�BieKO����g5�3@0a�koc��)ŗ���"��Mٯ��a��3�.1Q��r�%-�BAzM�,\���H�O��P����K�z�!hebSHܓ4j���L�A��c�^[wr��Z؆|�X�oT��5� ~j�=���־I9+�k>A��d��2��z�z�[��I��v=��Kv|@A��Ί�E���Հur�f�馀�z���ˤ�;�F�?�_%#�1t���W&� ��4l�S�Y����8����Wd��q"�ix'��L�s�'���ł���V�p"�z�u��1��'�[-�?f����	s��ʠ��d:�;��☭��9�1�T�"�g��kFͲD�2��>U�XJB�r�����o
��c�M�i�5���L�xX�I%�nη�����d�@.����R�$Os'�,8
�;�D��-@����#�6��P���E���Hr���X-�Xy�k/z%����ѭy�^Yg�aby9ƒY���,���RN��U%���ݡ��B��^$�*Z6�c�2����`�$KB�uI���m��ig g�>��S��tr^�0+ ��<���6��IE��`c��J�x�ob~fЖ�)���<����e��D��;���ڎ��W�>B�X,=�dJ\�X����!��L��z�n��w��B�����6�ږi��:���sΊT�c)���x�<�Dz��B��� b�v��z��5Ek�WY+i2)��m��^������~�K`�r�h�X:�b#�nI�)ҖVeL0�:���U����e��6ͥ-5Ri��F��y�ءe�$�	����j�/��_BW3&r����%��+&B2P5�؍��agWq��)2K��R"e�>�U�O�y�0D9���jY��o�u66Lfh���g�l􎙉")G���x�y�u3���"	�<%��}�qH1�$~K��RN����p<����H*�FJ���EFl����L��$H��y�<_Z��M��+dtr39>�%ь]3�C=� �cw�5�Ѻ� D���u��C~�<N�]��$��������B����vz��Y��)uk�J���S'[ɯT-�wZ(\���\����(a>`TB\�IHB$m��V9� �)�n�%�CĪ]�7pyh�HG��4���ER��q�7�J~�9�Ա�j�� �v7�a��v/�Z �2�ό�0��e;i��Kʖ{;��lX^[g �C�p�g��eD��r2W\.z����fk��uf0�Vo�%�p���d�˪LBޜ�}7y��rh��K3�=ĽQ�nd�.�~%��+�#܎� �E���G�v��xa�ʖ	��fi��� �����R�(B�����C��Xhr��<5𨩌+�tI�wݝ~���HH��2���>XR��f?Y_�@HBޏ����d�[~�H*r�r��~tŐgF
��q��y%=	[x�F��ʡ-�ԥR����5� C�X�6T���՞�<���!�ߩZ@�4��_͡l��Wۢ�b�{P&&_V�~��m}!�W�I�^,�R�f�t�*�Y#�EfP,�x:��ݚ�o �33a�1L�(�����A���ɞ�3�UlB�d�Z�"�ɶ��;�^�i��i�5v�R��K���pB`� s�Z[k%'�KJ��Gۜyi�Y ԯ&<�@sZ��y�y�Ik�G�'d�m9���@�J�e�eW�U>o1�����x�?��d����O� t�c(%'��ikZ�O�#[�M�����K�I��4{�SZ�-/ZCO
`�`ʤ`� ����꼽�� ��\9Oh�=e����%�t/�&		(�V�r��$eڋ$��,n@�1��ֽ8�w-�!����p���7��0��4ԪrdЯ,�%���$@�]w3��7���(��eU�F$ST/��g�n�F,Vn(�6bd�*ڝ@�*BC5'�侏|���{�IH%+�"H���U��f�P5+�A�_��π�e<��L=�I5�vg������Xg�By�	�Jd!�=_�4h�8�Y���N�he�B���EdK��m9ǚ��`}E��2	�=o:Q�"o�C�af)�J��֌E�^�5Ѯb6]�\\�Y�E@���@ܡ:���^���F���|�T"�2	.x?�a<uG[M?�/b�H�#H����\�P�̡��u��yWixA<���#�Џ$�$�h$kh�Q�;B�)�ӉFI	�t>f�Q-��.Hwn��tǉ�~ŌK�ނ�28(�xH��\�z��r�v�}@���T4vwbM{W�ug�G崲��LB�.+vc��4�@�I��������GR���|l����b�+��pܭ�Fl�p�������H�^�^$I�v`����� 9���Ɯ�i�*��;��}XQ?j/�@Fje�֒g��m�\0��F0/����bG�
�b�Y(<���tqb�� !k���۟�Q)���u���/vC9��Gf�Bn�Ii3xd�I��RN�$��q?~�C�;�)X�T������Ӛ�r2��0��͸�����I�F�i���nm�Ub�5����!�_��d�W�)cхbNC[�(�X���V�K��LOF�}�a���B[T�1����B�3�*�q��[U9�� ���n����o}/�����)Ws�%I��u�'I��RI$���a��9cC7�T�FA�j�W�/��{Lnp�<�bm�����Gp�9���ڛ�d���[��JԔ*���<������G��h�VV�{�7��Ǥ@S��3'!YG�)*��n,��$j��5/W�F�s�2�~ouR=�ջq:Y��[ߋ���â$����tX�ոŁJ�!.�$(�i���S���, �IGZ�l�m�c��.�L�������z�ݞ�#T��C[TZ؏�ό�i��>�$ja�IX�m�}�濨Z`7�
q#W���E    �E%��Ys��_8�7^�7*����!S�t��֌�b�f!�lY��1�XQ)�q���ľQ9�@p2T����=���ՒPV�E��o���x�4��᷾I�qV��ך/֑�TW�+ő�s'���8��w*?�{$��`���#g �B�7�<K��������4$�ʡt���\�_�Y�%3���&<���4KbG��~��C�`Id�U]ω�f�L�EX��dPx�IP��4ތ���;ߋ$ JY��$�Z�`0J&8GB�hj#����4�������3��3 �걮>ӌy.$�{��Y�H�Iٖ?L�q��G������8�JL@j���E���څ8P� ~�xw�w-�}
	^�K�os5\�<��A^p�'!����{_͌J<�I��"��/�`c�^}�9^f��\TI`?��O?T5~G�a�W��Bz]e�xL`��a���L4Kbޠf�M�a-�,����vne�r�W�UtA#t��/��V=�}�e�_��А�.�^��嬶	��s����$�45�Yl_5z+7�XùK%ڧ[�b24q��x���2v�����������f���yM]q��+��C����oO�������%3!`y�"B��p_�I8��s�5�$�,ȏA pi�k�.���)�����C�5��5E� ���R�o�r���XG^h0*���"X`|�볟��p7�y�볟���x�W��rZ�]�9Q���P΢����'a��������`���"�mBWQ�yA�p�f4��]��Ku��KuX�׾����&�;��F��9Y��Pn�V�^�so��'�C[����^���:�UwMe�����E�������3:�_}/���oO�����Uγj3#�sd�n��Ӱ�w�S?u��������7�.�:P��\�yb�V�
*v	,�*�w�0�m�o��b�}�[*�kz�`?��	��^��s���2����Y�:֋������OT,	��<I�ջ\��U�L<��y���o���~�l�R�	�x������n��}$ rh{o��O�l!0ϟ����+eR���nz�:�=�V9�E����*�!��U)��8&�VIH��}�(����nk�����/�M�|$����f\N*�9i���Y%�Uף�4���h:S�ߵ�'�E
ȯ^39b-s�]^�
~�r�4��ʴ��~���7��?�nV�
є�Ɲr �6i�7�+�\�M���o����촊�U�4���^��s�$6|�w�>MaGn��9�ќ?͹�y%z|��T�~
��k�C�~{��7�܀33���R���}�K-40���0�,�ϲc�5�� �p(�5ka�F����'��z_J�=$�Zl81z� ���Op��J���{����
_�S9�K����.�Y#pC�D�U�zǈ|�n�D�~w3Z����)2R����v��L(�d����=F�?�'����:� �~AD���S��w�Ƨ�Vߋ|��m4yM�7 ��9�[p�۴E��hU㸗[T�������۝'�ϵuf�}����U,,]�N�D�@��p���?���p<�ި���g?�_~�8Kk�X4NBҾ�զY���m�$�����]� ��$�a�4��a�2/Y�ٖ5쪴��is?�.�ʡ���r���ș3�0�j-� �cRp;l����Ʊ3`p�UV�1+�h�6� ��M�����
x��rh��)�mp&g����/���T�]�ȓ��i6
}/�@�{Wn�qK�o57�XU儐� 	x8O�v�k�;����f%;�X��[xCI˩KZy��6O(�`~ŧ#S���λ��^�5R��C�?vwv4�Z��+Rh�EUS%ͯ�)2��T<�����a7=��3��+�z�jtZ����;�MR�Q����ʡ-�v�5�Փ���t<P!�	�t�õuf@�F�x�R��H����i�GE]�?��0�C��(J%�6�l(�&9�5Pf8
����˵uf�{f��7��ZY\I�b��3���U�ow��;�H���|�#
ie��k����N�dE� �����mS�E;�P�7���p3�W�";��%[}��0܎���7v�.�4	K�D��Ӻet��~������j����H�y�V���5�,G�?�!��ѲLB�����������ug�t�ӯ��*����X��/e����N�m��g#q}�rh��w�ѧZ�XÊ��T�������~����it����"�d�4�I#N�Ԫ�u�d��Y0ɉ�����ƻ�~?�[���X8��G27J�Y溢�'�B�p��Jb>����ݽT9���#)��܀���0V0������d���p�o}A�7֙���7�B���-���)D뭪$H�q��<�D� ��s7\��pANVS0R�Z��"��m�W!0;(ARH\�1 =D�$O�4lo�|�rhK�;"��]���U]�O��*	���頑��?�^$|��(��J��R����ʩ?Y.�;�ƍ���o �/����`V%�*Z�:tT���ݐ@}z��ξ��Gr�^�D/�eYqk����,Y"�����a'�C'�{�C��0�/9v���N<�'�|�X�I��t�x�rhK�[jQXco˴Q� �_L\��D>4�P�Tz�� �[�������&ΙA}Au�%�<=��Yߓʡ�_�p�@��g&��.&��XVIx�C�=����q|�E��1�L_!EK	C��-���Y��ЍE0 ��~��@ސ)�h>:�$ ��~�$|�>K�brl,��FE�\��2��1q9��8\�ɸ%D���3���=ZV3�,`x�sMb��H���no�>$��Y �)Rk��mTf,	.2�W#V�<ʃӵuf E��2%���l*��Ƒp9J��m��c��3����D�#��&_���B��[J�p�8z�]��:� &�V�q��y��y�����5l�$��|3mg�~�X-@����Vh�CYV�f�dC܂_�^In���u�{�r ^��)�,̷��(39	��O'����,��TX�������7�x0�q�I9٪������9Ls��������z�Ϭ9� V`\p�U�XkҀTI�C�fw6>N�{��"R�a����u��H��E��o���i�Z�w*�� `�FRTJ>������d�O�2�p��f�H3�3�3x���Ff.�.�����AX}�u�� ��_t�J~�ĔP�A�LI�Û�9o���}�����^�<�U��Z��� ��OJnL��Ӻ�ZL��9��Oa���zO�W�f{�K��ו��}�͵`��,�&m<�2Qe"��l�M7m���ة�/T����$(�;������8�t��O�JϜv0O.f7ҳ��DRM�n;xCG�ЖL�v�����H�O�Ԣ�����3	�0���R���3e�<���H�a���Z֬f9UPZ5�i���1�9tc�,��\�ᬂ/#��|��-�ÊA��]
�λμ���3�� �����ˁi^0��Q*��%m.99�Ƨ�~�m�������ط_���5�W]5#@�;�efD�$6�N��p���<eNw����hf����Ϯ����?���ˣPŕ�jҝ�t�P¼K">����￪����*�����	���+"2�ʖ��z�"�,����˿�o�7����k���t��a\���¤��.Bh���)2���W|m��C����u�'��*�,�QYE%�u����4ܜ<�uf�/��c��HU,��W40M�*>~�onl�|�rh�XmLƕ]:*���Ԫ�pJ�?}��W*�/ziu�qw2��'���tD���$��q3uww��rh���ˈh�pÒN�����P^�L12(I�M���4�#rh�J��|�>�y}�Hr)BJ|AQ$�yj����{�kg��R����(m��ϞA�k�i���|�v���� �T.9I��5>�ŲBU�L��+�>{y�����ij!ш,B�(Q�����+���{�f�    ��MÝm/�B7�3C�J�V3�ʐӰE:��͒���IH��0�Ƴ���[g�6�(,�V�x�%��:2T�C)[�\d����X֍E��8"��_�Ӂ���,C26IR�p>�l� j��/(�$3������<w���<:A��eNB^R��p����,�i�<"���J��-�X,o"6:�q��<M盛�0��3��c)�*y�lt�x�*x�`r$�/��f���֙P��Hpsſ����Z�Go�T��̨߫�?��ْ �g�e��̗eY�	m�����L�� �_�V�����+���?J3c+2��P�'�'ҒE���(c�����@-�l`yltn�#/8k�t4��c���.�U~s��ԧc���QZ�K���av(.V��I	�fE�R����Ǩ�Zg������G68�a��q�q�5I8����X�W^�W�:9���e6��哼L�+�DI�IO���ʡ�Epxm+g�O���� /T���y�8��I�ޱ%N�Ԫ���gfH�jȲҬ�$`�N��e�C7A��6�������U�)_x��k��ĉNI6���թQ9�%+�2�B�V�S��|o�j	�:y��yRT�C�&���W�U&v�)��-��L��~�l�=m�H�)�J-�i�O��Y!�����(����&9ods4܍uf;r"�lm�$�4L�ژ�h���ŉ�Z�P{M�7��!���h�n�dʸ"�P]�I�:Jg�8���EHvt����2�U�/7.�b��j3�Ffs��{��,r�O������������)�m�M�~�ڜ���Gz�Tr�3�}�7�J�y��Re1W'�\���)�ym�Y �΢�S�	O��[��U�TO��}:��*�Y���s�)�JaMs� Q�'v�� �qp�*'�_�,%?P�M�hݕ�8k3p�O8�9�ؤl����C�ϡ�e�y35='LJ��<83�M��(���(��G��b�ЍE�怸�	����i	���'�hn5�-�aR���l vd��rh��c(�L�n��-3
���u�T&���C���{�T��|���@��j@ђ)	�h��#�t��$�֝�����
Y��Vt|c�q�y�!_O�f�1��M����������}oM[T�������/9ӓ���v���,q���EHs�5	l	�f���� ���:	��q{t'�E߀/�uP=�p;X�sj89e�K�B�u[9�Ng�7��`��6�fz]kO���b-��[3Z['�"?�j�[��Gߋ$p�4,��� s!��AG!|ܲʓ��Tw���������G��끬�������|����|����ؐ�l69��&hk�D��js�Xu�����aۙ�3$���>�#S(G���yk�ě/��3Y>I�HD���"	L6� \�Yd�o(�B�;2k�A��<=��8�d���M��!��r�f����,,���I ɾ�����{�2f<c����׎��i� ̽�E�$bl}�h'����)�6P���4��� r\ӛ^'!&���c�4�?P�irR�[J4�[�P6�z�d]�W�������+��:� B�V��VsR�\���gbLd�UoD���W�n�3�Q9�`�A(�/x�f2k�����޽NBLn�ݡ��z*��4�smD"��^��xMi����w��~{6x٫ЍE��`�??c�ւ�70)"4�E1!�l֙ŒP;����B� )MÐ���K}k5ɈT��IH�S���Umłܚ%���(|}HV �V��Ӛ�r4&a&�?�ɮ?��Jk82 CD��t�ʄ�� D�H��o6����Um�Y�`��L6����.��9���i�Ⱦ�N��6ʡ;������ʘ꣊?(�gu��_����6�8ލ{#�z�{����i9���C�wÝ�J)�U���D��]o�D�C����D-;j0M���{)�Q�&I%c69�,Z��:� :�����,%	���I ��^��(�a���k��hiHTK/�����,�����Ip\rA�cZf.��Ϲ
_~�r�@��2�Hź �S���cfr7���HQ-�r���|����%��+K$m�A&��"��n��Y��WXZ�����b�zAE�Ϝ��$���t���B�5�E�s��R�+�Fk��ǂ���E9��p�cp迡�Ja����X1���k�T''E���z�P�M��B�TZ-�f	R` �l=�����$����<��;��Xs*�XJg�?9�p���<D�q��aI�M"'����ʡ���
3s#ST�R�|������2M���7����K��|����u`4mAъ�גF�,�$�$�����ʡ��&�Թ}����B
�"��YZ�h�b�L�G�)V��:� V��s�b�E������>�O��Ym^�E��W!�'|�E�*����,�1�4��.99�P���mw���ʡя�$�4���}�(��!��֐B�r�����g�ܵ^$U�ь�JY ��9FY�9�f�I�J0w�FO�F9�U�����i��ZQ�1)���t�$��������/��}���i,5I1jM��rG_��fّ�����O$y�>+�90:E2*b#n���x[&"����������ݞ�n�Y ���o����5#P,!���V����$!�o�>X?�^$UV��4��	�:�«�B�w�$��{�}��ufd?rHUk�ɨI��[U� �9S��$,��q����~�H���f�ȌW���(4�rǔ�w̤ꉛ�F��^�+��BE����έglN������˾��]<���=x}��^$U,�G�"O���N$���qk���i�������uf�bi�_��R'��a
E�=Bn�i��I�y���a����%s��������8�����E�q��$Ci��fqi�LtO�ڟ�{����/�j����U�;�-M�T$b����VA�t�ˁ�����o�	��� P^)0��M���w_�K ��{��OG;��ߓ�������z�䜸�ך<%�:	�8���a�F�uf�M��k����~&���-����8�,�����^b���Β,�ǖ�#j����M(��P� �z�y�}��s"2+,���7"32�i�'322�9	�H=(A&�f��J��k�0�[er�i�6�&aX����!7�db)�.�Q�����/����e��=H��e���!�l9^Z<y������>gg��t�2��D��`KɌk1"&��J���8��/4m6*��b���	~J�@����3&l�r9�y5�P<׸5>��'�X-j̆I�'Χ�Ʈk�	g|�E�}z��i>�zbﵰ��O��NXVR�Y)��������vv{��n��c����W%��|DD�Ph�/�	�4�b�Z����ޚٮ��EV�>����� ��QH�j���KQ� �V ��}y@q�n��ph���FTGn~0#�z΍��7Q�Զ%�*%���K�)�������n��j���n�O�>����Vp��T�ᩲj8��sf�feY��`�.5���� �Z���c��#٥��*��i8��x�7��v��rao�vm��V��x�RJj*JYH�8kf� ���9k������YK�J!H�̬�2�uS��`�o-�@�'�b���w5�뛠R����\5%��F�Ñ��&��J����CzI�kg4@���],K�/����JFL�95��}���t�.#۵`O��m���T�*6�V!�%D2������}���0�v-��o�<r ��܅J� � 2��b{�C�g����X�j�^l��`�����{9-�W��%z8��uCI�n�y�Є��2��)�v��>�1e�=�C��v�P�e����t���CB䌸�����D3�
B�O��<כ�gy�3 9�I8��_R�ek�Q{`��!�ǭ[��a�����<�(�a�;���v'S��b�?�A�B�!ش��=����o�TL5-k}r��|��A�Y� D�G��e�Ǳ?�9c"��4����Y����"�2<�9rh6���    ��;��u}�bq�h"^u*Q��s��L���ij��c�lLX0���ܺ�o�J�of'����Q��eb�P�)�~<�O���ҴX�Rg��6��X�U���_�+F]�^�q�_�/fa�w�mk�W����tl4���|�G�l!Q�TJ�%�)�� ��wA6�a�����6����p~������pI��o��U����g�h�Eb����7 �g�9����:�����O�1�o�y�ڻ$o��6w���?��V������@��ކ���*x�!DԾC��[� ���fYo�S
l<���4�L�g=����}ׂq+#�"#�4'�S%{|_a�E��+g��C�Z�szK�6�֪X�a˒��B����{�%���WN��~�7��D�6`�bZ���fbF̳�bb?<�cDv��|�+'��f��o��DL۵��B������4%1��	�i��nj<x�i<X�Co=��Z�Za�c|�dlQ��A��`,ͭ���xmHyLlw\����9��ɘkAIU�~Df,�*1!�K�f�,�U������@������m@*%Ī9�Pp��N�%�ݯ�,�m��?t˅��B�AGn>���X�d���2�,"�b�R��<q�g�ye����ܾ��=�^��U�쯚�@����̒�;&�lb�����������b�W��U�lR�)�Ұ�[��S'�����?ޙ'L�o�3����ʰ��B�d3��E�d�S��<'�v��7��~���ڍL�?���[jf��p!���	,�J��,(�5&&1��rN/�����p�����=�?��18)9�M谹.�f�	�MBE3��m5X��h���<T5�95k��0��Gg��>qG_9�6C�m�~���u}��#,$wԞ@���l*}�',�Ap=�B<�_[�	�b�T\��@[��X�7g���"UV����qx<~�H�V;��-s�K��PB�s���r�(@��ƅWο���_`�ok�A es��C���Kj��W�!����1�FV�b�LZ%�т�9�WY�]�=�y�	�5�������5K��߈�Z�e��]�Ž�ԻشnA�
�����m�;*�ov]�GV�dN)�i�+�D�`䅿�����n5ڄi�����a�ɥ�;�)o/J"�U���eh��F�w���g���y)��:c����,�����yo�i�&����[��,0`�f�J��Z�GK"�
&��A����?a�u_/=�VVX>��a��&�i3��+'��v����N]�7Ax��&Xĝ9�N(%�Tt����pr��l�?p���Y �"E��E=6&����`m2�d8��!=ǝl�>Ѵ���L������:�V�K�$񥯜�̗6��p��g�F�XE�R���(ǋT)���O�_����v��K�6�b:7gP[�l�N���Y�X�S!���=Dq�mׂ�*�m�_��
��r�mV� d�?�=o����L�v-�2�������þ΁�1	B���[A 6�Yo�6G���G];���n�Dlt��R0��ֱ�H�E8�0�q��Yg�-��#�kA򔰒[to��3V|M���U(���b�tC�}�l���7X��G,��C�Q���(�2��@�>6	����~��h��M9S^)a�JL8e�Ҵ<�6/Zl�u�������(j~ҧ[i12�.RH�zTo����,A`���X���Mۀ:��qI-82w���T������y^�����\�n�ןt��=�'�rx�u9�$B�_!����i??tR�B�6eT��D�W(EP��F��0_��I��,[	�~��h��
镊j���E��=�`@-i� H���y��ڞg��=S=y�V�2qZ�	WC3)A��`�̇�μ͗vh4.�ݎ�� �7�����0(����6*�LBY�з������f	��{�ݜ�w��S��2�#p�%�"����d2�%	9�VA�f��4Ë��+�N��KA�'$.J�H���/YC����*6�� {�c/��8X�*<��%�SnI<7��2����?�������';:}���^��$����%�4�3�lV� �ج��8:�=u���/I����#�,5�L-�9��?Y��f����y��7�qTt̔����9�R8�_;�z�i|�fK��ˬ�)HH�a�ęa�5]��a����o�3`�+�CZtYN�d���m�&�v�
�����fs\���b���E��1!kj�7�ө���UA���8�d�'.8��C,��L���y�<=������5`�wwzV�Mۀ箢�K2Fv]Ɓv���^9���33��~!lז�F9B�H��*�������U|̏��?�����F6k�%�k�h�L>����̗T�ϥ�
q����������������]lזR�^x,ϫ�N��1�hM|��}���n�U��#a̖�M�/Mٿ)E���T�b���Lu����b+��s+���p+���
z��	<�bfm��BT_IR��x֭e�}4�u;q��xx2\�"�K� ;���ͱK�ɒ�Ap�IeW�[j=�;�]�?I���xڟ�r��m	S��Z���� ��7J��H��\d�= A��/ƏW��}�ؘ��������g������ �	��TE$Ku)5�Y>	�j!54�S0셏��]ܽt�?e|v"U½Q�E�����<RƤ*�9H������lϳ����:^ ���T��<�~�h��0ϵ?B߫�y���?�H �|�i0$��.m����oHؽ��b�e֋ �֌�f8z��Nlז����\�(s��ȃ8e��}��]v�c�l%[��Y Jd}K$Q�R��� ��0����<�5�8o&����3/G�e^(�jʶUl s���LL��*�5s�6���Z�R���c,���v���}vns��V��f8����@�vF��qX�����hn��1��YJ2����3�Eٞ�ڮo��Q«T٪u�B�9�	�>k�ZA!�K����M�Kb���(L���H�-sF>��V�mܡ�YxƁ��Lh*��Flׂ�1�/����4)�C��L0AU�3Wa0����${���yh	)��?�������_�P'��c��=��P�]lׂ�Y�,�"��B©��Q"]�j:�z�ݵ̓��3e*�C���$Q�GpE,�Ƌ�F�|g�f�������<�L�S��/Oe_�q
�r�eq7�fڗO��q��{ٮ�]lׂ�����k�Þ�E��`"�.�_q?.�B�����z�vFt�ϵ3"Q����kS!�B)�9B5*M���ڒ�,��.��<ZFa���e<�p"]�7�?[���<�$x+�<�6�'o�R�ήƑ'�/�Cc�����Kg4@�ȝ�L�t�h@�Ӱ�A�N�X��И�L� \�7K���+�k��"��1�.m&����A��n����<q͝����P0�%'�&��'ǃ�Dr�WA ����[��~q��"���������C��e&u;d����4�Ԯd�H�^$�-/�-~�~�n�ϩ��a��Dy��D�ds�T�����>6�Mg�㉣��n"��N�"ɉ�������a
n��q���'^�b��O�֒^)L"���׶R�\|q��Ws���е�7r��V;�Q�&�)B���R����_%��a:n3��μ�wZ��Q;�N2_�9�z�j�d�Na��
� ���>s�0��ŏ��nbE�)�
������L�I,c�v-A���]˳�3�C�m�Zi1�:v�c��,3)��H�""�����Drsƅ���殳(b�'��t����(�R*���R ��JW��->��ˑ\���Q˴�[��ȉ��P�I�&�7	>�8�o��}K��� d��%}����Sc~- �F�pc7\�fA��Q�N8gTp��y��'/\+|'��y�&G_:��U+]��g���a�K͈�d$��5�w�{��E��N��3�i���3x�b�*։�;˧��xq�p��l�?u_A۵`j�X    6kη�,�	�8Q�������Dd2�|۵�hͨ8�J�ZBx+	6D�C��t_8כ�߯E;�R�$S�I� ��Oͣ
-`�`��,�Ņ��}z�,���vF��)%0�{�[�Вl����?�o����k�y4ϟ�?lϳ�\P�����и "�"�&��9P����xt����6�C'�����R lCg�Pf�j�V�y1!kL�!�[]Hl������(u�x�^�� ��3S�qI���ds�n?���(|��h�~��ƌfN�td遙�&��B":s���e3Θɴ�� �gݝ�y8X3�be*<�sK�2� -b����=�W�����Я�
����	��2���z�Ƈ'V�����,����"�g�,��]�/��J'��R��Kr�<�?���(˭خ�*vlUj9cE��^^^)��	ܸp��k�ZM���i�֌`
+��
����!��xo.�eqn�j���yV)UA`A��&,Ȑ�OR�q�vh͟���خ�*@ɩ��Jx�:�F�uLtf�	���-�{k�������(�7"��gU8hT� ��CUV|�ri���~nu�G�6 T�d��,"?c&z0VpT�ے�^8lvk�����n��3�Q��D�\��ń��@-��vJ�80�hPl.������`�n{�U���J�K=���'��':ܙ ��ld�}�WNô�S!K�1A*�T�D�����\8���S�?ٞg��d{�S	�Z$����S���-1�\:����yeQ�ҵ�Y 7MY��Y=��.;��&f]	�>�~W��Оg���Y�8�
\�<��n6ǒB�E&���F����qk~�~C{��тE����
Kj�hJؓ��(Ɲ�d.=<?����>������g�y�n�`�9��4��X�$�g�u�m�4�a�jg4J�A��5w4�d���u�����9]?,����ʑ��M��PITwVA.�zl��I$:����Z�@����O|�^�XE_*R��g�����f��p�}���M۔�PZ��'�m8Z�DD�p�=�7�W��!��V��p�w�A��'���R��R�=�ާ����@t86�\�"X��v�����u}\�(�Ȉ���@~�,$��G(�4]�40����Qڮ-K)��?��a!���#�l�L(q�=�?�	�t9���Z��*��~D�$�����bց�A������l���M۔�5Sy����S	���,������:_�r���h�K��$Q��@d��]J�c
����� w3���Dk�~!)���h�#�&Ԭ�"�"��?OT�M�m��0��o������"���y��6��1M0�&��:�7?�9?~۵e%R����j?c9��\�D�SxqI�D�x\<���'ӻ���<��rE��p��h�r�!�TSa��<ش�v��W��h�D�I���fX��Y��-����_�ǳ��7�ћ7��Y 
���;'˥ǲX����u�փ�f}=xoz��ЌkmA8Z�[C�үC��bܸp�\��m��
4m�P᫓rw�<��� 3(9��
�;���v��v�Z���pm"?)�a�.��񠤱�0ys�b�Y7�C�V;�Q��%���\+���Njo����f�;��J�6`M帆����I�O�~RO�|�u����u�ݦ]�_��vF\��ȿ���23y�	�)��ڙ}m���0s'>@�驷�!�Ј�����OVp�D�N=Ѵ�f� l�i��};��~�%w��Y`�����R=��(?QHP�("�v
G9�a���ٞg�G4f��ր@	,�q�G;�s�̕K39#E���[��M�����ڱ�+y�^��/��~�RV�f84�+�Elזr�"VD����}�4{,a�?d�<���y7��i�Fi����6��;f��^-��9q�ĭ�����s�.���V.�o�ЈJ͟��fƮUlgX�b����ݐ��9�.��;f��Y�b�h	�uKN�?��.�}&E�3������1�J&�<d;��W������i�x�v���_a�o���ܟ1�aY�n�BM�� m����ʃ�tA?������O��6ɺ�ҧ�z� t!.J&�8�"=�	I�0x�'��-z"/�Ѩ�����d��Aj���擸"�SS��͗������,0�r�_w'Rr��h%VՁ�<4�\�<�ݣ]۵�p!�H�2"����2�
�~�y�Y�	v�Jn�7��,p҂V�d!)�M�2(жq�E�=\�f�������5��p,ՄGE>9�H�2�WIxڊw,Lw�l�e�x�m�V��Į"e�)Y��1z��'щ�4�4!���^{���vhz}��[lׂ���m�� m�d�A)�I#�+��m��~����C��?.��K��XV�bh�l�(r!�;������Z�T��]Bf��ζ����p��U���V�$i,DT��,%�Ɲ�<œ	���a������$�kAo����6"IY�O�7��
�=
���xq�j�֍O�p�b)y4�9N2����y��<�,
���83@���Z㏶�Y��)#��+�\�"���EkR	���!�f|�/��z�`{�U�R�W��������'u���+�a ����K��G������lmp�%�ي�� ��%����qcI�3�����<��$��MA� ��+'�����	�d�ݪ��V��Ҵ�m+ɩU���@�_�Q
xi�
�g�X�ׯ����vF��>{� ��2~J��z��X�� ,A7�I�;�]�.R��hTTu�EP5Re�J&^��'�1%��%8����S�E+>n�vm�/��13�%OU���5��gܶ]�J��vF�"�[�ئ"��Y4q���T���`u�o������t��h��E�)�issN{�_0y��O�n���/����Nߎ���۬E�s�"�	qk�Cel���vg�zk�ߎ��]�t�$	�3��UL�a�ܽ���G�z#�kA��cZ2'�<_��\VM��sbj�=� �]����R�۵`ƥʹ2^�@���n�R�.z�z׶T��h�7c�]�$���6K�Tp���_����Ak	�ip㦤�H%�8'SO�����s�A��Ӥ�y0�h��'�]~\N�B��ȵ���d��ԃ u�٧~��>oڣ�t�]�Q.�	��N��(�+b/�re��uA�J�p������ G.��TL�����f�)���"Dw��S�o�����9�*�˹EE'�_KJN��yǝ��ǻ'qx'�kA��Į��R���}u��&�C��͎��}#ߊ�Zp�&���ZE�2r�+�d��8pi,��ծy�H��kA��2FU*����D�1Ɓ&��fk���N�6`˕d��`Q��03!�	�O�,>�������۵ Ε� e�UAq0PK'鴸H�.fVC����e��N�3�q��X��"��Pqv���ȓd\�4�\6Ã�oiڦ"oܲᰙ�i�M����}ix���N���<L�N����cd�R�7�DK��ri�ـ�BI�h���fy�
�*�6�"V�x��N!�Ga��7>o��J9���*�������Q�`��&�l�җKL~�y9�EAg4���:[	�\E��s�t�8r��t��N�c���Y�P'av��|AfW�u�����+��n�'�Ο(m��?m\1�t}��1�j�)�R�,�.�{���S̩ˡ٢�`1���,�����J�^a:tʹr�X�Lܹt[�C�p�+�vF���f�����RB���)�l��y$�ӥ3���?�O�ϛ�?����K2�x�S����a", ��L_:��?5=�	��0�8�c��QA���J���}�k��0t����
��n������ъY��8jQW�
jDY�G��I�st�?-\�st����������q�K^�H$j(�Z"�$��S�3�p�i6E����W��lUa��u}$�f���K�9%�(y�����^� [���{-p��2b�����T�sON���|��,l�����G�Uxk{���R    ؀r˒+|DդR�d�� )����K�IҞgU��!AP3';�@���*f��a���Em���]Ӥ3���\�6\��a&��ɋD�(�ɥ��	�ۆ��z^�����yZ�2ƒ���S"Y��ax���C��Ya
ڮ�pB�XL�9��JU��c^�K�i��aЂ���vm��[ypj.f�(�)!��S8q�|}O��V�2~�=�i0%hj��%,/�=��s�t�m�U�� ��hT�\`�]��M��ɲ�������:��Ä6k{S>��Z0	S�+��A����x����H��:�MOw��~��yY��� �[D���R���2i�&"{v�����u�G�=Ϫ��������o����������Kce�����`)�]�7�.|f�\�1�H:b�9`��4�\&�}oK��v-��y�	��Ѹy�K)��"�"#�s�u0��"2>C�|�S��<�bbAh�b!ؒ��U.V�rĴC;�l*�h����v-�!�T*.'��%�>��es����g�����mϳ�\���Z�9�{<権��xqA�v�m���Db�|�y��7U�Pw�N8����/mR��,̈́յ������fA�Gs_LP�{n�/F��q��%�-t�py&;�A�f3f��=(�خ0�je�� ��f�O�b�� fs�I�3/��^S4���o�\"QGZ�-��te<d 4��vZ�pk�B�Єc���U,�ᵸtb�<��� ��{�FU:��H#3ͮ�<2S��������������cb��G�j�3䖜f� Jx��.cM��<��N+~d��/���=�N����H�+���V%F���$g!)_�raP�����~���=o��,kҤ^4�	����-��ˋV8QoG���\O{�.&�G!J虢�s�F��G�(�!��4v�y���!պ>���ZNѤ��b%9���q�p��X��4���C��|�lw�1���f���o>�f�n�˱Sc�DE-j�K�4�
y<�¹�q��٭���?sh�?VI��Q�
�!]q
¶sl
n�����%7i�$њ�W��L�ېr�0:�Z3��%7R�h����fS\�7+�*�4�w$�J&��U@@o.Ha��f��D��lϳ��r�X��03�+Cc�eY+ܸ �n��at���ҪonDsj�D`��D�Ba�����,_,����y����� ��UR�o������-�� ��r�`{�U�8+��L�kw�����,PAX����:�4�|g{�>i��z*�$�p�LO_c��H�ʥ�jh��g{ mLۀM�`|/���B���2��"_��0�æW^�w��J�2�'P�H���(�j	���8�n��,=Ϫ8g��f�SS��%�c�Z���l� ts.}m�]�[ 5'e����l�7�g�|�o�4�`�����쪱9���Ӄe�8E� B������r蟬T���V�nn��5?Hoq�}o��y;�4@�|>o��m���Z�й��͏A�]����X��%�����#0�ߗ����Km}s��_�?��؝)1a����&����7I�M�x_ph�]s�<Ï��Y��Q&(���f&��޴R�L��������͟S�n~��cp��H�m3� qS7�X!J�uZ�t_�p��,��_`�o�c�Jt�i��P���˝���]��_������q��v�M����AB���Onn���-?Q��o}���4^-§9I# �q���V����n��C�ح����}���.Cg9a<UJA�,��@�db*�+a0���{8��ӴM%�q	Ϧ����z0NN)�K��ߛ��jצ۪��G��,��#ǓZa��گ�>���i�g?�w��Խs�=�]zΣK��b%���X���s鲱�4x��>��y8ӹD�l�`
����l�Y�_"&�J��A����c�ݹ�=�mzB�T��L����Z孩8�%��t�_6��A	�ߊ�ڊԓ�A�I\]������I�����c$V/�y�HF�#�P$�c�{�)"�uE�ST�&6[������q����<�ۘ��-M�m��� �G6<mu!g��(�u�[�f��~��j��?�vmE�O��(U�g'�ʱ�Q� �YV� <��æm�(��/b���ԩ#�bNe���3�x�x,"9y�u�,7�H���h��XQ�zQA��
���!�h̥x����g�k�ˣ���wc*��8(��u$N��i�^�$l6M�S/�2�2���%}�4�83�K��R;&�#`���=��:J��uwy[�+���h��Ô�)�\ĽX�L�AD<d8�T�������_�3`�OO�FyO�	�[Ou'd8���������������������jָE"x��K���o�ɹ=SKXĂ�������Z2[��'<�|:�+���� ]N����e��<�8���q4���9t%br]��?�E�Q�RZ�\q�zu��	������EQ��۞g��`��hז{�&�q��D'�e.+Aƽ��a�u����߿bQ2�&��yP�g���g/ұ]�K�Db�T��h�EZ	g~�$�y9[��a<��r�M,�[�1����F�)��)���Tz�\<�4?�ƪ�Z�麾	��ʒ22F+eN@�����'ү��Y�_�<6��дM�"F�@j�Q(m�U_MD4��0��o���*c�hg4����RV�D�)P3�O@r�p�U	�������q�Hϳj2�e���D�!��j�Y=]*1�&(xγM���w�K$�k��J<�v�2���dP�5��W��}�{�7�z���ՍI�uڇ<@"���.�6��D`�K-�	����<�4�z9R��CA�G�D]�U&�T"��4䅷W���f菻�Q��>��oB� eR"#�_¹�"彧iJ5dv�i�_}�U��ץ��k�oP��|GE��L�+����W1Ln�#�筥r���m mP��1<�nQ-���q-���xr���T��WX�
����d��dW�ɝ�p�0t�9����~����i��LȈbJ�xƀ}�C+� �WM��w~���N��[�
��b�d��ɹP��4���a��`�{DB�x�ީk)*��4ly��݁q[>ٞgA��2*�p�E�%@a8�Y/�-��f���l��s&q�޼� Nv�����8�PX&rڱr&�Q͓!D���5��pz��O� �<�\�HwV�8n5�2k�E~_5Y6s�q�rb��fC�2�P�*!�����'�9�$!q�<�ȪY���C�N;�Q'���'T�U�|"�'կ�"�0(���b�o�/�Xд��8W�-��
.a^H�Ș�!5��j�^���;���5��j<*e"!��4��� x��8�yΡf��U�xE�F�
�;���
����$�'��Y��� �����&�}zh���y�y�n����n~������ �P3/+ w�Ǚ*�d�yI)rV����~����ؾt����}�I�
��Tw*���C2�V������j��x�l66�%9�����N>���;0��U,zP5����1�N8�\�����3���>�����Q$��Ǝ�t��RnO̫~�f`�,76�K�BJ�K)��*��ml'k%�+��U�|����=ςxkr�/�+ª���m�I�a�SxΥu3��s��"��:Z2�a���C�w����K)[�ô
�&k�a٬���y�A�`V�p$��H�;~,P�aZ����-6_�����<� �>G�!��E�4��M@�<��jEY��qӮԫ���YPA�I!U:Q��H��DS}�p�b=	Ù�Ww�͝��]ᐄ��,
��a�8�悹�	F�4=�ʣ�;[;���<"")�����b�V_S�̑��|�T�D$����Z�0��Կ著f"V
���|�~�̚���؟�u��#,���@"Z՞E�B��w��a�ӳ��f���TS��vF�fR$���� �6�Sd{����Oץԛ�~�?�^ٮo֙� �
  s[Vd��s/�h^6�j����p�g����W��R;����1LV)׽e�qjwJ���K=�|��k:xgg4�Bb��qI�MJ.hC��v�J{�qa��g_����Y��7��:ZJ���ʞD��''��;E�4C�~ۣv}o
�x�N�$c"ҙة��\�N H&�P�3@�]�n����~i��>ٞgAä�(2���l��=\.UH���t���pl}���M(�$ĉ$�=��cə�.
�H�Xf=��æy��%���5�rF�G���L��R_����M�+W����q�<� �[�FM��$�qE�㶪_$�r,����NN@Cl6������P?!L�ʔߑ�j�H�ԇ�	|�>i��:�����/��gA fʊyO)��qܪ0��Y?�;��A�6�ppT�rm�䷊Ubr�`��Z�0������pp�_�][�ފЃ����~��<_�0X�97��cs�W­�3@Qr�F�Ѿ/9]�ƚst���t�������<*(	�u��0c�MG�7[.�u�1���q�'��,ș`����X�(�F�����y*e�~��c
����р<	��$��bMhF�Q.�
û�����5��]�ɕ	E2�R9�j/��l0�'�����>�����ںpp���w,UJ&@B����|�|�o�aeg߸�oBtĄ�y��%y�$�R�L=\J�֕)�]�U���v-DH ��}�\���VO.VM�~Ɲ0��gF�Ƹ��j2���� CZ��#)!/$��R�2e�J��:H-.X,�_yx���/<�y�$��'R`4��,�����ap�s�}i+��7����J�:��2h�U "h[c�	y!�� ��7��/���G��,�� s��l!�lh>#a�{Zňר�	���×�K<�Zs��Ѩg���E����5�҈���Eޮ�&�~8�?��Ahg4���QJ��T���Ӻ_J�K�{W���M��j��'�][+IB��"LAk�	%b�U��pY��0��o�c�q~��h@E�e)�:G
���������GW���m����r���yqG[ي�'j��?��.f��P��|�x9�&�u}�*9es&!RfiKٌx�)L�r��q=�6�nmK1i��*!d(R
a �\"<2�}���ᶅ�[�'f���f�jg4 ���Y�?9�xQ���jn6�tVZ�خ��JA*����S2��@�*Oq�B=�H���Wy��F�65�YJ�d�?ˤ��3���JC�0p���a�����aڮ��
����� ��X(�Om���bLX��0����q��by����y�1����
�=gg�v��[]�v���o��-�ѕYRO=}��SW�Q��t75k�Q0(@=v1-	J$���*P��}����z}�ç~O��yJZ.j��	�"�TOI�P��!�z��iG���Q��\�7�R2oN	5��\��N�/D��]� ,7�j��`�3л��&��R��B)�/I8J%�&=;�7CgnZ#;����Y����A�I�$���H���\
�� ����]W���x���_���֪
�?��d>������5�$*6��}��'y�X(�ބ�I�����oTT�����������Lh�c9��G�H<%%!q\�i��l��ۭ��=�Y��<�?	�eS��ᵭY�Ҭv�͂2�ի��t���pA�����&���BĜl3q�T�Gn�e�>�ו�,��šQ��-�7�LbC)��0V�),�cĭD��\����C���w�֞����7�v �G�(��]8��$��SD-���ʐ�b�Q���P�xځ�Ҫ�k��h6S$?|����o:`��R,wS�@<�@v�$;!���P���T",�ZI s����K%������-���B���
H!��@_R����q���9����-��߬ĭ����'�'6ԉR*���(���o�I��B���}��3�,�L_ް?��ZW�R�f��J)dQ4U?�䌬p��7��7�̻f?���4J�w.�I��<�����t��N��>n:ϭ��ijG�I��%c �E+��`+���oW���lҗ �-�3n�x'�4��N���Q�*1L'�ۏ�}?��G���a�DW�$US$D꒤�y>��Sw+a���yv�EDw�<6�35�i�ʖD���"�U��/�K�+}ƮZ���\�A;��$̓��Z,y1����D�}��0D�ׁS�W/���j½q]߬���[M���T���2�z:vդ���n}�7��}��?������q~�K�H�+�j9�@m��5����: ����7[��z>~���O�k���U�(<�p��Ld���uE9�I�;͉�d{�E�4��c��%��0M��|���U����,�;=���_�Eg4(#�<K��++"rG.U��0�e�}��,�^+M����=��RrZ"��"b�f���BHp�׵ǿ���hY׋_����_�LR�S���y6�&�#��Uk��R�磽L��mCQ)���
q�Lb�t}
���s_w�ռ�.��*|��l��i�
S�1K�1#�
��
�G9��xZ���:T,�/���r���L;ԝ"�H��!�k�' *!u05W�&���βu���Ѡ�T.19�)�8Jq>��Ţb��+��<�>hg4(CŽE?j���.K
g��	U��$��þ>5dO�ҫ�!7��i�
T�'��ı挚ZB	�_Nu8�3����|���z�گ�Ol�LaSLLhIm��5�3&�7�!5����o����t��            x�]�I�Ī�Ǚ��#z�K���%��&a@DH�9����[~�W�g=�~�]�O��}��G�m��6��\��2���S���s>k��c���3��s���;�s�Ο������zL9���߼�m��Y�6|~�O/�~���}s��gi�������2��7S���g�)Z���ؽn)?�w�x��3?c���R�������ު�ǝ�z@[���T��>b�Z�s�")�F>�m��&V�0F���B�h�����Y?~�[B\������h����6�d�>��`�ZP����SJsuq3~�����H*����r|1������Z�,c<}�ER+C4~��۸��E���^�"���֊[C.&��%r_�������}���0����^���7v+U��ʹ>�/n)�B����#7�����y����q�P�,
�g���-�v��E��yQ�(��n>
h��\���>�(>��h1���E7���a�n3lB�����vp�����ₔ�����]�n��l4��v�����������w���Y��9n�^��6�[:��f����^��f���_�r���ܯn9܌v�� ���E���o]��� nS#6D����$D���U��J6X�r��ż�G�R�������"������k.�'��^���/�m��L��l��>;���b�G��y��!n�.ƞ`ߪ6�}�E���24���[%n9^�[X#MfP>���g]�-�n��j;��{qKgНv0n����s�������ǭ�N�-h�1������E��w�B��uA%v����g�{�I2r{�Yh��sގлs2o��c��z���<�P(S�a�O:�����ͤ�,#���ȭ��߶2L���T�9}��^�X�O?o����޺rQN1�;)	>�p.�}���i2�Po�vѶطu��Ln��h`�C���w�zPn��]�[�+��ż�����o�w���-J���j�羽��\b�2X�r�s1��}ǼE_r�6�V���"��~�so_��jZ�=����T֋n��1~��\Ж����}����Z1o�b�������V�}�������j]#|��N\�;\�f��lw+�E��ww;���Л�� M�buc����>����}��a�g����״��c4�M?2���"7�9�-��R.�c:bb����>�>��품l?����n�q��]���ڭ\�"n� ��i΋.�.�����-�[@���9���և��/�2�Ɲ�:��m���ٹ�p�Ä��NU�{���->P��}k�U��E�I�UMl�I��h	�-9�^�9G���u�2���3/߭$��=�$�ƙ�}��|K�j_F#��c���.G���|?n�>���}���,�%d�vY�۲���S]v�{�v�חx��`���&�\�)��[�����,�d�K��RL��*�S�oH��k�A�L]`�:����
n�]�5�xwr--&�Iv\Rh��2t�}����f~[s����͹��.�\U�|{�A|�\`���>��o��8�1��2��Tz�!��WZ)� ;�T��(�
	�N� �c�{ӕn_}�>�F*���9��N�1U���U�Fs�tYN������碶1G��Ʒ+mR�̚kҙ���;�>ۍ#NW乳����t����,���� {��Պ�\h�&ܐʵ���I�Q��1�\�#�0u��d0�K��ֺ��fȟ���()��f��#�������o�$�����F��T�{䦷�!^]R4m;���e��1���bS=38(�N{M���QND��}�	���^[�}$�=\�yf��i��t@�G�����d�M�^���xRz�Ih�u&S/����f&۴����S�Z�K`�E�v3� ���<���B2�+��{&΋��J�W��&�D�w1�Kz@w12�B��8��ܜ�ZGf���HQ���F8��Ș
�'�N*ak!�\t�cFtgZޚ�%�F|��
z��il�)�rʖ��x��xT�+�	�*¤캴N$ݒ8�����^V?-1���Q�ߩ��Yk�>�d�Hd;�5�Nwvod"�|!����Y;��<2����������$��:�p9M�ӟ3q-�,[�"}A�����'�	3{��ݓ�;��+l���}��zQf�C��0���0��i_�:�!����]+�t�^ݙ���]:̭�,��b!eHk����tjʢ��d������?_����ȭ��=�;�ߊGg}�Xr�O[���#��>��hd��6%?Sxʝ���
�_�m�G~V��$@E!��7�#�^�W�a��""��`u�)�M��2�yv��Vz9���ɞy�{����"�,v�',՘L׊|�{޴�*�I\ @~��~#���˖=<�Y3��a�J���Ô����(��J#:LO���ٽyO�=��$8hJ��2C���y�pD������,�A�铵ނ��#���d

��١��6�����Yo�+84��$�˖+�$#k�ܤ�*��a/�d�^�.��d��k%�վ�e-�O˝���\�[�$�B�@[������%k���{9兕�W�S6���5�������a`�������ɢ/E6��vH܆t�,��)W��������@|9n��B�l�-7�#ȼz�~�]w��%b�]���V�ч,���a�2Dn0���-�`�Y�F��UN���!Zk�Y�,2#Hܮ�ʯ�0Z��d���k���@�/du��	� ���d��u�	�+c��׋S����<r+ڬ��.+}�}��:P�J�Lk ˾�IU	���K沷��'�l������IN��������/�}���2k��n}���O}B�X!�
�����N�����M�ʏ1�l_g���T���r{Ս����I&����/%�d=��$��%/
�;i���:CU+��L�a�o����5E�S��q�Y��S�!
��yA��Ar@��#�B&��o�W���0��A @��"_Ф�'h*��Q�&�!�#����b��dP�܌ƧG��,�֞)^�ݐÇ��
;�+8,/C��$�7�������60(K�Ni|QZ]�`�Y�
�o�-bQ{+��xC�����o����q�� x��AUf��'�Rá}��O���OO�4�vl8���H�|�e���-����j/���~�ҋf'S3��H@���f� ��ވ���IfVp�M�Ͼ�UgI�CޯJ�!�+K����#I�K��K�x)y�(@�PԓR{��+9�s#Y�?:��t�b$z+4tH~������3R+d}��Y�f�$�k�$XQ�%_�����e�"P��'랟dF���w���H�X��qW��O�2U�(�}�U	#q�*�ل^�e�Dy���pN�x�E������Oɓ��YΚ�����1ՕeNhO�PA��F�Zv�k��i��-�EcAy@}YGY�*V,�J�-��~CGlĊ�n���C�υԃK{1U�Y��r2����]3��M�B%�p3yD����4����$Λ@p�F�g���h�UX$���y%�A�U�aG��Ͷ��pf��+��j���-������鉂Ő�n�d������L��jO�#��l7��a��E!�[�*�1xd4;=�"�
�`A�=������v�y����D��J�R�'�NU���~����V�Ļ�ڊ�Ps�K�����qA�6����6�['��(Jx��ؿXJ@f���գ�8��#Dcjr�o,2	����G�@��ŘF~G�/��� �/�Z��.3����	,_ҷ�]�Q@�UqL�+�=U-d�6����j�-w}���"A��Kfb��۞@Ѱ��C��ĭ,�d���W�"Vb��؀�Bi�E���Cj�T2�kO�H<D�ڐ&�fBKQ��',z�������#��B-���u�f9�lԘ�a�8���@C��� O��Ni 7�p}�m�M,Pna�R��䇹e%{0�ߛ�Q����x��ń��RA���jZ���,��� +����)�(n�Ӑ'L��U��fc�a̳Ŷ�    �`�r%�M���Nʸ��ws�*�
���^���6$	
	�w�j�B�䇪�D�Ӣ�X��&y�G0��Z�L�;H5m}vHeo������AF`h�kY�l-*h���Tk7�A�<b(wdR�����cJ�$qB�����a	�MPLPI!��b'��!>��� ��b��>�L($(1,��,�H	� A>zS'$�T�g56��}?T�A���������K�e� �C�����{m#�Ԑ���ϳ� y���V+dq2=���?�Z���P�����a4D�1��*�(�p�Y�!Z�h�-�aSuqq�n���UYW�ܔ$��;�=􍡇���OPɑ(V�Y�kHtH� �>�b��қVDU"2���Pe�p�����m�����^W�񢍍��m�z��m��ǧ���^4l�J�7�:h�.���$A}S7Q�(��\Pj]�b}�f�0�6�Cc&׷���� ��o���A�7�DN�|�U75U2"`|D	!O�ж�jD:�ޢ�܌�+*l�ACn�mcU�̪F5:�?!��P�PGP#G4������)O�:tS�XI��ϘqE�!2UC����`a��Cj�C�i����,�>'�xe�:�A��!o%�i
�']��uk�j"�H��9��D�W��l�!7F5᧵B�aI�b�#������u�+��/���0�~=�e����U"�������Db��h�$��mlFL�RxGV�N�?ǂ�gC�(��& �B7�� O�dA�|�C�.�7���V���q�	��kO��ջD���!B�i��݇��pS��w�(h�(%(4X��~f$9�-�������LBGD�^/k��DV��'6�a���6��I}��y�0�p�!��i�#r��nu]�+P4�D�^I��	B���/����s�f.�$�<H�.I@�F � �]EĐ�����Unk�!��A��f�X���?��S�L!f����ܝ�nrP�'v@�!G�0Ľ|{?oJ���d��\]�G�v�:\����W%a��QGE[j�aEVs��C,'��Oҩ_�lG,X��B2v���'i6��jb]3'�}��!���z��l�p-� "gG��K?�M�r��\�g�r��#�o�8f�5�Wrs ���,nu�	�Mq-ɒ#�V����}�x?����I-�w�Sj��zu�����{U����" �>p�����pB�{��<��b���C�ˈѱv��c�%=�;���Dl�vb�ċ�/�����0S�N�Z��Z�I�*]��$n>�k+�� bx	5��h�Z���I��:�M}J�$���M5��:��b�֑#�wPOPm�'����XO@�q*؉R�{�b�n�7'��嗎A��S�� ^P�=Ӕ�8Q�,�n�M��HGA���v갘�W�=�d�kM:Z�޳�	ф_I������}������md��'Dj�
7;�"h,�((|#F���B2+�������f�VbK�װ�ޝ�C����yyx�1\�5�~�����?����(,��T���4:���.&��ۑ�&���q��g�9�G�=�

��E�f2��:���g�@�H���{��i��'���Z��9�,l��|�H�k�4e�M�8�z0W��{O�:R�߂�ϖ���C�����~?����:�8�*"���\������F:W�q�I������ܠ��栣��aB���aq��S�">��b��KX��vd�-�|�]�7r��u`b�����\ʄ���^l�p�H�K��������F!ZXh?��H<hȈ]�t�8ў�CP�0p"3����;V9ПU-�e�j-c�OD�d:O��PC�rHV�;⃷�UA`�~ӥB�дg&�;�I�e�tΗ���2�Q��r;Eѓ�ߎ�:,I'�sL��b��t.{�L!b-tچ8�+<�N����9�x姽�Y\O�N�����p������T't�*ˋ���q��мiI=`QRP��K��9�%&>���*�� �ϳ]��e�t��[�ittW��fr%^�; ����i�q`�O[\� Uv�����2^�Hrw�4`���d�7�����fR������p{�egiH�ۑ[n�w�$P��
1��!�d��UH��(������~��Qb��Z6Z�8�U� %�ŗ�忚z\�J�~R�Fq,��!+�pW8��}(֋Wɰ6#N�I�y�?�?�sK���i�?�j�!��E�X ��a�uu�r2��5�9��'�(�m��Jn�\+M�}��Qm�������ĻJ��O����(wqVDv ��<��갧��Bb�t�d1o�x݋���֬C�mZ�3%l�V~��d�M�i�UB��H:
��x���:�"�N��@����H	2�x�6�����-��H"~�p�w��'yh�54{ȟ��oh״$��c1�W�8��@|�g+n�O����e�!��U�����^�+�����Ɠ"Q_I�������g<z\���յ,h�ё"�؂��kɻ�੅TО�2�N��j>�
XyL�=�.�M��b�T�d�w��L~W�.��>K�ށ&bT�:�q�=�
�ϬX�"�e�TE4dS�bH6R��YcD�;/�f:N�[����x;U|�pn����L:U]�ĕc�����^C��J�N�)vD
Z02�A8)���E�ʅ�p�:�U���cn�|L�������q�'O9��
k����vA�hd�]���l���ۘ1_�L.�3c\7��������.x��ItW�e,���ذ$�e�nS��_��K	| G0 ���KaN2�NA��5d�:˘������t_��n�uȺ�q�ҋsMؙ �/�S���&����N��- �zH/��=^5t��<�ƔL�-Hf@�_!�h@,��z���ơ2�"F��+�@��L��q����s�J榦{��L<
�>�Q[?��q`�m���_^���͏�ƽN�Ń�ij� ���%�[�'t��5Ԃ����p�6TT4�Ѓ�5o���n1�h��<�2$���|v�M?�B�.���8�l��Fp�0����B�y��|h.Z��t�A���5��q�q�ϙ2��j}!},���l:G�h*ȕ��3<!n�A��^gw�b���y�+����3,�+BX���l#��f��S�@�������]g;̝惒M���D��ob�G��X/y_����f��DeӬc>��9ėMS�Ec���,`���+N��Tkѓ��~�	���|�9+��R��ث��=QKG�(�O�v�@=1����l$�Y2N����+�.t[��BNv���)D����'qD�kJ<��F��IQ��{&���ͺ�Tq1$K�(�]*㟸���D�s*7O�*��KX.�_�!$[y�(�a�j�N�Slg�p���i���	�Na��2[�:h/I��,@Q��zvO�.�Q�((���"h��6!(&��*,�d�
Y�zd��8���~-`���^FSC�#�L��(:�-�@��`�%���@K��L>/�ǥ�C�F��)_�WA�!�r���Wx�,�1�-dyo6%Z�������&w"QP�Q���]G$��-�t�~4��!^2��[���C��e���͖�&��� _�ċ���ǐ��l1G��U䈱%>�S��#џ��b�/�|A�a�#Ӌ�{�kE��410�����65S���tS�/�-�;�g3�8Y�����;$�h/C��#�}�*�45�:�������1��lf:�5:��	TK�������6PM���3MD
��) �:��&=�G��i�(�id�����﫺Y�#�C�1��WN�hO���9�L�&D��1֊I��ݏ��nQ擒A#��.]F��遗<�!f����@*\IC����]�z=_qa�t'��%�9c��3�wЛ"TPn�F��g����&�	2�梼�}�
�2���ԭ<D)�9���.0Ӕ�s��=#'Ȳ��{��؈O�*�d    Eq���O|h�7�Ŝ���t�;0A:-�%F@���%�[Ub����O�%�\fE�N:�,N��7�tb`�<Ɗ�"��^�}�:b��'��O�'Y���U��%OHc���d� gifVZ���)��(,�L���L^��9#���C�s(6�*��@�=��S�Hdf��j�ڍ����n^����� �e��C��&R�ow&��|C�Վ&q*M�t�Gz�uc�D���߄����bI�os�sx��~t4ћxQ0|�x�O2�^�L� �G��&qm�'[ZAL�jҭ'~O!�8uz���ԝbJF��j��KN�6\��XCO4t��:U���T_4��",����3x�8T��,K�w�H�zf��}�����:���J�� �Y�ۜ}و�]��j�a�p?�)q�]�l���N�#�J6i�/6����H���x��&�o�cӝ�,�%v�o�/}&j�͗ƚ��������U���?\L� k�KŒ,P,vv"�<�����7\�ٴ��|ކنa!H���O��6�j�xX��N�������b������$�zVt�*�BG�mJ&u]�w!�͕l�#ٚN��"�7�IdP^�w�$��A�� ����&x:��^�x��{��KU�'�DL�:�G�zU4��b�~=�Dg	�_-�%ؖ�f�"Ȑf:/�f����D���v����8U�t��X�"��8��Kl��2���1�	ost�mJ��[���]R����8b/�v3lo;Cl�e�����C��O<�OC��1>��ޭ�h$���ğ��B�7����Iv�E:�� h�D���[�<�0�w:����.�u�F Y���ٷTT,�|��N�e��$��0����#��{�R��>���d⑼ �ò
V�	7l錐#h,�'fN�J`�4�oi��I���[v�L>�	�/
�-MT�'җ;�@[ �E����S
��i$�(���l�\�w���b��Fv����A��$/�F2�%[8$�˥��$�2����6��RN��8����l�%�L�+Ck�Ȏ�����.��:\N��粑�l�Q��g�mډ�/��ݣ��͓!����O��뉥n"Q��6�%]4b�_��� >P�zdw�Vҙ,���R�h��Y�\HE`=d�	�?KabH���$�4iiᴤC��۪�-���%~�_h�ٯT7�.q��lj���<}O��¨�H��AA����S����EAA�R|L&!�SC'^#�]�z�i�J�N]�;L�Σ{����e�ʿ��Y(&� V�k���8�$r�
# �~�X1�n	H�PQ!XOZ�l�\�#�ce+E���R������rw�.�5qz�����tD�`wV=R�Q4C��$c%��R%�ޯ�2��p{������\�"��p�Q�Nu�Y`_Z=5�W�䍸�Ӑ��-���|�{�3XB�nԈ�Z�v[iA�>�� ��n�>���	:	^�;>�n/�f������X܏�e�LA��V�w����x��:A^���l)6?RL'.3/�T!���̜��C:Y<��a�D� ���I
�(Y@�N`�̳�(�c��
���K���b+@,�{����=�Ѻ����0�P���\6�/8���(;#?|C�O��ْ�
���&�[(��}^`7����mT�9��C5!����9k8��dj��sB�[S���i�;Q�}{b�p�,�A��Jv.�\�<l�Ɣ���������3�TJ���:W��	�~{<���s��������q�����P����-�ˡ���"w���~���ɔ>E)��8h췥�(��u��,��?�u�׷;=m�����2�,���X�7���@{��R 
C��o�a�ߎa�V1��+�S'3�_&��0d�o)h
5{Pl����8N�B�#�
O���$B���3x�T��B
�>A����5�nq��eϭ'Œ��CcAC��.��h� ��[�d���O'A�������[���<^���$>�g7��9+q�vϦ'�>����	��H�)�Z3���NU�ںR|I��0qZ+�1�Cq��ާ�X1Q���I�:���w:J���o}�h�y����t����	��K�V�ީ�n��F'{'g����:>�Eਾ�f�s�ʿ�Rx|C��:�����pA��0ѫln!_s���O5��G�Z���t��R�����F����td9d?!c�̅%�K�)��~dz')���(�/��=�N�A���F�h�#��[S'�����	���đ�ݶ>�}�� N��h-V��̮��:k���C '��~yf��=��8dJg|w���7A�����3�eAf�{�
b�=6@'m�g��ҮE��̎�[�D��x�?R��<u�Z�<������R
��3��^9��~��5�$�k֏�K�'F�{_����;5�_�͹���T� \x�$�NhG�������[)�i���NV��؜��V�\@��I���]B�;�>�y�9�pe�"���f=]��5=���FA�}v�� sR���ٓ�Q
�E��J��������ͻ"/t����t�Hf��c��B"4A,��~e�S��m��ųy���*� ��`������שׂ��m��[�ʂ�h*v��丟�6DSYە�1��o6|ⱈ�X'&c�d�,�ݯq�s��
r��A����8W�.[@������MKX�q��I��r��&Yq��E)���;I�r�) D!��O�掫� �[p��Rr�. ����}%�W��`.,� �*Ȍ�|���:�I�^��!D�tԾ��r�n�S��?��-P��鮁0����pw>E�Md�\�}��2���>�&���"q-�ˬE-{J�4�9�3�JZH�9%��aC��wJL�O�A
p{&JN�99�� @ܮb�~t��I_�c�	�.���A�BN�]�uǏ VJ�i# �U�,�|u����K<%�4��u��[�'��������x$�s�!���i�H���S�!;5ֱ�yh%~V=F 2���7E�w ��/����c��)N��q4iz�G�.����ӎ.�?�u��Ң��9��}��� zw诲�w!���H�T;D�1i�]Z�u��$?��2�<4��M�x,M��D��׭.ל�����v2L�N)��S�+Q�!�����7֢������r�	��&��t�փ:�f�}����t�q�X�<w޾Oƽ}��9���qn�;����/ڥ���'�d5��yU=cd�gK�Cҗuw�1F�Ÿ�eY�Q��ć3g�t�>b�Q|8҆��vM�7��I0e�4�{��_A�؇Ao���b�h�!>�rя�JL��S 2�nrF��{��^�Z�wv��S��*h�H�i�	vc��D��HMő^��)yF4b�#(g�$x<��H���Mcg�+�_���oɹO.���@�"��q�S6GE���������9!�C�Ė��AߓvP���q	D�*)�����	��22��"R���5!�}��(Zp����x(�pp����wH ������AE���LAkF�07�|��4�&<ek���l;vf�u����z;�Q.�ge��a��������	�3q�Xa����N���Zj�z]�ʺ���"V@ψ�*
�
�a	&m�Ĳ��7��"�٣l��+mgy�	`�HX��V���meH�)��g,�7��y�Qv85��q٦����툰�L����Ԑ�Nv��~�2�r����H�p'v�1�Bޯ�xJ��v���v�����B4��-���&xdݔ3��Î��8�pGy���l
�G�}:H�7;I�O�e���B�A9A�~>�!��ҝ��)'{���[����~�Z�8'?I����s�	�Q��Ki��͝���N, �5
�� f��e��A�p�U;D� �*p����2�/�x��kl�,9���g��	`�i`��ɲ�O6�Z��7��l=ֳ"��ݕ,�(�eω@�ꊓ �k�3� ��@�=` �	  Hn`�ov�1���C�"&�-��<�~��}��Iʱ@bwg���x.�)Փ?�I��d|/������+�2�}��G��dxo��=	P�0��������瓀gR}n�y�]���)'��p,5P<��������t�^	 (���,@��/w�G�J\����ݝ[o��,{̧8��sè��\/�B���{Q�`i�������E�����Xr��)���-�u�C.�	���;��������Vy�#r��}*�%���-�xN#�ɘ/�lET6Г2sN��<U�u��#���ݨ�&�qs�X��*��/������@j����Z�b	��������m�,S�L��凖ĺ�������Uӎ'��ܡy؇T��d��,���#g	}��� B�eV����!a��KD��XnJp;gj�'�e=V����|"O��|=ʧsGK�C���C�L0^r朁�|��T�x��۾�U������mLe`���%��o���G� $��0�x}J�|��������c<����,/�%L�R�߼C����cng�7���$���yC�67��������9��މi<���G@�d�QH�**��i�S�R_�RƂ�������e��fO��_� �����-�;�	�A�ۃm��ʌ�Ur(�%ˎVv�k��/z��R<L����Q.6��������f����N�xq��@+/P���X��N_��Gz)i��{h�f��/`M��1���l+�xe����~~���Ly	��A�@Ʋ_�QNh�*42��^�5���<�E�` �ۯ�������y�T�%G��^o����X+���+K��^�_��m�@�$z����(_�ph_��q6���.�&������&��ֳ�m�Xڤԗ��ߚ����l|����"��p���`C��mm	����d)f����h�B�O-��eb1���8��@Ѯ�@J��P	��=���H����@�Fc�B({���'���I<v}�f�DR�KY>RYh�v(�xԸ_M-�d��a&�n����!���]so`�Y���Lk��	d���JM ���ߪ�k}	���U�A�4N������W�w��wމǟg���l�����&?7���9�:�T��\��+C��N��M10�L5P|�X��0�p����XK��7�"[���~	t+*b�3
���G�'��n���=�;'�%�y��x�5�ݞ/PWN	x̢����<ּ���ݤx
��Q9&���<��N/��=�|�-���|�s�j�/`�+���&m'��<����+�� �5&���1Y˽v���X��+k�<���=��;��q�a���\���)�<��?���=�|��0M�z�w�	Q�ds��P�����7�߳��(���k����8�����A�g��~V���0��-��I���F��r.2���[�L����l��0��I���{j;�q�RR9;�p��M�sЙ��lw���b;n�W�|�Pb��P_�����K�/�y̜��h�����x)˿?��x�aK���'��jk�1����M��y@�5�f�'���e�!�#�j�c+�����A��tUV�W�a�a�Ͳ���@��O:L��m9��@����U5P^ɩ�/����GNL�������Y`����DQ�R�W;�yg
h�E�H��B��.U����Zv�O����00m�h�i�ۃ����T8I�3���7��⡈#�vw��L�Ia<O�@V=k�w�/�H ���wͩ����y�'�?�L:�d�3MZΠJ϶WҔ��KIF�n-�5��ye�����v.7#Ry{r�pn�����"�;��\<݊�����Ƒ������͗oL���_KGP��o��s��+�nvF��/����U�i�S�W�ϑ=�(/�&�Fc��M����ݬx���)Ѓ���%��R�l��q4�{�V2bȞ��~zIy�f�^�ʃ�l8��A���	XuЌ���us�o���r]I �,0o�Y�~U��6�
��c�KQD���MU�����Ɩ1۫��`4�l�8^!�����^`��M �蒯�k�,��N��X�3�R]t�y_y�:��E���_��Ms4c)�v;���-`��b���_?��(p��3u{��#�}/��mul ��w��,S��3��d��W�q�
�����n����y%�f��?P��R�������3e��i�3ހ2%���W{������x��*D �;����ٳ̊��g�_�f��xx.�\g�S�[	dB�W�@y�Y�z�L�7vX�Y3���rvN;3��r<��K�[/�|���`N�5Pm[�y��xt�g��pZ\{�^E��ҝUx�X=�<y"��Zo*��gْ2B_�G�~3Sv(�2zv��9oJ���eR��UF1�Q�	�=��>�o���w�V���3��~��2�            x�m\��Fn\��1����6�I�M0H�dc8�m�3�=����%����J����b��f�yƗ���o�}_���Ͽ����3�Y�Jb���Eȗ���_�=��������s��xϣ���忾���o_�(0���?���Uރ֡a/aբ�/� �%�y=�}(b|��_���w��ϝ���-p�'ഡ?}���_����k"ZWq7*=��U�˟���߿���׵�������O�ݓ���o��uٗ���s�����~��J�-�h����6�z��������~�����
�����r��2��}s�����QRTR�7*NS�oP�(��xQP,y�>�W�ի����=��t�d��d���W�
A�e?���i���n�7B�4I���c�d5���m>�ڛ��}��_���9���I8>׽��`�I�����&�j�Z��7�Q��g�� �(�~� ��(�N��u��MF9�"e��<ow��"�q]/u ��xE;�	Y�k��S��%e0/i��6��Zc�76���r�v~��G�1`,�={q��[6o�B5��cF����>�?h�������	74WC�{����o�?O�BRA*II�5S[(՘Mܷ�'��\t����n�G��ci?)#w��`�� �Z�/4v�Y�gj��=�w?ao�hS2�%�
�ٳ�h���H*�cR`�U��	��@��%�᠘�_2��U�6�h÷��/�?��޿��Q���4��М�㈇`�0�j��Ǔ� ����#�a�	��AX7z�ÌMqB6~bx�^����A��h�KQh�kQh�[Q�B�!����8���y��I1x5DЌE��`�F�A1FW��$#��#8���4�ۯ���w?>�Y'�k�y�V̫��9���j�f�� �)���@N���?1����OL�'����C;�O�4#�=:s���IQ.5�o��9�b�f�s�E�g��97��i�'5˝m�?���F���O s��\�Yn��w�0�O��'̅�]5V��;84t娙�F��5�:���M����P-���m4l���k熟<�Z$��1��J������ ��Ų�O���F�ßb����	=���aj͟fS�2Z����d1oR���&*�W!<�{������l���oZ���f���T[I4�?m'�;)�c`�}લDt/�b����-�9� |&5Ia��(X�	W3�a�[>���%]��
�&}̼K���ŌbJ+c�6�(�v:C�4�A�-�Z��O82~��fWV�!��\�B��Z�[�YWZ�j�adg n��Yc3���:�#;��Hb��+�G
ր�f�kf?�9:(��Y��l	j�ΖAYS�Ϟ
�K4�@������Z���In�Ƶ$��cInYR�#֜ �U��+_p���&���۬�A��0UZ�f;��5��v��F�=���k�4�l�KRKfc'؅7�6p�Ʊ�!�I�AD]��%N��o,�I�q���\w:�ע-]|G�R�ڛ��O��)���\pZF���Xu��*OvP>���SpZ���e�V��;�EaA�֬�w��M��oo=�ײ�	/�X�K���`����{��`��]������\�A�\��uPR08!E��J��� ,Gq���J�x �Q%�[���4�ŕ�K;L߶/#kd�>�+z�g̑�7�Av�A\�:��ϸ|=2���{�Ej#K�{���A:ɲ�{^�21]9O�\e�M�3'-�H�.
I�Y1_k�g}��$���3+�W�8֠�z�R{Ql�&N{	��?Ȁ]�0]ڛ�roX��Ӫ���k��){K5���m��o�2�L@l[��2�VC� .�۸�J	UZ���@�qC���B��5?�� ۴�6��6e�jl.=mD[�Rm:�l�Z��V�F��p�,�4���_5��@=�Q�(Y�Dmk������Zi�i��o����	�>��J�Y�v� ]�v-V;5D��=ʎ�*ԁ��A��ԎI�&-8 cw��C?�+�=k�o����T��k�$s�.�*�	��K�Po��<z�|�xg?¨A�H�ƃ��D#c%�H���*�kR�.�����U�f�\ּG�L���da:Y�O�&��xD���!�0D�E� �0�(AS�k�kieY
V��2�"���,x�P��������lxla�Y�"��n��������b��y�_���5|�kN"�}����G߄Ү�'i�kik$ғ��y$���$,	�����(�w�[CX3ɮ�L�Z�+	�cm�]a!�3a�Z�u����b�U��l���h�:��}��t�����?��o�B��~�xB���GC�k�-�����:�Oz� �z��'�HB����B���x�����̓%&H:.A	�	48�����?j(�qH��1�!�6�UfV���A��[+����kU�r��[�.Ï{<*ϡctP�3�,vv�$�c	�6�~:�vR�E8Ks�� ՗N+P�BgYm�m��*ҁ%TN��ɲz�A{JZ�O��9֔�A[8�L7H.Aw�c��p	�����n35��_��W�	��@i������tu��Oޙ���HRBJ�RR��U<�mnQR�Q��$-3��������b8�n��H�&+4Y���!E�ة�A.')j�]��p��i	j� 
�6_k�fzZҲ�V-���ʾ����*��(���tp}��,O�NxP~�H���يXA+��L,h峕y�|�r�H�`��RP�fj�H�c#�>�leFA�>E�}�����P��*dmUȮ2�FCm��tȷ��<za��F��v�l��+C���etp���nl��ԆtX׫z%g����5��l{�,��6�7۬�js����H����x?i��<�����n�[�,j�ZEaj`K�0;te��S���{���@��v���ھ��v�ܸ��m�%��	�&��0�7Iq@Qp�Ɲ���q�1�l-�lL�H���@�8%W�3��c5��-X�1�vP\��ѹzC���}S�f:�$�p�A�f�o���T?OR}�/��L�0QX<c�p o)wq@}���2��(ca�#��N��ŌZ���H�JF{�#�t�"�-F\�ҽ�9��?X�2��ri�=���:6�z�T��>eq��^��2�ѿX��&��{���'7@=���ɎE*w�UkP���^��U�ί��JP�mO~��������!������hx6\�׸���68'����>��>/��,o9���[F�+�����Qp����]�l�f�s08R�h�g��<��6��KV�rO���5������s�k;���U�~_�9�޾����ı��V��E8:�㪕s���|C7�a��7�7z����A�98�j��R�Jn��&�	,4X6��f�h�W�L}8"�U+��r/^N��\)f�t���V*�Mv�M�u@��VH�eC.��ռ\�: �� k�17�K^��.G���*7���!7)�o[c���~ɝ͢'rg�臜Aρ`�&|\��V��%��sK��^�qN5b��kW�3Ir ��4��ݻ�ݻ������1哙�s,&C6�:��G���KVq͆���B]���L��;"�&�ʎ��I`+����o����.�I��f��q/o�6�n�=��w�	�\�:��)�ޫ@��A��c�2e���C�Fp�U`�U0��ԋY���J�ܽܠL�DEEA}o�9yM} s~P�`�_��g��|��&r뱜��C��^��Ʒ1sN�E�C��b�T��=�}�ֆ��D���u�K����-�7h�"#�6�@��N렺��TH��/hs�����]����A�pj�$hy��-�!]�Y������zf�aS|�:l�U�CE�QQ�qQ�'P-(	�����`eH��}Lбb��٭����y-]_���q|#���T{,KcU)_K�DH?�:AFY����j,�@��ua`>��w`�s��0�g.��ݘ ]  ��J�j��9�����+ޮ����]�-y�S�tU��AI�z��,�Ut!*�����ѫ��T�$j/8�qվ�� �	�U��n�vN�2{Sg�K]�����)<��Ջ���맮܉��W�= HsI]���*�s�o녀�>�}A����uC���n8	��݋
��Ǖ,��6�9�S�w}�y�����Fhi��������z�|(rO�?g������a������A^�����W�E��"1z�q��R����X����vEW�vS�<�Vi�_�U����]��x�F��kX�x!Z��Goآpm�l7VЧ���2%��F1�eN�K6�a
Q�x9[���҄������J!y��d�%�(se�cdK?J��8k���9��Z���+Z�&���|w�睢xғ�j�"�
˛�W+-�Zm�����[��UW:��e��g�nT,� ��W8����S�k���L�p������8�H��W��Y��ŏ�:`B1Ǥ����u�&��klAHXt��>��u��\��L�=�� �eۦ0��RF���ү��n�BV��?�t`����-�a�������A�7�*cl����2��==����*�SF_�5o�ɝ�y��B�e��ӕqJ��0H)c��h�����V[?�Kk�������hC�ni�� �/�S��h�m���|Ԏ��0��l�c��ԇ��XO����(���ۓ�Tjh�����_7�z�>����G��)�1*\{DjUcPF�*��:��O8��ER۰_n�?�o�޹q� ��46�o𜖜?(���ت�?�&9:��3��f�p����U�9���M��P��O_�~�?8      �   S   x��;
�@�������R���&��
!��V�L�E�u�=&KL�Xa��<��n�	����U�a��=V�3����      �      x��\�r㸖]�_�͋�#Ji��;�v��vK�ʮ��@$�L,��S�7o�oU���{p�<��`ETd״t ��Y�y���������<_�"c2IΒ�S(�8��1=H�=�R�sv�,g� ~���(�'�`F�� \1ɳէ4Yo8$�8v���kr\H�
�Ȋ���w�ܔJ�S��"�B��Ba�5�f*Az�ӳ�#e�*�>���� ~e	���ۆA��Q�p���P�^_�d��`U���6���)5/gL�p�D��v�K�u�(h2MxR��(������G�p�m�\��Z��r�&ʁ��J�y���^H���.����e�{+���E����Mh^H8L�\�&��;#۳y���̦O�����嗻}�8c۳��R�o�G���c2���d�w��sY�=�������t
���k{B���<��TÿcJ'�g���:�g{J"���A@n``�3a��;����Q�\�B6�0+�/�p�.'���Mǳ�w�l�A�AJ�L�����J|�û�I	q4p<�\�HC��-��o8��ӫӻ��q	q0r<�<)9lE��]�Lp��������g�9�,�(<��>��څ^��f�i���������������N�u"���,u�G>��#oo.�7_�u��l�ܲUa����Gۇ7_��T�0[g�P�@�'�0��[�������['���+��@�k��-O;��Ս?r|딒�di0�<r���@<�Z��>TN��6��N3?prs��D��:�uJ������q��srq3�+�
Z��2��z}r����;��ךf<t|��hVHCy=8�8���I��Ǟ�[��qiv�p@���#�w��W�6��:��+���u�pPp��_n&ׇF�h�Q��X�W�?$5��ʦ\�+4�uF�8�u4��+54FP����������@z}�g�N�4��yã9W�-p�z�n0vz�i$�+�~��-h���ӓw�����H�r�^Crcr������f}X<�BS�\�Y���sx��[�g�A@�d47��\������؆�ӳ�YN��X�>��hZ\�\�E�£y��4b4�y��g�Jb����G�
���]dc��٧��(��r�F��`R���w�Z<07�R�%�nLy�ʧ�)*�ww�F���;�	�`��?��@�q�2T�G�\���/��\�6��tO����i�a����	���aB0�(���������@����l
�U,�4zo�ӷ�Q��x�A��흭�)cM�O�|x�Ľ�
��M����[������z�Z����~��r���w�iNXt "������Yy*�9t_in�C�귐j��+t�j�z����~��-�V��<��"�`gv������]x�W��`�"8g��~��;U�AFp^���e��Cv�6�a�y��Ö��V�1YnNI�Lp���2A�o��V"���r��u"����r�ȽQ�Ȇ+��Lm/�X�"�7p2�)�.9h8騆;�|��;�x�3iV<G%uo�������鯇�}��+�w��E����+)hށ����uCr����4p]�Oø�hC�a���l)$�:��{�(�ygF36�����&��<���DL�w�"�"������2�_3]��oT����}�"��3�H,���<�ם����H�_P�؜
`�J����K��s���K�}g`�Xj�t.YBQ�rf�@�Vb�F�^��<�s����kX��^~��cs���x���i!l^66��0�L�߬��fk��C<x>���,�QC��,�:9]�C�LQ����(�W�����9�|����2���7�22E	�}z�ȳh�Q�r8tY�}O;!jpJ�`@��&;�,��K8����Jt~�Z!��`\����bڢ*��4�n�Veq��A���8g9�y�N���0�W��km�VXQ�G���8�Pa��^��}`JX����<�{�"�U)�u�����]S��JP_�j�k?໖�@����E���Ft��cG���{Cr��p�y�ظ�|�����VEP����($�E�Lg.�:�� _J50�ZT1���"'���l�X
4J;�9�W�crb�R��	��ȉ�)K��x�����H��-r�[���pMQjpir�3��.y|��Ȑv@���{��ƮJ�Q�aL�2쯟5Qu���I��LɲU��Y�a��h7���2��9C��˷�h�C8 �j�2�lY�"�Tn�%�d�HX���@�D�d��8�V��0ۺa�v���HwZ=�X�VX#�/pQ���{#r�d�5�֙�Q+��j���I��P�gmժ�8#�Lg�l=c��1�vە���jl��E�#����m8�v�K[%����"�����_�YO��*��g�<]���Y��J���wd)�q��!�R=YU4�,�	,�0�m�#GŎˆ�+�9#��Q�֥�Y�p�}P
�(ەH���J���k�E�%(��l��W>Q��P�g�ʸ�E��� gQ䆷<E�n���uu�آ^��\�T�7����h��'�:��3����B����z���J��b�-*�tV���#�Փo�wM�$�,'7u�VUS˧�nVP��E��t�ޥv豎f�JHi��h���`nE*6�"�!�L�T��)��ch���5n%���0�FEYt�%w(���U�P�
3@�2��bz���ƭD��7)���%�F���c�C�7�VfM�:B��ȩ�&���������",2���-�ĝ�lE���z�U F�:�����`�yrL٢;/%�Ir���q+Q�p%x��y�FX�"pݓyC��(�ִ�`�7�h�A���,+F�̆��m���/��@���!�q)��f�zp�P� �Z��'�TsIY�5�%:aa2A��Ģ�"�/�u�񪔀n�r��=0g�Ey�Foj�=��bA�b��|'h%��躳¸b^��y�v/�Pκ3�3Xg� 	�1��
(p^�Bކ
?�U;�.;\-��r��k��е6՜"Ь�7ܽ�a�y9g8-��Ž��՛�`��U?��\��,�Y{�X��ET��f5�B0$G8p�Q1_�]wՖ��:>�Ǫ	K�(����"��������ލT>ߛ���J%sUX�ɻ�����4\�Z��g�<�8�kr�d�R ���F���i(Ns'l��w/I"cMV��6.�p�s�V{'0P�b��ӿ��3�':��L����
'�Q�y`e� ��Z��
��� �mV�j?�l�iS�����C������>X��u	X#��(�nOA�YY�*NUS�T6��͒��R��9�G���-�v)/�\��W�]�r�aF���l���|4	6ԃ���~�
F�3����ȁ��= �+�����m�v2
ޡ�U	#�i@��9���_��t���ԅ��5����vc^�$�m�G3,CXw�b���6f��*�{����r���jۇ��[�!�^{
��=CDZ��Ec������B���f��3�d܅���f1<�P�>��D��-�1�<lc�|�����=�%�@�,rU9�~_�x�h�T��D�,��N��QOv�_��3|�<��Xr�wD��ژ�X"�u[!��>Q���%/��eW��V����֮�r��d��kr�����h̍u�[bĂ��})�\�H��
���e�l.@�&�O�$Y��7�?���H��R��e'�);sG�/��i�i�TLfuYVBUL�j��ha��B���Zlf4v�~�{���]�-;�3��6/^x=�V�TT$b��p	�Ch룹�a�c��[�#1�.�%0��k��|oH��Ji��)X\|��aq�*�d���#���-�"X�ټ���5�OX����Є�{C���Aw����{�_�pc�4��Ua߶#)�h%�wy6olh�ߤ3+�i���%�(s��l+
�zy~�\��\Z�bg`G+��@�w9���1L֝�Ĵx���h�� o  ��1u�H�\�	�2Y��@s6߇�D*ŉ9�gh���`�+c��e/Ya�:��p���.yc
�Cȁ	��m%h�Ux;׃�O.�ߪ
Wj�\JH�0�y�i�El8���IH�	�F�\�t_�b��jgx��g�2��C	��Z��˼�o����ZO�ScEX����Z%{�� ��B�0�l�	�tnD�Y��my�d���SDX�{
n�0��X�]cQ�(�ZAyɓP�k]q��s�A��S��8F`��yR[R�ϪYPۜd��H:��*3P��o8�XҸ ]�m�& F���l��l�����+@���H7�3j�T�S7��KiT�v 4-*�P~̦fP��%��缡z��l��3�K��臽���g
W� l��0.�0b��2�<ȵ��
{z�6�h8H��D�tnW<�Pb����q��ڠ���[���,�r@m�2�����h@N1���K�P1�����;����Ak��r�G�a��3��^@��S�%`x�U<q�n�(\:���[AqT\���eB��̍fU�������^�וb+3'��
��z���ٮv�W��Bi!��`s3�'��G����HwBϢ�?� 㠦t�� cǳyyE�vH�cN���:���%��T�6� ��-��"� /;��=��^�{���99=#��m�xQ�/ru�:E<��St�e@�j��ՈM>��[���&���6]e/ټ�M+���kq÷^�_�t>��@w��%�c����W��SWh�ؼ<���^�\�R���E6��бDՉ\��W���v|?�c����7&S�l������<`X�J+�^��7��z�Cr�����]�U߃iV�l^��XM��;Y��)H�_�.ĺ1���

`�\�}u��X�?��8���OX�!�� ��]H�F�$	�Zr�6�f_��R���֍����l�j�V/��o��>�����7
ۼ���������g�q�9v ֌�k/^�3�F�}��Nt���I6��خ��t����?9�����y��f�2�!���hƱG.``��[�A �1��E��
��	�聕�(b��۵��5-�o�R�Lt��&�`L���܎�.ݘ6���[d�7�$U��x��¬�$|�U�ټc���z��{�iBP؀|ڹc���r�f�����v�FIʎ]�lޘQ���:`���?�*%�+Ox��
�N��qX$�M吭�L-�J��C�R�9�C�����aR��U��"RO��0�GL�ɲ���-��a�)�lޟ�̬���yX<���(	�g�%��F��'�&�\��j�=U	�e����F&q�O���,�`M�K+�W� ��b��	�){�i�
��m^J���n��l޾��Â������(^eB<�����n��X�*�V�q��>�Ә&9/�n!� @pIU9��2j(&�3������1�+�{�3��楷����xشr�2���+4�zi���XF=�2e.j�X7��*���J,'K����z2�I��.@��̨���!�ʶ���b�a�kk�ލ:@�wV`��������)���
��/NC�6��x�%��ݵ��?9���M�      �   �   x�̽�0�����1~��!.������*M�2p���y_�݇�r,0#K�6Vx�dk\��)X�z��ub��6l��z�9w~[?�#��G������R�Sa���缑
��ѯ��-�<V6���c��肚2yH� �-q      �   �   x�-��A�(�j.�\��X?��q1�����ɃS�Ra�c��q�@a �%��E�\�+��E7�4%.�<�<f28���xM��`6'8}�\��K��{z�C��6��c?��-�ղ�� ��"o      �   �   x���0�PL&�������C;��|H&׵�=H�m/tе��]֏�c�\�����mȒQ�v�~�/�b]�З���I>�^�{���ٮ5�&�3��'ݮ_�S�ФӀLsN��������"k      �      x��]�v۸�^���/p��;GI�$v�'�M6��%��E�A��mf9�q_l�
�D��sF }���.�@�|U(�W}���۷///o:i�RoZٿ���_��P�4�ۇ��i�f�>���3z���;��Ks1W��ݨ%����R���S����W�r�6%ɜݪdq6�fh�h�e�k�	O�M���~0O�i6�Q:�	���}B�>��;��XN#;�Hv��ŃQ� ��h&�c�p�^�/�I���a�ꔘ��s]�w�0Wm+����5�]ƾzE�+v���h[��2j��Qn��f_�و���E� 
4��v^��.zy!/n�/�����Rn'y���$a?U�Ay }Ԧ7RF�_=u����B��O�4b!�k��nT7�o��#R�Q�=� �k���&�;�	n���݊]#AY����z�N6Rn�s67�[���b-��N�s�V�Z�R�9����(�}�_�Z��ğR�������I���I�~�T���+�,ek�r�	��]���6� �٨g5�tVi��ݙ��[�'��.��6r�2�y���]p��5����~��q�ށ�[!����fE�����;�\�ne3,�4�\�d�Q�N)���{V���	��s#�o��`��4,����F��D_���	��'N[���	_��At��$#x�ʺ���F=���`'��5�_�� i����[cKg@|��[D�ʘ!>�����ӄ}���$�1��ƙZ�I�z!���sv�m��	8^>Pj�a��C��0�j��X7�f�ʀ\�0����~��Fn4>"g7�F�n�ȭz�ȱ1x��+��a����d��Fw�z�3E,C?��صh�A�؍x��L2>��)��f���,XL2>�U�l�~ͣQ�Ȉd�L��6d��E�w�Ex+�g5�J�	�} ,��x�'`ܪg��s]����~i��eDa�j��뵞Duܻ�`Z��΅�ӄD7�q�1;�h���33�M2���F��GH]��=���Yž��"x��T����<t+��V�\|[�+�s경��~*��şbM7 Ô�����u;2y2���������0�`�D�G��)�X����?!5�y�+�����h�^P�M��1�ϳ�>�©��_�g�q��mH���#�w_F�ݣ�8N�����_����֧���n�`^��y0���k1hH���Aub	��<Mr�P�1׿6o}�J�y�[�#9/�t�P��q�j�:�������\�<����bl��a��	��c���z�bl�e���gb�⊥c��x�O��1O�|Fe�D1��7����^�V�z�y�j7X٩mt?գ�?�+12Gk'�����\��O�	�q��(^cwq	|h$Pz���|R�ȕ�Gn�����i�e�mp��T?�K��/��K1@��zy��Gll)j |2 �R� �\�3v�$z`�&[8�	��v!�J�AΚr��O ��{����_H�.n�x��g��u�t�2��]V�߉��Z�����N����@��
 L(ܺ��_�Ī.�S���v�Z�7�\i� 	M&���bW�X@�
h"�h;��k,��%����6fV�+0M��-�S���m�*hh2���wҠ��P���W��Z���P�c�R��0�-�	�g��3��XC|����Y���epU���t�T��b�=Y��I��@8�u�d��@.� �n|��W ��k��"��Mⵧ� ��z�ʈ'zzkZ5�d%t�D8�xWU�t;�����JGݜ��s,Z���S���C���f��[��k%�����f�مA�h:鮭����B�R���p��ԅS����^	H"ì��t�~m����g�Y�|<�_[m��Wn��Ǭ_�l�|R���u��7lBp*�N4K����o2C[�nwM#�2>��h*�v�
��Ҥ��ᄟ��T2����I�0_��V��\���6g��~���)\�����;H~�ztf%���3�z�����? ��W���wm�R���0��G�^�k�����D!pn��R3�� zĿ�A����6��nE��w�Qs���Jp�~����;MRv%e/��цZ��%K2�^ݯv�O��z3l�3 �<I6�&�k)Vҕ�ΔI���,\D�C�ʮ�Q9��7M�������N����R@a�р�Q�B�՝zS,�;�@~%�Q��eÀIr��3�Em�ivt��E���AbI����"�b%̒�x!���uk�	vE�H��.�K�􁑧�]�B�w�|��A3cBZ߆� �}��5�TOp�]��	�%?�`O�o�Ԅ��a�͔��'Eo�#.�����A�.7;���b��{����r��L+�R �+N�o����҄O�g��MV
!�#>\���VlRr6�����sVi�>l:@�F��1��wK��ӂQ_xj������Ԧ{/�Ւ��_�Xh��z4_%�
qeG�y'�a����>n������w�� ��m��v�����	������&� s�Ylv�SD0bd��u���D����V�����?��%K�����c��p�������|�*�E��q/C�������[���G�-���ZB�b�Z�k��n=6ɪ�]��{��-�Al�T��)V>�G���ۭX$96�=���������9�,%�O��f���u��I��[�7,�`����X�8C?�槽���D�j�� �|y� ��Nh&���6�L�߇sm�o�Zn�~�	�՞�l�/�� �h���o���ua��A��B�N;�ep��}u��h�+B�C��V�ے����E���C0x�:LIqT�)))~��p4�r[j��A�B�>���(��A�C0FYK� LVί!<�^��L�V��&2�a̠0�x�X��	N�S?5�.�a��v��@9c���
��d�qu�"�~�h����lW>(9d���	`[�9K����t��P��n�	xY��K�OVn���6h��Ŗ9�n���m�Arg)���oq�[("�*1�����"�1��"�����v��A���k�N>Ҟ]�8�R�\��f0i�� 0�X�冷J�&,T��~̀�����r��,ޗt*�`@H�y%��uh�M���/�Oet�CTVP�k+{�E#bP�Cu�*�5�pۊ�#C^1ʸl�����"p�ҍี�]���*��T籰�d_̃�����iv���!���Y6�ȧ�����W^kd��[Q���[L�:Q%� ���Q��� 8��{�Q�J�j.	���6:m�Kv5`�l4]E��J��
�( }�c�q�[R�� 8:,#H�ۃ�� ��/�`͍�ؠ�@f�(�����a齕n��pG���VF�����b��[҄F��4j( ����P�E��Pl�P� pz�B�.��}X ��~��|۝0+}��S;Gp5(�oX��V4�U��c��Ͽ��,΂`F/�&Th�Xkǋ�b�+�񄺘[̵G9�C��#q��QԂ��`"��t���&
��	6Z`�^<9m%"��	dU]Ov�D�Ӹ��'qD��ځsWx�������6��'�[v@tt�L�º#5<�ji4�X�_0V�)  b::\-�/�#����};����=]�UF�f�!���Q����������{BQsu���׆_��l��:t�|���3là�����Yy�>˶U���"�X���j`�`���m�QM����F!����5!����k�P�	����{Zy
�$�0F�&��?�)uK∎�ΎR<�ʹFGIĘf��+��dH���~��n�q��g�h���FK��"n��S����?-�_��{��Ij��	��jaߴ�N�]6�m�����,��q�pȳ�ݭ0��>ڏ �)~�}�����S<�����9���&+ò:�Z±�6��©ע���c*�#z��;e�%�H��d�a�R��o/�����+0��LgU���a/4��}���%�X����E�'�H�)F^�;9~ M  �ٯ�*� �`䜸���'�r����G56��9獧�@�-E5�N��9dXC�����y\������E�ܷ�M��A��J�fs�@!s���`h�I�D �I�r_���3`�]��pd1ԗ��]�)��#ۛ}v����&y�j#j��RBI�q�6�cË��R�o�F[W9�R~�A'@'��*��
��:�����aXl��X��s������ �5���"/E�e{.Sԇ�&���:�e9?�8nt4e�w/t�D��{���ٵ�O/����f�E���_��ˆ���ӧܫ��2�͇�N���^d�K,�Bۤ����g�6H���Z�/���T�W Gt	��B�V�DvH�	��
a({G�o���h�^��?�"�+�*��%�H)�S�&p'�%�W��,��n>^�n�Q\�-0U���U�Q����l0j��h����W�%�����1����;�L��o�:Еz�7�� �uN�g��� ��9�3)<�C�6Q�1n��v�k4�E����U1glNf�?��� ��U� ;�NhaZ	ť@>Ԯu	A�OA���^iT�����2�51	t�u=��Iw8�lԺ���v�����"$ z���TIld�:�:�x�2�/ �\wǋ�q	"�TCMg��F��,���^�!�B]Z�b���"v%��*P�QL���Z:�hY�ߠ F�UT���0�tVS`!5U����a��X���9�O��;�E�qF�&Ժ$�@׼�bk��E�o�B�$c�h�I�x�4�*;nEY��&�%܇/������S��7����o�����?����Y          �  x�%�˕�0�R0�D�o.�[�/��F 肉6���l�}���[�~Z�~��E��&�ڜ=�mb������k4��hz]ٴ��-U6�-����=G;=叙v��i��v����y}(��L��>���>?��������5�qqɾҷX��e�����Z�e��s�-���\�lS}/�ܛ�����r�����g���,6u�������Wvu�#_n�ﶯ{���^�����7]����s�!߭ׯ�=���{�!����W����%Ѹ>�9T�^������Q
Ĕw��j:rֻ*j�Ud��C�I�	���!	����@I�Y�G�24�%,2�з̉��.f ��#�c�Y&sU~h�lQ�O(���&�T�е�.g�*\����aA�T�J��j�����ߡcL�(>z
��#�7�k�2���O�0  q��� ��}��������"@��_���u;�U���˹܊������1JH���J����4قh�uG	
�p���J��(�<lP�`N�� X��e�,tD���z<D�ΩY�k�Ěߩ�������<HoV���*�KrUk�1�怖;[�B�jy �Ґ`����]�kW���@���B����@���||�P����O�s>�[��|5��W��ad<H�ְ���tX���AAXÆ�^5����u�4�1}�Հi*���~�g��#���Fs�MF�)��x���{��m��      �   \  x����n1���S��6��on-�7$�"!$.�$k��ۛ�}H<E^��nRz(BT�m�������YB�ߤ����Z��]���&�	iu���hH�A�80����B�ۆZLm��%Q��]��zИ5��l��-e�o-
:m�C[��zk�p�M�N�Y&��z���t�K%c�ۆ��5=h���(���xg><p�k�S��N�{ؽ�u��:���Y� ��g�p�ь��4� �����Z��)�Lp�D�j����OGVٺ�����d	u?��)����&�'����XA]�cŘO��۪nW��$�:�e즓�G�صS��\Zj�#P��ȹ'�#�(֔d���xf7��B,F\8X�X��F�pɊ�OOWUD[˺�aR�k��M�ٕ��P��GT�s�Ry�ieJ�F��� �L�WO?����j�ҚR���;���}���&�W�z �%����,Cq�um��2@���|�>w��m��j#]�j�e�����r�1͆�YZ�ò}����H��{&��赿��.l+�Մ�
���Śf���|�fc�秮�"�x3�).��z���z\�¿�g�ˀs�-��     