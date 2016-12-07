--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: ahquotes; Type: TABLE; Schema: public; Owner: andrewrusso
--

CREATE TABLE ahquotes (
    id integer NOT NULL,
    name text,
    quote text,
    show text,
    "timestamp" text,
    "videoURL" text,
    keywords text,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);


ALTER TABLE ahquotes OWNER TO andrewrusso;

--
-- Name: ahquotes_id_seq; Type: SEQUENCE; Schema: public; Owner: andrewrusso
--

CREATE SEQUENCE ahquotes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahquotes_id_seq OWNER TO andrewrusso;

--
-- Name: ahquotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andrewrusso
--

ALTER SEQUENCE ahquotes_id_seq OWNED BY ahquotes.id;


--
-- Name: fhquotes; Type: TABLE; Schema: public; Owner: andrewrusso
--

CREATE TABLE fhquotes (
    id integer NOT NULL,
    name text,
    quote text,
    show text,
    "timestamp" text,
    "videoURL" text,
    keywords text,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);


ALTER TABLE fhquotes OWNER TO andrewrusso;

--
-- Name: fhquotes_id_seq; Type: SEQUENCE; Schema: public; Owner: andrewrusso
--

CREATE SEQUENCE fhquotes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fhquotes_id_seq OWNER TO andrewrusso;

--
-- Name: fhquotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andrewrusso
--

ALTER SEQUENCE fhquotes_id_seq OWNED BY fhquotes.id;


--
-- Name: pgmigrations; Type: TABLE; Schema: public; Owner: andrewrusso
--

CREATE TABLE pgmigrations (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    run_on timestamp without time zone NOT NULL
);


ALTER TABLE pgmigrations OWNER TO andrewrusso;

--
-- Name: pgmigrations_id_seq; Type: SEQUENCE; Schema: public; Owner: andrewrusso
--

CREATE SEQUENCE pgmigrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pgmigrations_id_seq OWNER TO andrewrusso;

--
-- Name: pgmigrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andrewrusso
--

ALTER SEQUENCE pgmigrations_id_seq OWNED BY pgmigrations.id;


--
-- Name: rtquotes; Type: TABLE; Schema: public; Owner: andrewrusso
--

CREATE TABLE rtquotes (
    id integer NOT NULL,
    name text,
    quote text,
    show text,
    "timestamp" text,
    "videoURL" text,
    keywords text,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);


ALTER TABLE rtquotes OWNER TO andrewrusso;

--
-- Name: rtquotes_id_seq; Type: SEQUENCE; Schema: public; Owner: andrewrusso
--

CREATE SEQUENCE rtquotes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rtquotes_id_seq OWNER TO andrewrusso;

--
-- Name: rtquotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: andrewrusso
--

ALTER SEQUENCE rtquotes_id_seq OWNED BY rtquotes.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: andrewrusso
--

ALTER TABLE ONLY ahquotes ALTER COLUMN id SET DEFAULT nextval('ahquotes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: andrewrusso
--

ALTER TABLE ONLY fhquotes ALTER COLUMN id SET DEFAULT nextval('fhquotes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: andrewrusso
--

ALTER TABLE ONLY pgmigrations ALTER COLUMN id SET DEFAULT nextval('pgmigrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: andrewrusso
--

ALTER TABLE ONLY rtquotes ALTER COLUMN id SET DEFAULT nextval('rtquotes_id_seq'::regclass);


--
-- Data for Name: ahquotes; Type: TABLE DATA; Schema: public; Owner: andrewrusso
--

COPY ahquotes (id, name, quote, show, "timestamp", "videoURL", keywords, "createdAt", "updatedAt") FROM stdin;
1	Ryan Haywood	Look, you don't understand.  Edgar is the one in the hole	Let's Play: Minecraft #61 - King Ryan Part 2	36:54	http://achievementhunter.roosterteeth.com/episode/lets-play-2013-184	Ryan Edgar Hole Mad King	2016-11-16 20:15:14.559	2016-11-16 20:15:14.559
\.


--
-- Name: ahquotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andrewrusso
--

SELECT pg_catalog.setval('ahquotes_id_seq', 1, true);


--
-- Data for Name: fhquotes; Type: TABLE DATA; Schema: public; Owner: andrewrusso
--

COPY fhquotes (id, name, quote, show, "timestamp", "videoURL", keywords, "createdAt", "updatedAt") FROM stdin;
1	Elyse Willems	I'm drunk. I'm Elyse.	DRUNK BEASTS - Gang Beasts Gameplay	6:16	https://www.youtube.com/watch?v=qwNHncivEMw&feature=youtu.be&t=367	Elyse Gang Beasts Drunk	2016-11-16 20:10:04.861	2016-11-16 20:10:04.861
2	James Willems	On a scale of 1 to 10 can I borrow 5 dollars?	FAST AND FURIOUS 8 - GTA 5 Gameplay	10:20	https://www.youtube.com/watch?v=7hipGpeXPFE	Vin Diesel James Funhaus GTA FF8	2016-11-16 20:12:05.622	2016-11-16 20:12:05.622
3	Joel Rubin	Burping is a farting from your mouth.	Open Haus #1	0:08	https://www.youtube.com/watch?v=kRHzLb5Xayk&list=PLmw1dn8m1oe6aUrSXp_1teGnXTCFbJyqM	Burp Fart Openhaus Joel	2016-11-16 20:16:31.558	2016-11-16 20:16:31.558
4	Adam Kovic	One of my coffees came with a racecar	THE PERFECT WOMAN - HATSUNE MIKU: PROJECT DIVA X GAMEPLAY	4:30	http://funhaus.roosterteeth.com/episode/gameplay-2016-the-perfect-woman-hatsune-miku-project-diva-x-gameplay	Adam Kovic Coffee Racecar	2016-11-16 20:17:37.803	2016-11-16 20:17:37.803
5	Bruce Greene	They don't own my asshole.	Open Haus #1	3:19	https://www.youtube.com/watch?v=kRHzLb5Xayk	Bruce Asshole Machinima	2016-11-17 00:27:55.474	2016-11-17 00:27:55.474
\.


--
-- Name: fhquotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andrewrusso
--

SELECT pg_catalog.setval('fhquotes_id_seq', 5, true);


--
-- Data for Name: pgmigrations; Type: TABLE DATA; Schema: public; Owner: andrewrusso
--

COPY pgmigrations (id, name, run_on) FROM stdin;
1	1478720933323_rtquotes	2016-11-16 20:07:02.290787
2	1478720950222_ahquotes	2016-11-16 20:07:02.307433
3	1478720958765_fhquotes	2016-11-16 20:07:02.319797
\.


--
-- Name: pgmigrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andrewrusso
--

SELECT pg_catalog.setval('pgmigrations_id_seq', 3, true);


--
-- Data for Name: rtquotes; Type: TABLE DATA; Schema: public; Owner: andrewrusso
--

COPY rtquotes (id, name, quote, show, "timestamp", "videoURL", keywords, "createdAt", "updatedAt") FROM stdin;
1	Chris Demarais	Chris-"You get some fish that is raw" Jon-"Name a fish Chris" Chris-"sword"	RT Podcast #387	45:07	https://www.youtube.com/watch?v=yn_U5Thp-3k	Chris Jon Funny Fish	2016-11-16 20:13:14.223	2016-11-16 20:13:14.223
2	Gavin Free	People like grapes.	RT Podcast #184	3:17	http://roosterteeth.com/episode/rt-podcast-season-1-rt-podcast-184	Gavin Grapes Funny	2016-11-16 20:14:11.736	2016-11-16 20:14:11.736
3	Geoff	"I always find the anus"	Lets Play		https://www.youtube.com/watch?v=e6VDIrnmi50	Geoff, Lets Play, 	2016-11-18 05:12:45.731	2016-11-18 05:12:45.731
4		Story: The beginning of Red vs. Blue and Rooster Teeth, and prior to that	Rooster Teeth Video Podcast #207	1:34:56 - 1:53:35	https://www.youtube.com/watch?v=O3tJuAwaXvc	Red vs. Blue,Rooster Teeth	2016-11-18 15:06:29.508	2016-11-18 15:06:29.508
5	Burnie	The first Gavin or Google	Rooster Teeth Video Podcast #208	41:13	https://youtu.be/WAxpjZpMSJU	Gavin or Google	2016-11-19 14:37:13.731	2016-11-19 14:37:13.731
6		Matt, Gus, Burnie and Gavin talking aout the beginning of RT	RT Podcast 212	1:06:26	https://www.youtube.com/watch?v=iV9PWVKKyzk		2016-11-27 20:30:22.772	2016-11-27 20:30:22.772
\.


--
-- Name: rtquotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: andrewrusso
--

SELECT pg_catalog.setval('rtquotes_id_seq', 6, true);


--
-- Name: ahquotes_pkey; Type: CONSTRAINT; Schema: public; Owner: andrewrusso
--

ALTER TABLE ONLY ahquotes
    ADD CONSTRAINT ahquotes_pkey PRIMARY KEY (id);


--
-- Name: fhquotes_pkey; Type: CONSTRAINT; Schema: public; Owner: andrewrusso
--

ALTER TABLE ONLY fhquotes
    ADD CONSTRAINT fhquotes_pkey PRIMARY KEY (id);


--
-- Name: rtquotes_pkey; Type: CONSTRAINT; Schema: public; Owner: andrewrusso
--

ALTER TABLE ONLY rtquotes
    ADD CONSTRAINT rtquotes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
