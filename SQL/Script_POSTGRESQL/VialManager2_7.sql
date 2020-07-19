--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.9
-- Dumped by pg_dump version 9.2.9
-- Started on 2020-07-12 22:00:59

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 176 (class 3079 OID 11727)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1964 (class 0 OID 0)
-- Dependencies: 176
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 169 (class 1259 OID 16460)
-- Name: tbl_caso; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_caso (
    cas_id integer NOT NULL,
    cas_causa character varying(200) NOT NULL,
    cas_fecha_creacion date NOT NULL,
    cas_fecha_vencimiento date NOT NULL,
    cas_fotografia_inicio character varying(100) NOT NULL,
    cas_fotografia_fin character varying(100) NOT NULL,
    cas_prioridad character varying(10) NOT NULL,
    tbltipodepavimento_pav_id integer NOT NULL,
    tblentorno_ent_id integer NOT NULL,
    tbltramo_tra_id integer NOT NULL,
    tblusuario_usu_id integer NOT NULL,
    tblestado_est_id integer NOT NULL
);


ALTER TABLE public.tbl_caso OWNER TO postgres;

--
-- TOC entry 168 (class 1259 OID 16458)
-- Name: tbl_caso_cas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_caso_cas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_caso_cas_id_seq OWNER TO postgres;

--
-- TOC entry 1965 (class 0 OID 0)
-- Dependencies: 168
-- Name: tbl_caso_cas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_caso_cas_id_seq OWNED BY tbl_caso.cas_id;


--
-- TOC entry 175 (class 1259 OID 16484)
-- Name: tbl_entorno; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_entorno (
    ent_id integer NOT NULL,
    ent_descripcion character varying(200) NOT NULL
);


ALTER TABLE public.tbl_entorno OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 16482)
-- Name: tbl_entorno_ent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_entorno_ent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_entorno_ent_id_seq OWNER TO postgres;

--
-- TOC entry 1966 (class 0 OID 0)
-- Dependencies: 174
-- Name: tbl_entorno_ent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_entorno_ent_id_seq OWNED BY tbl_entorno.ent_id;


--
-- TOC entry 173 (class 1259 OID 16476)
-- Name: tbl_metodologia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_metodologia (
    met_id integer NOT NULL,
    met_descripcion character varying(10) NOT NULL
);


ALTER TABLE public.tbl_metodologia OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 16474)
-- Name: tbl_metodologia_met_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_metodologia_met_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_metodologia_met_id_seq OWNER TO postgres;

--
-- TOC entry 1967 (class 0 OID 0)
-- Dependencies: 172
-- Name: tbl_metodologia_met_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_metodologia_met_id_seq OWNED BY tbl_metodologia.met_id;


--
-- TOC entry 171 (class 1259 OID 16468)
-- Name: tbl_tipo_de_pavimento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_tipo_de_pavimento (
    pav_id integer NOT NULL,
    pav_descripcion character varying(16) NOT NULL,
    tblmetodologia_met_id integer NOT NULL
);


ALTER TABLE public.tbl_tipo_de_pavimento OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 16466)
-- Name: tbl_tipo_de_pavimento_pav_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_tipo_de_pavimento_pav_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_tipo_de_pavimento_pav_id_seq OWNER TO postgres;

--
-- TOC entry 1968 (class 0 OID 0)
-- Dependencies: 170
-- Name: tbl_tipo_de_pavimento_pav_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_tipo_de_pavimento_pav_id_seq OWNED BY tbl_tipo_de_pavimento.pav_id;


--
-- TOC entry 1828 (class 2604 OID 16463)
-- Name: cas_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso ALTER COLUMN cas_id SET DEFAULT nextval('tbl_caso_cas_id_seq'::regclass);


--
-- TOC entry 1831 (class 2604 OID 16487)
-- Name: ent_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_entorno ALTER COLUMN ent_id SET DEFAULT nextval('tbl_entorno_ent_id_seq'::regclass);


--
-- TOC entry 1830 (class 2604 OID 16479)
-- Name: met_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_metodologia ALTER COLUMN met_id SET DEFAULT nextval('tbl_metodologia_met_id_seq'::regclass);


--
-- TOC entry 1829 (class 2604 OID 16471)
-- Name: pav_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tipo_de_pavimento ALTER COLUMN pav_id SET DEFAULT nextval('tbl_tipo_de_pavimento_pav_id_seq'::regclass);


--
-- TOC entry 1950 (class 0 OID 16460)
-- Dependencies: 169
-- Data for Name: tbl_caso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_caso (cas_id, cas_causa, cas_fecha_creacion, cas_fecha_vencimiento, cas_fotografia_inicio, cas_fotografia_fin, cas_prioridad, tbltipodepavimento_pav_id, tblentorno_ent_id, tbltramo_tra_id, tblusuario_usu_id, tblestado_est_id) FROM stdin;
\.


--
-- TOC entry 1969 (class 0 OID 0)
-- Dependencies: 168
-- Name: tbl_caso_cas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_caso_cas_id_seq', 1, false);


--
-- TOC entry 1956 (class 0 OID 16484)
-- Dependencies: 175
-- Data for Name: tbl_entorno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_entorno (ent_id, ent_descripcion) FROM stdin;
\.


--
-- TOC entry 1970 (class 0 OID 0)
-- Dependencies: 174
-- Name: tbl_entorno_ent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_entorno_ent_id_seq', 1, false);


--
-- TOC entry 1954 (class 0 OID 16476)
-- Dependencies: 173
-- Data for Name: tbl_metodologia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_metodologia (met_id, met_descripcion) FROM stdin;
\.


--
-- TOC entry 1971 (class 0 OID 0)
-- Dependencies: 172
-- Name: tbl_metodologia_met_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_metodologia_met_id_seq', 1, false);


--
-- TOC entry 1952 (class 0 OID 16468)
-- Dependencies: 171
-- Data for Name: tbl_tipo_de_pavimento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_tipo_de_pavimento (pav_id, pav_descripcion, tblmetodologia_met_id) FROM stdin;
\.


--
-- TOC entry 1972 (class 0 OID 0)
-- Dependencies: 170
-- Name: tbl_tipo_de_pavimento_pav_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_tipo_de_pavimento_pav_id_seq', 1, false);


--
-- TOC entry 1833 (class 2606 OID 16465)
-- Name: tbl_caso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_caso
    ADD CONSTRAINT tbl_caso_pkey PRIMARY KEY (cas_id);


--
-- TOC entry 1839 (class 2606 OID 16489)
-- Name: tbl_entorno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_entorno
    ADD CONSTRAINT tbl_entorno_pkey PRIMARY KEY (ent_id);


--
-- TOC entry 1837 (class 2606 OID 16481)
-- Name: tbl_metodologia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_metodologia
    ADD CONSTRAINT tbl_metodologia_pkey PRIMARY KEY (met_id);


--
-- TOC entry 1835 (class 2606 OID 16473)
-- Name: tbl_tipo_de_pavimento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_tipo_de_pavimento
    ADD CONSTRAINT tbl_tipo_de_pavimento_pkey PRIMARY KEY (pav_id);


--
-- TOC entry 1841 (class 2606 OID 16501)
-- Name: fk_tbl_caso_tblentorno_ent_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tblentorno_ent_id FOREIGN KEY (tblentorno_ent_id) REFERENCES tbl_entorno(ent_id);


--
-- TOC entry 1840 (class 2606 OID 16496)
-- Name: fk_tbl_caso_tbltipodepavimento_pav_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tbltipodepavimento_pav_id FOREIGN KEY (tbltipodepavimento_pav_id) REFERENCES tbl_tipo_de_pavimento(pav_id);


--
-- TOC entry 1842 (class 2606 OID 16491)
-- Name: fk_tbl_tipodepavimento_tblmetodologia_met_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tipo_de_pavimento
    ADD CONSTRAINT fk_tbl_tipodepavimento_tblmetodologia_met_id FOREIGN KEY (tblmetodologia_met_id) REFERENCES tbl_metodologia(met_id);


--
-- TOC entry 1963 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2020-07-12 22:01:01

--
-- PostgreSQL database dump complete
--

