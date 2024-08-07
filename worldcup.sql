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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 108, 109, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 110, 111, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 109, 111, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 108, 110, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 109, 112, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 111, 113, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 110, 114, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 108, 115, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 111, 116, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 113, 117, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 110, 118, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 114, 119, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 109, 120, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 112, 121, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 115, 122, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 108, 123, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 124, 123, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 125, 114, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 123, 125, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 124, 114, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 125, 126, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 123, 110, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 114, 116, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 124, 108, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 114, 127, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 116, 115, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 108, 128, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 124, 129, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 125, 119, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 126, 130, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 123, 117, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 110, 131, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (108, 'France');
INSERT INTO public.teams VALUES (109, 'Croatia');
INSERT INTO public.teams VALUES (110, 'Belgium');
INSERT INTO public.teams VALUES (111, 'England');
INSERT INTO public.teams VALUES (112, 'Russia');
INSERT INTO public.teams VALUES (113, 'Sweden');
INSERT INTO public.teams VALUES (114, 'Brazil');
INSERT INTO public.teams VALUES (115, 'Uruguay');
INSERT INTO public.teams VALUES (116, 'Colombia');
INSERT INTO public.teams VALUES (117, 'Switzerland');
INSERT INTO public.teams VALUES (118, 'Japan');
INSERT INTO public.teams VALUES (119, 'Mexico');
INSERT INTO public.teams VALUES (120, 'Denmark');
INSERT INTO public.teams VALUES (121, 'Spain');
INSERT INTO public.teams VALUES (122, 'Portugal');
INSERT INTO public.teams VALUES (123, 'Argentina');
INSERT INTO public.teams VALUES (124, 'Germany');
INSERT INTO public.teams VALUES (125, 'Netherlands');
INSERT INTO public.teams VALUES (126, 'Costa Rica');
INSERT INTO public.teams VALUES (127, 'Chile');
INSERT INTO public.teams VALUES (128, 'Nigeria');
INSERT INTO public.teams VALUES (129, 'Algeria');
INSERT INTO public.teams VALUES (130, 'Greece');
INSERT INTO public.teams VALUES (131, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 131, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

