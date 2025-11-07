--
-- PostgreSQL database dump
--

\restrict yzyAYiLLPJSi7vi5H5GfDS2Z4rWGkwuf2grquZxvca5FHERLx8JqnficmrWN3hu

-- Dumped from database version 14.19 (Homebrew)
-- Dumped by pg_dump version 14.19 (Homebrew)

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
-- Name: expenses; Type: TABLE; Schema: public; Owner: melvin
--

CREATE TABLE public.expenses (
    id integer NOT NULL,
    amount numeric(6,2) NOT NULL,
    memo text NOT NULL,
    created_on date DEFAULT (now())::date NOT NULL,
    CONSTRAINT expenses_amount_check CHECK ((amount > (0)::numeric(6,2)))
);


ALTER TABLE public.expenses OWNER TO melvin;

--
-- Name: expenses_id_seq; Type: SEQUENCE; Schema: public; Owner: melvin
--

CREATE SEQUENCE public.expenses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.expenses_id_seq OWNER TO melvin;

--
-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: melvin
--

ALTER SEQUENCE public.expenses_id_seq OWNED BY public.expenses.id;


--
-- Name: expenses id; Type: DEFAULT; Schema: public; Owner: melvin
--

ALTER TABLE ONLY public.expenses ALTER COLUMN id SET DEFAULT nextval('public.expenses_id_seq'::regclass);


--
-- Data for Name: expenses; Type: TABLE DATA; Schema: public; Owner: melvin
--

COPY public.expenses (id, amount, memo, created_on) FROM stdin;
8	9.77	Sushi	2025-11-04
9	13.37	Chipotle	2025-11-05
12	7.00	Molly Tea	2025-11-05
26	4.50	Cafe Au Lait	2025-11-06
28	15.00	Bogart House Party	2025-11-06
29	6.50	BEC	2025-11-07
\.


--
-- Name: expenses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: melvin
--

SELECT pg_catalog.setval('public.expenses_id_seq', 30, true);


--
-- Name: expenses expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: melvin
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict yzyAYiLLPJSi7vi5H5GfDS2Z4rWGkwuf2grquZxvca5FHERLx8JqnficmrWN3hu

