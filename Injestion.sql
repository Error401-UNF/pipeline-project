--
-- PostgreSQL database dump
--

\restrict X3DaLxOq44jMPhDlJlCa9QCuHCaySslxKncazA2h5PRIA0OViPPH1GcZxfDNqLs

-- Dumped from database version 15.16
-- Dumped by pg_dump version 15.16

-- Started on 2026-03-06 02:18:47 EST

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
-- TOC entry 5 (class 2615 OID 2200)
-- Name: sources; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA sources;


ALTER SCHEMA sources OWNER TO pg_database_owner;

--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA sources; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA sources IS 'standard public schema';


--
-- TOC entry 6 (class 2615 OID 16389)
-- Name: staging; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA staging;


ALTER SCHEMA staging OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16441)
-- Name: employees; Type: TABLE; Schema: sources; Owner: postgres
--

CREATE TABLE sources.employees (
    employee_id text,
    name text,
    age text,
    department text,
    date_of_joining text,
    years_of_experience text,
    country text,
    salary text,
    performance_rating text,
    total_sales text,
    support_rating text
);


ALTER TABLE sources.employees OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16447)
-- Name: departments; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.departments (
    dept_id integer NOT NULL,
    dept_name text NOT NULL
);


ALTER TABLE staging.departments OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16446)
-- Name: departments_dept_id_seq; Type: SEQUENCE; Schema: staging; Owner: postgres
--

CREATE SEQUENCE staging.departments_dept_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE staging.departments_dept_id_seq OWNER TO postgres;

--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 216
-- Name: departments_dept_id_seq; Type: SEQUENCE OWNED BY; Schema: staging; Owner: postgres
--

ALTER SEQUENCE staging.departments_dept_id_seq OWNED BY staging.departments.dept_id;


--
-- TOC entry 218 (class 1259 OID 16457)
-- Name: employees; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.employees (
    employee_id integer NOT NULL,
    name text NOT NULL,
    age integer,
    dept_id integer,
    joining_date date,
    years_of_experience integer,
    country text,
    salary numeric(12,2),
    performance_rating integer
);


ALTER TABLE staging.employees OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16479)
-- Name: sales_data; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.sales_data (
    employee_id integer NOT NULL,
    total_sales numeric(15,2)
);


ALTER TABLE staging.sales_data OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16469)
-- Name: support_data; Type: TABLE; Schema: staging; Owner: postgres
--

CREATE TABLE staging.support_data (
    employee_id integer NOT NULL,
    support_rating integer
);


ALTER TABLE staging.support_data OWNER TO postgres;

--
-- TOC entry 3280 (class 2604 OID 16450)
-- Name: departments dept_id; Type: DEFAULT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.departments ALTER COLUMN dept_id SET DEFAULT nextval('staging.departments_dept_id_seq'::regclass);


--
-- TOC entry 3436 (class 0 OID 16441)
-- Dependencies: 215
-- Data for Name: employees; Type: TABLE DATA; Schema: sources; Owner: postgres
--

COPY sources.employees (employee_id, name, age, department, date_of_joining, years_of_experience, country, salary, performance_rating, total_sales, support_rating) FROM stdin;
1472	Stephen Cummings	36	Sales	2015-01-01	6	Kaldora	127621	3	87491	0
3617	Jessica Yoder	45	Marketing	01/01/2017	11	Aqualis	102035	5	0	0
5264	Eric Zimmerman	44	Support	2023-01-01	1	Xentara		5	0	5
4927	Scott Ellis	47	Development	2024-01-01	4	Arkalon	84189	2	0	0
9332	Kathryn Jones	45	Operations	2019-01-01	7	Lumeria	100865	5	0	0
3472	Chad Padilla	29	Development	2021-01-01	6	kALdOra	99903	4	0	0
9440	Brian Chavez	31	Markting	2020-01-01	9	Vantor	-94233	2	0	0
2786	Steven Jones	36	Operations	2020-01-01	4	Vantor	82867	2	0	0
6228	Alvin Hicks	32	Development	2014-01-01	9	Lumeria	101851	3	0	0
8183	Beverly Rush	40	Marketing	2012-01-01	3	Nirvon	84931	4	0	0
7556		41	Sales	2021-01-01	19	Nirvon	145502	4	97175	0
6237	Marisa Davis	31	Sales	2012-01-01	4	Kaldora	104709	2	50562	0
2747	Kenneth Wright	49	Marketing	2019-01-01	15	UtopIA	117173	5	0	0
5944	Ryan Hurley	31	Development	2020-01-01	2	Aqualis	96772	4	0	0
4510	Bernard Bennett	46	Development	2017/01/01	19	Zebronia	124922	2	0	0
7251	Terry Miller	60	Development	2021-01-01	19	Nirvon	127488	3	0	0
8779	Denise Singh	34	Development	2011/01/01	8	Vantor	99611	3	0	0
8696	Angela Scott DDS	40	Support	2013-01-01	16	Aqualis	108005	4	0	4
4873	Robert Baker	34	Sales	2021-01-01	9	Drogol	112407	2	65978	0
3414		56	Operations	2016-01-01	14	Arkalon	107100	3	0	0
3624	Pamela Moses	37	Marketing	2023-01-01	8	Aqualis	91684	3	0	0
9978	Tommy Ward	27	Development	2013-01-01	4	Lumeria	105106	5	0	0
6893	Keith Holden	54	Development	2025-01-01	11	Xentara	94900	2	0	0
6830	Robert Martin	57	Development	2013-01-01	13	utoPiA	127452	5	0	0
3355	Melissa Hamilton	44	Support	2018-01-01	13	Aqualis	87598	2	0	2
2135	Sarah Turner	36	Operations	01-01-2018	4	Vantor	95341	5	0	0
4330		44	Support	01-01-2012	7	Zebronia	78382	1	0	1
7177	Victoria Porter	52	Marketing	2010-01-01	20	Nirvon	110286	2	0	0
7415	Craig Sampson	35	Leadership	2018-01-01	9	Vantor	267436	2	0	0
7428	Michael Howard	29	Operations	01-01-2011	7	Zebronia	100348	5	0	0
4073	Sean Sampson	42	Leadership	2010-01-01	2	Nirvon	500000	3	0	0
1903	Clayton Singh	52	Support	2013-01-01	18	Vantor	92054	2	0	3
8110	Joshua Wilkins	37	Sales	2023-01-01	14	Nirvon	110795	3	65708	0
4524	Carl Arnold	33	Operations	2018-01-01	9	Aqualis	93019	2	0	0
3415	Jessica Williams	52	Operations	2010-01-01	14	Drogol	120142	5	0	0
7285	Crystal Baker	36	Development	2017-01-01	7	Arkalon	103335	4	0	0
9505	Keith Ellis	31	Support	2025-01-01	8	arkALon	82524	2	0	3
1701	Ashley Matthews	42	Sales	2016-01-01	19	Arkalon	109894	2	62719	0
1269	Carolyn Rodriguez	46	Development	2010-01-01	9	Lumeria	109444	5	0	0
2844	Susan Pearson	40	MKT	2026-01-01	7	Drogol	82313	4	0	0
8169	Jody Glenn	39	Support	01/01/2011	5	Nirvon	92524	2	0	3
5990	Angela Brown	56	Operations	2016-01-01	15	Arkalon	110575	3	0	0
1814	Amanda Glover	58	Development	2023-01-01	16	Xentara	112297	3	0	0
4449	Daniel House	44	Operations	2026-01-01	14	Drogol	95512	3	0	0
2926	Lindsay Griffith	42	Development	2023-01-01	6	Utopia	91936	2	0	0
9970	Austin Dougherty	52	Operations	2019-01-01	18	Zebronia	112442	2	0	0
8016	Catherine Fitzgerald	42	Support	2020-01-01	7	Utopia	76566	1	0	1
7062	Frank Chavez	52	Sales	01-01-2010	10	Drogol	160642	5	130913	0
9253	Danielle Duran	33	Operations	2024-01-01	5	AQuaLIS	95326	5	0	0
2583	James Scott	49	Development	2016-01-01	7	Utopia		3	0	0
6122	Eric Bass	28	Development	2026-01-01	2	Zebronia	78219	4	0	0
6675	Lisa Moore	46	Development	2019-01-01	13	Zebronia	109296	2	0	0
2314	Cheryl Hall	46	SALEs	2014-01-01	1	Zebronia	146839	4	115963	0
2224	Mark Ortiz	49	Support	2023-01-01	6	Utopia	90718	3	0	3
8120	Jorge Bowen	30	Development	2024-01-01	2	Drogol	86766	4	0	0
1732	Jordan Thompson	33	Operations	01-01-2025	11	Utopia	90499	3	0	0
9298	Walter Lloyd	49	Development	2022-01-01	4	utOPiA	95293	4	0	0
8440	Christine Willis	41	Operations	2023-01-01	15	Vantor	111960	4	0	0
4038	Cynthia Mitchell	45	Marketing	2022-01-01	15	Lumeria	101543	5	0	0
9656	Virginia Taylor	32	Sales	2023-01-01	7	Vantor	117956	2	75608	0
2687	Anthony Hines	62	Development	2024-01-01	19	Lumeria	129152	4	0	0
3756	Meagan Wilkins	55	Leadership	2012-01-01	15	Arkalon		3	0	0
6722	Erica Lopez	42	Development	2020-01-01	10	zEbrOnIA	119960	5	0	0
8745	Stephen Landry	54	Sales	2012-01-01	16	Kaldora	118371	3	68153	0
5581	Nicole Smith	44	Support	2011-01-01	6	Vantor	86753	2	0	2
9244	Jeanne Thomas	57	Sls	2010-01-01	20	Nirvon	114886	3	61356	0
3287	Michelle Long	29	Operations	01-01-2020	7	Kaldora	89497	2	0	0
6829	Brandon Boyd	-90	Development	2018-01-01	15	Vantor	115649	2	0	0
7164		43	Sales	2022-01-01	13	kaLDORa	107357	2	71090	0
6916	Kyle Guzman	55	Operations	2021-01-01	17	Drogol	112326	3	0	0
7214	Dr. Nancy Lopez	48	Support	2024-01-01	12	Kaldora	70679	1	0	1
5801	Brenda Davis	49	Support	2017-01-01	13	Utopia	107815	4	0	4
1091		46	Support	2017-01-01	11	aqualiS	97129	Medium	0	3
8549	Christopher Madden Jr.	40	Operations	2022-01-01	7	Zebronia	85974	Medium	0	0
7231	Brandy Webster	46	Support	2010-01-01	8	Drogol	88383	2	0	2
4307	Jennifer Graham	60	Marketing	2019-01-01	18	Aqualis	107216	2	0	0
6909	Jessica Jenkins	52	Operations	2025-01-01	14	Kaldora	104847	High Performer	0	0
1051	James Hebert	48	Development	2016-01-01	20	Zebronia	137158	5	0	0
6642	Scott Kim	59	Development	2024-01-01	18	Zebronia	131825	5	0	0
3710	Cristina Burke	36	Operations	2018-01-01	8	Nirvon	92044	2	0	0
3029	Kevin Scott DVM	54	Development	2011-01-01	11	Zebronia	113349	4	0	0
8914	Cheyenne Williams	47	Development	2016-01-01	13	Arkalon	127686	5	0	0
5029	Dustin Kaufman	52	Development	2018-01-01	14	Xentara	114753	3	0	0
4681	Christopher Hernandez	41	Support	01/01/2022	14	Nirvon	91990	4	0	3
5301	Mary Flores	38	Support	2014-01-01	2	Aqualis	107645	4	0	3
2499	Misty Williams	29	Sales	2017-01-01	5	Zebronia	135325	3	100261	0
2822	Miranda Gordon	57	Support	2010-01-01	17	Nirvon	82024	2	0	1
6671	Tammy Wood	42	Development	2012-01-01	16	Kaldora	119623	3	0	0
7544	Wesley Baxter	54	Sales	01-01-2021	19	Kaldora	87535	1	29328	0
4721	Alan Weaver	41	Support	2021-01-01	11	Kaldora	93355	2	0	3
3339	Dillon Fox	45	Leadership	2015-01-01	17	Zebronia	274840	5	0	0
2994	Cassandra Ingram	48	Development	2015-01-01	18	Lumeria	125298	3	0	0
3650	Whitney White	37	Development	2017-01-01	13	Arkalon	117707	4	0	0
6561	Barbara Vargas	28	Sales	2016-01-01	4	Utopia	-8890	3	113820	0
7997	Peter Green	57	Development	2012-01-01	17	Drogol	129075	5	0	0
6891	Stephanie Armstrong	54	Marketing	2014-01-01	13	Utopia	96771	2	0	0
4308	Denise Walker	58	Operations	2026-01-01	18	Kaldora	100032	2	0	0
5136	Sandra Castro	47	Support	2012-01-01	7	Arkalon	114619	5	0	5
4054	Andrea Leonard	29	Support	2026-01-01	1	Nirvon	79284	3	0	2
9288	Joseph Crosby	47	Operations	2021-01-01	16	Nirvon	107603	2	0	0
2800	Samantha Ellis	51	Support	2025-01-01	20	Lumeria	76609	2	0	2
5446	Katherine Lewis	37	Development	2015-01-01	6	Arkalon	94065	3	0	0
1059	Eric Duncan	58	Development	2012-01-01	14	Kaldora	115029	3	0	0
3235	Carla Rios	33	Development	2019-01-01	4	Vantor	96663	5	0	0
3769	Jeremy Ross	24	Operations	2019-01-01	2	Drogol	82264	3	0	0
8694	Mary Johnson	47	Development	2013/01/01	12	Aqualis	108095	2	0	0
6918	Leslie Martin	36	Development	2025-01-01	6	Drogol	85167	3	0	0
8387	Troy Gordon	37	Marketing	2019-01-01	12	Drogol	109448	4	0	0
2691	Elaine Benson	36	Support	2019-01-01	7	Utopia	102636	3	0	4
7132	Jacqueline Ford MD	50	Development	2010-01-01	12	aQuALis	110178	3	0	0
4527	Jimmy Hansen	29	Support	2012-01-01	6	Lumeria	82177	2	0	1
3647	Brandon Farley	26	Development	01-01-2023	4	Aqualis	80640	2	0	0
5911	James Cannon	56	Development	01/01/2016	18	Vantor	129648	4	0	0
8955		30	Development	2014-01-01	3	Vantor	85280	2	0	0
3774	Kaitlyn Wiggins	25	Support	2025-01-01	3	Zebronia	91613	3	0	4
6571	Travis Owen	39	Leadership	2019-01-01	15	Arkalon	500000	Medium	0	0
6430	Kimberly Shelton	43	Sales	2024-01-01	13	Arkalon	107779	2	74080	0
4996		56	Operations	2013/01/01	12	Xentara	102580	3	0	0
4342	Sarah Hart	45	Development	2018-01-01	3	Lumeria	85033	2	0	0
2175	Gregory Romero	33	Development	2018-01-01	9	Zebronia	99362	2	0	0
1226	Jeffrey Hart	39	Development	2022-01-01	12	Vantor	110341	3	0	0
7191	Michael Burton	49	Operations	2017-01-01	7	Aqualis	93394	3	0	0
3340	John Salazar	57	Support	2016-01-01	17	Lumeria		2	0	2
4385		31	Development	2013-01-01	6	Arkalon	100464	4	0	0
6087		29	Sales	2023-01-01	3	Kaldora	125066	2	89781	0
8213	John Harrison	45	Support	2017-01-01	8	Nirvon	96837	3	0	3
5060	Peter Lopez	45	Operations	01/01/2016	7	Utopia	99019	5	0	0
2829	Louis Jennings	42	Marketing	01-01-2013	12	Arkalon	103024	4	0	0
2930	Mark Frank	39	Development	01/01/2017	9	Kaldora	114361	4	0	0
4840	Joshua Espinoza DDS	27	Development	2010/01/01	2	Drogol	82169	2	0	0
3182	Charles Mcdonald	46	Marketing	2015-01-01	2	Drogol	79132	3	0	0
6471	Heather David	54	Development	2014-01-01	9	Utopia	-23856	4	0	0
1758	Dylan Owen	34	Marketing	2025-01-01	4	Nirvon	76521	Medium High	0	0
5902	Laura Hurley	34	Support	2018-01-01	8	Zebronia	85550	1	0	2
9642	Scott Archer	35	Leadership	2026-01-01	3	Xentara	258291	3	0	0
6370	Steven Campbell	31	Operations	01/01/2025	8	Utopia	84146	3	0	0
8458	Ashley Dixon	27	Marketing	2018-01-01	3	Zebronia	83110	3	0	0
6368	Lisa Mosley	54	Operations	2022-01-01	10	Utopia	100868	5	0	0
8349	Theresa Mcguire	51	Development	2018-01-01	8	Lumeria	107111	5	0	0
3634	Nicole Peterson	46	Support	2017-01-01	12	Utopia	102689	3	0	4
9013	Steven Hawkins	46	Support	01/01/2022	19	Aqualis	99047	4	0	4
4775	Mia Vargas	52	Leadership	2024-01-01	8	Kaldora	266751	5	0	0
1411	Selena Burton	46	Supprt	2020/01/01	14	niRvOn	119233	4	0	5
3601	Cody Forbes	49	Marketing	2010-01-01	20	aQuALIs	110002	2	0	0
3450	Christina Baker	48	Development	2011-01-01	3	Arkalon	102443	High Performer	0	0
7599	Joyce Williams	39	Development	2022-01-01	16	Drogol	116901	2	0	0
5378	Sandra Armstrong	46	Support	2021-01-01	9	DrOGol	111888	4	0	4
2575	Michael Hunt	51	Sales	01-01-2023	19	Xentara	130406	4	97435	0
5177	Tiffany Thornton	35	Support	01-01-2012	13	Utopia	92066	2	0	3
4889	David Lawson	43	Development	2017-01-01	6	Zebronia	101846	5	0	0
2159	Briana Powell	38	Operations	2015-01-01	10	Drogol	100595	3	0	0
4973	Nicholas Taylor	41	Development	2017-01-01	3	Xentara	88272	3	0	0
3912	Christopher Bell	33	Development	2025-01-01	7	Utopia	91509	4	0	0
5949	Darren Duncan	28	SUPP	01-01-2011	3	Xentara	77973	1	0	1
7709	Jennifer Green	54	Support	2019-01-01	16	Xentara	112860	4	0	5
7489	Robert Ellis	38	Development	2023-01-01	14	Drogol	112056	4	0	0
8635		52	Development	2016-01-01	17	Zebronia	120402	2	0	0
9009	Ian Moody	37	Sales	2015-01-01	3	Aqualis	99303	2	44516	0
7183	Thomas Ray	40	Marketing	2023-01-01	4	Nirvon	90835	5	0	0
4748	James Daniel	33	Operations	01-01-2025	8	Arkalon	87226	4	0	0
5207	Tonya Spencer	45	Marketing	01/01/2011	19	Drogol	107117	2	0	0
7366	Patrick Shaw	31	SALE	2018-01-01	7	Xentara	123383	3	75147	0
4622	Alexander Davis	47	Development	2012-01-01	14	VantOr	126972	4	0	0
3592	Jessica Pitts	51	Sales	2016-01-01	18	Kaldora	84295	1	21718	0
4542	David Simpson	41	SALEs	2023-01-01	1	Vantor	139920	4	112376	0
8420	Kendra Thompson	56	Operations	2025-01-01	12	Utopia	99408	5	0	0
9815	Mary Aguilar	64	Development	2024-01-01	19	Nirvon	123475	4	0	0
1205		48	Development	2010-01-01	4	Nirvon	94584	4	0	0
7198	Joseph Kerr	61	Development	2019-01-01	20	Nirvon	129810	3	0	0
9363	Jason Ochoa	38	Support	2023-01-01	14	kaldora	87070	2	0	3
4832	Shannon Hubbard	42	Marketing	2020-01-01	10	Aqualis	93150	2	0	0
8434	Vincent Cunningham	62	Sales	2013-01-01	18	Nirvon	154210	4	126998	0
8813	Angel Weber	45	Operations	01/01/2024	4	Arkalon	76524	3	0	0
9942	Natalie Robinson	49	Development	2022-01-01	10	Vantor	102299	2	0	0
3858	Douglas Davies	46	Operations	2023-01-01	8	Nirvon	101992	5	0	0
8469	Patricia Bright	57	Operations	2012-01-01	20	Drogol	115952	2	0	0
1885	Laurie Gutierrez	27	Sales	2012-01-01	1	Nirvon	138331	3	102434	0
2596	Jesse Green	34	Operations	2017-01-01	1	Xentara	77341	2	0	0
6502	Casey Alexander	36	Operations	2024-01-01	13	Zebronia	100375	2	0	0
6296	Mr. William Kane	32	Operations	2015-01-01	1	Kaldora	76739	2	0	0
2867	Brandon Fitzpatrick	27	Operations	2012-01-01	3	vaNtOr	84121	3	0	0
7837	Alejandra Becker	42	Development	01/01/2016	4	Vantor	87510	2	0	0
7718	John Bennett	29	Operations	2020-01-01	7	Arkalon	101640	4	0	0
6340	Stacey White	33	Support	2017-01-01	5	luMERia	82377	2	0	1
3204	Richard Lucas	47	Operations	2013-01-01	4	Aqualis	90427	4	0	0
5198	Frederick Daniels	45	Marketing	2023-01-01	20	Vantor	109787	2	0	0
3673	Gabriela Crawford	35	Support	2019-01-01	11	Kaldora	98392	3	0	3
3705	Audrey Allen	53	Operations	2024/01/01	11	Nirvon	102386	4	0	0
1349	April Manning	43	Support	2014-01-01	8	Lumeria	89555	3	0	2
5238	Donna Vasquez	49	Development	2012-01-01	10	ArkALOn	119742	5	0	0
3541	Johnny Harrington	49	Development	01/01/2016	11	Xentara	105467	2	0	0
2653	James Rocha	33	Development	01/01/2015	9	kALDora	99427	2	0	0
2239	Jacob Proctor	49	Marketing	2011-01-01	19	Drogol	111563	3	0	0
1655	Christina Day	42	Development	01/01/2024	18	Drogol	120047	4	0	0
2443	Andrew Valencia	52	Marketing	2021-01-01	14	Xentara	101807	3	0	0
4945	Charles Bean	43	Operations	2013/01/01	7	Aqualis	89072	2	0	0
8092	Howard Wilson	43	Operations	2012-01-01	16	Xentara	125096	5	0	0
2246	Christina Small	32	Operations	2012-01-01	9	Zebronia	97013	3	0	0
7001	Bridget Shea	33	Operations	2013-01-01	2	Vantor	82181	3	0	0
7342	Donna Bell	39	Support	01-01-2013	13	Utopia		1	0	2
7221	Sara Pollard	46	Sales	2019-01-01	11	Xentara	132526	3	94504	0
2429	Stephanie Schmitt	36	Operations	01-01-2012	11	Lumeria	104697	4	0	0
6601	Anne Peterson	43	Development	2015-01-01	12	Aqualis	109800	3	0	0
1766	Michael Smith	33	Operations	2026-01-01	3	Zebronia	73479	3	0	0
1692	Mark Johns	31	Development	2012-01-01	9	Vantor	117114	5	0	0
5123		43	Operations	2026-01-01	6	Utopia	74244	2	0	0
9083	Denise Cunningham DDS	42	Operations	01/01/2017	9	Xentara	97998	Medium	0	0
6574	Karen Alvarez	60	Operations	2018-01-01	18	Aqualis	111983	2	0	0
4295	Barbara Brooks	53	Sales	2011-01-01	16	Kaldora	158329	4	132746	0
9830	Justin Jimenez	56	Development	2020/01/01	16	Kaldora	127841	5	0	0
1228	Deborah Russell	43	Operations	2011-01-01	11	Aqualis	100715	3	0	0
9319	Amber Pierce	45	Support	01/01/2013	12	Xentara	88281	2	0	2
3036		47	Development	2018-01-01	10	Lumeria	-49092	4	0	0
4925		24	Development	2023-01-01	1	Zebronia	83475	3	0	0
1394	Sherri Moreno	45	Development	2022-01-01	15	Xentara	115754	Medium Low	0	0
3095	Carolyn Williams	50	Operations	2021-01-01	15	Nirvon	115773	5	0	0
2382	Melissa Goodman	34	Marketing	2023-01-01	4	ARkaLoN	88082	4	0	0
2229	Angela Moore	29	Sales	2023-01-01	4	Aqualis	151547	4	135492	0
9534	Ann Morris	46	Development	2026-01-01	13	Kaldora	105911	4	0	0
6932	Christopher Brady	51	Operations	01-01-2020	9	VaNtOR		4	0	0
6500	Jacob Garrison	33	Marketing	2015-01-01	10	NIrvOn	95732	3	0	0
8095	Michelle Wilkinson	25	Development	2014-01-01	1	Zebronia	80442	2	0	0
2260	Wendy Taylor	41	Development	2016-01-01	5	Vantor	90514	2	0	0
6643	Christopher Marshall	49	Development	2024-01-01	16	Drogol	111603	3	0	0
3374	Madison Moreno	57	Sales	2017-01-01	18	Kaldora	118278	3	69097	0
1521	Alyssa Fernandez	62	Development	2020-01-01	20	Zebronia	138178	5	0	0
4702	Paula Martinez	44	Development	2018-01-01	2	Zebronia	91978	5	0	0
5350	Melissa Johnson	45	Slaes	2020-01-01	19	Vantor	152714	4	111697	0
5031	Jeffrey Owens	35	Development	2014-01-01	3	Zebronia	99662	4	0	0
7216	Melissa Martinez	57	Support	2021-01-01	14	Kaldora	112613	Medium High	0	4
3307	Crystal Elliott	55	Supprt	01-01-2025	10	Drogol	101897	4	0	5
5347	Marcus Mendez	51	Sales	2026-01-01	19	aRKaLoN	127595	3	106953	0
3393	Collin Parks	53	Development	01/01/2018	15	Utopia	122813	4	0	0
1129		39	Development	2025-01-01	7	Aqualis	92710	4	0	0
6135	James Morgan	43	Development	2019-01-01	8	Drogol	98383	2	0	0
6408	Deborah Davis	53	Sales	2010-01-01	18	Aqualis	156659	4	118274	0
2240	Connor Terry	46	Support	2012-01-01	19	Kaldora	109691	5	0	4
1521	Katherine Delgado	51	Sales	2022-01-01	16	Zebronia	90201	1	45510	0
9872	Stephanie Taylor	41	Development	2016/01/01	8	Xentara	98391	2	0	0
9066	Kyle Orr	61	Support	2021-01-01	20	Zebronia	86945	2	0	2
3724	Juan Armstrong	60	Development	2019-01-01	20	Kaldora	126538	2	0	0
5235	Mrs. Ashley Brown	34	Sales	2025-01-01	10	Lumeria	-45930	3	83234	0
6232		41	Support	2015-01-01	13	Lumeria	112957	4	0	5
7535	Kevin Adams	32	Support	2017-01-01	5	XEntaRa	111912	4	0	5
5536	Briana Perry	54	Leadership	2022-01-01	20	Lumeria	500000	3	0	0
4838	Crystal Baxter	53	Support	2023-01-01	19	Utopia	112595	4	0	5
1846	Nancy Smith	48	Support	2021-01-01	9	Lumeria	117886	5	0	4
3726	Alicia Rangel	47	Development	2016-01-01	17	ArKaLoN	119965	2	0	0
8610	Jorge Perez	42	Marketing	2017-01-01	3	Aqualis	95538	5	0	0
6258		45	Operations	2018/01/01	4	Zebronia	98032	4	0	0
7856	John Robinson	52	Development	2023/01/01	20	Aqualis	130287	3	0	0
4372	Brandon Short	46	Marketing	2022-01-01	19	Arkalon	-38144	3	0	0
3775	Jennifer Murphy	49	Marketing	2013/01/01	4	Drogol	96822	5	0	0
5557	Jeremy Hurley	48	Operations	2016-01-01	20	Arkalon	115510	2	0	0
6815	Shane Peterson	48	Operations	2012-01-01	3	Lumeria	87348	4	0	0
4845	Susan Smith	42	MKT	01-01-2025	17	Drogol	104479	5	0	0
1348	Julie Williams	40	Operations	2019-01-01	3	Aqualis	82507	2	0	0
9589	Theresa Mcintyre	55	Operations	2016-01-01	20	Aqualis	119350	3	0	0
3115	Andrea Baldwin	52	Development	2022/01/01	10	XENtArA	108141	5	0	0
4646	James Martin	27	Development	2020-01-01	3	Lumeria	88059	3	0	0
2857	Katherine Chen	38	Sales	2021-01-01	7	arkALon	164254	5	138054	0
5889	Timothy Dougherty	58	Development	2013-01-01	18	Vantor	140479	5	0	0
9138	Tyler Thomas	30	Development	2022/01/01	6	Zebronia	91600	2	0	0
9473	Ricky Galvan	47	Support	2011/01/01	16	arKAlON	78096	1	0	1
4058	Sabrina Mills	46	Development	2024-01-01	13	Arkalon	107842	4	0	0
8478	Robert Cook	53	Development	2019-01-01	17	Nirvon	121946	3	0	0
4124	Jared Black	31	Sales	2016-01-01	8	Drogol	138360	4	96092	0
2980	Lisa Morales	45	Development	2023-01-01	17	Aqualis	119264	2	0	0
5112	Amy Farrell	52	Leadership	2013/01/01	19	ArKalON		4	0	0
2309	Peter Klein	44	Support	2018-01-01	2	Arkalon	85275	1	0	2
5716	Kevin Lopez	46	Sales	2023-01-01	15	VAntor	96931	1	57551	0
8998	Amanda Moore	30	Operations	2012-01-01	7	Vantor	89419	2	0	0
5649		25	Operations	2020-01-01	3	Xentara	95782	4	0	0
8411	Thomas Wagner	57	Development	2015-01-01	16	Zebronia	127188	5	0	0
2589	Laurie Lee	53	Operations	2018-01-01	19	Vantor	118055	3	0	0
3239	Erin Contreras	53	Development	2016-01-01	19	Zebronia	141805	5	0	0
6337	David Dyer	37	Leadership	2019-01-01	5	Utopia	500000	3	0	0
4028	Mark Powers	43	Operations	2012-01-01	5	Aqualis	91914	4	0	0
3522	Keith Hines	52	Development	2024-01-01	9	Xentara	103080	5	0	0
9643	Jessica Trujillo	48	Operations	2021-01-01	6	Xentara	104521	5	0	0
2476	Laurie Bailey	41	Marketing	2010-01-01	7	Kaldora	95789	5	0	0
5402	Karen Greer	31	Support	2015-01-01	4	Utopia	118119	5	0	4
3797	Albert Davies	44	Marketing	2021-01-01	16	Kaldora	117613	4	0	0
2528	Brooke Newman	41	Operations	2025-01-01	13	Kaldora	102515	5	0	0
9260	Sheila Mcintosh	35	Operations	2012-01-01	3	Nirvon	94149	4	0	0
8678	Mrs. Carla Anderson MD	49	Development	2016-01-01	16	Aqualis	119030	3	0	0
5028	Janice Gibson	39	Operations	2018-01-01	16	Xentara	114699	4	0	0
2878	Kimberly Perry	41	Sales	2024-01-01	18	Kaldora		1	32277	0
2226	Francisco Bryant	57	Marketing	2017-01-01	12	Nirvon	102534	4	0	0
7965		43	Development	2017-01-01	16	Utopia	118180	2	0	0
1446	Christian Parsons	59	Development	01/01/2017	20	Xentara	142677	4	0	0
7148	Charles Jones	24	Sales	2017-01-01	1	Xentara	116664	3	65357	0
4204	Robin Francis	39	Development	2019-01-01	2	Vantor	100565	5	0	0
1573		49	Sales	2015-01-01	16	Arkalon	87286	1	28457	0
7076	James Reed	41	Development	2024-01-01	10	Nirvon	100926	2	0	0
9373	Derrick Cochran	35	Development	2014-01-01	9	aQUaLIs	114557	4	0	0
8554	Heather Miller	34	Sales	01/01/2012	9	LuMerIA	144225	3	119450	0
9244	Benjamin Day	37	Marketingg	2015-01-01	5	Drogol	99608	5	0	0
5592	William Gonzales	31	Development	2014-01-01	4	Vantor	89321	3	0	0
2162	Amanda Hogan	46	Operations	2010-01-01	3	Arkalon	93113	5	0	0
3086	Michael Hawkins	47	Marketing	2013-01-01	9	Vantor	93465	3	0	0
7176	Jesse Olson	46	Operations	2011-01-01	10	Zebronia	100779	3	0	0
2410	Sarah Abbott	48	Sales	2021-01-01	8	Utopia	145447	3	118452	0
1837	Paul Cooper	40	Operations	2016-01-01	4	XENTARA	94991	5	0	0
1250	Victor Smith	49	Sales	2017-01-01	4	Vantor	93110	Medium Low	30945	0
1190		39	Sales	2014-01-01	4	Nirvon	155713	4	130321	0
4672	Mia Davis	45	Support	01/01/2015	9	Zebronia		Low Performer	0	1
7954	Lori Pacheco	57	Development	2015-01-01	16	ArkAlOn	131941	4	0	0
7423	Amanda Mathews	51	Marketing	2010-01-01	14	Utopia	103138	3	0	0
5789	Lauren Wise	54	Development	01-01-2014	15	Drogol	125175	5	0	0
9101	Michele Mcintosh	30	Support	2021/01/01	2	niRvon	-73292	3	0	4
4421	Eugene Martin	58	Support	2026-01-01	16	vANTOR	67389	1	0	1
7686	Nathaniel Johnson	61	Development	2016-01-01	18	AqUaLIS	125522	3	0	0
4596	Robert Cohen	42	Marketing	2010-01-01	2	Kaldora	84284	Medium High	0	0
5941	Debra Alvarado	51	Sales	2011/01/01	19	Zebronia	160932	5	127813	0
1784		57	Sales	2019-01-01	19	Xentara	118326	3	68779	0
4820	George Harrison	53	Sales	2025-01-01	20	Nirvon	-94605	5	138595	0
6712	Shannon Lambert	38	Operations	2024-01-01	11	Kaldora	95778	2	0	0
9943	James Johnson	59	Development	2011-01-01	18	Xentara	122617	2	0	0
6163	Timothy Kelly	42	Support	2023-01-01	19	Nirvon	99919	4	0	3
6289	Kevin Reyes	42	Marketing	01-01-2011	14	Utopia	114050	5	0	0
2835	Angela Humphrey	50	Marketing	2015-01-01	19	Drogol		5	0	0
6995	Donna Adams	-90	Marketing	2016-01-01	12	vANtoR	95387	2	0	0
1558	Melinda Sanchez	50	Operations	2022-01-01	18	Zebronia	115312	5	0	0
4703	Jason Miranda	56	Development	2019-01-01	19	Nirvon	140421	4	0	0
9691	Lydia Wong	56	Development	2021-01-01	19	Xentara	135410	5	0	0
9412	Jose Diaz	42	Sales	2023-01-01	12	Utopia	80648	1	25820	0
9089	Kristina Burton	42	Support	2019-01-01	20	Vantor	97527	3	0	3
5556	Joseph Cook	39	Operations	2021-01-01	9	aRkAlON	110473	5	0	0
8350	Amanda Mccoy	55	Sales	2025-01-01	14	Zebronia	88161	2	39531	0
9416	Joe Long	60	Support	2018-01-01	19	Nirvon	86791	2	0	2
5207	Kevin Clark	43	Support	01/01/2026	3	Kaldora	84106	3	0	3
7991	Daniel Richmond	26	Marketing	01-01-2011	3	Utopia	82818	3	0	0
3825	James Blackwell	40	Marketing	01/01/2024	3	Xentara	78051	2	0	0
5637	Ronald Mcclain	48	Development	2013/01/01	20	Zebronia	128361	2	0	0
6461	Krystal Lopez	46	Development	01/01/2013	7	Lumeria	109029	4	0	0
5979	Timothy Gomez	38	Operations	2017-01-01	5	Aqualis	99711	4	0	0
2634	Edwin Gallegos	54	Development	2020/01/01	9	Arkalon	106517	4	0	0
8089	Jennifer Rodriguez	54	Support	2013-01-01	12	Drogol	102939	Medium	0	4
3956	Scott Clark	54	Support	01/01/2023	20	Kaldora	113104	4	0	5
9509	Laura Hernandez	50	Marketing	2013-01-01	6	kaLDOra	84923	2	0	0
8888	Brian Martinez	58	Sales	01-01-2022	13	Kaldora	125544	2	85923	0
2705	Samuel Mitchell	31	Development	2013-01-01	2	Drogol	92120	5	0	0
3881	Edward Watson	49	Support	2022-01-01	5	Aqualis	83385	Medium Low	0	1
2966		30	Sales	2017-01-01	3	Aqualis	144893	4	98804	0
6903	Kathleen Brewer	48	Sales	2016-01-01	3	aRKALoN	120901	3	72319	0
8592	Nicole Everett	42	Marketing	2021-01-01	15	Nirvon	104463	3	0	0
4874	Rebecca Harrison	55	Support	2016/01/01	11	Kaldora	100023	4	0	3
3977	Diana Luna	39	Development	2017-01-01	8	Drogol	114566	5	0	0
7396	Allison Donovan	40	Support	2024-01-01	13	Xentara	70566	1	0	1
9200	Lance Lucero	50	Development	2024-01-01	11	vaNToR	95344	2	0	0
7288	Blake Li	43	Sales	2023-01-01	11	Kaldora	162944	5	134663	0
3736	Kimberly Miller	30	Development	2023-01-01	3	Xentara	90760	5	0	0
7280	Walter Elliott	41	Development	01/01/2010	1	Lumeria	97413	5	0	0
4921	Christine Newton	37	Support	2011/01/01	4	Arkalon	-1791	3	0	3
4937	Allen Henry	51	Marketing	2012-01-01	13	Nirvon	109937	4	0	0
2329	Autumn Skinner	48	Sales	2016-01-01	5	Lumeria	119742	3	72336	0
3029	Keith Smith	38	Support	2011-01-01	13	Kaldora	122762	High Performer	0	5
3584	David Mullen	59	Development	01-01-2025	14	Arkalon	102212	2	0	0
8100	Christopher Moyer	39	Support	01-01-2023	5	Aqualis	85693	Low Performer	0	2
9362	Brandy Lindsey	45	Marketing	2017-01-01	12	Xentara	-23051	5	0	0
4216	Kimberly Mendoza	47	Operations	2016-01-01	20	Zebronia	122234	4	0	0
8654	Ariana Frank	45	Marketing	2013-01-01	3	Zebronia	94683	5	0	0
8791	Robert Ramirez	39	Operations	2021-01-01	11	Zebronia	114154	5	0	0
6794	Daniel Kim	35	Development	2013-01-01	8	Utopia	99556	3	0	0
6763	Taylor Hartman	62	Support	2014-01-01	18	Xentara	93339	2	0	3
9510	Eric Gomez	35	Development	2012-01-01	10	Utopia	102216	Medium Low	0	0
2014	James Williams	35	Development	01/01/2012	3	Lumeria	103251	5	0	0
3686	Kelsey Byrd	32	Development	2017-01-01	1	Drogol	80254	2	0	0
4809	Mrs. Laura Russell	42	Support	2018-01-01	16	Nirvon	116537	5	0	4
4553	Brittney Robinson	39	Sales	2013-01-01	7	Drogol	147036	4	102729	0
4102	Jeffrey Hall	29	Development	2012-01-01	5	Nirvon	92457	3	0	0
8722	Mark Grant	30	Operations	2012-01-01	5	Nirvon	93496	4	0	0
8959	Charles Munoz	44	Operations	2023-01-01	10	Drogol	99161	5	0	0
3527	Lisa Ramirez	60	Sales	2017-01-01	19	Utopia	121885	2	85016	0
4766	Matthew Reynolds	51	Sales	2023-01-01	10	Nirvon	116976	2	88763	0
9431	Lisa Wright	48	Marketing	01/01/2013	7	Utopia	103337	5	0	0
3422	Mary Anderson	41	Operations	2012-01-01	2	Lumeria	79466	2	0	0
4833	Cassandra Johnson	40	Development	2010-01-01	17	Lumeria	119462	Medium Low	0	0
3068	Peggy Solomon	38	Sales	2021/01/01	7	Vantor	102703	1	55883	0
8898	Adam Adams	39	Development	2011-01-01	6	Nirvon	109839	High Performer	0	0
4162	Erin Alvarado	59	Marketing	2021-01-01	14	Lumeria	101830	3	0	0
6155	Allison Hernandez	52	Marketing	2013-01-01	20	ARKAloN	112808	3	0	0
4020	Troy Mercer	48	Sales	2021-01-01	8	Zebronia	139939	4	99256	0
5333	Danielle Garcia	53	Development	2011-01-01	8	NIrVON	112596	4	0	0
3609	Kaitlyn Riggs	23	Development	2012-01-01	1	Lumeria	79819	2	0	0
3645	Michael Smith	28	Operations	2020-01-01	4	Utopia	88472	3	0	0
2432	Cody Robinson	44	Sls	2020-01-01	5	Drogol	145268	Medium	115988	0
3038	Katherine Frost	56	Sales	2021-01-01	17	Kaldora	99235	2	43481	0
8121		33	Support	2017-01-01	6	Zebronia	-80017	5	0	5
8652	Vicki Browning	46	Operations	2026-01-01	1	Zebronia	72207	4	0	0
1428	Robin Velazquez	33	Operations	2018-01-01	1	Xentara	94151	High Performer	0	0
5230	Roger Golden	47	Operations	2020-01-01	15	Xentara	119866	4	0	0
5181	Kathy Jordan	40	Development	2018-01-01	12	Kaldora	106986	2	0	0
9269	Timothy Humphrey	49	Development	2025-01-01	6	Kaldora	84657	3	0	0
1269	Martin Lee III	55	Development	2021-01-01	14	Nirvon	-5653	4	0	0
3186	Peter Hill	36	Development	2010-01-01	9	Utopia	103357	3	0	0
8954	Charles Morris	38	Operations	2012-01-01	12	Kaldora	109602	High Performer	0	0
9180	David Baker	51	Marketing	2015/01/01	10	Drogol	104430	4	0	0
3674	Richard Fox	38	Operations	2013-01-01	16	Vantor	107996	2	0	0
2212	Steven King	45	SUPP	2022-01-01	20	Arkalon	115326	5	0	5
7623	Nicholas Williamson	45	Operations	01-01-2012	18	Zebronia	115039	3	0	0
7688	Michael Lewis	48	Operations	2020/01/01	19	Arkalon	128225	4	0	0
1876	Nicole Morgan	39	Sales	2012/01/01	15	Nirvon	114833	3	61040	0
1991	Craig Murphy	37	Development	2015-01-01	11	Lumeria	112023	4	0	0
3736	Monica Carpenter	51	Operations	2018-01-01	20	Nirvon	132104	High Performer	0	0
6469	Laura Bray	40	Marketing	2022-01-01	1	Vantor	73105	3	0	0
5284	Joe Carr	47	Development	2019-01-01	7	Drogol	113079	5	0	0
6975	Rebecca Russell	30	Marketing	2013-01-01	3	Drogol	79491	2	0	0
1187	Geoffrey Gomez	39	Operations	2016-01-01	9	Vantor	109722	5	0	0
5405	Maxwell Gonzalez	61	Development	2011-01-01	19	Drogol	142510	5	0	0
9848	Travis Byrd	48	Development	2025-01-01	10	Utopia	99081	4	0	0
8927	Wayne Griffin	37	Support	2020/01/01	15	Xentara	84162	Low Performer	0	2
5115	Sarah Stein	35	Operations	2026-01-01	8	nirVon	89396	5	0	0
5955	Jeffrey Guzman	35	Support	2023-01-01	3	Aqualis	91559	4	0	3
4383	William Price	50	Marketing	2012-01-01	12	Zebronia	102715	4	0	0
5637	Steven Carter	37	Support	2019-01-01	9	Lumeria	89128	3	0	2
2556	Eric Wagner	38	Development	2019-01-01	9	Xentara	107210	4	0	0
8500	Martin Sanchez	48	Development	01-01-2010	19	Xentara	133351	4	0	0
1578	Kyle Lara	25	Development	2016-01-01	1	Arkalon	80381	2	0	0
6254	Alison Wright	34	Development	01/01/2026	10	Vantor	102895	5	0	0
1278	Allison Herring	54	Development	2024-01-01	16	Nirvon	126623	5	0	0
7672	Gregory Cannon DVM	30	Operations	01/01/2017	2	Zebronia	96978	5	0	0
8099	Jason Miller	60	Operations	01/01/2021	16	Nirvon	107485	2	0	0
1525	Christopher Miller	35	Operations	01-01-2012	3	Aqualis	100498	5	0	0
3216	Stephen Johnson	58	Operations	2026-01-01	16	Aqualis	95284	2	0	0
2507	Scott Henderson	33	Development	2021/01/01	6	Vantor	107985	4	0	0
9381	Scott Harvey	55	Support	2020-01-01	20	Nirvon	113432	4	0	5
9857	Patrick Williams	39	Sales	2013-01-01	1	Aqualis	120592	2	77257	0
4050	Jeffery Ramos	35	Marketing	2013-01-01	3	uTopIA	95087	High Performer	0	0
9857	Maria Aguilar	38	Operations	2020-01-01	15	Drogol	104361	2	0	0
8400	Brandon Snyder	41	Sales	2026-01-01	8	zEbRONia	91845	2	49507	0
5675	Michael Obrien	25	Operations	2012-01-01	2	Aqualis	97867	5	0	0
8624	Matthew Williams	28	Operations	2015-01-01	5	Zebronia	101653	5	0	0
1763	Shirley Perez	53	Sales	2014-01-01	10	Zebronia		3	81155	0
7128	Mr. Joseph Mcclain	28	Operations	2015-01-01	2	KAldORA	79816	2	0	0
1630	Jasmine Davis	54	Operations	2024-01-01	17	Zebronia	115096	4	0	0
8133	Carlos Espinoza	58	Development	2018-01-01	18	Drogol	122942	2	0	0
1676	Kimberly Thornton	-90	Support	2010-01-01	9	Aqualis	106779	4	0	3
6528	David Moreno	26	Development	01/01/2010	1	Aqualis	80628	2	0	0
7286	Andrew Scott	48	Marketing	2016-01-01	16	Lumeria	117349	4	0	0
5106	Melissa Montes	34	Sales	2020-01-01	8	Drogol	158235	4	132499	0
5937	Lisa Wilkinson	37	Support	2025-01-01	5	Kaldora		1	0	2
4537	Shawn Marks	52	Development	01/01/2018	17	Utopia	-8655	5	0	0
9580	Alicia Molina	60	Development	2025-01-01	15	Drogol	113168	4	0	0
4188	James Martinez	53	Support	2019-01-01	8	Vantor	87111	2	0	2
4218	Amanda Chavez	36	Development	2023-01-01	9	aRkaLOn	94109	3	0	0
4366	Melanie Blankenship	64	Development	2023-01-01	19	Zebronia		3	0	0
7407	Wesley Stewart	36	Operations	2022-01-01	3	Arkalon	74527	2	0	0
5112	Jordan Wagner	50	Marketing	2024-01-01	19	Zebronia	115678	5	0	0
1662	Lisa Estrada	62	Development	2019-01-01	18	Lumeria	130282	4	0	0
2405	Denise Phillips	37	Support	2017-01-01	14	Lumeria	115791	5	0	5
9040	Jennifer Brown	37	Mktg	2021-01-01	2	Utopia	76666	2	0	0
6271	Eileen Williams	29	Support	2017/01/01	1	Nirvon	107301	4	0	3
6818	Ricky Williams	29	Sales	2013-01-01	6	Aqualis	127799	3	85563	0
1030	David Brennan	35	SALE	2026/01/01	12	Lumeria	95507	2	56215	0
2038	Logan Carter	54	Saless	2010-01-01	16	Nirvon	137759	3	105806	0
4554	Tamara Marshall	43	Operations	2019-01-01	16	Drogol	110773	3	0	0
6070	Christopher Waller	50	Development	2024-01-01	13	Utopia	108268	4	0	0
3995	Francisco Murphy	50	Sales	01-01-2015	14	Nirvon	162408	5	121272	0
7784	Jorge Rosario	36	Operations	2010-01-01	11	Lumeria	113296	4	0	0
4476	Jesse Armstrong	44	Development	2010-01-01	18	Drogol	124867	3	0	0
4312	Rachel Green	35	Sales	2026-01-01	8	Vantor	91714	2	50034	0
3396	Katie Hernandez	43	Operations	2016/01/01	15	Vantor	110360	3	0	0
4698	Jessica Thomas	48	Development	2023-01-01	19	Lumeria	127190	3	0	0
2013	Wendy Thompson	50	Development	2023-01-01	14	Kaldora	111718	4	0	0
2735	Mary Garza	51	Operations	01/01/2020	18	Utopia	112702	2	0	0
8184	Amanda Long	40	Marketing	01/01/2025	15	Utopia	92798	2	0	0
7227	Oscar Thomas	-90	Support	2010-01-01	15	Kaldora	82555	2	0	1
2612	Courtney Hammond	41	Marketing	2021-01-01	6	Zebronia	87963	3	0	0
3578	Charles Fleming	54	Development	2024-01-01	9	Kaldora	-95498	4	0	0
9847	Jason Smith	49	Marketing	2023/01/01	18	Arkalon	105651	4	0	0
4594	Michelle Collins	40	Development	2026-01-01	1	Aqualis	67691	2	0	0
4455	Daniel Jordan	51	Operations	2020-01-01	9	Kaldora	99088	4	0	0
2331	Tiffany Henderson	38	Sales	2012-01-01	3	Nirvon	82004	1	20300	0
1456	Laura Jackson	34	Sales	01/01/2025	8	Drogol	95249	2	50064	0
6202	Jennifer Miller	47	Sales	2014-01-01	5	Vantor	129158	3	92171	0
1329	Kayla Jones	57	Sales	2017-01-01	14	Lumeria	159990	Medium High	139253	0
8111	Michael Alexander	52	Development	2025-01-01	19	Utopia	125700	5	0	0
8772	Timothy Brown	40	Development	2019-01-01	11	Aqualis	107159	3	0	0
1506	Elizabeth Ruiz	45	Operations	2016-01-01	14	Aqualis	102719	2	0	0
7720	Michelle Sanchez	32	Development	2010/01/01	2	Utopia	90228	4	0	0
9293	Jennifer Bond	60	Development	2025-01-01	16	XeNTarA	115275	4	0	0
5336	Christina Doyle	55	Support	2023-01-01	18	Zebronia	91942	2	0	3
6885	Corey Jones	35	Marketing	01-01-2010	3	Nirvon	79181	2	0	0
9997	Sharon Shannon	46	Operations	2014-01-01	8	Zebronia	102670	5	0	0
5669	Donald Orr DVM	28	Marketing	2019-01-01	5	Lumeria	82767	2	0	0
4115		29	Development	2013-01-01	1	Drogol	95122	4	0	0
4877	Lisa Garcia	38	Marketing	2016-01-01	10	Zebronia	103292	5	0	0
5849	Shawn Bush	44	Operations	2023-01-01	10	Drogol	99548	5	0	0
3699	Christina Mckee	42	Development	2024-01-01	19	Drogol	127208	5	0	0
1286	Brandon Morton	42	Development	2018-01-01	19	Arkalon	139999	4	0	0
3099	Larry Johnson	35	Sales	2023-01-01	1	Vantor	124313	3	79421	0
4005	Cheryl Gay	40	Development	2010-01-01	10	Aqualis	104442	3	0	0
1282	Catherine Gilbert	41	Marketing	2021-01-01	17	Zebronia	106927	3	0	0
2127	Amber Odonnell PhD	54	Marketing	01/01/2020	15	Nirvon	117411	5	0	0
7925	Lisa Holt	39	Sales	01-01-2020	6	Arkalon	159774	4	123059	0
8533	John Hartman	41	Development	2014-01-01	18	Utopia	125442	3	0	0
4674		31	Support	2015-01-01	8	Kaldora	92213	2	0	3
9849	Glenda Martin	43	Support	2018-01-01	18	VAnTOr	89095	3	0	2
4874	Tina Nelson	41	Development	2011-01-01	5	Aqualis	93422	3	0	0
5999	Raymond Lang	40	Sales	2011/01/01	10	Zebronia	122058	2	81626	0
5155	Matthew Morris	46	Operations	01-01-2026	16	ZEbRONia	99482	3	0	0
6837	Melissa Steele	42	Operations	01/01/2025	14	Kaldora	96708	3	0	0
1581		45	Support	2023-01-01	15	Xentara	84719	1	0	2
4850	Mark Dougherty	46	Development	2026/01/01	3	XenTaRa	72219	2	0	0
3938	John Bradley	48	Support	2023/01/01	17	Aqualis	78458	1	0	2
9134	Janice Lopez	52	Development	01/01/2023	15	Nirvon	114633	2	0	0
7794	Matthew Long	26	Marketing	2012-01-01	4	Nirvon	85775	3	0	0
8352	Jessica Curtis	48	Sales	2012-01-01	7	Xentara	140642	3	109041	0
2188	Jared Parker	43	Marketing	2021-01-01	4	Drogol	82414	2	0	0
1054	James Brown	46	Operations	01-01-2012	5	Xentara		5	0	0
5865	Adam Morrison	46	Support	2022-01-01	19	Vantor	108351	4	0	4
2527	Kristina Freeman	41	Development	2019-01-01	3	Nirvon	85603	2	0	0
5387	Jennifer Davis	51	Development	2025-01-01	19	Arkalon	124147	5	0	0
2781	Mark Smith	62	Operations	2018-01-01	19	Xentara	126522	4	0	0
4904	Rachel Hanna	41	Sales	2021-01-01	13	Vantor	86846	1	29409	0
7144	Herbert Joseph	44	Support	2013/01/01	20	Zebronia	85437	1	0	2
3550	Michelle Coleman	55	Sales	2015-01-01	12	Lumeria	149438	4	117395	0
2768	Valerie Munoz	48	Sales	2013-01-01	8	Zebronia	102803	2	49526	0
5672	Bradley Johnson	43	Operations	2015-01-01	19	Kaldora	124723	5	0	0
5156	Kari Moss	-90	Marketing	2022-01-01	15	Xentara	109579	5	0	0
4401	Lisa Powers	53	Operations	01/01/2013	18	Kaldora	117896	4	0	0
4635	Colton Larson	51	Sales	2025-01-01	15	Zebronia	77887	1	26428	0
6048	Jon Simmons	60	Development	2013-01-01	18	Arkalon	137834	4	0	0
3214	Gerald Owens	56	Development	2017-01-01	20	Drogol	127832	2	0	0
8798	Amanda Morris	52	Supportt	2025-01-01	18	Zebronia	104221	5	0	5
1656	Tina Morris	34	Operations	2016-01-01	8	Lumeria	93240	2	0	0
6580	Erica Johnson	49	Operations	2019-01-01	19	Vantor	127578	4	0	0
5383	Keith Pratt	41	Development	01/01/2017	8	Drogol	114835	5	0	0
4672	Patricia King	37	Operations	01-01-2015	15	vAntor	113249	4	0	0
9091	Eric Johnson	40	Support	2018-01-01	5	Aqualis	78115	1	0	1
7599		37	Development	2010-01-01	1	Xentara	82309	3	0	0
9453	Thomas Perez	56	Development	2014-01-01	13	Xentara	110123	2	0	0
4145	Christopher Rodriguez	32	Operations	2025-01-01	2	UtOpIA	80035	5	0	0
3183	Jennifer Watson	30	Development	2012-01-01	8	Aqualis	100759	3	0	0
9493	Theodore Solomon	36	Marketing	2020-01-01	7	utoPIA	87806	2	0	0
3630	Brandon Jones	52	Operations	2015-01-01	11	Xentara	112102	4	0	0
8816	Tyler Hernandez	51	Development	2023-01-01	15	Kaldora	120016	5	0	0
7255	Debbie Alexander MD	59	SUPP	2025-01-01	18	Kaldora	88207	3	0	3
4513		47	Sales	2016-01-01	13	Vantor	123404	2	85487	0
5474	Mark Scott	48	Development	2010-01-01	11	Arkalon	122339	5	0	0
5588	Matthew Harding	48	Development	2024-01-01	16	zEBrOnIA	112823	3	0	0
4129	Mr. Joshua Perry	46	Support	2011-01-01	12	Xentara	89419	3	0	2
5587	Misty Chan	45	Operations	2018/01/01	6	Lumeria	87583	2	0	0
9175	Blake Lopez	42	Marketing	2024-01-01	5	Vantor	84273	5	0	0
5767	Glenn Carey	46	Development	2014-01-01	2	Xentara	96740	4	0	0
8734	Thomas Graham	50	Support	2026-01-01	14	Kaldora	105927	5	0	5
2383	Trevor Lyons	38	Sales	2012-01-01	12	Xentara	103446	2	49302	0
7696	Evan Walters	47	Operations	2025-01-01	8	Lumeria	92989	5	0	0
8157		32	Development	2010-01-01	4	Zebronia	104493	5	0	0
1761	Annette Peterson	35	Support	2015-01-01	4	Zebronia	107244	4	0	3
5511	Michael Lawson	38	Development	2018-01-01	12	Lumeria	118482	5	0	0
1828		40	Marketingg	01-01-2015	18	Aqualis	120197	4	0	0
7529	Jennifer Johnson	51	Development	2013-01-01	14	Aqualis	128467	4	0	0
6942	Russell Norman	34	Operations	2021-01-01	5	Aqualis	85979	2	0	0
4166	Jade Craig	34	Development	2010-01-01	1	Kaldora	90965	5	0	0
3659	James Turner	52	Support	2020-01-01	11	Zebronia	88256	2	0	2
4510	John Kelley	43	Marketing	2020-01-01	14	Drogol	102276	3	0	0
6141	Caroline Cruz	31	Operations	2011-01-01	7	Vantor	103434	4	0	0
2609	Christopher Lee	35	Development	2011-01-01	13	Nirvon	112573	3	0	0
8430	Maria Long	32	Support	2022/01/01	5	Lumeria	95301	3	0	4
5551	Sarah Miller	42	Sales	2025-01-01	15	Zebronia	87441	2	38672	0
1708	Michele Perry	46	Operations	2021-01-01	5	Lumeria	102970	5	0	0
8707	Stacey Andrews	40	Marketing	2014-01-01	6	Xentara	92799	4	0	0
9810	Rose Petersen	37	Operations	2015-01-01	8	Xentara	92759	2	0	0
2136	Tara Garcia	58	Development	2019/01/01	13	Kaldora	125536	4	0	0
2516	Mary Hayes	50	Support	2014-01-01	15	Drogol	110128	5	0	4
5261	Cindy Johnston	-90	Marketing	2014-01-01	7	Drogol	87676	2	0	0
3526	Kimberly Hall	46	Development	2018-01-01	14	Drogol	119275	4	0	0
1219	Kelly Brandt	53	Development	2019-01-01	9	Lumeria	102300	3	0	0
3047	Bethany Mosley	35	Development	2018/01/01	6	Nirvon	94361	3	0	0
3744	Katherine Patel	64	Development	2014-01-01	20	aRkAloN	-66880	3	0	0
6817	Mrs. Lisa Holder MD	40	Operations	2017-01-01	17	Nirvon	122876	4	0	0
3687	Traci Wells	39	Operations	2020-01-01	3	Drogol	100966	5	0	0
9487	Christy Rice	38	Sales	2022-01-01	16	Nirvon	128407	Medium	97715	0
9907	Erica Doyle MD	29	Development	2015-01-01	3	Zebronia	102660	High Performer	0	0
3371		29	Marketing	2024-01-01	2	Drogol	74398	4	0	0
1904	Debra Rodriguez	42	Operations	2015/01/01	10	Vantor	95027	2	0	0
7784	Eric Evans	34	Slaes	2023-01-01	2	Vantor	81758	1	29825	0
5950	Meghan Villegas	36	Support	2023-01-01	2	Drogol	70627	1	0	1
2606	Christopher Hoffman	-90	Marketing	2016-01-01	9	Xentara	90594	2	0	0
3567	April Trujillo	40	Marketing	2024-01-01	6	Xentara	90503	4	0	0
7829	Richard Morris	46	Development	2025-01-01	5	Aqualis	87558	4	0	0
7345	Misty Stone	51	Development	2012-01-01	7	Lumeria	104991	5	0	0
3676	Becky Ochoa	44	Suport	2022-01-01	10	Vantor	101569	3	0	4
6481	Kyle Sanchez	47	Sls	2017-01-01	15	Drogol	137438	4	94540	0
2739	Joseph Garcia	49	Support	2010-01-01	17	Arkalon	123019	5	0	5
1843	Ann King	37	Operations	2024-01-01	12	Drogol	104110	4	0	0
4268	Shannon Mcdowell	50	MKT	2025-01-01	15	Aqualis	95387	3	0	0
6079	Joseph Velasquez	52	Development	2011-01-01	18	Utopia	125656	3	0	0
5086	Catherine Melton	55	Support	2017-01-01	10	Zebronia	76988	1	0	1
5799	Ashley Roberts	33	Development	2017-01-01	3	Lumeria	102261	5	0	0
8018	Linda Martinez	42	Sales	2020-01-01	10	Aqualis	164328	5	139431	0
7595	Heather Hudson	28	Development	2021-01-01	5	Utopia	89864	2	0	0
7010	Erika Morrison	60	Support	2024-01-01	20	Arkalon	105623	4	0	5
7444	Michael Lopez	52	Sales	2017-01-01	16	Aqualis	144532	Medium High	95093	0
3884	Justin Brown	56	Support	2013-01-01	14	Vantor	88086	2	0	2
7402	Mark Koch	36	Support	2019-01-01	8	Arkalon	118297	High Performer	0	4
1595	Justin Frye	42	Sales	2012-01-01	8	Utopia	108201	2	54345	0
4675	Nicole Garcia	56	Development	2017-01-01	14	Kaldora	123136	5	0	0
8385	Daniel Lawrence	42	Support	2023-01-01	16	Lumeria	112275	4	0	5
1266	Jasmin Black	42	Marketing	2012-01-01	14	Vantor	114214	5	0	0
5728	Cynthia Smith	32	Support	2012-01-01	10	Lumeria	76736	1	0	1
8410	Derrick Savage	54	Development	2025-01-01	19	Nirvon	117917	3	0	0
5101	Donald Green	49	Operations	2021-01-01	17	Aqualis	117308	4	0	0
5319	Mitchell Nguyen	46	Support	2023/01/01	11	Zebronia	69317	1	0	1
1757	Roberto Griffin MD	28	Development	2017-01-01	4	Arkalon	88110	2	0	0
6535	Joseph Robertson	34	Sales	01-01-2015	11	Drogol	144957	3	119045	0
1546	Jessica Sutton	41	Marketing	2020-01-01	18	Vantor	123087	5	0	0
7977	Teresa Wright	44	Support	2011-01-01	14	Lumeria	107505	4	0	4
9819	Jessica Hogan	53	Sales	2024-01-01	16	Vantor	105735	2	54986	0
9761	Susan Collins	53	Support	2010-01-01	19	Lumeria	122229	5	0	5
7823	Susan Raymond	37	Support	2017-01-01	10	ArKALon	103243	3	0	4
4705	Steven Simmons	50	Development	2010-01-01	6	Zebronia	94037	3	0	0
8330	Lynn Best	41	Development	2025-01-01	17	Aqualis	109938	2	0	0
5140	Zachary White	38	Development	2015-01-01	8	Kaldora	99374	3	0	0
8271	Karen Irwin	45	Marketing	2022-01-01	4	lumERiA	86849	4	0	0
7917	Sarah Malone	43	Operations	2022-01-01	16	Utopia	118288	5	0	0
9027	Jessica Edwards	34	Operations	2016-01-01	3	Xentara	84833	3	0	0
6909	Alyssa Eaton	30	Development	2023-01-01	5	Arkalon	95675	5	0	0
1137	Cynthia Rose	52	Sales	2013/01/01	13	Arkalon	145536	3	116761	0
9229	Alexander Green	54	Support	2025-01-01	9	Vantor	98191	4	0	4
3446	Marvin Phelps	24	Development	2010-01-01	1	Kaldora	97307	High Performer	0	0
7882	Monica Orr	29	Development	2012-01-01	4	Zebronia	95105	4	0	0
6096	Jodi Donovan	52	Development	01-01-2021	7	Vantor	104729	5	0	0
7343	Dr. Rachel Stein DDS	35	Operations	01/01/2022	5	nirvOn	85922	4	0	0
1732	Nicole Wilson	43	Support	2017-01-01	16	Xentara	122600	5	0	5
5620		45	Operations	2024-01-01	8	Arkalon	91772	3	0	0
7694	Lynn Johnson	28	Sales	2010-01-01	1	Drogol	110983	2	61120	0
5272	Nancy Howard	49	Operations	2020-01-01	9	Aqualis	100333	4	0	0
6289	Eddie Hernandez	56	Sales	2021-01-01	15	Aqualis	120733	2	78920	0
6376	Taylor Ruiz	27	Support	2024/01/01	4	Vantor	100425	4	0	3
5680	Jasmine Fowler	31	Development	2020/01/01	8	Vantor	113299	4	0	0
8552	Tammy Randall	45	Development	2021-01-01	12	Aqualis	107608	2	0	0
5067	Matthew Fritz	52	Operations	01-01-2022	8	lUMeria		2	0	0
4966	Jerry Freeman	56	Development	2014-01-01	17	ARKAlOn		3	0	0
7679		38	Marketing	2024-01-01	12	Drogol	97029	5	0	0
4612	Samantha Castaneda	53	Support	2024-01-01	12	Lumeria	77739	1	0	1
7837	Kimberly Allen	45	Marketing	2026-01-01	9	Kaldora	80376	2	0	0
8377	Susan Fuller	37	Operations	2011-01-01	10	Utopia	105274	5	0	0
9904	Sabrina Vasquez	58	Development	01-01-2022	17	Arkalon	127965	Medium High	0	0
4867	Megan Palmer	34	Development	2019-01-01	12	Aqualis	114976	4	0	0
8397	Michelle Williams	27	Operations	2021-01-01	1	Aqualis	95472	5	0	0
8331	Gary Morris	48	Development	2016-01-01	4	Kaldora	89575	3	0	0
3255	Chelsea Jones MD	42	Development	2019-01-01	20	Xentara	135030	4	0	0
4776	Michelle Hunter	61	Development	2026-01-01	16	Aqualis	113374	4	0	0
9824	Kylie Hanson	45	Development	2026-01-01	9	Xentara	99110	5	0	0
5214	Tony Walter	53	Operations	2012-01-01	13	Drogol	112924	5	0	0
5656	Chelsea Rogers	53	Development	2022/01/01	10	Nirvon	102252	4	0	0
9106	William Gomez	47	Support	2022-01-01	12	Utopia	99847	4	0	4
6873	April Baldwin	41	Development	2015-01-01	7	Zebronia	103229	4	0	0
1526	Margaret Moore	51	Operations	2011-01-01	10	AqUalIS	102375	4	0	0
4035	Alejandra Alvarez	54	Development	2014-01-01	11	lUmeRIA	120996	4	0	0
8273	Russell Lynch	46	Marketing	2012-01-01	6	Nirvon	95198	5	0	0
2148	Rebecca Thomas	52	Marketing	2020-01-01	12	Nirvon	95903	2	0	0
8202	Matthew Burton	33	Development	2019-01-01	8	Kaldora	99764	3	0	0
9196	Andrew Branch	40	Sales	2015-01-01	16	Drogol	143106	4	104780	0
3043	Paula Archer	25	Operations	2017-01-01	2	Kaldora		4	0	0
2504	Breanna Arroyo	38	Development	2020/01/01	3	Xentara		3	0	0
6325		36	Development	2025-01-01	7	Lumeria	92024	4	0	0
3620	Kari Bond	40	Marketing	2011-01-01	3	Nirvon	79396	2	0	0
9014	Benjamin Weaver	31	Operations	01/01/2022	5	Arkalon	85727	4	0	0
7343	William Johnson	56	Support	01/01/2021	13	Nirvon	100902	4	0	3
3251	Aaron Juarez	39	Support	2024-01-01	5	Xentara	101802	5	0	4
8985	Jay Booker	50	Operations	2023/01/01	7	Zebronia	91727	Medium	0	0
4494	Juan Sanchez	30	Operations	2026-01-01	6	NIRVoN	79774	3	0	0
9583	Virginia Jenkins	50	Sales	2016-01-01	6	Zebronia	112830	2	66570	0
5908	Marvin Gray	38	Operations	2010-01-01	10	Kaldora	113031	High Performer	0	0
6341	Amy Johnson	49	Markting	2019-01-01	6	UtopIa	97565	4	0	0
6297	Christina Norris	49	Operations	2022-01-01	18	Utopia	104975	2	0	0
7379	Jennifer Powell	43	Development	2017-01-01	2	Kaldora	84037	3	0	0
2440	Thomas Romero	49	Marketing	01/01/2011	7	Aqualis	94844	5	0	0
8631	Kaylee Harris	59	Support	01/01/2020	16	Nirvon	120894	4	0	5
7730	David Jacobs	43	Marketing	2010-01-01	11	Drogol	94789	2	0	0
4378	Brittany Neal	43	Operations	2023-01-01	7	Vantor	91612	3	0	0
1501	Samantha Wilson	31	Operations	2019-01-01	6	Lumeria	90304	3	0	0
3191	David Johnson	42	Supportt	2011-01-01	19	Vantor	77771	1	0	1
3334	Heather Delgado	42	Sales	2022-01-01	4	Zebronia	112103	2	66182	0
5151	Adam Powers	33	Operations	2020-01-01	5	zebRONiA	102228	5	0	0
4629	Luis Johnson	31	Support	01-01-2018	2	Zebronia	88011	2	0	2
8050	Elizabeth Thomas	56	Sales	2018-01-01	18	Lumeria	115333	2	69545	0
2101	Thomas Saunders	60	Operations	2017-01-01	16	Nirvon	114219	4	0	0
8793	Luke Sanders	60	Support	2022-01-01	15	Arkalon	113303	4	0	5
6215	Tony Bowman	59	Development	01-01-2012	16	Arkalon	132566	4	0	0
8670	Elizabeth Lewis	51	Development	2019-01-01	6	aQUaLiS	93472	2	0	0
1257	Wendy Baker	39	SALE	2022/01/01	13	Zebronia	165076	5	138143	0
3305	Kyle Lawson	40	Sales	2023/01/01	5	Kaldora	105310	2	53214	0
3932	Cassandra Harrell	54	Operations	2017-01-01	14	Arkalon		Medium Low	0	0
5531	Eric Johnson	50	Sales	2011-01-01	17	Lumeria	135761	3	99961	0
9572	Samuel Krueger	50	Marketing	2012-01-01	17	Xentara	107700	3	0	0
5248	Kimberly Davis	52	Development	01/01/2015	18	Zebronia	133315	5	0	0
4024	Judith Sanchez	54	Development	2018-01-01	18	Nirvon	130120	4	0	0
1809	Chase Sims	32	Development	2026-01-01	8	Zebronia	90723	3	0	0
1599	Lance Hernandez	62	Development	2025-01-01	18	Utopia	120049	4	0	0
9898	Michelle Byrd	42	Marketing	2022-01-01	10	Nirvon		4	0	0
8284	Nicole Hardy	38	Operations	2023/01/01	13	Lumeria	107493	4	0	0
8155	Andrew Carlson	56	Operations	01-01-2013	19	Vantor	118420	3	0	0
9559	Amanda Alvarado	34	Operations	2018-01-01	8	Vantor	94356	3	0	0
1947	Sarah Matthews	42	Development	2019-01-01	19	Lumeria	125473	2	0	0
2609	Christopher Lee	35	Development	2011-01-01	13	Nirvon	112573	3	0	0
9580	Alicia Molina	60	Development	2025-01-01	15	Drogol	113168	4	0	0
6430	Kimberly Shelton	43	Sales	2024-01-01	13	Arkalon	107779	2	74080	0
2229	Angela Moore	29	Sales	2023-01-01	4	Aqualis	151547	4	135492	0
1446	Christian Parsons	59	Development	01/01/2017	20	Xentara	142677	4	0	0
5656	Chelsea Rogers	53	Development	2022/01/01	10	Nirvon	102252	4	0	0
8157		32	Development	2010-01-01	4	Zebronia	104493	5	0	0
4629	Luis Johnson	31	Support	01-01-2018	2	Zebronia	88011	2	0	2
7599		37	Development	2010-01-01	1	Xentara	82309	3	0	0
2527	Kristina Freeman	41	Development	2019-01-01	3	Nirvon	85603	2	0	0
4102	Jeffrey Hall	29	Development	2012-01-01	5	Nirvon	92457	3	0	0
4449	Daniel House	44	Operations	2026-01-01	14	Drogol	95512	3	0	0
6642	Scott Kim	59	Development	2024-01-01	18	Zebronia	131825	5	0	0
8696	Angela Scott DDS	40	Support	2013-01-01	16	Aqualis	108005	4	0	4
4527	Jimmy Hansen	29	Support	2012-01-01	6	Lumeria	82177	2	0	1
9815	Mary Aguilar	64	Development	2024-01-01	19	Nirvon	123475	4	0	0
6794	Daniel Kim	35	Development	2013-01-01	8	Utopia	99556	3	0	0
7829	Richard Morris	46	Development	2025-01-01	5	Aqualis	87558	4	0	0
4646	James Martin	27	Development	2020-01-01	3	Lumeria	88059	3	0	0
9332	Kathryn Jones	45	Operations	2019-01-01	7	Lumeria	100865	5	0	0
3634	Nicole Peterson	46	Support	2017-01-01	12	Utopia	102689	3	0	4
4867	Megan Palmer	34	Development	2019-01-01	12	Aqualis	114976	4	0	0
5789	Lauren Wise	54	Development	01-01-2014	15	Drogol	125175	5	0	0
2239	Jacob Proctor	49	Marketing	2011-01-01	19	Drogol	111563	3	0	0
9642	Scott Archer	35	Leadership	2026-01-01	3	Xentara	258291	3	0	0
4675	Nicole Garcia	56	Development	2017-01-01	14	Kaldora	123136	5	0	0
1573		49	Sales	2015-01-01	16	Arkalon	87286	1	28457	0
6254	Alison Wright	34	Development	01/01/2026	10	Vantor	102895	5	0	0
8430	Maria Long	32	Support	2022/01/01	5	Lumeria	95301	3	0	4
7221	Sara Pollard	46	Sales	2019-01-01	11	Xentara	132526	3	94504	0
9473	Ricky Galvan	47	Support	2011/01/01	16	arKAlON	78096	1	0	1
9849	Glenda Martin	43	Support	2018-01-01	18	VAnTOr	89095	3	0	2
9244	Jeanne Thomas	57	Sls	2010-01-01	20	Nirvon	114886	3	61356	0
6096	Jodi Donovan	52	Development	01-01-2021	7	Vantor	104729	5	0	0
8331	Gary Morris	48	Development	2016-01-01	4	Kaldora	89575	3	0	0
\.


--
-- TOC entry 3438 (class 0 OID 16447)
-- Dependencies: 217
-- Data for Name: departments; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging.departments (dept_id, dept_name) FROM stdin;
0	Sales
1	Marketing
2	Support
3	Development
4	Operations
5	Leadership
\.


--
-- TOC entry 3439 (class 0 OID 16457)
-- Dependencies: 218
-- Data for Name: employees; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging.employees (employee_id, name, age, dept_id, joining_date, years_of_experience, country, salary, performance_rating) FROM stdin;
1472	Stephen Cummings	36	0	2015-01-01	6	Kaldora	127621.00	3
3617	Jessica Yoder	45	1	2017-01-01	11	Aqualis	102035.00	5
5264	Eric Zimmerman	44	2	2023-01-01	1	Xentara	100000.00	5
4927	Scott Ellis	47	3	2024-01-01	4	Arkalon	84189.00	2
9332	Kathryn Jones	45	4	2019-01-01	7	Lumeria	100865.00	5
3472	Chad Padilla	29	3	2021-01-01	6	Kaldora	99903.00	4
9440	Brian Chavez	31	1	2020-01-01	9	Vantor	100000.00	2
2786	Steven Jones	36	4	2020-01-01	4	Vantor	82867.00	2
6228	Alvin Hicks	32	3	2014-01-01	9	Lumeria	101851.00	3
8183	Beverly Rush	40	1	2012-01-01	3	Nirvon	84931.00	4
7556	Jane Doe	41	0	2021-01-01	19	Nirvon	145502.00	4
6237	Marisa Davis	31	0	2012-01-01	4	Kaldora	104709.00	2
2747	Kenneth Wright	49	1	2019-01-01	15	Utopia	117173.00	5
5944	Ryan Hurley	31	3	2020-01-01	2	Aqualis	96772.00	4
4510	Bernard Bennett	46	3	2017-01-01	19	Zebronia	124922.00	2
7251	Terry Miller	60	3	2021-01-01	19	Nirvon	127488.00	3
8779	Denise Singh	34	3	2011-01-01	8	Vantor	99611.00	3
8696	Angela Scott Dds	40	2	2013-01-01	16	Aqualis	108005.00	4
4873	Robert Baker	34	0	2021-01-01	9	Drogol	112407.00	2
3414	Jane Doe	56	4	2016-01-01	14	Arkalon	107100.00	3
3624	Pamela Moses	37	1	2023-01-01	8	Aqualis	91684.00	3
9978	Tommy Ward	27	3	2013-01-01	4	Lumeria	105106.00	5
6893	Keith Holden	54	3	2025-01-01	11	Xentara	94900.00	2
6830	Robert Martin	57	3	2013-01-01	13	Utopia	127452.00	5
3355	Melissa Hamilton	44	2	2018-01-01	13	Aqualis	87598.00	2
2135	Sarah Turner	36	4	2018-01-01	4	Vantor	95341.00	5
4330	Jane Doe	44	2	2012-01-01	7	Zebronia	78382.00	1
7177	Victoria Porter	52	1	2010-01-01	20	Nirvon	110286.00	2
7415	Craig Sampson	35	5	2018-01-01	9	Vantor	267436.00	2
7428	Michael Howard	29	4	2011-01-01	7	Zebronia	100348.00	5
4073	Sean Sampson	42	5	2010-01-01	2	Nirvon	500000.00	3
1903	Clayton Singh	52	2	2013-01-01	18	Vantor	92054.00	2
8110	Joshua Wilkins	37	0	2023-01-01	14	Nirvon	110795.00	3
4524	Carl Arnold	33	4	2018-01-01	9	Aqualis	93019.00	2
3415	Jessica Williams	52	4	2010-01-01	14	Drogol	120142.00	5
7285	Crystal Baker	36	3	2017-01-01	7	Arkalon	103335.00	4
9505	Keith Ellis	31	2	2025-01-01	8	Arkalon	82524.00	2
1701	Ashley Matthews	42	0	2016-01-01	19	Arkalon	109894.00	2
1269	Carolyn Rodriguez	46	3	2010-01-01	9	Lumeria	109444.00	5
2844	Susan Pearson	40	1	2026-01-01	7	Drogol	82313.00	4
8169	Jody Glenn	39	2	2011-01-01	5	Nirvon	92524.00	2
5990	Angela Brown	56	4	2016-01-01	15	Arkalon	110575.00	3
1814	Amanda Glover	58	3	2023-01-01	16	Xentara	112297.00	3
4449	Daniel House	44	4	2026-01-01	14	Drogol	95512.00	3
2926	Lindsay Griffith	42	3	2023-01-01	6	Utopia	91936.00	2
9970	Austin Dougherty	52	4	2019-01-01	18	Zebronia	112442.00	2
8016	Catherine Fitzgerald	42	2	2020-01-01	7	Utopia	76566.00	1
7062	Frank Chavez	52	0	2010-01-01	10	Drogol	160642.00	5
9253	Danielle Duran	33	4	2024-01-01	5	Aqualis	95326.00	5
2583	James Scott	49	3	2016-01-01	7	Utopia	100000.00	3
6122	Eric Bass	28	3	2026-01-01	2	Zebronia	78219.00	4
6675	Lisa Moore	46	3	2019-01-01	13	Zebronia	109296.00	2
2314	Cheryl Hall	46	0	2014-01-01	1	Zebronia	146839.00	4
2224	Mark Ortiz	49	2	2023-01-01	6	Utopia	90718.00	3
8120	Jorge Bowen	30	3	2024-01-01	2	Drogol	86766.00	4
1732	Jordan Thompson	33	4	2025-01-01	11	Utopia	90499.00	3
9298	Walter Lloyd	49	3	2022-01-01	4	Utopia	95293.00	4
8440	Christine Willis	41	4	2023-01-01	15	Vantor	111960.00	4
4038	Cynthia Mitchell	45	1	2022-01-01	15	Lumeria	101543.00	5
9656	Virginia Taylor	32	0	2023-01-01	7	Vantor	117956.00	2
2687	Anthony Hines	62	3	2024-01-01	19	Lumeria	129152.00	4
3756	Meagan Wilkins	55	5	2012-01-01	15	Arkalon	100000.00	3
6722	Erica Lopez	42	3	2020-01-01	10	Zebronia	119960.00	5
8745	Stephen Landry	54	0	2012-01-01	16	Kaldora	118371.00	3
5581	Nicole Smith	44	2	2011-01-01	6	Vantor	86753.00	2
9244	Jeanne Thomas	57	0	2010-01-01	20	Nirvon	114886.00	3
3287	Michelle Long	29	4	2020-01-01	7	Kaldora	89497.00	2
6829	Brandon Boyd	0	3	2018-01-01	15	Vantor	115649.00	2
7164	Jane Doe	43	0	2022-01-01	13	Kaldora	107357.00	2
6916	Kyle Guzman	55	4	2021-01-01	17	Drogol	112326.00	3
7214	Dr. Nancy Lopez	48	2	2024-01-01	12	Kaldora	70679.00	1
5801	Brenda Davis	49	2	2017-01-01	13	Utopia	107815.00	4
1091	Jane Doe	46	2	2017-01-01	11	Aqualis	97129.00	3
8549	Christopher Madden Jr.	40	4	2022-01-01	7	Zebronia	85974.00	3
7231	Brandy Webster	46	2	2010-01-01	8	Drogol	88383.00	2
4307	Jennifer Graham	60	1	2019-01-01	18	Aqualis	107216.00	2
6909	Jessica Jenkins	52	4	2025-01-01	14	Kaldora	104847.00	5
1051	James Hebert	48	3	2016-01-01	20	Zebronia	137158.00	5
6642	Scott Kim	59	3	2024-01-01	18	Zebronia	131825.00	5
3710	Cristina Burke	36	4	2018-01-01	8	Nirvon	92044.00	2
3029	Kevin Scott Dvm	54	3	2011-01-01	11	Zebronia	113349.00	4
8914	Cheyenne Williams	47	3	2016-01-01	13	Arkalon	127686.00	5
5029	Dustin Kaufman	52	3	2018-01-01	14	Xentara	114753.00	3
4681	Christopher Hernandez	41	2	2022-01-01	14	Nirvon	91990.00	4
5301	Mary Flores	38	2	2014-01-01	2	Aqualis	107645.00	4
2499	Misty Williams	29	0	2017-01-01	5	Zebronia	135325.00	3
2822	Miranda Gordon	57	2	2010-01-01	17	Nirvon	82024.00	2
6671	Tammy Wood	42	3	2012-01-01	16	Kaldora	119623.00	3
7544	Wesley Baxter	54	0	2021-01-01	19	Kaldora	87535.00	1
4721	Alan Weaver	41	2	2021-01-01	11	Kaldora	93355.00	2
3339	Dillon Fox	45	5	2015-01-01	17	Zebronia	274840.00	5
2994	Cassandra Ingram	48	3	2015-01-01	18	Lumeria	125298.00	3
3650	Whitney White	37	3	2017-01-01	13	Arkalon	117707.00	4
6561	Barbara Vargas	28	0	2016-01-01	4	Utopia	100000.00	3
7997	Peter Green	57	3	2012-01-01	17	Drogol	129075.00	5
6891	Stephanie Armstrong	54	1	2014-01-01	13	Utopia	96771.00	2
4308	Denise Walker	58	4	2026-01-01	18	Kaldora	100032.00	2
5136	Sandra Castro	47	2	2012-01-01	7	Arkalon	114619.00	5
4054	Andrea Leonard	29	2	2026-01-01	1	Nirvon	79284.00	3
9288	Joseph Crosby	47	4	2021-01-01	16	Nirvon	107603.00	2
2800	Samantha Ellis	51	2	2025-01-01	20	Lumeria	76609.00	2
5446	Katherine Lewis	37	3	2015-01-01	6	Arkalon	94065.00	3
1059	Eric Duncan	58	3	2012-01-01	14	Kaldora	115029.00	3
3235	Carla Rios	33	3	2019-01-01	4	Vantor	96663.00	5
3769	Jeremy Ross	24	4	2019-01-01	2	Drogol	82264.00	3
8694	Mary Johnson	47	3	2013-01-01	12	Aqualis	108095.00	2
6918	Leslie Martin	36	3	2025-01-01	6	Drogol	85167.00	3
8387	Troy Gordon	37	1	2019-01-01	12	Drogol	109448.00	4
2691	Elaine Benson	36	2	2019-01-01	7	Utopia	102636.00	3
7132	Jacqueline Ford Md	50	3	2010-01-01	12	Aqualis	110178.00	3
4527	Jimmy Hansen	29	2	2012-01-01	6	Lumeria	82177.00	2
3647	Brandon Farley	26	3	2023-01-01	4	Aqualis	80640.00	2
5911	James Cannon	56	3	2016-01-01	18	Vantor	129648.00	4
8955	Jane Doe	30	3	2014-01-01	3	Vantor	85280.00	2
3774	Kaitlyn Wiggins	25	2	2025-01-01	3	Zebronia	91613.00	3
6571	Travis Owen	39	5	2019-01-01	15	Arkalon	500000.00	3
6430	Kimberly Shelton	43	0	2024-01-01	13	Arkalon	107779.00	2
4996	Jane Doe	56	4	2013-01-01	12	Xentara	102580.00	3
4342	Sarah Hart	45	3	2018-01-01	3	Lumeria	85033.00	2
2175	Gregory Romero	33	3	2018-01-01	9	Zebronia	99362.00	2
1226	Jeffrey Hart	39	3	2022-01-01	12	Vantor	110341.00	3
7191	Michael Burton	49	4	2017-01-01	7	Aqualis	93394.00	3
3340	John Salazar	57	2	2016-01-01	17	Lumeria	100000.00	2
4385	Jane Doe	31	3	2013-01-01	6	Arkalon	100464.00	4
6087	Jane Doe	29	0	2023-01-01	3	Kaldora	125066.00	2
8213	John Harrison	45	2	2017-01-01	8	Nirvon	96837.00	3
5060	Peter Lopez	45	4	2016-01-01	7	Utopia	99019.00	5
2829	Louis Jennings	42	1	2013-01-01	12	Arkalon	103024.00	4
2930	Mark Frank	39	3	2017-01-01	9	Kaldora	114361.00	4
4840	Joshua Espinoza Dds	27	3	2010-01-01	2	Drogol	82169.00	2
3182	Charles Mcdonald	46	1	2015-01-01	2	Drogol	79132.00	3
6471	Heather David	54	3	2014-01-01	9	Utopia	100000.00	4
1758	Dylan Owen	34	1	2025-01-01	4	Nirvon	76521.00	4
5902	Laura Hurley	34	2	2018-01-01	8	Zebronia	85550.00	1
9642	Scott Archer	35	5	2026-01-01	3	Xentara	258291.00	3
6370	Steven Campbell	31	4	2025-01-01	8	Utopia	84146.00	3
8458	Ashley Dixon	27	1	2018-01-01	3	Zebronia	83110.00	3
6368	Lisa Mosley	54	4	2022-01-01	10	Utopia	100868.00	5
8349	Theresa Mcguire	51	3	2018-01-01	8	Lumeria	107111.00	5
3634	Nicole Peterson	46	2	2017-01-01	12	Utopia	102689.00	3
9013	Steven Hawkins	46	2	2022-01-01	19	Aqualis	99047.00	4
4775	Mia Vargas	52	5	2024-01-01	8	Kaldora	266751.00	5
1411	Selena Burton	46	2	2020-01-01	14	Nirvon	119233.00	4
3601	Cody Forbes	49	1	2010-01-01	20	Aqualis	110002.00	2
3450	Christina Baker	48	3	2011-01-01	3	Arkalon	102443.00	5
7599	Joyce Williams	39	3	2022-01-01	16	Drogol	116901.00	2
5378	Sandra Armstrong	46	2	2021-01-01	9	Drogol	111888.00	4
2575	Michael Hunt	51	0	2023-01-01	19	Xentara	130406.00	4
5177	Tiffany Thornton	35	2	2012-01-01	13	Utopia	92066.00	2
4889	David Lawson	43	3	2017-01-01	6	Zebronia	101846.00	5
2159	Briana Powell	38	4	2015-01-01	10	Drogol	100595.00	3
4973	Nicholas Taylor	41	3	2017-01-01	3	Xentara	88272.00	3
3912	Christopher Bell	33	3	2025-01-01	7	Utopia	91509.00	4
5949	Darren Duncan	28	2	2011-01-01	3	Xentara	77973.00	1
7709	Jennifer Green	54	2	2019-01-01	16	Xentara	112860.00	4
7489	Robert Ellis	38	3	2023-01-01	14	Drogol	112056.00	4
8635	Jane Doe	52	3	2016-01-01	17	Zebronia	120402.00	2
9009	Ian Moody	37	0	2015-01-01	3	Aqualis	99303.00	2
7183	Thomas Ray	40	1	2023-01-01	4	Nirvon	90835.00	5
4748	James Daniel	33	4	2025-01-01	8	Arkalon	87226.00	4
5207	Tonya Spencer	45	1	2011-01-01	19	Drogol	107117.00	2
7366	Patrick Shaw	31	0	2018-01-01	7	Xentara	123383.00	3
4622	Alexander Davis	47	3	2012-01-01	14	Vantor	126972.00	4
3592	Jessica Pitts	51	0	2016-01-01	18	Kaldora	84295.00	1
4542	David Simpson	41	0	2023-01-01	1	Vantor	139920.00	4
8420	Kendra Thompson	56	4	2025-01-01	12	Utopia	99408.00	5
9815	Mary Aguilar	64	3	2024-01-01	19	Nirvon	123475.00	4
1205	Jane Doe	48	3	2010-01-01	4	Nirvon	94584.00	4
7198	Joseph Kerr	61	3	2019-01-01	20	Nirvon	129810.00	3
9363	Jason Ochoa	38	2	2023-01-01	14	Kaldora	87070.00	2
4832	Shannon Hubbard	42	1	2020-01-01	10	Aqualis	93150.00	2
8434	Vincent Cunningham	62	0	2013-01-01	18	Nirvon	154210.00	4
8813	Angel Weber	45	4	2024-01-01	4	Arkalon	76524.00	3
9942	Natalie Robinson	49	3	2022-01-01	10	Vantor	102299.00	2
3858	Douglas Davies	46	4	2023-01-01	8	Nirvon	101992.00	5
8469	Patricia Bright	57	4	2012-01-01	20	Drogol	115952.00	2
1885	Laurie Gutierrez	27	0	2012-01-01	1	Nirvon	138331.00	3
2596	Jesse Green	34	4	2017-01-01	1	Xentara	77341.00	2
6502	Casey Alexander	36	4	2024-01-01	13	Zebronia	100375.00	2
6296	Mr. William Kane	32	4	2015-01-01	1	Kaldora	76739.00	2
2867	Brandon Fitzpatrick	27	4	2012-01-01	3	Vantor	84121.00	3
7837	Alejandra Becker	42	3	2016-01-01	4	Vantor	87510.00	2
7718	John Bennett	29	4	2020-01-01	7	Arkalon	101640.00	4
6340	Stacey White	33	2	2017-01-01	5	Lumeria	82377.00	2
3204	Richard Lucas	47	4	2013-01-01	4	Aqualis	90427.00	4
5198	Frederick Daniels	45	1	2023-01-01	20	Vantor	109787.00	2
3673	Gabriela Crawford	35	2	2019-01-01	11	Kaldora	98392.00	3
3705	Audrey Allen	53	4	2024-01-01	11	Nirvon	102386.00	4
1349	April Manning	43	2	2014-01-01	8	Lumeria	89555.00	3
5238	Donna Vasquez	49	3	2012-01-01	10	Arkalon	119742.00	5
3541	Johnny Harrington	49	3	2016-01-01	11	Xentara	105467.00	2
2653	James Rocha	33	3	2015-01-01	9	Kaldora	99427.00	2
2239	Jacob Proctor	49	1	2011-01-01	19	Drogol	111563.00	3
1655	Christina Day	42	3	2024-01-01	18	Drogol	120047.00	4
2443	Andrew Valencia	52	1	2021-01-01	14	Xentara	101807.00	3
4945	Charles Bean	43	4	2013-01-01	7	Aqualis	89072.00	2
8092	Howard Wilson	43	4	2012-01-01	16	Xentara	125096.00	5
2246	Christina Small	32	4	2012-01-01	9	Zebronia	97013.00	3
7001	Bridget Shea	33	4	2013-01-01	2	Vantor	82181.00	3
7342	Donna Bell	39	2	2013-01-01	13	Utopia	100000.00	1
7221	Sara Pollard	46	0	2019-01-01	11	Xentara	132526.00	3
2429	Stephanie Schmitt	36	4	2012-01-01	11	Lumeria	104697.00	4
6601	Anne Peterson	43	3	2015-01-01	12	Aqualis	109800.00	3
1766	Michael Smith	33	4	2026-01-01	3	Zebronia	73479.00	3
1692	Mark Johns	31	3	2012-01-01	9	Vantor	117114.00	5
5123	Jane Doe	43	4	2026-01-01	6	Utopia	74244.00	2
9083	Denise Cunningham Dds	42	4	2017-01-01	9	Xentara	97998.00	3
6574	Karen Alvarez	60	4	2018-01-01	18	Aqualis	111983.00	2
4295	Barbara Brooks	53	0	2011-01-01	16	Kaldora	158329.00	4
9830	Justin Jimenez	56	3	2020-01-01	16	Kaldora	127841.00	5
1228	Deborah Russell	43	4	2011-01-01	11	Aqualis	100715.00	3
9319	Amber Pierce	45	2	2013-01-01	12	Xentara	88281.00	2
3036	Jane Doe	47	3	2018-01-01	10	Lumeria	100000.00	4
4925	Jane Doe	24	3	2023-01-01	1	Zebronia	83475.00	3
1394	Sherri Moreno	45	3	2022-01-01	15	Xentara	115754.00	2
3095	Carolyn Williams	50	4	2021-01-01	15	Nirvon	115773.00	5
2382	Melissa Goodman	34	1	2023-01-01	4	Arkalon	88082.00	4
2229	Angela Moore	29	0	2023-01-01	4	Aqualis	151547.00	4
9534	Ann Morris	46	3	2026-01-01	13	Kaldora	105911.00	4
6932	Christopher Brady	51	4	2020-01-01	9	Vantor	100000.00	4
6500	Jacob Garrison	33	1	2015-01-01	10	Nirvon	95732.00	3
8095	Michelle Wilkinson	25	3	2014-01-01	1	Zebronia	80442.00	2
2260	Wendy Taylor	41	3	2016-01-01	5	Vantor	90514.00	2
6643	Christopher Marshall	49	3	2024-01-01	16	Drogol	111603.00	3
3374	Madison Moreno	57	0	2017-01-01	18	Kaldora	118278.00	3
1521	Alyssa Fernandez	62	3	2020-01-01	20	Zebronia	138178.00	5
4702	Paula Martinez	44	3	2018-01-01	2	Zebronia	91978.00	5
5350	Melissa Johnson	45	0	2020-01-01	19	Vantor	152714.00	4
5031	Jeffrey Owens	35	3	2014-01-01	3	Zebronia	99662.00	4
7216	Melissa Martinez	57	2	2021-01-01	14	Kaldora	112613.00	4
3307	Crystal Elliott	55	2	2025-01-01	10	Drogol	101897.00	4
5347	Marcus Mendez	51	0	2026-01-01	19	Arkalon	127595.00	3
3393	Collin Parks	53	3	2018-01-01	15	Utopia	122813.00	4
1129	Jane Doe	39	3	2025-01-01	7	Aqualis	92710.00	4
6135	James Morgan	43	3	2019-01-01	8	Drogol	98383.00	2
6408	Deborah Davis	53	0	2010-01-01	18	Aqualis	156659.00	4
2240	Connor Terry	46	2	2012-01-01	19	Kaldora	109691.00	5
6951	Katherine Delgado	51	0	2022-01-01	16	Zebronia	90201.00	1
9872	Stephanie Taylor	41	3	2016-01-01	8	Xentara	98391.00	2
9066	Kyle Orr	61	2	2021-01-01	20	Zebronia	86945.00	2
3724	Juan Armstrong	60	3	2019-01-01	20	Kaldora	126538.00	2
5235	Mrs. Ashley Brown	34	0	2025-01-01	10	Lumeria	100000.00	3
6232	Jane Doe	41	2	2015-01-01	13	Lumeria	112957.00	4
7535	Kevin Adams	32	2	2017-01-01	5	Xentara	111912.00	4
5536	Briana Perry	54	5	2022-01-01	20	Lumeria	500000.00	3
4838	Crystal Baxter	53	2	2023-01-01	19	Utopia	112595.00	4
1846	Nancy Smith	48	2	2021-01-01	9	Lumeria	117886.00	5
3726	Alicia Rangel	47	3	2016-01-01	17	Arkalon	119965.00	2
8610	Jorge Perez	42	1	2017-01-01	3	Aqualis	95538.00	5
6258	Jane Doe	45	4	2018-01-01	4	Zebronia	98032.00	4
7856	John Robinson	52	3	2023-01-01	20	Aqualis	130287.00	3
4372	Brandon Short	46	1	2022-01-01	19	Arkalon	100000.00	3
3775	Jennifer Murphy	49	1	2013-01-01	4	Drogol	96822.00	5
5557	Jeremy Hurley	48	4	2016-01-01	20	Arkalon	115510.00	2
6815	Shane Peterson	48	4	2012-01-01	3	Lumeria	87348.00	4
4845	Susan Smith	42	1	2025-01-01	17	Drogol	104479.00	5
1348	Julie Williams	40	4	2019-01-01	3	Aqualis	82507.00	2
9589	Theresa Mcintyre	55	4	2016-01-01	20	Aqualis	119350.00	3
3115	Andrea Baldwin	52	3	2022-01-01	10	Xentara	108141.00	5
4646	James Martin	27	3	2020-01-01	3	Lumeria	88059.00	3
2857	Katherine Chen	38	0	2021-01-01	7	Arkalon	164254.00	5
5889	Timothy Dougherty	58	3	2013-01-01	18	Vantor	140479.00	5
9138	Tyler Thomas	30	3	2022-01-01	6	Zebronia	91600.00	2
9473	Ricky Galvan	47	2	2011-01-01	16	Arkalon	78096.00	1
4058	Sabrina Mills	46	3	2024-01-01	13	Arkalon	107842.00	4
8478	Robert Cook	53	3	2019-01-01	17	Nirvon	121946.00	3
4124	Jared Black	31	0	2016-01-01	8	Drogol	138360.00	4
2980	Lisa Morales	45	3	2023-01-01	17	Aqualis	119264.00	2
5112	Amy Farrell	52	5	2013-01-01	19	Arkalon	100000.00	4
2309	Peter Klein	44	2	2018-01-01	2	Arkalon	85275.00	1
5716	Kevin Lopez	46	0	2023-01-01	15	Vantor	96931.00	1
8998	Amanda Moore	30	4	2012-01-01	7	Vantor	89419.00	2
5649	Jane Doe	25	4	2020-01-01	3	Xentara	95782.00	4
8411	Thomas Wagner	57	3	2015-01-01	16	Zebronia	127188.00	5
2589	Laurie Lee	53	4	2018-01-01	19	Vantor	118055.00	3
3239	Erin Contreras	53	3	2016-01-01	19	Zebronia	141805.00	5
6337	David Dyer	37	5	2019-01-01	5	Utopia	500000.00	3
4028	Mark Powers	43	4	2012-01-01	5	Aqualis	91914.00	4
3522	Keith Hines	52	3	2024-01-01	9	Xentara	103080.00	5
9643	Jessica Trujillo	48	4	2021-01-01	6	Xentara	104521.00	5
2476	Laurie Bailey	41	1	2010-01-01	7	Kaldora	95789.00	5
5402	Karen Greer	31	2	2015-01-01	4	Utopia	118119.00	5
3797	Albert Davies	44	1	2021-01-01	16	Kaldora	117613.00	4
2528	Brooke Newman	41	4	2025-01-01	13	Kaldora	102515.00	5
9260	Sheila Mcintosh	35	4	2012-01-01	3	Nirvon	94149.00	4
8678	Mrs. Carla Anderson Md	49	3	2016-01-01	16	Aqualis	119030.00	3
5028	Janice Gibson	39	4	2018-01-01	16	Xentara	114699.00	4
2878	Kimberly Perry	41	0	2024-01-01	18	Kaldora	100000.00	1
2226	Francisco Bryant	57	1	2017-01-01	12	Nirvon	102534.00	4
7965	Jane Doe	43	3	2017-01-01	16	Utopia	118180.00	2
1446	Christian Parsons	59	3	2017-01-01	20	Xentara	142677.00	4
7148	Charles Jones	24	0	2017-01-01	1	Xentara	116664.00	3
4204	Robin Francis	39	3	2019-01-01	2	Vantor	100565.00	5
1573	Jane Doe	49	0	2015-01-01	16	Arkalon	87286.00	1
7076	James Reed	41	3	2024-01-01	10	Nirvon	100926.00	2
9373	Derrick Cochran	35	3	2014-01-01	9	Aqualis	114557.00	4
8554	Heather Miller	34	0	2012-01-01	9	Lumeria	144225.00	3
4096	Benjamin Day	37	1	2015-01-01	5	Drogol	99608.00	5
5592	William Gonzales	31	3	2014-01-01	4	Vantor	89321.00	3
2162	Amanda Hogan	46	4	2010-01-01	3	Arkalon	93113.00	5
3086	Michael Hawkins	47	1	2013-01-01	9	Vantor	93465.00	3
7176	Jesse Olson	46	4	2011-01-01	10	Zebronia	100779.00	3
2410	Sarah Abbott	48	0	2021-01-01	8	Utopia	145447.00	3
1837	Paul Cooper	40	4	2016-01-01	4	Xentara	94991.00	5
1250	Victor Smith	49	0	2017-01-01	4	Vantor	93110.00	2
1190	Jane Doe	39	0	2014-01-01	4	Nirvon	155713.00	4
4672	Mia Davis	45	2	2015-01-01	9	Zebronia	100000.00	1
7954	Lori Pacheco	57	3	2015-01-01	16	Arkalon	131941.00	4
7423	Amanda Mathews	51	1	2010-01-01	14	Utopia	103138.00	3
5789	Lauren Wise	54	3	2014-01-01	15	Drogol	125175.00	5
9101	Michele Mcintosh	30	2	2021-01-01	2	Nirvon	100000.00	3
4421	Eugene Martin	58	2	2026-01-01	16	Vantor	67389.00	1
7686	Nathaniel Johnson	61	3	2016-01-01	18	Aqualis	125522.00	3
4596	Robert Cohen	42	1	2010-01-01	2	Kaldora	84284.00	4
5941	Debra Alvarado	51	0	2011-01-01	19	Zebronia	160932.00	5
1784	Jane Doe	57	0	2019-01-01	19	Xentara	118326.00	3
4820	George Harrison	53	0	2025-01-01	20	Nirvon	100000.00	5
6712	Shannon Lambert	38	4	2024-01-01	11	Kaldora	95778.00	2
9943	James Johnson	59	3	2011-01-01	18	Xentara	122617.00	2
6163	Timothy Kelly	42	2	2023-01-01	19	Nirvon	99919.00	4
6289	Kevin Reyes	42	1	2011-01-01	14	Utopia	114050.00	5
2835	Angela Humphrey	50	1	2015-01-01	19	Drogol	100000.00	5
6995	Donna Adams	0	1	2016-01-01	12	Vantor	95387.00	2
1558	Melinda Sanchez	50	4	2022-01-01	18	Zebronia	115312.00	5
4703	Jason Miranda	56	3	2019-01-01	19	Nirvon	140421.00	4
9691	Lydia Wong	56	3	2021-01-01	19	Xentara	135410.00	5
9412	Jose Diaz	42	0	2023-01-01	12	Utopia	80648.00	1
9089	Kristina Burton	42	2	2019-01-01	20	Vantor	97527.00	3
5556	Joseph Cook	39	4	2021-01-01	9	Arkalon	110473.00	5
8350	Amanda Mccoy	55	0	2025-01-01	14	Zebronia	88161.00	2
9416	Joe Long	60	2	2018-01-01	19	Nirvon	86791.00	2
5271	Kevin Clark	43	2	2026-01-01	3	Kaldora	84106.00	3
7991	Daniel Richmond	26	1	2011-01-01	3	Utopia	82818.00	3
3825	James Blackwell	40	1	2024-01-01	3	Xentara	78051.00	2
5637	Ronald Mcclain	48	3	2013-01-01	20	Zebronia	128361.00	2
6461	Krystal Lopez	46	3	2013-01-01	7	Lumeria	109029.00	4
5979	Timothy Gomez	38	4	2017-01-01	5	Aqualis	99711.00	4
2634	Edwin Gallegos	54	3	2020-01-01	9	Arkalon	106517.00	4
8089	Jennifer Rodriguez	54	2	2013-01-01	12	Drogol	102939.00	3
3956	Scott Clark	54	2	2023-01-01	20	Kaldora	113104.00	4
9509	Laura Hernandez	50	1	2013-01-01	6	Kaldora	84923.00	2
8888	Brian Martinez	58	0	2022-01-01	13	Kaldora	125544.00	2
2705	Samuel Mitchell	31	3	2013-01-01	2	Drogol	92120.00	5
3881	Edward Watson	49	2	2022-01-01	5	Aqualis	83385.00	2
2966	Jane Doe	30	0	2017-01-01	3	Aqualis	144893.00	4
6903	Kathleen Brewer	48	0	2016-01-01	3	Arkalon	120901.00	3
8592	Nicole Everett	42	1	2021-01-01	15	Nirvon	104463.00	3
4874	Rebecca Harrison	55	2	2016-01-01	11	Kaldora	100023.00	4
3977	Diana Luna	39	3	2017-01-01	8	Drogol	114566.00	5
7396	Allison Donovan	40	2	2024-01-01	13	Xentara	70566.00	1
9200	Lance Lucero	50	3	2024-01-01	11	Vantor	95344.00	2
7288	Blake Li	43	0	2023-01-01	11	Kaldora	162944.00	5
3736	Kimberly Miller	30	3	2023-01-01	3	Xentara	90760.00	5
7280	Walter Elliott	41	3	2010-01-01	1	Lumeria	97413.00	5
4921	Christine Newton	37	2	2011-01-01	4	Arkalon	100000.00	3
4937	Allen Henry	51	1	2012-01-01	13	Nirvon	109937.00	4
2329	Autumn Skinner	48	0	2016-01-01	5	Lumeria	119742.00	3
2289	Keith Smith	38	2	2011-01-01	13	Kaldora	122762.00	5
3584	David Mullen	59	3	2025-01-01	14	Arkalon	102212.00	2
8100	Christopher Moyer	39	2	2023-01-01	5	Aqualis	85693.00	1
9362	Brandy Lindsey	45	1	2017-01-01	12	Xentara	100000.00	5
4216	Kimberly Mendoza	47	4	2016-01-01	20	Zebronia	122234.00	4
8654	Ariana Frank	45	1	2013-01-01	3	Zebronia	94683.00	5
8791	Robert Ramirez	39	4	2021-01-01	11	Zebronia	114154.00	5
6794	Daniel Kim	35	3	2013-01-01	8	Utopia	99556.00	3
6763	Taylor Hartman	62	2	2014-01-01	18	Xentara	93339.00	2
9510	Eric Gomez	35	3	2012-01-01	10	Utopia	102216.00	2
2014	James Williams	35	3	2012-01-01	3	Lumeria	103251.00	5
3686	Kelsey Byrd	32	3	2017-01-01	1	Drogol	80254.00	2
4809	Mrs. Laura Russell	42	2	2018-01-01	16	Nirvon	116537.00	5
4553	Brittney Robinson	39	0	2013-01-01	7	Drogol	147036.00	4
4102	Jeffrey Hall	29	3	2012-01-01	5	Nirvon	92457.00	3
8722	Mark Grant	30	4	2012-01-01	5	Nirvon	93496.00	4
8959	Charles Munoz	44	4	2023-01-01	10	Drogol	99161.00	5
3527	Lisa Ramirez	60	0	2017-01-01	19	Utopia	121885.00	2
4766	Matthew Reynolds	51	0	2023-01-01	10	Nirvon	116976.00	2
9431	Lisa Wright	48	1	2013-01-01	7	Utopia	103337.00	5
3422	Mary Anderson	41	4	2012-01-01	2	Lumeria	79466.00	2
4833	Cassandra Johnson	40	3	2010-01-01	17	Lumeria	119462.00	2
3068	Peggy Solomon	38	0	2021-01-01	7	Vantor	102703.00	1
8898	Adam Adams	39	3	2011-01-01	6	Nirvon	109839.00	5
4162	Erin Alvarado	59	1	2021-01-01	14	Lumeria	101830.00	3
6155	Allison Hernandez	52	1	2013-01-01	20	Arkalon	112808.00	3
4020	Troy Mercer	48	0	2021-01-01	8	Zebronia	139939.00	4
5333	Danielle Garcia	53	3	2011-01-01	8	Nirvon	112596.00	4
3609	Kaitlyn Riggs	23	3	2012-01-01	1	Lumeria	79819.00	2
3645	Michael Smith	28	4	2020-01-01	4	Utopia	88472.00	3
2432	Cody Robinson	44	0	2020-01-01	5	Drogol	145268.00	3
3038	Katherine Frost	56	0	2021-01-01	17	Kaldora	99235.00	2
8121	Jane Doe	33	2	2017-01-01	6	Zebronia	100000.00	5
8652	Vicki Browning	46	4	2026-01-01	1	Zebronia	72207.00	4
1428	Robin Velazquez	33	4	2018-01-01	1	Xentara	94151.00	5
5230	Roger Golden	47	4	2020-01-01	15	Xentara	119866.00	4
5181	Kathy Jordan	40	3	2018-01-01	12	Kaldora	106986.00	2
9269	Timothy Humphrey	49	3	2025-01-01	6	Kaldora	84657.00	3
5722	Martin Lee Iii	55	3	2021-01-01	14	Nirvon	100000.00	4
3186	Peter Hill	36	3	2010-01-01	9	Utopia	103357.00	3
8954	Charles Morris	38	4	2012-01-01	12	Kaldora	109602.00	5
9180	David Baker	51	1	2015-01-01	10	Drogol	104430.00	4
3674	Richard Fox	38	4	2013-01-01	16	Vantor	107996.00	2
2212	Steven King	45	2	2022-01-01	20	Arkalon	115326.00	5
7623	Nicholas Williamson	45	4	2012-01-01	18	Zebronia	115039.00	3
7688	Michael Lewis	48	4	2020-01-01	19	Arkalon	128225.00	4
1876	Nicole Morgan	39	0	2012-01-01	15	Nirvon	114833.00	3
1991	Craig Murphy	37	3	2015-01-01	11	Lumeria	112023.00	4
4718	Monica Carpenter	51	4	2018-01-01	20	Nirvon	132104.00	5
6469	Laura Bray	40	1	2022-01-01	1	Vantor	73105.00	3
5284	Joe Carr	47	3	2019-01-01	7	Drogol	113079.00	5
6975	Rebecca Russell	30	1	2013-01-01	3	Drogol	79491.00	2
1187	Geoffrey Gomez	39	4	2016-01-01	9	Vantor	109722.00	5
5405	Maxwell Gonzalez	61	3	2011-01-01	19	Drogol	142510.00	5
9848	Travis Byrd	48	3	2025-01-01	10	Utopia	99081.00	4
8927	Wayne Griffin	37	2	2020-01-01	15	Xentara	84162.00	1
5115	Sarah Stein	35	4	2026-01-01	8	Nirvon	89396.00	5
5955	Jeffrey Guzman	35	2	2023-01-01	3	Aqualis	91559.00	4
4383	William Price	50	1	2012-01-01	12	Zebronia	102715.00	4
4048	Steven Carter	37	2	2019-01-01	9	Lumeria	89128.00	3
2556	Eric Wagner	38	3	2019-01-01	9	Xentara	107210.00	4
8500	Martin Sanchez	48	3	2010-01-01	19	Xentara	133351.00	4
1578	Kyle Lara	25	3	2016-01-01	1	Arkalon	80381.00	2
6254	Alison Wright	34	3	2026-01-01	10	Vantor	102895.00	5
1278	Allison Herring	54	3	2024-01-01	16	Nirvon	126623.00	5
7672	Gregory Cannon Dvm	30	4	2017-01-01	2	Zebronia	96978.00	5
8099	Jason Miller	60	4	2021-01-01	16	Nirvon	107485.00	2
1525	Christopher Miller	35	4	2012-01-01	3	Aqualis	100498.00	5
3216	Stephen Johnson	58	4	2026-01-01	16	Aqualis	95284.00	2
2507	Scott Henderson	33	3	2021-01-01	6	Vantor	107985.00	4
9381	Scott Harvey	55	2	2020-01-01	20	Nirvon	113432.00	4
9857	Patrick Williams	39	0	2013-01-01	1	Aqualis	120592.00	2
4050	Jeffery Ramos	35	1	2013-01-01	3	Utopia	95087.00	5
8481	Maria Aguilar	38	4	2020-01-01	15	Drogol	104361.00	2
8400	Brandon Snyder	41	0	2026-01-01	8	Zebronia	91845.00	2
5675	Michael Obrien	25	4	2012-01-01	2	Aqualis	97867.00	5
8624	Matthew Williams	28	4	2015-01-01	5	Zebronia	101653.00	5
1763	Shirley Perez	53	0	2014-01-01	10	Zebronia	100000.00	3
7128	Mr. Joseph Mcclain	28	4	2015-01-01	2	Kaldora	79816.00	2
1630	Jasmine Davis	54	4	2024-01-01	17	Zebronia	115096.00	4
8133	Carlos Espinoza	58	3	2018-01-01	18	Drogol	122942.00	2
1676	Kimberly Thornton	0	2	2010-01-01	9	Aqualis	106779.00	4
6528	David Moreno	26	3	2010-01-01	1	Aqualis	80628.00	2
7286	Andrew Scott	48	1	2016-01-01	16	Lumeria	117349.00	4
5106	Melissa Montes	34	0	2020-01-01	8	Drogol	158235.00	4
5937	Lisa Wilkinson	37	2	2025-01-01	5	Kaldora	100000.00	1
4537	Shawn Marks	52	3	2018-01-01	17	Utopia	100000.00	5
9580	Alicia Molina	60	3	2025-01-01	15	Drogol	113168.00	4
4188	James Martinez	53	2	2019-01-01	8	Vantor	87111.00	2
4218	Amanda Chavez	36	3	2023-01-01	9	Arkalon	94109.00	3
4366	Melanie Blankenship	64	3	2023-01-01	19	Zebronia	100000.00	3
7407	Wesley Stewart	36	4	2022-01-01	3	Arkalon	74527.00	2
6529	Jordan Wagner	50	1	2024-01-01	19	Zebronia	115678.00	5
1662	Lisa Estrada	62	3	2019-01-01	18	Lumeria	130282.00	4
2405	Denise Phillips	37	2	2017-01-01	14	Lumeria	115791.00	5
9040	Jennifer Brown	37	1	2021-01-01	2	Utopia	76666.00	2
6271	Eileen Williams	29	2	2017-01-01	1	Nirvon	107301.00	4
6818	Ricky Williams	29	0	2013-01-01	6	Aqualis	127799.00	3
1030	David Brennan	35	0	2026-01-01	12	Lumeria	95507.00	2
2038	Logan Carter	54	0	2010-01-01	16	Nirvon	137759.00	3
4554	Tamara Marshall	43	4	2019-01-01	16	Drogol	110773.00	3
6070	Christopher Waller	50	3	2024-01-01	13	Utopia	108268.00	4
3995	Francisco Murphy	50	0	2015-01-01	14	Nirvon	162408.00	5
7784	Jorge Rosario	36	4	2010-01-01	11	Lumeria	113296.00	4
4476	Jesse Armstrong	44	3	2010-01-01	18	Drogol	124867.00	3
4312	Rachel Green	35	0	2026-01-01	8	Vantor	91714.00	2
3396	Katie Hernandez	43	4	2016-01-01	15	Vantor	110360.00	3
4698	Jessica Thomas	48	3	2023-01-01	19	Lumeria	127190.00	3
2013	Wendy Thompson	50	3	2023-01-01	14	Kaldora	111718.00	4
2735	Mary Garza	51	4	2020-01-01	18	Utopia	112702.00	2
8184	Amanda Long	40	1	2025-01-01	15	Utopia	92798.00	2
7227	Oscar Thomas	0	2	2010-01-01	15	Kaldora	82555.00	2
2612	Courtney Hammond	41	1	2021-01-01	6	Zebronia	87963.00	3
3578	Charles Fleming	54	3	2024-01-01	9	Kaldora	100000.00	4
9847	Jason Smith	49	1	2023-01-01	18	Arkalon	105651.00	4
4594	Michelle Collins	40	3	2026-01-01	1	Aqualis	67691.00	2
4455	Daniel Jordan	51	4	2020-01-01	9	Kaldora	99088.00	4
2331	Tiffany Henderson	38	0	2012-01-01	3	Nirvon	82004.00	1
1456	Laura Jackson	34	0	2025-01-01	8	Drogol	95249.00	2
6202	Jennifer Miller	47	0	2014-01-01	5	Vantor	129158.00	3
1329	Kayla Jones	57	0	2017-01-01	14	Lumeria	159990.00	4
8111	Michael Alexander	52	3	2025-01-01	19	Utopia	125700.00	5
8772	Timothy Brown	40	3	2019-01-01	11	Aqualis	107159.00	3
1506	Elizabeth Ruiz	45	4	2016-01-01	14	Aqualis	102719.00	2
7720	Michelle Sanchez	32	3	2010-01-01	2	Utopia	90228.00	4
9293	Jennifer Bond	60	3	2025-01-01	16	Xentara	115275.00	4
5336	Christina Doyle	55	2	2023-01-01	18	Zebronia	91942.00	2
6885	Corey Jones	35	1	2010-01-01	3	Nirvon	79181.00	2
9997	Sharon Shannon	46	4	2014-01-01	8	Zebronia	102670.00	5
5669	Donald Orr Dvm	28	1	2019-01-01	5	Lumeria	82767.00	2
4115	Jane Doe	29	3	2013-01-01	1	Drogol	95122.00	4
4877	Lisa Garcia	38	1	2016-01-01	10	Zebronia	103292.00	5
5849	Shawn Bush	44	4	2023-01-01	10	Drogol	99548.00	5
3699	Christina Mckee	42	3	2024-01-01	19	Drogol	127208.00	5
1286	Brandon Morton	42	3	2018-01-01	19	Arkalon	139999.00	4
3099	Larry Johnson	35	0	2023-01-01	1	Vantor	124313.00	3
4005	Cheryl Gay	40	3	2010-01-01	10	Aqualis	104442.00	3
1282	Catherine Gilbert	41	1	2021-01-01	17	Zebronia	106927.00	3
2127	Amber Odonnell Phd	54	1	2020-01-01	15	Nirvon	117411.00	5
7925	Lisa Holt	39	0	2020-01-01	6	Arkalon	159774.00	4
8533	John Hartman	41	3	2014-01-01	18	Utopia	125442.00	3
4674	Jane Doe	31	2	2015-01-01	8	Kaldora	92213.00	2
9849	Glenda Martin	43	2	2018-01-01	18	Vantor	89095.00	3
6199	Tina Nelson	41	3	2011-01-01	5	Aqualis	93422.00	3
5999	Raymond Lang	40	0	2011-01-01	10	Zebronia	122058.00	2
5155	Matthew Morris	46	4	2026-01-01	16	Zebronia	99482.00	3
6837	Melissa Steele	42	4	2025-01-01	14	Kaldora	96708.00	3
1581	Jane Doe	45	2	2023-01-01	15	Xentara	84719.00	1
4850	Mark Dougherty	46	3	2026-01-01	3	Xentara	72219.00	2
3938	John Bradley	48	2	2023-01-01	17	Aqualis	78458.00	1
9134	Janice Lopez	52	3	2023-01-01	15	Nirvon	114633.00	2
7794	Matthew Long	26	1	2012-01-01	4	Nirvon	85775.00	3
8352	Jessica Curtis	48	0	2012-01-01	7	Xentara	140642.00	3
2188	Jared Parker	43	1	2021-01-01	4	Drogol	82414.00	2
1054	James Brown	46	4	2012-01-01	5	Xentara	100000.00	5
5865	Adam Morrison	46	2	2022-01-01	19	Vantor	108351.00	4
2527	Kristina Freeman	41	3	2019-01-01	3	Nirvon	85603.00	2
5387	Jennifer Davis	51	3	2025-01-01	19	Arkalon	124147.00	5
2781	Mark Smith	62	4	2018-01-01	19	Xentara	126522.00	4
4904	Rachel Hanna	41	0	2021-01-01	13	Vantor	86846.00	1
7144	Herbert Joseph	44	2	2013-01-01	20	Zebronia	85437.00	1
3550	Michelle Coleman	55	0	2015-01-01	12	Lumeria	149438.00	4
2768	Valerie Munoz	48	0	2013-01-01	8	Zebronia	102803.00	2
5672	Bradley Johnson	43	4	2015-01-01	19	Kaldora	124723.00	5
5156	Kari Moss	0	1	2022-01-01	15	Xentara	109579.00	5
4401	Lisa Powers	53	4	2013-01-01	18	Kaldora	117896.00	4
4635	Colton Larson	51	0	2025-01-01	15	Zebronia	77887.00	1
6048	Jon Simmons	60	3	2013-01-01	18	Arkalon	137834.00	4
3214	Gerald Owens	56	3	2017-01-01	20	Drogol	127832.00	2
8798	Amanda Morris	52	2	2025-01-01	18	Zebronia	104221.00	5
1656	Tina Morris	34	4	2016-01-01	8	Lumeria	93240.00	2
6580	Erica Johnson	49	4	2019-01-01	19	Vantor	127578.00	4
5383	Keith Pratt	41	3	2017-01-01	8	Drogol	114835.00	5
7077	Patricia King	37	4	2015-01-01	15	Vantor	113249.00	4
9091	Eric Johnson	40	2	2018-01-01	5	Aqualis	78115.00	1
1929	Jane Doe	37	3	2010-01-01	1	Xentara	82309.00	3
9453	Thomas Perez	56	3	2014-01-01	13	Xentara	110123.00	2
4145	Christopher Rodriguez	32	4	2025-01-01	2	Utopia	80035.00	5
3183	Jennifer Watson	30	3	2012-01-01	8	Aqualis	100759.00	3
9493	Theodore Solomon	36	1	2020-01-01	7	Utopia	87806.00	2
3630	Brandon Jones	52	4	2015-01-01	11	Xentara	112102.00	4
8816	Tyler Hernandez	51	3	2023-01-01	15	Kaldora	120016.00	5
7255	Debbie Alexander Md	59	2	2025-01-01	18	Kaldora	88207.00	3
4513	Jane Doe	47	0	2016-01-01	13	Vantor	123404.00	2
5474	Mark Scott	48	3	2010-01-01	11	Arkalon	122339.00	5
5588	Matthew Harding	48	3	2024-01-01	16	Zebronia	112823.00	3
4129	Mr. Joshua Perry	46	2	2011-01-01	12	Xentara	89419.00	3
5587	Misty Chan	45	4	2018-01-01	6	Lumeria	87583.00	2
9175	Blake Lopez	42	1	2024-01-01	5	Vantor	84273.00	5
5767	Glenn Carey	46	3	2014-01-01	2	Xentara	96740.00	4
8734	Thomas Graham	50	2	2026-01-01	14	Kaldora	105927.00	5
2383	Trevor Lyons	38	0	2012-01-01	12	Xentara	103446.00	2
7696	Evan Walters	47	4	2025-01-01	8	Lumeria	92989.00	5
8157	Jane Doe	32	3	2010-01-01	4	Zebronia	104493.00	5
1761	Annette Peterson	35	2	2015-01-01	4	Zebronia	107244.00	4
5511	Michael Lawson	38	3	2018-01-01	12	Lumeria	118482.00	5
1828	Jane Doe	40	1	2015-01-01	18	Aqualis	120197.00	4
7529	Jennifer Johnson	51	3	2013-01-01	14	Aqualis	128467.00	4
6942	Russell Norman	34	4	2021-01-01	5	Aqualis	85979.00	2
4166	Jade Craig	34	3	2010-01-01	1	Kaldora	90965.00	5
3659	James Turner	52	2	2020-01-01	11	Zebronia	88256.00	2
3888	John Kelley	43	1	2020-01-01	14	Drogol	102276.00	3
6141	Caroline Cruz	31	4	2011-01-01	7	Vantor	103434.00	4
2609	Christopher Lee	35	3	2011-01-01	13	Nirvon	112573.00	3
8430	Maria Long	32	2	2022-01-01	5	Lumeria	95301.00	3
5551	Sarah Miller	42	0	2025-01-01	15	Zebronia	87441.00	2
1708	Michele Perry	46	4	2021-01-01	5	Lumeria	102970.00	5
8707	Stacey Andrews	40	1	2014-01-01	6	Xentara	92799.00	4
9810	Rose Petersen	37	4	2015-01-01	8	Xentara	92759.00	2
2136	Tara Garcia	58	3	2019-01-01	13	Kaldora	125536.00	4
2516	Mary Hayes	50	2	2014-01-01	15	Drogol	110128.00	5
5261	Cindy Johnston	0	1	2014-01-01	7	Drogol	87676.00	2
3526	Kimberly Hall	46	3	2018-01-01	14	Drogol	119275.00	4
1219	Kelly Brandt	53	3	2019-01-01	9	Lumeria	102300.00	3
3047	Bethany Mosley	35	3	2018-01-01	6	Nirvon	94361.00	3
3744	Katherine Patel	64	3	2014-01-01	20	Arkalon	100000.00	3
6817	Mrs. Lisa Holder Md	40	4	2017-01-01	17	Nirvon	122876.00	4
3687	Traci Wells	39	4	2020-01-01	3	Drogol	100966.00	5
9487	Christy Rice	38	0	2022-01-01	16	Nirvon	128407.00	3
9907	Erica Doyle Md	29	3	2015-01-01	3	Zebronia	102660.00	5
3371	Jane Doe	29	1	2024-01-01	2	Drogol	74398.00	4
1904	Debra Rodriguez	42	4	2015-01-01	10	Vantor	95027.00	2
4539	Eric Evans	34	0	2023-01-01	2	Vantor	81758.00	1
5950	Meghan Villegas	36	2	2023-01-01	2	Drogol	70627.00	1
2606	Christopher Hoffman	0	1	2016-01-01	9	Xentara	90594.00	2
3567	April Trujillo	40	1	2024-01-01	6	Xentara	90503.00	4
7829	Richard Morris	46	3	2025-01-01	5	Aqualis	87558.00	4
7345	Misty Stone	51	3	2012-01-01	7	Lumeria	104991.00	5
3676	Becky Ochoa	44	2	2022-01-01	10	Vantor	101569.00	3
6481	Kyle Sanchez	47	0	2017-01-01	15	Drogol	137438.00	4
2739	Joseph Garcia	49	2	2010-01-01	17	Arkalon	123019.00	5
1843	Ann King	37	4	2024-01-01	12	Drogol	104110.00	4
4268	Shannon Mcdowell	50	1	2025-01-01	15	Aqualis	95387.00	3
6079	Joseph Velasquez	52	3	2011-01-01	18	Utopia	125656.00	3
5086	Catherine Melton	55	2	2017-01-01	10	Zebronia	76988.00	1
5799	Ashley Roberts	33	3	2017-01-01	3	Lumeria	102261.00	5
8018	Linda Martinez	42	0	2020-01-01	10	Aqualis	164328.00	5
7595	Heather Hudson	28	3	2021-01-01	5	Utopia	89864.00	2
7010	Erika Morrison	60	2	2024-01-01	20	Arkalon	105623.00	4
7444	Michael Lopez	52	0	2017-01-01	16	Aqualis	144532.00	4
3884	Justin Brown	56	2	2013-01-01	14	Vantor	88086.00	2
7402	Mark Koch	36	2	2019-01-01	8	Arkalon	118297.00	5
1595	Justin Frye	42	0	2012-01-01	8	Utopia	108201.00	2
4675	Nicole Garcia	56	3	2017-01-01	14	Kaldora	123136.00	5
8385	Daniel Lawrence	42	2	2023-01-01	16	Lumeria	112275.00	4
1266	Jasmin Black	42	1	2012-01-01	14	Vantor	114214.00	5
5728	Cynthia Smith	32	2	2012-01-01	10	Lumeria	76736.00	1
8410	Derrick Savage	54	3	2025-01-01	19	Nirvon	117917.00	3
5101	Donald Green	49	4	2021-01-01	17	Aqualis	117308.00	4
5319	Mitchell Nguyen	46	2	2023-01-01	11	Zebronia	69317.00	1
1757	Roberto Griffin Md	28	3	2017-01-01	4	Arkalon	88110.00	2
6535	Joseph Robertson	34	0	2015-01-01	11	Drogol	144957.00	3
1546	Jessica Sutton	41	1	2020-01-01	18	Vantor	123087.00	5
7977	Teresa Wright	44	2	2011-01-01	14	Lumeria	107505.00	4
9819	Jessica Hogan	53	0	2024-01-01	16	Vantor	105735.00	2
9761	Susan Collins	53	2	2010-01-01	19	Lumeria	122229.00	5
7823	Susan Raymond	37	2	2017-01-01	10	Arkalon	103243.00	3
4705	Steven Simmons	50	3	2010-01-01	6	Zebronia	94037.00	3
8330	Lynn Best	41	3	2025-01-01	17	Aqualis	109938.00	2
5140	Zachary White	38	3	2015-01-01	8	Kaldora	99374.00	3
8271	Karen Irwin	45	1	2022-01-01	4	Lumeria	86849.00	4
7917	Sarah Malone	43	4	2022-01-01	16	Utopia	118288.00	5
9027	Jessica Edwards	34	4	2016-01-01	3	Xentara	84833.00	3
5876	Alyssa Eaton	30	3	2023-01-01	5	Arkalon	95675.00	5
1137	Cynthia Rose	52	0	2013-01-01	13	Arkalon	145536.00	3
9229	Alexander Green	54	2	2025-01-01	9	Vantor	98191.00	4
3446	Marvin Phelps	24	3	2010-01-01	1	Kaldora	97307.00	5
7882	Monica Orr	29	3	2012-01-01	4	Zebronia	95105.00	4
6096	Jodi Donovan	52	3	2021-01-01	7	Vantor	104729.00	5
7343	Dr. Rachel Stein Dds	35	4	2022-01-01	5	Nirvon	85922.00	4
6676	Nicole Wilson	43	2	2017-01-01	16	Xentara	122600.00	5
5620	Jane Doe	45	4	2024-01-01	8	Arkalon	91772.00	3
7694	Lynn Johnson	28	0	2010-01-01	1	Drogol	110983.00	2
5272	Nancy Howard	49	4	2020-01-01	9	Aqualis	100333.00	4
4483	Eddie Hernandez	56	0	2021-01-01	15	Aqualis	120733.00	2
6376	Taylor Ruiz	27	2	2024-01-01	4	Vantor	100425.00	4
5680	Jasmine Fowler	31	3	2020-01-01	8	Vantor	113299.00	4
8552	Tammy Randall	45	3	2021-01-01	12	Aqualis	107608.00	2
5067	Matthew Fritz	52	4	2022-01-01	8	Lumeria	100000.00	2
4966	Jerry Freeman	56	3	2014-01-01	17	Arkalon	100000.00	3
7679	Jane Doe	38	1	2024-01-01	12	Drogol	97029.00	5
4612	Samantha Castaneda	53	2	2024-01-01	12	Lumeria	77739.00	1
7439	Kimberly Allen	45	1	2026-01-01	9	Kaldora	80376.00	2
8377	Susan Fuller	37	4	2011-01-01	10	Utopia	105274.00	5
9904	Sabrina Vasquez	58	3	2022-01-01	17	Arkalon	127965.00	4
4867	Megan Palmer	34	3	2019-01-01	12	Aqualis	114976.00	4
8397	Michelle Williams	27	4	2021-01-01	1	Aqualis	95472.00	5
8331	Gary Morris	48	3	2016-01-01	4	Kaldora	89575.00	3
3255	Chelsea Jones Md	42	3	2019-01-01	20	Xentara	135030.00	4
4776	Michelle Hunter	61	3	2026-01-01	16	Aqualis	113374.00	4
9824	Kylie Hanson	45	3	2026-01-01	9	Xentara	99110.00	5
5214	Tony Walter	53	4	2012-01-01	13	Drogol	112924.00	5
5656	Chelsea Rogers	53	3	2022-01-01	10	Nirvon	102252.00	4
9106	William Gomez	47	2	2022-01-01	12	Utopia	99847.00	4
6873	April Baldwin	41	3	2015-01-01	7	Zebronia	103229.00	4
1526	Margaret Moore	51	4	2011-01-01	10	Aqualis	102375.00	4
4035	Alejandra Alvarez	54	3	2014-01-01	11	Lumeria	120996.00	4
8273	Russell Lynch	46	1	2012-01-01	6	Nirvon	95198.00	5
2148	Rebecca Thomas	52	1	2020-01-01	12	Nirvon	95903.00	2
8202	Matthew Burton	33	3	2019-01-01	8	Kaldora	99764.00	3
9196	Andrew Branch	40	0	2015-01-01	16	Drogol	143106.00	4
3043	Paula Archer	25	4	2017-01-01	2	Kaldora	100000.00	4
2504	Breanna Arroyo	38	3	2020-01-01	3	Xentara	100000.00	3
6325	Jane Doe	36	3	2025-01-01	7	Lumeria	92024.00	4
3620	Kari Bond	40	1	2011-01-01	3	Nirvon	79396.00	2
9014	Benjamin Weaver	31	4	2022-01-01	5	Arkalon	85727.00	4
3436	William Johnson	56	2	2021-01-01	13	Nirvon	100902.00	4
3251	Aaron Juarez	39	2	2024-01-01	5	Xentara	101802.00	5
8985	Jay Booker	50	4	2023-01-01	7	Zebronia	91727.00	3
4494	Juan Sanchez	30	4	2026-01-01	6	Nirvon	79774.00	3
9583	Virginia Jenkins	50	0	2016-01-01	6	Zebronia	112830.00	2
5908	Marvin Gray	38	4	2010-01-01	10	Kaldora	113031.00	5
6341	Amy Johnson	49	1	2019-01-01	6	Utopia	97565.00	4
6297	Christina Norris	49	4	2022-01-01	18	Utopia	104975.00	2
7379	Jennifer Powell	43	3	2017-01-01	2	Kaldora	84037.00	3
2440	Thomas Romero	49	1	2011-01-01	7	Aqualis	94844.00	5
8631	Kaylee Harris	59	2	2020-01-01	16	Nirvon	120894.00	4
7730	David Jacobs	43	1	2010-01-01	11	Drogol	94789.00	2
4378	Brittany Neal	43	4	2023-01-01	7	Vantor	91612.00	3
1501	Samantha Wilson	31	4	2019-01-01	6	Lumeria	90304.00	3
3191	David Johnson	42	2	2011-01-01	19	Vantor	77771.00	1
3334	Heather Delgado	42	0	2022-01-01	4	Zebronia	112103.00	2
5151	Adam Powers	33	4	2020-01-01	5	Zebronia	102228.00	5
4629	Luis Johnson	31	2	2018-01-01	2	Zebronia	88011.00	2
8050	Elizabeth Thomas	56	0	2018-01-01	18	Lumeria	115333.00	2
2101	Thomas Saunders	60	4	2017-01-01	16	Nirvon	114219.00	4
8793	Luke Sanders	60	2	2022-01-01	15	Arkalon	113303.00	4
6215	Tony Bowman	59	3	2012-01-01	16	Arkalon	132566.00	4
8670	Elizabeth Lewis	51	3	2019-01-01	6	Aqualis	93472.00	2
1257	Wendy Baker	39	0	2022-01-01	13	Zebronia	165076.00	5
3305	Kyle Lawson	40	0	2023-01-01	5	Kaldora	105310.00	2
3932	Cassandra Harrell	54	4	2017-01-01	14	Arkalon	100000.00	2
5531	Eric Johnson	50	0	2011-01-01	17	Lumeria	135761.00	3
9572	Samuel Krueger	50	1	2012-01-01	17	Xentara	107700.00	3
5248	Kimberly Davis	52	3	2015-01-01	18	Zebronia	133315.00	5
4024	Judith Sanchez	54	3	2018-01-01	18	Nirvon	130120.00	4
1809	Chase Sims	32	3	2026-01-01	8	Zebronia	90723.00	3
1599	Lance Hernandez	62	3	2025-01-01	18	Utopia	120049.00	4
9898	Michelle Byrd	42	1	2022-01-01	10	Nirvon	100000.00	4
8284	Nicole Hardy	38	4	2023-01-01	13	Lumeria	107493.00	4
8155	Andrew Carlson	56	4	2013-01-01	19	Vantor	118420.00	3
9559	Amanda Alvarado	34	4	2018-01-01	8	Vantor	94356.00	3
1947	Sarah Matthews	42	3	2019-01-01	19	Lumeria	125473.00	2
8167	Jane Doe	37	3	2010-01-01	1	Xentara	82309.00	3
\.


--
-- TOC entry 3441 (class 0 OID 16479)
-- Dependencies: 220
-- Data for Name: sales_data; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging.sales_data (employee_id, total_sales) FROM stdin;
1472	87491.00
7556	97175.00
6237	50562.00
4873	65978.00
8110	65708.00
1701	62719.00
7062	130913.00
2314	115963.00
9656	75608.00
8745	68153.00
9244	61356.00
7164	71090.00
2499	100261.00
7544	29328.00
6561	113820.00
6430	74080.00
6087	89781.00
2575	97435.00
9009	44516.00
7366	75147.00
3592	21718.00
4542	112376.00
8434	126998.00
1885	102434.00
7221	94504.00
4295	132746.00
2229	135492.00
3374	69097.00
5350	111697.00
5347	106953.00
6408	118274.00
6951	45510.00
5235	83234.00
2857	138054.00
4124	96092.00
5716	57551.00
2878	32277.00
7148	65357.00
1573	28457.00
8554	119450.00
2410	118452.00
1250	30945.00
1190	130321.00
5941	127813.00
1784	68779.00
4820	138595.00
9412	25820.00
8350	39531.00
8888	85923.00
2966	98804.00
6903	72319.00
7288	134663.00
2329	72336.00
4553	102729.00
3527	85016.00
4766	88763.00
3068	55883.00
4020	99256.00
2432	115988.00
3038	43481.00
1876	61040.00
9857	77257.00
8400	49507.00
1763	81155.00
5106	132499.00
6818	85563.00
1030	56215.00
2038	105806.00
3995	121272.00
4312	50034.00
2331	20300.00
1456	50064.00
6202	92171.00
1329	139253.00
3099	79421.00
7925	123059.00
5999	81626.00
8352	109041.00
4904	29409.00
3550	117395.00
2768	49526.00
4635	26428.00
4513	85487.00
2383	49302.00
5551	38672.00
9487	97715.00
4539	29825.00
6481	94540.00
8018	139431.00
7444	95093.00
1595	54345.00
6535	119045.00
9819	54986.00
1137	116761.00
7694	61120.00
4483	78920.00
9196	104780.00
9583	66570.00
3334	66182.00
8050	69545.00
1257	138143.00
3305	53214.00
5531	99961.00
\.


--
-- TOC entry 3440 (class 0 OID 16469)
-- Dependencies: 219
-- Data for Name: support_data; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging.support_data (employee_id, support_rating) FROM stdin;
5264	5
8696	4
3355	2
4330	1
1903	3
9505	3
8169	3
8016	1
2224	3
5581	2
7214	1
5801	4
1091	3
7231	2
4681	3
5301	3
2822	1
4721	3
5136	5
4054	2
2800	2
2691	4
4527	1
3774	4
3340	2
8213	3
5902	2
3634	4
9013	4
1411	5
5378	4
5177	3
5949	1
7709	5
9363	3
6340	1
3673	3
1349	2
7342	2
9319	2
7216	4
3307	5
2240	4
9066	2
6232	5
7535	5
4838	5
1846	4
9473	1
2309	2
5402	4
4672	1
9101	4
4421	1
6163	3
9089	3
9416	2
5271	3
8089	4
3956	5
3881	1
4874	3
7396	1
4921	3
2289	5
8100	2
6763	3
4809	4
8121	5
2212	5
8927	2
5955	3
4048	2
9381	5
1676	3
5937	2
4188	2
2405	5
6271	3
7227	1
5336	3
4674	3
9849	2
1581	2
3938	2
5865	4
7144	2
8798	5
9091	1
7255	3
4129	2
8734	5
1761	3
3659	2
8430	4
2516	4
5950	1
3676	4
2739	5
5086	1
7010	5
3884	2
7402	4
8385	5
5728	1
5319	1
7977	4
9761	5
7823	4
9229	4
6676	5
6376	3
4612	1
9106	4
3436	3
3251	4
8631	5
3191	1
4629	2
8793	5
\.


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 216
-- Name: departments_dept_id_seq; Type: SEQUENCE SET; Schema: staging; Owner: postgres
--

SELECT pg_catalog.setval('staging.departments_dept_id_seq', 1, false);


--
-- TOC entry 3282 (class 2606 OID 16456)
-- Name: departments departments_dept_name_key; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.departments
    ADD CONSTRAINT departments_dept_name_key UNIQUE (dept_name);


--
-- TOC entry 3284 (class 2606 OID 16454)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_id);


--
-- TOC entry 3286 (class 2606 OID 16463)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 3290 (class 2606 OID 16483)
-- Name: sales_data sales_data_pkey; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.sales_data
    ADD CONSTRAINT sales_data_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 3288 (class 2606 OID 16473)
-- Name: support_data support_data_pkey; Type: CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.support_data
    ADD CONSTRAINT support_data_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 3291 (class 2606 OID 16464)
-- Name: employees employees_dept_id_fkey; Type: FK CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.employees
    ADD CONSTRAINT employees_dept_id_fkey FOREIGN KEY (dept_id) REFERENCES staging.departments(dept_id);


--
-- TOC entry 3293 (class 2606 OID 16484)
-- Name: sales_data sales_data_employee_id_fkey; Type: FK CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.sales_data
    ADD CONSTRAINT sales_data_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES staging.employees(employee_id);


--
-- TOC entry 3292 (class 2606 OID 16474)
-- Name: support_data support_data_employee_id_fkey; Type: FK CONSTRAINT; Schema: staging; Owner: postgres
--

ALTER TABLE ONLY staging.support_data
    ADD CONSTRAINT support_data_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES staging.employees(employee_id);


-- Completed on 2026-03-06 02:18:47 EST

--
-- PostgreSQL database dump complete
--

\unrestrict X3DaLxOq44jMPhDlJlCa9QCuHCaySslxKncazA2h5PRIA0OViPPH1GcZxfDNqLs

