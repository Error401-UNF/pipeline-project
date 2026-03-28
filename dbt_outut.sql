--
-- PostgreSQL database dump
--

\restrict MBoZquh205WeKV0YodonrjeBvb7fUtx9GkyAGGrr3Jteek2YGZai4cedqjT9y7Z

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

-- Started on 2026-03-28 14:16:37 EDT

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
-- TOC entry 3450 (class 0 OID 17183)
-- Dependencies: 224
-- Data for Name: early_talent_indicator; Type: TABLE DATA; Schema: gold; Owner: postgres
--

COPY gold.early_talent_indicator (name, years_of_experience, performance_rating, dept_name) FROM stdin;
Eric Zimmerman	1	5	Support
Jade Craig	1	5	Development
Marvin Phelps	1	5	Development
Michelle Williams	1	5	Operations
Robin Velazquez	1	5	Operations
Walter Elliott	1	5	Development
Christopher Rodriguez	2	5	Operations
Gregory Cannon DVM	2	5	Operations
Michael Obrien	2	5	Operations
Paula Martinez	2	5	Development
Robin Francis	2	5	Development
Samuel Mitchell	2	5	Development
Amanda Hogan	3	5	Operations
Ariana Frank	3	5	Marketing
Ashley Roberts	3	5	Development
Christina Baker	3	5	Development
Christopher Miller	3	5	Operations
Erica Doyle MD	3	5	Development
James Williams	3	5	Development
Jeffery Ramos	3	5	Marketing
Jorge Perez	3	5	Marketing
Kimberly Miller	3	5	Development
Traci Wells	3	5	Operations
Anne Simmons	1	4	Development
Cheryl Hall	1	4	Sales
David Simpson	1	4	Sales
Eileen Williams	1	4	Support
Vicki Browning	1	4	Operations
Eric Bass	2	4	Development
Glenn Carey	2	4	Development
Jessica Wilson	2	4	Marketing
Jorge Bowen	2	4	Development
Mary Flores	2	4	Support
Michelle Sanchez	2	4	Development
Paula Archer	2	4	Operations
Robert Cohen	2	4	Marketing
Ryan Hurley	2	4	Development
Beverly Rush	3	4	Marketing
Dustin Welch	3	4	Sales
Jeffrey Guzman	3	4	Support
Jeffrey Owens	3	4	Development
Kimberly Stephens	3	4	Operations
Shane Peterson	3	4	Operations
Sheila Mcintosh	3	4	Operations
\.


--
-- TOC entry 3451 (class 0 OID 17188)
-- Dependencies: 225
-- Data for Name: performance_by_salary_analysis; Type: TABLE DATA; Schema: gold; Owner: postgres
--

COPY gold.performance_by_salary_analysis (performance_rating, average_salary) FROM stdin;
5	114658.05
4	114473.74
3	118623.59
2	98659.31
1	81015.61
\.


--
-- TOC entry 3452 (class 0 OID 17193)
-- Dependencies: 226
-- Data for Name: salary_to_country_analysis; Type: TABLE DATA; Schema: gold; Owner: postgres
--

COPY gold.salary_to_country_analysis (country, average_salary) FROM stdin;
Arkalon	127402.69
Nirvon	113752.20
Lumeria	111185.58
Utopia	110041.31
Drogol	109032.39
Xentara	107229.44
Zebronia	106773.26
Kaldora	105944.41
Vantor	104826.59
Aqualis	104732.25
\.


--
-- TOC entry 3453 (class 0 OID 17198)
-- Dependencies: 227
-- Data for Name: salary_to_department_analysis; Type: TABLE DATA; Schema: gold; Owner: postgres
--

COPY gold.salary_to_department_analysis (dept_name, average_salary) FROM stdin;
Leadership	406731.80
Sales	124079.50
Development	109017.64
Operations	100360.75
Marketing	97476.53
Support	96019.78
\.


--
-- TOC entry 3454 (class 0 OID 17203)
-- Dependencies: 228
-- Data for Name: salary_to_tenure_analysis; Type: TABLE DATA; Schema: gold; Owner: postgres
--

COPY gold.salary_to_tenure_analysis (tenure_range, average_salary) FROM stdin;
0 - 2 years	99047.12
3 - 5 years	100225.98
6 - 8 years	102043.84
9 - 11 years	107087.27
12 - 14 years	108198.13
15 - 17 years	122028.28
18 - 20 years	125877.21
\.


--
-- TOC entry 3455 (class 0 OID 17208)
-- Dependencies: 229
-- Data for Name: turnover_rate; Type: TABLE DATA; Schema: gold; Owner: postgres
--

COPY gold.turnover_rate (dept_name, avg_joining_date) FROM stdin;
Leadership	2017-10-19
Support	2018-05-05
Sales	2018-02-01
Marketing	2017-05-22
Operations	2018-04-24
Development	2017-10-12
\.


-- Completed on 2026-03-28 14:16:37 EDT

--
-- PostgreSQL database dump complete
--

\unrestrict MBoZquh205WeKV0YodonrjeBvb7fUtx9GkyAGGrr3Jteek2YGZai4cedqjT9y7Z

