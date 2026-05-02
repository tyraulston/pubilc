--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'tyrau', 1, 14);
INSERT INTO public.users VALUES (37, 'user_1777736845614', 2, 276);
INSERT INTO public.users VALUES (19, 'user_1777736440209', 2, NULL);
INSERT INTO public.users VALUES (3, 'user_1777736117883', 2, 88);
INSERT INTO public.users VALUES (18, 'user_1777736440210', 5, NULL);
INSERT INTO public.users VALUES (2, 'user_1777736117884', 5, 139);
INSERT INTO public.users VALUES (36, 'user_1777736845615', 5, 40);
INSERT INTO public.users VALUES (21, 'user_1777736449378', 2, NULL);
INSERT INTO public.users VALUES (20, 'user_1777736449379', 5, NULL);
INSERT INTO public.users VALUES (5, 'user_1777736218542', 2, 718);
INSERT INTO public.users VALUES (4, 'user_1777736218543', 5, 189);
INSERT INTO public.users VALUES (23, 'user_1777736494675', 2, NULL);
INSERT INTO public.users VALUES (39, 'user_1777737006851', 2, 338);
INSERT INTO public.users VALUES (7, 'user_1777736245418', 2, 422);
INSERT INTO public.users VALUES (22, 'user_1777736494676', 5, NULL);
INSERT INTO public.users VALUES (6, 'user_1777736245419', 5, 3);
INSERT INTO public.users VALUES (38, 'user_1777737006852', 5, 23);
INSERT INTO public.users VALUES (9, 'user_1777736340907', 2, 393);
INSERT INTO public.users VALUES (25, 'user_1777736519093', 2, 220);
INSERT INTO public.users VALUES (8, 'user_1777736340908', 5, 463);
INSERT INTO public.users VALUES (24, 'user_1777736519094', 5, 247);
INSERT INTO public.users VALUES (11, 'user_1777736348832', 2, 566);
INSERT INTO public.users VALUES (41, 'user_1777737086644', 2, 112);
INSERT INTO public.users VALUES (10, 'user_1777736348833', 5, 275);
INSERT INTO public.users VALUES (27, 'user_1777736537552', 2, 288);
INSERT INTO public.users VALUES (40, 'user_1777737086645', 5, 114);
INSERT INTO public.users VALUES (13, 'user_1777736363938', 2, 268);
INSERT INTO public.users VALUES (26, 'user_1777736537553', 5, 140);
INSERT INTO public.users VALUES (12, 'user_1777736363939', 5, 15);
INSERT INTO public.users VALUES (15, 'user_1777736369961', 2, 12);
INSERT INTO public.users VALUES (29, 'user_1777736690698', 2, 52);
INSERT INTO public.users VALUES (14, 'user_1777736369962', 5, 153);
INSERT INTO public.users VALUES (28, 'user_1777736690699', 5, 106);
INSERT INTO public.users VALUES (17, 'user_1777736376102', 2, 301);
INSERT INTO public.users VALUES (31, 'user_1777736795958', 2, 28);
INSERT INTO public.users VALUES (16, 'user_1777736376103', 5, 121);
INSERT INTO public.users VALUES (30, 'user_1777736795959', 5, 205);
INSERT INTO public.users VALUES (33, 'user_1777736812545', 2, 79);
INSERT INTO public.users VALUES (32, 'user_1777736812546', 5, 293);
INSERT INTO public.users VALUES (35, 'user_1777736816285', 2, 64);
INSERT INTO public.users VALUES (34, 'user_1777736816286', 5, 604);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 41, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

