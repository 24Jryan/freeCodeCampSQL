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
    name character varying(30),
    distance_from_earth numeric,
    has_black_hole boolean,
    unique_val integer NOT NULL
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
    name character varying(30),
    info text,
    planet_id integer NOT NULL,
    times_visited integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    has_moon boolean,
    star_id integer NOT NULL,
    nun_moons integer,
    population integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(30),
    distance_from_milky integer NOT NULL
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    temperature integer,
    galaxy_id integer NOT NULL,
    light_given integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Hildagarde', 52416, false, 123);
INSERT INTO public.galaxy VALUES (2, 'Arlyn', 625, true, 5755);
INSERT INTO public.galaxy VALUES (3, 'Ginnie', 803, false, 279);
INSERT INTO public.galaxy VALUES (4, 'Sidonnie', 7, false, 119);
INSERT INTO public.galaxy VALUES (5, 'Barby', 512, false, 59);
INSERT INTO public.galaxy VALUES (6, 'Paulina', 5, true, 92);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Clinton Brewer', 'et, rutrum eu, ultrices sit amet, risus.', 8, 1);
INSERT INTO public.moon VALUES (2, 'Skyler Sweeney', 'vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu.', 5, 2);
INSERT INTO public.moon VALUES (3, 'Lilah Burgess', 'nec, eleifend non, dapibus rutrum,', 5, 3);
INSERT INTO public.moon VALUES (4, 'Martin Riddle', 'porttitor vulputate, posuere vulputate, lacus.', 8, 4);
INSERT INTO public.moon VALUES (5, 'Zelenia Oliver', 'non, feugiat nec,', 4, 5);
INSERT INTO public.moon VALUES (6, 'Clayton Cherry', 'rutrum eu, ultrices', 6, 6);
INSERT INTO public.moon VALUES (7, 'Noble Potts', 'iaculis nec, eleifend non,', 4, 7);
INSERT INTO public.moon VALUES (8, 'Grady Castaneda', 'Phasellus dolor elit,', 10, 8);
INSERT INTO public.moon VALUES (9, 'Zephr Sanchez', 'vitae, posuere at, velit. Cras lorem lorem, luctus', 10, 9);
INSERT INTO public.moon VALUES (10, 'Lester Pickett', 'augue.', 10, 10);
INSERT INTO public.moon VALUES (11, 'Amos Clarke', 'aliquam,', 2, 11);
INSERT INTO public.moon VALUES (12, 'Deacon Smith', 'dui. Suspendisse ac metus', 3, 12);
INSERT INTO public.moon VALUES (13, 'Martin Hudson', 'Curae Phasellus ornare.', 9, 13);
INSERT INTO public.moon VALUES (14, 'Helen Gonzalez', 'Donec tincidunt. Donec vitae erat vel pede', 1, 14);
INSERT INTO public.moon VALUES (15, 'Desiree Jennings', 'et risus. Quisque libero lacus, varius et, euismod et,', 3, 15);
INSERT INTO public.moon VALUES (16, 'Odysseus Watkins', 'mollis non, cursus non,', 8, 16);
INSERT INTO public.moon VALUES (17, 'Quail Blevins', 'Nunc lectus pede, ultrices', 8, 17);
INSERT INTO public.moon VALUES (18, 'Serena Rios', 'ut quam vel sapien', 7, 18);
INSERT INTO public.moon VALUES (19, 'Jaquelyn Parks', 'aliquam iaculis, lacus pede sagittis augue,', 8, 19);
INSERT INTO public.moon VALUES (20, 'Kyla Sears', 'ultrices. Vivamus rhoncus. Donec est.', 7, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jermaine Malone', true, 5, 8, 1865);
INSERT INTO public.planet VALUES (2, 'Amber Koch', true, 3, 2, 189);
INSERT INTO public.planet VALUES (3, 'Sade Lambert', false, 4, 5, 1669);
INSERT INTO public.planet VALUES (4, 'Emerson Padilla', true, 3, 7, 971);
INSERT INTO public.planet VALUES (5, 'Dale Serrano', false, 6, 1, 255);
INSERT INTO public.planet VALUES (6, 'Harlan Becker', false, 4, 2, 218);
INSERT INTO public.planet VALUES (7, 'Mariko Simon', false, 1, 0, 1010);
INSERT INTO public.planet VALUES (8, 'Clayton Keith', true, 4, 3, 679);
INSERT INTO public.planet VALUES (9, 'Ezekiel Burks', true, 2, 1, 960);
INSERT INTO public.planet VALUES (10, 'Roth Guy', false, 2, 4, 643);
INSERT INTO public.planet VALUES (11, 'Zorita Gray', false, 3, 9, 1734);
INSERT INTO public.planet VALUES (12, 'Hannah Best', false, 1, 9, 308);
INSERT INTO public.planet VALUES (13, 'Travis Myers', true, 4, 7, 15);
INSERT INTO public.planet VALUES (14, 'Asher Daniel', false, 4, 7, 1994);
INSERT INTO public.planet VALUES (15, 'Lucian Sanchez', false, 4, 8, 1085);
INSERT INTO public.planet VALUES (16, 'Gloria Mays', true, 5, 0, 450);
INSERT INTO public.planet VALUES (17, 'Drew Clements', false, 3, 6, 238);
INSERT INTO public.planet VALUES (18, 'Ian Vance', true, 2, 10, 420);
INSERT INTO public.planet VALUES (19, 'Amery Delgado', false, 6, 6, 169);
INSERT INTO public.planet VALUES (20, 'Amaya Saunders', true, 6, 11, 244);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Clinton Brewer', 916896);
INSERT INTO public.solar_system VALUES (2, 'Skyler Sweeney', 230078);
INSERT INTO public.solar_system VALUES (3, 'Lilah Burgess', 145178);
INSERT INTO public.solar_system VALUES (4, 'Martin Riddle', 314810);
INSERT INTO public.solar_system VALUES (5, 'Zelenia Oliver', 315935);
INSERT INTO public.solar_system VALUES (6, 'Clayton Cherry', 710170);
INSERT INTO public.solar_system VALUES (7, 'Noble Potts', 932619);
INSERT INTO public.solar_system VALUES (8, 'Grady Castaneda', 215787);
INSERT INTO public.solar_system VALUES (9, 'Zephr Sanchez', 111388);
INSERT INTO public.solar_system VALUES (10, 'Lester Pickett', 238812);
INSERT INTO public.solar_system VALUES (11, 'Amos Clarke', 806040);
INSERT INTO public.solar_system VALUES (12, 'Deacon Smith', 208881);
INSERT INTO public.solar_system VALUES (13, 'Martin Hudson', 598816);
INSERT INTO public.solar_system VALUES (14, 'Helen Gonzalez', 553442);
INSERT INTO public.solar_system VALUES (15, 'Desiree Jennings', 823927);
INSERT INTO public.solar_system VALUES (16, 'Odysseus Watkins', 183176);
INSERT INTO public.solar_system VALUES (17, 'Quail Blevins', 389405);
INSERT INTO public.solar_system VALUES (18, 'Serena Rios', 672570);
INSERT INTO public.solar_system VALUES (19, 'Jaquelyn Parks', 581242);
INSERT INTO public.solar_system VALUES (20, 'Kyla Sears', 447661);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Phillip Perry', 7903, 2, 5);
INSERT INTO public.star VALUES (2, 'Grady Ferguson', 8492, 1, 10);
INSERT INTO public.star VALUES (3, 'Hop Smith', 7025, 4, 7);
INSERT INTO public.star VALUES (4, 'Felicia Olson', 9938, 2, 11);
INSERT INTO public.star VALUES (5, 'Anastasia Ayala', 9816, 2, 9);
INSERT INTO public.star VALUES (6, 'big star', 5657765, 3, 15);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_val_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_val_key UNIQUE (unique_val);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_times_visited_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_times_visited_key UNIQUE (times_visited);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_population_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_population_key UNIQUE (population);


--
-- Name: solar_system solar_system_distance_from_milky_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_distance_from_milky_key UNIQUE (distance_from_milky);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_light_given_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_light_given_key UNIQUE (light_given);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

