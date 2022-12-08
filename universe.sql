--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    cluster integer,
    rand integer,
    rand2 integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    rand2 integer,
    rand integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    size integer,
    height integer,
    living numeric,
    secret_name text,
    habitable boolean,
    atmosphere boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: secret_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.secret_table (
    name character varying NOT NULL,
    secret_table_id integer NOT NULL,
    secret_num integer,
    rand integer,
    rand2 integer
);


ALTER TABLE public.secret_table OWNER TO freecodecamp;

--
-- Name: secret_table_secret_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.secret_table_secret_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.secret_table_secret_table_id_seq OWNER TO freecodecamp;

--
-- Name: secret_table_secret_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.secret_table_secret_table_id_seq OWNED BY public.secret_table.secret_table_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    rand2 integer,
    rand integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: secret_table secret_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.secret_table ALTER COLUMN secret_table_id SET DEFAULT nextval('public.secret_table_secret_table_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'name', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'poo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'poo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'poo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'poo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'poo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'poo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'poo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'poo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'poo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'poo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'poo', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'poo', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'poo', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 10, 10, 100, 'terra', true, true, 1);
INSERT INTO public.planet VALUES (2, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'poo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: secret_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.secret_table VALUES ('poo', 1, NULL, NULL, NULL);
INSERT INTO public.secret_table VALUES ('poo', 2, NULL, NULL, NULL);
INSERT INTO public.secret_table VALUES ('poo', 3, NULL, NULL, NULL);
INSERT INTO public.secret_table VALUES ('poo', 4, NULL, NULL, NULL);
INSERT INTO public.secret_table VALUES ('poo', 5, NULL, NULL, NULL);
INSERT INTO public.secret_table VALUES ('poo', 6, NULL, NULL, NULL);
INSERT INTO public.secret_table VALUES ('poo', 7, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'poo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'poo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'poo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'poo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'poo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'poo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'poo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'poo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'poo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 'poo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, 'poo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (13, 'poo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (14, 'poo', NULL, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 34, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 34, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 34, true);


--
-- Name: secret_table_secret_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.secret_table_secret_table_id_seq', 33, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 34, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: secret_table secret_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.secret_table
    ADD CONSTRAINT secret_table_pkey PRIMARY KEY (secret_table_id);


--
-- Name: secret_table secret_table_secret_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.secret_table
    ADD CONSTRAINT secret_table_secret_table_id_key UNIQUE (secret_table_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

