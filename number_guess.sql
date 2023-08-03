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
    best_guess integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 278);
INSERT INTO public.games VALUES (2, 1, 335);
INSERT INTO public.games VALUES (3, 2, 518);
INSERT INTO public.games VALUES (4, 2, 902);
INSERT INTO public.games VALUES (5, 1, 135);
INSERT INTO public.games VALUES (6, 1, 704);
INSERT INTO public.games VALUES (7, 1, 618);
INSERT INTO public.games VALUES (8, 3, 199);
INSERT INTO public.games VALUES (9, 3, 649);
INSERT INTO public.games VALUES (10, 4, 955);
INSERT INTO public.games VALUES (11, 4, 430);
INSERT INTO public.games VALUES (12, 3, 247);
INSERT INTO public.games VALUES (13, 3, 925);
INSERT INTO public.games VALUES (14, 3, 346);
INSERT INTO public.games VALUES (15, 5, 277);
INSERT INTO public.games VALUES (16, 5, 679);
INSERT INTO public.games VALUES (17, 6, 538);
INSERT INTO public.games VALUES (18, 6, 29);
INSERT INTO public.games VALUES (19, 5, 814);
INSERT INTO public.games VALUES (20, 5, 563);
INSERT INTO public.games VALUES (21, 5, 732);
INSERT INTO public.games VALUES (22, 7, 106);
INSERT INTO public.games VALUES (23, 7, 520);
INSERT INTO public.games VALUES (24, 8, 859);
INSERT INTO public.games VALUES (25, 8, 333);
INSERT INTO public.games VALUES (26, 7, 91);
INSERT INTO public.games VALUES (27, 7, 386);
INSERT INTO public.games VALUES (28, 7, 283);
INSERT INTO public.games VALUES (29, 9, 885);
INSERT INTO public.games VALUES (30, 9, 344);
INSERT INTO public.games VALUES (31, 10, 179);
INSERT INTO public.games VALUES (32, 10, 828);
INSERT INTO public.games VALUES (33, 9, 119);
INSERT INTO public.games VALUES (34, 9, 966);
INSERT INTO public.games VALUES (35, 9, 470);
INSERT INTO public.games VALUES (36, 11, 509);
INSERT INTO public.games VALUES (37, 11, 654);
INSERT INTO public.games VALUES (38, 12, 113);
INSERT INTO public.games VALUES (39, 12, 649);
INSERT INTO public.games VALUES (40, 11, 552);
INSERT INTO public.games VALUES (41, 11, 896);
INSERT INTO public.games VALUES (42, 11, 921);
INSERT INTO public.games VALUES (69, 44, 205);
INSERT INTO public.games VALUES (70, 44, 994);
INSERT INTO public.games VALUES (71, 45, 665);
INSERT INTO public.games VALUES (72, 45, 383);
INSERT INTO public.games VALUES (73, 44, 780);
INSERT INTO public.games VALUES (74, 44, 734);
INSERT INTO public.games VALUES (75, 44, 572);
INSERT INTO public.games VALUES (76, 46, 663);
INSERT INTO public.games VALUES (77, 46, 52);
INSERT INTO public.games VALUES (78, 48, 799);
INSERT INTO public.games VALUES (79, 48, 388);
INSERT INTO public.games VALUES (80, 46, 806);
INSERT INTO public.games VALUES (81, 46, 817);
INSERT INTO public.games VALUES (82, 46, 734);
INSERT INTO public.games VALUES (83, 49, 654);
INSERT INTO public.games VALUES (84, 49, 359);
INSERT INTO public.games VALUES (85, 50, 942);
INSERT INTO public.games VALUES (86, 50, 796);
INSERT INTO public.games VALUES (87, 49, 540);
INSERT INTO public.games VALUES (88, 49, 369);
INSERT INTO public.games VALUES (89, 49, 912);
INSERT INTO public.games VALUES (90, 51, 816);
INSERT INTO public.games VALUES (91, 51, 960);
INSERT INTO public.games VALUES (92, 52, 309);
INSERT INTO public.games VALUES (93, 52, 491);
INSERT INTO public.games VALUES (94, 51, 665);
INSERT INTO public.games VALUES (95, 51, 3);
INSERT INTO public.games VALUES (96, 51, 279);
INSERT INTO public.games VALUES (97, 53, 602);
INSERT INTO public.games VALUES (98, 53, 165);
INSERT INTO public.games VALUES (99, 54, 632);
INSERT INTO public.games VALUES (100, 54, 392);
INSERT INTO public.games VALUES (101, 53, 862);
INSERT INTO public.games VALUES (102, 53, 231);
INSERT INTO public.games VALUES (103, 53, 2);
INSERT INTO public.games VALUES (104, 55, 716);
INSERT INTO public.games VALUES (105, 55, 147);
INSERT INTO public.games VALUES (106, 56, 656);
INSERT INTO public.games VALUES (107, 56, 489);
INSERT INTO public.games VALUES (108, 55, 472);
INSERT INTO public.games VALUES (109, 55, 466);
INSERT INTO public.games VALUES (110, 55, 644);
INSERT INTO public.games VALUES (111, 57, 268);
INSERT INTO public.games VALUES (112, 57, 436);
INSERT INTO public.games VALUES (113, 58, 622);
INSERT INTO public.games VALUES (114, 58, 260);
INSERT INTO public.games VALUES (115, 57, 457);
INSERT INTO public.games VALUES (116, 57, 180);
INSERT INTO public.games VALUES (117, 57, 549);
INSERT INTO public.games VALUES (118, 59, 658);
INSERT INTO public.games VALUES (119, 59, 965);
INSERT INTO public.games VALUES (120, 60, 834);
INSERT INTO public.games VALUES (121, 60, 10);
INSERT INTO public.games VALUES (122, 59, 669);
INSERT INTO public.games VALUES (123, 59, 440);
INSERT INTO public.games VALUES (124, 59, 865);
INSERT INTO public.games VALUES (125, 61, 26);
INSERT INTO public.games VALUES (126, 61, 749);
INSERT INTO public.games VALUES (127, 62, 971);
INSERT INTO public.games VALUES (128, 62, 745);
INSERT INTO public.games VALUES (129, 61, 940);
INSERT INTO public.games VALUES (130, 61, 789);
INSERT INTO public.games VALUES (131, 61, 528);
INSERT INTO public.games VALUES (132, 63, 263);
INSERT INTO public.games VALUES (133, 63, 578);
INSERT INTO public.games VALUES (134, 64, 929);
INSERT INTO public.games VALUES (135, 64, 645);
INSERT INTO public.games VALUES (136, 63, 860);
INSERT INTO public.games VALUES (137, 63, 372);
INSERT INTO public.games VALUES (138, 63, 237);
INSERT INTO public.games VALUES (139, 65, 460);
INSERT INTO public.games VALUES (140, 65, 304);
INSERT INTO public.games VALUES (141, 66, 277);
INSERT INTO public.games VALUES (142, 66, 324);
INSERT INTO public.games VALUES (143, 65, 544);
INSERT INTO public.games VALUES (144, 65, 487);
INSERT INTO public.games VALUES (145, 65, 124);
INSERT INTO public.games VALUES (172, 98, 26);
INSERT INTO public.games VALUES (173, 98, 480);
INSERT INTO public.games VALUES (174, 99, 402);
INSERT INTO public.games VALUES (175, 99, 146);
INSERT INTO public.games VALUES (176, 98, 1002);
INSERT INTO public.games VALUES (177, 98, 136);
INSERT INTO public.games VALUES (178, 98, 840);
INSERT INTO public.games VALUES (179, 100, 142);
INSERT INTO public.games VALUES (180, 100, 92);
INSERT INTO public.games VALUES (181, 101, 512);
INSERT INTO public.games VALUES (182, 101, 558);
INSERT INTO public.games VALUES (183, 100, 457);
INSERT INTO public.games VALUES (184, 100, 636);
INSERT INTO public.games VALUES (185, 100, 1000);
INSERT INTO public.games VALUES (186, 102, 657);
INSERT INTO public.games VALUES (187, 102, 883);
INSERT INTO public.games VALUES (188, 103, 267);
INSERT INTO public.games VALUES (189, 103, 228);
INSERT INTO public.games VALUES (190, 102, 308);
INSERT INTO public.games VALUES (191, 102, 670);
INSERT INTO public.games VALUES (192, 102, 391);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1690997142186', 2);
INSERT INTO public.users VALUES (63, 'user_1691019634822', 5);
INSERT INTO public.users VALUES (1, 'user_1690997142187', 5);
INSERT INTO public.users VALUES (4, 'user_1690997900545', 2);
INSERT INTO public.users VALUES (66, 'user_1691019697523', 2);
INSERT INTO public.users VALUES (3, 'user_1690997900546', 5);
INSERT INTO public.users VALUES (6, 'user_1690998967768', 2);
INSERT INTO public.users VALUES (65, 'user_1691019697524', 5);
INSERT INTO public.users VALUES (5, 'user_1690998967769', 5);
INSERT INTO public.users VALUES (8, 'user_1690999437780', 2);
INSERT INTO public.users VALUES (7, 'user_1690999437781', 5);
INSERT INTO public.users VALUES (99, 'user_1691048940489', 2);
INSERT INTO public.users VALUES (10, 'user_1690999588535', 2);
INSERT INTO public.users VALUES (9, 'user_1690999588536', 5);
INSERT INTO public.users VALUES (98, 'user_1691048940490', 5);
INSERT INTO public.users VALUES (12, 'user_1690999795099', 2);
INSERT INTO public.users VALUES (11, 'user_1690999795100', 5);
INSERT INTO public.users VALUES (45, 'user_1691017870671', 2);
INSERT INTO public.users VALUES (101, 'user_1691049104900', 2);
INSERT INTO public.users VALUES (44, 'user_1691017870672', 5);
INSERT INTO public.users VALUES (48, 'user_1691018898576', 2);
INSERT INTO public.users VALUES (100, 'user_1691049104901', 5);
INSERT INTO public.users VALUES (46, 'user_1691018898577', 4);
INSERT INTO public.users VALUES (50, 'user_1691019150417', 2);
INSERT INTO public.users VALUES (103, 'user_1691049501258', 2);
INSERT INTO public.users VALUES (49, 'user_1691019150418', 5);
INSERT INTO public.users VALUES (52, 'user_1691019369218', 2);
INSERT INTO public.users VALUES (102, 'user_1691049501259', 5);
INSERT INTO public.users VALUES (51, 'user_1691019369219', 5);
INSERT INTO public.users VALUES (54, 'user_1691019430859', 2);
INSERT INTO public.users VALUES (53, 'user_1691019430860', 5);
INSERT INTO public.users VALUES (56, 'user_1691019474933', 2);
INSERT INTO public.users VALUES (55, 'user_1691019474934', 5);
INSERT INTO public.users VALUES (58, 'user_1691019521160', 2);
INSERT INTO public.users VALUES (57, 'user_1691019521161', 5);
INSERT INTO public.users VALUES (60, 'user_1691019563573', 2);
INSERT INTO public.users VALUES (59, 'user_1691019563574', 5);
INSERT INTO public.users VALUES (62, 'user_1691019606228', 2);
INSERT INTO public.users VALUES (61, 'user_1691019606229', 5);
INSERT INTO public.users VALUES (64, 'user_1691019634821', 2);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

