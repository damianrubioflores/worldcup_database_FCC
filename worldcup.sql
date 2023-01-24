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
    opponent_id integer NOT NULL,
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL
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

INSERT INTO public.games VALUES (292, 81, 2018, 'Final', 4, 2, 291);
INSERT INTO public.games VALUES (294, 82, 2018, 'Third Place', 2, 0, 293);
INSERT INTO public.games VALUES (294, 83, 2018, 'Semi-Final', 2, 1, 292);
INSERT INTO public.games VALUES (293, 84, 2018, 'Semi-Final', 1, 0, 291);
INSERT INTO public.games VALUES (295, 85, 2018, 'Quarter-Final', 3, 2, 292);
INSERT INTO public.games VALUES (296, 86, 2018, 'Quarter-Final', 2, 0, 294);
INSERT INTO public.games VALUES (297, 87, 2018, 'Quarter-Final', 2, 1, 293);
INSERT INTO public.games VALUES (298, 88, 2018, 'Quarter-Final', 2, 0, 291);
INSERT INTO public.games VALUES (299, 89, 2018, 'Eighth-Final', 2, 1, 294);
INSERT INTO public.games VALUES (300, 90, 2018, 'Eighth-Final', 1, 0, 296);
INSERT INTO public.games VALUES (301, 91, 2018, 'Eighth-Final', 3, 2, 293);
INSERT INTO public.games VALUES (302, 92, 2018, 'Eighth-Final', 2, 0, 297);
INSERT INTO public.games VALUES (303, 93, 2018, 'Eighth-Final', 2, 1, 292);
INSERT INTO public.games VALUES (304, 94, 2018, 'Eighth-Final', 2, 1, 295);
INSERT INTO public.games VALUES (305, 95, 2018, 'Eighth-Final', 2, 1, 298);
INSERT INTO public.games VALUES (306, 96, 2018, 'Eighth-Final', 4, 3, 291);
INSERT INTO public.games VALUES (306, 97, 2014, 'Final', 1, 0, 307);
INSERT INTO public.games VALUES (297, 98, 2014, 'Third Place', 3, 0, 308);
INSERT INTO public.games VALUES (308, 99, 2014, 'Semi-Final', 1, 0, 306);
INSERT INTO public.games VALUES (297, 100, 2014, 'Semi-Final', 7, 1, 307);
INSERT INTO public.games VALUES (309, 101, 2014, 'Quarter-Final', 1, 0, 308);
INSERT INTO public.games VALUES (293, 102, 2014, 'Quarter-Final', 1, 0, 306);
INSERT INTO public.games VALUES (299, 103, 2014, 'Quarter-Final', 2, 1, 297);
INSERT INTO public.games VALUES (291, 104, 2014, 'Quarter-Final', 1, 0, 307);
INSERT INTO public.games VALUES (310, 105, 2014, 'Eighth-Final', 2, 1, 297);
INSERT INTO public.games VALUES (298, 106, 2014, 'Eighth-Final', 2, 0, 299);
INSERT INTO public.games VALUES (311, 107, 2014, 'Eighth-Final', 2, 0, 291);
INSERT INTO public.games VALUES (312, 108, 2014, 'Eighth-Final', 2, 1, 307);
INSERT INTO public.games VALUES (302, 109, 2014, 'Eighth-Final', 2, 1, 308);
INSERT INTO public.games VALUES (313, 110, 2014, 'Eighth-Final', 2, 1, 309);
INSERT INTO public.games VALUES (300, 111, 2014, 'Eighth-Final', 1, 0, 306);
INSERT INTO public.games VALUES (314, 112, 2014, 'Eighth-Final', 2, 1, 293);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (291, 'France');
INSERT INTO public.teams VALUES (292, 'Croatia');
INSERT INTO public.teams VALUES (293, 'Belgium');
INSERT INTO public.teams VALUES (294, 'England');
INSERT INTO public.teams VALUES (295, 'Russia');
INSERT INTO public.teams VALUES (296, 'Sweden');
INSERT INTO public.teams VALUES (297, 'Brazil');
INSERT INTO public.teams VALUES (298, 'Uruguay');
INSERT INTO public.teams VALUES (299, 'Colombia');
INSERT INTO public.teams VALUES (300, 'Switzerland');
INSERT INTO public.teams VALUES (301, 'Japan');
INSERT INTO public.teams VALUES (302, 'Mexico');
INSERT INTO public.teams VALUES (303, 'Denmark');
INSERT INTO public.teams VALUES (304, 'Spain');
INSERT INTO public.teams VALUES (305, 'Portugal');
INSERT INTO public.teams VALUES (306, 'Argentina');
INSERT INTO public.teams VALUES (307, 'Germany');
INSERT INTO public.teams VALUES (308, 'Netherlands');
INSERT INTO public.teams VALUES (309, 'Costa Rica');
INSERT INTO public.teams VALUES (310, 'Chile');
INSERT INTO public.teams VALUES (311, 'Nigeria');
INSERT INTO public.teams VALUES (312, 'Algeria');
INSERT INTO public.teams VALUES (313, 'Greece');
INSERT INTO public.teams VALUES (314, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 112, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 314, true);


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

