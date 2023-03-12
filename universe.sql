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
    name character varying(40) NOT NULL,
    galaxy_type character varying(20),
    years_light_from_earth numeric,
    group_local boolean
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
    name character varying(40),
    year_of_discovery integer NOT NULL,
    orbit_time numeric,
    who_discovered character varying(50),
    planet_id integer NOT NULL
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
    name character varying(40),
    description text,
    diameter integer NOT NULL,
    natural_satellites boolean,
    star_id integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    latin_name character varying(30),
    abreviature character varying(5),
    extension numeric,
    galaxy_id integer NOT NULL
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
-- Name: types_of_sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types_of_sun (
    types_of_sun_id integer NOT NULL,
    name character varying(50),
    form character varying(20),
    weight integer NOT NULL,
    years_of_life integer NOT NULL
);


ALTER TABLE public.types_of_sun OWNER TO freecodecamp;

--
-- Name: types_of_suns_types_of_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_of_suns_types_of_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_of_suns_types_of_sun_id_seq OWNER TO freecodecamp;

--
-- Name: types_of_suns_types_of_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_of_suns_types_of_sun_id_seq OWNED BY public.types_of_sun.types_of_sun_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: types_of_sun types_of_sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_of_sun ALTER COLUMN types_of_sun_id SET DEFAULT nextval('public.types_of_suns_types_of_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 'SBbc', NULL, true);
INSERT INTO public.galaxy VALUES (2, 'Enana del Can Mayor', 'Irr', 0.025, true);
INSERT INTO public.galaxy VALUES (3, 'Enana Elíptica de Sagitario', 'dSph/E7', 0.081, true);
INSERT INTO public.galaxy VALUES (4, 'Andrómeda I', 'dE3 pec', 2.430, true);
INSERT INTO public.galaxy VALUES (5, 'NGC 55', 'SB(s)m:sp', 5.87, false);
INSERT INTO public.galaxy VALUES (6, 'Gran Nube de Magallanes', 'Irr/SB(s)m', 0.163, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1500, 27, 'Incas', 3);
INSERT INTO public.moon VALUES (2, 'Eris', 1800, 50, 'Jose Romeero', 6);
INSERT INTO public.moon VALUES (3, 'Sammy', 1870, 31, 'Abraham Sol', 11);
INSERT INTO public.moon VALUES (4, 'Label', 1600, 71, 'Aztecas', 7);
INSERT INTO public.moon VALUES (5, 'Jonas', 1100, 18, 'Egipcios', 8);
INSERT INTO public.moon VALUES (6, 'Eurus', 850, 67, 'Robert Degrant', 8);
INSERT INTO public.moon VALUES (7, 'Marker', 600, 72, 'Romanos', 9);
INSERT INTO public.moon VALUES (8, 'Tolomeo', 1608, 77, 'Rusos', 6);
INSERT INTO public.moon VALUES (9, 'Argento', 1348, 99, 'Lionel Lafior', 9);
INSERT INTO public.moon VALUES (10, 'Luper', 1708, 37, 'Serbios', 7);
INSERT INTO public.moon VALUES (11, 'Roble', 1910, 120, 'Ucranianos', 9);
INSERT INTO public.moon VALUES (12, 'Sueño', 1980, 130, 'Peruanos', 12);
INSERT INTO public.moon VALUES (13, 'Garcia', 1679, 80, 'Brasileños', 10);
INSERT INTO public.moon VALUES (14, 'Martin', 1800, 50, 'Morenos', 4);
INSERT INTO public.moon VALUES (15, 'Legrant', 1750, 102, 'Españoles', 10);
INSERT INTO public.moon VALUES (16, 'Julian', 759, 134, 'Porteños', 8);
INSERT INTO public.moon VALUES (17, 'Ramirent', 1911, 80, 'Caporales', 5);
INSERT INTO public.moon VALUES (18, 'Collapse', 1945, 74, 'Belgas', 11);
INSERT INTO public.moon VALUES (19, 'Pantro', 1549, 965, 'Rumanies', 9);
INSERT INTO public.moon VALUES (20, 'Revenant', 1697, 160, 'Carales', 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 'Su gran núcleo métalico ocupa 2/3 del planeta', 4879, false, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 'Su densa atmósfera genere un fuerte efecto invernadero', 12104, false, 2);
INSERT INTO public.planet VALUES (3, 'Tiera', 'El agua ocupa 2/3 de la superficie', 12757, true, 2);
INSERT INTO public.planet VALUES (4, 'Marte', 'Tiene canales en la superficie por rios secos', 6794, true, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'La tierra entra 1300 veces en su interior', 142984, true, 2);
INSERT INTO public.planet VALUES (6, 'Saturno', 'Conocido principalmente por sus anillos', 120536, true, 2);
INSERT INTO public.planet VALUES (7, 'Urano', 'Conocido por ser el planeta azul e inclinado por una colisión', 51118, true, 2);
INSERT INTO public.planet VALUES (8, 'Neptuno', 'Conocido por sus anillos menores y ser hermano de Urano', 49528, true, 2);
INSERT INTO public.planet VALUES (9, 'Plutón', 'El planeta enano cubierto por motañas de hielo', 2370, true, 2);
INSERT INTO public.planet VALUES (10, 'Eris', 'Cuerpo helado cubierto de metano', 2300, true, 5);
INSERT INTO public.planet VALUES (11, 'MakeMake', 'Gas congelado y polvo', 1420, true, 5);
INSERT INTO public.planet VALUES (12, 'Haumea', 'Gas congelado y polvo', 1000, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Andrómeda', 'Andromeda', 'And', 722.278, 2);
INSERT INTO public.star VALUES (2, 'El Carnero', 'Aries', 'Ari', 441.395, 6);
INSERT INTO public.star VALUES (3, 'El Cangrejo', 'Cancer', 'Cnc', 505.872, 2);
INSERT INTO public.star VALUES (4, 'Capricornio', 'Capricornus', 'Cap', 413.497, 2);
INSERT INTO public.star VALUES (5, 'Sol', 'Sol', 'Sun', 598.407, 1);
INSERT INTO public.star VALUES (6, 'El Cisne', 'Cygnus', 'Cyg', 179.173, 5);


--
-- Data for Name: types_of_sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.types_of_sun VALUES (1, 'Cristal', 'Triangle', 2500, 120630);
INSERT INTO public.types_of_sun VALUES (2, 'Blue', 'Circle', 4000, 110000);
INSERT INTO public.types_of_sun VALUES (3, 'Floyd', 'Rombe', 3150, 350000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: types_of_suns_types_of_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_of_suns_types_of_sun_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: types_of_sun types_of_suns_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_of_sun
    ADD CONSTRAINT types_of_suns_name_key UNIQUE (name);


--
-- Name: types_of_sun types_of_suns_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_of_sun
    ADD CONSTRAINT types_of_suns_pkey PRIMARY KEY (types_of_sun_id);


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

