--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: account; Type: TABLE; Schema: public; Owner: lgrube; Tablespace: 
--

CREATE TABLE account (
    type character varying(10),
    balance integer,
    acct_no integer NOT NULL
);


ALTER TABLE account OWNER TO lgrube;

--
-- Name: bank; Type: TABLE; Schema: public; Owner: lgrube; Tablespace: 
--

CREATE TABLE bank (
    name character varying(20),
    addr character varying(20),
    code integer NOT NULL
);


ALTER TABLE bank OWNER TO lgrube;

--
-- Name: bank_branch; Type: TABLE; Schema: public; Owner: lgrube; Tablespace: 
--

CREATE TABLE bank_branch (
    addr character varying(20),
    branch_no integer NOT NULL
);


ALTER TABLE bank_branch OWNER TO lgrube;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: lgrube; Tablespace: 
--

CREATE TABLE customer (
    name character varying(20),
    addr character varying(20),
    ssn integer NOT NULL,
    phone integer
);


ALTER TABLE customer OWNER TO lgrube;

--
-- Name: loan; Type: TABLE; Schema: public; Owner: lgrube; Tablespace: 
--

CREATE TABLE loan (
    type character varying(10),
    amount integer,
    loan_no integer NOT NULL
);


ALTER TABLE loan OWNER TO lgrube;

--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: lgrube
--

COPY account (type, balance, acct_no) FROM stdin;
\.


--
-- Data for Name: bank; Type: TABLE DATA; Schema: public; Owner: lgrube
--

COPY bank (name, addr, code) FROM stdin;
\.


--
-- Data for Name: bank_branch; Type: TABLE DATA; Schema: public; Owner: lgrube
--

COPY bank_branch (addr, branch_no) FROM stdin;
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: lgrube
--

COPY customer (name, addr, ssn, phone) FROM stdin;
\.


--
-- Data for Name: loan; Type: TABLE DATA; Schema: public; Owner: lgrube
--

COPY loan (type, amount, loan_no) FROM stdin;
\.


--
-- Name: account_pkey; Type: CONSTRAINT; Schema: public; Owner: lgrube; Tablespace: 
--

ALTER TABLE ONLY account
    ADD CONSTRAINT account_pkey PRIMARY KEY (acct_no);


--
-- Name: bank_branch_pkey; Type: CONSTRAINT; Schema: public; Owner: lgrube; Tablespace: 
--

ALTER TABLE ONLY bank_branch
    ADD CONSTRAINT bank_branch_pkey PRIMARY KEY (branch_no);


--
-- Name: bank_pkey; Type: CONSTRAINT; Schema: public; Owner: lgrube; Tablespace: 
--

ALTER TABLE ONLY bank
    ADD CONSTRAINT bank_pkey PRIMARY KEY (code);


--
-- Name: customer_pkey; Type: CONSTRAINT; Schema: public; Owner: lgrube; Tablespace: 
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (ssn);


--
-- Name: loan_pkey; Type: CONSTRAINT; Schema: public; Owner: lgrube; Tablespace: 
--

ALTER TABLE ONLY loan
    ADD CONSTRAINT loan_pkey PRIMARY KEY (loan_no);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

