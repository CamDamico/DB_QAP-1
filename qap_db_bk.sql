PGDMP                 	        {            qap_1    15.1    15.1 !    4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            7           1262    16679    qap_1    DATABASE     g   CREATE DATABASE qap_1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE qap_1;
                postgres    false            ?            1259    16687    aircraft    TABLE     ?   CREATE TABLE public.aircraft (
    id bigint NOT NULL,
    type character varying(255) NOT NULL,
    airline_name character varying(255) NOT NULL,
    num_of_passengers bigint NOT NULL
);
    DROP TABLE public.aircraft;
       public         heap    postgres    false            ?            1259    16718    airport_aircraft    TABLE     X   CREATE TABLE public.airport_aircraft (
    airport_id bigint,
    aircraft_id bigint
);
 $   DROP TABLE public.airport_aircraft;
       public         heap    postgres    false            ?            1259    16694    airports    TABLE     ?   CREATE TABLE public.airports (
    id bigint NOT NULL,
    name character varying NOT NULL,
    code character varying NOT NULL
);
    DROP TABLE public.airports;
       public         heap    postgres    false            ?            1259    16680    cities    TABLE     ?   CREATE TABLE public.cities (
    id bigint NOT NULL,
    name character varying(255),
    province character varying(255),
    population bigint
);
    DROP TABLE public.cities;
       public         heap    postgres    false            ?            1259    16731    city_airports    TABLE     Q   CREATE TABLE public.city_airports (
    airport_id bigint,
    city_id bigint
);
 !   DROP TABLE public.city_airports;
       public         heap    postgres    false            ?            1259    16759    passenger_aircraft    TABLE     \   CREATE TABLE public.passenger_aircraft (
    passenger_id bigint,
    aircraft_id bigint
);
 &   DROP TABLE public.passenger_aircraft;
       public         heap    postgres    false            ?            1259    16746    passenger_airport    TABLE     Z   CREATE TABLE public.passenger_airport (
    passenger_id bigint,
    airport_id bigint
);
 %   DROP TABLE public.passenger_airport;
       public         heap    postgres    false            ?            1259    16701 
   passengers    TABLE     ?   CREATE TABLE public.passengers (
    id bigint NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    phone_num character varying(255),
    city_id bigint
);
    DROP TABLE public.passengers;
       public         heap    postgres    false            +          0    16687    aircraft 
   TABLE DATA           M   COPY public.aircraft (id, type, airline_name, num_of_passengers) FROM stdin;
    public          postgres    false    215   ?$       .          0    16718    airport_aircraft 
   TABLE DATA           C   COPY public.airport_aircraft (airport_id, aircraft_id) FROM stdin;
    public          postgres    false    218   ?%       ,          0    16694    airports 
   TABLE DATA           2   COPY public.airports (id, name, code) FROM stdin;
    public          postgres    false    216   ?%       *          0    16680    cities 
   TABLE DATA           @   COPY public.cities (id, name, province, population) FROM stdin;
    public          postgres    false    214   ?&       /          0    16731    city_airports 
   TABLE DATA           <   COPY public.city_airports (airport_id, city_id) FROM stdin;
    public          postgres    false    219   ?'       1          0    16759    passenger_aircraft 
   TABLE DATA           G   COPY public.passenger_aircraft (passenger_id, aircraft_id) FROM stdin;
    public          postgres    false    221   ?'       0          0    16746    passenger_airport 
   TABLE DATA           E   COPY public.passenger_airport (passenger_id, airport_id) FROM stdin;
    public          postgres    false    220   (       -          0    16701 
   passengers 
   TABLE DATA           S   COPY public.passengers (id, first_name, last_name, phone_num, city_id) FROM stdin;
    public          postgres    false    217   f(       ?           2606    16693    aircraft aircraft_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.aircraft
    ADD CONSTRAINT aircraft_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.aircraft DROP CONSTRAINT aircraft_pkey;
       public            postgres    false    215            ?           2606    16700    airports airports_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.airports
    ADD CONSTRAINT airports_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.airports DROP CONSTRAINT airports_pkey;
       public            postgres    false    216            ?           2606    16686    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    214            ?           2606    16740 	   cities id 
   CONSTRAINT     B   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT id UNIQUE (id);
 3   ALTER TABLE ONLY public.cities DROP CONSTRAINT id;
       public            postgres    false    214            ?           2606    16707    passengers passengers_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.passengers
    ADD CONSTRAINT passengers_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.passengers DROP CONSTRAINT passengers_pkey;
       public            postgres    false    217            ?           2606    16721    airport_aircraft aircraft_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.airport_aircraft
    ADD CONSTRAINT aircraft_fk FOREIGN KEY (aircraft_id) REFERENCES public.aircraft(id) NOT VALID;
 F   ALTER TABLE ONLY public.airport_aircraft DROP CONSTRAINT aircraft_fk;
       public          postgres    false    3471    215    218            ?           2606    16767    passenger_aircraft aircraft_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.passenger_aircraft
    ADD CONSTRAINT aircraft_fk FOREIGN KEY (aircraft_id) REFERENCES public.aircraft(id);
 H   ALTER TABLE ONLY public.passenger_aircraft DROP CONSTRAINT aircraft_fk;
       public          postgres    false    215    3471    221            ?           2606    16726    airport_aircraft airport_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.airport_aircraft
    ADD CONSTRAINT airport_fk FOREIGN KEY (airport_id) REFERENCES public.airports(id) NOT VALID;
 E   ALTER TABLE ONLY public.airport_aircraft DROP CONSTRAINT airport_fk;
       public          postgres    false    218    3473    216            ?           2606    16734    city_airports airport_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.city_airports
    ADD CONSTRAINT airport_fk FOREIGN KEY (airport_id) REFERENCES public.airports(id);
 B   ALTER TABLE ONLY public.city_airports DROP CONSTRAINT airport_fk;
       public          postgres    false    219    3473    216            ?           2606    16754    passenger_airport airport_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.passenger_airport
    ADD CONSTRAINT airport_fk FOREIGN KEY (airport_id) REFERENCES public.airports(id) NOT VALID;
 F   ALTER TABLE ONLY public.passenger_airport DROP CONSTRAINT airport_fk;
       public          postgres    false    216    220    3473            ?           2606    16741    city_airports city_fk    FK CONSTRAINT        ALTER TABLE ONLY public.city_airports
    ADD CONSTRAINT city_fk FOREIGN KEY (city_id) REFERENCES public.cities(id) NOT VALID;
 ?   ALTER TABLE ONLY public.city_airports DROP CONSTRAINT city_fk;
       public          postgres    false    219    3467    214            ?           2606    16749    passenger_airport passenger_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.passenger_airport
    ADD CONSTRAINT passenger_fk FOREIGN KEY (passenger_id) REFERENCES public.passengers(id) NOT VALID;
 H   ALTER TABLE ONLY public.passenger_airport DROP CONSTRAINT passenger_fk;
       public          postgres    false    217    3475    220            ?           2606    16762    passenger_aircraft passenger_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.passenger_aircraft
    ADD CONSTRAINT passenger_fk FOREIGN KEY (passenger_id) REFERENCES public.passengers(id);
 I   ALTER TABLE ONLY public.passenger_aircraft DROP CONSTRAINT passenger_fk;
       public          postgres    false    3475    221    217            +   ?   x?m??
?0E?3_?/??l??.??؅.?:?@?B???[?P\?????8?R????l??-(^?,Г????sTp???q]?R??n?ޯ?}??"[*?4???X?????????{Ly PR`]?n>R	l??MGp?^??/???o`/?L??"~?Q      .   D   x????@?L1???????:Bh$R???T?????hPZ?6WM???0???2?y?,????	??|??
?      ,   ?   x?m?=?@????lN??QMD???"ĥ?SH?^rT??2s?Oھi GE?6??X?e??0iH??p?2?jG?8?;qf>_e?z?㸝%~?J?]ݦ8??*U{K[?b???'+??B??????g????ک?W8????????"?P?1X?9ڈ(1????>"? 7ll?      *   ?   x?m?1O?0??????DeǮc?TP@?"??r?Sb??!?i???: ?w??}z
^93?-̑?j?????]Y<rOWl???#??`Y;???????x?2??X??W+N??>"?V?'??{L?????#V????'O??#Q??>?)?#8}?[XϪ?????u?cu?)?3#??S?(???)0]?i???ö??r??8?%a?cN\JWx"xɑڮ??P=g?????B??_?      /      x?????? ? ?      1   H   x????0Cѳ=L??.????,??P{*?t???>
_-i?cP8??gj?<?}?]??!?c?.'?      0   D   x?-???0B?0L;???t?9J?B?FC??"??E3??p??İ$?zKj??m?h?????? ?_M      -   ?   x?5??N?0Dϳ?Br????>6TB*?p?b??F???O܈?Ӽ?Y??p?9???lN?GB??ז]?D{(?x
?c?q?c?#*???i^?&F???r/GT???:n?&SB??Ϩ??U?X`??k?!_????x?2:?K*K?C???~?bm?q?XXr؄r?s1?W~?{?p$?}????J9?x#!?m?<??3*S;Q??axR-??/?????fYxfZ???n???KO     