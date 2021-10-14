--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: Classrooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Classrooms" (
    id integer NOT NULL,
    class_name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Classrooms" OWNER TO postgres;

--
-- Name: Classrooms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Classrooms_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Classrooms_id_seq" OWNER TO postgres;

--
-- Name: Classrooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Classrooms_id_seq" OWNED BY public."Classrooms".id;


--
-- Name: Courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Courses" (
    id integer NOT NULL,
    lecturer_id integer,
    course_name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Courses" OWNER TO postgres;

--
-- Name: Courses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Courses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Courses_id_seq" OWNER TO postgres;

--
-- Name: Courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Courses_id_seq" OWNED BY public."Courses".id;


--
-- Name: Lecturers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Lecturers" (
    id integer NOT NULL,
    lecturer_name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Lecturers" OWNER TO postgres;

--
-- Name: Lecturers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Lecturers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Lecturers_id_seq" OWNER TO postgres;

--
-- Name: Lecturers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Lecturers_id_seq" OWNED BY public."Lecturers".id;


--
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- Name: StudentCourses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StudentCourses" (
    id integer NOT NULL,
    student_id integer,
    course_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."StudentCourses" OWNER TO postgres;

--
-- Name: StudentCourses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."StudentCourses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StudentCourses_id_seq" OWNER TO postgres;

--
-- Name: StudentCourses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."StudentCourses_id_seq" OWNED BY public."StudentCourses".id;


--
-- Name: Students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Students" (
    id integer NOT NULL,
    classroom_id integer,
    student_name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Students" OWNER TO postgres;

--
-- Name: Students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Students_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Students_id_seq" OWNER TO postgres;

--
-- Name: Students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Students_id_seq" OWNED BY public."Students".id;


--
-- Name: Classrooms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Classrooms" ALTER COLUMN id SET DEFAULT nextval('public."Classrooms_id_seq"'::regclass);


--
-- Name: Courses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Courses" ALTER COLUMN id SET DEFAULT nextval('public."Courses_id_seq"'::regclass);


--
-- Name: Lecturers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lecturers" ALTER COLUMN id SET DEFAULT nextval('public."Lecturers_id_seq"'::regclass);


--
-- Name: StudentCourses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentCourses" ALTER COLUMN id SET DEFAULT nextval('public."StudentCourses_id_seq"'::regclass);


--
-- Name: Students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Students" ALTER COLUMN id SET DEFAULT nextval('public."Students_id_seq"'::regclass);


--
-- Data for Name: Classrooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Classrooms" (id, class_name, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Courses" (id, lecturer_id, course_name, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Lecturers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Lecturers" (id, lecturer_name, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SequelizeMeta" (name) FROM stdin;
20210926084731-create-classroom.js
20210926084739-create-student.js
20210926084744-create-lecturer.js
20210926084749-create-course.js
20210926084753-create-student-course.js
\.


--
-- Data for Name: StudentCourses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."StudentCourses" (id, student_id, course_id, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Students" (id, classroom_id, student_name, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: Classrooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Classrooms_id_seq"', 1, false);


--
-- Name: Courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Courses_id_seq"', 1, false);


--
-- Name: Lecturers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Lecturers_id_seq"', 1, false);


--
-- Name: StudentCourses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."StudentCourses_id_seq"', 1, false);


--
-- Name: Students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Students_id_seq"', 1, false);


--
-- Name: Classrooms Classrooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Classrooms"
    ADD CONSTRAINT "Classrooms_pkey" PRIMARY KEY (id);


--
-- Name: Courses Courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Courses"
    ADD CONSTRAINT "Courses_pkey" PRIMARY KEY (id);


--
-- Name: Lecturers Lecturers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lecturers"
    ADD CONSTRAINT "Lecturers_pkey" PRIMARY KEY (id);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: StudentCourses StudentCourses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StudentCourses"
    ADD CONSTRAINT "StudentCourses_pkey" PRIMARY KEY (id);


--
-- Name: Students Students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_pkey" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

