--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.9
-- Dumped by pg_dump version 9.2.9
-- Started on 2020-07-18 22:39:19

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 182 (class 3079 OID 11727)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1994 (class 0 OID 0)
-- Dependencies: 182
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 179 (class 1259 OID 32868)
-- Name: tbl_calzada; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_calzada (
    cal_id integer NOT NULL,
    cal_calzada integer NOT NULL,
    cal_orientacion_carril character varying(20) NOT NULL,
    tipo_calzada_id integer NOT NULL
);


ALTER TABLE public.tbl_calzada OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 32866)
-- Name: tbl_calzada_cal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_calzada_cal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_calzada_cal_id_seq OWNER TO postgres;

--
-- TOC entry 1995 (class 0 OID 0)
-- Dependencies: 178
-- Name: tbl_calzada_cal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_calzada_cal_id_seq OWNED BY tbl_calzada.cal_id;


--
-- TOC entry 169 (class 1259 OID 32828)
-- Name: tbl_caso; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_caso (
    cas_id integer NOT NULL,
    cas_causa character varying(200) NOT NULL,
    cas_fecha_creacion date NOT NULL,
    cas_fecha_vencimiento date NOT NULL,
    cas_fotografia_inicio character varying(100) NOT NULL,
    cas_fotografia_fin character varying(100),
    cas_prioridad character varying(10) NOT NULL,
    tipo_pavimento_id integer NOT NULL,
    entorno_id integer NOT NULL,
    tramo_id integer NOT NULL,
    usuario_id integer NOT NULL,
    estado_id integer NOT NULL
);


ALTER TABLE public.tbl_caso OWNER TO postgres;

--
-- TOC entry 168 (class 1259 OID 32826)
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
-- TOC entry 1996 (class 0 OID 0)
-- Dependencies: 168
-- Name: tbl_caso_cas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_caso_cas_id_seq OWNED BY tbl_caso.cas_id;


--
-- TOC entry 177 (class 1259 OID 32860)
-- Name: tbl_deterioro; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_deterioro (
    det_id integer NOT NULL,
    det_nombre character varying(40) NOT NULL,
    det_tipo_deterioro character varying(15) NOT NULL
);


ALTER TABLE public.tbl_deterioro OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 32858)
-- Name: tbl_deterioro_det_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_deterioro_det_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_deterioro_det_id_seq OWNER TO postgres;

--
-- TOC entry 1997 (class 0 OID 0)
-- Dependencies: 176
-- Name: tbl_deterioro_det_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_deterioro_det_id_seq OWNED BY tbl_deterioro.det_id;


--
-- TOC entry 175 (class 1259 OID 32852)
-- Name: tbl_entorno; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_entorno (
    ent_id integer NOT NULL,
    ent_descripcion character varying(200) NOT NULL
);


ALTER TABLE public.tbl_entorno OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 32850)
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
-- TOC entry 1998 (class 0 OID 0)
-- Dependencies: 174
-- Name: tbl_entorno_ent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_entorno_ent_id_seq OWNED BY tbl_entorno.ent_id;


--
-- TOC entry 173 (class 1259 OID 32844)
-- Name: tbl_metodologia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_metodologia (
    met_id integer NOT NULL,
    met_descripcion character varying(10) NOT NULL
);


ALTER TABLE public.tbl_metodologia OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 32842)
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
-- TOC entry 1999 (class 0 OID 0)
-- Dependencies: 172
-- Name: tbl_metodologia_met_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_metodologia_met_id_seq OWNED BY tbl_metodologia.met_id;


--
-- TOC entry 181 (class 1259 OID 32876)
-- Name: tbl_tipo_de_calzada; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_tipo_de_calzada (
    tipc_id integer NOT NULL,
    tipo_de_calzada_descripcion character varying(20) NOT NULL
);


ALTER TABLE public.tbl_tipo_de_calzada OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 32874)
-- Name: tbl_tipo_de_calzada_tipc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_tipo_de_calzada_tipc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_tipo_de_calzada_tipc_id_seq OWNER TO postgres;

--
-- TOC entry 2000 (class 0 OID 0)
-- Dependencies: 180
-- Name: tbl_tipo_de_calzada_tipc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_tipo_de_calzada_tipc_id_seq OWNED BY tbl_tipo_de_calzada.tipc_id;


--
-- TOC entry 171 (class 1259 OID 32836)
-- Name: tbl_tipo_de_pavimento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_tipo_de_pavimento (
    pav_id integer NOT NULL,
    pav_descripcion character varying(16) NOT NULL,
    metodologia_id integer NOT NULL
);


ALTER TABLE public.tbl_tipo_de_pavimento OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 32834)
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
-- TOC entry 2001 (class 0 OID 0)
-- Dependencies: 170
-- Name: tbl_tipo_de_pavimento_pav_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_tipo_de_pavimento_pav_id_seq OWNED BY tbl_tipo_de_pavimento.pav_id;


--
-- TOC entry 1851 (class 2604 OID 32871)
-- Name: cal_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_calzada ALTER COLUMN cal_id SET DEFAULT nextval('tbl_calzada_cal_id_seq'::regclass);


--
-- TOC entry 1846 (class 2604 OID 32831)
-- Name: cas_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso ALTER COLUMN cas_id SET DEFAULT nextval('tbl_caso_cas_id_seq'::regclass);


--
-- TOC entry 1850 (class 2604 OID 32863)
-- Name: det_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_deterioro ALTER COLUMN det_id SET DEFAULT nextval('tbl_deterioro_det_id_seq'::regclass);


--
-- TOC entry 1849 (class 2604 OID 32855)
-- Name: ent_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_entorno ALTER COLUMN ent_id SET DEFAULT nextval('tbl_entorno_ent_id_seq'::regclass);


--
-- TOC entry 1848 (class 2604 OID 32847)
-- Name: met_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_metodologia ALTER COLUMN met_id SET DEFAULT nextval('tbl_metodologia_met_id_seq'::regclass);


--
-- TOC entry 1852 (class 2604 OID 32879)
-- Name: tipc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tipo_de_calzada ALTER COLUMN tipc_id SET DEFAULT nextval('tbl_tipo_de_calzada_tipc_id_seq'::regclass);


--
-- TOC entry 1847 (class 2604 OID 32839)
-- Name: pav_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tipo_de_pavimento ALTER COLUMN pav_id SET DEFAULT nextval('tbl_tipo_de_pavimento_pav_id_seq'::regclass);


--
-- TOC entry 1984 (class 0 OID 32868)
-- Dependencies: 179
-- Data for Name: tbl_calzada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_calzada (cal_id, cal_calzada, cal_orientacion_carril, tipo_calzada_id) FROM stdin;
\.


--
-- TOC entry 2002 (class 0 OID 0)
-- Dependencies: 178
-- Name: tbl_calzada_cal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_calzada_cal_id_seq', 1, false);


--
-- TOC entry 1974 (class 0 OID 32828)
-- Dependencies: 169
-- Data for Name: tbl_caso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_caso (cas_id, cas_causa, cas_fecha_creacion, cas_fecha_vencimiento, cas_fotografia_inicio, cas_fotografia_fin, cas_prioridad, tipo_pavimento_id, entorno_id, tramo_id, usuario_id, estado_id) FROM stdin;
\.


--
-- TOC entry 2003 (class 0 OID 0)
-- Dependencies: 168
-- Name: tbl_caso_cas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_caso_cas_id_seq', 1, false);


--
-- TOC entry 1982 (class 0 OID 32860)
-- Dependencies: 177
-- Data for Name: tbl_deterioro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_deterioro (det_id, det_nombre, det_tipo_deterioro) FROM stdin;
\.


--
-- TOC entry 2004 (class 0 OID 0)
-- Dependencies: 176
-- Name: tbl_deterioro_det_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_deterioro_det_id_seq', 1, false);


--
-- TOC entry 1980 (class 0 OID 32852)
-- Dependencies: 175
-- Data for Name: tbl_entorno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_entorno (ent_id, ent_descripcion) FROM stdin;
\.


--
-- TOC entry 2005 (class 0 OID 0)
-- Dependencies: 174
-- Name: tbl_entorno_ent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_entorno_ent_id_seq', 1, false);


--
-- TOC entry 1978 (class 0 OID 32844)
-- Dependencies: 173
-- Data for Name: tbl_metodologia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_metodologia (met_id, met_descripcion) FROM stdin;
\.


--
-- TOC entry 2006 (class 0 OID 0)
-- Dependencies: 172
-- Name: tbl_metodologia_met_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_metodologia_met_id_seq', 1, false);


--
-- TOC entry 1986 (class 0 OID 32876)
-- Dependencies: 181
-- Data for Name: tbl_tipo_de_calzada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_tipo_de_calzada (tipc_id, tipo_de_calzada_descripcion) FROM stdin;
\.


--
-- TOC entry 2007 (class 0 OID 0)
-- Dependencies: 180
-- Name: tbl_tipo_de_calzada_tipc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_tipo_de_calzada_tipc_id_seq', 1, false);


--
-- TOC entry 1976 (class 0 OID 32836)
-- Dependencies: 171
-- Data for Name: tbl_tipo_de_pavimento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_tipo_de_pavimento (pav_id, pav_descripcion, metodologia_id) FROM stdin;
\.


--
-- TOC entry 2008 (class 0 OID 0)
-- Dependencies: 170
-- Name: tbl_tipo_de_pavimento_pav_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_tipo_de_pavimento_pav_id_seq', 1, false);


--
-- TOC entry 1864 (class 2606 OID 32873)
-- Name: tbl_calzada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_calzada
    ADD CONSTRAINT tbl_calzada_pkey PRIMARY KEY (cal_id);


--
-- TOC entry 1854 (class 2606 OID 32833)
-- Name: tbl_caso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_caso
    ADD CONSTRAINT tbl_caso_pkey PRIMARY KEY (cas_id);


--
-- TOC entry 1862 (class 2606 OID 32865)
-- Name: tbl_deterioro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_deterioro
    ADD CONSTRAINT tbl_deterioro_pkey PRIMARY KEY (det_id);


--
-- TOC entry 1860 (class 2606 OID 32857)
-- Name: tbl_entorno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_entorno
    ADD CONSTRAINT tbl_entorno_pkey PRIMARY KEY (ent_id);


--
-- TOC entry 1858 (class 2606 OID 32849)
-- Name: tbl_metodologia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_metodologia
    ADD CONSTRAINT tbl_metodologia_pkey PRIMARY KEY (met_id);


--
-- TOC entry 1866 (class 2606 OID 32881)
-- Name: tbl_tipo_de_calzada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_tipo_de_calzada
    ADD CONSTRAINT tbl_tipo_de_calzada_pkey PRIMARY KEY (tipc_id);


--
-- TOC entry 1856 (class 2606 OID 32841)
-- Name: tbl_tipo_de_pavimento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_tipo_de_pavimento
    ADD CONSTRAINT tbl_tipo_de_pavimento_pkey PRIMARY KEY (pav_id);


--
-- TOC entry 1993 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2020-07-18 22:39:23

--
-- PostgreSQL database dump complete
--

