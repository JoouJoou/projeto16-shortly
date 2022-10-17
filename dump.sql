--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.links (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    "shortUrl" character varying(200) NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "visitsCount" integer NOT NULL
);


--
-- Name: links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.links_id_seq OWNED BY public.links.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    password character varying(250) NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.links ALTER COLUMN id SET DEFAULT nextval('public.links_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: links; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.links VALUES (3, 'htps://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'gzJYcWwf', 9, '2022-10-16 17:38:55.46752', 0);
INSERT INTO public.links VALUES (1, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'Ewg99WVv', 9, '2022-10-16 17:37:48.582945', 1);
INSERT INTO public.links VALUES (4, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'nWevlikc', 8, '2022-10-16 22:42:19.699896', 0);
INSERT INTO public.links VALUES (5, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'DeV1Qcfi', 8, '2022-10-16 22:42:26.489453', 0);
INSERT INTO public.links VALUES (6, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'JvPOTHND', 8, '2022-10-16 22:42:26.89066', 0);
INSERT INTO public.links VALUES (7, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'bCdytohb', 8, '2022-10-16 22:42:27.226622', 0);
INSERT INTO public.links VALUES (8, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'zy96K9kU', 8, '2022-10-16 22:42:27.528545', 0);
INSERT INTO public.links VALUES (10, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'KI33oRHP', 9, '2022-10-16 22:42:42.095532', 0);
INSERT INTO public.links VALUES (11, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', '_CnEwWY2', 9, '2022-10-16 22:42:42.166915', 0);
INSERT INTO public.links VALUES (12, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'bKPUkDTJ', 9, '2022-10-16 22:42:42.51989', 0);
INSERT INTO public.links VALUES (15, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'pDrfYeT5', 7, '2022-10-16 22:43:02.175662', 0);
INSERT INTO public.links VALUES (16, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'tR2DcfWg', 7, '2022-10-16 22:43:02.296234', 0);
INSERT INTO public.links VALUES (20, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', '81wOjl1d', 17, '2022-10-16 23:15:54.035916', 5);
INSERT INTO public.links VALUES (31, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'nxTxoiD7', 11, '2022-10-16 23:16:20.534913', 6);
INSERT INTO public.links VALUES (14, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', '-UJH4N6a', 7, '2022-10-16 22:43:01.739523', 6);
INSERT INTO public.links VALUES (18, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'e8MtgqHF', 7, '2022-10-16 22:43:02.562354', 2);
INSERT INTO public.links VALUES (13, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', '6cWuRmL6', 9, '2022-10-16 22:42:42.816721', 3);
INSERT INTO public.links VALUES (28, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'B30_QDUR', 6, '2022-10-16 23:16:13.558406', 5);
INSERT INTO public.links VALUES (9, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', '5y9UCEXL', 8, '2022-10-16 22:42:27.817443', 3);
INSERT INTO public.links VALUES (17, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', '1kiRVVaO', 7, '2022-10-16 22:43:02.437229', 1);
INSERT INTO public.links VALUES (19, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'uJyZpe7d', 17, '2022-10-16 23:15:53.610221', 0);
INSERT INTO public.links VALUES (21, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', '2N0H338R', 10, '2022-10-16 23:16:03.111042', 0);
INSERT INTO public.links VALUES (22, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'aPY7sA9y', 10, '2022-10-16 23:16:03.598121', 0);
INSERT INTO public.links VALUES (24, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'XFDXZ1DI', 6, '2022-10-16 23:16:11.991389', 0);
INSERT INTO public.links VALUES (25, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'mYk5gZ1c', 6, '2022-10-16 23:16:12.447658', 0);
INSERT INTO public.links VALUES (26, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'lsmDgPtg', 6, '2022-10-16 23:16:12.809424', 0);
INSERT INTO public.links VALUES (27, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'FNEHuZlN', 6, '2022-10-16 23:16:13.180534', 0);
INSERT INTO public.links VALUES (29, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'lW76veUW', 11, '2022-10-16 23:16:19.770197', 0);
INSERT INTO public.links VALUES (30, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'K_LNhfcN', 11, '2022-10-16 23:16:20.157408', 0);
INSERT INTO public.links VALUES (23, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', '9jwDOcaE', 10, '2022-10-16 23:16:03.983623', 2);
INSERT INTO public.links VALUES (32, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', '1XNQqBLF', 13, '2022-10-16 23:16:29.30586', 0);
INSERT INTO public.links VALUES (36, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', '1kd66wqt', 15, '2022-10-16 23:16:49.871092', 0);
INSERT INTO public.links VALUES (37, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', '4b8mSWqs', 15, '2022-10-16 23:16:50.14202', 0);
INSERT INTO public.links VALUES (39, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'ATkx6biI', 16, '2022-10-16 23:16:57.620525', 0);
INSERT INTO public.links VALUES (40, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'bNvEl7Ad', 16, '2022-10-16 23:16:58.157284', 0);
INSERT INTO public.links VALUES (41, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'nlzrqF1o', 16, '2022-10-16 23:16:58.567278', 0);
INSERT INTO public.links VALUES (42, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'F3vyOHAf', 16, '2022-10-16 23:16:59.047053', 0);
INSERT INTO public.links VALUES (38, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'CtpTzMD8', 16, '2022-10-16 23:16:57.343744', 5);
INSERT INTO public.links VALUES (35, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'zQkabT47', 14, '2022-10-16 23:16:43.376198', 2);
INSERT INTO public.links VALUES (34, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'Y79cdINH', 12, '2022-10-16 23:16:35.311243', 8);
INSERT INTO public.links VALUES (33, 'https://www.lance.com.br/galerias/wp-content/uploads/2021/07/MEMES-BRASIL-ARGENTINA-CAMPEA-12-490x474.jpg', 'd5F6ca--', 13, '2022-10-16 23:16:29.64858', 5);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (6, 'Vyctao', 'wakaholic@gmail.com', '2022-10-15 16:57:47.327377', '$2b$10$MnI86cExIvmcW03YqT84Luv1oSCCHH.RRIPeO56e47q1UfUMdAVwu');
INSERT INTO public.users VALUES (7, 'JoouJoou', 'jooujoou@gmail.com', '2022-10-15 19:05:03.723189', '$2b$10$6pWdfA.LPR9uMDlQ0aSzK.rnKdlTVGkeD67GSZ6fwzeobXkpBbtxK');
INSERT INTO public.users VALUES (8, 'Tutu', 'tutu@gmail.com', '2022-10-15 19:05:16.031692', '$2b$10$fv6Wi1RtRK/klbnM5C9lPuPJeWDV9JBHMMArZBYa3V5xBFcihLSUy');
INSERT INTO public.users VALUES (9, 'Edew', 'edew@gmail.com', '2022-10-15 19:05:30.317963', '$2b$10$LuNLG/K/jssOL2sDw9vJi.KCTiJ7MPhdOuPn7I3KE1NUQN5FJN6Ui');
INSERT INTO public.users VALUES (10, 'Jurema', 'jurema@gmail.com', '2022-10-16 23:08:27.850375', '$2b$10$6SzpfRD346l1uIN5wdIPMeULA9hmuuRE2lXpm8dk3vB7ZMKbhsaCq');
INSERT INTO public.users VALUES (11, 'Rhuan', 'rhuan@gmail.com', '2022-10-16 23:08:40.488783', '$2b$10$0Uv35t6UpfoqWbngj0NPNehxpeZ6eS/tOkuObhT9tssL5flqf3uOa');
INSERT INTO public.users VALUES (12, 'Mateus', 'teteu@gmail.com', '2022-10-16 23:08:51.213262', '$2b$10$dr8cSFFoLoWxHPpdXWhsx.Y0KuYLa5G/A1MA0XWbqV1Y.vludFMq6');
INSERT INTO public.users VALUES (13, 'Pierre', 'pierreogalo@gmail.com', '2022-10-16 23:09:28.400529', '$2b$10$fQMXrxo1wNRdzqOoAfQdx.3MunKpvQe4okalLCFGbibQRiv0JcGQC');
INSERT INTO public.users VALUES (14, 'Norman', 'norman@gmail.com', '2022-10-16 23:09:36.148778', '$2b$10$9qy5SgHNR8MqzqMymosncesww7GOCjvGSNn1IkuW5yxTgFY.L71Q2');
INSERT INTO public.users VALUES (15, 'Rosalya', 'rosalya@gmail.com', '2022-10-16 23:09:44.412416', '$2b$10$Jv7tQJB6.PDPcqpV1QMDT.Gh5shvVKh4AuoAcMUgqJIftt8mo6oB6');
INSERT INTO public.users VALUES (16, 'Duda', 'duda@gmail.com', '2022-10-16 23:09:52.122091', '$2b$10$nxoWFdbqcBvfnmF7p.imR.OC5GffO0qi4ar9I1C0ZhxpOSRzx8PkK');
INSERT INTO public.users VALUES (17, 'Juan', 'juanzito@gmail.com', '2022-10-16 23:09:58.882597', '$2b$10$tS7f9N0N.EwgFTo8BvM2l.YJpECQoxJHD01rS/HfBIa2f4TTrF0cu');


--
-- Name: links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.links_id_seq', 42, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 17, true);


--
-- Name: links links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_pkey PRIMARY KEY (id);


--
-- Name: links links_shortUrl_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT "links_shortUrl_key" UNIQUE ("shortUrl");


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: links links_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT "links_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

