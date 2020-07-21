--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.9
-- Dumped by pg_dump version 9.2.9
-- Started on 2020-07-20 20:17:54

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 205 (class 3079 OID 11727)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2147 (class 0 OID 0)
-- Dependencies: 205
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 194 (class 1259 OID 16806)
-- Name: tbl_barrio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_barrio (
    bar_id integer NOT NULL,
    bar_descripcion character varying(45) NOT NULL,
    comuna_id integer NOT NULL
);


ALTER TABLE public.tbl_barrio OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 16804)
-- Name: tbl_barrio_bar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_barrio_bar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_barrio_bar_id_seq OWNER TO postgres;

--
-- TOC entry 2148 (class 0 OID 0)
-- Dependencies: 193
-- Name: tbl_barrio_bar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_barrio_bar_id_seq OWNED BY tbl_barrio.bar_id;


--
-- TOC entry 204 (class 1259 OID 16861)
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
-- TOC entry 203 (class 1259 OID 16859)
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
-- TOC entry 2149 (class 0 OID 0)
-- Dependencies: 203
-- Name: tbl_calzada_cal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_calzada_cal_id_seq OWNED BY tbl_calzada.cal_id;


--
-- TOC entry 168 (class 1259 OID 16691)
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
    estado_id integer NOT NULL,
    orden_id integer NOT NULL
);


ALTER TABLE public.tbl_caso OWNER TO postgres;

--
-- TOC entry 169 (class 1259 OID 16694)
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
-- TOC entry 2150 (class 0 OID 0)
-- Dependencies: 169
-- Name: tbl_caso_cas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_caso_cas_id_seq OWNED BY tbl_caso.cas_id;


--
-- TOC entry 170 (class 1259 OID 16696)
-- Name: tbl_caso_deterioro; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_caso_deterioro (
    cas_det_id integer NOT NULL,
    deterioro_id integer NOT NULL,
    caso_id integer NOT NULL
);


ALTER TABLE public.tbl_caso_deterioro OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 16699)
-- Name: tbl_caso_deterioro_cas_det_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_caso_deterioro_cas_det_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_caso_deterioro_cas_det_id_seq OWNER TO postgres;

--
-- TOC entry 2151 (class 0 OID 0)
-- Dependencies: 171
-- Name: tbl_caso_deterioro_cas_det_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_caso_deterioro_cas_det_id_seq OWNED BY tbl_caso_deterioro.cas_det_id;


--
-- TOC entry 172 (class 1259 OID 16701)
-- Name: tbl_comuna; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_comuna (
    com_id integer NOT NULL,
    com_descripcion character varying(15) NOT NULL
);


ALTER TABLE public.tbl_comuna OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 16704)
-- Name: tbl_comuna_com_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_comuna_com_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_comuna_com_id_seq OWNER TO postgres;

--
-- TOC entry 2152 (class 0 OID 0)
-- Dependencies: 173
-- Name: tbl_comuna_com_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_comuna_com_id_seq OWNED BY tbl_comuna.com_id;


--
-- TOC entry 202 (class 1259 OID 16853)
-- Name: tbl_deterioro; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_deterioro (
    det_id integer NOT NULL,
    det_nombre character varying(40) NOT NULL,
    det_tipo_deterioro character varying(15) NOT NULL
);


ALTER TABLE public.tbl_deterioro OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16851)
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
-- TOC entry 2153 (class 0 OID 0)
-- Dependencies: 201
-- Name: tbl_deterioro_det_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_deterioro_det_id_seq OWNED BY tbl_deterioro.det_id;


--
-- TOC entry 200 (class 1259 OID 16830)
-- Name: tbl_eje_vial; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_eje_vial (
    eje_id integer NOT NULL,
    eje_numero integer NOT NULL
);


ALTER TABLE public.tbl_eje_vial OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16828)
-- Name: tbl_eje_vial_eje_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_eje_vial_eje_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_eje_vial_eje_id_seq OWNER TO postgres;

--
-- TOC entry 2154 (class 0 OID 0)
-- Dependencies: 199
-- Name: tbl_eje_vial_eje_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_eje_vial_eje_id_seq OWNED BY tbl_eje_vial.eje_id;


--
-- TOC entry 198 (class 1259 OID 16822)
-- Name: tbl_elemento_complementario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_elemento_complementario (
    ele_id integer NOT NULL,
    ele_descripcion character varying(45) NOT NULL
);


ALTER TABLE public.tbl_elemento_complementario OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16820)
-- Name: tbl_elemento_complementario_ele_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_elemento_complementario_ele_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_elemento_complementario_ele_id_seq OWNER TO postgres;

--
-- TOC entry 2155 (class 0 OID 0)
-- Dependencies: 197
-- Name: tbl_elemento_complementario_ele_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_elemento_complementario_ele_id_seq OWNED BY tbl_elemento_complementario.ele_id;


--
-- TOC entry 174 (class 1259 OID 16711)
-- Name: tbl_entorno; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_entorno (
    ent_id integer NOT NULL,
    ent_descripcion character varying(200) NOT NULL
);


ALTER TABLE public.tbl_entorno OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 16714)
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
-- TOC entry 2156 (class 0 OID 0)
-- Dependencies: 175
-- Name: tbl_entorno_ent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_entorno_ent_id_seq OWNED BY tbl_entorno.ent_id;


--
-- TOC entry 196 (class 1259 OID 16814)
-- Name: tbl_estado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_estado (
    est_id integer NOT NULL,
    est_descripcion character varying(45) NOT NULL
);


ALTER TABLE public.tbl_estado OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 16812)
-- Name: tbl_estado_est_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_estado_est_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_estado_est_id_seq OWNER TO postgres;

--
-- TOC entry 2157 (class 0 OID 0)
-- Dependencies: 195
-- Name: tbl_estado_est_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_estado_est_id_seq OWNED BY tbl_estado.est_id;


--
-- TOC entry 176 (class 1259 OID 16716)
-- Name: tbl_jerarquia_vial; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_jerarquia_vial (
    jer_id integer NOT NULL,
    descripcion character varying(45) NOT NULL
);


ALTER TABLE public.tbl_jerarquia_vial OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 16719)
-- Name: tbl_metodologia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_metodologia (
    met_id integer NOT NULL,
    met_descripcion character varying(10) NOT NULL
);


ALTER TABLE public.tbl_metodologia OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 16722)
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
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 178
-- Name: tbl_metodologia_met_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_metodologia_met_id_seq OWNED BY tbl_metodologia.met_id;


--
-- TOC entry 179 (class 1259 OID 16724)
-- Name: tbl_orden_mantenimiento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_orden_mantenimiento (
    ord_id integer NOT NULL,
    ord_fecha_creacion date NOT NULL,
    ord_fecha_vencimiento date NOT NULL,
    usuario_id integer NOT NULL,
    estado_id integer NOT NULL
);


ALTER TABLE public.tbl_orden_mantenimiento OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 16727)
-- Name: tbl_orden_mantenimiento_ord_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_orden_mantenimiento_ord_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_orden_mantenimiento_ord_id_seq OWNER TO postgres;

--
-- TOC entry 2159 (class 0 OID 0)
-- Dependencies: 180
-- Name: tbl_orden_mantenimiento_ord_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_orden_mantenimiento_ord_id_seq OWNED BY tbl_orden_mantenimiento.ord_id;


--
-- TOC entry 181 (class 1259 OID 16729)
-- Name: tbl_rol; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_rol (
    rol_id integer NOT NULL,
    rol_nombre character varying(20) NOT NULL
);


ALTER TABLE public.tbl_rol OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16732)
-- Name: tbl_rol_rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_rol_rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_rol_rol_id_seq OWNER TO postgres;

--
-- TOC entry 2160 (class 0 OID 0)
-- Dependencies: 182
-- Name: tbl_rol_rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_rol_rol_id_seq OWNED BY tbl_rol.rol_id;


--
-- TOC entry 183 (class 1259 OID 16734)
-- Name: tbl_tipo_de_calzada; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_tipo_de_calzada (
    tipc_id integer NOT NULL,
    tipo_de_calzada_descripcion character varying(20) NOT NULL
);


ALTER TABLE public.tbl_tipo_de_calzada OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16737)
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
-- TOC entry 2161 (class 0 OID 0)
-- Dependencies: 184
-- Name: tbl_tipo_de_calzada_tipc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_tipo_de_calzada_tipc_id_seq OWNED BY tbl_tipo_de_calzada.tipc_id;


--
-- TOC entry 185 (class 1259 OID 16739)
-- Name: tbl_tipo_de_pavimento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_tipo_de_pavimento (
    pav_id integer NOT NULL,
    pav_descripcion character varying(16) NOT NULL,
    metodologia_id integer NOT NULL
);


ALTER TABLE public.tbl_tipo_de_pavimento OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16742)
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
-- TOC entry 2162 (class 0 OID 0)
-- Dependencies: 186
-- Name: tbl_tipo_de_pavimento_pav_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_tipo_de_pavimento_pav_id_seq OWNED BY tbl_tipo_de_pavimento.pav_id;


--
-- TOC entry 187 (class 1259 OID 16744)
-- Name: tbl_tipo_documento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_tipo_documento (
    tip_id integer NOT NULL,
    tip_descripcion character varying(45) NOT NULL
);


ALTER TABLE public.tbl_tipo_documento OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16747)
-- Name: tbl_tipo_documento_tip_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_tipo_documento_tip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_tipo_documento_tip_id_seq OWNER TO postgres;

--
-- TOC entry 2163 (class 0 OID 0)
-- Dependencies: 188
-- Name: tbl_tipo_documento_tip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_tipo_documento_tip_id_seq OWNED BY tbl_tipo_documento.tip_id;


--
-- TOC entry 189 (class 1259 OID 16749)
-- Name: tbl_tramo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_tramo (
    tra_id integer NOT NULL,
    tra_codigo integer NOT NULL,
    tra_fecha_creacion date,
    tra_segmento integer NOT NULL,
    tra_nomenclatura character varying(45) NOT NULL,
    tra_nombre_via character varying(15) NOT NULL,
    calzada_id integer NOT NULL,
    barrio_id integer NOT NULL,
    elemento_id integer NOT NULL,
    jerarquia_vial_id integer NOT NULL,
    eje_vial_id integer NOT NULL,
    estado_id integer NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.tbl_tramo OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16752)
-- Name: tbl_tramo_tra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_tramo_tra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_tramo_tra_id_seq OWNER TO postgres;

--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 190
-- Name: tbl_tramo_tra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_tramo_tra_id_seq OWNED BY tbl_tramo.tra_id;


--
-- TOC entry 191 (class 1259 OID 16754)
-- Name: tbl_usuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_usuario (
    usu_id integer NOT NULL,
    usu_num_identificacion character varying(15) NOT NULL,
    usu_primer_nombre character varying(30) NOT NULL,
    usu_segundo_nombre character varying(30) NOT NULL,
    usu_primer_apellido character varying(30) NOT NULL,
    usu_segundo_apellido character varying(30) NOT NULL,
    "usu_contraseña" character varying(25) NOT NULL,
    usu_telefono character varying(15) NOT NULL,
    usu_correo character varying(35) NOT NULL,
    rol_id integer NOT NULL,
    estado_id integer NOT NULL,
    tipo_documento_id integer NOT NULL
);


ALTER TABLE public.tbl_usuario OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 16757)
-- Name: tbl_usuario_usu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_usuario_usu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_usuario_usu_id_seq OWNER TO postgres;

--
-- TOC entry 2165 (class 0 OID 0)
-- Dependencies: 192
-- Name: tbl_usuario_usu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_usuario_usu_id_seq OWNED BY tbl_usuario.usu_id;


--
-- TOC entry 1928 (class 2604 OID 16809)
-- Name: bar_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_barrio ALTER COLUMN bar_id SET DEFAULT nextval('tbl_barrio_bar_id_seq'::regclass);


--
-- TOC entry 1933 (class 2604 OID 16864)
-- Name: cal_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_calzada ALTER COLUMN cal_id SET DEFAULT nextval('tbl_calzada_cal_id_seq'::regclass);


--
-- TOC entry 1916 (class 2604 OID 16760)
-- Name: cas_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso ALTER COLUMN cas_id SET DEFAULT nextval('tbl_caso_cas_id_seq'::regclass);


--
-- TOC entry 1917 (class 2604 OID 16761)
-- Name: cas_det_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso_deterioro ALTER COLUMN cas_det_id SET DEFAULT nextval('tbl_caso_deterioro_cas_det_id_seq'::regclass);


--
-- TOC entry 1918 (class 2604 OID 16762)
-- Name: com_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_comuna ALTER COLUMN com_id SET DEFAULT nextval('tbl_comuna_com_id_seq'::regclass);


--
-- TOC entry 1932 (class 2604 OID 16856)
-- Name: det_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_deterioro ALTER COLUMN det_id SET DEFAULT nextval('tbl_deterioro_det_id_seq'::regclass);


--
-- TOC entry 1931 (class 2604 OID 16833)
-- Name: eje_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_eje_vial ALTER COLUMN eje_id SET DEFAULT nextval('tbl_eje_vial_eje_id_seq'::regclass);


--
-- TOC entry 1930 (class 2604 OID 16825)
-- Name: ele_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_elemento_complementario ALTER COLUMN ele_id SET DEFAULT nextval('tbl_elemento_complementario_ele_id_seq'::regclass);


--
-- TOC entry 1919 (class 2604 OID 16764)
-- Name: ent_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_entorno ALTER COLUMN ent_id SET DEFAULT nextval('tbl_entorno_ent_id_seq'::regclass);


--
-- TOC entry 1929 (class 2604 OID 16817)
-- Name: est_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_estado ALTER COLUMN est_id SET DEFAULT nextval('tbl_estado_est_id_seq'::regclass);


--
-- TOC entry 1920 (class 2604 OID 16765)
-- Name: met_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_metodologia ALTER COLUMN met_id SET DEFAULT nextval('tbl_metodologia_met_id_seq'::regclass);


--
-- TOC entry 1921 (class 2604 OID 16766)
-- Name: ord_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_orden_mantenimiento ALTER COLUMN ord_id SET DEFAULT nextval('tbl_orden_mantenimiento_ord_id_seq'::regclass);


--
-- TOC entry 1922 (class 2604 OID 16767)
-- Name: rol_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_rol ALTER COLUMN rol_id SET DEFAULT nextval('tbl_rol_rol_id_seq'::regclass);


--
-- TOC entry 1923 (class 2604 OID 16768)
-- Name: tipc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tipo_de_calzada ALTER COLUMN tipc_id SET DEFAULT nextval('tbl_tipo_de_calzada_tipc_id_seq'::regclass);


--
-- TOC entry 1924 (class 2604 OID 16769)
-- Name: pav_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tipo_de_pavimento ALTER COLUMN pav_id SET DEFAULT nextval('tbl_tipo_de_pavimento_pav_id_seq'::regclass);


--
-- TOC entry 1925 (class 2604 OID 16770)
-- Name: tip_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tipo_documento ALTER COLUMN tip_id SET DEFAULT nextval('tbl_tipo_documento_tip_id_seq'::regclass);


--
-- TOC entry 1926 (class 2604 OID 16771)
-- Name: tra_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tramo ALTER COLUMN tra_id SET DEFAULT nextval('tbl_tramo_tra_id_seq'::regclass);


--
-- TOC entry 1927 (class 2604 OID 16772)
-- Name: usu_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_usuario ALTER COLUMN usu_id SET DEFAULT nextval('tbl_usuario_usu_id_seq'::regclass);


--
-- TOC entry 2138 (class 2613 OID 16566)
-- Name: 16566; Type: BLOB; Schema: -; Owner: postgres
--

SELECT pg_catalog.lo_create('16566');


ALTER LARGE OBJECT 16566 OWNER TO postgres;

--
-- TOC entry 2127 (class 0 OID 16806)
-- Dependencies: 194
-- Data for Name: tbl_barrio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_barrio (bar_id, bar_descripcion, comuna_id) FROM stdin;
\.


--
-- TOC entry 2166 (class 0 OID 0)
-- Dependencies: 193
-- Name: tbl_barrio_bar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_barrio_bar_id_seq', 1, false);


--
-- TOC entry 2137 (class 0 OID 16861)
-- Dependencies: 204
-- Data for Name: tbl_calzada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_calzada (cal_id, cal_calzada, cal_orientacion_carril, tipo_calzada_id) FROM stdin;
\.


--
-- TOC entry 2167 (class 0 OID 0)
-- Dependencies: 203
-- Name: tbl_calzada_cal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_calzada_cal_id_seq', 1, false);


--
-- TOC entry 2101 (class 0 OID 16691)
-- Dependencies: 168
-- Data for Name: tbl_caso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_caso (cas_id, cas_causa, cas_fecha_creacion, cas_fecha_vencimiento, cas_fotografia_inicio, cas_fotografia_fin, cas_prioridad, tipo_pavimento_id, entorno_id, tramo_id, usuario_id, estado_id, orden_id) FROM stdin;
\.


--
-- TOC entry 2168 (class 0 OID 0)
-- Dependencies: 169
-- Name: tbl_caso_cas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_caso_cas_id_seq', 1, false);


--
-- TOC entry 2103 (class 0 OID 16696)
-- Dependencies: 170
-- Data for Name: tbl_caso_deterioro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_caso_deterioro (cas_det_id, deterioro_id, caso_id) FROM stdin;
\.


--
-- TOC entry 2169 (class 0 OID 0)
-- Dependencies: 171
-- Name: tbl_caso_deterioro_cas_det_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_caso_deterioro_cas_det_id_seq', 1, false);


--
-- TOC entry 2105 (class 0 OID 16701)
-- Dependencies: 172
-- Data for Name: tbl_comuna; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_comuna (com_id, com_descripcion) FROM stdin;
\.


--
-- TOC entry 2170 (class 0 OID 0)
-- Dependencies: 173
-- Name: tbl_comuna_com_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_comuna_com_id_seq', 1, false);


--
-- TOC entry 2135 (class 0 OID 16853)
-- Dependencies: 202
-- Data for Name: tbl_deterioro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_deterioro (det_id, det_nombre, det_tipo_deterioro) FROM stdin;
\.


--
-- TOC entry 2171 (class 0 OID 0)
-- Dependencies: 201
-- Name: tbl_deterioro_det_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_deterioro_det_id_seq', 1, false);


--
-- TOC entry 2133 (class 0 OID 16830)
-- Dependencies: 200
-- Data for Name: tbl_eje_vial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_eje_vial (eje_id, eje_numero) FROM stdin;
\.


--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 199
-- Name: tbl_eje_vial_eje_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_eje_vial_eje_id_seq', 1, false);


--
-- TOC entry 2131 (class 0 OID 16822)
-- Dependencies: 198
-- Data for Name: tbl_elemento_complementario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_elemento_complementario (ele_id, ele_descripcion) FROM stdin;
\.


--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 197
-- Name: tbl_elemento_complementario_ele_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_elemento_complementario_ele_id_seq', 1, false);


--
-- TOC entry 2107 (class 0 OID 16711)
-- Dependencies: 174
-- Data for Name: tbl_entorno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_entorno (ent_id, ent_descripcion) FROM stdin;
\.


--
-- TOC entry 2174 (class 0 OID 0)
-- Dependencies: 175
-- Name: tbl_entorno_ent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_entorno_ent_id_seq', 1, false);


--
-- TOC entry 2129 (class 0 OID 16814)
-- Dependencies: 196
-- Data for Name: tbl_estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_estado (est_id, est_descripcion) FROM stdin;
\.


--
-- TOC entry 2175 (class 0 OID 0)
-- Dependencies: 195
-- Name: tbl_estado_est_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_estado_est_id_seq', 1, false);


--
-- TOC entry 2109 (class 0 OID 16716)
-- Dependencies: 176
-- Data for Name: tbl_jerarquia_vial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_jerarquia_vial (jer_id, descripcion) FROM stdin;
\.


--
-- TOC entry 2110 (class 0 OID 16719)
-- Dependencies: 177
-- Data for Name: tbl_metodologia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_metodologia (met_id, met_descripcion) FROM stdin;
\.


--
-- TOC entry 2176 (class 0 OID 0)
-- Dependencies: 178
-- Name: tbl_metodologia_met_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_metodologia_met_id_seq', 1, false);


--
-- TOC entry 2112 (class 0 OID 16724)
-- Dependencies: 179
-- Data for Name: tbl_orden_mantenimiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_orden_mantenimiento (ord_id, ord_fecha_creacion, ord_fecha_vencimiento, usuario_id, estado_id) FROM stdin;
\.


--
-- TOC entry 2177 (class 0 OID 0)
-- Dependencies: 180
-- Name: tbl_orden_mantenimiento_ord_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_orden_mantenimiento_ord_id_seq', 1, false);


--
-- TOC entry 2114 (class 0 OID 16729)
-- Dependencies: 181
-- Data for Name: tbl_rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_rol (rol_id, rol_nombre) FROM stdin;
\.


--
-- TOC entry 2178 (class 0 OID 0)
-- Dependencies: 182
-- Name: tbl_rol_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_rol_rol_id_seq', 1, false);


--
-- TOC entry 2116 (class 0 OID 16734)
-- Dependencies: 183
-- Data for Name: tbl_tipo_de_calzada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_tipo_de_calzada (tipc_id, tipo_de_calzada_descripcion) FROM stdin;
\.


--
-- TOC entry 2179 (class 0 OID 0)
-- Dependencies: 184
-- Name: tbl_tipo_de_calzada_tipc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_tipo_de_calzada_tipc_id_seq', 1, false);


--
-- TOC entry 2118 (class 0 OID 16739)
-- Dependencies: 185
-- Data for Name: tbl_tipo_de_pavimento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_tipo_de_pavimento (pav_id, pav_descripcion, metodologia_id) FROM stdin;
\.


--
-- TOC entry 2180 (class 0 OID 0)
-- Dependencies: 186
-- Name: tbl_tipo_de_pavimento_pav_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_tipo_de_pavimento_pav_id_seq', 1, false);


--
-- TOC entry 2120 (class 0 OID 16744)
-- Dependencies: 187
-- Data for Name: tbl_tipo_documento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_tipo_documento (tip_id, tip_descripcion) FROM stdin;
\.


--
-- TOC entry 2181 (class 0 OID 0)
-- Dependencies: 188
-- Name: tbl_tipo_documento_tip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_tipo_documento_tip_id_seq', 1, false);


--
-- TOC entry 2122 (class 0 OID 16749)
-- Dependencies: 189
-- Data for Name: tbl_tramo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_tramo (tra_id, tra_codigo, tra_fecha_creacion, tra_segmento, tra_nomenclatura, tra_nombre_via, calzada_id, barrio_id, elemento_id, jerarquia_vial_id, eje_vial_id, estado_id, usuario_id) FROM stdin;
\.


--
-- TOC entry 2182 (class 0 OID 0)
-- Dependencies: 190
-- Name: tbl_tramo_tra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_tramo_tra_id_seq', 1, false);


--
-- TOC entry 2124 (class 0 OID 16754)
-- Dependencies: 191
-- Data for Name: tbl_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tbl_usuario (usu_id, usu_num_identificacion, usu_primer_nombre, usu_segundo_nombre, usu_primer_apellido, usu_segundo_apellido, "usu_contraseña", usu_telefono, usu_correo, rol_id, estado_id, tipo_documento_id) FROM stdin;
\.


--
-- TOC entry 2183 (class 0 OID 0)
-- Dependencies: 192
-- Name: tbl_usuario_usu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbl_usuario_usu_id_seq', 1, false);


--
-- TOC entry 2139 (class 0 OID 0)
-- Data for Name: BLOBS; Type: BLOBS; Schema: -; Owner: 
--

SET search_path = pg_catalog;

BEGIN;

SELECT pg_catalog.lo_open('16566', 131072);
SELECT pg_catalog.lowrite(0, '\x2d2d0a2d2d20506f737467726553514c2064617461626173652064756d700a2d2d0a0a2d2d2044756d7065642066726f6d2064617461626173652076657273696f6e20392e322e390a2d2d2044756d7065642062792070675f64756d702076657273696f6e20392e322e390a2d2d2053746172746564206f6e20323032302d30372d31392031333a34363a35360a0a5345542073746174656d656e745f74696d656f7574203d20303b0a53455420636c69656e745f656e636f64696e67203d202755544638273b0a534554207374616e646172645f636f6e666f726d696e675f737472696e6773203d206f6e3b0a53455420636865636b5f66756e6374696f6e5f626f64696573203d2066616c73653b0a53455420636c69656e745f6d696e5f6d65737361676573203d207761726e696e673b0a0a2d2d0a2d2d20544f4320656e747279203138322028636c6173732033303739204f4944203131373237290a2d2d204e616d653a20706c706773716c3b20547970653a20455854454e53494f4e3b20536368656d613a202d3b204f776e65723a200a2d2d0a0a43524541544520455854454e53494f4e204946204e4f542045584953545320706c706773716c205749544820534348454d412070675f636174616c6f673b0a0a0a2d2d0a2d2d20544f4320656e74727920313939342028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203138320a2d2d204e616d653a20455854454e53494f4e20706c706773716c3b20547970653a20434f4d4d454e543b20536368656d613a202d3b204f776e65723a200a2d2d0a0a434f4d4d454e54204f4e20455854454e53494f4e20706c706773716c2049532027504c2f706753514c2070726f6365647572616c206c616e6775616765273b0a0a0a534554207365617263685f70617468203d207075626c69632c2070675f636174616c6f673b0a0a5345542064656661756c745f7461626c657370616365203d2027273b0a0a5345542064656661756c745f776974685f6f696473203d2066616c73653b0a0a2d2d0a2d2d20544f4320656e747279203137392028636c6173732031323539204f4944203136353439290a2d2d204e616d653a2074626c5f63616c7a6164613b20547970653a205441424c453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a435245415445205441424c452074626c5f63616c7a61646120280a2020202063616c5f636f6469676f20696e7465676572204e4f54204e554c4c2c0a2020202063616c5f63616c7a61646120696e7465676572204e4f54204e554c4c2c0a2020202063616c5f6f7269656e746163696f6e5f63617272696c206368617261637465722076617279696e6728323029204e4f54204e554c4c2c0a202020207469706f5f63616c7a6164615f696420696e7465676572204e4f54204e554c4c0a293b0a0a0a414c544552205441424c45207075626c69632e74626c5f63616c7a616461204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e747279203137382028636c6173732031323539204f4944203136353437290a2d2d204e616d653a2074626c5f63616c7a6164615f63616c5f636f6469676f5f7365713b20547970653a2053455155454e43453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a4352454154452053455155454e43452074626c5f63616c7a6164615f63616c5f636f6469676f5f7365710a202020205354415254205749544820310a20202020494e4352454d454e5420425920310a202020204e4f204d494e56414c55450a202020204e4f204d415856414c55450a20202020434143484520313b0a0a0a414c544552205441424c45207075626c69632e74626c5f63616c7a6164615f63616c5f636f6469676f5f736571204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e74727920313939352028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203137380a2d2d204e616d653a2074626c5f63616c7a6164615f63616c5f636f6469676f5f7365713b20547970653a2053455155454e4345204f574e45442042593b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c5445522053455155454e43452074626c5f63616c7a6164615f63616c5f636f6469676f5f736571204f574e45442042592074626c5f63616c7a6164612e63616c5f636f6469676f3b0a0a0a2d2d0a2d2d20544f4320656e747279203136392028636c6173732031323539204f4944203136353039290a2d2d204e616d653a2074626c5f6361736f3b20547970653a205441424c453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a435245415445205441424c452074626c5f6361736f20280a202020206361735f696420696e7465676572204e4f54204e554c4c2c0a202020206361735f6361757361206368617261637465722076617279696e672832303029204e4f54204e554c4c2c0a202020206361735f66656368615f6372656163696f6e2064617465204e4f54204e554c4c2c0a202020206361735f66656368615f76656e63696d69656e746f2064617465204e4f54204e554c4c2c0a202020206361735f666f746f6772616669615f696e6963696f206368617261637465722076617279696e672831303029204e4f54204e554c4c2c0a202020206361735f666f746f6772616669615f66696e206368617261637465722076617279696e6728313030292c0a202020206361735f7072696f7269646164206368617261637465722076617279696e6728313029204e4f54204e554c4c2c0a202020207469706f5f706176696d656e746f5f696420696e7465676572204e4f54204e554c4c2c0a20202020656e746f726e6f5f696420696e7465676572204e4f54204e554c4c2c0a202020207472616d6f5f696420696e7465676572204e4f54204e554c4c2c0a202020207573756172696f5f696420696e7465676572204e4f54204e554c4c2c0a2020202065737461646f5f696420696e7465676572204e4f54204e554c4c0a293b0a0a0a414c544552205441424c45207075626c69632e74626c5f6361736f204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e747279203136382028636c6173732031323539204f4944203136353037290a2d2d204e616d653a2074626c5f6361736f5f6361735f69645f7365713b20547970653a2053455155454e43453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a4352454154452053455155454e43452074626c5f6361736f5f6361735f69645f7365710a202020205354415254205749544820310a20202020494e4352454d454e5420425920310a202020204e4f204d494e56414c55450a202020204e4f204d415856414c55450a20202020434143484520313b0a0a0a414c544552205441424c45207075626c69632e74626c5f6361736f5f6361735f69645f736571204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e74727920313939362028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203136380a2d2d204e616d653a2074626c5f6361736f5f6361735f69645f7365713b20547970653a2053455155454e4345204f574e45442042593b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c5445522053455155454e43452074626c5f6361736f5f6361735f69645f736571204f574e45442042592074626c5f6361736f2e6361735f69643b0a0a0a2d2d0a2d2d20544f4320656e747279203137372028636c6173732031323539204f4944203136353431290a2d2d204e616d653a2074626c5f6465746572696f726f3b20547970653a205441424c453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a435245415445205441424c452074626c5f6465746572696f726f20280a202020206465745f636f6469676f20696e7465676572204e4f54204e554c4c2c0a202020206465745f6e6f6d627265206368617261637465722076617279696e6728343029204e4f54204e554c4c2c0a202020206465745f7469706f5f6465746572696f726f206368617261637465722076617279696e6728313529204e4f54204e554c4c0a293b0a0a0a414c544552205441424c45207075626c69632e74626c5f6465746572696f726f204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e747279203137362028636c6173732031323539204f4944203136353339290a2d2d204e616d653a2074626c5f6465746572696f726f5f6465745f636f6469676f5f7365713b20547970653a2053455155454e43453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a4352454154452053455155454e43452074626c5f6465746572696f726f5f6465745f636f6469676f5f7365710a202020205354415254205749544820310a20202020494e4352454d454e5420425920310a202020204e4f204d494e56414c55450a202020204e4f204d415856414c55450a20202020434143484520313b0a0a0a414c544552205441424c45207075626c69632e74626c5f6465746572696f726f5f6465745f636f6469676f5f736571204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e74727920313939372028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203137360a2d2d204e616d653a2074626c5f6465746572696f726f5f6465745f636f6469676f5f7365713b20547970653a2053455155454e4345204f574e45442042593b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c5445522053455155454e43452074626c5f6465746572696f726f5f6465745f636f6469676f5f736571204f574e45442042592074626c5f6465746572696f726f2e6465745f636f6469676f3b0a0a0a2d2d0a2d2d20544f4320656e747279203137352028636c6173732031323539204f4944203136353333290a2d2d204e616d653a2074626c5f656e746f726e6f3b20547970653a205441424c453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a435245415445205441424c452074626c5f656e746f726e6f20280a20202020656e745f696420696e7465676572204e4f54204e554c4c2c0a20202020656e745f6465736372697063696f6e206368617261637465722076617279696e672832303029204e4f54204e554c4c0a293b0a0a0a414c544552205441424c45207075626c69632e74626c5f656e746f726e6f204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e747279203137342028636c6173732031323539204f4944203136353331290a2d2d204e616d653a2074626c5f656e746f726e6f5f656e745f69645f7365713b20547970653a2053455155454e43453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a4352454154452053455155454e43452074626c5f656e746f726e6f5f656e745f69645f7365710a202020205354415254205749544820310a20202020494e4352454d454e5420425920310a202020204e4f204d494e56414c55450a202020204e4f204d415856414c55450a20202020434143484520313b0a0a0a414c544552205441424c45207075626c69632e74626c5f656e746f726e6f5f656e745f69645f736571204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e74727920313939382028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203137340a2d2d204e616d653a2074626c5f656e746f726e6f5f656e745f69645f7365713b20547970653a2053455155454e4345204f574e45442042593b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c5445522053455155454e43452074626c5f656e746f726e6f5f656e745f69645f736571204f574e45442042592074626c5f656e746f726e6f2e656e745f69643b0a0a0a2d2d0a2d2d20544f4320656e747279203137332028636c6173732031323539204f4944203136353235290a2d2d204e616d653a2074626c5f6d65746f646f6c6f6769613b20547970653a205441424c453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a435245415445205441424c452074626c5f6d65746f646f6c6f67696120280a202020206d65745f696420696e7465676572204e4f54204e554c4c2c0a202020206d65745f6465736372697063696f6e206368617261637465722076617279696e6728313029204e4f54204e554c4c0a293b0a0a0a414c544552205441424c45207075626c69632e74626c5f6d65746f646f6c6f676961204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e747279203137322028636c6173732031323539204f4944203136353233290a2d2d204e616d653a2074626c5f6d65746f646f6c6f6769615f6d65745f69645f7365713b20547970653a2053455155454e43453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a4352454154452053455155454e43452074626c5f6d65746f646f6c6f6769615f6d65745f69645f7365710a202020205354415254205749544820310a20202020494e4352454d454e5420425920310a202020204e4f204d494e56414c55450a202020204e4f204d415856414c55450a20202020434143484520313b0a0a0a414c544552205441424c45207075626c69632e74626c5f6d65746f646f6c6f6769615f6d65745f69645f736571204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e74727920313939392028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203137320a2d2d204e616d653a2074626c5f6d65746f646f6c6f6769615f6d65745f69645f7365713b20547970653a2053455155454e4345204f574e45442042593b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c5445522053455155454e43452074626c5f6d65746f646f6c6f6769615f6d65745f69645f736571204f574e45442042592074626c5f6d65746f646f6c6f6769612e6d65745f69643b0a0a0a2d2d0a2d2d20544f4320656e747279203138312028636c6173732031323539204f4944203136353537290a2d2d204e616d653a2074626c5f7469706f5f64655f63616c7a6164613b20547970653a205441424c453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a435245415445205441424c452074626c5f7469706f5f64655f63616c7a61646120280a20202020746970635f696420696e7465676572204e4f54204e554c4c2c0a202020207469706f5f64655f63616c7a6164615f6465736372697063696f6e206368617261637465722076617279696e6728323029204e4f54204e554c4c0a293b0a0a0a414c544552205441424c45207075626c69632e74626c5f7469706f5f64655f63616c7a616461204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e747279203138302028636c6173732031323539204f4944203136353535290a2d2d204e616d653a2074626c5f7469706f5f64655f63616c7a6164615f746970635f69645f7365713b20547970653a2053455155454e43453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a4352454154452053455155454e43452074626c5f7469706f5f64655f63616c7a6164615f746970635f69645f7365710a202020205354415254205749544820310a20202020494e4352454d454e5420425920310a202020204e4f204d494e56414c55450a202020204e4f204d415856414c55450a20202020434143484520313b0a0a0a414c544552205441424c45207075626c69632e74626c5f7469706f5f64655f63616c7a6164615f746970635f69645f736571204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e74727920323030302028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203138300a2d2d204e616d653a2074626c5f7469706f5f64655f63616c7a6164615f746970635f69645f7365713b20547970653a2053455155454e4345204f574e45442042593b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c5445522053455155454e43452074626c5f7469706f5f64655f63616c7a6164615f746970635f69645f736571204f574e45442042592074626c5f7469706f5f64655f63616c7a6164612e746970635f69643b0a0a0a2d2d0a2d2d20544f4320656e747279203137312028636c6173732031323539204f4944203136353137290a2d2d204e616d653a2074626c5f7469706f5f64655f706176696d656e746f3b20547970653a205441424c453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a435245415445205441424c452074626c5f7469706f5f64655f706176696d656e746f20280a202020207061765f696420696e7465676572204e4f54204e554c4c2c0a202020207061765f6465736372697063696f6e206368617261637465722076617279696e6728313629204e4f54204e554c4c2c0a202020206d65746f646f6c6f6769615f696420696e7465676572204e4f54204e554c4c0a293b0a0a0a414c544552205441424c45207075626c69632e74626c5f7469706f5f64655f706176696d656e746f204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e747279203137302028636c6173732031323539204f4944203136353135290a2d2d204e616d653a2074626c5f7469706f5f64655f706176696d656e746f5f7061765f69645f7365713b20547970653a2053455155454e43453b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a4352454154452053455155454e43452074626c5f7469706f5f64655f706176696d656e746f5f7061765f69645f7365710a202020205354415254205749544820310a20202020494e4352454d454e5420425920310a202020204e4f204d494e56414c55450a202020204e4f204d415856414c55450a20202020434143484520313b0a0a0a414c544552205441424c45207075626c69632e74626c5f7469706f5f64655f706176696d656e746f5f7061765f69645f736571204f574e455220544f20706f7374677265733b0a0a2d2d0a2d2d20544f4320656e74727920323030312028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203137300a2d2d204e616d653a2074626c5f7469706f5f64655f706176696d656e746f5f7061765f69645f7365713b20547970653a2053455155454e4345204f574e45442042593b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c5445522053455155454e43452074626c5f7469706f5f64655f706176696d656e746f5f7061765f69645f736571204f574e45442042592074626c5f7469706f5f64655f706176696d656e746f2e7061765f69643b0a0a0a2d2d0a2d2d20544f4320656e74727920313835312028636c6173732032363034204f4944203136353532290a2d2d204e616d653a2063616c5f636f6469676f3b20547970653a2044454641554c543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f63616c7a61646120414c54455220434f4c554d4e2063616c5f636f6469676f205345542044454641554c54206e65787476616c282774626c5f63616c7a6164615f63616c5f636f6469676f5f736571273a3a726567636c617373293b0a0a0a2d2d0a2d2d20544f4320656e74727920313834362028636c6173732032363034204f4944203136353132290a2d2d204e616d653a206361735f69643b20547970653a2044454641554c543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f6361736f20414c54455220434f4c554d4e206361735f6964205345542044454641554c54206e65787476616c282774626c5f6361736f5f6361735f69645f736571273a3a726567636c617373293b0a0a0a2d2d0a2d2d20544f4320656e74727920313835302028636c6173732032363034204f4944203136353434290a2d2d204e616d653a206465745f636f6469676f3b20547970653a2044454641554c543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f6465746572696f726f20414c54455220434f4c554d4e206465745f636f6469676f205345542044454641554c54206e65787476616c282774626c5f6465746572696f726f5f6465745f636f6469676f5f736571273a3a726567636c617373293b0a0a0a2d2d0a2d2d20544f4320656e74727920313834392028636c6173732032363034204f4944203136353336290a2d2d204e616d653a20656e745f69643b20547970653a2044454641554c543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f656e746f726e6f20414c54455220434f4c554d4e20656e745f6964205345542044454641554c54206e65787476616c282774626c5f656e746f726e6f5f656e745f69645f736571273a3a726567636c617373293b0a0a0a2d2d0a2d2d20544f4320656e74727920313834382028636c6173732032363034204f4944203136353238290a2d2d204e616d653a206d65745f69643b20547970653a2044454641554c543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f6d65746f646f6c6f67696120414c54455220434f4c554d4e206d65745f6964205345542044454641554c54206e65787476616c282774626c5f6d65746f646f6c6f6769615f6d65745f69645f736571273a3a726567636c617373293b0a0a0a2d2d0a2d2d20544f4320656e74727920313835322028636c6173732032363034204f4944203136353630290a2d2d204e616d653a20746970635f69643b20547970653a2044454641554c543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f7469706f5f64655f63616c7a61646120414c54455220434f4c554d4e20746970635f6964205345542044454641554c54206e65787476616c282774626c5f7469706f5f64655f63616c7a6164615f746970635f69645f736571273a3a726567636c617373293b0a0a0a2d2d0a2d2d20544f4320656e74727920313834372028636c6173732032363034204f4944203136353230290a2d2d204e616d653a207061765f69643b20547970653a2044454641554c543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f7469706f5f64655f706176696d656e746f20414c54455220434f4c554d4e207061765f6964205345542044454641554c54206e65787476616c282774626c5f7469706f5f64655f706176696d656e746f5f7061765f69645f736571273a3a726567636c617373293b0a0a0a2d2d0a2d2d20544f4320656e74727920313938342028636c6173732030204f4944203136353439290a2d2d20446570656e64656e636965733a203137390a2d2d204461746120666f72204e616d653a2074626c5f63616c7a6164613b20547970653a205441424c4520444154413b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a434f50592074626c5f63616c7a616461202863616c5f636f6469676f2c2063616c5f63616c7a6164612c2063616c5f6f7269656e746163696f6e5f63617272696c2c207469706f5f63616c7a6164615f6964292046524f4d20737464696e3b0a5c2e0a0a0a2d2d0a2d2d20544f4320656e74727920323030322028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203137380a2d2d204e616d653a2074626c5f63616c7a6164615f63616c5f636f6469676f5f7365713b20547970653a2053455155454e4345205345543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a53454c4543542070675f636174616c6f672e73657476616c282774626c5f63616c7a6164615f63616c5f636f6469676f5f736571272c20312c2066616c7365293b0a0a0a2d2d0a2d2d20544f4320656e74727920313937342028636c6173732030204f4944203136353039290a2d2d20446570656e64656e636965733a203136390a2d2d204461746120666f72204e616d653a2074626c5f6361736f3b20547970653a205441424c4520444154413b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a434f50592074626c5f6361736f20286361735f69642c206361735f63617573612c206361735f66656368615f6372656163696f6e2c206361735f66656368615f76656e63696d69656e746f2c206361735f666f746f6772616669615f696e6963696f2c206361735f666f746f6772616669615f66696e2c206361735f7072696f72696461642c207469706f5f706176696d656e746f5f69642c20656e746f726e6f5f69642c207472616d6f5f69642c207573756172696f5f69642c2065737461646f5f6964292046524f4d20737464696e3b0a5c2e0a0a0a2d2d0a2d2d20544f4320656e74727920323030332028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203136380a2d2d204e616d653a2074626c5f6361736f5f6361735f69645f7365713b20547970653a2053455155454e4345205345543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a53454c4543542070675f636174616c6f672e73657476616c282774626c5f6361736f5f6361735f69645f736571272c20312c2066616c7365293b0a0a0a2d2d0a2d2d20544f4320656e74727920313938322028636c6173732030204f4944203136353431290a2d2d20446570656e64656e636965733a203137370a2d2d204461746120666f72204e616d653a2074626c5f6465746572696f726f3b20547970653a205441424c4520444154413b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a434f50592074626c5f6465746572696f726f20286465745f636f6469676f2c206465745f6e6f6d6272652c206465745f7469706f5f6465746572696f726f292046524f4d20737464696e3b0a5c2e0a0a0a2d2d0a2d2d20544f4320656e74727920323030342028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203137360a2d2d204e616d653a2074626c5f6465746572696f726f5f6465745f636f6469676f5f7365713b20547970653a2053455155454e4345205345543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a53454c4543542070675f636174616c6f672e73657476616c282774626c5f6465746572696f726f5f6465745f636f6469676f5f736571272c20312c2066616c7365293b0a0a0a2d2d0a2d2d20544f4320656e74727920313938302028636c6173732030204f4944203136353333290a2d2d20446570656e64656e636965733a203137350a2d2d204461746120666f72204e616d653a2074626c5f656e746f726e6f3b20547970653a205441424c4520444154413b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a434f50592074626c5f656e746f726e6f2028656e745f69642c20656e745f6465736372697063696f6e292046524f4d20737464696e3b0a5c2e0a0a0a2d2d0a2d2d20544f4320656e74727920323030352028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203137340a2d2d204e616d653a2074626c5f656e746f726e6f5f656e745f69645f7365713b20547970653a2053455155454e4345205345543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a53454c4543542070675f636174616c6f672e73657476616c282774626c5f656e746f726e6f5f656e745f69645f736571272c20312c2066616c7365293b0a0a0a2d2d0a2d2d20544f4320656e74727920313937382028636c6173732030204f4944203136353235290a2d2d20446570656e64656e636965733a203137330a2d2d204461746120666f72204e616d653a2074626c5f6d65746f646f6c6f6769613b20547970653a205441424c4520444154413b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a434f50592074626c5f6d65746f646f6c6f67696120286d65745f69642c206d65745f6465736372697063696f6e292046524f4d20737464696e3b0a5c2e0a0a0a2d2d0a2d2d20544f4320656e74727920323030362028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203137320a2d2d204e616d653a2074626c5f6d65746f646f6c6f6769615f6d65745f69645f7365713b20547970653a2053455155454e4345205345543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a53454c4543542070675f636174616c6f672e73657476616c282774626c5f6d65746f646f6c6f6769615f6d65745f69645f736571272c20312c2066616c7365293b0a0a0a2d2d0a2d2d20544f4320656e74727920313938362028636c6173732030204f4944203136353537290a2d2d20446570656e64656e636965733a203138310a2d2d204461746120666f72204e616d653a2074626c5f7469706f5f64655f63616c7a6164613b20547970653a205441424c4520444154413b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a434f50592074626c5f7469706f5f64655f63616c7a6164612028746970635f69642c207469706f5f64655f63616c7a6164615f6465736372697063696f6e292046524f4d20737464696e3b0a5c2e0a0a0a2d2d0a2d2d20544f4320656e74727920323030372028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203138300a2d2d204e616d653a2074626c5f7469706f5f64655f63616c7a6164615f746970635f69645f7365713b20547970653a2053455155454e4345205345543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a53454c4543542070675f636174616c6f672e73657476616c282774626c5f7469706f5f64655f63616c7a6164615f746970635f69645f736571272c20312c2066616c7365293b0a0a0a2d2d0a2d2d20544f4320656e74727920313937362028636c6173732030204f4944203136353137290a2d2d20446570656e64656e636965733a203137310a2d2d204461746120666f72204e616d653a2074626c5f7469706f5f64655f706176696d656e746f3b20547970653a205441424c4520444154413b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a434f50592074626c5f7469706f5f64655f706176696d656e746f20287061765f69642c207061765f6465736372697063696f6e2c206d65746f646f6c6f6769615f6964292046524f4d20737464696e3b0a5c2e0a0a0a2d2d0a2d2d20544f4320656e74727920323030382028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a203137300a2d2d204e616d653a2074626c5f7469706f5f64655f706176696d656e746f5f7061765f69645f7365713b20547970653a2053455155454e4345205345543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265730a2d2d0a0a53454c4543542070675f636174616c6f672e73657476616c282774626c5f7469706f5f64655f706176696d656e746f5f7061765f69645f736571272c20312c2066616c7365293b0a0a0a2d2d0a2d2d20544f4320656e74727920313836342028636c6173732032363036204f4944203136353534290a2d2d204e616d653a2074626c5f63616c7a6164615f706b65793b20547970653a20434f4e53545241494e543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f63616c7a6164610a2020202041444420434f4e53545241494e542074626c5f63616c7a6164615f706b6579205052494d415259204b4559202863616c5f636f6469676f293b0a0a0a2d2d0a2d2d20544f4320656e74727920313835342028636c6173732032363036204f4944203136353134290a2d2d204e616d653a2074626c5f6361736f5f706b65793b20547970653a20434f4e53545241494e543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f6361736f0a2020202041444420434f4e53545241494e542074626c5f6361736f5f706b6579205052494d415259204b455920286361735f6964293b0a0a0a2d2d0a2d2d20544f4320656e74727920313836322028636c6173732032363036204f4944203136353436290a2d2d204e616d653a2074626c5f6465746572696f726f5f706b65793b20547970653a20434f4e53545241494e543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f6465746572696f726f0a2020202041444420434f4e53545241494e542074626c5f6465746572696f726f5f706b6579205052494d415259204b455920286465745f636f6469676f293b0a0a0a2d2d0a2d2d20544f4320656e74727920313836302028636c6173732032363036204f4944203136353338290a2d2d204e616d653a2074626c5f656e746f726e6f5f706b65793b20547970653a20434f4e53545241494e543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f656e746f726e6f0a2020202041444420434f4e53545241494e542074626c5f656e746f726e6f5f706b6579205052494d415259204b45592028656e745f6964293b0a0a0a2d2d0a2d2d20544f4320656e74727920313835382028636c6173732032363036204f4944203136353330290a2d2d204e616d653a2074626c5f6d65746f646f6c6f6769615f706b65793b20547970653a20434f4e53545241494e543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f6d65746f646f6c6f6769610a2020202041444420434f4e53545241494e542074626c5f6d65746f646f6c6f6769615f706b6579205052494d415259204b455920286d65745f6964293b0a0a0a2d2d0a2d2d20544f4320656e74727920313836362028636c6173732032363036204f4944203136353632290a2d2d204e616d653a2074626c5f7469706f5f64655f63616c7a6164615f706b65793b20547970653a20434f4e53545241494e543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f7469706f5f64655f63616c7a6164610a2020202041444420434f4e53545241494e542074626c5f7469706f5f64655f63616c7a6164615f706b6579205052494d415259204b45592028746970635f6964293b0a0a0a2d2d0a2d2d20544f4320656e74727920313835362028636c6173732032363036204f4944203136353232290a2d2d204e616d653a2074626c5f7469706f5f64655f706176696d656e746f5f706b65793b20547970653a20434f4e53545241494e543b20536368656d613a207075626c69633b204f776e65723a20706f7374677265733b205461626c6573706163653a200a2d2d0a0a414c544552205441424c45204f4e4c592074626c5f7469706f5f64655f706176696d656e746f0a2020202041444420434f4e53545241494e542074626c5f7469706f5f64655f706176696d656e746f5f706b6579205052494d415259204b455920287061765f6964293b0a0a0a2d2d0a2d2d20544f4320656e74727920313939332028636c6173732030204f49442030290a2d2d20446570656e64656e636965733a20350a2d2d204e616d653a207075626c69633b20547970653a2041434c3b20536368656d613a202d3b204f776e65723a20706f7374677265730a2d2d0a0a5245564f4b4520414c4c204f4e20534348454d41207075626c69632046524f4d205055424c49433b0a5245564f4b4520414c4c204f4e20534348454d41207075626c69632046524f4d20706f7374677265733b0a4752414e5420414c4c204f4e20534348454d41207075626c696320544f20706f7374677265733b0a4752414e5420414c4c204f4e20534348454d41207075626c696320544f205055424c49433b0a0a0a2d2d20436f6d706c65746564206f6e20323032302d30372d31392031333a34363a35370a0a2d2d0a2d2d20506f737467726553514c2064617461626173652064756d7020636f6d706c6574650a2d2d0a0a');
SELECT pg_catalog.lo_close(0);

COMMIT;

SET search_path = public, pg_catalog;

--
-- TOC entry 1961 (class 2606 OID 16811)
-- Name: tbl_barrio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_barrio
    ADD CONSTRAINT tbl_barrio_pkey PRIMARY KEY (bar_id);


--
-- TOC entry 1971 (class 2606 OID 16866)
-- Name: tbl_calzada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_calzada
    ADD CONSTRAINT tbl_calzada_pkey PRIMARY KEY (cal_id);


--
-- TOC entry 1937 (class 2606 OID 16776)
-- Name: tbl_caso_deterioro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_caso_deterioro
    ADD CONSTRAINT tbl_caso_deterioro_pkey PRIMARY KEY (cas_det_id);


--
-- TOC entry 1935 (class 2606 OID 16778)
-- Name: tbl_caso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_caso
    ADD CONSTRAINT tbl_caso_pkey PRIMARY KEY (cas_id);


--
-- TOC entry 1939 (class 2606 OID 16780)
-- Name: tbl_comuna_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_comuna
    ADD CONSTRAINT tbl_comuna_pkey PRIMARY KEY (com_id);


--
-- TOC entry 1969 (class 2606 OID 16858)
-- Name: tbl_deterioro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_deterioro
    ADD CONSTRAINT tbl_deterioro_pkey PRIMARY KEY (det_id);


--
-- TOC entry 1967 (class 2606 OID 16835)
-- Name: tbl_eje_vial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_eje_vial
    ADD CONSTRAINT tbl_eje_vial_pkey PRIMARY KEY (eje_id);


--
-- TOC entry 1965 (class 2606 OID 16827)
-- Name: tbl_elemento_complementario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_elemento_complementario
    ADD CONSTRAINT tbl_elemento_complementario_pkey PRIMARY KEY (ele_id);


--
-- TOC entry 1941 (class 2606 OID 16784)
-- Name: tbl_entorno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_entorno
    ADD CONSTRAINT tbl_entorno_pkey PRIMARY KEY (ent_id);


--
-- TOC entry 1963 (class 2606 OID 16819)
-- Name: tbl_estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_estado
    ADD CONSTRAINT tbl_estado_pkey PRIMARY KEY (est_id);


--
-- TOC entry 1943 (class 2606 OID 16786)
-- Name: tbl_jeraraquia_vial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_jerarquia_vial
    ADD CONSTRAINT tbl_jeraraquia_vial_pkey PRIMARY KEY (jer_id);


--
-- TOC entry 1945 (class 2606 OID 16788)
-- Name: tbl_metodologia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_metodologia
    ADD CONSTRAINT tbl_metodologia_pkey PRIMARY KEY (met_id);


--
-- TOC entry 1947 (class 2606 OID 16790)
-- Name: tbl_orden_mantenimiento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_orden_mantenimiento
    ADD CONSTRAINT tbl_orden_mantenimiento_pkey PRIMARY KEY (ord_id);


--
-- TOC entry 1949 (class 2606 OID 16792)
-- Name: tbl_rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_rol
    ADD CONSTRAINT tbl_rol_pkey PRIMARY KEY (rol_id);


--
-- TOC entry 1951 (class 2606 OID 16794)
-- Name: tbl_tipo_de_calzada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_tipo_de_calzada
    ADD CONSTRAINT tbl_tipo_de_calzada_pkey PRIMARY KEY (tipc_id);


--
-- TOC entry 1953 (class 2606 OID 16796)
-- Name: tbl_tipo_de_pavimento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_tipo_de_pavimento
    ADD CONSTRAINT tbl_tipo_de_pavimento_pkey PRIMARY KEY (pav_id);


--
-- TOC entry 1955 (class 2606 OID 16798)
-- Name: tbl_tipo_documento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_tipo_documento
    ADD CONSTRAINT tbl_tipo_documento_pkey PRIMARY KEY (tip_id);


--
-- TOC entry 1957 (class 2606 OID 16800)
-- Name: tbl_tramo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_tramo
    ADD CONSTRAINT tbl_tramo_pkey PRIMARY KEY (tra_id);


--
-- TOC entry 1959 (class 2606 OID 16802)
-- Name: tbl_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_usuario
    ADD CONSTRAINT tbl_usuario_pkey PRIMARY KEY (usu_id);


--
-- TOC entry 1993 (class 2606 OID 16846)
-- Name: fk_tbl_barrio_tblcomuna_com_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_barrio
    ADD CONSTRAINT fk_tbl_barrio_tblcomuna_com_id FOREIGN KEY (comuna_id) REFERENCES tbl_comuna(com_id);


--
-- TOC entry 1994 (class 2606 OID 16872)
-- Name: fk_tbl_calzada_tipo_de_calzada_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_calzada
    ADD CONSTRAINT fk_tbl_calzada_tipo_de_calzada_id FOREIGN KEY (tipo_calzada_id) REFERENCES tbl_tipo_de_calzada(tipc_id);


--
-- TOC entry 1979 (class 2606 OID 16987)
-- Name: fk_tbl_caso_deterioro_tblcaso_cas_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso_deterioro
    ADD CONSTRAINT fk_tbl_caso_deterioro_tblcaso_cas_id FOREIGN KEY (caso_id) REFERENCES tbl_caso(cas_id);


--
-- TOC entry 1978 (class 2606 OID 16982)
-- Name: fk_tbl_caso_deterioro_tbldeterioro_det_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso_deterioro
    ADD CONSTRAINT fk_tbl_caso_deterioro_tbldeterioro_det_id FOREIGN KEY (deterioro_id) REFERENCES tbl_deterioro(det_id);


--
-- TOC entry 1973 (class 2606 OID 16912)
-- Name: fk_tbl_caso_tblentorno_ent_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tblentorno_ent_id FOREIGN KEY (entorno_id) REFERENCES tbl_entorno(ent_id);


--
-- TOC entry 1975 (class 2606 OID 16922)
-- Name: fk_tbl_caso_tblestado_est_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tblestado_est_id FOREIGN KEY (estado_id) REFERENCES tbl_estado(est_id);


--
-- TOC entry 1977 (class 2606 OID 16977)
-- Name: fk_tbl_caso_tblorden_mantenimiento_ord_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tblorden_mantenimiento_ord_id FOREIGN KEY (orden_id) REFERENCES tbl_orden_mantenimiento(ord_id);


--
-- TOC entry 1972 (class 2606 OID 16907)
-- Name: fk_tbl_caso_tbltipodepavimento_pav_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tbltipodepavimento_pav_id FOREIGN KEY (tipo_pavimento_id) REFERENCES tbl_tipo_de_pavimento(pav_id);


--
-- TOC entry 1974 (class 2606 OID 16917)
-- Name: fk_tbl_caso_tbltramo_tra_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tbltramo_tra_id FOREIGN KEY (tramo_id) REFERENCES tbl_tramo(tra_id);


--
-- TOC entry 1976 (class 2606 OID 16942)
-- Name: fk_tbl_caso_tblusuario_usu_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tblusuario_usu_id FOREIGN KEY (usuario_id) REFERENCES tbl_usuario(usu_id);


--
-- TOC entry 1981 (class 2606 OID 16962)
-- Name: fk_tbl_orden_mantenimiento_tblestado_est_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_orden_mantenimiento
    ADD CONSTRAINT fk_tbl_orden_mantenimiento_tblestado_est_id FOREIGN KEY (estado_id) REFERENCES tbl_estado(est_id);


--
-- TOC entry 1980 (class 2606 OID 16957)
-- Name: fk_tbl_orden_mantenimiento_tblusuario_usu_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_orden_mantenimiento
    ADD CONSTRAINT fk_tbl_orden_mantenimiento_tblusuario_usu_id FOREIGN KEY (usuario_id) REFERENCES tbl_usuario(usu_id);


--
-- TOC entry 1982 (class 2606 OID 16841)
-- Name: fk_tbl_tipodepavimento_tblmetodologia_met_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tipo_de_pavimento
    ADD CONSTRAINT fk_tbl_tipodepavimento_tblmetodologia_met_id FOREIGN KEY (metodologia_id) REFERENCES tbl_metodologia(met_id);


--
-- TOC entry 1984 (class 2606 OID 16877)
-- Name: fk_tbl_tramo_tblbarrio_bar_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tblbarrio_bar_id FOREIGN KEY (barrio_id) REFERENCES tbl_barrio(bar_id);


--
-- TOC entry 1983 (class 2606 OID 16867)
-- Name: fk_tbl_tramo_tblcalzada_cal_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tblcalzada_cal_id FOREIGN KEY (calzada_id) REFERENCES tbl_calzada(cal_id);


--
-- TOC entry 1987 (class 2606 OID 16892)
-- Name: fk_tbl_tramo_tbleje_vial_eje_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tbleje_vial_eje_id FOREIGN KEY (eje_vial_id) REFERENCES tbl_eje_vial(eje_id);


--
-- TOC entry 1985 (class 2606 OID 16882)
-- Name: fk_tbl_tramo_tblelemento_complementario_ele_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tblelemento_complementario_ele_id FOREIGN KEY (elemento_id) REFERENCES tbl_elemento_complementario(ele_id);


--
-- TOC entry 1988 (class 2606 OID 16897)
-- Name: fk_tbl_tramo_tblestado_est_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tblestado_est_id FOREIGN KEY (estado_id) REFERENCES tbl_estado(est_id);


--
-- TOC entry 1986 (class 2606 OID 16887)
-- Name: fk_tbl_tramo_tbljerarquia_vial_jer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tbljerarquia_vial_jer_id FOREIGN KEY (jerarquia_vial_id) REFERENCES tbl_jerarquia_vial(jer_id);


--
-- TOC entry 1989 (class 2606 OID 16902)
-- Name: fk_tbl_tramo_tblusuario_usu_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tblusuario_usu_id FOREIGN KEY (usuario_id) REFERENCES tbl_usuario(usu_id);


--
-- TOC entry 1991 (class 2606 OID 16932)
-- Name: fk_tbl_usuario_tblestado_est_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_usuario
    ADD CONSTRAINT fk_tbl_usuario_tblestado_est_id FOREIGN KEY (estado_id) REFERENCES tbl_estado(est_id);


--
-- TOC entry 1990 (class 2606 OID 16927)
-- Name: fk_tbl_usuario_tblrol_rol_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_usuario
    ADD CONSTRAINT fk_tbl_usuario_tblrol_rol_id FOREIGN KEY (rol_id) REFERENCES tbl_rol(rol_id);


--
-- TOC entry 1992 (class 2606 OID 16937)
-- Name: fk_tbl_usuario_tbltipodocumento_tip_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbl_usuario
    ADD CONSTRAINT fk_tbl_usuario_tbltipodocumento_tip_id FOREIGN KEY (tipo_documento_id) REFERENCES tbl_tipo_documento(tip_id);


--
-- TOC entry 2146 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2020-07-20 20:17:54

--
-- PostgreSQL database dump complete
--

