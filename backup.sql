PGDMP         5                {         	   testepoke     15.3 (Ubuntu 15.3-1.pgdg22.04+1)     15.3 (Ubuntu 15.3-1.pgdg22.04+1) 1    \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _           1262    16496 	   testepoke    DATABASE     u   CREATE DATABASE testepoke WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt_BR.UTF-8';
    DROP DATABASE testepoke;
                postgres    false            �            1259    16688 	   medicinal    TABLE     �   CREATE TABLE public.medicinal (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    id_mochila integer NOT NULL,
    nome character varying(20) NOT NULL,
    descricao character varying(200) NOT NULL,
    quantidade integer
);
    DROP TABLE public.medicinal;
       public         heap    postgres    false            �            1259    16687    medicinal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medicinal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.medicinal_id_seq;
       public          postgres    false    225            `           0    0    medicinal_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.medicinal_id_seq OWNED BY public.medicinal.id;
          public          postgres    false    224            �            1259    16657    mochila    TABLE     9   CREATE TABLE public.mochila (
    id integer NOT NULL
);
    DROP TABLE public.mochila;
       public         heap    postgres    false            �            1259    16656    mochila_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mochila_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.mochila_id_seq;
       public          postgres    false    219            a           0    0    mochila_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.mochila_id_seq OWNED BY public.mochila.id;
          public          postgres    false    218            �            1259    16505    pokemon    TABLE     p  CREATE TABLE public.pokemon (
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
       public         heap    postgres    false            �            1259    16504    pokemon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pokemon_id_seq;
       public          postgres    false    215            b           0    0    pokemon_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pokemon_id_seq OWNED BY public.pokemon.id;
          public          postgres    false    214            �            1259    16676 	   seguravel    TABLE     �   CREATE TABLE public.seguravel (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    id_mochila integer NOT NULL,
    nome character varying(20) NOT NULL,
    descricao character varying(200) NOT NULL,
    quantidade integer
);
    DROP TABLE public.seguravel;
       public         heap    postgres    false            �            1259    16675    seguravel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.seguravel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seguravel_id_seq;
       public          postgres    false    223            c           0    0    seguravel_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.seguravel_id_seq OWNED BY public.seguravel.id;
          public          postgres    false    222            �            1259    16539 	   treinador    TABLE        CREATE TABLE public.treinador (
    url character varying(255) NOT NULL,
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    id_mochila character varying(255),
    id_cidade character varying(255),
    id_classe character varying(255)
);
    DROP TABLE public.treinador;
       public         heap    postgres    false            �            1259    16538    treinador_id_seq    SEQUENCE     �   CREATE SEQUENCE public.treinador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.treinador_id_seq;
       public          postgres    false    217            d           0    0    treinador_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.treinador_id_seq OWNED BY public.treinador.id;
          public          postgres    false    216            �            1259    16664 
   utilitario    TABLE     �   CREATE TABLE public.utilitario (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    id_mochila integer NOT NULL,
    nome character varying(20) NOT NULL,
    descricao character varying(200) NOT NULL,
    quantidade integer
);
    DROP TABLE public.utilitario;
       public         heap    postgres    false            �            1259    16663    utilitario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utilitario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.utilitario_id_seq;
       public          postgres    false    221            e           0    0    utilitario_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.utilitario_id_seq OWNED BY public.utilitario.id;
          public          postgres    false    220            �           2604    16691    medicinal id    DEFAULT     l   ALTER TABLE ONLY public.medicinal ALTER COLUMN id SET DEFAULT nextval('public.medicinal_id_seq'::regclass);
 ;   ALTER TABLE public.medicinal ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16660 
   mochila id    DEFAULT     h   ALTER TABLE ONLY public.mochila ALTER COLUMN id SET DEFAULT nextval('public.mochila_id_seq'::regclass);
 9   ALTER TABLE public.mochila ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16508 
   pokemon id    DEFAULT     h   ALTER TABLE ONLY public.pokemon ALTER COLUMN id SET DEFAULT nextval('public.pokemon_id_seq'::regclass);
 9   ALTER TABLE public.pokemon ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16679    seguravel id    DEFAULT     l   ALTER TABLE ONLY public.seguravel ALTER COLUMN id SET DEFAULT nextval('public.seguravel_id_seq'::regclass);
 ;   ALTER TABLE public.seguravel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16542    treinador id    DEFAULT     l   ALTER TABLE ONLY public.treinador ALTER COLUMN id SET DEFAULT nextval('public.treinador_id_seq'::regclass);
 ;   ALTER TABLE public.treinador ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16667    utilitario id    DEFAULT     n   ALTER TABLE ONLY public.utilitario ALTER COLUMN id SET DEFAULT nextval('public.utilitario_id_seq'::regclass);
 <   ALTER TABLE public.utilitario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            Y          0    16688 	   medicinal 
   TABLE DATA           U   COPY public.medicinal (id, url, id_mochila, nome, descricao, quantidade) FROM stdin;
    public          postgres    false    225   �8       S          0    16657    mochila 
   TABLE DATA           %   COPY public.mochila (id) FROM stdin;
    public          postgres    false    219   N=       O          0    16505    pokemon 
   TABLE DATA           �   COPY public.pokemon (id, url, nome, apelido, numero_pokedex, ataque_fisico, ataque_special, defesa_fisico, defesa_special, speed, nivel, hp, experiencia, status, id_habilidade, id_equipe, id_nature) FROM stdin;
    public          postgres    false    215   �>       W          0    16676 	   seguravel 
   TABLE DATA           U   COPY public.seguravel (id, url, id_mochila, nome, descricao, quantidade) FROM stdin;
    public          postgres    false    223   {�       Q          0    16539 	   treinador 
   TABLE DATA           T   COPY public.treinador (url, id, nome, id_mochila, id_cidade, id_classe) FROM stdin;
    public          postgres    false    217   �       U          0    16664 
   utilitario 
   TABLE DATA           V   COPY public.utilitario (id, url, id_mochila, nome, descricao, quantidade) FROM stdin;
    public          postgres    false    221   L�       f           0    0    medicinal_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.medicinal_id_seq', 216, true);
          public          postgres    false    224            g           0    0    mochila_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mochila_id_seq', 200, true);
          public          postgres    false    218            h           0    0    pokemon_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.pokemon_id_seq', 17877, true);
          public          postgres    false    214            i           0    0    seguravel_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.seguravel_id_seq', 948, true);
          public          postgres    false    222            j           0    0    treinador_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.treinador_id_seq', 646, true);
          public          postgres    false    216            k           0    0    utilitario_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.utilitario_id_seq', 70, true);
          public          postgres    false    220            �           2606    16693    medicinal medicinal_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.medicinal
    ADD CONSTRAINT medicinal_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.medicinal DROP CONSTRAINT medicinal_pkey;
       public            postgres    false    225            �           2606    16662    mochila mochila_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.mochila
    ADD CONSTRAINT mochila_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.mochila DROP CONSTRAINT mochila_pkey;
       public            postgres    false    219            �           2606    16510    pokemon pokemon_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pokemon DROP CONSTRAINT pokemon_pkey;
       public            postgres    false    215            �           2606    16681    seguravel seguravel_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.seguravel
    ADD CONSTRAINT seguravel_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.seguravel DROP CONSTRAINT seguravel_pkey;
       public            postgres    false    223            �           2606    16546    treinador treinador_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.treinador
    ADD CONSTRAINT treinador_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.treinador DROP CONSTRAINT treinador_pkey;
       public            postgres    false    217            �           2606    16669    utilitario utilitario_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.utilitario
    ADD CONSTRAINT utilitario_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.utilitario DROP CONSTRAINT utilitario_pkey;
       public            postgres    false    221            �           2606    16694 #   medicinal medicinal_id_mochila_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicinal
    ADD CONSTRAINT medicinal_id_mochila_fkey FOREIGN KEY (id_mochila) REFERENCES public.mochila(id);
 M   ALTER TABLE ONLY public.medicinal DROP CONSTRAINT medicinal_id_mochila_fkey;
       public          postgres    false    219    3254    225            �           2606    16682 #   seguravel seguravel_id_mochila_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seguravel
    ADD CONSTRAINT seguravel_id_mochila_fkey FOREIGN KEY (id_mochila) REFERENCES public.mochila(id);
 M   ALTER TABLE ONLY public.seguravel DROP CONSTRAINT seguravel_id_mochila_fkey;
       public          postgres    false    3254    223    219            �           2606    16670 %   utilitario utilitario_id_mochila_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilitario
    ADD CONSTRAINT utilitario_id_mochila_fkey FOREIGN KEY (id_mochila) REFERENCES public.mochila(id);
 O   ALTER TABLE ONLY public.utilitario DROP CONSTRAINT utilitario_id_mochila_fkey;
       public          postgres    false    219    3254    221            Y   �  x����r�6���)4wu�p�6���$�m�I�LXtӍ�O@�l9�M o������z�m �Li�;��	����/�lQU����7��t.�E=�-�T�i��~n�}.���[YA?��Ƿ��t])Y��L��b]��J]I]��Ŝ�>�4W��BZ�_�j�=�;@��>B<dS���!�%�n$v�>Hⷦ$�:@���%WҴ�������4ׄD�2t�rW+�-@��$����V��!�@%[IX�/|~&��|�,π�gE��(@���6�+r�s�
ě�%p����j�9"}":5�G=���FԪ��nyD� c��o�L�[>�1���{�x�9(q���'@��G����`Uz�(�u�u��xF��^�l�,x)�P�I�~~�Ĳ��	�V9pQ<�{(d1oh�Cv�?K����òS/�%.�L�\��X� J��`�.`�Jf���=��Y'0~Q�wH�XB��b-���ha�.�bw��)�vA��P����9z�HF��]�|8D<!��7�>nHE	2�H��M� d�t�0>��9ת�y�"k0�)k������12����]6���!*��� Y�
p�)�.ŝK�d[6ds��f`�ӡ��1�m.���f/�$ô��ݸ
hZ��a�s@7�%�̒�����xq��Ͽ�d�-T�bEj �]t�:`�F�gv�[y��-��gY����=_��I�(��j�+����E�a�����#v�� 	S���θ��5,A�$��!6
{��E��G��F�����)I1�zs�b�p�$F�;���:4	Уy�?�N<B!��Rx����]ڈr��h�#�7"����*��Q7�A�~V��Q���&���w,�J
]c\2@0���\jh��j��G����F?�C�bB��xV�3��g�V�S���q,39�r���h{���9��#���(�?�vN������9"�y,��n*3�g6��E8����n;���}!��B�^�^�|'�)镺l0fSJ͉.�������������x{�|]w�Y��Od.�#�_^.�}[Є�4�Aig?��sc�sx�5�5�1ۜ�������%u��ؔ����&70�Z��BB��l�	���?����Ň=����"�3�����u[�A{��[���������i�����9�      S   V  x���1��?�Qq�>��@���46��d�9\�HH�N�d�M�T�BթAMjQ�:ԥ7z�>��}�}��2#�b������،ø������M�bn�a^Vc�U��,�w�6�.���.vg�d�;�}ؗ�8��sgrǿ=��m�p�۹�;����b<9�M��H��i�Di�4Y��?����ݳ{xO���S�ם�1*F��!�d����/�;9�g���4�FԨY3^1w�F�hq�n䍾8
g���D�ʑ9:G�(��u��z7�N��#y4��Q=�G��w,�?�G���1Aλ*wV�b�"��)b�#��}����� ?�l'      O      x���M��8�=��9ElfU"�=��Ȍ�ʌ��������%�;�)QEI�鱚��b�0瘛�I��@E��_I����0'A��`�YRUy�p<��ǟ��m���������i��|؏ݱ=���o֏��l��ͮ��y7�ۦ��ݩ�k�i��}����ͤ�Ɣ7i�~�cnrsS�n�:�ڛ���%V�*B���W�?D���Iӛ,q��
�7�B�:B�����^��iwқ��I�򦮤�o��&�_c�sM�j�kM�m�}��7������>�+A/�I�HJ|�\�V�즰z٩��"�&��/�ƶ�M+������Ǝ�������p��Me���Y���զ��a7i��\̭*�^��G��)V+{wR;{�*�ԧ�֌�{3�N��UȾ9T�vM�ٛvZ'�G��p�x8s^����G�ty�_������G�����MY�K�Mf_�@�<N��Kj���԰��ެ$�d�gV-;��Y^�j���S7��O�V;�PZe
��֪an�8��>5�q���z3���ç�Ǫ`'o}���1V�^?�� j�u��d'jfo���)彪���%��e���'��`�|~p1vA��5��NU�T�ٛ��7��7;7��)W�X���ͱ��ܝwڙ�d�%�d7i�����oy�0���m��~�Qd�&�}����6֦���?:	פrcw�NG�G�V�Ƿ��\���}E�;�W�0Y�zijcu��v�^����5V�|����kJ��8P�K�=��Ӯ�?St�]����_�F��~�o��56������c���,�3	I~cW;�������Q,<I��j\cC���ݳy���}]�zVc�}�|�m���*d�	�rcR���}��D�5��O��v����ߜ`�S���q�4@o&�Q��V$7E��J�Ǵ�4��dU������}E���ְ�vb�t�uH^������Ae&�u�V4��}4�|�1e�X��96�csl�j�*=��a�
V��SLՌ�,w�����p�6��7;���^
���0�vc�����޺�p�L�x61�Ӫ�ae��	���[R����ˉ]Y�Y�^��6/uZ��w��f���V7p���b%�cU���'�E�����	ۧQ��>��YÚ�BÞ�x�_&~�����V�=�W�����G��v=����c�;P� �]?�K�]L��sU�3z���1���G�����,�R$v��Z�E��r��L�c�~8��Iz������V�����E����\��M7i�+;�������T�Ү��40��ú����k7�&��ŕ����B���2b�
$i0O��V�V1���mc����$D��g�F��u�ޚ|�t���3��=�+~\w+�>�p��HĲ����������t_ЛI�b��}_Ǣh�J�:T��M���`����ų�3� �*z�����Z���೅[bb���c��7�������s.Z�^Ud٧c�n��N���hbl,u�t�W�L�}��zc7��a��wuM)�"��B���v��`o&�w/a���)7w0��	�7��~���_sѾ6�Y}�c�J-q=���%����p���&�.����[�/�w̈́1�2��]��c���J�3	0n�[ô���R���5ɲ�.Q�׾��t���ig��/1�]��L�.ŴjD�[1�����igpRؓBv��m�'���^���ĥ1����w�iE�`K�Bl�x87�W���QUqn^eDgJ�{V;=�ɀ�����Zn��0�3���j���3U{3�>���*&,"��kWc<,�]�1����?�3~lw;0Q���ۙ�J���C�|�ק1v����}��?}��ߝ��-�k�$F<�^�x'P&��>qȣS�wߝ���!�[�xp��fE_;[�BY���v�k�j��Y������
*Y����b�;{?����qMF?�H4dR���lb��b���t����k0�'��{,]�$?Ʈ��ðuw ��Z#� lh-�}C��xoÐjeM������K���3)��&��94\�������b� �flĒ}�������9����拻cI9v�>N���$ Ff�G��&Yů} U��]Z�A�,�?���]st��}k�E���#Tॴ�u��Kc3��v8>xЙk��ۭ]�r�򅑈Y�,�^n�{�/�[�^d���tcN�x5K��إ�W��yy'��ϗ7ޭeAJ�VaZ������N���c���t;�ߋ��{Lzܳ�'M����N~���ν���\���ͬ�r	p�\ Ah�v�fe�;cV�����#E��?8g����}zF���\cV/�~od|w/�{p�j�����y�h���1��V���o��\�zmѷz5��_	@2�c�#ϣ�o;�m�Ⱦ�S��ݣc�׬�~�ͽ|ot������
�9��v�7pΐ�s�j1���ϛ�Z���D����փ��q;B�S%�d��0>��a�y>���\�D��P�{d��O���v�,1���=�A�G���3�j�A��;�2tP��k�y�6{���$�Aq�.F�=H��@���~���� j|p��d'D�3�29.�xE�1��_����pr&�+��'�z�U�����������>���k�q�`��ҙ��.����xAJ����Ӌ����g������������.�k�CX,3��"��}��H��Ⱦ����$;���3h�<�����t@o&�B�o5kK�t��I��"��bرQ����$8�%�M���sS�G�F��m�F	O����\��c�]�ǥxDXz�|z>xcf���g�}[0�
�p����z�1�,ffcj���|k����v'�䊯
�9���	@�S�4����*�ȒHq��z�pw��q��#�%�Q>m�~���AtM!�b�\at:���1攣?�����oi4S�����)WƜ�t��11��l��`e���N�	'`�r�^ #+�e��k���7�騩`�;���I�w�)_��j�D%�����A#���ݹX�$,��e����LA��*����@��Ǳm��RrݹXj�K�GT3�Yd�^�Eص�1��vwl�� �|v��T2�����؅+�$U�e=�S;Wݹ�T5Z�\��s�]^&9TQ��v؜6�E��[�U3���+qI7I���^jYu��fKGu���ku��V1��'���J�JT vl����->hg�����|]lS�b�w��yYn𳛢��]	��heU��at#_hcs��ݺ�_��_��4�O*�;���"��:�u>����/���4K��v�>&�g��0[�a�|l�7�蚲t`FpL�I0�5�*��Yr'8��ȠS�&엌�f��勒c�Q�I�N�Y�}�qi/�jgJFk��MO��3o�������ō<݈啲�a���dV�"��:����9K�ڙ;=�>
�j�&�0�I#�|��K����θ�����R껓��n��eHr�Iv:ލ��;V�-���L�HZ����W<5��1lKǞ�zX����U�s�r,�)�:	&�"T�b��Sd�0��c:�P�� �@	㬣�X�� Z��~�n�U���7�*�Dr.,��D�=b�-�8*��v&��&v�$�IJ�8�_��K{\?�GכIȭHx`m�l`_��^}����?�*~�in\�T1���d˹�
��[gzUQx��u�ݪ�������9s���r�SE!���8����<L�J��K&,���%�dx���Z�V��[+�O�->2E�6��1����~�d��"�9i	?�sP�Q\��1��{D����57�Ԝ=�ⅎQu*��=�z�1���/�{H%���P%Cl��қ�\]�����:�I���#��>0���d',p��ȍ�Y���Xs�`<;g<=�C�I�����M?ҋ�4,�����1������C��jg�/eײb�ǜ���ŭ�qN���|8:�v&�|E�Q�",xAx�✼�
���ף9{9��@�55mc)�f�p��%�%���*
��Мv�N�$�ok��V��    3�#�'��:�jw��	���>�5U�@���_��c97�B`��0���ɨ���e�H8�}�3�.d��Bu��ig;M`���&>�?x&��Xř���1���8<}kŷ{/�ok�H�|��̗�.���*
o��߹%�'��[3�`�_M1B5�1Ƶ|��;y)�� ���3¾Ь���<aL��\!�܅�~ٷ̆�Tcdӌi�X�%C��:��a��`�ȾE��Mg�W���p/_]���|��Z����x4�3/�S&gDF�`#\د�d}�׷��8h��כI|V��)�c�%w�*����8�O^g�W�_N�o)�_�� �`����*��w���������\o&!t�X>��<U&���T�4@o&�hhŦ��e% 8i��u=$+����[�� m�ۺbv��}�]~bk}�43�E��5]�H՚;+i��Zۥ(���F}e�}�D������}�"�U�܃�*�����9�r�;��]��3�[Ԛ�c�]cQU�^��q���O�7�hҐ�/9E��b�6���6
�%ʬ4%�'ߝ���� 7L� Q��P���w���x���/�7���� s���"1yqKb�������Yd�"�*u��<��T��SEA�����S�w�}K��jP�0/�����@�⡼4n���Ǡt�)ܴ� ���g��[���f�:\���a����0:���m���"��1A�QQ�����V��0��v\�Tɜ�"�.��c�0���
��o��vM�|'�o���&��A���|�(�ձ�ݷ���}ٷ0[<�XOƳ%�1����z�C6�Gg�~�ݹ��m,s����"q���]8G��]�ߠI�i/:�/{а�H^OuS��z�(�};�<��(�Ѳ��Gd�i�C�:
|e��h��-E�QR��#��fDŗx�Q����~Ӷ�	���o��4Ġ�x0e&�� �0ɬ��a�{���jr+=ߒ}�k�_�rX����b��TQ@�ñ�O�E�0�<������pЂ��`[%�ٷx��Xn�L� vr��Uk;��v[=����ʾE��NL���K�g���s~1 hȐ~=�ӫ�&�e(�RK�n��D�����C�[o��[� 930���WXke\���g}����8�_� ?x5H�ǝ��y���9��aq'�ܝ�}�B��E��0�d�.9�Ѐ��Ž
��o�K�c�H�5d���1�$��Q{���#
|��v�nT��an�y+�yx�_�2Y��X]��:�B�@s&4��$'�Щ%8C��J�+��5b��9��A} ��I$�ΚQ����S)�:���S2��}c�1�$2�w���9�z;����5*eH%i�| ���9�hC cu��r�v}k窽Ņs��D�TK�2���aR0熋�U��z5�:5s�����V�+Lɸ''�p�}r~�&���w�{lƽ�ݏڝ��8�x���3��Hڬ�`X����l�R�I������+�f�8eB �<�8��
�5�����g:g=�R�e�$��k@-	)��(PV��x�����	����]�������ޫ Y�L;"����7!}Or�:����jۯ����2�k�K0M�Q�.�����`+����ov�f�7�}��_\^ �g=97�)%�9BH������q����I`r A_�%M�%��	P�g��7Ʒ����.ٷ�Rʒ�B�h�@%'��i�We�W�Ǐ"���J�[�t���B�*
le����Id��CYI�}���#J��.��(�հmv�zf�7�}˄�T!�)w\�ɽa�_��*`��T��[�J���$E��ڒ!��Р^��~���g��!f��`N@Iv#�YV���(ĕ�?̴�&�� j�|a�c7LN�@�(k;�f}|��7�;��OZ]#���%/v~W��f��4�
�).�S�2U*��a�)�5��EC���X���loE�-���2Lx\ɬ�*� Ƣ6�[����v&�A�H?ˉc�"Y��PW�(c�<n�����+|8�!Q�ޡ��.h�������7��Eא��5s�!�$�Ev��]]����"���������	`/%�|B~��]���`m��;*{�G�}+��D�
dʯ���l���b$������$�@e�ԝk�͹o]�(<�\ջN��(��'e��*x �p%��b�%��h0���$��%H���_�L�:%!<���`�&ݱ�ib{3	�A֑�>�Y*�~"|��Bc}�Z���4(�D� �Rv��,�ٚ]	j�w#�k�ƋS]9м������O�����Dc5�.�/�f��y^���A�TbʘXQ�X���iWEᲶ��l���μ<�XW���
���3��q��I���ڛIXg��G�'�ex��8+�B`�5�}�j��}���|잮`�q*�!�]U2�bם��G�N�ؗlt</�M��,�>�*f=�6ͿN����\o&�����D駬P	�x�I�U�`�W�%�)�oe�[2d+�zbDt"�4Im��pW��>���������E�$@��09u�]�WA��B�~��\�ip��w��1��aM��=[���0X��8l:e����I #%� n�Q�6��~k=k��q{��I��S��G'q���SBw�*�w����}s��Gߝ��D#��w!�i�! "�=u ��vԳcʾ�Y�؎[���̀,��/u��it:�H�5�T��cKhG�$h^J$?O��(��0�Ք�LB��/Ϯ�突�4P"����qxK�W�}ǐ�eJ6L%$�!�A�ci�v�|�j��k��R�K�ǁ{c$N(ce������׀ZxT+-���cA�J&��Q��þ�5�&��jgx[��D�	HQ�Z�E
���߈�[0�T ��;5���!҈�)��;����^�)�$�W����X��(h�C�[?'�&�3	x�vZ����R��"�#
��7��i��e�&>�m��VV�d���Q�=
�聹��ob�u)�����k������E���N�5x'��
4���̮)&��X$?�s����z3�W$?&I*�Ahc1��}���ׁ��?IB����QV�@�(�Ԏw��^+���4f��LހGZP& �Q�]s���W+����22Z*0�d�bL�v4],����^��t�V*Y]`���Y�fl[�.�58�#2�|R�������7͗/��X�oq�k�]H,V�n��A�uT	�f�h\���Lvc���Q	V*F���*��Y@[G��6�=k8�Q�!Wr(�EK�K0p/nIT-ֶ�{�ð��o��$"I�S0,�� 7���(|�����G��aE1
�E
���ȣ��W5�N3%޸�LJ��A�m�d$ʅ�ۄǦ�U��zv���4�&�u���BW,�8m�(�r����Q�*���v�
�iwX!'ג�8}!�� SS����:
d�0���^�B]���q{?*����7b!̷�*sux��(h!OF;��T�t1�hO�Z�Q�����׀��$��T���9Qj�Z�����0
^�t{_��d�M��E�Pͭ��S9���Cu��p�=���ފ�ۤ���٧R�ư�W���J|� ��$��)�4Q.�["�0j֕���U��n+z�7$�E��p1�q`ŲD�ǒuTE+k��>��wv\���b�5B�G8���/�k���Ee�W��R؅6���k�bMаto���ש�?t�+J�ڝ����T)�"-l�X��/��*�zػL�(�'7p�1�p�_�=�d��u�괽��RٷI- s��NV�k1P��u�t���kHϷ	��S	n(�aq�8��V�;�����$ �
hH�,�rX����}�
:u��tX�=�! �W�[���䔇P���"�Q �mw،m���)�;1[H�\�_��<�Z(cgO��I�0$���z}��4}����BX=w%�Gog�?��2(�����a�]3�-B�$
duߍ�;#����$d���R�9'���ж�U��v�zp�+�ƬH�nHI`��`�V$~    ��2��`l2O�ݹH�]p*��G_����RG�ڜv�}3�5���f2�6�_�i��?����V�8O}����I�`�/�j���Ջ
0u��pl۾������[:������b���E��*�ռ��=�u���w��I�0#c�r��A�	JՅ�u��;Y����[�LO��s�R�%���$�8���V�c��|��$�S�*��h�\��UhD��[}�e{��/���jg&#�<J(���A�����(v�T9;Vw�����*ɵܟ��I`���Qe����0�(�q�I�iT&At�b�{�X-b�c������w�}}�f2���/,8L�$:�4�VGU�:<�֏�ep+�o�:)7��bUb��b
G���c����6���3	�E$N�R��V�*��|O6����\KЅBX����0��EȀX�FQ���9������-�5s�y_�w�
Fa5��*��w�oUd����u�T��> NknX�xVR�&],UQ@�c��t����7�zM2�T/HDŬ�E�6
���Ɖ[��ڝ��J����X��X�X9��g}�v��X�-E�`� #a����;�\D$��X���Ψ���(ٙ`ıJ���>����Cb�:
�ux�� ���k���ʕ}��*�\����%�J^u� E\����$��6�t�*�$�T�D%�aP��w"���%��A4�}ݫ@Xs���o�u�i߾� ��J���_9��PF�F�ߎM'�jg���=)4��L<-�(U,{}����u����g�!3�|KϤr���t��gm��׍rO�kg cOW��`�}���d�w�,��;�2�E�-�`��?�$3)W��f���*�uxlF;���E:�`Hy@�Cn
�Y����P�:
��0�v�ᤜ�ڙD%����,.!e�"���-�Y�Oڝ i�qN_O�fda��_�����8��^�Y��r���/��!⨎�a!�8�~ٷFޖ�C��u�yUk����2K?QtP�H���G���.�W8,z_G�6�j����֤�*�Ur��p]�z��L���h$	�`�Ռ9��ċY��P9�[�Ln<a������d&yp���:l[뀹�v&�c��$(=%��@�8P�8ܟ4�]d�(dg��^�I�Q ��l���O�7�X�P�t4ܪ#-(ch'3�y�n�a�p�S|�L�k�P	I�77�rt��^���7�K���@�5 k�'):W1?����ՠ����ՈLO��Ly�¸�!���Q0�m��T�sE�-��X��F^��4��
Q�;8vɷ"��0cV�=��D� �d7���U��}�$�_)���8����)|�߃�Q��vwl%a�H�k�LeL8B�d#X��͌�RN�u��ٷ�⩔� 0W{P�%W���������E;�`p*n�>�Z���U�����Idߚ�)F)�V��Us�� Sϣ�:->��LB�0@L�@Q$���v^�:ǔ�(���W3�B��������JG1(c8��}'~�/��נ��a��J��[ţ�4�p)WQ �����;+�/��+Wp���<	���͵]���R����'>�0�bYG��R�����G	}ٷ&�=����w�}
��A���wp5|}Vw�Ⱦ5����#E�qcY��!-�"ʄ����o�3	�1���Y�|�j���Ur�2/dXq���c�;�����są����g�V�kz��C��]�g��ьRN���)Vb5
���Q\����tx�4��\&1^�_�w5�� �*1ާ����4y��I08*�����.���f�{Xu^ZЫো\&�y��\��^#�TE����*
Q�=m5��#E���K�ʷ�3�a�JN�((ն������LB5S�����L���l��Jxj��vT`�v&����D3c��gu�|,W��R��Č�^Q�rփ�r�v1L�l=b,����v�*(ko&��D6x���̄�4T%�[�v�G��GכIXz���B,�@<�.O�����k����f��BZi!E8+�f�/n�KYU��E��<cIZ^�f��;c��:o̡Xܣ��w;;��ѿ��[SH�l���:�B����Y���y����M��kr-����+
��t�{u]~ٷ�O,�t�
��
Q)]�vs�Vd�"��2qt��>.�����t���\���$T���|�j!Z��@�(����o�;�}��mƄߒ�Ɇu���jO%���t8.c�=;�1�0pѡ�G톤�e�*E�����H��H�kJ�xŀU��DBU��>ƨ�r�u|����,�4���uI�A��]�(�U�t�w��_�;	���]������S-t�ʮj����A �4�5� ]��au8p̮w�ַ����oAy�1HkHY-���u�2D��K���O�o��[S����D"e���ڪc)�M�����|ٷ���ޓ���+�
q�h�U�ٷ��V��/�W���k��ŬQ���ݽKY�]d�膝�T����7"�m�n�ד�Oڙ�Ni��@�(0�
C���Z��ǃ�������,���H�/�.T����Ct��-�ms�R��<����͸i�J����f���at�I3�d��
[5��wc�x��%%�?�B����P��d)V���*���ة�ٷ�"�@M=��C6���6��ڱ�v��vݹ�%JꬦJ��2�_O#�*��
U�aغ��[כI�O��/��RT[غE��ͱ���"���M��g����ld�(աo���	�}�:r5�1�hK�sB+
N���F��oڙSކ������ݘЄ���P�fi�zÚ���o� (4cQ�]�[71�ٷ���&��
CrE��V�KjU�gsxt*@�-�8hs9�)W�JY������S:���dE�S*�=�xq��Qp){�ռ��E�-�g���2�,22T�ӈ�K��i3�n�Cٷ��]b��n�� �4�{(!��"�%%�#Y�,����(*�բz<=82؏ڙ��P!l�Iy`}�(��C3vύ�����I0dd�)<#���JD���RW
[�!Ӊ����"��Q��vá�7
���v&���_�܌�i#~�B�(Г�d�.G�k�_dHү����Y�=?�Rn�~�8�kgP�>%3��fRP��߭Qֲ���g=rٷ�J6]<~նb���tq|�i���gGrAO����Z�g�(^�r�a��rUUj�<�3؏]���@���+�!}
�(l�B�s9�i�e�������b'UQ�5���
�&sShvWRj���#�̾��ؿPt��X���H�`ǎ������蚔��R�%���q���L(2�t�}���T� ��h�v⎅B��F���;ڋ�?\�� л�4Iθ�	ÿ�/FT1T;�����Aw����ᓳ��0\���c_������Y�0q���Z����H����4Y�s�[��*�������;c�2��BU7j��8��aP�7�҄aA��a�L�{�*/e�������L�YژS4@��]2���>
���O��(�&�g�(O��� �Q,}��H��k5t+r�B��ũi6���ߵ����ȾE�������Ɇh�?��%Y���� �C;� H�� �4�����	_�(D�h�ܾs\ؿJϷi��(����̙�� Wn��I��~��r��&��Q�C��2{��V�(���ǁsˎkҤԙ '!Y*��S��������=(�S;��&��=� ��,ho�U�`���v3h�B:�����J�mǺ�	S�2|*W��)::���+ꈟ����
�ԋLX#rj��:1��������.�oQ��4�8�Vtr�
gp��Q %�1(��w�}��HQ�RH�̤�M��a�j����i�I�
YS�E�I2*B	�L��(XҺ����w/�;�NB��
�.X�Z�+J)`A�|s��V"��+৫Z&�y�H�-�3����YDڢ�I�a|���B�mj�:�    R�ޔ��,�Y&����, �5`ߨ]H�D^q�(D��x��{M������"gz���QJI�s�0I����[��IM�Z���P���u�>6{�Ьv�LB�C��Vj7���$A��p��@I_����6�Mdߦ̿%�S>�Q��`E����`�#Eפ�ͭ�5�k��H+�B��NZ7�]�Vy��IS)����+��<<t�3�kTth���$�܈����Num�Q%�~��'�|Y�5)07D����%x�<��HDz��WD�m�:j��X_�`������$-"+c��+rA�+���O�&hZa��W�tw?�)��v&!z.�BY�b ��0�2�,���s�(�"�6�3�LA�ʲ��((<Q&Q����k�>�V;��"��HѺ��N��i9�4\Q�(��a��a�K�ȾM1r���BI�2"ԑ����eS�kƻ�ѕ�v&!e���'��6���.}��Fs~��$ �_s�X��K�`0G���S�D�rZ����`���$���7�A��L���X���<m���1��LJ��G����V�v
s�(Xҝ�j�b�)��x�!�ɰ��g>�B��ZN}����ȾM����]�t��=�R�,\X���N}׻�)�Pth�'V1K(����1o�=��b���nR@�m*�KR����9��O$
}��P�Tޏ7"��<qj$칥p�R/�
/�(�Q�ߍ�GNٷi��[�\��DH=��/��C���QR_��I�V�TU)Yt��G�3u�p�Ə��m�3�V��s�w�IX�ܒ(��5��/Vt� v&!���$9��e�E����^N���.�nq�Տs���R�n-�H�@r�j�h��)�4�@�_q)Ptv����>�������N�N�Rx'�k)y��>�
)af�b�S��]���E�m�KhWX�$-�����)
�tx8���&�Ⱦ�Q�$XHn|}��E��Fa���_i���"�[]ɻҼ�B�y��Dr4��+#� �rA���w�L-�k�`�DQ������ߋ��4w�L&Ā�$�T��#��ap:�3	����	9��&��D��D�;�þӂ�E�m
���/���e��m�~����v&!%J�؇J
���)�;�����bW��_�#s�qؐ-^ɗ��s���]��O"0�pJ��&s��j��yל�&�N�5�'�I�@'tH�b��A�l�.�"�6-\���#u�£�$
�t�7}��]�O38܇YN��4x�U�Qgh�j1�� ���E��Y�А.'|��H��C���]�"���9塰0�!�yq'��G�X�@RtMj���)�x�xf
'Q���[�y�.�oS�6�2Ǒ7�a�@�(�ؓ��ocٙsW�ִ"v�nl�6�3
��`_¦=~ٷ)�
a~w\���U��)��RO����=k���LB�݄�\$��� �c+Ƕ�������&\&�/ǉ��V�!�u� 7��D�����MwXk|��oӒd�vbT��a&�^�M�( �]�NV�B���N̊i,��"'�J�T�����N�[�}���z!%����'!UQ�Bj�+���.�Y{3	9�����+)*ҳU��]G�'P����z��2�u�x��yB�7���<D�%Q����ߜ|�X+�&&M3�p����q�D!����Qh�G��I�\�ܧ�CHe��Ə�=6��T�U`o&���o�1d�+�/�*Ij(��s'?�<{T/��ѳ.�ɸ�ɯ���bŋ)��}�7~��$��LS����cl
�kIT	���+Eפe5!R�%	ICc�S��,��5`o&�؂h����V�{��b�Fa����i����I��ä0pbJ�s	�C���Jg3a��2�Lǹ�X���IFaIR	��=�I��1���FRY�*W�07a�݄�߄�`=�I�ASh-���p���*=>��!�3E� �̘݊������2�7��d�����2�O����a1)�@�9?K;咎�i�n��}�b��/J�-w �Ӛ�����zĒb�e��ѱ�M�)3�R�I ��c�\� ї�#
�46��:5��q��$������˃ZPn�aF\r�iv{�����Ɩ��uX}�23�B2ؒ��
I���ج���/"�6�����e�2��3m����k�)�W^��W�o/^K�3�p�����(Г*���:��^9W��D����څ�}T�&�l�~iw�-�j��K纝_�r$� ��-X�2�u���x�1�ZU=��v3W��՜_���E�^$T+�0��V&QP��i<>i��g�}�V�ڪ��c"W�^ܩH[~��w�»�&�X�#g��
!���h� ��؎Z��v&!�xr.!��V�^,�Q�)������N;��Z�"�FM\L���1��N���Ҏ;-I��IHkW%#{\��-�%�1�l���q���")2�J�I&�K�� s��D!��ݾ?IZ�'��I����w�L�J�X��4���ݤ�v&��+ɷ���oA�lCL~L�pT�v?�#��3	i�k��;i�KTu�C��$
Lu86�g[�e�5iM
dx��XK1�@���$v��t�jwҺd��O���#*��SWןIi�" )�92NY� g<�(<�]�G���פ�O�1Z�A�LB��Tw�]3z��[��6[	w-��I��X'9����N�c�~l������$T��F�J�d@O/vMQ0*U�����b��ϊ8P�
�>�+O3����0�1� ����l%�'���7��^Ľ�`T��n�ô��fZ@	�?)��V,�"�:
Ee5���I�qM�b	�����aJ
I��5-����i�
�[H���XY
�݌ח��A���:�BL;6�v�Ew2�Y -�e���J���,�Q$QЩ5j�l4��N;���2�r�	�C�Y�m��ft:��z3)#P>#q1y'$L-������������LB�8�R�Ec'���^�^q%��ñ6��K{3)Kȡ�(OQ�̍Ǳ��AI���4n�_��F3'ޢ������C�x�J�ْjQE�8P�=4������n�<S��3��W2͑ϕAR�A�z�Q�+Q�8:�(��3��W���<�֧�IU"��rQ�h6�v�\�Kg���+�I&�L�����U�$
������i�P/^������?�$� FY�uK��]^��{�����Eh�ae� M��,^����v��{]���p榵�j��*Zw*�ɓ( jʴ���Lۺ&����V\��(�������ujź��z3	 I����)fqO�z���B}����ɕ�v���)�Ǹz��iLjg�o���d	93s�b���&
Ss�Blvh��?jw�D��j.��}�3����V�Dag���ꅉ���N�R*�VR"Vx��R�Fv�9���Nd�f&�2F�TS.���B�K��٭Ⱦ͌����m,!ϗd:&
�uo=��{D\o&e�`H�	y%5ϭ��\L�Ќ�(�W���������6����K6��H����h��_���/�ޓ�ڙ�LV�0 �L�8� 
��z���3	N�WB�]�7=���D��v3ߌ�����H�	0���1/�Oap��L�����ȾEe`)�S�
�Q����xq.�2;Ǘz�?�@�SIBVI�T��\�E���ā�ͽK���z3)3���ovCpHP�4QH��a�~x��O�7�2����7�8.��'K�f���L&��q���}����"�Fݥ��&$
�?��{n~ٷY*�O<�_�#DVr��!9���u=t���q��s�������9�P/����%��U�x�=*I.E�d)�f��Q?��b��N�ā����Hm�3	YJ�4�-LA���܈p���� �soE�m�a��gUd,*pQ����:1�jg�TB0�����+'�^�nH��n��myK�5Y*%؍�k�*H��l�`��\�n۾���t۾����IȤ�z�g�H�0z8�����D����ޡDٷYF�{���`_m)[�"�]�Q�+���,c5�B���$�����P �8lo�jG�    �uLқI�8���Kõ��U�HTrAw׻}����:�V.\�mb��eE�o�:ϙ���d�D�>7jR0q�z_dΗ�SL����/�{5�;	Y�LΔ9)�;�~�]��:�Y���umxŗ����HŭB�0�cS�D�D &����d���CL�v&!����-��	cy�L�k�%_���f�d B%�a�f���G&
�՟֍UBϟ(�6����~��H|��E��0�i�~���2��?���;�X���|ʣ1��b��1�����pl����/����%�Rq�e�����0��Mg
�?�2E^�ZL� :Yؑ���a<�;u�(��s(I�2�D�X�K���Ml=�ǧ��,�C�H�)�aJ[�p���_�qh��B�ڝ�,g6�qL*�R��2Q ���Gm�*�]&e(���ta$VKe��(4�}aw��NI�޹�LʐU�ԒJʛH��@���i�۵���Qz��rGm���F���'��3��n��/ڝ�L��K$gIv;x� �	�&
 �mv��GWQ��o3&e�c��i����.P�&
v�_[��Ďk2����Gf��dI�`��`�ݰm�����?�����F����;�DN����$8�B'9���wCY�66�pU�|������|�!tɬ:��ºW3���'Qp�ms�k��MZ�ͤ�0r�P1� US�?��,bQా[?v��H���ŬP�)�D�tV|%a�����u������Ϥ�6+Ú׆S��vX~�DU��s�<8���Ϥ�ȵv����A�Ń���,�a��qV�ݹ��W+���f$F��Z�	MT�+;���xԴ7�2��n��(K���ٳZV�1Q ��p�>v
����I�W���|"y�	}�<�G��znvt�����۬��8ƣ'�W��f�������_�Ed�"�-��xBE��f>�
>�o"�k���}��)j-����%�.�Q����;�5��Ad�f%��d���ɪ�����bY�j;�:�����gR�}�	)�Q�Z�ѳU��?fR&�=T�Y1�?�B��yN�(��}���F�1"�6+I�#F4�>z���`�1������:˸��~�T�����r�Ƙ��8��`�'כIY)܍�h�N�u�M��txܹ2��3	�!^�?�ǈ�gEu�LX5Q�/�p��M�Q;����TY�^>u&t�8%�1��p���k%��JaQ��p\��a�5m�*De�b����5x������4� �\N1kd ���R�/_ض(t����2�D�ߑ�6Wov��M����+\Y��3Q�/Q�i~�0������{������b.مaέ�����n�^�;W���d��`�^Ւ��u.�i�*&
&�m��Zt�hwlsݦ>t 	˹b��yEl3�f`��R���
�US���	�),�S-9,LNl��P�ʾͪDs�c���`M4�1�ͷ�׭5$��*�i���oL�L�!Uߵkz�s�StMF��RP�����=�W�5��U��B.C����q%��_��W��5�ʫ�0�~�Eq'��7����D�5�)}��)�K�sC����\���"z~�d���q�Z&�z,hx���c��B�!
?��lT���Ⱦͪ\w'TBZ�JN��-lp�8��E��ͤ��T&��ma1�L�=-�nQ���nl�ݮy����U6��_������s9��i��V�{=�7�ED"
i�֙v��ټ�|5,>�-�jpSꪚ��W\Y��=���jho&eU��y���aa�lq@�N�?t.����k����8g_�����(�ڶ�5��g:����(0���@<��a&
��i�Ǳ�#��"�6�WA�LZ|+9�(+�G�D%�=4��n��ovͅ�W��:o/\�j�d�J.Ex�"�k���%��*��ρrӕLS��J	S8�W���*�0����^qM��O~��f�0�����F��o"�6�4B{�E��
	���B���'C�W}V���z��`GI�ƒ��G�/ŧ�:��?��ٷY]�~4��a�x�_
F[j"|����'	�O�-�c�A�!��Dr���b�}��+����f�^�R�j�.R���K�d��v�]����D�m�G��h���CW1Dh!��y)^,Х������krOx�k�V��UJ$(���7�b��i8���oڙ�|E l^͊;6%�M�/���lZ��{���Wʓ�*��~�LW,[(�Bc�.��4:5n�3	9�K$%GB�Nw!<�H���ͷN�����5;����~���P�ΎB��>3#[�8N��d{l��ɂ�|�Ԑ��)�0)*eox���k��AL��"�6'n�fV�,�ZY�Qd]�w��/��$����ZsdRW�9d8O��c��鴼�O"�6_�Z�Gm)��9� ��j��q��\o&�H����>	_�iY��ĸ���8���>ig�+�*��bR*���%�,ւ\A�e�"̌q��JY�m"{:$�N��c�fwh�u�ٷ9bu����$<�	CEij��m;�ív&!W�3~�@M�b�겸Qgq�oou��$�o������R��l�(�R���iq��Iȓ��-��q���0m)�����N�~@�m���C��"��̥ycKqK�"�ڙ��g=��~�� �n��}�4
3�=�v����5����R4"'a�b�����[�_:��'���x��K��4
&��6�W�CtM.)kJN%&S���4
�8�N��s��z3)��2�s�B�eI�|�G�FA�N�/��f�h����I��,%c�TR৒c�@�(�X��)��[�}�#�N�jau�VB��1�'P"�p~k�Ǳ{���כIL�̽5���v̾��v)����}��^��}w.�u: �_I e3��liT�n�7�&��ٷ���B�����kQA�z�PD�{W��v&!7Rm��:�RD�@(|���bO�p�8�����M>;!���\܉8�?��Ⱦͅ7�ס�X	�a��-�
��]���{�}��(>��d�aua[k�X7�C���7�@\��Z�Y�z�9.�zDaŚӦS��7]���/��(�~�"���M��K�b2�.��=��H!��h�����&��I�`b�nk�L��"�6G�o�K�`�<?�b�x(Q^�q��� �o�T(�X�(��.��1B�s�[�GԌQM���\�S9�-��R��6��	c�iT���3�f���[P��F^Vڜh��Z<�(�ؾ���qh6� [z3)ǎ^g*��Lv`,�ixT�F��mw�N
���\�冠�b���e�4
0v|Y�>C���RS��0�"�`H�gB��4
+vh��4�
�#�+���������'�ڧf��݉�t&!T�8��T�� �*����yV�[�LB�I)��_���1|S��a}�|m<�v&!όb��&��:��/ސ(p��v��[M��M;�����Ej١�cy1�W�~��wߝ�9�͊�g$���u�L�v~=�t�u���3M��μX�2�ā˛�_0������3	yVhU�L6��Y/d�u��+�C�v�
���\̅�Cʖ�J+a����Fa�����$�'�}�c��T�d�܋^2�a�{G����ͤ\�@����! ��>����Faľ��?aY^�~0y����JN�a�X$e���w��c�y�M�^3���?����í���c����8FL R�?��Z����(X�W��?��5�����;&b19AH-Ċ����H�*$�a݌}{|�����q��:��j�;������KEt	��Z}1��*�6�M���}��� �����ĭ )��Y��q�_��v&!��b]S��r �I�|�HT��q�c�;����<'U�"�xD�Mq�@��Q`�M3������kgr8�Ȗ-ݡ� *)?(���T�Շ�oFص啗�����f���}��m������{���n�_}�����Y(��<@��?�m�����Q�������E������kP���ԣ4�ڕ/[d}��WS[�w����b�ꞔr~���?�
�HW�\U�|ؗ�I��UX������F�h�^�*�ƀ���ݍ�l��Y)    �v&!υ�ր�7��@���kO�ݝ���"�4��>��ؾ�v����{:�Z\�D�m��x�<BZ1��^	WEqa����cs�ـ"�6W��q�t�x�
�J�9Q�:(��8)be���1(��#\�Cq�
Q�;�}�?���U:���Ww5Qcf��\H5�@���l�ã"�!�&/�ᆃ�T8T�rY���Ӹ
B77'2�7%4#2�΅��������V�p��[_����W���w�b^�^Y���7�dQOB_�;v�q8)��v&!��8en׊|�j�b4�B�Y��Z���Q�H�s1(V�SQֆ�~��,��cO�/���o(�&/�������=�Dz�F�8��?L��$�p�xJ��F�B��;����N����3	yQ� d��ZI�%��ǻa�8�3	yA6&S��GB��	S���Y�4�N�mOz(Is�?e�p$	g<�(��`X-�
�vy���ϒD��N���yR��!MH*��p�s��g5��}����Ⱦ�a�H��E�
�hr+hp�9���`�����9��,<W�7!ةQ�*,�F���n�v���3	�$� ����I�B�(�:W��ݤK�!
>�"��8Tꤨ�� �osd��2׌I�4�5T��&
��q�{3)/Aۥ���1N��ZD��n{W��w�b^�Up����2{�Ym�p\� k���V�ٷy�Ͼ���`ViJ뢶\V;��Q�Ⱦ�K"X���4�iʵ0�P�TkO�nݟxU{3)/��6{�N�]g�Q���i�h�B%�3	9p���A�"�Y�J�E�a�K��������%$]����Q�3���N�<���Lʭ��l�ߒ�Bp_IH*�F�JSU�/���fPn�P�����F�J�1UN���ͤ�����e|`�W_8��*��i��x��I�+��扮2���^��FU;;4O�����3	9��9�6��L,@�����������?uT?PtMN�J���y(�F��&�"1*�Z�#�P����gߝ�yŹ�eʭ��WQ��-�lYk]��M��,?��\�+�Y�Q�*3K���EU0�2;��Qd���M�V�'MT�,�^���e�Vԭ��ͤ�:i�hnz�.c5YT��/��/G���Iȭ�b�+'��,xV��0��E!��i��n���쿸�Lʭt?�'%�L>���+���5�����t�7�7��ڕ�2锯�W��NG���;1k���;����-� .�Y�����s<���s1���&����*���i,ɢ�i_�����GכI����|EJ� eE����(p��6b7i��\���$[���bt�e}�0~�E���ʫ'���7�����pE*\�(�R�*,*�Ea��F݁�!�o��;멱
��U�F�O�9Y{3�X	%���W�<�0w,�£�w��k�)D�+�F)A4�1d�p�($Z���#��ܺ�L*��\���ZҚx�Bh�L��͢�h�ˠ���;�U��-Jz��K��1Z�eQ����n�����)V�����h0sF��((�]�жN��ڙ�bU�Q6O���.��"s��FĘQ��z��g�Ed��3A-'�ʥb,"�!�_���[��%�o��d�$5�o	&��
QUu�ݦ�O��y�s� �G"C����ᴈB�5����
�S�5�v�zK�U�DB[�(0ڗ�����?���"�ɿ�qS
���*#
����1���$�ok���|Ӑ�7����Ow�Ac�"��Hȉ����Q��iȁ
Q�����Z�e��$`��ӡb�n�%V"������~�)��;כIE��B)`N�$i4V�Sam�,
t���VQ_"�����'@%Q�fBn,t�*�^�C���hg��%��yT��.G��Z���tz�~��I(s#*H�Ƥ8��\��k,�s�t~�՗W�D�U���B ��b��K�v�����^(�����f>bN<��� �V���*XڿS���LZ�3	�����+S�ۅ�BTUb��f<m6ݽ/����T���3�k����hN|P�E���g؝��Zb�%SMȲ�EӬ
'=��@�5�8�q,j�p��t=�¡훧]��C>ig
#||�lː��	�7Y��fQh4��7�Pܼٷ�a�"����e�_܌�z7��|�B]���;-R�r	|.˄�,
~6��z]e~ٷX�D�Q&B�q!�:�B�ݍ��Η���$(�͂�
ţ7��.��eW���}v��F���P��;��W���Y���i_O}��ɭ�Md��v;j�;($n��̢@i[��ߝ�}ӤO�ͤ"�j�1��\!���9e�K��vp�P�}[�Z;.��P\jB�dBr�,
��9���}O�5��Vt��Vd���	�Q��M��C��P�QW��d�C���m���ߞڮt���LB��OG9I�4\\�E�XA{xތ�_�r��T�� ��#+�c"�pʏ��Y��k���~��$8�+�! ѯ�Z6��jD�:��f�,�7כI��_QJ�=�xX�B��.�?QH��p��.��v&�H+80��t�A�(�ٱ��ѩ���fR�EBK�C�]u=�e��S�7�LBaW3Ii�	�H�	� 4%q�Ɇq�lN����)�;���_����$�����?dV�Yr��	�녵ݲ���B�U�����L��r1T��2T��qf�FАth���E�Ǝ��]7�7�]_����K۷B
�cFdr�^��4t@^
3�W��6{������P��%Z �e%���LB��1+�����R;ڙ�"ㆳ qN��nC<\feQP�o��8l�\
�k�L���QC�L��X�f�#DA�@T9,��/zy1�����^�U�mx�Y�b%��P�`�y���+v>��sڂFG^5ipP+PhmӅ�����|�4�g��)��|.�"O�� �ɰ���dhщ�Y��*�$J=%O>��E>��ˮ�]P��i��[\8�@��0#|	��ǃ����eb|up���a�t;�����^�M�	����"st�z
�ҏ`��ӗ�ʂY�jZ�5�'}MU�_�ڙ���L�#9�����#�&�XfQȳm���ؼF�S6�z��{E_�K׊L����#P*7DeQ�4������sU?�ˡ��?@i�tW�2��T�pъ��ݷ��Ю5H��I(��QE|Jx�U�L�̮�����y:l{���Nd���")�Q'����ovpm62�/������7�
Zm!�H�hN%����-��W�Ղ?~ל�����\,�~����-�� U���\�O�������G�?jg���o��V�G:kFf�`�kL�l仱��h}��o��˙�-�զ�2ċ~�q��i�����@�E�m��ΘP#5c8�0R^$�ɮB����8�����?���q"O�Z��r��������Q���қI�1�bR��U1ZA��"C�*��L����u�j�R�LBA>��ժs&rC�tqp�l>�Nv:�w�2״3	��r�	�g��2��*X�|�u���xб߻�L*�X��l��)��֍ʮ��|��L��ݹX�҉�P��sC�Kvrl1|�۸�7���q����0�9)����AgW!�fz�~�}雭�x�}w.�*�ѩ�w1a�:H�� �]�iqX7vM�N�0n}w.��A��+�Pj�k0���a�>��廥蚢�XFL�1/)y�����}���{�m���D5~�k�PB^+����X<�ڿ�;���a�蚢 �8'iEF(���<*W���^�1�πA��"�qMa����"i)��R�(�|\��|��ľk�Z�[���������̤� �	�]Lvá#��� ^�S��\�}[��$UGMl(2_�_����}{����o���$�eT�(�WXL�E��*���-|�6���]S��U,yЩ�fJ��,�W��+�p?4�\~���:l��H\�$} :B7�n����V�uR�m������C��G�a5��*������8��!��(�<�g���I�l����
�5_�N���N�w��46�L/��ۢ,\*㐵d^���7��    �B+g7L`���?PtM�(���=�rM)��P�*��l�m;<��������Q���h����NZ�90;K���*��%=��KM~�E�'KƢ@)�^��^�����`��7���O"��(I
�yM�ψ�[1`x6n~�j�k'������3	lIjE}��a�R�yd�;�_��޴�
�?�><tm/�����5���
	��̬�X4� &	�{�����Ф�[\[�6�
դܤ�=J@���ˁj/�q�[۪w&�I(*9��!K'��,��0W�{2���z;|w.R�V��#���Q:�E}��*���o��l�oE�mQ��W!���)`-���d~�j>n��/��jg�����~
�ϥ�Y�B�����$�-�O[2�R����h��0�)�
05�����4�2|ٷEń��y�ϕr�R���B3x�횵Z�"������B�%���KM��C�U�����xB87����~7qH�y�|���.���Rg����{u� ���WS�m�J�)2��_���cs�������$5��%1����܏����U8�y,�oN�����;כIEͬ[�s����&LxͯB>�����G��L*���2z|M�V�A8���*��|�o�n�;�y?��\,j)R"1|f�b'�P�`��5��#M���L*�
rڒtptp��U�0�_o��Y���Nv�)���mn�DŌ'�Z�=	9���L�6��xںq�7��Z���W�L�s�X/_VM��)��2xW�T��2[�c�W���C�Ft��
e���e�(=�
���*��܌=�_�A�"��\�$a�dc�RR�����U���dn����2�\��$���bG��v
�$g$[���Wa��
68уʾ-�l.#T#����iH��_�M��2�NGLC&�oK_�������U�*<�Y�`�>k��J�[�i�� 2^i��j�J���/vǺ{;�zc�}[�X%��]J�b%@��{��:��������T8�C���ZB)g��n&�
st~�7jX>PtM	��H�V�'�$�*<	�_0���n�����K�|A�T
*����<<7ɯ���c�~y�$���kJ��"
�O�(h��U���D��h��}��$�+�\:ȹ�ψI�$��*��|-ۯ��qk��ͤ����Ƅ[��0v��a8����t�>6w��h��c�>�'w�������~�r��bQʕ �vt?��ڽ4��;�n�v�k�f��e"�pq�g��ӗ)[f��W��.j�7�����k�v���]ʓ�t�4����`_h`g��Wyv�pmq릋P��!|�Cʌ9+b�W��,��ބ�p<�r������e"�m��*���˘���Q]X���4�&Ufs��E�N�B�V��d�N%�oϯB2]�n�x�"�9v�"�+�V���Tv�`,é�bOr�����Sov��Yv�"�3��c��e&���*��<JЎ�[���V;�P�8�b���%�Ë]�Uئ�'���O�r�Fdߖd&�P@ɟ$��j1����*q��~��T����F�hX�ty[^h�wCw��T��2�}_�J�J���-	F}�ն�ZK�s�B�mI2���r�0��W����V�ǟ��#�����Kdߖ�aK�}dEYÛ��=���K_���׶?�I����2)5ڍ[n4��Ʉ9)�Uh���ߞ�qӾ�W�,�W���X��J�׾�� ��Ι��J#��*��%��s���RəRv{�ӹ!ބ��L���W��.)��{�޶gj�Ӌ�n��R�y�¥�XO�Wi~��,��٭5���Ⱦ-!�`9<0���8���WA����Rm��@�mh6K�E� �K��ʯB.�����>�ݗn��?��+�}��p�b�?��	��0���4���;pBi��iw7�vK��.�/^�n8��ʰxʹ,�GM��"�j/4�D�:�&��z3�D.�8���:���T���W!�'�v3�7O@�C�_)��4��Z���Μ*'�d��]�0�����z�ٷ���Z����Zp�!C~:�����ۜ�g���L*���9E��Kɉ�W���"�tJ�+�9sF�.��X^-3�xf�^!GW��.>��*dЅ�wǣf*�B�5�}��mB�ڼZ��ppB��`>?�ȡ��g�LBi$qTR;�,3O%!�+�
�sA��Z�]��5=�tݹXbS����'L@>\�Q[��̯�\�e?��}�	>"��4�;*��^�e˯B�\�n�VJc�oE�m�}�Q� ڌyM0�HXdw\عt�nی�N�\o&��d��}���v�L]��8����}+A�O"��LY�S�I,,5 C��*�M00Nu���Q�dҙ�2%y`���v�ݍ�����W��G|p���l�&��k�{�s��-3z�KI�x��<3 )�t�҉ט���1E��y�q�Nޡ�u�6|��w�dw���`�N�I�\Ԭ#��i@cӑ�dXf�)x=��u���܎*I�e���C �AfF��>�O΀D���@?(kN���<̌��8�f�U��(P�?0}���YPf�˧���pUܷN�IJZ�kr{���}!U6R���1�K�)�7u�RjV:AL��FPtSs�[3n�>���r�ah|3�M���i��{��EE�%~9���e0�Y� <�ؗb�X���� ����Ĺ�R�2-~�
��,�?!mF쩛ji�����]�f745�;�ZcF'U��� �bEA�|��\耶�=�;�wn�ov���M<�V�ً���aMp� '��dA��7m-N���i`c;�����L�D�rbHJC��,�Y�����3|����)�Y(:e��*�2"�oa�g��8��q�y�[Q:A����/Es��+��}�5rܪ�� 5��D��t��U�X'R'�K��p�n��qu�D����w���䟽��?cG�W�(X3�j��B�_dn�s��T)����fZ����>�f�3��C��m�����4������V��!�-�\�Z�:I�Sk�{;�Y�M�u��VsY���Fn�Kux�^
�kN-�`��vnF-�؆�I��+�42g4h"�Ͼ���}Ĳ�X�١��i���(T�nH����`�iO3e����GQ:A���p��*5�����,�4v���x.�wr;*"�]x,f^�[b2�v��F��ie�)^(>�܎*EB"b{$�"�m�P]Ti��U��*.b΄�2�u���-�ƪ^�+ }/J'(*��r��`�\j�]�PL#&M�ߓ}��ഞ�2�:��.5��D�8��� j1���c�g��t��9q�����H�y&\�ho�3(&�"J'(��S�,qǾ!WE�n{ �ܞ$	�Q�NPY&���)g�4�C�>�4b�]
�}Mt�sZO��z�n(�'�\�6t�r�y ��U�{�(��B؊5'�r�<�褿a�&l��U�;Q:A!�|̝a@�A=��1��<�4f��:p'~,�XnG���y�y�"���p�|(_J	��@t���@Ro�h��]�µ��6��R�7N�I�
�����_�*�e�w�%��Qq_U
� Z����I���yhilc>X?�� �(������.m�<������<�4v��w��� �A�)p������\��f� ����دO�;v��	�))��M�|���=�(1�Ţ�áڹ��oN�I�r�x�S����:mφW��j�\�ą%�*GB>�!�d=X�F��W�5�*jw��֓TΠ1-\c	�lTp�G�� ���2�_���� �â�$%� }'X c@�|��<�4�0l�"�h=I) ���d�IZe�a]�����\8mN;�OHD�I��cLtA�]t9DR3�#By�ɿ	���r�w�ɽ��g�+�%=Q�X�,��I3��ȃ Pc�B��Rl%�s'J'(�J�q��Q�)u7ފ���K��}U7�]y,kAbf�3|��R*�1�\���|�^�����[��tk�3��	��0�F��A�1��̓�R#_צ&�&W�Ct����d��54J����J�<85����c�/��5ݷj_T
A��qr���x    F\|�^����Or�vj_T
�(�]�qާ�����y�j�xaw���I����(�����$�nF���7�M2���~ǜd�܎J1�"`��_�A��nĥ���	c�{�nP���s�N�xK�B�j���b�L�{Q:A�!��i:gY�Rm�����1�w�E��9��&J'(��x��#��\�3�B����?��	����R��N��`���A��˴�Sk��,���J
GS���K��۰�w�3��ߌТ��x>�7��M����g��$�%*�3�,N������̸$�Ofl�mٙ��z�ҌB���\0y��ezeG��o�Ruf<���Ό��$��2L[���c�A��1�>���j=II0@��f����	����A� ����밫%�J�L�_M�R9�
�hM]��u�.w�������3F���`��h�9y��ܱ�݉�	�:��Q��eQ"��������D7(�<RvCR���.S��~�z����}�Tm�5���	�Nzi&�92�����<���K�&D�%��]'�$��o��,��OeS���9�')����fAv4��/X�85���H���֓�=JdL��m��x���K�k�Ү�~���U��2�����@�~ƮC<���s�Es,$�3���(���~
�A4�KA0�,�CV|ɻ��>nۺ���(����TB�������^����eS��_��(����t��>E��OL�|� �i{l�9Y�R�g2��]!�����~�ӳ��c���sA7u<�1���S�B:����~�R���/���4?�'�|��'Ƥz�@(n�H����}K� �T�߀����'M�X�͓�	X M��RZKAS��A�������Xf��q��F���A����/e΃�W����SK���i=I�(�e�~�C׌{���7��PQ]=���7��Q/	�S�PL��T��q�?�f�-#��.����e�:�'i�!¦�S-^Ҭ��U �f���HE�$�!ZO��F��8T!��0T{��A�|_b[,��'�"fw���d��KG+5r�Q�VS�{�V��z��m_˦��}����
UGhו1W7yW���dxsBV�my<������˧Ӽ,�����>���G�n�И����5#�x�J�j�gF�J��(J'�A+5��b)6�d�)!��A(�Ë�хY�EV7���
[����:��2x`�2b�wπ�etĀ��K�t܋�	:BB�
��}P����������P���ZjX?9�'iTR��*��X�pI�hPuĎòn�f^��N�I:�3�2$���,���08�����Ypmݠ)j��Rr�c���N����pR#�_���.Y�;�'i���Cg0���L��Rc_D����� �AG�B�R95"�2�<(5r�US}��*�ߋ�	:R�l{!M~���F�Aa���ў�d'�I�N��Lj$q2��� ����6/�)J�c�u��=*rC&-��M��0����XS��^��	Z�g�5�L���v6p���Q�o�]���+{��Ď���>�O��F_Ⱥ�R�{�$�u��g���I�dn�
.{�}6�<65iʦ+&���3YǨ��AG�X��[�^�\·m���;7,���9�~lq{Sڶ��`yjʻ�>X�=���c��H�G��-�{��A�)��v*�c�Ea�47~���I�.�:!dh�]�[��!`��H�گݠ)/�K����/��vp��O���g��=DQ[qԥ����J<��C�A?0S��<9���Eͫ�H��n?z�H�G��/J'hPLE܆���f�� 
q� �<���R�[������څ<k9X��!!�M���N/���=���`��� ���,��/tO�{�nYnG��� ��P"�O����@K�C�վx7r;����i �l:����|V�b�H���:���/b�ϻ�%g�z{t<7,��F�A�x��-������]|n�<U4��o_��T�|�t�|����<�(��pEcO]�l䡿���vnSh3����Ⱦ��ܹ�KpZO҉���i!����OhČ�� ��
�4��Rpꥨ�D�~:���`?#W��������ɣ�wN;̤¥�(}���'�3qJ��w��NЩ�6�"&��.B�V
r\�0���1��V��A�GwN�I:M$H�ga
iAP��K�B*<,��Z�����EM�	4����x7#��:\*��<~ڪ)vT�{te�z�N����'h���ax����i��In�w�t��,zی�4/�߈-��X�`�(��E���3Y��F�Γ9^��Y���<�3Ȫ���=I�[Sĝ���!����I�]��e�^��T���:�mr�l���w4ɕ�㳚�;(�\3�QDaP���y��m�2o�}�=��/���ׁ�g�;q&ݵ��&9��ir �˃B~0�����J��rת}Qg�;qj�zγ��sYjS7�'IN����)!����r��x��_��Yn뇇�Y(�o�֓4!ȵ���w�D6�2΃�A�)����^�(�h=I���)����!
�������Y���A�{Ѿ:K���	:K�#_�ik��`2�UN|3.]|��gZ 9�t[��ɚ�;�\'�h�¬�~�o1�8����ׇ܎:��E�C�Qi_4���p�kM86RE�#���)q����T3�p2<��0фeSJ���N�I{�f6��[0���n�MP������jU	��O�t��l>� s�g��D�����	Y�o�#����1�Α��P`��:�00�hԶ������V틚a�9�ς͒F)x�,�`ݬ�b]K��N�I�
BR4QA %�RG�KK���u��j��͡l6���U����u�B��Ğb\H=���*`�o%��P�b+��Q�t�J3q	�������S�-l��#5^��-ZO�  4U�i�T��nr�!W�|�H3����F��~�r;�\�~3!j�.��e,e�D3�Ӿl��l矜֓t.��K�gd���glTA�~f�,�"`�57E�ni4�I�9�c��Uߌ(*�K�
U�|Y��R���q��J�+#]�_t�΍r�k���J�ͳ���~�����܎������5q',z���w�K���jo_M���C��E�"aޣ�î��p��=<����|����T+�]�X�)��u�]�6>6Tm}d'��(�� ))C�b�p���*)4�w��������|��g��r)��i���[!������z��S9�$��=��O�r��ﾮ�(u�)��8�}<�.�0Ţ}���+M�Y՛��1�,y���/t1���L����e׼�'��v��V\= sc�N�=Ƴ�Ro����ƶ�B����V���NCy��/F Q*���u�\n���i��?�[���g��솦gk{���׊7����#nxI��ďê �҄�O�~ݜ[�#��-���:*;M��Z1�3���*�4,?=�Q@�nЊ�� ڡ��+�4���/��?[ǲ��� E��E���f�X&�<<y�>y��ƴj�e��1X�wZO�Lx�q,���``:�W����fy�,��i=I먅F�������E;*�4v#�8��{��$�A�E8���K!>f����sZO� Պ�$��&r=8���A��Aζ)���8s�֓4���ЀWQ��~bhO��ϯ.kjE7h��i���1��X�(U��_��f[��{Q:AS��XT�6�'2�]k�}�
�5MX�.�Oݻ�ZO�Z��L�X}">/��>*�4f��bY�9!����G���GBn��n
*�9������P3������CD��o٨��QoX�l��B������'5�Ef6��^^��ʠ��S���X��LM��7?ֺ�cwd;
� �1���z������ko&�_��Ũy�ח'7���G� t֨|,�}q�c��N�I�»xs$A� 5����
�k�eƜ�]�ǹA�����IA&yӾG�(pO�g��w�R�|szxdp��$�oMqy���k_�2v����� Y�    -��X+O�C�_o����Tv��ɟ��������[�ir��b�s�A$���,��*�5fqS<W�1�?����|���qZ.Oڀ*�t��C�T�j�%nN���D7h�3{ľ���~[*p5V�S��ZJ_�ON�Iڤ����t��vS�_"���VS��>[��@�I���Z���nA#���-�t7Xozv\c>��$��@N��B����~�c[k4��\.;S�֓��AH2`���E
��3��E{Yl_!}�e�5�����;�p�2=�f,��(μiyO���|��pF#=Ǩ{���@7G�`M�0���z�HF)��y�<S�&�����ǀ}����AP%��.����j�ӡ_��ڬJ1�3����x�{��|8��T����՚�b�-�/³�3��huLm�u�sJ�k�pI��&-��GA�nÀ�	f�(~��$���Sό��xҌ��<�O�z�E�n�I�&�"�_ģ��b�$spBtY؋��M�@������a��h��!�&�<P�H.��̂� Q�}4@_�����A��Ic�/e�ߗ����-P藘2E�"u�0��%�
� (ؤ5垪��[��V�����'7-]'?0�!�^���Fܛ�Nk�<c����>�c�c�l���I���i��bصsq@c ��
�GY�0���@Ϡ���cuN�V�f�E[sľ;��@�2�q[S�B��ഞdJ� �R�m��h@mʔ]Y�Ї�T;~��3�P�Q�Z\�'�0GԈX�^F*m����e����r;���s
a�b!/&���+
�ħl��x�JԮ+�`"y2r�H���YpBj�3X������wcO ��uоkվh�H�/�#����#t�*��הI�=H���`"�$1hgO�Y̫
^���u�zˆ�RM�!J'�(��t/��>���3�ϗ�����d"W��J_9w�ׁA�{�D~U.��4a�M�d�?�֙h��lʊ��o�m�����o��[�uI����<@>R+�,�����3H���2�T0P&b9	�6e�h���x���V�&Bk�>�uG�s��6�|f*�e��&Z���점��ح!Ga��&�+
�lW���ם���
���yb�������0��|�ꍴ���$�m� �^8�x8A�1��,<7e�s��0�o$�o�5���KgG���c�aݺ޺~�^���&�*���;�Wπ�V\p�,8��P-�1����])�I�B'?���~A���+�{��$�M>��$�`�ܓ˗[��S�]��]�}Mٕ���LRn�C}j&�5F�.�ՄD����3����36�2����&?0h*�*.DE28���W��"w�.q��Ts�܎��U)}N|�W���b�tx��{Q:�H�cl�)Ĉ��֙�����î�V_x���V�6D��=hE8�aȽɻQo��!��pB���%&�ƀjI�a��(���R��N0�a!�C�J4��	5��v�k��^�˦x����9���Srכ���~���D�ro}d��`�p/)�{�|&~�^�2�a{*�v���q��>��v�Qi���1X}բf��=hIޙu������gd�=�3?���0��~]�o��Su�ߟiz��� a͢ï+�C��ȊC�����=�_I��&A�M��H4[���a÷.8�Mk��d�7˘o�"���`���MY�.� \
�i=�PRn��$Xɴx�k56'y*�e�J�[��$��a��Q|:�&93�y�\�-V��"��|紞d(sX!y�2P�{�\�?,��-Wbɭ�z�I�T�3�2��w܍��,�vQW��8����p,*�3��&KƏ�:W8e��V����i=�$�s��4������J:T8e� |�U��v4)p
t��ƣ�l�o��K��ό�;�L6җ�~E�͔v�����ƍ:g8.˧J���4���#M����1�Ť���p8v�8�/��	���!�7����z<5u�r�}�t�IQ�IoR��;�P��vr:{8��7�cQ�,C�C�.*� �Y�X�〶�Y+tXO��7�)v���F�N0Ԃ7��|˪�G������0�oR��\����ĹbRp~�QW�������^g��n]�K��tﴞdR�Q�u)>������� S�u={ۚ�T��!�/n�G��X� M���z�\�o��ˣXI~����I���#�����lro.��F:�ފ�	�*�2'�(����%V:����BE��m!/�]��E�qEݠ���I��EW-��L)�"�&��$F\#E)y�fРO�'(�gl D7�1�];3 >b�b<�� �ө��xly� ��ɐ���K�`���A�~���,N�Q����}/J'�,�7%�M�Ε��yf\������_�r8�'*ZG�I�PYE��|��mKN��;�'�LK�ٔ�$�[D��4���-���Lƽ4�
���G�U���G��'=�jm'x���r;��ΓT���	)��E:�8i�i}l*aTd�M�e\�A+�}Ps���>�S�!'��z�P5+W�yӪ}�PT�j)Һ �`7QD#�:�O�t�x_}������P�[��Zm��i�|\��>�0������?� ��pƀa%�I=��l1\���j�u&>�&�80��3�蜉�)ц�N|�Z����p�D7�J�Kvq��b���/J�AP�7��/ŗ֎ON�IF�8�AoZ�M*���sc�P��.��r[}��ⷢt�ɹ��)J��A� �>q��6��o�O/V��(�`r�2Ŀ�˹��V�����$����h������'j�d���a���4µ��A�N0
����	�b�����q��n�¾-��I�N0
=/�T��0'�*�ya8�)C���~E$B�Ԫ}�( �3�iq�(i5آ� ��Ne��֮�r;{�i^��]����*N%���E2nE��@4�I�|۠�Y���0��T�U�-��h�1(�!�D�HB	X/*���:i8�����W~k��F�L*M�3�5l:� 08��ܯ꯵�2!��Q�͸�(<ۡ�����u�T�婑��{77��9�O�4
�m���4����=#��f����������Y���C��'L�G�)��	a0�?��pl�
ʷ�N�}���qwS��3qf�	9��w!X8�<٣se�,ٓV�^s,]{8*M�a�DG�`�ӋĶ^���t�ю�M*>bn�Bx���N��ES�o�����$���b`���$w'�A �>�ruZ�����,�����εy�}6�����g�����A����2�`��L2����u��j�zn6�L�O�M~L�3E8!�w� N�+����gǣ$kD�I,9�,�p##��ו0�[>�q~<6��u��[�/��Q��51���K�"N1�Uw�c!��;�{���F;9����t��B_�RDJ�t,��~_������`�\1� ��8'�m&�l�j;xܞ���k��'���\1�9��oz�CQ� c�p���V�AWO��x;��w҄t��Y�3�U��_燧z)�uD��:��Ĺb4x��MZ��8���:��ܔMUS��vS.Vl�OV��C?��o��#\ l@e�L�>FF���{Ө{�q\\d��3�P�E�܏�B�C{6%Ǯ�so�d��ލ��ԾhG�r�&�!d��a���4������z&��'�c�`S#��l��^��ց�M�Zv@��X;ɀ֘�Q�����3��uX;������n�g�!:��	�"%I���or�+�a��&�K��
�(�`���[��&QJz�ɢ�CUk�w�t��]ci�o�2��`#�;h��,�Ճ�o�iվhP��a��!����Ș�Ay�u �u��U����/�J����N�ni�ݶ�YC�j9���p��C�j`�u�s��M]���׳�O,>�'����PbQA�� �  }��O_�E\S�{�� �N�I��_0�DF;�f��U�x�\���S��|��z~KJ'XS��͑��,�-20�2;���������ߊ�'Ykb���H#�-_N�1�q�K�u�ģ}<�ۓ��翜���l��5%�����:H��1�ד�+���`mHq ���}F���S�ׁ�����st�x��q��\�Fe�	"^,�	*t��8R]�KĆ��.����ܿx�\���\}�J݅�!9g������A7uST�g�gQ:�Z��rE%�m�T\luJ,S�mp��~��z�|��9��$"^$2�7͹j�~)�t��B&��'f��ĹbM�f�9� k
h�F���q"K){>�/��d��-$BX;nϔ��kTr�����������i^       W      x��\�r�8�]#�����#Zi���+���3=��jjb6I,�$�T�ME/:jѫ��؜�$��i�"22�k�: �{�w0�eQd�)��q�rZ�B�2-DZ|er���]2y'�LE�8Jx^u��IސeG�8��8>
�BE��c�.X��Ni��V�T<�A�����H3d\�8�#�:����#�JB�R�i�[�×�Ld*Y��a0j�F��p��ހ���e?�T I�$-�Hx�	��a����X�=��%��ھ�"���4��F.�n����M�[�әt�ͣ�|ʣok��7�(Ҏo��h�2@[C�	g�|�g'>o#��-8y�sZ�y�?�C"	n����L����)/J��!��v|�z������Ez>P?��_1��/��l��tz�����=����௘����!#���~P%�����1�����'��;�'�ۓ�e�z�W�����!�1#�d�g$���g��ⳝ�X�������Bƙ��4¬�2|��rLL	t��N�$9�x�[��f7,�{0�||{>�@���M����C�Z�i���W����
c�3���-���=/�ǓIp��t�a�h��.����wyZ��� ��f��Yl�u�0�h���r����˅��޹���+�?��=o�^N�~� �@���ei�Mk0d�o~���Y}P�M{��PN-BX���5_���v �SP�W�:#h�՚�v{ѓ_N?o��R�ta0��-}~��/6��|*�
c6��mg�������?[�9���Ԝ����:(��Nnkf���3��%=��>�������5���%��4Nbw��L�wa<��U��N*S>��z���{ Nn�ϯjJ���sJ��b��;tRh��_����k���U��El�q�ac=|���Z��	��i%���Z`�J�,��"<8��a�my�����@1�a�;�,xK��Cv�G[����	�Mo�;��<桡���`������Mp=�k{W�<�BYؠ\\=|�o��#5����q\sn ؕl�;_���K��]C�Ws�«�����
�I�G�2x,x��'��vٌm�*;�B���ۇ���������K,RV/�Zt��w����ߢD��^!WJ,�
�z�=#���.� �w�+�J�F�?��B�dU\�R��{�� *��v�Q����8�F�Ń�ѐ����cB�1���U����c��4��_%�oL�l��w*��n�&\���mx .��?0�(]��ɤz�.�5﬐pU��΀]��������\�=���m��Y|$	�h�g|4`_UmP���|&��}�P�bt���Qy����n�����i��\��#}%b��!.�]c�_fw�Z�|�.�I#��+^�D���>;�Y,*Ti"�8�=r�Q�w�:��w�ɍ0�mL�����T)Ѿ�HOK�L(7e&�Hm@�3dW9��y
���g��p� ZY�\DR;>����;U�bY42�0֓�-n��}~�u$������!�l�!���x��5�b�$/x�ی��[-&$���Q�>:�E�sG�Q��b!U�M9	rY��Ɣ�bvH�ʎO��E3��k$e�2�k3z�Q0�>
�/��E����UQxנ��z��]��Dy�j�B�l8��" 3v,A)j���-��Ҁ�t&��fmXQ��F�gJ�������t\K��j��˴��h�����<+x*��s�����3�gi]�V��n�RgC�^�f���f��c��k�FZ���h�L�q���		�[����RB	[�l��GRr0.��S��Q:bA��`~�W0�*�-(��Gr߲F���Pz�}�B5�E\�8�o#�S<�׺{!��P3k���!�EX�� �֯����R��͋Ӭ�/Rm!ֿ�u[��O'�ʚ~+�4��نV�h����~/b�W�E���8��ϰ._�oZ���
�3Z���[0�hCxd�5И/88��e�� Q��\<��$�uR�·�
6��#��6t�*�
ux�(��-a��&�bߴ�t=R���f�fBd�S������	�y1(��RKv&��*i�ł�|�NI��ð�{^E��F6!�Ef���g��f��(�*�vw�}���B$���$�*�v\q7�VP�=��Ro����� �A9���<Z��U���-X��"�.��]��n��ې�#�Իn)����7h�O�Q?i[�����X�lm�
Ɖ=��ݐ�O;��^$�N��{I��h�nH��UZ���^�#36��V��nH�V����<�N�\�~��v�n�����!d���5����n1cH�v�+��*�{dZ1

Tk�+k�p��l�v֭�Pj�s�/�JV� t���P�'�d3!�H+X�i��ң'�GV�6���9d}^��	 �_�hW6�G���Lj6֡�Ư0�-����;�	�u��}�#��m,�Pή��fgZ�H�l�&W�#���<�"v����vh�4���G���ag\�9V��$;.!=�5}ϤAU����LI�n�ϭ�h.��q��O�p#���|���8&c㶩�(��u�Y^��߃��A��i4�3r�MB[]��D�汎�:�a�ú$�^!�u	K]7���	��]���*�|�rZWeߒ�P9����y+�����Sz�u`������#� ��>��䥨8���:D3�*(d�m:,.�5�f�`/3�a��r�<�HLx�d�X��:�$�J
���"�vV3�L?�)�&�"�F��,��̄j�H�@����56؋����]��K��ib�r�-������O���t��*)�DDJ����O�dʱEzLf/�͓�m�g��0w�=&x�a:���~�hb^��T�	��J������feu�^w��A�է������$��\^5�-��3�«ೖ�����1\g� ���E 4/[偷��ܛ�ª�'Q�Ņ�lK�ǎ#�ゔj1C��bhW�� �&>$.$�9���L���o�K'Y�j��CL��j��pg�l�B�q�Mc^�7-vB�`����ucm6����T����;���S
�A��U�B��NIӛ�I���	i�u�W8Aԛ莇˒�`�B�۸:C��4�+vB���2p� �A'�kd`���JP[0s�3�%E\L�i�C��x�2�0�S��mN2��:�@�I ��c�鞙$���,�p/L
���qѸ6��f�F��f��H���ϔ�SޗT�>���R{(ý�n���疮v����u��F	� ��$�h�Q^ն��ırPm��芥>��>�xİ�p/���d*�ʭn��J���<�gS�2&E�JJ�����n-I�"$m�������į�������>�ci�[�BGp�������6\h�{�f����?iu����x��7Փ���w�_��g'uI���B.�����F�nH�-6�����}G	�dފfP�Dp`�Ȉ�G�t��߃SY�=���_�)}e�9�W�|v�p��ѵާ"�:�*�(��L:Z���}}�=_PW��!�@W��T����KV�ZE5�1[HE����FU�%}On�yzO}-�h����╵u��g_	7�/_����$ϣ�*�KNz��j�u�k��R���$ �?�3*it��f�佢�ED���|����n|6�X/�R���:�3$�r��L���I���=�:�-	�9H�Wu�'����aMM�0�K�cU�U3�.���ҷ(}6wX��CD����[���3d���=uJ���V��B|�q�*����w�L��Ø�vƢ'<�[c�1-S�kv�G��.��r3hQ�Ik+��o,�Ѕ�b.��é���Oa�XRa�ϖζ�.y�#�ª��ي�5I\�!>�-紧i��d]����(NuCF=�n���g{'��+��ƴ$���͜�,8Ѳ����bhW���y��:�1/9k� ~/t7��a�jܥ��Zo �в�ȶ �  �]IFl��2��e����9��T�a��)Y��<,s�q5����0j��k�V8� @�w�`]�(I��|v�x����s=�������~��A������$���e@�y�� �+�<n�g��	Z00띓�0��;�qd�2�R�P+��W��gm�  �h�uĆ9,��c``�M��u�=/�J6`ʽ��7��Z�]rkI|��c�Y�:��X�^վ�J��c7ڝ�P�� t��T���lO���PD!�U�&�!�;c�"a#��%L��aYe�����42�+���U�j� #p]�ڃ��N�9<Q:������fvF��z�K�&�RY��2��Z��̦Z���g�	���IV����a�C�pp|z�Dے�ك���z�6�2c�x��}v�E�%6�5��s�(R���Y^��njqp��p;\p��$�s枽9�N��p�C<�َ�#����8�0��ǡfۃ1]�<t7��Z�Q>;Q8�s�!��o��6�Mu3���@�~%�k�M��FqT��cᴮ{�.>ͥ��ȍ�&nٱ��ȍ�/Y�Z�U)(������1ڍ�NU'#��+��(�ǡ�e�֠�}vJwrN�p'�"~���U)�i�V7]� ?����1R��Ο�l����}!b��C��X3�^�<���Jx؉�=��m�����5���9;�D7�G>;w��>a�2�*lmu؏F�h�6ZG,u�����ݶ�\և�䳟��Vp��N��q���X��'�䎈�br��]C��z�7���b�T��+�u�ߵ��'����(��	#���;y����l��(��zƪ��p�&m��ȭ�COoi�M	��gG��_ѫt�i���e�
ƛ@��������YM9/y��S7�D�EoB\_�0w>G>{{�8���r<��7V�5ڦ]��k�
ȧ�2eH=�1x�{+��B�l���A����8o]_�h�g#�]9^�~�{��������P�>�s�x��㕋�O6�Ƶ��  ��+���+W��h��tN�Ϯ�UB��-:��ǽ����K��/����E���[��>����~luc�m:i�|v��
3�n4E�}E3-b�{m�l���^��PiM��2	�r��W�mvm���Û\c�s�K�] ��5�ܖ�����־	s}[Bs!���Юݴg�i��|�*B�4�������}�<{y3Jt~��=~�e�����o��G�K��?n�)*��$�Y��o����
���O�m=6�C���-&�o;����5��V��-܋�6�Z��:,�~�!M���DSU)��f2qM>�~hk)��q�:�f�~�8+�$�HY��!�d>y�G<O�
>���t�)�}Z9[ۤ�!����ȁ�`ZR�)`oh[��'�>����w��;V�����Üۂ�.�2�nV6�cj_�~���'�uao�l��t0G�g<�i�v�����ިv�}v�X#���'E��Y��!�+���L��ޝ�wۺ9��ǦU������O�P/OsQ[�4�S#�Ƣ�I�:��"��2��j���#�']K:�N���)���.���f�����4���n!�< ��X�V���3X�c�ueZ8�=;M�>���'
&�V����h5��?|���9]l      Q      x��]�rܸ�]gඉ'��I�۲�!�ۛ�@U�
#��C��s����&��X����EG8�r&��d�$����x�������v�ƹ_;�yh��͛�3��]�fs��o������%�w��r�n��en���[��6�����w�/�����Û�y�
���1���X[�$��V/��5\�f�cwg���ۺڵ�Zn�ވ��(�]����ڬ��[Ti/��ksӹƀ�?��v��/�T�3�������,!�{�"���7h�pMcnL�}�kӬ5h�50���G�4
��un�2"ƹW��[�mM%:�`���%LH^��f���.�_*�����ڇ%CW^����iѐX��n�]�#J/_�OS�fe�1�nۡ}hk�/��$4�7�@��8|�~��.�By|5�ڢ�2�����6��`�K��L�AQ?�=��ݠ�n�C5҇Q�z��QpݴO�k�e����9kG!\ûU7��/��wp�����E|h�m�v��Q1o���g�o)L�~�ݣ[漥�Z)�{��c@�6��.��>5��� _����oW���"YB�<*�c�� �L��j�eLU�*5����8��l=�\�!�-5XR�:��)�O��ѧ&6@�t�A������}��\ڦ� h�fV�]�F鄽��նG������x�E����Jw�x�m�n�G�K�w���~W����L=,�B(R�0�1�q�V�����Fa"ȗp���Y@؄H��4�DҐ��B��n A�Y�`�a�W�и�O ��5fiS���dD>)� J��;�w��@�t��n[�/�rܺ�_h�<���nB���7�n��jR�5��̶��Opю[�-��p��?e��Sێ촀K�h�n�s��P�����}�,Ru��E~��m�V��pэ��e,�cm�X�C�6@ Ɍ�n	�K���/�ɩt^�� �
g�1ҙ�wc���ۧ:Y����sq۴��裹�o�agJ������.��!hLæ�p�)���a��䭙��w�����=ֲw�k(m
?��= B�s,<��
�ch��DB_��o��Lj+�[LA��E@�v�o�e߱޴��3��~�ɇ��3���-  ʾ٧��t�IJ
5�p��a�?N�\�ײ�1gz��}BL��(Ì�洍W2��L��qt���o�ݚ$E0�r��z�¤�Y@��e�H-�w��j���x?:@��}�wi�SM���|�� ¤�[,������f���uZ|?�d3-?1ӴO�P){k�U�l,V:�HM���|�嫹k� h�~Z�����C�Ǩ�f��w��)#�Ѭ�����X^��:0��p��ݿ ����)����Y����BJ8���_�m[@𔽧&Yw���[X��Yd,����s����(*{_��k��(���1���#�E4�2�Ě@�y���m��Qe�C��sQ���!��;���Y�t���S�#UM��<|���d�Xٻ�v�I17�>(W�e(�1ܢaK��o\5�����P��y�W̓��?���ߛ5*��~e4$O�t��!����A�d���E�+uzR3ul!u��J���#}|�L��w�i����um p�Ԭ�]�}��`͈f_��f2꾪*�4�t@����`��ݙ�+´%�z�y�C����,Y.U9��ˀ�������-��Kk�F�}n7C!}�"�x��$��xZ|�.�!V���DUx�kcjt�ZN|�T��[Ӎ��?����vGx�讛��X ĵ���w��/�CmN���4ne^R7�?@.)���W}���׮i�MR��,�s�Q, h��ﻌ�{�N��Λ"���I��r���:u�h�&����H-^(O]���}4q� �� �C�}�^V�zq�A��q�T�n���8 �����7�Mթ/��8t%����T�����m�hH%&��~�"�S_N�>��Xjo�zթ7�*�N��lI�S4�T�N�9�
oH�a��?�N������/���s��RvX�V����A��Iw�t�{t�α蘃|	g+ۑ���s���I69�O�����;��|G\r�s�O9V>m�_����SONX0��NY~��	_P���+�"Cx������km��.(Y��}�^P�����1Ң��F��G���F�*J��u=ZT���˚�bc��m^'�Gk!�ʮ�!BZ@0�W8Y�$���dS<f�����p=�G�	���Fm�*
��5��(C�t�# ��+9
բ��XB�R��TPP�[ĎS0b��>eF�U�^eg�����d%�y?��ǖ�5�7��.�8|�v�-�?�8JE���i����_����u�n�m\gFJ	?�> 0ʎ(��{��H�a��&Z&:���R��R���sy�.�1m���}�O���j�Y�=�����.K����͚˴�=\�HY�^C���-^\!�*���N$Z=	5������\�؁��&;f��H��'��̶|٢���x�o��!�YB���J%��x�ی�eɡ�S
�X7��	��[W�1��ʰکV��E�����[g�*�Y糙p�!jI��F��/�Ǧ�́H������.�|4Z�*t�z��K�zm������������N����ޠ|6����f�������r3s5�K7�qQ.!7�Z`b�����;�C�qoc�XX����ܭ�!��>�7X��Fo���Z=r�i�@�0�ո\�^\��E�`
�6����!{k�n�n�ҧt]�7�!��Ύir�,���[Or�L����xP�g;��p1-Đ#5,-d/&�"@������B7dPB!ઽ�݀bѹ^��D�X�I�m+��Cͯ�#�lX,���Z��Dz9��ְ��-�-�9��ܶ(0O��(���M���Do_=��LE\��ճD����"�̧�Q�hKGSc!��ĒMV�2�T=�t_f��� ��K�5�6&�W
x�!C��^��E�7�RbhmV43�^�b�)�\
���S��xFG�L���/���Ek=����hx�XB��i������SVY��`�	o_�l��c�`��
>`ΚV��2쁇.�A�O��@Ѡ{��+���[Ga��?�蘅�rxk=u<��ɭ�����(���5V�VƐ���RIx��"��;��3�Y��,ﳕ��������*�b���R�ϠKU�:�Շ��b�ћO�$/���BF���XP��*_�"B�^��F9�>-��&0��������� ���6��s��
dtgJ��:	F����ܠrA#�h
C���ǵ[����W�*�
��0�<a�G����.�FgX��#�o�\S�Lӽ<�3?�Φ/I�J_�N�	ku;��d�W�����r����%S,�w�'�a�Et�
<-F1���툘�24���ME:��X��i~�J"FH�U�P�h��\ʰ~Pǻ�v4Q������F�n�#C����A�i����4�NMC�0f�i,3����DN[ﰔ����a��NI8�W�ה�+�h�.�bճ3 F�^<�a��8f-�%<��$��$HE����*R�a:]q����KC�W�݇���b��A�ڙ'���T�Gd�҃9T�+�7(��K۸{�/: ��@���$���q�螎���m�b�~�����i�S�5�ڍ@C޷x�׻��=�U�VV�p�V�XN<�4��e[���=Nܑ�'"�7V��q�ɲ�a��hVXzF�Ā^��/4X3-�Jl��z�z�H"����XOhQB�3�-Е����i�	����FV��hQh���;J�����r�vw]���D�]'r�{�B��/�n��Mǥ�[&�IIF4��^� fG�y�'���28'2�G��ڮnW����=Ġ��YN��@OJ-+���w`��1�/�	�Z�����av�V�����/��z�Ԏ��@қ+t�n$^t<�m�,����8#'���3dYaR �Fbp\�ͮߴ�=� �TN����L�K�o�� %  �I���r�[oi�˴�����mo(�y#�n��������L,P�����9D��eK\҄����M�����xr�	q�9�G�������][��.�4���e�u0�
.�aE����~�T=�����6W85͞�n2�c澚O�l--�L�T�~�~#��2��Zz�D�x�BhD��QA+z&�8]�i�$:���zb��#��3k����d���H��֧.�v4�ǉő�����+k��Ñb�����"�'z�V��#�Jȓ�U���j�E����z,R�iי-J.��^?k�
�8�9����\V+�����ɷ �.��?G;ݼsbu$3�||(�s�&�<�:���`Q�[Cf�D"��/��E�Jo{�� ��%.Z �9�0~�]��A�Gr-br$��o̪�Ѡ��(�H��l&*�ts���q�r
�)1����JE�UR_uvTJϛ�D鈶�Е *Ǯ�y<NT�$Jb�;��L�@^�cY`�y$�"�~�5�&.�/o�ˑP@^�PeEo�Ou9��!T9V6��>8'G��=~*�K<����/Uŉ�I>
.�6�0����[���NǇ<l�Ě�n
��HɅ3�U)�D>P����_U���@8q9R��Yl�|_��q�~@�z���6'GR��E�����iV��2�8��졛��܏��B'��CA�sfy���ϤibpL%18ҭK��
����E�UymX�cǼLt/�@�����WX�c��F#���M��� "Gj��Ϲ��W^�%�L2ln	���έQ�<~�2��^h5Q\Q�JbM�`Ќ��n��Ld��wo��h��ɚ~��4�ƑBk�W�qS.,��*�p�����^�Z%3��L�4�B@$�D��A;HV���(�%�u�r��n�������s$�=JL�� ����Ԁ���i�C�kV��v��F)�m���C>�>a�Zb^М�X*���<��툣Gd��D|��#5��,�
#mgȘ� 2$��+A��Զ�7�����6R!PH\�E�n����y2���İ�Zw����ǼfY��p��m-���Gk�
A���?��E>�L�ߑ��/���	���y��
29\ѯy*
<�}jq�D�Hm�a����tΆ�Y���v(��E���oZ�	Z�L�<�@�(<�S0����ة�"Ke��uT�*T�bz�#	U��w bj�i�ߎ�lϺl�4���"�_�i�C�2�w�/��~�ES#y`&x����hW�D���-�3-TW#��7�Ԉ+)�W�o�M���/���?w ��      U   h  x���Mn�0���)f�,d����K�fW�H
�Kc��H�$�8�NE��X���H�6�w�#A}�摒CQ���7Y��v�V�j��'WXȄAau���h��!�8(�����ڧ��2��P�K����QC��1k1�Jqg>8��^���y�����-��Gؠ��Լ�`4B��[/�D��Ǫ�TE��a��eM;7Q�W!����I"�'@��R�v����=�^I;{2x���I�@���Rg: ���]��5k�������n+:(	Z�P���A��9=[e���5oM�X�A��M���%%F�����a�u�NLf���ļUݮVwi@u@��⪓�#K.�2���r�**��=2? k X�&x=���%�C,�.m��f�B�;r�Hy��&^Z�m�9�<����(�c��DZ⓾r��ieJ+�2��)^,�)����L��*خ�f�8�֔j�c���ѐ;�YQ;k���"p�p�iO��$Ѹ������"`�,��ܩ�o[�W'��ֳ�����Ŧ��n/�=����PTh
�&~���馝����`��o�� ��6��\&�k�zn+V{���S�=�'�ߊ\��?ԓ'_I��h��U     