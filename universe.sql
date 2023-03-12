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
    speed integer,
    description text,
    name character varying(255) NOT NULL,
    constellation character varying(100)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    has_water boolean NOT NULL,
    planet_id integer NOT NULL,
    planet character varying(255),
    year_discovered integer,
    gravity character varying(100)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    population numeric,
    water boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL,
    gravity character varying(100)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: solarysystem; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solarysystem (
    solarysystem_id integer NOT NULL,
    name character varying(255),
    lifexpectancy boolean DEFAULT false NOT NULL,
    distance integer NOT NULL,
    galaxy_id integer,
    gravit integer
);


ALTER TABLE public.solarysystem OWNER TO freecodecamp;

--
-- Name: solarsystem_solarysystem_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solarsystem_solarysystem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solarsystem_solarysystem_id_seq OWNER TO freecodecamp;

--
-- Name: solarsystem_solarysystem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solarsystem_solarysystem_id_seq OWNED BY public.solarysystem.solarysystem_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    radius integer NOT NULL,
    color character varying(200) NOT NULL,
    name character varying(200) NOT NULL,
    galaxy_id integer,
    gravity character varying(100)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: solarysystem solarysystem_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarysystem ALTER COLUMN solarysystem_id SET DEFAULT nextval('public.solarsystem_solarysystem_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'andromeda', NULL);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'canis', NULL);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'virgo_a', NULL);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, ' Milky_way', NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'cygnus_a', NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, ' maffei', NULL);
INSERT INTO public.galaxy VALUES (8, NULL, NULL, 'milkyway', NULL);
INSERT INTO public.galaxy VALUES (11, NULL, NULL, 'andromeda', NULL);
INSERT INTO public.galaxy VALUES (12, NULL, NULL, 'antennae', NULL);
INSERT INTO public.galaxy VALUES (13, NULL, NULL, 'cartwheelgalaxy', NULL);
INSERT INTO public.galaxy VALUES (15, NULL, NULL, 'cigar', NULL);
INSERT INTO public.galaxy VALUES (16, NULL, NULL, 'comaphinwheel', NULL);
INSERT INTO public.galaxy VALUES (17, NULL, NULL, 'butterflygalaxy', NULL);
INSERT INTO public.galaxy VALUES (18, NULL, NULL, 'cometgalaxy', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (5, 'luna', false, 3, 'earth', 0, NULL);
INSERT INTO public.moon VALUES (6, 'phobos', false, 4, 'mars', 1877, NULL);
INSERT INTO public.moon VALUES (7, 'deimos', false, 4, 'mars', 1877, NULL);
INSERT INTO public.moon VALUES (8, 'lo', false, 5, 'jupiter', 1610, NULL);
INSERT INTO public.moon VALUES (9, 'europa', false, 5, 'jupiter', 1610, NULL);
INSERT INTO public.moon VALUES (10, 'mimas', false, 6, 'saturn', 1789, NULL);
INSERT INTO public.moon VALUES (11, 'no_ moon', false, 2, 'venus', 0, NULL);
INSERT INTO public.moon VALUES (12, 'no_ moon', false, 1, 'mercury', 0, NULL);
INSERT INTO public.moon VALUES (13, 'triton', false, 5, 'jupiter', 1846, NULL);
INSERT INTO public.moon VALUES (14, 'charon', false, 8, 'pluto', 1978, NULL);
INSERT INTO public.moon VALUES (15, 'nix', false, 8, 'pluto', 2005, NULL);
INSERT INTO public.moon VALUES (16, 'hydra', false, 8, 'pluto', 2011, NULL);
INSERT INTO public.moon VALUES (17, 'kerberos', false, 8, 'pluto', 2012, NULL);
INSERT INTO public.moon VALUES (18, 'styx', false, 8, 'pluto', 2006, NULL);
INSERT INTO public.moon VALUES (19, 'hiiaka', false, 8, 'pluto', 2005, NULL);
INSERT INTO public.moon VALUES (20, 'actaea', false, 8, 'pluto', 2006, NULL);
INSERT INTO public.moon VALUES (21, 'namaka', false, 8, 'pluto', 2005, NULL);
INSERT INTO public.moon VALUES (22, 'weywot', false, 8, 'pluto', 2007, NULL);
INSERT INTO public.moon VALUES (23, 'enceladus', false, 6, 'pluto', 1789, NULL);
INSERT INTO public.moon VALUES (24, 'tethys', false, 6, 'pluto', 1684, NULL);
INSERT INTO public.moon VALUES (25, 'dione', false, 6, 'pluto', 1684, NULL);
INSERT INTO public.moon VALUES (26, 'rhea', false, 6, 'pluto', 1672, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 1564215464, false, 7, NULL);
INSERT INTO public.planet VALUES (2, 'venus', 1565414464, false, 8, NULL);
INSERT INTO public.planet VALUES (3, 'EARTH', 765456565414464, true, 9, NULL);
INSERT INTO public.planet VALUES (4, 'MARs', 565414464, true, 10, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 545454, true, 11, NULL);
INSERT INTO public.planet VALUES (6, 'saturn', 6585545454, true, 12, NULL);
INSERT INTO public.planet VALUES (8, 'pluto', 6585545454, true, 14, NULL);
INSERT INTO public.planet VALUES (10, 'ceres', 6585545454, true, 16, NULL);
INSERT INTO public.planet VALUES (11, 'makemake', 82928475, false, 17, NULL);
INSERT INTO public.planet VALUES (12, 'haumea', 8845475, false, 18, NULL);
INSERT INTO public.planet VALUES (13, 'eris', 745845475, false, 19, NULL);
INSERT INTO public.planet VALUES (15, 'eris', 7745475, false, 21, NULL);


--
-- Data for Name: solarysystem; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solarysystem VALUES (1, 'andromedasolar', false, 45, NULL, NULL);
INSERT INTO public.solarysystem VALUES (2, 'canissolar', false, 98, NULL, NULL);
INSERT INTO public.solarysystem VALUES (4, 'bodesolar', false, 94, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 235, 'red', 'sun', 1, NULL);
INSERT INTO public.star VALUES (8, 435, 'blue', 'proxima', 2, NULL);
INSERT INTO public.star VALUES (9, 853, 'aqua', 'centauri', 3, NULL);
INSERT INTO public.star VALUES (10, 1235, 'white', 'Kepler', 4, NULL);
INSERT INTO public.star VALUES (11, 65265, 'orange', 'sirius', 5, NULL);
INSERT INTO public.star VALUES (12, 98295, 'blue1', 'luhman', 6, NULL);
INSERT INTO public.star VALUES (14, 95436255, 'yellow', 'canopus', 8, NULL);
INSERT INTO public.star VALUES (16, 95436255, 'green', 'arcturus', 11, NULL);
INSERT INTO public.star VALUES (17, 95436255, 'green', 'vega', 12, NULL);
INSERT INTO public.star VALUES (18, 95436255, 'orange', 'rigel', 13, NULL);
INSERT INTO public.star VALUES (19, 95436255, 'orange', 'rigel', 13, NULL);
INSERT INTO public.star VALUES (21, 954546255, 'blue', 'procyon', 15, NULL);
INSERT INTO public.star VALUES (22, 954546255, 'blue', 'achernar', 16, NULL);
INSERT INTO public.star VALUES (23, 4516255, 'green', 'hadar', 17, NULL);
INSERT INTO public.star VALUES (24, 516255, 'green', 'spica', 18, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 18, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: solarsystem_solarysystem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solarsystem_solarysystem_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 24, true);


--
-- Name: galaxy galaxy_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_key UNIQUE (constellation);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_gravity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_gravity_key UNIQUE (gravity);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_gravity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_gravity_key UNIQUE (gravity);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solarysystem solarsystem_gravit_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarysystem
    ADD CONSTRAINT solarsystem_gravit_key UNIQUE (gravit);


--
-- Name: solarysystem solarsystem_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarysystem
    ADD CONSTRAINT solarsystem_pkey PRIMARY KEY (solarysystem_id);


--
-- Name: star star_gravity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_gravity_key UNIQUE (gravity);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: solarysystem solarsystem_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarysystem
    ADD CONSTRAINT solarsystem_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

