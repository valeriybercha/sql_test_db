--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7
-- Dumped by pg_dump version 11.2

-- Started on 2019-04-16 16:10:28

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
-- TOC entry 198 (class 1259 OID 33237)
-- Name: author; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.author (
    id integer NOT NULL,
    name character varying,
    surname character varying,
    citizenship character varying,
    birth character varying,
    death character varying
);


ALTER TABLE public.author OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 33240)
-- Name: author_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.author_id_seq OWNER TO postgres;

--
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 199
-- Name: author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.author_id_seq OWNED BY public.author.id;


--
-- TOC entry 196 (class 1259 OID 33231)
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book (
    id integer NOT NULL,
    name_id integer NOT NULL,
    surname_id integer NOT NULL,
    book_name character varying,
    genre character varying,
    pages integer,
    publishing_id integer NOT NULL,
    publishing_year character varying,
    library_date character varying
);


ALTER TABLE public.book OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 33258)
-- Name: book_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_id_seq OWNER TO postgres;

--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 201
-- Name: book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.book_id_seq OWNED BY public.book.id;


--
-- TOC entry 202 (class 1259 OID 33264)
-- Name: book_name_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.book_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_name_id_seq OWNER TO postgres;

--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 202
-- Name: book_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.book_name_id_seq OWNED BY public.book.name_id;


--
-- TOC entry 204 (class 1259 OID 33279)
-- Name: book_publishing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.book_publishing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_publishing_id_seq OWNER TO postgres;

--
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 204
-- Name: book_publishing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.book_publishing_id_seq OWNED BY public.book.publishing_id;


--
-- TOC entry 203 (class 1259 OID 33270)
-- Name: book_surname_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.book_surname_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_surname_id_seq OWNER TO postgres;

--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 203
-- Name: book_surname_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.book_surname_id_seq OWNED BY public.book.surname_id;


--
-- TOC entry 197 (class 1259 OID 33234)
-- Name: publishing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publishing (
    id integer NOT NULL,
    name character varying,
    adress character varying,
    contact_person character varying
);


ALTER TABLE public.publishing OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 33249)
-- Name: publishing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publishing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publishing_id_seq OWNER TO postgres;

--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 200
-- Name: publishing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publishing_id_seq OWNED BY public.publishing.id;


--
-- TOC entry 2744 (class 2604 OID 33242)
-- Name: author id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author ALTER COLUMN id SET DEFAULT nextval('public.author_id_seq'::regclass);


--
-- TOC entry 2739 (class 2604 OID 33260)
-- Name: book id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book ALTER COLUMN id SET DEFAULT nextval('public.book_id_seq'::regclass);


--
-- TOC entry 2740 (class 2604 OID 33266)
-- Name: book name_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book ALTER COLUMN name_id SET DEFAULT nextval('public.book_name_id_seq'::regclass);


--
-- TOC entry 2741 (class 2604 OID 33272)
-- Name: book surname_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book ALTER COLUMN surname_id SET DEFAULT nextval('public.book_surname_id_seq'::regclass);


--
-- TOC entry 2742 (class 2604 OID 33281)
-- Name: book publishing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book ALTER COLUMN publishing_id SET DEFAULT nextval('public.book_publishing_id_seq'::regclass);


--
-- TOC entry 2743 (class 2604 OID 33251)
-- Name: publishing id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publishing ALTER COLUMN id SET DEFAULT nextval('public.publishing_id_seq'::regclass);


--
-- TOC entry 2880 (class 0 OID 33237)
-- Dependencies: 198
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.author (id, name, surname, citizenship, birth, death) VALUES (1, 'Leo', 'Tolstoy', 'Russia', '09.09.1928', '20.10.1910');
INSERT INTO public.author (id, name, surname, citizenship, birth, death) VALUES (2, 'Gustave', 'Flaubert', 'France', '12.12.1821', '08.05.1880');
INSERT INTO public.author (id, name, surname, citizenship, birth, death) VALUES (3, 'F. Scott', 'Fitzgerald', 'USA', '24.09.1896', '21.12.1940');
INSERT INTO public.author (id, name, surname, citizenship, birth, death) VALUES (4, 'Vladimir', 'Nabokov', 'Russia', '22.04.1899', '02.07.1977');
INSERT INTO public.author (id, name, surname, citizenship, birth, death) VALUES (5, 'George', 'Eliot', 'Great Britain', '22.11.1819', '22.12.1880');
INSERT INTO public.author (id, name, surname, citizenship, birth, death) VALUES (6, 'Mark', 'Twain', 'USA', '30.11.1835', '21.04.1910');
INSERT INTO public.author (id, name, surname, citizenship, birth, death) VALUES (7, 'Anton', 'Chekhov', 'Russia', '29.01.1860', '15.07.1904');
INSERT INTO public.author (id, name, surname, citizenship, birth, death) VALUES (8, 'Marcel', 'Proust', 'France', '10.07.1871', '18.10.1922');
INSERT INTO public.author (id, name, surname, citizenship, birth, death) VALUES (9, 'William', 'Shakespeare', 'Great Britain', '23.04.1564', '23.04.1616');


--
-- TOC entry 2878 (class 0 OID 33231)
-- Dependencies: 196
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.book (id, name_id, surname_id, book_name, genre, pages, publishing_id, publishing_year, library_date) VALUES (1, 1, 1, 'Anna Karenina', 'Realism', 769, 1, '1959', '10.01.2002');
INSERT INTO public.book (id, name_id, surname_id, book_name, genre, pages, publishing_id, publishing_year, library_date) VALUES (2, 2, 2, 'Madame Bovary', 'Realism', 854, 2, '1972', '03.06.2004');
INSERT INTO public.book (id, name_id, surname_id, book_name, genre, pages, publishing_id, publishing_year, library_date) VALUES (3, 1, 1, 'War and Peace', 'Novel', 900, 3, '1934', '15.08.2005');
INSERT INTO public.book (id, name_id, surname_id, book_name, genre, pages, publishing_id, publishing_year, library_date) VALUES (4, 3, 3, 'The Great Gatsby', 'Novel', 656, 4, '1968', '13.09.2000');
INSERT INTO public.book (id, name_id, surname_id, book_name, genre, pages, publishing_id, publishing_year, library_date) VALUES (5, 4, 4, 'Lolita', 'Novel', 567, 5, '1955', '16.07.1999');
INSERT INTO public.book (id, name_id, surname_id, book_name, genre, pages, publishing_id, publishing_year, library_date) VALUES (6, 5, 5, 'Middlemarch', 'Novel', 654, 6, '1876', '22.01.1997');
INSERT INTO public.book (id, name_id, surname_id, book_name, genre, pages, publishing_id, publishing_year, library_date) VALUES (7, 6, 6, 'The Adventures of Huckleberry Finn', 'Picaresque', 675, 7, '1983', '27.09.2018');
INSERT INTO public.book (id, name_id, surname_id, book_name, genre, pages, publishing_id, publishing_year, library_date) VALUES (8, 7, 7, 'The Stories of Anton Chekhov', 'Realism', 824, 8, '1954', '17.05.2013');
INSERT INTO public.book (id, name_id, surname_id, book_name, genre, pages, publishing_id, publishing_year, library_date) VALUES (9, 8, 8, 'In search of lost time', 'Modernism', 644, 1, '1998', '20.02.2002');
INSERT INTO public.book (id, name_id, surname_id, book_name, genre, pages, publishing_id, publishing_year, library_date) VALUES (10, 9, 9, 'Hamlet', 'Tragedy', 745, 9, '1968', '04.05.2016');


--
-- TOC entry 2879 (class 0 OID 33234)
-- Dependencies: 197
-- Data for Name: publishing; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.publishing (id, name, adress, contact_person) VALUES (1, 'Hackette Book Group', 'Chicago, USA, Adress 145633', 'John Smith');
INSERT INTO public.publishing (id, name, adress, contact_person) VALUES (2, 'Harper Collins', 'New York, USA, Adress 2 145633', 'Ann Cogherty');
INSERT INTO public.publishing (id, name, adress, contact_person) VALUES (3, 'Penguin Random House', 'Washington, USA, Adress 3 15687', 'Michael Porter');
INSERT INTO public.publishing (id, name, adress, contact_person) VALUES (4, 'Simon and Shuster', 'Verona, Italy, Adress 45 57443', 'Simone Diegolo');
INSERT INTO public.publishing (id, name, adress, contact_person) VALUES (5, 'Macmillan Publishers', 'London, Great Britain, Adress 454 46432', 'Roger Drawn');
INSERT INTO public.publishing (id, name, adress, contact_person) VALUES (6, 'Pearson', 'New Jersey, USA, Adress 45 46377', 'John Diverso');
INSERT INTO public.publishing (id, name, adress, contact_person) VALUES (7, 'Reed Elsevier', 'Palo Alto, USA, Adress 56 24256', 'Rick Dryke');
INSERT INTO public.publishing (id, name, adress, contact_person) VALUES (8, 'Wolters Kluwer', 'Washington, USA, Adress 678 453667', 'Mchael Wolters');
INSERT INTO public.publishing (id, name, adress, contact_person) VALUES (9, 'Grupo Planeta', 'Terragona, Spain, Adress 63 57899', 'Alberto Figaro');


--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 199
-- Name: author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.author_id_seq', 9, true);


--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 201
-- Name: book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.book_id_seq', 10, true);


--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 202
-- Name: book_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.book_name_id_seq', 1, false);


--
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 204
-- Name: book_publishing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.book_publishing_id_seq', 1, false);


--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 203
-- Name: book_surname_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.book_surname_id_seq', 1, false);


--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 200
-- Name: publishing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.publishing_id_seq', 10, true);


--
-- TOC entry 2753 (class 2606 OID 33289)
-- Name: author author_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);


--
-- TOC entry 2746 (class 2606 OID 33291)
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);


--
-- TOC entry 2751 (class 2606 OID 33293)
-- Name: publishing publishing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publishing
    ADD CONSTRAINT publishing_pkey PRIMARY KEY (id);


--
-- TOC entry 2747 (class 1259 OID 33299)
-- Name: fki_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_name ON public.book USING btree (name_id);


--
-- TOC entry 2748 (class 1259 OID 33311)
-- Name: fki_publishing; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_publishing ON public.book USING btree (publishing_id);


--
-- TOC entry 2749 (class 1259 OID 33305)
-- Name: fki_surname; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_surname ON public.book USING btree (surname_id);


--
-- TOC entry 2754 (class 2606 OID 33294)
-- Name: book name; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT name FOREIGN KEY (name_id) REFERENCES public.author(id);


--
-- TOC entry 2756 (class 2606 OID 33306)
-- Name: book publishing; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT publishing FOREIGN KEY (publishing_id) REFERENCES public.publishing(id);


--
-- TOC entry 2755 (class 2606 OID 33300)
-- Name: book surname; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT surname FOREIGN KEY (surname_id) REFERENCES public.author(id);


-- Completed on 2019-04-16 16:10:29

--
-- PostgreSQL database dump complete
--

