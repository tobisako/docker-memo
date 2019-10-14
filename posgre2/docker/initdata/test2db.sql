--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account (
    id character varying(80),
    name text NOT NULL,
    age integer,
    company_id character varying(80),
    update_time date
);


ALTER TABLE public.account OWNER TO postgres;

--
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    id character varying(80),
    name text NOT NULL,
    update_time date
);


ALTER TABLE public.company OWNER TO postgres;

--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account (id, name, age, company_id, update_time) FROM stdin;
0	tarou	56	1	2019-10-14
1	hanako	28	0	2019-10-14
2	hideo	43	1	2019-10-14
\.


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (id, name, update_time) FROM stdin;
0	A company	2019-10-14
1	B company	2019-10-14
\.


--
-- PostgreSQL database dump complete
--

