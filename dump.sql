--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE categories (
    id integer NOT NULL,
    name text,
    "desc" text
);


ALTER TABLE categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: video_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE video_categories (
    video_id integer,
    category_id integer
);


ALTER TABLE video_categories OWNER TO postgres;

--
-- Name: videos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE videos (
    id integer NOT NULL,
    name text,
    preview text,
    format text,
    uniq text,
    title text
);


ALTER TABLE videos OWNER TO postgres;

--
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videos_id_seq OWNER TO postgres;

--
-- Name: videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE videos_id_seq OWNED BY videos.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videos ALTER COLUMN id SET DEFAULT nextval('videos_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY categories (id, name, "desc") FROM stdin;
1	asia	asia
2	korea	korea
3	japan	japan
4	china	china
5	usa	usa
6	russian	russian
7	brasil	brasil
8	czech	czech
9	british	british
10	polish	polish
11	french	french
12	egypt	egypt
13	thailand	thailand
14	mexico	mexico
15	sweden	sweden
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categories_id_seq', 15, true);


--
-- Data for Name: video_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY video_categories (video_id, category_id) FROM stdin;
1	1
1	2
1	3
2	3
3	3
4	3
5	3
5	1
5	2
5	3
5	4
5	5
5	6
5	7
5	8
5	9
5	10
5	11
5	12
5	13
5	14
5	15
5	16
\.


--
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY videos (id, name, preview, format, uniq, title) FROM stdin;
1	mov_bbb	img1.jpg	mp4	uniq1	title video 1
2	mov_bbb	img1.jpg	mp4	uniq2	title video 2
3	mov_bbb	img1.jpg	mp4	uniq3	title video 3
4	mov_bbb	img1.jpg	mp4	uniq4	title video 4
5	mov_bbb	img1.jpg	mp4	uniq5	title video 5
6	mov_bbb	img1.jpg	mp4	uniq6	title video 6
7	mov_bbb	img1.jpg	mp4	uniq7	title video 7
8	mov_bbb	img1.jpg	mp4	uniq8	title video 8
9	mov_bbb	img1.jpg	mp4	uniq9	title video 9
10	mov_bbb	img1.jpg	mp4	uniq10	title video 10
11	mov_bbb	img1.jpg	mp4	uniq11	title video 11
12	mov_bbb	img1.jpg	mp4	uniq12	title video 12
13	mov_bbb	img1.jpg	mp4	uniq13	title video 13
14	mov_bbb	img1.jpg	mp4	uniq14	title video 14
15	mov_bbb	img1.jpg	mp4	uniq15	title video 15
16	mov_bbb	img1.jpg	mp4	uniq16	title video 16
17	mov_bbb	img1.jpg	mp4	uniq17	title video 17
18	mov_bbb	img1.jpg	mp4	uniq18	title video 18
19	mov_bbb	img1.jpg	mp4	uniq19	title video 19
20	mov_bbb	img1.jpg	mp4	uniq20	title video 20
21	mov_bbb	img1.jpg	mp4	uniq21	title video 21
22	mov_bbb	img1.jpg	mp4	uniq22	title video 22
23	mov_bbb	img1.jpg	mp4	uniq23	title video 23
24	mov_bbb	img1.jpg	mp4	uniq24	title video 24
25	mov_bbb	img1.jpg	mp4	uniq25	title video 25
26	mov_bbb	img1.jpg	mp4	uniq26	title video 26
27	mov_bbb	img1.jpg	mp4	uniq27	title video 27
28	mov_bbb	img1.jpg	mp4	uniq28	title video 28
29	mov_bbb	img1.jpg	mp4	uniq29	title video 29
30	mov_bbb	img1.jpg	mp4	uniq30	title video 30
31	mov_bbb	img1.jpg	mp4	uniq31	title video 31
32	mov_bbb	img1.jpg	mp4	uniq32	title video 32
33	mov_bbb	img1.jpg	mp4	uniq33	title video 33
34	mov_bbb	img1.jpg	mp4	uniq34	title video 34
35	mov_bbb	img1.jpg	mp4	uniq35	title video 35
\.


--
-- Name: videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('videos_id_seq', 35, true);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- Name: fki_categories; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_categories ON video_categories USING btree (video_id);


--
-- Name: fk_categories; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY video_categories
    ADD CONSTRAINT fk_categories FOREIGN KEY (video_id) REFERENCES categories(id) ON DELETE CASCADE;


--
-- Name: fk_video; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY video_categories
    ADD CONSTRAINT fk_video FOREIGN KEY (video_id) REFERENCES videos(id) ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

