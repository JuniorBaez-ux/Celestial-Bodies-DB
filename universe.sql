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
    name character varying(40),
    has_life boolean NOT NULL,
    has_site_habitables boolean NOT NULL,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years numeric
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL,
    source character varying(20),
    shape_type character varying(50)
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years numeric,
    planet_id integer
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
    name character varying(50),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    star_id integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL,
    source character varying(20),
    characteristic character varying(50)
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    has_life boolean NOT NULL,
    is_habitable boolean NOT NULL,
    description text,
    constelation text,
    magnitude numeric,
    galaxy_id integer
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The Milky Way', true, true, 'The milky way is a huge collection of stars in which we have our home planet The Earth', 25000, 13.61);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, false, 'This galaxy is famous for the history that it has grown by eating smaller galaxies', 2537, 10.01);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', false, false, 'This galaxy is famous for the similarities it has with a mexican hat', 28000000, 13);
INSERT INTO public.galaxy VALUES (4, 'The Black Eye', false, false, 'This galaxy is famous for the bizarre motion that it has making it look like a black eye', 17000000, 13.28);
INSERT INTO public.galaxy VALUES (5, 'Comet', false, false, 'This galaxy has a extended stream of bright blue knots that makes it look like a comet', 3.2000000000, 15.20);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', false, false, 'The distribution of the particles of this galaxy makes it look like a whirlpool', 31000000, 400.3);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'look like giant pinwheels. The arms of the pinwheel are made up of stars and lots of gas and dust.', 'NASA', 'Pinwheels');
INSERT INTO public.galaxy_types VALUES (2, 'Eliptical', 'These are shaped like stretched-out circles, or ellipses. Some elliptical galaxies are more stretched out than others. One might look almost perfectly circular. Another might look long and flat.', 'NASA', 'Stretched-out circles');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', 'These are just that: irregular. Irregular galaxies are among the smallest galaxies scientists have observed. ', 'NASA', 'Irregular');
INSERT INTO public.galaxy_types VALUES (4, 'Quasars', 'These are compact areas in the center of a galaxy. They give off enormous amounts of energy. Quasars are actually some of the brightest objects in the universe.', 'NASA', 'Compact');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth''s moon', false, true, 'This in the principal moon of the planet earth', 384000, 5, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', false, true, 'This is the largest of Mars two moons', 770000.79, 2000.7, 7);
INSERT INTO public.moon VALUES (3, 'Deimos', false, true, 'This is the smallest  of Mars two moons', 770000.79, 2000.7, 7);
INSERT INTO public.moon VALUES (4, 'Charon', false, true, 'Charon is the largest of the five moon Pluto has', 150000000, 0, 9);
INSERT INTO public.moon VALUES (5, 'Hydra', false, true, 'Hydra is one of the two outer moons of Pluto', 65000, 0, 9);
INSERT INTO public.moon VALUES (6, 'Kerberos', false, true, 'Kerberos is a moon of pluto with a strange shape', 396100, 0, 9);
INSERT INTO public.moon VALUES (7, 'Nix', false, true, 'Nix was named for the Greek Goddess of darkness and night and the mother of Charon', 65000, 0, 9);
INSERT INTO public.moon VALUES (8, 'Styx', false, true, 'Styx is named for the mythological river that separates the world of the living from the realm of the dead', 0, 0, 9);
INSERT INTO public.moon VALUES (9, 'Ariel', false, true, 'This moon is given the name because of a character of a novel of Shakespeare who goes by the same name', 0, 0, 6);
INSERT INTO public.moon VALUES (10, 'Ariel', false, true, '', 0, 0, 6);
INSERT INTO public.moon VALUES (11, 'Oberon', false, true, 'This name was given in honor to a character of one of shakespeare novel called a Midsummer night dream', 0, 0, 6);
INSERT INTO public.moon VALUES (12, 'Titania', false, true, 'The name Titania was given in honor to a character of one of shakespeare novels called a Midsummer night dream', 0, 0, 6);
INSERT INTO public.moon VALUES (13, 'Proteus', false, true, 'Proteus is named after the shape-changing sea god of Greek mythology', 0, 0, 8);
INSERT INTO public.moon VALUES (14, 'Triton', false, true, 'Triton is named after the son of Poseidon (the Greek god comparable to the Roman Neptune)', 0, 0, 8);
INSERT INTO public.moon VALUES (15, 'Larissa', false, true, 'Larissa was a nymph from Greek mythology', 0, 0, 8);
INSERT INTO public.moon VALUES (16, 'Ganymede', false, true, 'Jupiter icy moon Ganymede is the largest moon in our solar system', 0, 0, 5);
INSERT INTO public.moon VALUES (17, 'IO', false, true, 'Jupiter moon Io is the most volcanically active world in the Solar System with hundreds of volcanoes,', 0, 0, 5);
INSERT INTO public.moon VALUES (18, 'Europa', false, true, 'Europa may be the most promising place in our solar system to find present-day environments suitable for some form of life beyond Earth', 0, 0, 5);
INSERT INTO public.moon VALUES (19, 'Titan', false, true, 'Among our solar system more than 150 known moons Titan is the only one with a substantial atmosphere', 0, 0, 4);
INSERT INTO public.moon VALUES (20, 'Enceladus', false, true, 'A handful of worlds are thought to have liquid water oceans beneath their frozen shell but Enceladus sprays its ocean out into space where a spacecraft can sample it', 0, 0, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 'This is the the home planet of the human race and the one that has confirmed life in it', 0, 4543, 7);
INSERT INTO public.planet VALUES (2, 'Venus', false, false, 'This is the closest celestial body to the earth aside from the moon', 38000000, 4503, 7);
INSERT INTO public.planet VALUES (3, 'Mercury', false, false, 'This is the smallest planet in our solar system', 48000000, 4503, 7);
INSERT INTO public.planet VALUES (4, 'Saturn', false, false, 'This planet is unique both by the ring it has and the his composition of ice and rock', 74600000, 4503, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, false, 'This planet is unique because it is the largest planet on our solar system', 48400000, 4603, 7);
INSERT INTO public.planet VALUES (6, 'Uranus', false, false, 'An interesting fact about this planet is tha it''s a ice giant which means it''s a mass of hot and dense fluid of icy materials', 1.600000000, 4503, 7);
INSERT INTO public.planet VALUES (7, 'Mars', false, false, 'Mars is a dusty cold desert world with a very thin atmosphere', 33000000.9, 4603, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', false, false, 'Neptune is the eight and most distant planet on our solar system and is also considered an ice giant', 2000000000.7, 4503, 7);
INSERT INTO public.planet VALUES (9, 'Pluto', false, true, 'Pluto is a dwarf planet with a donut shaped ice regions inside of it', 4000000000.67, 4000, 7);
INSERT INTO public.planet VALUES (10, 'Ceres', false, true, 'Ceres is the only dwarf planet that is located in the inner solar system', 269607061, 4573, 7);
INSERT INTO public.planet VALUES (11, 'Eris', false, true, 'Eris is one of the largest dwarf planets on our solar system', 143888779736, 4503, 7);
INSERT INTO public.planet VALUES (12, 'Eris', false, true, 'Haumea is a dwarf planet of our solar system and is one of the fastest rotating objects in our solar system', 7453175380, 4005, 7);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestial', 'Earth-sized or smaller, mostly made of rock and metal.', 'NASA', 'Very Earth-like');
INSERT INTO public.planet_types VALUES (2, 'Super-Earth', 'Typically rocky, and more massive than earth.', 'NASA', 'Lighter than Neptune');
INSERT INTO public.planet_types VALUES (3, 'Neptune-like', 'Similar in size to our Neptune and Uranus.', 'NASA', 'Helium dominated atmospheres');
INSERT INTO public.planet_types VALUES (4, 'Gas Giants', 'These are the size of Saturn or Jupiter.', 'NASA', 'Scorching planets');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Przybylski', false, false, 'This star is famous for the bizarre abundance of patterns that it has', 'Centaurus', 6919, 1);
INSERT INTO public.star VALUES (2, 'Tabby''s', false, false, 'This star is famous because it led to scientist believing there was alien life', 'Cygnus', 11705, 1);
INSERT INTO public.star VALUES (3, 'HE 0437-5439', false, false, 'This star is famous because of the speed that it possesses', 'Dorado', 16.42, 1);
INSERT INTO public.star VALUES (4, 'Vega', false, false, 'This star is famous because is tearing himself apart', 'Lyra', 0.03, 1);
INSERT INTO public.star VALUES (5, 'Mira', false, false, 'This star is famous because they are two star together that makes it seem like it is a star with a tail', 'Cetus', 0.99, 1);
INSERT INTO public.star VALUES (6, 'HD 140283', false, false, 'This star is famous because scientist have hypothesized that it could be older than the universe itself', 'Libra', 7223, 1);
INSERT INTO public.star VALUES (7, 'Sun', false, false, 'This star is famous because it is the star that made life possible on our planet earth', 'Capricornus', -26.74, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_galaxy_type_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_type_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_shape_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_shape_type_key UNIQUE (shape_type);


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
-- Name: planet_types planet_types_characteristic_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_characteristic_key UNIQUE (characteristic);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_planet_type_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_planet_type_id_key UNIQUE (planet_types_id);


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

