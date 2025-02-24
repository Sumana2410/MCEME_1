PGDMP          
            }            mceme_project    17.2    17.2 7    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16398    mceme_project    DATABASE     �   CREATE DATABASE mceme_project WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE mceme_project;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    7            �            1259    16766    absent    TABLE     �   CREATE TABLE public.absent (
    army_no text NOT NULL,
    date date NOT NULL,
    leave_id uuid DEFAULT public.uuid_generate_v4() NOT NULL
);
    DROP TABLE public.absent;
       public         heap r       postgres    false    7    7    7            �            1259    16594 
   attendance    TABLE     �   CREATE TABLE public.attendance (
    army_no text NOT NULL,
    dept_name character varying,
    status text,
    remarks text,
    "timestamp" date
);
    DROP TABLE public.attendance;
       public         heap r       postgres    false    7            �            1259    16587 
   department    TABLE     M   CREATE TABLE public.department (
    dept_name character varying NOT NULL
);
    DROP TABLE public.department;
       public         heap r       postgres    false    7            �            1259    16486    designation    TABLE     �   CREATE TABLE public.designation (
    group_type character varying(255),
    ind_n_ind text,
    trade character varying(255) NOT NULL
);
    DROP TABLE public.designation;
       public         heap r       postgres    false    7            �            1259    16409 	   employees    TABLE     (  CREATE TABLE public.employees (
    command text,
    gpf_pran text NOT NULL,
    directorate text,
    army_no text,
    designation text,
    faculty text,
    first_name text,
    middle_name text,
    last_name text,
    gender text,
    category text,
    religion text,
    date_of_birth date,
    date_of_appointment date,
    date_of_retirement date,
    mode_of_appointment text,
    fr56j text,
    employee_group text,
    ind text,
    education text,
    blood_group text,
    pan_number text,
    identification_marks text,
    police_verification_no text,
    police_verification_date date,
    marriage_do_ptii text,
    kindred_roll_do_ptii text,
    bank_account_number text,
    bank_name text,
    ifsc_code text,
    court_case boolean DEFAULT false,
    court_name text,
    penalty boolean DEFAULT false,
    penalty_remarks text,
    mobile_no text,
    email_id text,
    uid_no text,
    macp text,
    promotion boolean DEFAULT false,
    permanent_address text,
    temporary_address text,
    discp_cases boolean DEFAULT false,
    discp_remarks text,
    probation_period boolean DEFAULT false,
    confirmed_date date,
    ltc_ta_da text,
    toa_sos_in_mceme text,
    pay_level text,
    basic_pay numeric(10,2),
    cat text,
    audit_ boolean DEFAULT false,
    date_of_audit date
);
    DROP TABLE public.employees;
       public         heap r       postgres    false    7            �            1259    16575    faculty_wing    TABLE     F   CREATE TABLE public.faculty_wing (
    wing text,
    faculty text
);
     DROP TABLE public.faculty_wing;
       public         heap r       postgres    false    7            �            1259    16462    family_members    TABLE     �   CREATE TABLE public.family_members (
    gpf_pran text,
    name text,
    dob date,
    relationship text,
    category text,
    remarks text
);
 "   DROP TABLE public.family_members;
       public         heap r       postgres    false    7            �            1259    16630    leave_history    TABLE     �  CREATE TABLE public.leave_history (
    army_no text,
    leave_type character varying(255),
    from_date date,
    to_date date NOT NULL,
    status text,
    no_of_days integer,
    reason_for_leave text,
    address_on_leave text,
    recommendation text,
    section_officer text,
    approval_date date,
    recommendation_date date,
    is_extended boolean DEFAULT false,
    leave_id uuid DEFAULT gen_random_uuid() NOT NULL
);
 !   DROP TABLE public.leave_history;
       public         heap r       postgres    false    7            �            1259    16538    leaves    TABLE     �   CREATE TABLE public.leaves (
    type_of_leave character varying(255) NOT NULL,
    total_leaves integer,
    leaves_ph integer
);
    DROP TABLE public.leaves;
       public         heap r       postgres    false    7            �            1259    16442    postings    TABLE     i   CREATE TABLE public.postings (
    gpf_pran text,
    unit text,
    from_date date,
    to_date date
);
    DROP TABLE public.postings;
       public         heap r       postgres    false    7            �            1259    16452 
   probations    TABLE     T   CREATE TABLE public.probations (
    gpf_pran text,
    year text,
    date date
);
    DROP TABLE public.probations;
       public         heap r       postgres    false    7            �            1259    16432 
   promotions    TABLE     T   CREATE TABLE public.promotions (
    gpf_pran text,
    name text,
    date date
);
    DROP TABLE public.promotions;
       public         heap r       postgres    false    7            �            1259    16399    users    TABLE     �   CREATE TABLE public.users (
    username character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(20) NOT NULL,
    faculty character varying(50)
);
    DROP TABLE public.users;
       public         heap r       postgres    false    7                      0    16766    absent 
   TABLE DATA           9   COPY public.absent (army_no, date, leave_id) FROM stdin;
    public               postgres    false    240   �H       }          0    16594 
   attendance 
   TABLE DATA           V   COPY public.attendance (army_no, dept_name, status, remarks, "timestamp") FROM stdin;
    public               postgres    false    238   �H       |          0    16587 
   department 
   TABLE DATA           /   COPY public.department (dept_name) FROM stdin;
    public               postgres    false    237   �H       y          0    16486    designation 
   TABLE DATA           C   COPY public.designation (group_type, ind_n_ind, trade) FROM stdin;
    public               postgres    false    234   ~I       t          0    16409 	   employees 
   TABLE DATA           �  COPY public.employees (command, gpf_pran, directorate, army_no, designation, faculty, first_name, middle_name, last_name, gender, category, religion, date_of_birth, date_of_appointment, date_of_retirement, mode_of_appointment, fr56j, employee_group, ind, education, blood_group, pan_number, identification_marks, police_verification_no, police_verification_date, marriage_do_ptii, kindred_roll_do_ptii, bank_account_number, bank_name, ifsc_code, court_case, court_name, penalty, penalty_remarks, mobile_no, email_id, uid_no, macp, promotion, permanent_address, temporary_address, discp_cases, discp_remarks, probation_period, confirmed_date, ltc_ta_da, toa_sos_in_mceme, pay_level, basic_pay, cat, audit_, date_of_audit) FROM stdin;
    public               postgres    false    229   �J       {          0    16575    faculty_wing 
   TABLE DATA           5   COPY public.faculty_wing (wing, faculty) FROM stdin;
    public               postgres    false    236   �J       x          0    16462    family_members 
   TABLE DATA           ^   COPY public.family_members (gpf_pran, name, dob, relationship, category, remarks) FROM stdin;
    public               postgres    false    233   L       ~          0    16630    leave_history 
   TABLE DATA           �   COPY public.leave_history (army_no, leave_type, from_date, to_date, status, no_of_days, reason_for_leave, address_on_leave, recommendation, section_officer, approval_date, recommendation_date, is_extended, leave_id) FROM stdin;
    public               postgres    false    239   ,L       z          0    16538    leaves 
   TABLE DATA           H   COPY public.leaves (type_of_leave, total_leaves, leaves_ph) FROM stdin;
    public               postgres    false    235   IL       v          0    16442    postings 
   TABLE DATA           F   COPY public.postings (gpf_pran, unit, from_date, to_date) FROM stdin;
    public               postgres    false    231   �L       w          0    16452 
   probations 
   TABLE DATA           :   COPY public.probations (gpf_pran, year, date) FROM stdin;
    public               postgres    false    232   �L       u          0    16432 
   promotions 
   TABLE DATA           :   COPY public.promotions (gpf_pran, name, date) FROM stdin;
    public               postgres    false    230   �L       s          0    16399    users 
   TABLE DATA           B   COPY public.users (username, password, role, faculty) FROM stdin;
    public               postgres    false    228   �L       �           2606    17594    absent absent_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.absent
    ADD CONSTRAINT absent_pkey PRIMARY KEY (date, leave_id);
 <   ALTER TABLE ONLY public.absent DROP CONSTRAINT absent_pkey;
       public                 postgres    false    240    240            �           2606    16619    attendance attendance_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_pkey PRIMARY KEY (army_no);
 D   ALTER TABLE ONLY public.attendance DROP CONSTRAINT attendance_pkey;
       public                 postgres    false    238            �           2606    16593    department department_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (dept_name);
 D   ALTER TABLE ONLY public.department DROP CONSTRAINT department_pkey;
       public                 postgres    false    237            �           2606    16492    designation designation_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.designation
    ADD CONSTRAINT designation_pkey PRIMARY KEY (trade);
 F   ALTER TABLE ONLY public.designation DROP CONSTRAINT designation_pkey;
       public                 postgres    false    234            �           2606    16422    employees employees_army_no_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_army_no_key UNIQUE (army_no);
 I   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_army_no_key;
       public                 postgres    false    229            �           2606    16424     employees employees_email_id_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_email_id_key UNIQUE (email_id);
 J   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_email_id_key;
       public                 postgres    false    229            �           2606    16420    employees employees_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (gpf_pran);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public                 postgres    false    229            �           2606    16426    employees employees_uid_no_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_uid_no_key UNIQUE (uid_no);
 H   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_uid_no_key;
       public                 postgres    false    229            �           2606    17590     leave_history leave_history_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.leave_history
    ADD CONSTRAINT leave_history_pkey PRIMARY KEY (leave_id, to_date);
 J   ALTER TABLE ONLY public.leave_history DROP CONSTRAINT leave_history_pkey;
       public                 postgres    false    239    239            �           2606    16542    leaves leaves_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.leaves
    ADD CONSTRAINT leaves_pkey PRIMARY KEY (type_of_leave);
 <   ALTER TABLE ONLY public.leaves DROP CONSTRAINT leaves_pkey;
       public                 postgres    false    235            �           2606    16403    users users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    228            �           1259    17595    absent_date_idx    INDEX     G   CREATE INDEX absent_date_idx ON public.absent USING btree (date DESC);
 #   DROP INDEX public.absent_date_idx;
       public                 postgres    false    240            �           1259    17591    leave_history_to_date_idx    INDEX     [   CREATE INDEX leave_history_to_date_idx ON public.leave_history USING btree (to_date DESC);
 -   DROP INDEX public.leave_history_to_date_idx;
       public                 postgres    false    239            �           2620    17596    absent ts_insert_blocker    TRIGGER     �   CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.absent FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();
 1   DROP TRIGGER ts_insert_blocker ON public.absent;
       public               postgres    false    7    7    240            �           2620    17592    leave_history ts_insert_blocker    TRIGGER     �   CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.leave_history FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();
 8   DROP TRIGGER ts_insert_blocker ON public.leave_history;
       public               postgres    false    239    7    7            �           2606    16774    absent absent_army_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.absent
    ADD CONSTRAINT absent_army_no_fkey FOREIGN KEY (army_no) REFERENCES public.employees(army_no) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.absent DROP CONSTRAINT absent_army_no_fkey;
       public               postgres    false    240    5299    229            �           2606    16641 "   attendance attendance_army_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_army_no_fkey FOREIGN KEY (army_no) REFERENCES public.employees(army_no) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.attendance DROP CONSTRAINT attendance_army_no_fkey;
       public               postgres    false    238    229    5299            �           2606    16601 $   attendance attendance_dept_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_dept_name_fkey FOREIGN KEY (dept_name) REFERENCES public.department(dept_name);
 N   ALTER TABLE ONLY public.attendance DROP CONSTRAINT attendance_dept_name_fkey;
       public               postgres    false    237    5311    238            �           2606    16467 +   family_members family_members_gpf_pran_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.family_members
    ADD CONSTRAINT family_members_gpf_pran_fkey FOREIGN KEY (gpf_pran) REFERENCES public.employees(gpf_pran) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.family_members DROP CONSTRAINT family_members_gpf_pran_fkey;
       public               postgres    false    233    5303    229            �           2606    16635 (   leave_history leave_history_army_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.leave_history
    ADD CONSTRAINT leave_history_army_no_fkey FOREIGN KEY (army_no) REFERENCES public.employees(army_no) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.leave_history DROP CONSTRAINT leave_history_army_no_fkey;
       public               postgres    false    5299    239    229            �           2606    16447    postings postings_gpf_pran_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.postings
    ADD CONSTRAINT postings_gpf_pran_fkey FOREIGN KEY (gpf_pran) REFERENCES public.employees(gpf_pran) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.postings DROP CONSTRAINT postings_gpf_pran_fkey;
       public               postgres    false    5303    231    229            �           2606    16457 #   probations probations_gpf_pran_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.probations
    ADD CONSTRAINT probations_gpf_pran_fkey FOREIGN KEY (gpf_pran) REFERENCES public.employees(gpf_pran) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.probations DROP CONSTRAINT probations_gpf_pran_fkey;
       public               postgres    false    5303    232    229            �           2606    16437 #   promotions promotions_gpf_pran_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.promotions
    ADD CONSTRAINT promotions_gpf_pran_fkey FOREIGN KEY (gpf_pran) REFERENCES public.employees(gpf_pran) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.promotions DROP CONSTRAINT promotions_gpf_pran_fkey;
       public               postgres    false    229    230    5303                  x������ � �      }      x������ � �      |   �   x�-O��0��+rBp�����Nͪ-��W��K��N�;v�#Nl�$Ǹ�d��G�o�)4F$�Z�E!�`��ꏄUQS�v�q���"7�D;�*��^�FD�K߀���ρ]�m'���#�Im���@%�7�;�2��zJ����s�а7a      y   ;  x�u�An�0E�p
���i����րU7�"pd;�����@����?F����^�&�8�����>�FpB!�L���TS3悡L�;"T3��Юb(���0�9 �ۡӦƈ%�af+.YG���km�H����Y�����aecM{��QJ�H��A��F���:)��-.�8t�pn2��I��q��a=j��RB[~�T-]�/m�_�}~��RF�0���yV9�!Ja�{Z���PK�7Kj����/�˅D��i�fnnƢKlֈ��
�[�.��d�򩪔Y�{�/�ŽRe�5��۝��߅���      t      x������ � �      {     x�]�Kn� �����v�]�ä���j�����Tqb�����~��ƨ�7m|
.?8K�4Y�\��Ht�r���NX�
�r�HɊ�V������ɒ����s����[#W���Oyd��N-�Azq��-��º�.�~n�h���}���y��"?��[2�Ҵ>q��N�+2�Ejۦ6�c/W�$��7�=OEO;c��c����"+@	-hQ�����2A�T۩v�O�>�u����w�	��E���>�%�K2�&�Bw�d��
 'Ź�      x      x������ � �      ~      x������ � �      z   :   x�s��46 ".gNNC#� N#N#.g ��� ��|8M���ׇ�� ��b���� )�	�      v      x������ � �      w      x������ � �      u      x������ � �      s   �  x�M�G��J���*�{"$�c(�%�D�I�"����uyP��ߜL�y���}��F���Q��X�Jz�'����*f1�T�bn�1�0��K�����oƯ�]�To��]����
�\���x�8S�q�p�9���.���]�)�U���k��ϩ�[��~`%u�C6����uAHVY@�?H`v|�<LJ	��%e��58�����D�b�]8�Y2��fR�z�P�s���.��+�q^� Y�����'q ���4hF0��vY�s�NUw��~#�o���8�3�z���F7��{2�5/����R�7 ���j.�N�6%���υ�!{�Wc�	�)�"�DƱ#��z��=Z�s�����4(m��:T����^ر�]
�7�8�>y�}]� k&fq�LH*�5WV;�y���L���{w����=�ߨq�"<� Pz<������p���m �m��G�p����-t1q���ލq�F���r"�j��tz�!� ��I�x�@ןT���މⅲY��O>�!؛@%N��n�%�@ #&R�����X�U���>�zG*<�7l�.j���V��%�@q%�(�)�^��0Bl27����^;��^r1���/�c�{ď	b��d�yz}<n��V��>,�G	wڭj6�1��T��gFnWD�p�W�q�7�/g�:9����
����H���t7D�g����\2c�_gۻ6M�7ѭ&i��A�|5,F��8ڂX�(�!vH޽	
�V������[?�hZ?�$�8���3�l�iZy��������{�t�hԓRJ�Ѻ$�[D����S2�pg�����6����"g֝*=��8_5�8O�؛zM��)��Q��{�0��1I�1��|"�M���7�jT~6�BQZC[���s
�0�t��?��6�K㏫֣��3�ZHݓd�<Vy_&�d�t���x����#�;�c��r��ɫ��Uj`ޔP#PdeZ�4[F"G&_V����*��:��)e�G]Ԕ�o�4�y�n�Ï�)���pJ±���s�f�
K��Ǖ�\����i��(�H��ik_��Q{ӂl�\��z��Ʌ��`Ž�ѧ+r�B6#Qr�]�W��{$�����.͛1�޼��jPs�J����h>$�933��Ńr���ąL�������K�)ʗ71���>��P�#,����@����{�R>L(y0��H�����K�?T_���aJm�sy�:�Lf��)�t���:G��cK���_��21��Y���o%G���]7,r�Plh���rBO�;�LG�l$Wq��{�rd��U���a͆>��(��[��Vy??BUV���E=�+Ɛy�Bb����V=y�S�7���|�c�7�m��@&�$���G@�Q�-�ge�_'�4�����}َ�����|�>��.^�vԺ�LL�Aq�Bj\�:����o���x��|�W��g�T�v ���?�aWȉ㳯KF$_<�CPt��^?�V�h�sm%XY�'�'���cj�wz�4-P�B�-��H<G�k�^d �|7d��
�B�H��R��_���ϡ&9i����y��x�&	W�7�rϠ�e����P{:4�i��S�wj����h����SF�~J.tZ��7�܆�0�!k�<ݨ
�R���}��h������     