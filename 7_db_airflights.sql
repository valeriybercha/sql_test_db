--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7
-- Dumped by pg_dump version 11.2

-- Started on 2019-04-16 16:09:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16396)
-- Name: airflights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airflights (
    name character varying NOT NULL,
    price double precision,
    "time" timestamp with time zone,
    aircraft character varying,
    id integer NOT NULL,
    airline_id integer NOT NULL,
    departure_id integer NOT NULL,
    arrival_id integer NOT NULL
);


ALTER TABLE public.airflights OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 33108)
-- Name: airflights_airline_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.airflights_airline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.airflights_airline_id_seq OWNER TO postgres;

--
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 202
-- Name: airflights_airline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.airflights_airline_id_seq OWNED BY public.airflights.airline_id;


--
-- TOC entry 204 (class 1259 OID 33190)
-- Name: airflights_arrival_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.airflights_arrival_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.airflights_arrival_id_seq OWNER TO postgres;

--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 204
-- Name: airflights_arrival_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.airflights_arrival_id_seq OWNED BY public.airflights.arrival_id;


--
-- TOC entry 203 (class 1259 OID 33167)
-- Name: airflights_departure_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.airflights_departure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.airflights_departure_id_seq OWNER TO postgres;

--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 203
-- Name: airflights_departure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.airflights_departure_id_seq OWNED BY public.airflights.departure_id;


--
-- TOC entry 199 (class 1259 OID 33060)
-- Name: airflights_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.airflights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.airflights_id_seq OWNER TO postgres;

--
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 199
-- Name: airflights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.airflights_id_seq OWNED BY public.airflights.id;


--
-- TOC entry 198 (class 1259 OID 16414)
-- Name: airline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline (
    name character varying NOT NULL,
    year integer,
    adress character varying,
    ceo character varying,
    id integer NOT NULL
);


ALTER TABLE public.airline OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 33070)
-- Name: airline_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.airline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.airline_id_seq OWNER TO postgres;

--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 200
-- Name: airline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.airline_id_seq OWNED BY public.airline.id;


--
-- TOC entry 197 (class 1259 OID 16402)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    name character varying NOT NULL,
    country character varying,
    population integer,
    mayor character varying,
    id integer NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 33079)
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO postgres;

--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 201
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- TOC entry 2739 (class 2604 OID 33062)
-- Name: airflights id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airflights ALTER COLUMN id SET DEFAULT nextval('public.airflights_id_seq'::regclass);


--
-- TOC entry 2740 (class 2604 OID 33110)
-- Name: airflights airline_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airflights ALTER COLUMN airline_id SET DEFAULT nextval('public.airflights_airline_id_seq'::regclass);


--
-- TOC entry 2741 (class 2604 OID 33169)
-- Name: airflights departure_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airflights ALTER COLUMN departure_id SET DEFAULT nextval('public.airflights_departure_id_seq'::regclass);


--
-- TOC entry 2742 (class 2604 OID 33192)
-- Name: airflights arrival_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airflights ALTER COLUMN arrival_id SET DEFAULT nextval('public.airflights_arrival_id_seq'::regclass);


--
-- TOC entry 2744 (class 2604 OID 33072)
-- Name: airline id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airline ALTER COLUMN id SET DEFAULT nextval('public.airline_id_seq'::regclass);


--
-- TOC entry 2743 (class 2604 OID 33081)
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- TOC entry 2878 (class 0 OID 16396)
-- Dependencies: 196
-- Data for Name: airflights; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.airflights (name, price, "time", aircraft, id, airline_id, departure_id, arrival_id) VALUES ('LTR313', 178, '2015-09-01 16:34:02+03', 'Airbus A320-232', 1, 1, 1, 6);
INSERT INTO public.airflights (name, price, "time", aircraft, id, airline_id, departure_id, arrival_id) VALUES ('LMS212', 90, '2019-04-10 13:34:00+03', 'Boeing 737 Max', 2, 2, 2, 7);
INSERT INTO public.airflights (name, price, "time", aircraft, id, airline_id, departure_id, arrival_id) VALUES ('LLS234', 120, '2019-04-10 14:07:00+03', 'Boeing 747', 3, 2, 3, 8);
INSERT INTO public.airflights (name, price, "time", aircraft, id, airline_id, departure_id, arrival_id) VALUES ('LQB122', 230, '2019-05-12 16:54:00+03', 'Airbus a320', 4, 3, 4, 9);
INSERT INTO public.airflights (name, price, "time", aircraft, id, airline_id, departure_id, arrival_id) VALUES ('UAN101', 120, '2019-05-15 17:45:00+03', 'Boeing 737', 5, 4, 5, 10);
INSERT INTO public.airflights (name, price, "time", aircraft, id, airline_id, departure_id, arrival_id) VALUES ('USA345', 137, '2019-04-10 17:34:00+03', 'Airbus a321', 6, 5, 6, 1);
INSERT INTO public.airflights (name, price, "time", aircraft, id, airline_id, departure_id, arrival_id) VALUES ('TUA456', 350, '2019-04-10 16:58:00+03', 'Airbus a321', 7, 6, 7, 2);
INSERT INTO public.airflights (name, price, "time", aircraft, id, airline_id, departure_id, arrival_id) VALUES ('FMG700', 345, '2019-04-10 03:45:00+03', 'Boeing 737', 8, 7, 8, 3);
INSERT INTO public.airflights (name, price, "time", aircraft, id, airline_id, departure_id, arrival_id) VALUES ('AWE123', 212, '0019-04-10 15:54:00+01:39:49', 'Boeing 747', 9, 8, 9, 4);
INSERT INTO public.airflights (name, price, "time", aircraft, id, airline_id, departure_id, arrival_id) VALUES ('DJT476', 457, '0019-04-10 13:34:00+01:39:49', 'Boeing 747', 10, 9, 10, 5);


--
-- TOC entry 2880 (class 0 OID 16414)
-- Dependencies: 198
-- Data for Name: airline; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.airline (name, year, adress, ceo, id) VALUES ('Air Asia', 1993, 'Malaysia, Sepang, LCC Terminal (Jln KLIA S3, South Support Zone,) 64000', 'Toni Fernandes', 1);
INSERT INTO public.airline (name, year, adress, ceo, id) VALUES ('British Airways', 1974, 'Great Britain, London, Hartmann Rd, Royal Docks, E16 2PB', 'Willie Walsh', 2);
INSERT INTO public.airline (name, year, adress, ceo, id) VALUES ('Virgin Airways', 1984, 'Great Britain, Crawley, Manor Royal, RH10 9DF', 'Shai Weiss', 3);
INSERT INTO public.airline (name, year, adress, ceo, id) VALUES ('MAU', 1992, 'Ukraine, Kyiv, Kharkivske Road, 201-203, 02121', 'Yuri Miroshnikov', 4);
INSERT INTO public.airline (name, year, adress, ceo, id) VALUES ('American Airlines', 1926, 'USA, Chiacago, 10000 W OHare Ave, 60666', 'Doug Parker', 5);
INSERT INTO public.airline (name, year, adress, ceo, id) VALUES ('Turkish Airlines', 1933, 'Turkey, Istambul, Yesilkoy, 34149', 'Bilal Eksi', 6);
INSERT INTO public.airline (name, year, adress, ceo, id) VALUES ('Philippine Airlines', 1935, 'Philippines, Bay City, Pasay, Macapagal Boulevard, 1300', 'Lucio C. Tan', 7);
INSERT INTO public.airline (name, year, adress, ceo, id) VALUES ('Qatar Airways', 1993, 'Qatar, Doha, Qatar Airway Towers, Al Matar 1, 14595', 'Akbar Al Baker', 8);
INSERT INTO public.airline (name, year, adress, ceo, id) VALUES ('Fly Emirates', 1985, 'United Emirates, Dubai, Garhoud, 22631', 'Ahmed bin Saeed Al Maktoum', 9);


--
-- TOC entry 2879 (class 0 OID 16402)
-- Dependencies: 197
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cities (name, country, population, mayor, id) VALUES ('Hong Kong', 'China', 7392000, 'Carrie Lam', 1);
INSERT INTO public.cities (name, country, population, mayor, id) VALUES ('Berlin', 'Germany', 3575000, 'Michael Muller', 2);
INSERT INTO public.cities (name, country, population, mayor, id) VALUES ('London', 'Great Britain', 8136000, 'Sadiq Khan', 3);
INSERT INTO public.cities (name, country, population, mayor, id) VALUES ('Edinburgh', 'Scotland', 482005, 'Frank Ross', 4);
INSERT INTO public.cities (name, country, population, mayor, id) VALUES ('Bristol', 'Great Britain', 535907, 'Marvin Rees', 5);
INSERT INTO public.cities (name, country, population, mayor, id) VALUES ('Paris', 'France', 2141000, 'Anne Hidalgo', 6);
INSERT INTO public.cities (name, country, population, mayor, id) VALUES ('New York', 'USA', 8623000, 'Bill de Blasio', 7);
INSERT INTO public.cities (name, country, population, mayor, id) VALUES ('Chicago', 'USA', 2716000, 'Rahm Emanuel', 8);
INSERT INTO public.cities (name, country, population, mayor, id) VALUES ('Kiev', 'Ukraine', 2884000, 'Vitali Klitschko', 9);
INSERT INTO public.cities (name, country, population, mayor, id) VALUES ('Istanbul', 'Turkey', 15070000, 'Kadir Topbas', 10);


--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 202
-- Name: airflights_airline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.airflights_airline_id_seq', 10, true);


--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 204
-- Name: airflights_arrival_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.airflights_arrival_id_seq', 10, true);


--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 203
-- Name: airflights_departure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.airflights_departure_id_seq', 10, true);


--
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 199
-- Name: airflights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.airflights_id_seq', 10, true);


--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 200
-- Name: airline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.airline_id_seq', 9, true);


--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 201
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 12, true);


--
-- TOC entry 2746 (class 2606 OID 33228)
-- Name: airflights airflights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airflights
    ADD CONSTRAINT airflights_pkey PRIMARY KEY (id);


--
-- TOC entry 2753 (class 2606 OID 33209)
-- Name: airline airline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airline
    ADD CONSTRAINT airline_pkey PRIMARY KEY (id);


--
-- TOC entry 2751 (class 2606 OID 33211)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 2747 (class 1259 OID 33166)
-- Name: fki_airline; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_airline ON public.airflights USING btree (airline_id);


--
-- TOC entry 2748 (class 1259 OID 33207)
-- Name: fki_arrival; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_arrival ON public.airflights USING btree (arrival_id);


--
-- TOC entry 2749 (class 1259 OID 33184)
-- Name: fki_departure_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_departure_id ON public.airflights USING btree (departure_id);


--
-- TOC entry 2754 (class 2606 OID 33212)
-- Name: airflights airline; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airflights
    ADD CONSTRAINT airline FOREIGN KEY (airline_id) REFERENCES public.airline(id);


--
-- TOC entry 2756 (class 2606 OID 33222)
-- Name: airflights arrival; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airflights
    ADD CONSTRAINT arrival FOREIGN KEY (arrival_id) REFERENCES public.cities(id);


--
-- TOC entry 2755 (class 2606 OID 33217)
-- Name: airflights departure; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.airflights
    ADD CONSTRAINT departure FOREIGN KEY (departure_id) REFERENCES public.cities(id);


-- Completed on 2019-04-16 16:09:18

--
-- PostgreSQL database dump complete
--

