--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number integer DEFAULT 0
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(30) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 4, 36);
INSERT INTO public.games VALUES (2, 4, 10);
INSERT INTO public.games VALUES (3, 5, 51);
INSERT INTO public.games VALUES (4, 5, 34);
INSERT INTO public.games VALUES (5, 4, 80);
INSERT INTO public.games VALUES (6, 4, 10);
INSERT INTO public.games VALUES (7, 6, 68);
INSERT INTO public.games VALUES (8, 6, 32);
INSERT INTO public.games VALUES (9, 7, 0);
INSERT INTO public.games VALUES (10, 7, 76);
INSERT INTO public.games VALUES (11, 6, 25);
INSERT INTO public.games VALUES (12, 6, 11);
INSERT INTO public.games VALUES (13, 8, 88);
INSERT INTO public.games VALUES (14, 8, 65);
INSERT INTO public.games VALUES (15, 9, 50);
INSERT INTO public.games VALUES (16, 9, 1);
INSERT INTO public.games VALUES (17, 8, 62);
INSERT INTO public.games VALUES (18, 8, 4);
INSERT INTO public.games VALUES (19, 1, 12);
INSERT INTO public.games VALUES (20, 10, 83);
INSERT INTO public.games VALUES (21, 10, 79);
INSERT INTO public.games VALUES (22, 11, 20);
INSERT INTO public.games VALUES (23, 11, 78);
INSERT INTO public.games VALUES (24, 10, 57);
INSERT INTO public.games VALUES (25, 10, 59);
INSERT INTO public.games VALUES (26, 12, 708);
INSERT INTO public.games VALUES (27, 12, 225);
INSERT INTO public.games VALUES (28, 13, 992);
INSERT INTO public.games VALUES (29, 13, 33);
INSERT INTO public.games VALUES (30, 12, 945);
INSERT INTO public.games VALUES (31, 12, 143);
INSERT INTO public.games VALUES (32, 14, 613);
INSERT INTO public.games VALUES (33, 14, 942);
INSERT INTO public.games VALUES (34, 15, 182);
INSERT INTO public.games VALUES (35, 15, 680);
INSERT INTO public.games VALUES (36, 14, 599);
INSERT INTO public.games VALUES (37, 14, 328);
INSERT INTO public.games VALUES (38, 1, 8);
INSERT INTO public.games VALUES (39, 16, 321);
INSERT INTO public.games VALUES (40, 16, 88);
INSERT INTO public.games VALUES (41, 17, 402);
INSERT INTO public.games VALUES (42, 17, 476);
INSERT INTO public.games VALUES (43, 16, 476);
INSERT INTO public.games VALUES (44, 16, 795);
INSERT INTO public.games VALUES (45, 18, 888);
INSERT INTO public.games VALUES (46, 18, 3);
INSERT INTO public.games VALUES (47, 19, 988);
INSERT INTO public.games VALUES (48, 19, 964);
INSERT INTO public.games VALUES (49, 18, 652);
INSERT INTO public.games VALUES (50, 18, 56);
INSERT INTO public.games VALUES (51, 20, 287);
INSERT INTO public.games VALUES (52, 20, 960);
INSERT INTO public.games VALUES (53, 21, 282);
INSERT INTO public.games VALUES (54, 21, 709);
INSERT INTO public.games VALUES (55, 20, 265);
INSERT INTO public.games VALUES (56, 20, 667);
INSERT INTO public.games VALUES (57, 20, 87);
INSERT INTO public.games VALUES (58, 1, 11);
INSERT INTO public.games VALUES (59, 22, 470);
INSERT INTO public.games VALUES (60, 22, 853);
INSERT INTO public.games VALUES (61, 23, 750);
INSERT INTO public.games VALUES (62, 23, 213);
INSERT INTO public.games VALUES (63, 22, 413);
INSERT INTO public.games VALUES (64, 22, 373);
INSERT INTO public.games VALUES (65, 22, 479);
INSERT INTO public.games VALUES (66, 25, 705);
INSERT INTO public.games VALUES (67, 25, 994);
INSERT INTO public.games VALUES (68, 26, 836);
INSERT INTO public.games VALUES (69, 26, 552);
INSERT INTO public.games VALUES (70, 25, 615);
INSERT INTO public.games VALUES (71, 25, 195);
INSERT INTO public.games VALUES (72, 25, 152);
INSERT INTO public.games VALUES (73, 27, 71);
INSERT INTO public.games VALUES (74, 27, 758);
INSERT INTO public.games VALUES (75, 28, 219);
INSERT INTO public.games VALUES (76, 28, 575);
INSERT INTO public.games VALUES (77, 27, 386);
INSERT INTO public.games VALUES (78, 27, 883);
INSERT INTO public.games VALUES (79, 27, 215);
INSERT INTO public.games VALUES (80, 29, 772);
INSERT INTO public.games VALUES (81, 29, 777);
INSERT INTO public.games VALUES (82, 30, 206);
INSERT INTO public.games VALUES (83, 30, 348);
INSERT INTO public.games VALUES (84, 29, 348);
INSERT INTO public.games VALUES (85, 29, 499);
INSERT INTO public.games VALUES (86, 29, 211);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'yue');
INSERT INTO public.users VALUES (2, 'user_1712178778605');
INSERT INTO public.users VALUES (3, 'user_1712178778604');
INSERT INTO public.users VALUES (4, 'user_1712178924313');
INSERT INTO public.users VALUES (5, 'user_1712178924312');
INSERT INTO public.users VALUES (6, 'user_1712178969105');
INSERT INTO public.users VALUES (7, 'user_1712178969104');
INSERT INTO public.users VALUES (8, 'user_1712178985032');
INSERT INTO public.users VALUES (9, 'user_1712178985031');
INSERT INTO public.users VALUES (10, 'user_1712179072315');
INSERT INTO public.users VALUES (11, 'user_1712179072314');
INSERT INTO public.users VALUES (12, 'user_1712179170304');
INSERT INTO public.users VALUES (13, 'user_1712179170303');
INSERT INTO public.users VALUES (14, 'user_1712179208018');
INSERT INTO public.users VALUES (15, 'user_1712179208017');
INSERT INTO public.users VALUES (16, 'user_1712179276135');
INSERT INTO public.users VALUES (17, 'user_1712179276134');
INSERT INTO public.users VALUES (18, 'user_1712179311298');
INSERT INTO public.users VALUES (19, 'user_1712179311297');
INSERT INTO public.users VALUES (20, 'user_1712179418713');
INSERT INTO public.users VALUES (21, 'user_1712179418712');
INSERT INTO public.users VALUES (22, 'user_1712179511067');
INSERT INTO public.users VALUES (23, 'user_1712179511066');
INSERT INTO public.users VALUES (24, 'su');
INSERT INTO public.users VALUES (25, 'user_1712179554747');
INSERT INTO public.users VALUES (26, 'user_1712179554746');
INSERT INTO public.users VALUES (27, 'user_1712179588797');
INSERT INTO public.users VALUES (28, 'user_1712179588796');
INSERT INTO public.users VALUES (29, 'user_1712179653263');
INSERT INTO public.users VALUES (30, 'user_1712179653262');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 86, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 30, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

