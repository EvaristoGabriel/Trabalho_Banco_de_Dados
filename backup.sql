PGDMP         )                {         	   testepoke     15.3 (Ubuntu 15.3-1.pgdg22.04+1)     15.3 (Ubuntu 15.3-1.pgdg22.04+1) �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16496 	   testepoke    DATABASE     u   CREATE DATABASE testepoke WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt_BR.UTF-8';
    DROP DATABASE testepoke;
                postgres    false            �            1255    23247    novotreinadorpocao()    FUNCTION     �  CREATE FUNCTION public.novotreinadorpocao() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    mochila_id INT;
BEGIN
    INSERT INTO mochila (id_Treinador) VALUES (new.id) RETURNING id INTO mochila_id;
    INSERT INTO utilitario (url,nome,id_mochila,descricao,quantidade)
    VALUES ('https://raw.githubusercontent.com/msikma/pokesprite/master/items-outline/medicine/hyper-potion.png','Potion',mochila_id,'Recupera 20 HP',1);
    return new;
END;
$$;
 +   DROP FUNCTION public.novotreinadorpocao();
       public          postgres    false            	           1255    23249    novotreinadorpokemon()    FUNCTION     n  CREATE FUNCTION public.novotreinadorpokemon() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    equipe_id INT;
BEGIN
    INSERT INTO equipe (id_Treinador) VALUES (NEW.id) RETURNING id INTO equipe_id;
    INSERT INTO pokemon (url, nome, apelido, numero_pokedex, ataque_fisico, ataque_special, defesa_fisico, defesa_special, speed, nivel, hp, experiencia, status, id_Habilidade, id_Equipe, id_Nature)
                 VALUES ('https://img.pokemondb.net/sprites/black-white/anim/normal/charmander.gif', 'Charmander', 'Charmander', 0004, 12, 9, 10, 8, 12, 1, 20, 0, 'None', 5, equipe_id, 1);
    RETURN NEW;
END;
$$;
 -   DROP FUNCTION public.novotreinadorpokemon();
       public          postgres    false            �            1259    25865    ataque    TABLE     !  CREATE TABLE public.ataque (
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
       public         heap    postgres    false            �            1259    25864    ataque_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ataque_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ataque_id_seq;
       public          postgres    false    231                       0    0    ataque_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ataque_id_seq OWNED BY public.ataque.id;
          public          postgres    false    230            �            1259    25789    cidade    TABLE     �   CREATE TABLE public.cidade (
    id integer NOT NULL,
    id_regiao character varying(50) NOT NULL,
    nome character varying(50) NOT NULL
);
    DROP TABLE public.cidade;
       public         heap    postgres    false            �            1259    25788    cidade_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cidade_id_seq;
       public          postgres    false    219                       0    0    cidade_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cidade_id_seq OWNED BY public.cidade.id;
          public          postgres    false    218            �            1259    25771    classe    TABLE     �   CREATE TABLE public.classe (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    premio character varying(50) NOT NULL
);
    DROP TABLE public.classe;
       public         heap    postgres    false            �            1259    25770    classe_id_seq    SEQUENCE     �   CREATE SEQUENCE public.classe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.classe_id_seq;
       public          postgres    false    215                       0    0    classe_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.classe_id_seq OWNED BY public.classe.id;
          public          postgres    false    214            �            1259    25964    equipe    TABLE     [   CREATE TABLE public.equipe (
    id integer NOT NULL,
    id_treinador integer NOT NULL
);
    DROP TABLE public.equipe;
       public         heap    postgres    false            �            1259    25963    equipe_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.equipe_id_seq;
       public          postgres    false    245                       0    0    equipe_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.equipe_id_seq OWNED BY public.equipe.id;
          public          postgres    false    244            �            1259    25942    ginasio    TABLE     �   CREATE TABLE public.ginasio (
    id integer NOT NULL,
    id_cidade character varying(50) NOT NULL,
    id_treinador integer NOT NULL,
    id_insignia character varying(50) NOT NULL
);
    DROP TABLE public.ginasio;
       public         heap    postgres    false            �            1259    25941    ginasio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ginasio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ginasio_id_seq;
       public          postgres    false    243                       0    0    ginasio_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ginasio_id_seq OWNED BY public.ginasio.id;
          public          postgres    false    242            �            1259    25812 
   habilidade    TABLE     �   CREATE TABLE public.habilidade (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    descricao character varying(1000) NOT NULL
);
    DROP TABLE public.habilidade;
       public         heap    postgres    false            �            1259    25811    habilidade_id_seq    SEQUENCE     �   CREATE SEQUENCE public.habilidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.habilidade_id_seq;
       public          postgres    false    223                       0    0    habilidade_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.habilidade_id_seq OWNED BY public.habilidade.id;
          public          postgres    false    222            �            1259    25803    insignia    TABLE     c   CREATE TABLE public.insignia (
    id integer NOT NULL,
    nome character varying(50) NOT NULL
);
    DROP TABLE public.insignia;
       public         heap    postgres    false            �            1259    25802    insignia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.insignia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.insignia_id_seq;
       public          postgres    false    221                       0    0    insignia_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.insignia_id_seq OWNED BY public.insignia.id;
          public          postgres    false    220            �            1259    25930 	   medicinal    TABLE     �   CREATE TABLE public.medicinal (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    id_mochila integer NOT NULL,
    nome character varying(20) NOT NULL,
    descricao character varying(200) NOT NULL,
    quantidade integer
);
    DROP TABLE public.medicinal;
       public         heap    postgres    false            �            1259    25929    medicinal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medicinal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.medicinal_id_seq;
       public          postgres    false    241                       0    0    medicinal_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.medicinal_id_seq OWNED BY public.medicinal.id;
          public          postgres    false    240            �            1259    25894    mochila    TABLE     \   CREATE TABLE public.mochila (
    id integer NOT NULL,
    id_treinador integer NOT NULL
);
    DROP TABLE public.mochila;
       public         heap    postgres    false            �            1259    25893    mochila_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mochila_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.mochila_id_seq;
       public          postgres    false    235                       0    0    mochila_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.mochila_id_seq OWNED BY public.mochila.id;
          public          postgres    false    234            �            1259    25823    nature    TABLE     �   CREATE TABLE public.nature (
    id integer NOT NULL,
    nome character varying(10) NOT NULL,
    aumenta character varying(20),
    diminui character varying(20)
);
    DROP TABLE public.nature;
       public         heap    postgres    false            �            1259    25822    nature_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.nature_id_seq;
       public          postgres    false    225                       0    0    nature_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.nature_id_seq OWNED BY public.nature.id;
          public          postgres    false    224            �            1259    25998    pokedex    TABLE     Q   CREATE TABLE public.pokedex (
    id integer NOT NULL,
    id_pokemon integer
);
    DROP TABLE public.pokedex;
       public         heap    postgres    false            �            1259    25997    pokedex_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokedex_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pokedex_id_seq;
       public          postgres    false    249                       0    0    pokedex_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pokedex_id_seq OWNED BY public.pokedex.id;
          public          postgres    false    248            �            1259    25976    pokemon    TABLE     p  CREATE TABLE public.pokemon (
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
       public         heap    postgres    false            �            1259    26035    pokemon_ataque    TABLE     h   CREATE TABLE public.pokemon_ataque (
    id_pokemon integer NOT NULL,
    id_ataque integer NOT NULL
);
 "   DROP TABLE public.pokemon_ataque;
       public         heap    postgres    false            �            1259    25975    pokemon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pokemon_id_seq;
       public          postgres    false    247                       0    0    pokemon_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pokemon_id_seq OWNED BY public.pokemon.id;
          public          postgres    false    246            �            1259    26022    pokemon_tipo    TABLE     r   CREATE TABLE public.pokemon_tipo (
    id_pokemon integer NOT NULL,
    id_tipo character varying(50) NOT NULL
);
     DROP TABLE public.pokemon_tipo;
       public         heap    postgres    false            �            1259    25780    regiao    TABLE     a   CREATE TABLE public.regiao (
    id integer NOT NULL,
    nome character varying(50) NOT NULL
);
    DROP TABLE public.regiao;
       public         heap    postgres    false            �            1259    25779    regiao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.regiao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.regiao_id_seq;
       public          postgres    false    217                       0    0    regiao_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.regiao_id_seq OWNED BY public.regiao.id;
          public          postgres    false    216            �            1259    25918 	   seguravel    TABLE     �   CREATE TABLE public.seguravel (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    id_mochila integer NOT NULL,
    nome character varying(20) NOT NULL,
    descricao character varying(200) NOT NULL,
    quantidade integer
);
    DROP TABLE public.seguravel;
       public         heap    postgres    false            �            1259    25917    seguravel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.seguravel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seguravel_id_seq;
       public          postgres    false    239                       0    0    seguravel_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.seguravel_id_seq OWNED BY public.seguravel.id;
          public          postgres    false    238            �            1259    25830    tipo    TABLE     _   CREATE TABLE public.tipo (
    id integer NOT NULL,
    nome character varying(50) NOT NULL
);
    DROP TABLE public.tipo;
       public         heap    postgres    false            �            1259    25851    tipo_efetivo    TABLE     V   CREATE TABLE public.tipo_efetivo (
    id_atacante integer,
    id_efetivo integer
);
     DROP TABLE public.tipo_efetivo;
       public         heap    postgres    false            �            1259    25838    tipo_fraqueza    TABLE     R   CREATE TABLE public.tipo_fraqueza (
    id_forte integer,
    id_fraco integer
);
 !   DROP TABLE public.tipo_fraqueza;
       public         heap    postgres    false            �            1259    25829    tipo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tipo_id_seq;
       public          postgres    false    227                       0    0    tipo_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tipo_id_seq OWNED BY public.tipo.id;
          public          postgres    false    226            �            1259    25877 	   treinador    TABLE     �   CREATE TABLE public.treinador (
    url character varying(255) NOT NULL,
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    id_cidade character varying(50) NOT NULL,
    id_classe character varying(50)
);
    DROP TABLE public.treinador;
       public         heap    postgres    false            �            1259    25876    treinador_id_seq    SEQUENCE     �   CREATE SEQUENCE public.treinador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.treinador_id_seq;
       public          postgres    false    233                       0    0    treinador_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.treinador_id_seq OWNED BY public.treinador.id;
          public          postgres    false    232            �            1259    26009    treinador_insignia    TABLE     p   CREATE TABLE public.treinador_insignia (
    id_treinador integer NOT NULL,
    id_insignia integer NOT NULL
);
 &   DROP TABLE public.treinador_insignia;
       public         heap    postgres    false            �            1259    25906 
   utilitario    TABLE     �   CREATE TABLE public.utilitario (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    id_mochila integer NOT NULL,
    nome character varying(20) NOT NULL,
    descricao character varying(200) NOT NULL,
    quantidade integer
);
    DROP TABLE public.utilitario;
       public         heap    postgres    false            �            1259    25905    utilitario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utilitario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.utilitario_id_seq;
       public          postgres    false    237                       0    0    utilitario_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.utilitario_id_seq OWNED BY public.utilitario.id;
          public          postgres    false    236            �           2604    25868 	   ataque id    DEFAULT     f   ALTER TABLE ONLY public.ataque ALTER COLUMN id SET DEFAULT nextval('public.ataque_id_seq'::regclass);
 8   ALTER TABLE public.ataque ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    25792 	   cidade id    DEFAULT     f   ALTER TABLE ONLY public.cidade ALTER COLUMN id SET DEFAULT nextval('public.cidade_id_seq'::regclass);
 8   ALTER TABLE public.cidade ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    25774 	   classe id    DEFAULT     f   ALTER TABLE ONLY public.classe ALTER COLUMN id SET DEFAULT nextval('public.classe_id_seq'::regclass);
 8   ALTER TABLE public.classe ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    25967 	   equipe id    DEFAULT     f   ALTER TABLE ONLY public.equipe ALTER COLUMN id SET DEFAULT nextval('public.equipe_id_seq'::regclass);
 8   ALTER TABLE public.equipe ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245                       2604    25945 
   ginasio id    DEFAULT     h   ALTER TABLE ONLY public.ginasio ALTER COLUMN id SET DEFAULT nextval('public.ginasio_id_seq'::regclass);
 9   ALTER TABLE public.ginasio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243            �           2604    25815    habilidade id    DEFAULT     n   ALTER TABLE ONLY public.habilidade ALTER COLUMN id SET DEFAULT nextval('public.habilidade_id_seq'::regclass);
 <   ALTER TABLE public.habilidade ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    25806    insignia id    DEFAULT     j   ALTER TABLE ONLY public.insignia ALTER COLUMN id SET DEFAULT nextval('public.insignia_id_seq'::regclass);
 :   ALTER TABLE public.insignia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    25933    medicinal id    DEFAULT     l   ALTER TABLE ONLY public.medicinal ALTER COLUMN id SET DEFAULT nextval('public.medicinal_id_seq'::regclass);
 ;   ALTER TABLE public.medicinal ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241                       2604    25897 
   mochila id    DEFAULT     h   ALTER TABLE ONLY public.mochila ALTER COLUMN id SET DEFAULT nextval('public.mochila_id_seq'::regclass);
 9   ALTER TABLE public.mochila ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    25826 	   nature id    DEFAULT     f   ALTER TABLE ONLY public.nature ALTER COLUMN id SET DEFAULT nextval('public.nature_id_seq'::regclass);
 8   ALTER TABLE public.nature ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225                       2604    26001 
   pokedex id    DEFAULT     h   ALTER TABLE ONLY public.pokedex ALTER COLUMN id SET DEFAULT nextval('public.pokedex_id_seq'::regclass);
 9   ALTER TABLE public.pokedex ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249                       2604    25979 
   pokemon id    DEFAULT     h   ALTER TABLE ONLY public.pokemon ALTER COLUMN id SET DEFAULT nextval('public.pokemon_id_seq'::regclass);
 9   ALTER TABLE public.pokemon ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            �           2604    25783 	   regiao id    DEFAULT     f   ALTER TABLE ONLY public.regiao ALTER COLUMN id SET DEFAULT nextval('public.regiao_id_seq'::regclass);
 8   ALTER TABLE public.regiao ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                       2604    25921    seguravel id    DEFAULT     l   ALTER TABLE ONLY public.seguravel ALTER COLUMN id SET DEFAULT nextval('public.seguravel_id_seq'::regclass);
 ;   ALTER TABLE public.seguravel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    25833    tipo id    DEFAULT     b   ALTER TABLE ONLY public.tipo ALTER COLUMN id SET DEFAULT nextval('public.tipo_id_seq'::regclass);
 6   ALTER TABLE public.tipo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227                        2604    25880    treinador id    DEFAULT     l   ALTER TABLE ONLY public.treinador ALTER COLUMN id SET DEFAULT nextval('public.treinador_id_seq'::regclass);
 ;   ALTER TABLE public.treinador ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233                       2604    25909    utilitario id    DEFAULT     n   ALTER TABLE ONLY public.utilitario ALTER COLUMN id SET DEFAULT nextval('public.utilitario_id_seq'::regclass);
 <   ALTER TABLE public.utilitario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �          0    25865    ataque 
   TABLE DATA           b   COPY public.ataque (id, nome, accuracy, power, id_tipo, categoria, pp, tm, descricao) FROM stdin;
    public          postgres    false    231   ��       �          0    25789    cidade 
   TABLE DATA           5   COPY public.cidade (id, id_regiao, nome) FROM stdin;
    public          postgres    false    219   �      �          0    25771    classe 
   TABLE DATA           2   COPY public.classe (id, nome, premio) FROM stdin;
    public          postgres    false    215   �                0    25964    equipe 
   TABLE DATA           2   COPY public.equipe (id, id_treinador) FROM stdin;
    public          postgres    false    245   �      �          0    25942    ginasio 
   TABLE DATA           K   COPY public.ginasio (id, id_cidade, id_treinador, id_insignia) FROM stdin;
    public          postgres    false    243   �      �          0    25812 
   habilidade 
   TABLE DATA           9   COPY public.habilidade (id, nome, descricao) FROM stdin;
    public          postgres    false    223   :"      �          0    25803    insignia 
   TABLE DATA           ,   COPY public.insignia (id, nome) FROM stdin;
    public          postgres    false    221   �J      �          0    25930 	   medicinal 
   TABLE DATA           U   COPY public.medicinal (id, url, id_mochila, nome, descricao, quantidade) FROM stdin;
    public          postgres    false    241   gL      �          0    25894    mochila 
   TABLE DATA           3   COPY public.mochila (id, id_treinador) FROM stdin;
    public          postgres    false    235   *Q      �          0    25823    nature 
   TABLE DATA           <   COPY public.nature (id, nome, aumenta, diminui) FROM stdin;
    public          postgres    false    225   wU                0    25998    pokedex 
   TABLE DATA           1   COPY public.pokedex (id, id_pokemon) FROM stdin;
    public          postgres    false    249   �V                0    25976    pokemon 
   TABLE DATA           �   COPY public.pokemon (id, url, nome, apelido, numero_pokedex, ataque_fisico, ataque_special, defesa_fisico, defesa_special, speed, nivel, hp, experiencia, status, id_habilidade, id_equipe, id_nature) FROM stdin;
    public          postgres    false    247   Bg                0    26035    pokemon_ataque 
   TABLE DATA           ?   COPY public.pokemon_ataque (id_pokemon, id_ataque) FROM stdin;
    public          postgres    false    252   �                0    26022    pokemon_tipo 
   TABLE DATA           ;   COPY public.pokemon_tipo (id_pokemon, id_tipo) FROM stdin;
    public          postgres    false    251   �L      �          0    25780    regiao 
   TABLE DATA           *   COPY public.regiao (id, nome) FROM stdin;
    public          postgres    false    217   `      �          0    25918 	   seguravel 
   TABLE DATA           U   COPY public.seguravel (id, url, id_mochila, nome, descricao, quantidade) FROM stdin;
    public          postgres    false    239   d`      �          0    25830    tipo 
   TABLE DATA           (   COPY public.tipo (id, nome) FROM stdin;
    public          postgres    false    227   �v      �          0    25851    tipo_efetivo 
   TABLE DATA           ?   COPY public.tipo_efetivo (id_atacante, id_efetivo) FROM stdin;
    public          postgres    false    229   �w      �          0    25838    tipo_fraqueza 
   TABLE DATA           ;   COPY public.tipo_fraqueza (id_forte, id_fraco) FROM stdin;
    public          postgres    false    228   x      �          0    25877 	   treinador 
   TABLE DATA           H   COPY public.treinador (url, id, nome, id_cidade, id_classe) FROM stdin;
    public          postgres    false    233   �x                0    26009    treinador_insignia 
   TABLE DATA           G   COPY public.treinador_insignia (id_treinador, id_insignia) FROM stdin;
    public          postgres    false    250   I�      �          0    25906 
   utilitario 
   TABLE DATA           V   COPY public.utilitario (id, url, id_mochila, nome, descricao, quantidade) FROM stdin;
    public          postgres    false    237   ��                  0    0    ataque_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ataque_id_seq', 915, true);
          public          postgres    false    230            !           0    0    cidade_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cidade_id_seq', 102, true);
          public          postgres    false    218            "           0    0    classe_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.classe_id_seq', 8, true);
          public          postgres    false    214            #           0    0    equipe_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.equipe_id_seq', 318, true);
          public          postgres    false    244            $           0    0    ginasio_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ginasio_id_seq', 49, true);
          public          postgres    false    242            %           0    0    habilidade_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.habilidade_id_seq', 297, true);
          public          postgres    false    222            &           0    0    insignia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.insignia_id_seq', 51, true);
          public          postgres    false    220            '           0    0    medicinal_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.medicinal_id_seq', 37, true);
          public          postgres    false    240            (           0    0    mochila_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mochila_id_seq', 321, true);
          public          postgres    false    234            )           0    0    nature_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.nature_id_seq', 25, true);
          public          postgres    false    224            *           0    0    pokedex_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pokedex_id_seq', 1191, true);
          public          postgres    false    248            +           0    0    pokemon_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pokemon_id_seq', 1192, true);
          public          postgres    false    246            ,           0    0    regiao_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.regiao_id_seq', 9, true);
          public          postgres    false    216            -           0    0    seguravel_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.seguravel_id_seq', 161, true);
          public          postgres    false    238            .           0    0    tipo_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tipo_id_seq', 18, true);
          public          postgres    false    226            /           0    0    treinador_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.treinador_id_seq', 322, true);
          public          postgres    false    232            0           0    0    utilitario_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.utilitario_id_seq', 13, true);
          public          postgres    false    236            $           2606    25870    ataque ataque_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ataque
    ADD CONSTRAINT ataque_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ataque DROP CONSTRAINT ataque_pkey;
       public            postgres    false    231                       2606    25796    cidade cidade_nome_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_nome_key UNIQUE (nome);
 @   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_nome_key;
       public            postgres    false    219                       2606    25794    cidade cidade_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_pkey;
       public            postgres    false    219            
           2606    25778    classe classe_nome_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.classe
    ADD CONSTRAINT classe_nome_key UNIQUE (nome);
 @   ALTER TABLE ONLY public.classe DROP CONSTRAINT classe_nome_key;
       public            postgres    false    215                       2606    25776    classe classe_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.classe
    ADD CONSTRAINT classe_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.classe DROP CONSTRAINT classe_pkey;
       public            postgres    false    215            2           2606    25969    equipe equipe_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.equipe
    ADD CONSTRAINT equipe_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.equipe DROP CONSTRAINT equipe_pkey;
       public            postgres    false    245            0           2606    25947    ginasio ginasio_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ginasio
    ADD CONSTRAINT ginasio_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ginasio DROP CONSTRAINT ginasio_pkey;
       public            postgres    false    243                       2606    25821    habilidade habilidade_nome_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.habilidade
    ADD CONSTRAINT habilidade_nome_key UNIQUE (nome);
 H   ALTER TABLE ONLY public.habilidade DROP CONSTRAINT habilidade_nome_key;
       public            postgres    false    223                       2606    25819    habilidade habilidade_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.habilidade
    ADD CONSTRAINT habilidade_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.habilidade DROP CONSTRAINT habilidade_pkey;
       public            postgres    false    223                       2606    25810    insignia insignia_nome_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.insignia
    ADD CONSTRAINT insignia_nome_key UNIQUE (nome);
 D   ALTER TABLE ONLY public.insignia DROP CONSTRAINT insignia_nome_key;
       public            postgres    false    221                       2606    25808    insignia insignia_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.insignia
    ADD CONSTRAINT insignia_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.insignia DROP CONSTRAINT insignia_pkey;
       public            postgres    false    221            .           2606    25935    medicinal medicinal_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.medicinal
    ADD CONSTRAINT medicinal_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.medicinal DROP CONSTRAINT medicinal_pkey;
       public            postgres    false    241            (           2606    25899    mochila mochila_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.mochila
    ADD CONSTRAINT mochila_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.mochila DROP CONSTRAINT mochila_pkey;
       public            postgres    false    235                       2606    25828    nature nature_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.nature
    ADD CONSTRAINT nature_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.nature DROP CONSTRAINT nature_pkey;
       public            postgres    false    225            6           2606    26003    pokedex pokedex_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pokedex
    ADD CONSTRAINT pokedex_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pokedex DROP CONSTRAINT pokedex_pkey;
       public            postgres    false    249            4           2606    25981    pokemon pokemon_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT pokemon_pkey;
       public            postgres    false    247                       2606    25787    regiao regiao_nome_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.regiao
    ADD CONSTRAINT regiao_nome_key UNIQUE (nome);
 @   ALTER TABLE ONLY public.regiao DROP CONSTRAINT regiao_nome_key;
       public            postgres    false    217                       2606    25785    regiao regiao_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.regiao
    ADD CONSTRAINT regiao_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.regiao DROP CONSTRAINT regiao_pkey;
       public            postgres    false    217            ,           2606    25923    seguravel seguravel_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.seguravel
    ADD CONSTRAINT seguravel_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.seguravel DROP CONSTRAINT seguravel_pkey;
       public            postgres    false    239                        2606    25837    tipo tipo_nome_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.tipo
    ADD CONSTRAINT tipo_nome_key UNIQUE (nome);
 <   ALTER TABLE ONLY public.tipo DROP CONSTRAINT tipo_nome_key;
       public            postgres    false    227            "           2606    25835    tipo tipo_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tipo
    ADD CONSTRAINT tipo_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tipo DROP CONSTRAINT tipo_pkey;
       public            postgres    false    227            &           2606    25882    treinador treinador_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.treinador
    ADD CONSTRAINT treinador_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.treinador DROP CONSTRAINT treinador_pkey;
       public            postgres    false    233            *           2606    25911    utilitario utilitario_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.utilitario
    ADD CONSTRAINT utilitario_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.utilitario DROP CONSTRAINT utilitario_pkey;
       public            postgres    false    237            R           2620    26059    treinador treinadorpocao    TRIGGER     z   CREATE TRIGGER treinadorpocao AFTER INSERT ON public.treinador FOR EACH ROW EXECUTE FUNCTION public.novotreinadorpocao();
 1   DROP TRIGGER treinadorpocao ON public.treinador;
       public          postgres    false    253    233            S           2620    26060    treinador treinadorpokemon    TRIGGER     ~   CREATE TRIGGER treinadorpokemon AFTER INSERT ON public.treinador FOR EACH ROW EXECUTE FUNCTION public.novotreinadorpokemon();
 3   DROP TRIGGER treinadorpokemon ON public.treinador;
       public          postgres    false    233    265            <           2606    25871    ataque ataque_id_tipo_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.ataque
    ADD CONSTRAINT ataque_id_tipo_fkey FOREIGN KEY (id_tipo) REFERENCES public.tipo(id);
 D   ALTER TABLE ONLY public.ataque DROP CONSTRAINT ataque_id_tipo_fkey;
       public          postgres    false    231    3362    227            7           2606    25797    cidade cidade_id_regiao_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_id_regiao_fkey FOREIGN KEY (id_regiao) REFERENCES public.regiao(nome);
 F   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_id_regiao_fkey;
       public          postgres    false    217    219    3342            F           2606    25970    equipe equipe_id_treinador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipe
    ADD CONSTRAINT equipe_id_treinador_fkey FOREIGN KEY (id_treinador) REFERENCES public.treinador(id);
 I   ALTER TABLE ONLY public.equipe DROP CONSTRAINT equipe_id_treinador_fkey;
       public          postgres    false    3366    245    233            C           2606    25948    ginasio ginasio_id_cidade_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ginasio
    ADD CONSTRAINT ginasio_id_cidade_fkey FOREIGN KEY (id_cidade) REFERENCES public.cidade(nome);
 H   ALTER TABLE ONLY public.ginasio DROP CONSTRAINT ginasio_id_cidade_fkey;
       public          postgres    false    3346    243    219            D           2606    25958     ginasio ginasio_id_insignia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ginasio
    ADD CONSTRAINT ginasio_id_insignia_fkey FOREIGN KEY (id_insignia) REFERENCES public.insignia(nome);
 J   ALTER TABLE ONLY public.ginasio DROP CONSTRAINT ginasio_id_insignia_fkey;
       public          postgres    false    3350    243    221            E           2606    25953 !   ginasio ginasio_id_treinador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ginasio
    ADD CONSTRAINT ginasio_id_treinador_fkey FOREIGN KEY (id_treinador) REFERENCES public.treinador(id);
 K   ALTER TABLE ONLY public.ginasio DROP CONSTRAINT ginasio_id_treinador_fkey;
       public          postgres    false    243    3366    233            B           2606    25936 #   medicinal medicinal_id_mochila_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicinal
    ADD CONSTRAINT medicinal_id_mochila_fkey FOREIGN KEY (id_mochila) REFERENCES public.mochila(id);
 M   ALTER TABLE ONLY public.medicinal DROP CONSTRAINT medicinal_id_mochila_fkey;
       public          postgres    false    235    3368    241            ?           2606    25900 !   mochila mochila_id_treinador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mochila
    ADD CONSTRAINT mochila_id_treinador_fkey FOREIGN KEY (id_treinador) REFERENCES public.treinador(id);
 K   ALTER TABLE ONLY public.mochila DROP CONSTRAINT mochila_id_treinador_fkey;
       public          postgres    false    233    3366    235            K           2606    26004    pokedex pokedex_id_pokemon_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokedex
    ADD CONSTRAINT pokedex_id_pokemon_fkey FOREIGN KEY (id_pokemon) REFERENCES public.pokemon(id);
 I   ALTER TABLE ONLY public.pokedex DROP CONSTRAINT pokedex_id_pokemon_fkey;
       public          postgres    false    3380    249    247            P           2606    26043 ,   pokemon_ataque pokemon_ataque_id_ataque_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_ataque
    ADD CONSTRAINT pokemon_ataque_id_ataque_fkey FOREIGN KEY (id_ataque) REFERENCES public.ataque(id);
 V   ALTER TABLE ONLY public.pokemon_ataque DROP CONSTRAINT pokemon_ataque_id_ataque_fkey;
       public          postgres    false    3364    252    231            Q           2606    26038 -   pokemon_ataque pokemon_ataque_id_pokemon_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_ataque
    ADD CONSTRAINT pokemon_ataque_id_pokemon_fkey FOREIGN KEY (id_pokemon) REFERENCES public.pokemon(id);
 W   ALTER TABLE ONLY public.pokemon_ataque DROP CONSTRAINT pokemon_ataque_id_pokemon_fkey;
       public          postgres    false    247    252    3380            G           2606    25987    pokemon pokemon_id_equipe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_id_equipe_fkey FOREIGN KEY (id_equipe) REFERENCES public.equipe(id);
 H   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT pokemon_id_equipe_fkey;
       public          postgres    false    3378    245    247            H           2606    25982 "   pokemon pokemon_id_habilidade_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_id_habilidade_fkey FOREIGN KEY (id_habilidade) REFERENCES public.habilidade(id);
 L   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT pokemon_id_habilidade_fkey;
       public          postgres    false    3356    223    247            I           2606    25992    pokemon pokemon_id_nature_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_id_nature_fkey FOREIGN KEY (id_nature) REFERENCES public.nature(id);
 H   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT pokemon_id_nature_fkey;
       public          postgres    false    3358    225    247            J           2606    26054 #   pokemon pokemon_numero_pokedex_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_numero_pokedex_fkey FOREIGN KEY (numero_pokedex) REFERENCES public.pokedex(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT pokemon_numero_pokedex_fkey;
       public          postgres    false    3382    247    249            N           2606    26025 )   pokemon_tipo pokemon_tipo_id_pokemon_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_tipo
    ADD CONSTRAINT pokemon_tipo_id_pokemon_fkey FOREIGN KEY (id_pokemon) REFERENCES public.pokemon(id);
 S   ALTER TABLE ONLY public.pokemon_tipo DROP CONSTRAINT pokemon_tipo_id_pokemon_fkey;
       public          postgres    false    251    247    3380            O           2606    26030 &   pokemon_tipo pokemon_tipo_id_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_tipo
    ADD CONSTRAINT pokemon_tipo_id_tipo_fkey FOREIGN KEY (id_tipo) REFERENCES public.tipo(nome);
 P   ALTER TABLE ONLY public.pokemon_tipo DROP CONSTRAINT pokemon_tipo_id_tipo_fkey;
       public          postgres    false    227    3360    251            A           2606    25924 #   seguravel seguravel_id_mochila_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seguravel
    ADD CONSTRAINT seguravel_id_mochila_fkey FOREIGN KEY (id_mochila) REFERENCES public.mochila(id);
 M   ALTER TABLE ONLY public.seguravel DROP CONSTRAINT seguravel_id_mochila_fkey;
       public          postgres    false    235    239    3368            :           2606    25854 *   tipo_efetivo tipo_efetivo_id_atacante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_efetivo
    ADD CONSTRAINT tipo_efetivo_id_atacante_fkey FOREIGN KEY (id_atacante) REFERENCES public.tipo(id);
 T   ALTER TABLE ONLY public.tipo_efetivo DROP CONSTRAINT tipo_efetivo_id_atacante_fkey;
       public          postgres    false    3362    229    227            ;           2606    25859 )   tipo_efetivo tipo_efetivo_id_efetivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_efetivo
    ADD CONSTRAINT tipo_efetivo_id_efetivo_fkey FOREIGN KEY (id_efetivo) REFERENCES public.tipo(id);
 S   ALTER TABLE ONLY public.tipo_efetivo DROP CONSTRAINT tipo_efetivo_id_efetivo_fkey;
       public          postgres    false    229    3362    227            8           2606    25841 )   tipo_fraqueza tipo_fraqueza_id_forte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_fraqueza
    ADD CONSTRAINT tipo_fraqueza_id_forte_fkey FOREIGN KEY (id_forte) REFERENCES public.tipo(id);
 S   ALTER TABLE ONLY public.tipo_fraqueza DROP CONSTRAINT tipo_fraqueza_id_forte_fkey;
       public          postgres    false    3362    228    227            9           2606    25846 )   tipo_fraqueza tipo_fraqueza_id_fraco_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_fraqueza
    ADD CONSTRAINT tipo_fraqueza_id_fraco_fkey FOREIGN KEY (id_fraco) REFERENCES public.tipo(id);
 S   ALTER TABLE ONLY public.tipo_fraqueza DROP CONSTRAINT tipo_fraqueza_id_fraco_fkey;
       public          postgres    false    227    228    3362            =           2606    25883 "   treinador treinador_id_cidade_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.treinador
    ADD CONSTRAINT treinador_id_cidade_fkey FOREIGN KEY (id_cidade) REFERENCES public.cidade(nome);
 L   ALTER TABLE ONLY public.treinador DROP CONSTRAINT treinador_id_cidade_fkey;
       public          postgres    false    233    3346    219            >           2606    25888 "   treinador treinador_id_classe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.treinador
    ADD CONSTRAINT treinador_id_classe_fkey FOREIGN KEY (id_classe) REFERENCES public.classe(nome);
 L   ALTER TABLE ONLY public.treinador DROP CONSTRAINT treinador_id_classe_fkey;
       public          postgres    false    215    233    3338            L           2606    26017 6   treinador_insignia treinador_insignia_id_insignia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.treinador_insignia
    ADD CONSTRAINT treinador_insignia_id_insignia_fkey FOREIGN KEY (id_insignia) REFERENCES public.insignia(id);
 `   ALTER TABLE ONLY public.treinador_insignia DROP CONSTRAINT treinador_insignia_id_insignia_fkey;
       public          postgres    false    250    3352    221            M           2606    26012 7   treinador_insignia treinador_insignia_id_treinador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.treinador_insignia
    ADD CONSTRAINT treinador_insignia_id_treinador_fkey FOREIGN KEY (id_treinador) REFERENCES public.treinador(id);
 a   ALTER TABLE ONLY public.treinador_insignia DROP CONSTRAINT treinador_insignia_id_treinador_fkey;
       public          postgres    false    233    3366    250            @           2606    25912 %   utilitario utilitario_id_mochila_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilitario
    ADD CONSTRAINT utilitario_id_mochila_fkey FOREIGN KEY (id_mochila) REFERENCES public.mochila(id);
 O   ALTER TABLE ONLY public.utilitario DROP CONSTRAINT utilitario_id_mochila_fkey;
       public          postgres    false    237    3368    235            �      x��}Kv�H��ع
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
�@��z�sA�?}� .bi3��fwt7�>b�9�b�B������=p�`sU�zJ�ތz�_��xi%Rٍ���d�F8�e-c�K���W�΢vҴ�bɘw��]��Rrx�B|�EQX�(G/����9��Z���Ƙ'�M         ,  x���UD1ѵ��o�B�qpŢO����iѲG�#g�\�r��'o�|�}Ѿl-Z�֣�l#��6��l+�ʶ��l'��v��l/���E����~�Գ��#��>���+������'��~���/����b�=��ү9r�3Ǌ�r�;ǉqr�7ǋ�r~1��-f��c��#���9s��+玹s��'�ys��/����b�\=V�5b�\3�O�G�r�X;׉ur�X7׋�r���-v��c��#��=c��+����s��'��}s��/�����<=N�3�<3�̳�<;�o��s��87ϋ��~q��-n�����#��;�μ+�ʻ��'��֗{�/�����|=^�7�|3�̷�|;��w�|72�Ql������ȇ�"F>�|(�`���ʇ�*V>�|h����+��i+��pE\!W�tE]aW�xE^�W�|E_ᇿ@��z�[ ۃ�h{HlPm����!�AR�o����2���N���� *�FHE��i�h{Xm`mo�c%�=Ȋ���[���۠+l���_��� ,��*kK[{@m�̢��Z�=L7P����l��v݁:��-���Ņ���s���ޠ.���E�;uY���h{�o�m�����@�=4��w�Vձ�Gq�챡�A�=F4J��ǊF���Ѩ!�ޫ�W��_@��A~t~�v���!�1�G�h����kuQ���h{���m������C����u��B׉���u��ՙ�;]��.u���u��Z׹�{]�.v�l~t~��Ǐ��u���C�=~t~��Ǐ������!�?:?Dۛ���Cb�����C�=~t~��?:?D��G�h{�^�z���C�=~t~��Ǐ������!�?:?D�����cg�����C������!�?:?D��G�h{�^�z>��C�=~t~��Ǐ������!�?:?Dۻ�׃l��e�Ǐ������!�?:?D��G�h{�^�z�덯G�+��z~~����c�C����=����-�k�_C��`����c�C�=~~��Ǐ����ߟ��5n!      �   a  x�uUKr�6]���"����8eˮ���d�!%P��"�HVYx��biڤ�`fV*QOݯ�{݌؋|s'�N,I؃i��;�`R��W+*�1[H�Z��D�!h� <a�k���p�4���[�R=���B�
���OT��
�[�"�����q`,��;/���~�`�\�x��� N�dQ6;�z-Z�{U�J�O<��zk�|N�9���~�Q�Y�tx�MSJy�pQ�q��W���Aey�;���ϊ��D�#`�V�:{�Z5]�|]T�H�E���]�Pr;y������J7Κa�'��)Q�^�p�+e���fle���*�z�iX����V%U�٭@�$�{��W�_l?WVs�vou)ڲ�iĶ���.��ќ=kuT��Ǝ>��QP���dm�+fߑ�5v)����� ��+vA)F�� ��@ŴC�����(�I�	{>H�*{	��L���H֕��V�I[��)wY�h8����gl	�7��a�u�8gKUo��F)�!�+���ݠں#�_���++7gO�q�&�g7n�/��h�軘g�����hy�k�ӥ'�G[k�P��T̮��Dw�
Ϟ�7Zr��+�k�R�8JC��.�Ik�����,��ny��G_+����:�Z���<�e�@[��Z��y�%����9�I�zҬ`�p�;��K��݁��GW�ԇ��4�ӜD�O���Z��e��H�q"���.�d��9����LA>l>T��S��]�7��k@��ix��/������r����㌶a�_С���8ݿE����ʇ:/-֠y��;z�:�Q2${_���`װ� y�=�(����[BǊ,����3��?�N��      �      x��]IsG�>E#���8R)yZ29�ڎ�K�� R,Tµ��N3�ds�pG��K�l��2�*kIɞ9t[�^no�ޖ�Ηb����U~΋�Lr�p��2�2�꽢�Y���Vf[�j�ß
�����/[��<�2U��e��?��N�"3�:MĶA���A��NC���2E.0X>��b��x�0ś��~y2�W��0�&��)����HrI���K�T`�mi��k�w뭂~���w2\�D�=��\�E%¥�o�˓Qp���Xm�x��ȕT�*I�,���������Ϲ�D��d���ko9^��&�7����������8W[,|jk��VI\U��0Z�HŞNK$�-���k�҇_1���3�����df�Z�9o��Ԏq��q�����w�tz�M�GG&���R��D*�89�]�S����*�&D*�^���2.iCf��`O3ư��v2Rt8[�9^�Y�������2�O�������N�J'����2�.�a�DJU�9 �5Y?�;�Hⲝ�0�^�ʽ�i�^h�z��y*�#ا�'��<�������mw{�T�6�,\� 1>���@`��(T|$�꜑J"�_� �����K�*����$5:M[+����c\��N�{��\�e��WV5�/̵�K4��`Z"IJ9���Y������(�%Yx����Oz�`9�b�Mɼ߳kY���.���sU@�*�*
��U*�]p��l�h�ғ�'�Q�J,�7xc�7rY|��/�N�Jʋ��D��"	�;�F��K���G�t��1X��2�6�m��z���ՔE�n����=Vu*}��;I*O�Ao%��!��4�����Ù�J�p�I�0� �)�x/�4VB'��9��s(�̉NsT�M�u��<8T���k�s&�c����-�,|mQ�9J����9mu��DZ[�Xb'���!����&Qk���Yp�[��J>	�qz,��m'�z,���������5T��n�a*��#,&��"Uw2)-$TvƩ�f��b	_�7�"��� �589X8�蠟�K�e�2Y*��>��51����Z��Ӗ�#��Y�a��hVY�-�Y�����KkbV�j�{��	(����o]��`�>�H3��y�����J���Y椪JcGo����П3��	�q�4P�5��1�A�J��k�e����kN��2�r��g�N��U,�Ho	����Х^�&���<��/��LG �Tı̱�zud~"^I�+'����p�t=s
�>]@���/>��.�'�q�z#���A7d�I��?�d0%� }l�ɒ[6�P�8��:Q�*Y��K��T@��o:E.����ڨ3IF��)�x=�@����)Bw��0�^0��:ջ��:�`��փ�t\��
hG�f��X�Y_���7��qʦ1�E����B	N!���d��),c�1u��Wd�sς�8�4|��r�Uf5���h���RT*cKb>2��͜+8:�c �p�I_!`5�H�+�M&&$V	��T�Ka �al�x�Ԃ�l�h�-H�|�P����8�*' v+\��m�7�5�E[3��=m��^�W5�l��)�/48�~��3d(!���}đk���ڒ����v�^9Bôr���MBj�G�,��/H4�l��i��^K��8�t�2Z5�'>��¿���=�"����.g
\ �:��L�v�8�"��{�x���+:-�(o!x��A'�큻M�������=nw-|�O�İ�q%�M*���dVO����v�#Tx#�24x"{�h0�u,���-��;��xK%�"���`K_�/�c��'�N;��)'_p"���� �q���Y�I"y�PV,��y����ؚw�+��H#`��OѥT������65��I�v�0f�K�+rv��e��#�z�i�٬5A}��5�zxq����=�.��(:�a� n^z�]Đ
a����$)	I�=�ᲜF�a� �1wP&{	�4؄8�j$�� �A8��֝�״�?ЋᆰBO|��b	�@;��z��2J�a�t���}�t�l��j�lG�:�K�)a��Ӟ���	�0��p�����7�/15X.�-@�{7/�ө�Bz++�`&�a�8�%�W��6�6��qI^��K�`� �5��pg"��_e-�il��ᗥ2[�>\DO.��z��A!��i���_36Ŭ��C�������ɨO���� B���L�N4"֧�e�T*�Yz�L``.�����[�
�0)xK�0X�AX� �e5�8���<���2Ɔ!���J�0�L7 ��p��=��L���Vƫo@>-��G<�_B�����o�m��0NUf��;綧�g�T�@�L�>�bo�W�QjT]`�N��=�K������?�H�{0�K	����4X���T�1֙ޅ���GʎgY��ǳȍ&x�H�^ep/������'�)��yp[��h49�%jn2�(j8mK�bNxq$�t]��0�Y@C���m|M�^ǔ$|�	�x���]���xjd�G5�97���[x�`]�q��^��@8�ۜBC��`4��[T-bO+-�Ji�/��>����{��q�")��~[z��.��7*�(��U�d�K]'���9��8TH���?^�|�;���d^�C�����w	��u�� ,�U�[ه�J�ՌOۥsg��A�����6F�d�}<;�s.U��]���P�����.l��gÙ҄��G:���w��l�;��L�
-k�����*%�Nv�W����*P���e��6�ԥ�+���)c�5��d���b�ɟK¸Ƭ��_<�&I���*j�bEV�L�<�{F�V��N���.��y]p�-%�{s��k� �42�H.U�v$W��K����΂�Ƈ�Jk����w�s����n/��apf���h�9��o�
RԷ�5k��$�N�ݲ_s7z2��Bai��?�b��J����Yp�Z�(�ש�6�`a3ϺǪ*V����*1�p!�TE!��L2��!|�^��mz������Hw������v��(δ�*��8a}n�n����l	Gۇw?�B˨��3Ls\ �e�*�iP�挓Sv 8gkl�^�j���y�DNFp�D����%�N&��R��UfF���(a�9I�69�?��1X� �oa3�O���rƍU@L�S�v�د�)@���ۆ N�4�Tژ��IY&1~j;.KCb���M#�h�l^��34ܑH����]�1A~�.x�Vy;zNlв������4�c�qz�F⼠{���:�e�� B�x�k/Z���M)M�kY�*���Fl�1b#����GZ�_?(Z�JV���\��d�!߲�D���H���P���j���ЄVz2��x�
قؐ�݋�t�p���sڙw�HTc_t#�M!�-#"ʑ��0���2|[�@#�7��Cvk�D�tL�gw��5'7��5P�%R�1||r+��|K�`@h���x"�?`AПol�,x�X�O�����4�F �"m$���9�ߋD}�悝ʂ}k���,x����-��ё��٨���<�Үr"��  �&�j?�KWЁ�1���j���KI�%�%���a����=��BX��&�kbA�-{X����a�.�������	�
O͆���8� |��u�=����k1�Q�ٖ~�͙jWT�Û2��`>���W#0oa�p��ǣ��y�p
ڟ��&���2�6�X�v�|�Q�k���^�����^Ļ������fa/V��o �fb�8�M�@�(�$^섭���e6��'ۢ"�)S+B���sD��Z���R�<�<>J��}]�w�M��_yy2?މe��]@r�g��6�9�[�^�Y���U��	��21��q]ouE!Jؔ�ţS�:�Xg���LL7J�0���Sgb��[�q�� �(����������#|+m�ר슧;�<�ǻU:l� ��|��0:i���uR�.L    �1��KḂD�#<f�.����M��w��GDw0>xS���̚,5�·"�`1W��ʤ�@+�{�)��$xW��ɴyuG�CO�)��WT�u�2i!M�MX�g ��<��;����+�ܑ���<xwX����5�c�:�vY�4� �ޓ�BU��Îr�Ux�*0���yl������"�z��N�,9���,i�¾�ʐ0�pË�6�L�RD�Q��C^��L�mj4d�����˭ͥR�ҘI��S�K)FK"#�fMԿ�)�B<��*P��˸B���U�~yY��5�w�����Y�Y$�&ECK��o�D���&I�Q�GC���⸠Pv^q)nl(�b2^����55�	g�y?�e���i7�M-��V�ؿ3�Ю����ǯ���q�<K�,?��f	�I*����Ҕ]gy]� "P���ֺ"q�dF���:�鸲x����$�����A�]N��hk��g��d�b��	�1�<5�*M���@{,Zcp?7fBE֞��栋�Xf�U���9��	����`֦6�+�w�{�|]��jM���rqL�@挊==*����h*`�K<�oxU�@J@�xJ#��6Q����\����F<?��Ս-���?ۢ%�[J��f���4���}�
a�W"]dtt�:i�1���r��)��~e�w�q�f�K�dĪ+�y] Ξ�I�/0>j��2�Ż�a��M8֣kϰX�ժ��$�F�D�C�i*��/R&T�,;SY<�;�����k�1k6^�4<�K��aho�z��f�]eI���g���_E�����IEZ�S�y�Ƴ�����p�(�ག!���-4������sLn49����t0 ��&w0�Pn���`h�M�|�F��&TB`[C2U-����Fz!�z���ӏxb���Wup<��c4���.��^0eSx���F�T�;_*�6;�ny%�<)���緛�i�fY|A�`F0o��J���ZD�,T��`itتi��8��7o.n���+�	�E�1<1u��A+����Ie箲�*�ԋ,5R���,x��e��#h2J�ި-W"�G�i\)r���X�{���dp#W��ewL�i���3KѨ?��[V�@b��%�-{S�SN��^�KS��I�L�#�l=HI��|;���7�U"i�
k�:���#�X�5�"�\�梮��H�7M�F�F"f�b�O���y��4H���`���m8$�@6�uǾ����������f�+(8bA(�&�M�G <6��Z�Jh��Q��b�$K]�!��V��ut��4�8�  �d_�n�ʪ�m�j�9�HT����$�����HQm�/y����Y�j�Ƙ`dY�l/���4� ��������3ڋ��*�M@�H�@2)�g�pd^H�OF���e����[�"!�
�4�z1�˞�r���.�X�K�~� ��Yǃ��ׯ�I�G�R/MSx�s��U�,%6͒��;VFV�b#�SM�u���6�2v� ˵�ؘD��ٛ�/����x1h��x
9V���uc���?������k�LL���L(���˃'#Hg�#cmpc���މE굳㦢z�Y#��M����Ge�m�mhL-�_s��p{�:=d�<HV���� �T�]"�)������F��p"U���jqix���X��l��_�W��v�P� ���&	�?D2V`���4�\�@�u�Kp�Z��,M|�����^��b��=�I0M���87[����0����  �.R�3�Z��sZ�"��Tgfޯ��sw�5}���"հ]�|���k*�H���^�r|+�@\op-�wӳ�;ƥ�����l�_����vx���t�a��s�k�����Uz&��{(���>W����Bi����?ޜ�<��H9�^���ܩ���"�z�U�	E�W���/��լi����U)�ڵ�n��Hɚ���
rl��%V��Qp��՞*߻ݜ�����Sn;A�G�*��&.��<=�а��jG|�,�*�Z�{��zz�kV/	�B�"#-L/0M���*M������K�?�W04GT+N0*8c�_0>:V�0�$3;)~w�i�1Hvr���^-R[;���W噰�ip��ڠ��3��V-ӝ�T*q�Om���#l"a��I�S}��nT[���~��x\�'�?��n��7Ҧ�"ޟ�טqb*7L�3���R�k����FA'}� Mׯ!��.5�  ��8���k8��Ƥ�����1a.ck�#Vس����Y-������[ϵ��Q-Y��:�z��N�mk�$cK�;L�d\��n��;�7��9/n�J����+��R�6�XO��#�ص�k&����~wF)�8����)e���"ɴ;X�i`�I|�]w�\r��7V��'�����o�f2�!� I�ڪ��Y��v�X��P�?�kJ���d標d��qpo�[t�x�uxChLf�3V=���>roy{�x�U�X��*ja��&y����.\��lZ��+HЕ���6����I)L�8y���j�$9o6R�8�kѠ��6]pZ������Y�?�޿L����\��,�۝΃s��Z�d�l�M�u$g<��H:5c�S�H�g��p��,K�u6��e4d
�A�������FUפfs�z�2��k�d|+�* Up�$m�R|k�����O'D/ۖ�Sf�U�{�]�ܟN�"a!����|�Nt�l�O%����<�x��!����1�̘<�������}]W�=��M�R>�9���C�o$��7\��5>˹"z|�$�Ρ�2��.�ƿ\ y�t�d<;D�G���_��AB��.��k�w������np�<:V��kN.9<t�4H8���\='�F�����ΆDA���-br�3�W4�ﵮ��v}��������]�>�'�iF#�]�];��\VjU�Ue�����[xj��I���� >�GZ��JV!ZVQ��z��& 
܄�{�\R�L.2W���RG�
"l�K�����w��(�0����Md+3�~jó?���
��y����.���w�UM��.��*��I�l�='�>�7t�o ҏ����f=���9����.�hؽ�-�]�K2J��O���ϸn��οH�\r#q�����}�'w��Gĝ._g��7Z� 2��W������[��ߌ��C�a�g�WJ���u���h)���9 �Qp��t�*�J�SI����|���"Nm����Z�>�ΉZ�Ʌ�>k{A�y���~|�����]�?�7�oخ�WŃO?H����1��4 �D���Ht�����0�w��;��՟c�%���s�*����V�28��Ix~/�*��5w)gy�"��s���,�dΌ���h�~p�9(�
�v�Y�N��q"��gq�;���pd0���tS@�=��'Ⱦ��0��B��غ�	G�p��Tؐ,$TO�ˋԸ�tp64K����������[�.y��,�țLkc����P5Mg�������^��Dw���(c���0{#V�ng�l4������i
��6�h��1ب�mA���u��Tv1
��K̶�3��Ԇ���H,7 ���Z�sO����MI�d�.����f�k*v�C+���V־4�^fgm�ԭX���Z]a�'͜��o���Q��t�4�4M�'�[ے��2��'C�r)ID��s ��\�j3eڄ�R�����"��C�77����n�?���^��j�A�Oe}��D��v�6���F4�}Y�\]q(��W���ДC�m��{w�����`�L��̦T����Q��^X/�S_��k�Z66�>��_�YS�!�#���:��4�2<%�����r����6tfw*iɁ�഼�Q�X.�g�l�0�*�ۄhsAl��K|�P�q��w}E�����4���m�����AI�e�N$ѾguЇ
�3�����7���z�%�EL-�਎�SM��nK�8ⶥ�v��q�U#q,F��uMM���l��{[-����}Ȥ��Uu\������X������^%w�{�vH7��s+M|�����ye?������!{b��.&�ÑS�6�e���l�>�1L۸ U  8���1 z1��o�-���� ������4�L����,N������/7㍆@&ؗ� �w�����j��9N�EJ5�G`K�#�ܰ�`��X�����q�*gŗ�67N�3?��Ӛ?�;�Id
�7Ж@���`?���t;u��#^E�hh0�рjibg�p3�` ��E��M�q�A猹��])�I�%5~c�h�di:��
ô~���_:��q?Є�s��]�����1��.!Ṹ��垛�vԶ�צ�zצ	U�M1�\�M���'�!Ǎ�m���.wG��=���D�ڂ��� gW~�1�3�e�l���֓6��*����LY|�	/�$k�[��z�/Գo�ѧ4:}��i]��dY�iRޕC H9Xl%j̴?�L6 U���*�V�9ޖ��v���fUc��r5,����Y��ރ��@��:�{��U��n߼{�w�~�۵�M�D�#7	�@�1uP�L�Jr�ѡ'*4�d����uV�h�%蒄)����K�2��6��2�U�V[��Pu��a��i�*켵m��H��֍�I,X�b�ut��&>�?�c0"IO���_�3
6,~]�c�I�����r���@�@��F$�EZ�(��y��Vp3YӾ���=�/��%��D�T|�j?b �wƏ �ED-���b�5<�{�����> rF��-�*�.�#-q�k޹�����YV8�0�~6
C��N�n�!W����������QUM���}�ӸxX�TjS�]��~~AU�L���Ӟ~�=�!�{[����[����WTk�����v2�!S~4�7>8���0P\/�g����S�Mym
Q���Y�{�ML<R��g�Pf�R�&B�hes��R)Sh��k���Jn�K%�1�ڽZ����p�>�K��PNԈ�����w��5�f����,@��]({��`��0�'U�MU)w�\����h�P#X(,*ܼ�
bl��\��e��ەy]��`��K^�V7�yX����"�y�w?H`~^FdA����[��p0�a�d�I߹8j�[TU������%��	�>u�M�?<u��`r|��&1�LO��ك_�"�W��>��r'�́��w\�RS��/F����cD®�i&�EPUޑ�
s|e�`2>n$�D/>G�~�F� ��ج�U~:��0<'xE�h��5���ؒ�r4'�H]����~*�eƎ
���L�0v���Җ���T������n�="�&�(I�~�٩����XXSq��P��*R�Y!k �s?�2�Ps��u,�'5���m'�&�^�����Ġ^�����������o�L���H!s:NQ%t�eıD��-g�{(9�r��fH��Z47;�LD����;���g��[`��'�	���������=��)=U"بk����$S�oJ��n j������f�+z��Ԟo�Q�2$�Hz�_����t�5�'ܩ�<o��� P{L����f0���`\&����x���!O��L�9d7%�}�?�D�{p�^�y��2Ǘ(�k��"m��;UV�3P�(]ti�t�7��J<]]8�τi��Uf��֖|���r.�NL�]�4�=_i��w�fg�*��8�\��f;�Z��k=��[w��-L�k�3��?��u	�K�/I�!b0?�؆�x1��Ӿ�8{Ε�%8��J̆A��(�7=yY�ޡ��%c��!�[h�Q`�����أ+�a_�E�.���d�]���أ:�VBFQi�`6�#���I?#>U�j�JN��	4�Ԏ�^S�K��v�^4���ܜ���o�Jբf��Rܹo��s���Ln՜��<y�A�66�X�Mf����W��}n�i���b�����c���m50�;�1����g���~���;���\J@��Ju����\Y�k��~�#��[�j�x�������.��|�a�eY�[OB�����cE�����g�
���exk��@Lԉ�ri"XX��,��3p�]0�Ǡ�4�ʴzޖ]�[�1��L�͕ĺ/3�і}���Ώ�(���/�����~��[�_fB��$�`�L�T�u��|kLA0��|�����w}U(ڒ�K�>����O��[�����������      �   �  x�m�An�0EםS�	"JM�e�F�61l#�t3�� E�CɈ�K��.��t�2Y	���gސ����8����dg&��[��s�{�:�7� M._�g����J�,ǟ�G�R�8�v�U��88�§�uc�f�wiv,Vy���u�iK6@U�8��z.�<���s�g㓷ɽ_B�۪JL�G�R�.����X�*��sTqu<ik����Q�����{s0�
��}ڪR��/�	U��<�|m:^�K���gg5˗y�&��*�W��i.��fQb~2=���F=P��*�Fx��/iqyWC�u�mi|j�6w��	jI�\�{�\2���H�xT	�-��8�xԭ��H�;m����H���ǎ�-I�a`��X��d�uF��ZH����FB���A#!m�=4��s�Y>2|;��)��      �   �  x����R�6���Sh��0��8���Rni�X�M7�}pTd�HvHx�N�>@���G���2M��L�q>��9�Q|�����0i~��z�,:Uee}��bTq[�Q�n�TZ�0*��A��ma<��R�(B&R�f��@{���*��2'aB��aW�6�W΂1;�� ����dJ���^�L[�dJ��a�?����U��dЉ���=�b-tgHL.��%D�2�T�1����FJo	\v~L>�� �V^#a�4Ԣ��a�B�L<�������L�xF���.���qD>���Q���Z�;�?�p׀(�胅3�0��ǿU��HZ7��{ᮤ�`�z��ވ:��c�s
=�`��9H�:ڍV�p�Og���Ky�mF[C2�ZnvF�K�Y�5��w^~�������4q`!��P�2�v���B�I�t6p��nC���Δ.D��wk$@u��O��ز�����#r���6�P(WPB��P+%��՟!����dܕ�Zڻ�K�Ԭ)�I$�j!�W�QD}��.�߯7Y?]�K�:z��3{��(c6�[�2W�2����e2n�e���6 ���E��g]����5o,�a�jy�]��0�ǽGC�=��h!n{�a�4��'��AL���=,\�]�0`��ָ�m�k�+ E��8?���� ��я&���	�T�x�c-
e'/�E��j�<n�q��Vb'f�|������N>�2����|z��~���4gp�,�kY���.Ȼg�
%vj%�Ʀ�;cu�X���,}��X.b��Զs뺯.rm%,�~q�'4p���;ނ�u�D�P�;�>q��ƚ�"$_q/U�V�u=!(��V: n�)\������x�m� "�ʌ��J�M�4x�Ϊ>>���G)�*1.
h�"KdSe ͓Po�I@.:l�C,Ċp-fɥj�g8~eω��SٵU�����Wp��x��<���^;1����|{���jæ���^����Td��d���E.�h0K�+�o{��g��/V����h�$0 �JU��`�mb�U����o.���X��	��/��ⷰ0�B�Q(�/�򶟲����%j����p]$[u�������ճV�U��pam��4^��x�r����E�M�����R�����4���_w�$���hOܞ��b��:�3��_C�$��SJ���3F      �   =  x���u$1�3`̼X���o�|�)󔒺#@uT��|c�o��r��+O�'NVE=YUY#��ި��E�Y3��ZQ3kG�������]�OvGW����o�������e�虽�W���9�蓣b<9:�_r��~ϑ���1�+�̱c�'����q�x�|;��w��O|���+�|g�_�+ޙ�w�{���=��*�'�����u~o|>�/�7?�їߊo��[���v�'���b>9;f�1;�s��b�xg�/�Ox��1W�s�zb�\��ձ*׈չ�X#���5c�rV�����r�X;����O�]�G�������o��˽b�jw�۷��<�O�����8�g��<o�����q�<+�̳� �Ĺh`ϥ>�<y �`�Ƀ�&N�<Hy��`�˃���ti������%�"w���]�.v���%�wٻ�]��W�? ui�՗`{8ԥ=(ui��G]ڃdaR��`Y�ԥ=hָN�C�.���K{ -����B�.큵ЪK{���Zf����­.�A���K{�-����ú��������K{`.4봶�B�.큺P�K{�.d���k�K`ߺ��¸.���p�K{P/����ﺴ�Z���C����~!_���_�ץ=ti��]�#B�{��qA���P|Х=J'ti��]ڣFqC���=��9�Ͻ�N ?t�
���K���]���h~��E�G�C����uo�=~��?���Ǐ�.�����<��w���#������^�{�ﭾ��^�{�ｾ�^l~����h~��޸G�?zܻo���Ǐ�.����{&����K{�h~��?��/�=~��?���Ǐ�.����K{�h~��?��o�=~��?����?���Ǐ�.����K{��y_;{�Х=~4?ti��]��G�C�����Х=~���=~�S{�h~��?���Ǐ�.����K{��}_d{�Х=~4?ti��]��G�C�����Х�s����{���{���K/=??t�����.����ХW����ǏQ��{�Х=~~��??ti����2�?�5n�      �     x�U�ے� D���I4�ٗQ&��,`j���5��"V��g%�>x��v��'h��O$�"����E�E�ѡϛ|X��	<��!O̪]gС7��]���>q�Hi3��{�40�r�J��*%$�&��q��l��Kq�ʦ�%��umh�;X[e�ok޴k���>Z���R�*V����{���g4�3�2�bA����䜊��/VУu�JW<�g����ZH��Ľ��Ri��Ϋ��:!� [tͭ            x�5�˕�8D�5i�����17 ֢��Z̗�z��.W��U��_��=�~�k�˿���\�~�k�o���ּ��}�_�{��z�����������~�缾�;�R�wޥ^�K;�޻�2���s�u^�U޻>W�W�W�w���֫��������:�2�:ϫ����6��w{��ܭ\����^�����e�j�۸j�ۼ�ۺ���k�����W��w�W{�ޮ����S�>�據Wkw_W�w�W�x�6��^mݣ\mߣ^��G;����=�y�W/�X�u�u>W��|�k�z�����;���޻�9ϫ��{�Ͻ�k��*�(��ר�j�h�������mu_��y/�v��{���k>�.�|�]�Y�ݮY�ݯ��=��f��:������ޭ@���W)O��jy�/�Tͳ~�O(���R`�H�-e��N�k)'u��ײ�J[)H+���b[VPm'*�z��
nC�����6��;����6�����nc*��zW�Zm_��V��R�?�j��^�_�C�d�c����,�³Z�r-������/��|#��|���|#�
�	��e��W�>+~_���h�W�/�^5�K<ڽ��G'���x��z}zr}�|�|�,_�g]����K<r�3�#����>��}�������K<��+<����K<��+�W��T�>{��Ҥʗx$~��/�����ex���Yo��i=�o���e����ģu!�{$�z�#�˓n�9�ϗ�i�ox��{%�(^�uI^�wi^�y�^�{G.�H��#z9/=��%]��%}��%���%�����#{�{�y��4q<n����?�\��K�8�G�?�\��K��s�|.��%~�|=��?X\��K��q�D.��%~$��K� s�l.�c�'<��q���KϷ~��>?�C_M�G�[��J�C�-�p��"�~�2�|����ý����pO��%�?�[پ��'?~�ugx֝�Yo�g=~��������Z�/��\��K<>~����e�;w���˗x5_�x|-�p�%O?�{������W8O�oq_��p�%O+?�{�����^���ý�x<��p�%�[��j@���CH<�U~���� �xX��d�2<�>?Ԅ�_��f��ǚ=kv-'�F6.���]�wv/�����5;~��a�Y���g�>���jE���C�H��-?k�~�eG���"�+��Z�x����%?+?Ԍ��g�+�-<~����?�Y�?k��g����5~��^����m��e���񃏕jFf��5#��o�����=?+?Ԑ���g���^���Yg�/ó?Ԕ�_���CmI<~V~�-�K<>V~�-��%>?Ԗw�/�xY�Q���Gͦ�j�6�����jMf�j[��&�ζ6<[~�lm�Q���G���5\~�lq��K�lv��q�Q��凚��eÌ���5g����5'�x����$/[Ɏ�jN���C�I��M����e����jQ����%O[�z5<�𬗝>?[��'��ٲ��gˎd�?�̮�:���e��˖�?/[v��l�����p��F%/?Ԩěy�X_�I"�x�l�P��|���6�����C���%_?N����q��-~���o�'��CNx֍'�/�����=��-~��~����?����[��w��n��-~�<P��	/~��C�KOQ�n�P�ғ�?Լ�4���5/=Q=y4�L����̃ٓg2�f�P�����\_�����x������zox�{���`x��'$�;?8!�x���	����N�<5��r~.?��A�ϝܐx|������q�7d�Cq���ʏvX��#+^Z����ʏ�W~�<�������soy���G��e�\�x=�x��yF�o�S2o{��y����~��q��۞�e��<1���$o;?8#�����������<}��32<\~pF���3o�������K<����y\~pG���������r~�����ݝ�9!�>?~���?N�*���~��q2�u����?x:�OG���'��:�_G���;�x;x|񃯃�9��}s�����唸����\��̑Hx������(9�-9��%/?�x~pQ��r������\�x����i^�y^͉?�(��8��E�Wsl�����_��r��������G�n�).?8)���'%/?8)�x9��I������c%~�,����T)�K9W:����-��_�#'�4匉�#�L�9g:��&���d�r|��#gN�9u��X�Y�\�x���l_��w��������x�������K<�ݿě9@�����%�'?8.�x<��oK<~N~p\�|-Gq9a�����'?8.�x8�g���<��3~�oƏ�ý���������?�7��f�����e�x�ผ2ǄK�����9���e�x�������%�&?8.��<�9z���l9Y���e�2<\~p]��o����\�'?�.�J5sV�����ex��������%�&?8/��7��y������o�������K<N~����z�����K<^�9��_�gݹ�sٖ������9�����,?�9���9��nNis �s��6��9��10?F���1�!0�&?�
�ǻ��B���z���10?F���WH���d<�-~��g�z����zr��%�?�
�ǳŏ_���=C��m��x�[��;dN����wH<�-~��w+~�n�ޭ��s�ǻ?x���V��݊�[�w+~�n��-~�rH<~�rI<~����!�/����/��o�����������%?~����˗���%o?�9�/����?<���1��w��e�2<�_��y��x�^�У$�?�(Y��+2��{�C���Yg�����^�Ы$�?�*���2���^%�x���WI<^/~�U��^%�/˗�K<~�3հΙkX'�^��6N�;�^��7N�7ex���%�w�|�O&%EfVR%�w�h|����$�7?�6��3������&�������L_�J�/x���$�7?fF;����c��^<����cf�Ï�?~�yn�@�z����|���;~���x���w���<���;~�x�����?x���w��E����x���w���<���;~�x�C�������%?�>�J��C�Uf�դu�����3³��:����=3����'�x����I<^n~�}���z������wo~�}2�1<~�}�o�z������'������I<�m~�}�o{gԆ�3k���'������I<�m~�}/s�� +���!+��"+#��#+���������!l�)O����<���3<�	�,��`���,��`���,q��Y"��~��=KdFسD��=��	Gș��i�5�y�L�1�#��c���s�<Bf���'��?zd.�g��%s�<C�>���w��f���w�|&�����WC΢\Zg�J��1�æ�A�C���ç�)��21�Z-3�,A��Y�é�μ��]��%z��@�T��X��X������E�ʴ��]�>�+��'~e��D��[�����~��"�3A�����������������ȢT��>\ۙ�>d�.���N����3C�Z+�Ÿ��A5rF���$9K�ng���ng���ng���ng���@�������!g	��r��ș�>;S�,�����C������	�C��9����w�����L[3���f���#gКi�w1�.��r�����L_3���f2�3�l~g ����6���l&�;3���w�C�����>r�C&�;�!����i�Ns8��4�3�Os83�4�3�OO8s��3�OO����o���� rz�'�~zB��;=!c����9�NO� �'d���2���	���q~�����i�w���y�Ns�@�9d���2��i���4��w�C��;�!c��搹������	��ﴂ��w:@f�; ���b�]���8��+ �   8��O+F~ϐ�8�] �Xpp��Xpp�~d�|~f��}~h��}~j�
2��� ���t��w�ϴG���w�ϼG���>?�@����h��������D�?s�'Ɵ��������g����3�������o ���Z$��x�F�x~~	�����}��i��            x���[zɱ-�L�B��ʺ�o�t���ek7����[,�e(� HM=��ř�ɉ�"2+��| �g	�]���DF�Z�]ݟN�����?��?Ƈ~7�oo���O>����|��6�?�K���~��y?N�n�����;v��OwÇ���I�UuU�ov�����?����nǫ,/��|��\���Ǡ��ZwՖ��쪭�qW��ʪ�ʉ��q�_�<E�b�'h�ߟ�����o֝��*__�?X?]{��WE{U�W��0�e<\�_A�|U\�����x�����t�߅�>{+�<��?��߶�r뵴2D��&.�D���ո��xE���,�r�2al6�����^_ҫЍ��*[ˠ��g�KΎ�5�����a/��~ω��hf���WU�^����^��b�ӴW���B)��2VY<�Eu�zU'�3|�۠{���sU�"����UYc��5?�"�eE#�j�s8���������쿿���j2�ԢRy%SKfw#/�)�/Mԕ�d��iz=~M����Y�9�wu���Ņ�U�7Uq���\��^6�,_�$��_���a:m{��k��B}U�xU������>$�ѹ�����a��y��k�NcP�wߋ$YL�x��"Ï�o���]��d��K�R6e��x������"��#1�k��Y�	S��/ܕ��yOl*nNY��.ٞ�Yt�w��x��t�+y����)�*���͋K�\����d����\�ݩ����+�̂LD�yO>E��2V�%�aXe)��?u�Q���*�V����y��JK)���O����s�*Kىo�'������ϗ�X�))sDf����XN�2،�.:�2l�r��ZJَ?���_H}#�B�(k�#SY΢f���"o�[�z�]�K�������}#�Ovڲ�A)M�G��o��� ��y�]��~��ȿ{�[}5֙��L�5���2*y�].+���[��]��r��cxx���[ċ^��� *aow2<2}ݺ�)\���Bfs�r)��a���9(�(�fT�A��˧l�EMKTfûn�rL�嘅S�\�^K5��i�5A/���G���ڢ�)#�,/֕�.왕K1�M�X���0�F"�p��S�F��:�Ӱ��^�������y��Su~,:��Q�]�~�<��W�z���;Yr�p�ʥ�Sw:u��v�_�ZY�P���,?U�Ө��X�-A�s&GT�r�l�����w�q��98��g/��Ӯ(�r�+[�`��v �	O��_$V.e��� �;�{d2�eq7�_m�
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
E�=Bn�i��I�y���a����%s��������8�����E�q��$Ci��fqi�LtO�ڟ�{����/�j����U�;�-M�T$b����VA�t�ˁ�����o�	��� P^)0��M���w_�K ��{��OG;��ߓ�������z�䜸�ך<%�:	�8���a�F�uf�M��k����~&���-����8�,�����^b���Β,�ǖ�#j����M(��P� �z�}�}��s"2+,���7"32�i�'322�9	�H=(A&�f��J��k�0�[er�i�6�&aX����!7�db)�.�Q�����/����e��=H��e���!�l9^Z<y������>gg��t�2��D��`KɌk1"&��J���8��/4m6*��b���	~J�@����3&l�r9�y5�P<׸5>��'�X-j̆I�'Χ�Ʈk�	g|�E�}z��i>�zbﵰ��O��NXVR�Y)��������vv{��n��c����W%��|DD�Ph�/�	�4�b�Z����ޚٮ��EV�>����� ��QH�j���KQ� �V ��}y@q�n��ph���FTGn~0#�z΍��7Q�Զ%�*%���K�)�������n��j���n�O�>����Vp��T�ᩲj8��sf�feY��`�.5���� �Z���c��#٥��*��i8��x�7��v��rao�vm��V��x�RJj*JYH�8kf� ���9k�����YK�J!H�̬�2�uS��`�o-�@�'�b���w5�뛠R����\5%��F�Ñ��&��J����CzI�kg4@���],K�/����JFL�95��}���t�.#۵`O��m���T�*6�V!�%D2������}���0�v-��o�<r ��܅J� � 2��b{�C�g����X�j�^l��`�����{9-�W��%z8��uCI�n�y�Є��2��)�v��>�1e�=�C��v�P�e����t���CB䌸�����D3�
B�O��<כ�gy�3 9�I8��_R�ek�Q{`��!�ǭ[��a�����<�(�a�;���v'S��b�?�A�B�!ش��=����o�TL5-k}r��|��A�Y� D�G��e�Ǳ?�9c"��4����Y����"�2<�9rh6���    ��;��u}�bq�h"^u*Q��s��L���ij��c�lLX0���ܺ�o�J�of'����Q��eb�P�)�~<�O���ҴX�Rg��6��X�U���_�+F]�^�q�_�/fa�w�mk�W����tl4���|�G�l!Q�TJ�%�)�� ��wA6�a�����6����p~������pI��o��U����g�h�Eb����7 �g�9����:�����O�1�o�y�ڻ$o��6w������<QM*(�&q�C%'�U$�C��}��w-h�*A!�+̲�.��x�1Zi<
�P�z4�۽����VF\EFiN�J����4��ƓWΨ��n������m��U���<�%I�R;a�DK
2󽯜@���o$����m��ŴX)��Č�g��
&�2~x�ǈ�D���WN���ny�lU���k�����O%X�iJbF�ӂ)��x��)�x���z ۵�������آ�����X�[��)�K�ڐ�8����5���s�ٓ1ׂ�� ���X �+T
bB�J͚Yҫ  ���́�_�#MۀTJ�Us���:A�2�K�_9Yn��i�ӑ�����|0#'=�Jɪ��e�YD��<��R�y������X���}��{���ëJ�_5��<}%$�%"vL�� Ğ�ս��_�ś��v-�b��٤�S@�a)��)�N~�+�U�3O��jg4@m��+�a�Y� 4L�f�H�	�2�,\�
�yN4���o���bߵ����7���̙�B8k!�!XR� -&YP�kLLb}�:::^�ѡ7{�?
/��{���cpRr��as]�͊曄�f�k�j�(�� +�y�j&sj�&�$aVˏ�J�}⎾r�m�~���^����f�GXH�=�p�'��T�'NX��z��x��dn�v-��di��@��"o�$L#E� �������x�,��vF�[�y��2�������Q�N*�����C#�ۿ��� ��%�@��,��0fů��(9� DB��mc6h��:�v-��J�8s꯲,��{z��zk�����]�k�:��۵��R��\�{K�w�i݂<&�	B��_�w T��캾	���ɜ,R��8W���G�����͡�<j�	�6E�����K1v�S�^�D
N�
���Ь��.f�3����RH�u�z�	�YH������r�M|������Y`�*�b�,���D>L��-�sӯ��^z����|9���C�M �f ƅWNx�����>�?��o��*�!L.��;s21�PJ���Z}_��N=� �Aϳ@vE� ���zlL:ũ8���d�� p��Cz�;�}�iPY�bISy	u��z��I�K_9�/mv�ḵ�+=�*X����4��g�wQ�'�RzW� ��o��嗦m�U�tn�0���ٌ���ǳP�ҧ
B���{��!(ڮ3Uۢ�L2�s��۬8A�6�{�|i{ř��Z0Pe|�QyS鋇}��c������@l���<m�f_+��vF�ݼ��8�^�2`��c9�(�p�a��k��� [��Glׂ�)a%���&̣g�������P /\!�&�~���c�o�8��XXɇ>�D[�Q�e\a�,n} lhuk��g�v-h�r��R�22았p�<��iy:m^� ��$_5U5��Q���O�*�bd�]��x%��޾?&-�Y
��`������'��u��Z2pd��0<��c����:��%_=����?��%z�KNF�8�N�r<�I���
B~y��a�~~�p��mʨe��P���?ɍHWa������=X8������ M�+�|�>*�R{x��ZҠA�.1Z�5v�=�*�{�z���e�,��fR
�p����͝y;�/��h\����AFon����aPV!GKmT����2�o=� ������:���9��c��y�e,G�\KdEO%P�d�Kr�!����z�i�W�W��z����OH\�����_���q�U l�5 �.�^\�q�UxBs/J!�ܒx"nRe|�	w4��&��Ovt���.���I -)�YK�i�1f*٬$A��Y/�Gqt�{�f�_����GFYjx�Z/r$��
��7>��+��6;�*n:��(��)m���s�p�)��v��.������ݗYS
����
�3�k��O��zkK9�hg4�:W
���$������۰M&�N)�#�/�渖���vm�
5cB���o�'�Sey-x��d�Gq��$4PO\0pڇ�X�N>*��fyz�����k�������7���]E�5��d�캌+����r67�gf���Bخ-	��$r���"#U2�"	)/� ���������F6k�-�k�h�L>����̗T�ϥ�
q����������������]lזR�^x,ϫ�N��1�hM|��}���n�U��#a̖�M�/Mٿ)E���T�b���Lu����b+��s+���p+���
z��	<�bfm��BT_IR��x֭e�}4�u;q��xx2\�"�K� ;���ͱK�ɒ�Ap�IeW�[j=�;�]�?I���xڟ�r��m	S��Z���� ��7J��H��\d�= A��/ƏW��}�ؘ��������g������ �	��TE$Ku)5�Y>	�j!54�S0셏��]ܽt�d|v"U½Q�E�����<RƤ*�9H������lϳ����:^ ���T��<�~�h��0ϵ?B߫�y���?�H �|�i0$��.m����oHؽ��b�e֋ �֌�f8z��Nlז����\�(s��ȃ8e��}��]v�c�l%[��Y Jd}K$Q�R��� ��0����<�5�8o&����3/G�e^(�jʶUl s���LL��*�5s�6���Z�R���c,���v���}vns��V��f8����@�vF��qX�����hn��1��YJ2����3�Eٞ�ڮo��Q«T٪u�B�9�	�>k�ZA!�K����M�Kb���(L���H�-sF>��V�mܡ�YxƁ��Lh*��Flׂ�1�/����4)�C��L0AU�3Wa0����${���yh	)��?�������_�P'��c��=��P�]lׂ�Y�,�"��B©��Q"]�j:�z�ݵ̓��3e*�C���$Q�GpE,�Ƌ�F�|g�f�������<�L�S��/Oe_�q
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
����� w3���Dk�~!)����h�#�&Ԭ�"�"��?OT�M�m��0��o������"���y��6��1M0�&��:�7?�9?~۵e%R����j?c9��\�D�SxqI�D�x\<���'ӻ���<��rE��p��h�r�!�TSa��<ش�v��W��h�D�I���fX��Y��-����_�ǳ��7�ћ7��Y 
���;'˥ǲX����u�փ�f}=xoz��ЌkmA8Z�[C�үC��bܸp�\��m��
4m�P᫓rw�<��� 3(9��
�;���v��v�Z���pm"?)�a�.��񠤱�0ys�b�Y7�C�V;�Q��%���\+���Njo����f�;��J�6`M帆����I�O�~RO�|�u����u�ݦ]�_��vF\��ȿ���23y�	�)��ڙ}m���0s'>@�驷�!�Ј�����OVp�D�N=Ѵ�f� l�i��};��~�%w��Y`�����R=��(?QHP�("�v
G9�a���۞g�G4f��ր@	,�q�G;�s�̕K39#E���[��M�����ڱ�+y�^��/��~�RV�f84�+�Elזr�"VD����}�4{,a�?d�<���y7��i�Fi����6��;f��^-��9q�ĭ�����s�.���V.�o�ЈJ͟��fƮUlgX�b����ݐ��9�.��;f��Y�b�h	�uKN�?��.�}&E�3������1�J&�<d;��W������i�x�v���_a�o���ܟ1�aY�n�BM�� m����ʃ�tA?������O��6ɺ�ҧ�z� t!.J&�8�"=�	I�0x�'��-z"/�Ѩ�����d��Aj���擸"�SS��͗������,0�r�_w'Rr��h%VՁ�<4�\�<�ݣ]۵�p!�H�2"����2�
�~�y�Y�	v�Jn�7��,p҂V�d!)�M�2(жq�E�=\�f�������5��p,ՄGE>9�H�2�WIxڊw,Lw�l�e�x�m�V��Į"e�)Y��1z��'щ�4�4!���^{���vhz}��Glׂ���m�� m�d�A)�I#�+��m��~����C��?.��K��XV�bh�l�(r!�;������Z�T��]Bf��ζ����p��U���V�$i,DT��,%�Ɲ�<œ	���a������$�kAo����6"IY�O�7��
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
n�����%7i�$њ�W��L�ېr�0:�Z3��%7R�h����fS\�7+�*�4�w$�J&��U@@o.Ha��f��D��lϳ��r�X��03�+Cc�eY+ܸ �n��at���ҪonDsj�D`��D�Ba�����,_,����y����� ��UR�o������-�� ��r�`{�U�8+��L�kw�����,PAX����:�4�|g{�>i��z*�$�p�LO_c��H�ʥ�jh��g{ mLۀM�`|/���B���2��"_��0�æW^�w��J�2�'P�H���(�j	���8�n��,=Ϫ8g��f�SS��%�c�Z���l� ts.}m�]�[ 5'e����l�7�g�|�o�4�`�����쪱9���Ӄe�8E� B������r蟬T���V�nn��5?Hoq�}o��y;�4@�|>o��m���Z�й��͏A�]����X��%�����#0�ߗ����Km}s��_�?��؝)1a����&����7I�M�x_ph�]s�<Ï��Y��Q&(���f&��޴R�L��������͟S�n~��cp��H�m3� qS7�X!J�uZ�t_�p��,��_`�o�c�Jt�i��P���˝���]��_������q��v�M����AB���Onn���-?Q��o}���4^-§9I# �q���V����n��C�ح����}���.Cg9a<UJA�,��@�db*�+a0���{8���дM%�q	Ϧ����z0NN)�K��ߛ��jצ۪��G��,��#ǓZa��گ�>���i�g?�w��Խs�=�]zΣK��b%���X���s鲱�4x��>��y8ӹD�l�`
����l�Y�_"&�J��A����c�ݹ�=�mzB�T��L����Z孩8�%��t�_6��A	�ߊ�ڊԓ�A�I\]������I�����c$V/�y�HF�#�P$�c�{�)"�uE�ST�&6[������q����<�ۘ��-M�m��� �G6<mu!g��(�u�[�f��~��j��?�vmE�O��(U�g'�ʱ�Q� �YV� <��æm�(��/b���ԩ#�bNe���3�x�x,"9y�u�,7�H���h��XQ�zQA��
���!�h̥x����g�k�ˣ���wc*��8(��u$N��i�^�$l6M�S/�2�2���%}�4�83�K��R;&�#`���=��:J��uwy[�+���h��Ô�)�\ĽX�L�AD<d8�T�������_�3`�OO�FyO�	�[Ou'd8���������������������jָE"x��K���o�ɹ=SKXĂ�������Z2[��'<�|:�+���� ]N����e��<�8���q4���9t%br]��?�E�Q�RZ�\q�zu��	������EQ��۞g��`��hז{�&�q��D'�e.+Aƽ��a�u����߿bQ2�&��yP�g���g/ұ]�K�Db�T��h�EZ	g~�$�y9[��a<��r�M,�[�1����F�)��)���Tz�\<�4?�ƪ�Z�麾	��ʒ22F+eN@�����'ү��Y�_�<6��ҴM�"F�@j�Q(m�U_MD4��0��o���*c�jg4����RV�D�)P3�O@r�p�U	�������q�Hϳj2�e���D�!��j�Y=]*1�&(xγM���w�K$�k��J<�v�2���dP�5��W��}�{�7�z���ՍI�uڇ<@"���.�6��D`�K-�	����<�4�z9R��CA�G�D]�U&�T"��4䅷W���f菻�Q��>��oB� eR"#�_¹�"彧iJ5dv�i�_}�U��ץ��k�oP��|GE��L�+����W1Ln�#�筥r���m mP��1<�nQ-���q-���xr���T��WX�
����d��dW�ɝ�p�0t�9����~����i��LȈbJ�xƀ}�C+� �WM��w~���N��[�
��b�d��ɹP��4���a��`�{DB�x�ީk)*��4ly��݁q[>ٞgA��2*�p�E�%@a8�Y/�-��f���l��s&q�޼� Nv�����8�PX&rڱr&�Q͓!D���5��pz��O� �<�\�HwV�8n5�2k�E~_5Y6s�q�rb��fC�2�P�*!�����'�9�$!q�<�ȪY���C�N;�Q'���'T�U�|"�'կ�"�0(���b�o�/�Xд��8W�-��
.a^H�Ș�!5��j�^���;���5��j<*e"!��4��� x��8�yΡf��U�xE�F�
�;���
����$�'��Y��� �����&�}zh���y�y�n����n~������ �P3/+ w�Ǚ*�d�yI)rV����~����ؾt����}�I�
��Tw*���C2�V������j��x�l66�%9�����N>���;0��U,zP5����1�N8�\�����3���>�����Q$��Ǝ�t��RnO̫~�f`�,76�K�BJ�K)��*��ml'k%�+��U�|����=ςxkr�/�+ª���m�I�a�SxΥu3��s��"��:Z2�a���C�w����K)[�ô
�&k�a٬���y�A�`V�p$��H�;~,P�aZ����-6_�����<� �>G�!��E�4��M@�<��jEY��qӮԫ���YPA�I!U:Q��H��DS}�p�b=	Ù�Ww�͝��]ᐄ��,
��a�8�悹�	F�4=�ʣ�;[;���<"")�����b�V_S�̑��|�T�D$����Z�0��Կ著f"V
���|�~�̚���؟�u��#,���@"Z՞E�B��w��a�ӳ��f���TS��vF�fR$���� �6�Sd{����Oץԛ�~�?�^ٮo֙� )  s[Vd��s/�h^6�j����p�g����W��R;����1LV)׽e�qjwJ���K=�|��k:xgg4�Bb��qI�MJ.hC��v�J{�qa��g_����Y��7��:ZJ���ʞD��''��;E�4C�~ۣv}o
�x�N�$c"ҙة��\�N H&�P�3@�]�n����~i��>ٞgAä�(2���l��=\.UH���t���pl}���M(�$ĉ$�=��cə�.
�H�Xf=��æy��%���5�rF�G���L��R_����M�+W����q�<� �[�FM��$�qE�㶪_$�r,����NN@Cl6������P?!L�ʔߑ�j�H�ԇ�	|�>i��:�����/��gA fʊyO)��qܪ0��Y?�;��A�6�ppT�rm�䷊Ubr�`��Z�0������pp�_�][�ފЃ����~��<_�0X�97��cs�W­�3@Qr�F�Ѿ/9]�ƚst���t�������<*(	�u��0c�MG�7[.�u�1���q�'��,ș`����X�(�F�����y*e�~��c
����р<	��$��bMhF�Q.�
û�����5��]�ɕ	E2�R9�j/��l0�'�����>�����ںpp���w,UJ&@B����|�|�o�aeg߸�oBtĄ�y��%y�$�R�L=\J�֕)�]�U���v-DH ��}�\���VO.VM�~Ɲ0��gF�Ƹ��j2�����  CZ��#)!/$��R�2e�J��:H-.X,�_yx���/<�y�$��'R`4��,�����ap�s�}i+��7����J�:��2h�U "h[c�	y!�� ��7��/���G��,�� s��l!�lh>#a�{Zňר�	���×�K<�Zs��Ѩg���E����5�҈���Eޮ�&�~8�?��Ahg4���QJ��T���Ӻ_J�K�{W���M��j��'�][+IB��"LAk�	%b�U��pY��0��o�c�q~��h@E�e)�:G
���������GW���m����r���yqG[ي�'j��?��.f��P��|�x9�&�u}�*9es&!RfiKٌx�)L�r��q=�6�nmK1i��*!d(R
a �\"<2�}���ᶅ�[�'f���f�jg4 ���Y�?9�xQ���jn6�tVZ�خ��JA*����S2��@�*Oq�B=�H���Wy��F�65�YJ�d�?ˤ��3���JC�0p���a�����aڮ��
����� ��X(�Om���bLX��0����q��by����y�1����
�=gg�v��[]�v���o��-�ѕYRO=}��SW�Q��t75k�Q0(@=v1-	J$���*P��}����z}�ç~O��yJZ.j��	�"�TOI�P��!�z��iG���Q��\�7�R2oN	5��\��N�/D��]� ,7�j��`�3л��&��R��B)�/I8J%�&=;�7CgnZ#;����Y����A�I�$���H���\
�� ����]W���x���_���֪
�?��d>������5�$*6��}��'y�X(�ބ�I�����oTT�����������Lh�c9��G�H<%%!q\�i��l��ۭ��=�Y��<�?	�eS��ᵭY�Ҭv�͂2�ի��t���pA�����&���BĜl3q�T�Gn�e�>�ו�,��šQ��-�7�LbC)��0V�),�cĭD��\����C���w�֞����7�v �G�(��]8��$��SD-���ʐ�b�Q���P�xځ�Ҫ�k��h6S$?|����o:`��R,wS�@<�@v�$;!���P���T",�ZI s����K%������-���B���
H!��@_R����q���9����-��߬ĭ����'�'6ԉR*���(���o�I��B���}��3�,�L_ް?��ZW�R�f��J)dQ4U?�䌬p��7��7�̻f?���4J�w.�I��<�����t��N��>n:ϭ���ijG�I��%c �E+��`+���oW���lҗ �-�3n�x'�4��N���Q�*1L'�ۏ�}?��G���a�DW�$US$D꒤�y>��Sw+a���yv�EDw�<6�35�i�ʖD���"�U��/�K�+}ƮZ���\�A;��$̓��Z,y1����D�}��0D�ׁS�W/���j½q]߬���[M���T���2�z:vդ���n}�7��}��?������q~�K�H�+�j9�@m��5����: ����7[��z>~���O�k���U�(<�p��Ld���uE9�I�;͉�d{�E�4��c��%��0M��|���U����,�;=���_�Eg4(#�<K��++"rG.U��0�e�}��,�^+M����=��RrZ"��"b�f���BHp�׵ǿ���hY׋_����_�LR�S���y6�&�#��Uk��R�磽L��mCQ)���
q�Lb�t}
���s_w�ռ�.��*|��l��i�
S�1K�1#�
��
�G9��xZ���:T,�/���r���L;ԝ"�H��!�k�' *!u05W�&���βu���Ѡ�T.19�)�8Jq>��Ţb��+��<�>hg4(CŽE?j���.K
g��	U��$��þ>5dO�ҫ�!7��i�
T�'��ı挚ZB	�_Nu8�3����|���z�گ�Ol�LaSLLhIm��5�3&�7�!��3#{�i����f�m��=����o��3+���Te�E�/(6��M����������@���            x�]�I�Ī�Ǚ��#z�K���%��&a@DH�9������Ӿz?ޏ�3ں�m���N%e~����u?�|�~?���g���8��w>���?e���W����r���3�y?۬���m���^��l�����Y��=?{|���u?����_���}�V@�? v�[�O�������6~K�8�p�~�{�rw0�m}�>S�?���h��q�����?k�X���e�~�����g���o	]p	��~��-�[�$����c�}hA���O)�����E���"�|���.���(���2��k������I�`��e�o����:`�z�<P|r�[+n��\��})�P�&��_�����^�wzQFs�حTQ�F4������p��ޚ���["7���V�}C��(`�	���}�[��>�E���Z��(�ݗsQv�\ܢ�����PhJ��h"|�I�7CB�����vp�+��w�� �rs�ƭE�+<�����7���~�!��]�ep��|�[���V����%�g��贙�}�����.��[7���3@��x�o1�[��-��Ԉ�o�u:	ч�.nU���V9���r1o��o�T>�*`-c�H��o�r�����}�W?6��q[�E!��>����G������.h��>��f�b�	��j��7]��N�-�A����U��E��5�d��;�}��ڢ����c���t�i��q{:�[ [�^���x��p�؂q���N�k�h[��~�-�[\�Qb��/�n~/�w��!#�g��v}?��8 �{1'�V>6��7��mϓu�2�&����ۭ]��L��2o��J��m+�D^�L���;�e�����֑۾/�+�c�������WI��&�L��im�}[����֩�� �94^�~�0�� ��^�E�%�2�\�;�]0z�x��|��O�ѢD��|��\�%�-�u+�}1c�w�[�%�oӞh��\,�L�w�1���E+�����m~Ae��F��Wj�m�?�9ݷ@>Qn����#��-֋z�AO
n�ܷ��ljʮ�5·���Ź���n��v�\��zw�����)���.V7�����^�{q�~�z/�|M{���1Fc��#�	],�p���B�/��?�#&�ۨ��C�]�.����on� �v��^����{���E-�V
�n���肁邌�x��B�tA�������o}����)8`�I١���6q1nk>���[w�9LH>P�T�0/�����u۷��[%nI]T��^��6��}��pޒ��řs��IY��` ӫ:���J���sJ2n�I�wkȷda��e42��?�k]�r�X+����f���ǛMN��QB�o�տ-�<>��N�hw��m�p}��&}�mb�a�2ٹ5����ҽAfݰ�*+�T(��8�������d��v�s�!?oN��&ۥ9Q3~�w'g��b�d��%�v��.C�޷���Yn&��1�._K�ۜ˝�2��UE1Ϸ�ķ��oJ�q�~������o*�_*@��ҩ}��/
 ��L�؉­�P����29��7]���շ�a�R�>Y����Se�~�_�o4G�K�儾�;�~.js��l|�Ҷ Ϭ�&��an����8�qE�;���Hy�̒K�i�'�x_�8L�E1��m��\[����Ey�Ε;2S�ۋ@��n�k!��``��y8y���b:m��9���\-����O�����ltyJ���Gnzk��%EӶc�^�<�PJ�)6E�3C����פoY�����w������e�G���śg�M�f�ITxt���n�Mf��e{�'�g���Zg2�ҽ�Lmf�M��
!��x:���&�[�i7p�N�����-$3��"��g���9!��$�yEL�i�L�y����7t#)���������ud�i9���q�w�n��܍��y����"�E�;fDw���^��i�wJ>������6��\ �l���wߊGe�2�``[a�"LʮK+�D�-��;.Ѹ�e��c�N���J8��&�M@�D�3^o��tg���F&��R{���#��L=�l�~?N�L����t8�9�����!��,�0���O�f�14�'�Aw_W�����.����B���I=`�ϛaVOӾ�'t�C:����Vt��yi��3�E��t�[�%4X(��BʐրK�/�ԔE����������^��/�[!�{�w�����ұ�2��h'�G}҅#��6�mJ~�"�;�?�h�"�H���f5I��B��o�Gֽ^��)�"ED:r��rS$�&[er5��H=��rĹ�-":�=��t!2E*�Y�LO.X�1������i�U���@���3��F���3�-{x�f8(��"L��3e�)}!
�Q���Ft��L��{�{��IpД �Ee�&����8��+00�9Y��'k���G>Y�y�23�C{m 'W9'�$��!k�Wph��!Hܗ-W�IF�
n�IU(+��^��$\�$]6;�@	�J:�}��Z���;�;���pI�����^���#\cK�4�+��r�+k�Ƨl>�k�{;�����2�.I������E_�l���"�雵ᒢ,E)W��������@|9n��B�l�-7�#ȼz�~�]w��%b�]���V�ч,���a�2Dn0���-�`�Y�F��UN���!Zk�Y�,2#Hܮ�ʯ�0Z��d���k���@�/du��	� ���d��u�	�+c��׋S����<r+ڬ��.+}�}��:P�J�Lk ˾�IU	���K沷��'�l������IN��������/�}���2k��n}���O}B�X!�
�����N�����M�ʏ1�l_g���T���r{Ս����I&����/%�d=��$��%/
�;i���:CU+��L�a�o����5E�S��q�Y��S�!
��yA��Ar@��#�B&��o�W���0��A @��"_Ф�'h*��Q�&�!�#����b��dP�܌ƧG��,�֞)^�ݐÇ��
;�+8,/C��$�7�������60(K�Ni|QZ]�`�Y�
�o�-bQ{+��xC�����o����q�� x��AUf��'�Rá}��O���OO�4�vl8���H�|�e���-����j/���~�ҋf'S3��H@���f� ��ވ���IfVp�M�Ͼ�UgI�CޯJ�!]�h�+�=��d�������"�� E=)������=7�����kI�+Fr��B3@ǀd�'j��j��?#�B�' �����aFIb��H�� ]��?��>]�*-~���If�Q�xw*�D��]gq�=�d�!SŊ���GQ]�0��"8�M��X6I�W�ޠ	��]49la�.N���<隙嬙��NS]Y���t�h�eWl�6��v��_4�ԗu���bŒ��R��7t�F�x鶪+8�\H=��S�@�e�.'ț�53�ݔ� +T�7�G�M�,qzK�	j�z�*Y��\�E�1�A�@�!�W� AT�P�v��l�ʀg�Ͽ�_��Yz�ҫ��lϛ�(XY�N��o>��Q;�D;���<©�fp3�V�_ҿ5��s�GF��S�("� 4��]߮hhj��xX
H���-�q��Qߞ�����iU�H����H5G����_��o�8=lC~�uRj)��W��G�����d&n]=z�#�;B4�&w��"�`N �~�
�_�i�wd��^�2������23iO� ��%}{��X5�����S�B�J`�z[�����r��M.�$�z�d&���	��)0D��Q N���JF	�z�(b%���/��Yʉ:��I%Ӹ����C4�ik&�u�y¢���!� Z0��?��'-ԒY	\��`���F�)6�S��T0�	��Dy�r���v۴����!�1AqA�A~�[V����9��/`9���PLx��H))�J���JJAnɲh���z�������:y��[X��m6Vj�<[l�`�� �+Wr�4�z���    �+ky7��"��
�^���mC��А x�&(4L~�zH<-*���i�7��ps*���D��T��g�T���Z�d�ֿ���֢����M��pS�$�#�rG&!�!Oaπ1�DI�'�J:ά��@����+v�̑�=�
2�Q(vi�CAAτB��"�̒΋D� _�7uB�z��@5z�APc����Cud^Q�I���� +Z�$yQ�=�/P��{��V1*AYHl�<+����|AmE1�B� �X����5iui��h{FCԜ�蠂��
7�e���6U�솨Z�uU�MIbJ�C�C�z���b%�պ��@�DA@?�C1+�:�!�iET%"���U�W���q���qh*z�u�X/���;ۖ=�w���fM}|�
��Eæ���p��S����"��H�7u5q��(����X!֧mF��A`3?4fr}+���	@*1Q�֙Dx�L���G]uSSQ%#�G���m�(,�F���-J���8��,4��6V�ɬ�aT�#���ؑ5uu0rD�*�H��đ�C7��t���W԰a"S5$	/�V�>�!9�G��
��B�sqR�WV١�V����|�e���X����&B�������(ITy��˖�rcT~Z+��D.6>��Ѐ�@[�z�Z�\����Rۮ
���S[FȺk�Q%B�<QMP9,(L$:a��N����aĤ�(�wd����s,�x6$���m�-t��4H�͇91��z3��i�.��� ��D	X�K�_�i"��6N�}�h7�p^����R�B�%���gF��b��_��8��$tDD-�����NdUI�qb�&�j�!���wȜ���w!R���F
1"��Vׅ�E�H�p�t�o� �����BJ�+a���97l�I"Ƀ��diR�*�UD��8�_X�F�2o�Oa�$|lV��L��P����Z=��b��K`��݉�&��~b�rC�˷��4ѡ�Nf��%yT��a���ؽ�pU�uDP��FVd5W�=�rbm�$����vĂe,!�a�ʩ|�f�x�&�5s�W���������	w�2"rv�������4Na!7PX�;qf�!׉>��c^c�{%7b� ��VG�0�ג,9Bm��_�G��#����2}�=���W�J�z�)�W�Z�?)�������'佷X�#Z� -��=>����k'Z<�NX���;l�@�j'VO�(���:Z	35��a��~���%�D��+J��c�� ��PC�����)��ʮc�ԧĐMb��@A�`�T�۫ClO!�k9�~������`��Ԡ���(��G+�{s�Y~��=����3M�����F�t.�t�~j���|��3(@�X�֤���=�M��t�
,�h\��9��(��FFXyB�殠q��*�Ƃ���G��1bdm��(d!�RX�Q]��hj%�D{���9;d�z������N�X����� ���, ���B���Ley�?A�#@���b|��Yk��ѻ�}F�y4������0Z\P�h&!S�>��	�x�	/�t�+�	�wM��\~�[�%h�3�����g����NS����w�' sUؽ�Ԁ�#5P~�-��l�+�04Yj�Q����_�S�ӭ"R0���� ��)�)�i�s�t�y:	��:	j:
�p&�����Gl:!�<(N���lG�آ�G��z#ǊZ&�x	��˥LH/����V
��$�!X�0:���j�����?�@ ���Ӂ���J׎��=�'2��z��c��Y��Y��2&���@K���5t� �du�#>x��]�q V�7]*�M{f2����4�Z�J�|���+C�U/�ӐQT=���h�Òt�8A0�D|��!VP9H�Wl�d"�B�m����ĮX�I� ���W~�������T �߉����	ݾKuBW����8k�'	� ͛��%���D�_b�#����b!K	��<�ա� �[V1�I��U��FG'p%�Ho&W�E�bo
Y��h�N��ŅR�a�����,�E�$w��G�����@�y��Y.�h� �: ��0A��W_v搆d���F~L�m����H�ڐY��-��2A?��1x����W�%���e�5щ�_uqR�8Q|I^���ǅ����'�o�R����w�C=�Їb�x�k1�t���ׯ���=G�t��&���F2a:Q4��(��]W�(' 3�[����x���6Aڬ����ɵ�D������ 
1���P[A�������r�gEd2���{��,�/$�NgK�F���н�H+oͪ1d�v��8S���^a��H�Gv޴�ơ-P%�����̍�	��/�������� ��'ism.��z�dA!�7A�A
{'j;q��&_C�'��	��vMK2�@<V3x��
����ċ����Xr��[%��9��ſ"1)xL�i<)�������o{f��ǵ_�^]˂6)��-�豺���ZH�, 3�Ļ��c�P���D/��J�bل�.�N�I�x�N��w���2�x�h"F����ݣ���̊�([HUDA6(�d#��5F�8��qj�ㄼ����P�艷�S�G'��-ϤS�PQ��P@\9�~��n��5�(�d�4�bG��#SPd��2��Z$�\�0
���[U�>����tZ�:�.kO'�q������_xa�:�Fڅ���*
���u���03�uC�)�:�(�'�DwYƒ�N��K�[�6՘��%��đ�r�
��f�!c���YC����y^]�a�I�����Yǁ�[�/�8ׄ�	��<5�
j"Z	
Q�DH�r�������EQC7A��*aL���ڂ��a�����i�W�.�o�!�)bO��a	��t
�i�=��dnj��9����0�c��c�v�v >+!~��ŋ�:��(h��a�D� Qp]<(����
�HM]��%xB��]C-x�O-Pa��iCEE�=xZ�QX��n��H4Z0;��h.(��t�D��K@�;N)'��*�f��Pl^�*����|%(fD�y��`����s��L>0�Z_H� Ag��A;���A�9/�
r�3�O�[�@����ٝ���~?g^����%��K�Ċ�Gg�'��Hs�Y��0�&��y;i����s����dS�)�t1�*�Q,9�Kޗ��-�l+Q�4�O��n�eӔ�e��#)ؽ,�Sb@>�Z��o��zc�|?5�xmN�
��� ���gO���*��S�!PO�/�En/�l��p���
����P��(�
c&r��I��ϣ��Q�{R���CĞ�,�}�.0U\�R���m���'n�5�����S��.����s�V%�mX��S�ۙ ��jk�1�{j��S�,�̖��KR!��BC�������h�&

�q>�Zp�M�	j�
�%��BVĦ�E�0��$Ľ�@� ��岗�����1ǹ "�Nd�.��B�6Xi	5�:�RA������q�E�Ь�uʗ�U1F������:j�EYޛM���)�h��ɝHTt~���|�ɧj�"݀E!�{|��Ĥ��r��'k�0C�t�e�	�0�3��}��1d�;[�Q�m9bl�O�ԯ�H�g�ǹ���!_Pk�������Z�_�=M�!��MM���8��K|�����2A�#ࢰt��;ڋĐm�w�J:MM��,�m�4;{�b![��N{�Nbj���dyn>��T��x@�L����D
Ȯp�IO�Q�u/Js2��U�!�Y�#�C�1��WN�hO���9�L�&D��1֊I��ݏ��nQ擒A#��.]F��遗<�!f����@*\IC����]�z=_qa�t'��%�9c��3�wЛ"TPn�F��g����&�	2�梼�}�
�2���ԭ<D)�9���.0Ӕ�s��=#'Ȳ��{��؈O�*�dEq���O|h�7�Ŝ���    t�;0A:-�%F@���%�[Ub����O�%�\fE�N:�,N��7�tb`�<Ɗ�"��^�}�:b��'��O�'Y���U��%OHc���d� gifVZ���)��(,�L���L^��9#���C�s(6�*��@�=��S�Hdf��j�ڍ����n^����� �e��C��&R�ow&��|C�Վ&q*M�t�Gz�uc�D���߄����bI�os�sx��~t4ћxQ0|�x�O2�^�L� �G��&qm�'[ZAL�jҭ'~O!�8uz���ԝbJF��j��KN�6\��XCO4t��:U���T_4��",����3x�8T��,K�w�H�zf��}�����:���J�� �Y�ۜ}�N�]��j�a�p?�)q�]�l���N�#�J6i�/6����H���x��&�o�cӝ�,�%v�o�/}&j�͗ƚ��������U���?\L� k�KŒ,P,vv"�<�����7\�ٴ��|ކنa!H���O��6�j�xX��N�������b������$�zVt�*�BG�mJ&u]�w!�͕l�#ٚN��"�7�IdP^�w�$��A�� ����&x:��^�x��{��KU�'�DL�:�G�zU4��b�~=�Dg	�_-�%ؖ�f�"Ȑf:/�f����D���v����8U�t��X�"��8��Kl��2���1�	ost�mJ��[���]R����8b/�v3lo;Cl�e�����C��O<�OC��1>��ޭ�h$���ğ��B�7����Iv�E:�� h�D���[�<�0�w:����.�u�F Y���ٷTT,�|��N�e��$��0����#��{�R��>���d⑼ �ò
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
�� f��e��A�p�U;D� �*p����2�/�x��kl�,9���g��	`�i`��ɲ�O6�Z��7��l=ֳ"��ݕ,�(�eω@�ꊓ �k�3� ��@�=`Hn`�ov�1���C�"&�- �	  ��<�~��}��Iʱ@bwg���x.�)Փ?�I��d|/������+�2�}��G��dxo��=	P�0��������瓀gR}n�y�]���)'��p,5P<��������t�^	 (���,@��/w�G�J\����ݝ[o��,{̧8��sè��\/�B���{Q�`i�������E�����Xr��)���-�u�C.�	���;��������Vy�#r��}*�%���-�xN#�ɘ/�lET6Г2sN��<U�u��#���ݨ�&�qs�X��*��/������@j����Z�b	��������m�,S�L��凖ĺ�������Uӎ'��ܡy؇T��d��,���#g	}��� B�eV����!a��KD��XnJp;gj�'�e=V����|"O��|=ʧsGK�C���C�L0^r朁�|��T�x��۾�U������mLe`���%��o���G� $��0�x}J�|��������c<����,/�%L�R�߼C����cng�7���$���yC�67��������9��މi<���G@�d�QH�**��i�S�R_�RƂ�������e��fO��_� �����-�;�	�A�ۃm��ʌ�Ur(�%ˎVv�k��/z��R<L����Q.6��������f����N�xq��@+/P���X��N_��Gz)i��{h�f��/`M��1���l+�xe����~~���Ly	��A�@Ʋ_�QNh�*42��^�5���<�E�` �ۯ�������y�T�%G��^o����X+���+K��^�_��m�@�$z����(_�ph_��q6���.�&������&��ֳ�m�Xڤԗ��ߚ����l|����"��p���`C��mm	����d)f����h�B�O-��eb1���8��@Ѯ�@J��P	��=���H����@�Fc�B({���'���I<v}�f�DR�KY>RYh�v(�xԸ_M-�d��a&�n����!���]so`�Y���Lk��	d���JM ���ߪ�k}	���U�A�4N������W�w��wމǟg���l�����&?7���9�:�T��\��+C��N��M10�L5P|�X��0�p����XK��7�"[���~	t+*b�3
���G�'��n���=�;'�%�y��x�5�ݞ/PWN	x̢����<ּ���ݤx
��Q9&���<��N/��=�|�-���|�s�j�/`�+���&m'��<����+�� �5&���1Y˽v���X��+k�<���=��;��q�a���\���)�<��?���=�|��0M�z�w�	Q�ds��P�����7�߳��(���k����8�����A�g��~V���0��-��I���F��r.2���[�L����l��0��I���{j;�q�RR9;�p��M�sЙ��lw���b;n�W�|�Pb��P_�����K�/�y̜��h�����x)˿?��x�aK���'��jk�1����M��y@�5�f�'���e�!�#�j�c+�����A��tUV�W�a�a�Ͳ���@��O:L��m9��@����U5P^ɩ�/����GNL�������Y`����DQ�R�W;�yg
h�E�H��B��.U����Zv�O����00m�h�i�ۃ����T8I�3���7��⡈#�vw��L�Ia<O�@V=k�w�/�H ���wͩ����y�'�?�L:�d�3MZΠJ϶WҔ��KIF�n-�5��ye�����v.7#Ry{r�pn�����"�;��\<݊�����Ƒ������͗oL���_KGP��o��s��+�nvF��/����U�i�S�W�ϑ=�(/�&�Fc��M����ݬx���)Ѓ���%��R�l��q4�{�V2bȞ��~zIy�f�^�ʃ�l8��A���	XuЌ���us�o���r]I �,0o�Y�~U��6�
��c�KQD���MU�����Ɩ1۫��`4�l�8^!�����^`��M �蒯�k�,��N��X�3�R]t�y_y�:��E���_��Ms4c)�v;���-`��b���_?��(p��3u{��#�}/��mul ��w��,S��3��d��W�q�
�����n����y%�f��?P��R�������3e��i�3ހ2%���W{������x��*D �;����ٳ̊��g�_�f��xx.�\g�S�[	dB�W�@y�Y�z�L�7vX�Y3���rvN;3��r<��K�[/�|���`N�5Pm[�y��xt�g��pZ\{�^E��ҝUx�X=�<y"��Zo*��gْ2B_�G�~3Sv(�2zv��9oJ���eR��UF1�Q�	�=��>�o���w�V���3��~��i            x�m\��Fn\��1����6�I�M0H�dc8�m�3�=����%����J����b��f�yƗ���o�}_���Ͽ����3�Y�Jb���Eȗ���_�=��������s��xϣ���忾���o_�(0���?���Uރ֡a/aբ�/� �%�y=�}(b|��_���w��ϝ���-p�'ഡ?}���_����k"ZWq7*=��U�˟���߿���׵�������O�ݓ���o��uٗ���s�����~��J�-�h����6�z��������~�����
�����r��2��}s�����QRTR�7*NS�oP�(��xQP,y�>�W�ի����=��t�d��d���W�
A�e?���i���n�7B�4I���c�d5���m>�ڛ��}��_���9���I8>׽��`�I�����&�j�Z��7�Q��g�� �(�~� ��(�N��u��MF9�"e��<ow��"�q]/u ��xE;�	Y�k��S��%e0/i��6��Zc�76���r�v~��G�1`,�={q��[6o�B5��cF����>�?h�������	74WC�{����o�?O�BRA*II�5S[(՘Mܷ�'��\t����n�G��ci?)#w��`�� �Z�/4v�Y�gj��=�w?ao�hS2�%�
�ٳ�h���H*�cR`�U��	��@��%�᠘�_2��U�6�h÷��/�?��޿��Q���4��М�㈇`�0�j��Ǔ� ����#�a�	��AX7z�ÌMqB6~bx�^����A��h�KQh�kQh�[Q�B�!����8���y��I1x5DЌE��`�F�A1FW��$#��#8���4�ۯ���w?>�Y'�k�y�V̫��9���j�f�� �)���@N���?1����OL�'����C;�O�4#�=:s���IQ.5�o��9�b�f�s�E�g��97��i�'5˝m�?���F���O s��\�Yn��w�0�O��'̅�]5V��;84t娙�F��5�:���M����P-���m4l���k熟<�Z$��1��J������ ��Ų�O���F�ßb����	=���aj͟fS�2Z����d1oR���&*�W!<�{������l���oZ���f���T[I4�?m'�;)�c`�}લDt/�b����-�9� |&5Ia��(X�	W3�a�[>���%]��
�&}̼K���ŌbJ+c�6�(�v:C�4�A�-�Z��O82~��fWV�!��\�B��Z�[�YWZ�j�adg n��Yc3���:�#;��Hb��+�G
ր�f�kf?�9:(��Y��l	j�ΖAYS�Ϟ
�K4�@������Z���In�Ƶ$��cInYR�#֜ �U��+_p���&���۬�A��0UZ�f;��5��v��F�=���k�4�l�KRKfc'؅7�6p�Ʊ�!�I�AD]��%N��o,�I�q���\w:�ע-]|G�R�ڛ��O��)���\pZF���Xu��*OvP>���SpZ���e�V��;�EaA�֬�w��M��oo=�ײ�	/�X�K���`����{��`��]������\�A�\��uPR08!E��J��� ,Gq���J�x �Q%�[���4�ŕ�K;L߶/#kd�>�+z�g̑�7�Av�A\�:��ϸ|=2���{�Ej#K�{���A:ɲ�{^�21]9O�\e�M�3'-�H�.
I�Y1_k�g}��$���3+�W�8֠�z�R{Ql�&N{	��?Ȁ]�0]ڛ�roX��Ӫ���k��){K5���m��o�2�L@l[��2�VC� .�۸�J	UZ���@�qC���B��5?�� ۴�6��6e�jl.=mD[�Rm:�l�Z��V�F��p�,�4���_5��@=�Q�(Y�Dmk������Zi�i��o����	�>��J�Y�v� ]�v-V;5D��=ʎ�*ԁ��A��ԎI�&-8 cw��C?�+�=k�o����T��k�$s�.�*�	��K�Po��<z�|�xg?¨A�H�ƃ��D#c%�H���*�kR�.�����U�f�\ּG�L���da:Y�O�&��xD���!�0D�E� �0�(AS�k�kieY
V��2�"���,x�P��������lxla�Y�"��n��������b��y�_���5|�kN"�}����G߄Ү�'i�kik$ғ��y$���$,	�����(�w�[CX3ɮ�L�Z�+	�cm�]a!�3a�Z�u����b�U��l���h�:��}��t�����?��o�B��~�xB���GC�k�-�����:�Oz� �z��'�HB����B���x�����̓%&H:.A	�	48�����?j(�qH��1�!�6�UfV���A��[+����kU�r��[�.Ï{<*ϡctP�3�,vv�$�c	�6�~:�vR�E8Ks�� ՗N+P�BgYm�m��*ҁ%TN��ɲz�A{JZ�O��9֔�A[8�L7H.Aw�c��p	�����n35��_��W�	��@i������tu��Oޙ���HRBJ�RR��U<�mnQR�Q��$-3��������b8�n��H�&+4Y���!E�ة�A.')j�]��p��i	j� 
�6_k�fzZҲ�V-���ʾ����*��(���tp}��,O�NxP~�H���يXA+��L,h峕y�|�r�H�`��RP�fj�H#e���Z+�	t'�L�����\��!kBv�E4�h�f��@�]h�����h��6�ηd�p`\��,�s��sc��6�ú^x�+R�P]u��y��f�Ne���Yn�fU���v�$@�m���I���l���w�ߚ�fQ�*
�[B��١+;4������#�����4����mF�����7o�/�W�-?0�4N�I�I����/6nR=�4����Ifk�ec~�D���)�ڙ���A�l���i����j{����2�p��r#�9&���4�{ӏ���y��KWa��dڇ�����yKy��Slv��)�=Cca\r��,fԢ�-fF*U�0�{a�[ im��Ҕ�h�	x� ���B�9�KC�9��ױ��xf��)�h4�*W�������?=��6L������/��s,R�#p�2��D�o��D ��s~-�T�r�x�w8��Wߊ|���t?>�>Fó�P������	8��\����@���yegyK'xޒ	^�Ǯ'�d�#{����Hd;������Up>ۨv�|���\�����Y�$�.�c^�I�'����jfș��e��o%�U,_���/��a����T�z��=�mQ���� ��]J��9� W%�Z�xPr� 7�Mp�`Y�����6�E�h8�e�Ùq.X9ݗ#n�rZNO�J1+���8wQ�n��l���E��B�-rp��X�������YӍ�A�\�r�r9����S�A�	�I%x�b�pMn0�K�l=�;�E?�w�7�Tx_�:'/��[����ʏs�3$^�����TfH�m�un�uDDoh~�)��α��ּJ@�*?�X�
�V�5�Z�%)kR.�f0c(�̗�:"3'���@\�z�!�e��&���U[�m�1��/�����+�e@h'Wp�����ۮU=_�u�˔9zP
���W��W��J�H/fu'�*�r�Zpon0�T�m���5����A)�U~5Z�%�����B�H��r^�)Bz����9�m���-tPq,�����[���;�ױ%5��#��\ޠ1�k��$[��38���2f�Q!YHk���m�o��6 GK��Z������ⷰ|0tu�g�*P�h:�꙽|M��@�pVFE��Ey�@�H�:$�v��v�E!Aw�1A��u�sd����_Np�t}�V ���L����0��UU|-W!��JQd�k�U��#eVׅ��`УCށ�΍Wè����vc ]  �
���y��ʭ��?�x�WXqwU��AO��U)�%�K�����kT�υ��B�+G/d�yR%�(��h�U[�r�$'H4^Xt�!�9���M�Y)uq3��l�d3W��V/��r�^�f�d �%u�� �	��� �^�����2��"��$\w/*��W�F��T\��oL%��Mp$���K�;���BJ7�N`�����=����6֊^Ҿ�Y����yIW��GoHt^iF�����ƥBJ�֏�b��J��]���5L��Z��WW�'7?�{�X�a1�h��a�µ]r��XA��R�˔�6u��9at�/q�D�)D���l1�QnHΒ��?̋+��m�z���l��q��I�-��^�b�ᬽ�;��_k�֮h�
��S���A�w��IOҫыt�)o�o\���je�6^o���WI騢�1��ex�Q�ԃXB_�ԃ��O�{/���3��Z2��Jk�(#��^?g�^?f�	��B����,�1�� a�U�����^r�N2����P�m���K!�K��&��
Y!˿X����2�S���c��mP�2�������J�}�ܹ�`�C�!�V@*苵���:�S.��[賌���2N�|�)e�{��~4����Gsi��~po�m�-�O�p��!횡M���������6��y�1��Н�����p|��u�O�~{r�Jm����0��U��~�����H×2�5F�k�H�����h]V���Z�Y���y#�Hj�ʍS�_߄ms��@6�il��9-9�	PT�5�UP� Mrt��g��̌���3�����s��q5��+h�����~��O݂�      �   S   x��;
�@�������R���&��
!��V�L�E�u�=&KL�Xa��<��n�	����U�a��=V�3����      �      x��]�r㸖]�_�͋�#JiQ�z���3ݖ����7I,����ʿ��ŋZ�U}����A�$wCQ�!\S��tϝ���2ϓ��R��i��bZd"�e��8���� ʂ��$�^dI�� �Y.�|���,�0�����ၿi�-?%�y�;��{$�tŎ����-����4��L�	OydgÞӱ��^H`�\j,�6aA�u0K��8]�8�/���m{�Z���UĂp���m<KO�x�{�P5_G��,D�#�xN�6�P$��ΰϮ��D�k�մܸ<��&�y�s�Oy�MA�����u4��s,Vz�:mv�Fe_�����7��������8��Ȟ�G�"ro���_��]����1ϋ�B�ԗ��}��9C۽y�=�1��Ə����}6�:#۽��B��Q�]�������>t����(��^iP�����=��c:^�v��p�ŽA�]�������>z�����}ӡv�}A�t�V̊���
�B��pS�i�^�<H�{vy{J��m6�:�Eʻ�I�ezc�o�Xʏ@�zxwz[b�:>r��a�ǾR�# O�N�n/�K����Yg�4�Z��)n���緇�I	�;v<�Թ�0nu��o�����zb��3���Ih�u�������r~qw���Z�mǳ΄�x��ˆ�gj|�͗�ɗ��,C�X'�lYeӁ"�P�c���/�OJ�L�u����h�n���I���1Ń�ӱN@	_U4A�j�n�'�_��f�w:�)%��$�1���G �R�!���Q<͵���V��G��~9���%�g�O�yL�.cS�C������t������Q�]P�#�Nn�k=C3l�M|N���'�և �VS<@�|2�� LT���G N�NO�J���ӱ�%�2�,���%����_n�+�C@��&��DhZ�V5?��y��*�[�:����@jU3fW�e������k����?ם���u*Y�8���1;W�pp;���8]����&��&��@6�9==y[��Z�D�]�3�%Q�g��N��Z������١j>Ƿ���<�k�?�I2n�A+\�����˭v�u��r�����D����r���G�"sy(x��7E��C�ѴN%Q���I�]ScS���{N�>���8Ơa�4���w�Iҧ���t��p}��b�S7�A�O&��߃Nn���;���S�ؿ�����M�8��py�?m�r�6Z�t�O�ʰ�4����������?�!�8�uN�:�������@�����x����芞u��fm���h7��&�L4�?�����N"�g3�z#�g��"�VNϐ]��3���OA\<;=�,��HB(Z�Y�l�}I+O�2������=����LiD�Gi&j���9.#�l�vzI+���a�1[h�<������U�,]�=FJ�w��Dq�.z��+��B�JA��j�����qz։
?���[j�>jGE�1PX$��g:���2�P�z�}6!�{Ic��K�B�-�j�C�0�R�j��d6�E��N�`��[�|�	��v�mv��6@�>p�N�;��p�O =��Y�\�L%�[x�����fwJ�NHXA�Ӛ|j��E���ҳ<�\�#w/�E<kMy&f*�ӷI/<�C�;�o��ȀZF�q�{ L`���!����a�5}��}���(Z�"���Y�jeB�t0c�3v(A$�&��;l+�.oω�7�/�a<-�J���Rs�dj�X�!;���t���8�`�e�����&p��E�i��G���a1K�w�>��R�^H�Y�d�pVX��|�v^��
f�d�Pb��V�Ƒ�	I�;����RB��#`��F�K�&����F7@Ӓ���o��,\�.�`���EVߒ��]��J/~"m]�0w/���G��Jx����	]}���يJn��T�[�����|S�*{��ҍU�9���t�H�����_}�{Nߦ[E�TИ&/0�JEk����Y !IDS�y��8��pF����~�P�]k����`�rFc?��[K� cmg`��j�!_,�-������J�����n�|����\��r�7�	)��E�,� -j�]�e�r01ZN1����EVR��L�<�[&NT��	� S��I�/ى�*StI�
��8����ƁE�y�7j ��� �<��	V��"���A,ӈ�5�Ϫ型����=J0��V���eп�,�J���Ȗ�G�	i�A�J��0�G����X��"%����s���y���a�N�7R��r���cgmQ=i ��,v���P�9��������H�Z=m��{�4�|�I)M]l�%��y�LB9ÝPF���zD�^��T��Y��&�=���8se�U�mL��Vee&�u�-2mi��Mu̴�݆.�l��n;C�B#F�r���u{ۭl�.��s�y��7�xG�J�1��C8ְ��¨�,�ܘW�l��c>u�Q��у&�"wԛu��,kx�d��l[�G�ǡE�8X��Z�Ä�kG��V��d�F�I�6�R��ZnU��N�p;���r�u��E�Px�EX�0sB����G<�sFy�*�����a+t`h�@��ғ%��3���xX�i��S!`��.�Q�+�B�B��K�U���ӟnVp7��8����ڭ��vZ��*JZ[]�߳PIIf\!��<!w#���;�:�����%E2�����B!\rΏ!����#*�@�
��S�����$z$&���ةio��D�鵶�\S��L�\�܄�%���_3I�+�����V�q���H�Nx�dBXMq������KA��z31Q��r��ԧ)�����N"O�RB�7�A�ϐ��g@K�*8��)؄ҁ�g��EN�kYV��Հ�m.���o���T샊�H��c���Șcu`Xw�3l���w��$�Ϛ9��Йa��&%�9^����.�*%�kY�)��fV��O��������l�q�;ɦ��j-)��W':��\�J�wf}(�X�����DU��/S��P��^���n�-Aڢ�j���;Rc���.��:B�Bk�{���/�  !Ψ_:
�{'��ݛ$p��U��٧�ʎց���[$�yX�OӐ�Ntj����-Ķ�j��^��O�:��f�7���)�cA_%�`��UR��M��}v��*2ڤ\шF���_�7v�;��T����:��Q9 ��#�ZPGx�t�3?|�ފ9�_��(%���.t�[�ڨ�%,�Ȕ8yئQ�|�����-eEOt��Qc�wp�x�Q�������� �mV�Z?IŜR����6�Ňl�����y���`w^A�2��%�=X"X��"���YYF{��{*�ۣc�j�r|}�񈤓o��-4{*c/���R���<�S�1�D�>JH	���n�G�c#=�����*`�׼�����)�K��2���A\�ဌc��Z�ܔ�!^3��t�7}�'0��M�Ww1��R��v�Ku�^{'T�Q9ª���E(L%U�M��=�RvC�o��լx���0��[�"=1�?e*�=CEZ����ѠG~r�e��|_)���g}t}'j���؄$��nD��m�9X��9}�_PT��!BWՔQ��k��o%�RR}x��f!%u"�okEe���������n���#>W�DP�੦'! ���������e�D�I��Q%�>�۽�͊��t|���?�*l�1wQ��mݗ��u��}�^]
��!�Nw�. y��'E����5��F�h�?��h�hE<� ^%��0ʚ��fME����cYU�*�¶"���;��ǀ�Z63Jσ9�B�\�;�f
�ˈn'�	�mS��VGSTb�H	�Ch㣹�1����� ���d���g�͂#*��@���=�\��cp���sA%��#tB�v�U˳y�Bci~�,���.��5b�MW�|/:��k��(Y��mz7)�������{1��ᘴ�Q�9��c�$t��p#�zm~(\�	�ڳ�a�0��%�n��ތb��u��]T( u  �D��m�/ԭ#	�����x���b���d"cņ9��d���0��E6oxx��
�LUX���A�Mg���� A��u'�ڍ��N��uE������[u�
�NXp�P(��:7�&�Y��>��?H��;[yʓ}u�;��)���%g&,bh�V�٥�z��/x�V�O�b��; ��a�/6�D�޶2�޳\����v�WA4=[�[KQ:��|[���1�V(,w~ ׇa�·f-<��ٍr�������f�2��h;�AP\��I-I�>�s���d^�짣���2����J-�3�Qm�6sc���0r���1�_��C4�OϨ�N��a\*�zjF��
{��z:�R���4�b(f]10Z3;���`�Լt����徏]��wx|�Lے��.��"�C�z�j��˯��$��z�el^ ��n��)y�J��L�u�B���7.�^J�@gͽ7����u#��&�޷�'�qB��\��o�n��~s�n�p6/�h��9�����(�n�+�ל���*J0kN.�a��6�᣶�ټq�v�f2����"ء�����J��)����{�Xv�a�kk�|z6o�h�F�T����r̎�\ˑ�m�^�OQ�'�?M!����A�n��k+�C,�
� �q�m�/DH��/6�aHڼ̢�/� �p�#���LԱV%u�!��.���3r�l^vQ�/r��ZE4M�T̹�ѐ�����b�`r�U�R�lC+�m�U�wB}/���cGZ�p���V6}O�0�~I�t�����������	����f��[w���o8��t%mܜ��� r5%���}�x6o�h��+��q�>^��Q�g���k
:��(��u�"�y+�b`t9	$��xb}�@���յp��9:B��c#x`y����{V/��Xw\V|@�^���bj!P��׎���3�Ny�@G�CZ�!����"�: �a��}@������ͫ#^?{�u���z\;xJ7���3�T���g{�y�w@snQ�o��Ʀ �H�������&٢�^��/
hFL�<�v�Ϧ��=��5ϰ�m�8����	2�n��f��5���AG_���澉�K.ou�`8b�Zf�x�m�5�p�m^=�F���SV���_|f]�O8;]ǳy���"Zo��9�W��yŉ�n'ܳ~��,���`N��:g�(���9�y6o��V	�·-� �}x���{d��SP�PT������![�N�e�Gw%(���;9�yx�MN�2�U�!�0�v)��TiY'i.������l^M�쬥�ƕQR�a�:)��I�g�~���쀝�y�r/�w��{��PW�>/J�MH~:d��8UT]
�{M��r�Ff|"��:d��m^����.�4�k;��Tv�#;ݵd�'����S�n�HR]���+6�����3�8
3~@n�Ξ*s�y�D��m���l��2��W<��-M^�&�M�fJ�6�o�޻�����L4.|�c-S��I�*I���"�wR�Vb�EV�i�*֜C���(���@R�CsuTJ�Q`�§s<�wZ�Qv�����fTܗj1��LiJcpt$x�'���k��7/3"5�q�����+�?9��#f      �   �   x�̽�0�����1~��!.������*M�2p���y_�݇�r,0#K�6Vx�dk\��)X�z��ub��6l��z�9w~[?�#��G������R�Sa���缑
��ѯ��-�<V6���c��肚2yH� �-q      �   �   x�-��A�(�j.�\��X?��q1�����ɃS�Ra�c��q�@a �%��E�\�+��E7�4%.�<�<f28���xM��`6'8}�\��K��{z�C��6��c?��-�ղ�� ��"o      �   �   x���0�PL&�������C;��|H&׵�=H�m/tе��]֏�c�\�����mȒQ�v�~�/�b]�З���I>�^�{���ٮ5�&�3��'ݮ_�S�ФӀLsN��������"k      �      x��]�r�8�]��B?0U$��;��r=\U�S���`!�Ѐ�|�3������I$,JvE\\L�tw�q�:� ����|�����F>*����Ǎ^Ia�����H�~\l>чM��bvn�|�n�K'��Bu;v��rv�����*�������1�0g�U`�����y2@'��0��ͳd��Y�Z�I��l�O٥Q+��b12�v����F5���d&�^>��G��9�����ϗ��@[䂝��Oمj�(��K[�fx*�=�])�M��/e�BMc-������f-0�Nԏ`5�(��'b���39�V	�]��B��$�[��c��&�I��H9vf�s� �Z�%�Ӻ�]�v�[��}M���y�Cz=���1qʾ�]-�n;݄�Vs���]�.�A�$��C����(g�I
u�藍VM7|FZ�Q@�����b5va�K��T]#w�J����ĵ*_���]c��Y���@� �[���1;8��b	1�����Kh�ܦ'���c�|Fo&I!�=��9İ%XM��z[D�SI؟F�@���F��\M�PO����A���1k,�@0�0�m�]��MC��sv-m�!�FN`���l
vY����Q���5�1��h�;P�z�*'��^��ծ�3������m�K"`���2W����'"zI�n��*���Q4���sv�?k7�t�xjYZ�d�5��XM?MpLm�HRve �]�<Ow��$ੵ\k ���J�S%lʦ	r`c�RԺ�������V�u�.t�f����6�%%�%ji���V3ɱS�L*ȡ��F	vր���c���֘F졯����Q��$GS�̑]���u�US���T���7a�9 �� t#��"�h[շ�\��S@g6(��Ku��g�Z�Iآ�ti����0�i�!%��)��S^�fӛ~�ð^��W�֒}���9\�?-�}_�;�?E�0�Va�v�c|���@�%q�<2���	�6��bE8Lg��7>4+�Gȗ����/�saV�����e|�}��|	��u�0��%����`�{Y��5�,������o�ZLq���n7�d�a��;��N>��W�b_V*Dp�Y1Vio��C��50t+�l�ݫV,�O��D��_�֚}�f�y��������f��|�jK5�-�Tka��f=�6�*]8��78�L�S�������lYF~?��s>vݳ�H�~��Ej��ֿ���| ���iě�pZ�Ag��@;{POr"s�2��s�HP��������q�vv_�[���y�����AT��%��pWKJ�B=��M-:)z��U'g�O}�W@�z�O���\YD��Yt��'3��\������B��g���gv�W���ٵϽ�}��N{���-;{�x�΋�t52�� �+�<�y\�9�S�����Ħ]����QN�Ӊ��s�V����%������L�q��߃��V�w�i��K����2f�Ҡ[O�MӺ��P.'�&o,�������e�e����No�����<���̠.R�~�s���sJ����|B산�](�<NFXv�}k��D�� ]V�Vm|vB���*�(u��
�Js{*U��m&;�=�ꬰ'���7�g5v]�w�@�_�]�6�c��J�����msC���9��d��<6�W�o�J@9�,t���	��-	]�.5xB�[��T�����$wE��[��oD��~z�4Ԛz�y+u vJ�
��T�{���j���o�wȡ���߰���Xo�n|$�2v+�@�0?ʩ�x���m��f�Q��:�}�m[x:<�^��]�-߉{�w��sg�\���}&�히�	D��8b�R��1;k���؞���V�C��FV/�2�8aWRv��Q^ꤽ�8ƊRu�hv�y�n��z����4LZ��!;�-9��G�L��8g���,''Bb�wgZ��8^�������k�8.A�f�Q��F�鐹�b7¬pX�yr�
� ���W��a�A�\�:�|x�[��"Јf�EIȇ���!��4b:��F�Sޛ%D��5��Ai6��S4J��~�p����>�F�{��K�6y�����|:wҕ�o�?�{X�ë�µ��B����e����vǾ�F��Hޜ@ީ�`��{HY2��룕���*��	D�5`�D�{r�b
��9�R'N2�dl�67=B���1|O
�_���`��|)�:�o���11qK�%��� ֔�|*�5[����4����[�Q&n�9vBn�J��n��I�)Ǎ�~�~�A��ч�i¾ʧ'��p+�w�����sS��0����鐥4c�E��/@q�
>�WF�������݋�6��X�V�ӂ���U&���=�"��w��� ���g��$�Y4L���hq!�bl���ȶ���4h�3`bz�9��m�8K�p�$��B��RbK!�-�� ��9##����+�Q�������2:�٧�њ��p��,Z�n���a��+v�^]��0�Qy����a1um���j�u�63}`we��˺�R2��ݯJƸ�!����Zy/�[p�Ct���Wh�<�42T�����Jj��>a���|�?a�o;ȥ~�2�v���9,���+��_8�q�"�d _u�H%�^ \���I��]���:||-Ѓ��N�d��*y�h+Rv��Gr-��_��(Q���s�o��^������;à�yX5���^��I~ �#�Eg�΂���K�1�T]F`5����(�H1��rEc�6�������!�h��'I9��|�X�yߞЕ)0�f�H񛝈�4���b7�+��Js���a�d�eA�ĻN��C7��S�c7���!�3��ٯ��e5�DT��~�K��|�"ň*b�z����Oq5�*@�nq{P'"f���h�+����?%>WA�"!C�e�C�D�o' ^@�2�����.�&��NȂ��x?�T%�/&�M����6	^`�����G�/�&��o6e�^v<l�*�����8����y��@A�t�!�����G)��Ly�9��f��.�F�Vt+0]^P�n��`_{P����R��.1��5�PBKq�G�^�B���O<̜.��o4�&4>��q��V0"����;��L#!�t��v����y��W"�i�\��@ȶY#j��E5�i�|?�$6�����h��x��&�������=M� D<.v"v�n�g;�B����_�u@k�5��~'BI(�8��W�4�	ӞXo�	H��IJ��9�D��X��/��8������W��K�%$|-'�C{��lO�XJ��%���M�j��`�sL4�-G�x�7K8/!�t�\�l+U
;�r���+��$%�h~T�ӫ
<���nt@]N_�p+Y��<I^7��^�|����V/Iz9�����|x8*�-�8��x+�5�;�Ë}
I�����g!g9z�(�-�~�΁�r�jO����㇬<�Ct'��Ů�l��(�c��q"tC��d�4��8�Y�vG���Q~�e%d�iF[D!c����9�F�k�꠴�o@���޶��Ipw�%{.��0w��굲N��6�Y䚬��zy�\��djePʮ��������kLf�l���(�ᾪwM�ż�2u]������3\�1� g'�H�(�)jd8�l���=�2OJ�'��	�
��{Fa�w��g��:p�q�³j���Ǐ4z|�E�#v-�Wx����'��154��k���b<��a���� ��ֹN�B n[���<\9�W�u�f�˲�(�]5��,�t�uҗ��%x^�KkG��6�_z�t�"�y�������7���#���N3���/��"�`.&جuߝ�+T��3����"�n���y���M�k���[���E2BA}��P�����.����aƋ
�Ǖ��a�9>�Pt"����iC+tT����K�������2���ûja���^��?���(H�ޝ�p�o� �  ����N4�f�����A�Q����c��~�P�+����Z�U�I����%9^��n�����AI\��%8�6�'%=��,�����+�b$҉:�lW'2s�Q������|�fh�W�6�B���g������_���ʕ�aQ'��p#|�Y��V�U��%Q�@̕7���ށ$��}��ڜ�w�(q��]��ab��$�C�Q�z?3P��U�����d�2l����/�8�͢��Kv������sԀJ�
���+��cED�q	Z6a=����I�א�.�vt�S�r~x��	���-����x"~ه�xtE sf8�JP�|ڝd�:�
����C���^v����_��_��o�\]]޾�-�ׇ?���� ��U�         +  x�%�I�!�z�~�q�K���ܘ�2	mv5�l��l�}���[�~Z�~��E��&k4e�9{�NL��j��)��bw��Ӆ��ʦյ-���m�����9��)_f�p���s�L���R>��2��@�i+s����8��k�rp_�X�l��pY�-��g��ǮײoL�僝~מm��e��I�~�9��GN�!��g�P?�҇�r�qd*��x�6~���l�V�t,���ݶx��7��/\<�������vNޱ�w��U�p1�c�c��c:)1vp\+�xvT8�Qb�Y������nHPe���uVi9A���Q]i��!��z>r�SPx�͏�D�5m!���`/�D��G�C 	p4@`�s��\�Z��ۡ�W�õJp�Y��T���CG��3�r��=\���@H�D ��O����؟�1�q�� ��� ��ћ�uQQPc���$��´�\�x�!Ư�����Ex���O�fU�}�@�ʼ/�0�X�(�U �Z!k�!7���r^J�pP"t��w0�&��@4;�ȟ�,��)k.��"� B\UP�M.P
˕.(A�>�Jӻ������	�l1?m`�ϣ\b��<�c4�Oy�o�=(��",ͪ�V�j}O^_ث�M�5m�<9�q��V��<p84Uz�`c!��{b�P�J��r�!��<��(g��� 
�S�O��>_�n����\w���5u=�G�}rp�0B|,��W�@��>G���9�}�$�h�j�4?�q��3��a�Qg|��Vɨ3�*��뿿��?a�      �   �  x���Mn�0���)f�,d[�O�A7��@Q���4�X��JR���t�@O�u(;FP�(�;򑐾y�H��
��o�}����
U;k=�@&�
��ګ��~c����5�@��C�ۆZ��P�K�����QCu�1�eCqgn�x/|k	�{����.�Gؠ��#j^u�Р�֋i*��j*U�m���AYӱ�㑸�"��8{F<��Gk�Vk�v��H|��+i����$
�l(q��=�T��4�eM�5>��۟�mE%A�
\�3(&���u�#�&3�w)Mq%�bI@��%#=i�c]��\NNbݼn��MP�	�L\w|dM��S�;]Z�cT�C�ؽ���o2��c:�YNP"�0�r����ƪ�*�͹�����xiV��4dө��	\G]�ea�</ ��+h�V��b���)n,�	�j��h��V��vk5[Ź��T�����&FCn GE���ó��m(�97L�'IƆ���'����{ ���N}�}ۺ����ފ|,���Ų����\���} �PTh
�&���阝���́`�l�����6sT�2M�]�}�jWN>����=���:�]N>��)�j�ǣ7�Rq�M9�E|��_2x#R��'�����>     