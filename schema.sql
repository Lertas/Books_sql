--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: addresses_2010; Type: TABLE; Schema: public; Owner: giorgoslertas
--

CREATE TABLE public.addresses_2010 (
    user_id uuid NOT NULL,
    address character varying(200) NOT NULL
);


ALTER TABLE public.addresses_2010 OWNER TO giorgoslertas;

--
-- Name: author_2010; Type: TABLE; Schema: public; Owner: giorgoslertas
--

CREATE TABLE public.author_2010 (
    id integer NOT NULL,
    name character varying(200),
    nationality character varying(100),
    gender character varying(10) DEFAULT 'other'::character varying
);


ALTER TABLE public.author_2010 OWNER TO giorgoslertas;

--
-- Name: author_book_2010; Type: TABLE; Schema: public; Owner: giorgoslertas
--

CREATE TABLE public.author_book_2010 (
    book_id integer NOT NULL,
    author_id integer NOT NULL,
    role character varying(50) NOT NULL
);


ALTER TABLE public.author_book_2010 OWNER TO giorgoslertas;

--
-- Name: book_2010; Type: TABLE; Schema: public; Owner: giorgoslertas
--

CREATE TABLE public.book_2010 (
    id integer NOT NULL,
    isbn character varying(10),
    title character varying(300),
    publisher character varying(100),
    publ_year character varying(10),
    description text DEFAULT 'There is no description'::text,
    price numeric(10,2)
);


ALTER TABLE public.book_2010 OWNER TO giorgoslertas;

--
-- Name: order_books_2010; Type: TABLE; Schema: public; Owner: giorgoslertas
--

CREATE TABLE public.order_books_2010 (
    book_id integer NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.order_books_2010 OWNER TO giorgoslertas;

--
-- Name: order_books_2010_order_id_seq; Type: SEQUENCE; Schema: public; Owner: giorgoslertas
--

CREATE SEQUENCE public.order_books_2010_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_books_2010_order_id_seq OWNER TO giorgoslertas;

--
-- Name: order_books_2010_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: giorgoslertas
--

ALTER SEQUENCE public.order_books_2010_order_id_seq OWNED BY public.order_books_2010.order_id;


--
-- Name: orders_2010; Type: TABLE; Schema: public; Owner: giorgoslertas
--

CREATE TABLE public.orders_2010 (
    id integer NOT NULL,
    user_id uuid NOT NULL,
    user_addr character varying(200) NOT NULL,
    ordertime timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    comptime timestamp without time zone
);


ALTER TABLE public.orders_2010 OWNER TO giorgoslertas;

--
-- Name: orders_2010_id_seq; Type: SEQUENCE; Schema: public; Owner: giorgoslertas
--

CREATE SEQUENCE public.orders_2010_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_2010_id_seq OWNER TO giorgoslertas;

--
-- Name: orders_2010_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: giorgoslertas
--

ALTER SEQUENCE public.orders_2010_id_seq OWNED BY public.orders_2010.id;


--
-- Name: publisher_2010; Type: TABLE; Schema: public; Owner: giorgoslertas
--

CREATE TABLE public.publisher_2010 (
    name character varying(100) NOT NULL,
    address character varying(200),
    country character varying(100),
    pub_phone character varying(25)
);


ALTER TABLE public.publisher_2010 OWNER TO giorgoslertas;

--
-- Name: review_2010; Type: TABLE; Schema: public; Owner: giorgoslertas
--

CREATE TABLE public.review_2010 (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    nickname character varying(40),
    book_id integer,
    rating integer,
    comment text DEFAULT 'There is no comment'::text,
    date_added timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT review_2010_rating_check CHECK (((rating >= 0) AND (rating <= 5)))
);


ALTER TABLE public.review_2010 OWNER TO giorgoslertas;

--
-- Name: user_2010; Type: TABLE; Schema: public; Owner: giorgoslertas
--

CREATE TABLE public.user_2010 (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    name character varying(200),
    user_phone character varying(25)
);


ALTER TABLE public.user_2010 OWNER TO giorgoslertas;

--
-- Name: order_books_2010 order_id; Type: DEFAULT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.order_books_2010 ALTER COLUMN order_id SET DEFAULT nextval('public.order_books_2010_order_id_seq'::regclass);


--
-- Name: orders_2010 id; Type: DEFAULT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.orders_2010 ALTER COLUMN id SET DEFAULT nextval('public.orders_2010_id_seq'::regclass);


--
-- Name: addresses_2010 addresses_2010_pkey; Type: CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.addresses_2010
    ADD CONSTRAINT addresses_2010_pkey PRIMARY KEY (user_id, address);


--
-- Name: author_2010 author_2010_pkey; Type: CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.author_2010
    ADD CONSTRAINT author_2010_pkey PRIMARY KEY (id);


--
-- Name: author_book_2010 author_book_2010_pkey; Type: CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.author_book_2010
    ADD CONSTRAINT author_book_2010_pkey PRIMARY KEY (book_id, author_id, role);


--
-- Name: book_2010 book_2010_isbn_key; Type: CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.book_2010
    ADD CONSTRAINT book_2010_isbn_key UNIQUE (isbn);


--
-- Name: book_2010 book_2010_pkey; Type: CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.book_2010
    ADD CONSTRAINT book_2010_pkey PRIMARY KEY (id);


--
-- Name: order_books_2010 order_books_2010_pkey; Type: CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.order_books_2010
    ADD CONSTRAINT order_books_2010_pkey PRIMARY KEY (book_id, order_id);


--
-- Name: orders_2010 orders_2010_pkey; Type: CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.orders_2010
    ADD CONSTRAINT orders_2010_pkey PRIMARY KEY (id);


--
-- Name: publisher_2010 publisher_2010_pkey; Type: CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.publisher_2010
    ADD CONSTRAINT publisher_2010_pkey PRIMARY KEY (name);


--
-- Name: review_2010 review_2010_pkey; Type: CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.review_2010
    ADD CONSTRAINT review_2010_pkey PRIMARY KEY (id);


--
-- Name: user_2010 user_2010_email_key; Type: CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.user_2010
    ADD CONSTRAINT user_2010_email_key UNIQUE (email);


--
-- Name: user_2010 user_2010_pkey; Type: CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.user_2010
    ADD CONSTRAINT user_2010_pkey PRIMARY KEY (id);


--
-- Name: user_2010 user_2010_username_key; Type: CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.user_2010
    ADD CONSTRAINT user_2010_username_key UNIQUE (username);


--
-- Name: addresses_2010 addresses_2010_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.addresses_2010
    ADD CONSTRAINT addresses_2010_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_2010(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: author_book_2010 author_book_2010_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.author_book_2010
    ADD CONSTRAINT author_book_2010_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.author_2010(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: author_book_2010 author_book_2010_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.author_book_2010
    ADD CONSTRAINT author_book_2010_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book_2010(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: book_2010 book_2010_publisher_fkey; Type: FK CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.book_2010
    ADD CONSTRAINT book_2010_publisher_fkey FOREIGN KEY (publisher) REFERENCES public.publisher_2010(name) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: order_books_2010 order_books_2010_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.order_books_2010
    ADD CONSTRAINT order_books_2010_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book_2010(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_books_2010 order_books_2010_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.order_books_2010
    ADD CONSTRAINT order_books_2010_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders_2010(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: orders_2010 orders_2010_user_id_user_addr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.orders_2010
    ADD CONSTRAINT orders_2010_user_id_user_addr_fkey FOREIGN KEY (user_id, user_addr) REFERENCES public.addresses_2010(user_id, address) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: review_2010 review_2010_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: giorgoslertas
--

ALTER TABLE ONLY public.review_2010
    ADD CONSTRAINT review_2010_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book_2010(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

