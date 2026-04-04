--
-- PostgreSQL database dump
--

\restrict 79yGWzynu0qD08dkonyRvQvJarokcafPMo4Q2iDIuL4fy5QmeBQVNBOChvJ3rLv

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

-- Started on 2026-04-04 02:06:23 EDT

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
-- TOC entry 3465 (class 0 OID 17400)
-- Dependencies: 216
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
-- TOC entry 3466 (class 0 OID 17405)
-- Dependencies: 217
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
-- TOC entry 3467 (class 0 OID 17410)
-- Dependencies: 218
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
-- TOC entry 3468 (class 0 OID 17415)
-- Dependencies: 219
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
-- TOC entry 3469 (class 0 OID 17420)
-- Dependencies: 220
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
-- TOC entry 3470 (class 0 OID 17425)
-- Dependencies: 221
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


--
-- TOC entry 3471 (class 0 OID 17731)
-- Dependencies: 222
-- Data for Name: employees; Type: TABLE DATA; Schema: sources; Owner: postgres
--

COPY sources.employees (employee_id, name, age, department, date_of_joining, years_of_experience, country, salary, performance_rating, total_sales, support_rating) FROM stdin;
1	Stephen Cummings	36	Sales	2015-01-01	6	Kaldora	127621	3	87491	0
2	Jessica Yoder	45	Marketing	2017-01-01	11	Aqualis	102035	5	0	0
3	Eric Zimmerman	44	Support	2023-01-01	1	Xentara	115498	5	0	5
4	Scott Ellis	47	Development	2024-01-01	4	Arkalon	84189	2	0	0
5	Kathryn Jones	45	Operations	2019-01-01	7	Lumeria	100865	5	0	0
6	Chad Padilla	29	Development	2021-01-01	6	Kaldora	99903	4	0	0
7	Brian Chavez	31	Marketing	2020-01-01	9	Vantor	89533	2	0	0
8	Steven Jones	36	Operations	2020-01-01	4	Vantor	82867	2	0	0
9	Alvin Hicks	32	Development	2014-01-01	9	Lumeria	101851	3	0	0
10	Beverly Rush	40	Marketing	2012-01-01	3	Nirvon	84931	4	0	0
11	Jordan Webb	41	Sales	2021-01-01	19	Nirvon	145502	4	97175	0
12	Marisa Davis	31	Sales	2012-01-01	4	Kaldora	104709	2	50562	0
13	Kenneth Wright	49	Marketing	2019-01-01	15	Utopia	117173	5	0	0
14	Ryan Hurley	31	Development	2020-01-01	2	Aqualis	96772	4	0	0
15	Bernard Bennett	46	Development	2017-01-01	19	Zebronia	124922	2	0	0
16	Terry Miller	60	Development	2021-01-01	19	Nirvon	127488	3	0	0
17	Denise Singh	34	Development	2011-01-01	8	Vantor	99611	3	0	0
18	Angela Scott DDS	40	Support	2013-01-01	16	Aqualis	108005	4	0	4
19	Robert Baker	34	Sales	2021-01-01	9	Drogol	112407	2	65978	0
20	Miguel Garrett	56	Operations	2016-01-01	14	Arkalon	107100	3	0	0
21	Pamela Moses	37	Marketing	2023-01-01	8	Aqualis	91684	3	0	0
22	Tommy Ward	27	Development	2013-01-01	4	Lumeria	105106	5	0	0
23	Keith Holden	54	Development	2025-01-01	11	Xentara	94900	2	0	0
24	Robert Martin	57	Development	2013-01-01	13	Utopia	127452	5	0	0
25	Melissa Hamilton	44	Support	2018-01-01	13	Aqualis	87598	2	0	2
26	Sarah Turner	36	Operations	2018-01-01	4	Vantor	95341	5	0	0
27	Craig Russell	44	Support	2012-01-01	7	Zebronia	78382	1	0	1
28	Victoria Porter	52	Marketing	2010-01-01	20	Nirvon	110286	2	0	0
29	Craig Sampson	35	Leadership	2018-01-01	9	Vantor	267436	2	0	0
30	Michael Howard	29	Operations	2011-01-01	7	Zebronia	100348	5	0	0
31	Sean Sampson	42	Leadership	2010-01-01	2	Nirvon	500000	3	0	0
32	Clayton Singh	52	Support	2013-01-01	18	Vantor	92054	2	0	3
33	Joshua Wilkins	37	Sales	2023-01-01	14	Nirvon	110795	3	65708	0
34	Carl Arnold	33	Operations	2018-01-01	9	Aqualis	93019	2	0	0
35	Jessica Williams	52	Operations	2010-01-01	14	Drogol	120142	5	0	0
36	Crystal Baker	36	Development	2017-01-01	7	Arkalon	103335	4	0	0
37	Keith Ellis	31	Support	2025-01-01	8	Arkalon	82524	2	0	3
38	Ashley Matthews	42	Sales	2016-01-01	19	Arkalon	109894	2	62719	0
39	Carolyn Rodriguez	46	Development	2010-01-01	9	Lumeria	109444	5	0	0
40	Susan Pearson	40	Marketing	2026-01-01	7	Drogol	82313	4	0	0
41	Jody Glenn	39	Support	2011-01-01	5	Nirvon	92524	2	0	3
42	Angela Brown	56	Operations	2016-01-01	15	Arkalon	110575	3	0	0
43	Amanda Glover	58	Development	2023-01-01	16	Xentara	112297	3	0	0
44	Daniel House	44	Operations	2026-01-01	14	Drogol	95512	3	0	0
45	Lindsay Griffith	42	Development	2023-01-01	6	Utopia	91936	2	0	0
46	Austin Dougherty	52	Operations	2019-01-01	18	Zebronia	112442	2	0	0
47	Catherine Fitzgerald	42	Support	2020-01-01	7	Utopia	76566	1	0	1
48	Frank Chavez	52	Sales	2010-01-01	10	Drogol	160642	5	130913	0
49	Danielle Duran	33	Operations	2024-01-01	5	Aqualis	95326	5	0	0
50	James Scott	49	Development	2016-01-01	7	Utopia	97123	3	0	0
51	Eric Bass	28	Development	2026-01-01	2	Zebronia	78219	4	0	0
52	Lisa Moore	46	Development	2019-01-01	13	Zebronia	109296	2	0	0
53	Cheryl Hall	46	Sales	2014-01-01	1	Zebronia	146839	4	115963	0
54	Mark Ortiz	49	Support	2023-01-01	6	Utopia	90718	3	0	3
55	Jorge Bowen	30	Development	2024-01-01	2	Drogol	86766	4	0	0
56	Jordan Thompson	33	Operations	2025-01-01	11	Utopia	90499	3	0	0
57	Walter Lloyd	49	Development	2022-01-01	4	Utopia	95293	4	0	0
58	Christine Willis	41	Operations	2023-01-01	15	Vantor	111960	4	0	0
59	Cynthia Mitchell	45	Marketing	2022-01-01	15	Lumeria	101543	5	0	0
60	Virginia Taylor	32	Sales	2023-01-01	7	Vantor	117956	2	75608	0
61	Anthony Hines	62	Development	2024-01-01	19	Lumeria	129152	4	0	0
62	Meagan Wilkins	55	Leadership	2012-01-01	15	Arkalon	500000	3	0	0
63	Erica Lopez	42	Development	2020-01-01	10	Zebronia	119960	5	0	0
64	Stephen Landry	54	Sales	2012-01-01	16	Kaldora	118371	3	68153	0
65	Nicole Smith	44	Support	2011-01-01	6	Vantor	86753	2	0	2
66	Jeanne Thomas	57	Sales	2010-01-01	20	Nirvon	114886	3	61356	0
67	Michelle Long	29	Operations	2020-01-01	7	Kaldora	89497	2	0	0
68	Brandon Boyd	46	Development	2018-01-01	15	Vantor	115649	2	0	0
69	Christopher Williams	43	Sales	2022-01-01	13	Kaldora	107357	2	71090	0
70	Kyle Guzman	55	Operations	2021-01-01	17	Drogol	112326	3	0	0
71	Dr. Nancy Lopez	48	Support	2024-01-01	12	Kaldora	70679	1	0	1
72	Brenda Davis	49	Support	2017-01-01	13	Utopia	107815	4	0	4
73	Willie Mercer	46	Support	2017-01-01	11	Aqualis	97129	3	0	3
74	Christopher Madden Jr.	40	Operations	2022-01-01	7	Zebronia	85974	3	0	0
75	Brandy Webster	46	Support	2010-01-01	8	Drogol	88383	2	0	2
76	Jennifer Graham	60	Marketing	2019-01-01	18	Aqualis	107216	2	0	0
77	Jessica Jenkins	52	Operations	2025-01-01	14	Kaldora	104847	5	0	0
78	James Hebert	48	Development	2016-01-01	20	Zebronia	137158	5	0	0
79	Scott Kim	59	Development	2024-01-01	18	Zebronia	131825	5	0	0
80	Cristina Burke	36	Operations	2018-01-01	8	Nirvon	92044	2	0	0
81	Kevin Scott DVM	54	Development	2011-01-01	11	Zebronia	113349	4	0	0
82	Cheyenne Williams	47	Development	2016-01-01	13	Arkalon	127686	5	0	0
83	Dustin Kaufman	52	Development	2018-01-01	14	Xentara	114753	3	0	0
84	Christopher Hernandez	41	Support	2022-01-01	14	Nirvon	91990	4	0	3
85	Mary Flores	38	Support	2014-01-01	2	Aqualis	107645	4	0	3
86	Misty Williams	29	Sales	2017-01-01	5	Zebronia	135325	3	100261	0
87	Miranda Gordon	57	Support	2010-01-01	17	Nirvon	82024	2	0	1
88	Tammy Wood	42	Development	2012-01-01	16	Kaldora	119623	3	0	0
89	Wesley Baxter	54	Sales	2021-01-01	19	Kaldora	87535	1	29328	0
90	Alan Weaver	41	Support	2021-01-01	11	Kaldora	93355	2	0	3
91	Dillon Fox	45	Leadership	2015-01-01	17	Zebronia	274840	5	0	0
92	Cassandra Ingram	48	Development	2015-01-01	18	Lumeria	125298	3	0	0
93	Whitney White	37	Development	2017-01-01	13	Arkalon	117707	4	0	0
94	Barbara Vargas	28	Sales	2016-01-01	4	Utopia	143275	3	113820	0
95	Peter Green	57	Development	2012-01-01	17	Drogol	129075	5	0	0
96	Stephanie Armstrong	54	Marketing	2014-01-01	13	Utopia	96771	2	0	0
97	Denise Walker	58	Operations	2026-01-01	18	Kaldora	100032	2	0	0
98	Sandra Castro	47	Support	2012-01-01	7	Arkalon	114619	5	0	5
99	Andrea Leonard	29	Support	2026-01-01	1	Nirvon	79284	3	0	2
100	Joseph Crosby	47	Operations	2021-01-01	16	Nirvon	107603	2	0	0
101	Samantha Ellis	51	Support	2025-01-01	20	Lumeria	76609	2	0	2
102	Katherine Lewis	37	Development	2015-01-01	6	Arkalon	94065	3	0	0
103	Eric Duncan	58	Development	2012-01-01	14	Kaldora	115029	3	0	0
104	Carla Rios	33	Development	2019-01-01	4	Vantor	96663	5	0	0
105	Jeremy Ross	24	Operations	2019-01-01	2	Drogol	82264	3	0	0
106	Mary Johnson	47	Development	2013-01-01	12	Aqualis	108095	2	0	0
107	Leslie Martin	36	Development	2025-01-01	6	Drogol	85167	3	0	0
108	Troy Gordon	37	Marketing	2019-01-01	12	Drogol	109448	4	0	0
109	Elaine Benson	36	Support	2019-01-01	7	Utopia	102636	3	0	4
110	Jacqueline Ford MD	50	Development	2010-01-01	12	Aqualis	110178	3	0	0
111	Jimmy Hansen	29	Support	2012-01-01	6	Lumeria	82177	2	0	1
112	Brandon Farley	26	Development	2023-01-01	4	Aqualis	80640	2	0	0
113	James Cannon	56	Development	2016-01-01	18	Vantor	129648	4	0	0
114	Dwayne Ortiz	30	Development	2014-01-01	3	Vantor	85280	2	0	0
115	Kaitlyn Wiggins	25	Support	2025-01-01	3	Zebronia	91613	3	0	4
116	Travis Owen	39	Leadership	2019-01-01	15	Arkalon	500000	3	0	0
117	Kimberly Shelton	43	Sales	2024-01-01	13	Arkalon	107779	2	74080	0
118	Amy Morgan	56	Operations	2013-01-01	12	Xentara	102580	3	0	0
119	Sarah Hart	45	Development	2018-01-01	3	Lumeria	85033	2	0	0
120	Gregory Romero	33	Development	2018-01-01	9	Zebronia	99362	2	0	0
121	Jeffrey Hart	39	Development	2022-01-01	12	Vantor	110341	3	0	0
122	Michael Burton	49	Operations	2017-01-01	7	Aqualis	93394	3	0	0
123	John Salazar	57	Support	2016-01-01	17	Lumeria	87561	2	0	2
124	Christine Phillips	31	Development	2013-01-01	6	Arkalon	100464	4	0	0
125	Christopher Rogers	29	Sales	2023-01-01	3	Kaldora	125066	2	89781	0
126	John Harrison	45	Support	2017-01-01	8	Nirvon	96837	3	0	3
127	Peter Lopez	45	Operations	2016-01-01	7	Utopia	99019	5	0	0
128	Louis Jennings	42	Marketing	2013-01-01	12	Arkalon	103024	4	0	0
129	Mark Frank	39	Development	2017-01-01	9	Kaldora	114361	4	0	0
130	Joshua Espinoza DDS	27	Development	2010-01-01	2	Drogol	82169	2	0	0
131	Charles Mcdonald	46	Marketing	2015-01-01	2	Drogol	79132	3	0	0
132	Heather David	54	Development	2014-01-01	9	Utopia	114929	4	0	0
133	Dylan Owen	34	Marketing	2025-01-01	4	Nirvon	76521	4	0	0
134	Laura Hurley	34	Support	2018-01-01	8	Zebronia	85550	1	0	2
135	Scott Archer	35	Leadership	2026-01-01	3	Xentara	258291	3	0	0
136	Steven Campbell	31	Operations	2025-01-01	8	Utopia	84146	3	0	0
137	Ashley Dixon	27	Marketing	2018-01-01	3	Zebronia	83110	3	0	0
138	Lisa Mosley	54	Operations	2022-01-01	10	Utopia	100868	5	0	0
139	Theresa Mcguire	51	Development	2018-01-01	8	Lumeria	107111	5	0	0
140	Nicole Peterson	46	Support	2017-01-01	12	Utopia	102689	3	0	4
141	Steven Hawkins	46	Support	2022-01-01	19	Aqualis	99047	4	0	4
142	Mia Vargas	52	Leadership	2024-01-01	8	Kaldora	266751	5	0	0
143	Selena Burton	46	Support	2020-01-01	14	Nirvon	119233	4	0	5
144	Cody Forbes	49	Marketing	2010-01-01	20	Aqualis	110002	2	0	0
145	Christina Baker	48	Development	2011-01-01	3	Arkalon	102443	5	0	0
146	Joyce Williams	39	Development	2022-01-01	16	Drogol	116901	2	0	0
147	Sandra Armstrong	46	Support	2021-01-01	9	Drogol	111888	4	0	4
148	Michael Hunt	51	Sales	2023-01-01	19	Xentara	130406	4	97435	0
149	Tiffany Thornton	35	Support	2012-01-01	13	Utopia	92066	2	0	3
150	David Lawson	43	Development	2017-01-01	6	Zebronia	101846	5	0	0
151	Briana Powell	38	Operations	2015-01-01	10	Drogol	100595	3	0	0
152	Nicholas Taylor	41	Development	2017-01-01	3	Xentara	88272	3	0	0
153	Christopher Bell	33	Development	2025-01-01	7	Utopia	91509	4	0	0
154	Darren Duncan	28	Support	2011-01-01	3	Xentara	77973	1	0	1
155	Jennifer Green	54	Support	2019-01-01	16	Xentara	112860	4	0	5
156	Robert Ellis	38	Development	2023-01-01	14	Drogol	112056	4	0	0
157	Richard Olson	52	Development	2016-01-01	17	Zebronia	120402	2	0	0
158	Ian Moody	37	Sales	2015-01-01	3	Aqualis	99303	2	44516	0
159	Thomas Ray	40	Marketing	2023-01-01	4	Nirvon	90835	5	0	0
160	James Daniel	33	Operations	2025-01-01	8	Arkalon	87226	4	0	0
161	Tonya Spencer	45	Marketing	2011-01-01	19	Drogol	107117	2	0	0
162	Patrick Shaw	31	Sales	2018-01-01	7	Xentara	123383	3	75147	0
163	Alexander Davis	47	Development	2012-01-01	14	Vantor	126972	4	0	0
164	Jessica Pitts	51	Sales	2016-01-01	18	Kaldora	84295	1	21718	0
165	David Simpson	41	Sales	2023-01-01	1	Vantor	139920	4	112376	0
166	Kendra Thompson	56	Operations	2025-01-01	12	Utopia	99408	5	0	0
167	Mary Aguilar	64	Development	2024-01-01	19	Nirvon	123475	4	0	0
168	Scott Edwards	48	Development	2010-01-01	4	Nirvon	94584	4	0	0
169	Joseph Kerr	61	Development	2019-01-01	20	Nirvon	129810	3	0	0
170	Jason Ochoa	38	Support	2023-01-01	14	Kaldora	87070	2	0	3
171	Shannon Hubbard	42	Marketing	2020-01-01	10	Aqualis	93150	2	0	0
172	Vincent Cunningham	62	Sales	2013-01-01	18	Nirvon	154210	4	126998	0
173	Angel Weber	45	Operations	2024-01-01	4	Arkalon	76524	3	0	0
174	Natalie Robinson	49	Development	2022-01-01	10	Vantor	102299	2	0	0
175	Douglas Davies	46	Operations	2023-01-01	8	Nirvon	101992	5	0	0
176	Patricia Bright	57	Operations	2012-01-01	20	Drogol	115952	2	0	0
177	Laurie Gutierrez	27	Sales	2012-01-01	1	Nirvon	138331	3	102434	0
178	Jesse Green	34	Operations	2017-01-01	1	Xentara	77341	2	0	0
179	Casey Alexander	36	Operations	2024-01-01	13	Zebronia	100375	2	0	0
180	Mr. William Kane	32	Operations	2015-01-01	1	Kaldora	76739	2	0	0
181	Brandon Fitzpatrick	27	Operations	2012-01-01	3	Vantor	84121	3	0	0
182	Alejandra Becker	42	Development	2016-01-01	4	Vantor	87510	2	0	0
183	John Bennett	29	Operations	2020-01-01	7	Arkalon	101640	4	0	0
184	Stacey White	33	Support	2017-01-01	5	Lumeria	82377	2	0	1
185	Richard Lucas	47	Operations	2013-01-01	4	Aqualis	90427	4	0	0
186	Frederick Daniels	45	Marketing	2023-01-01	20	Vantor	109787	2	0	0
187	Gabriela Crawford	35	Support	2019-01-01	11	Kaldora	98392	3	0	3
188	Audrey Allen	53	Operations	2024-01-01	11	Nirvon	102386	4	0	0
189	April Manning	43	Support	2014-01-01	8	Lumeria	89555	3	0	2
190	Donna Vasquez	49	Development	2012-01-01	10	Arkalon	119742	5	0	0
191	Johnny Harrington	49	Development	2016-01-01	11	Xentara	105467	2	0	0
192	James Rocha	33	Development	2015-01-01	9	Kaldora	99427	2	0	0
193	Jacob Proctor	49	Marketing	2011-01-01	19	Drogol	111563	3	0	0
194	Christina Day	42	Development	2024-01-01	18	Drogol	120047	4	0	0
195	Andrew Valencia	52	Marketing	2021-01-01	14	Xentara	101807	3	0	0
196	Charles Bean	43	Operations	2013-01-01	7	Aqualis	89072	2	0	0
197	Howard Wilson	43	Operations	2012-01-01	16	Xentara	125096	5	0	0
198	Christina Small	32	Operations	2012-01-01	9	Zebronia	97013	3	0	0
199	Bridget Shea	33	Operations	2013-01-01	2	Vantor	82181	3	0	0
200	Donna Bell	39	Support	2013-01-01	13	Utopia	85222	1	0	2
201	Sara Pollard	46	Sales	2019-01-01	11	Xentara	132526	3	94504	0
202	Stephanie Schmitt	36	Operations	2012-01-01	11	Lumeria	104697	4	0	0
203	Anne Peterson	43	Development	2015-01-01	12	Aqualis	109800	3	0	0
204	Michael Smith	33	Operations	2026-01-01	3	Zebronia	73479	3	0	0
205	Mark Johns	31	Development	2012-01-01	9	Vantor	117114	5	0	0
206	Sherry Cole	43	Operations	2026-01-01	6	Utopia	74244	2	0	0
207	Denise Cunningham DDS	42	Operations	2017-01-01	9	Xentara	97998	3	0	0
208	Karen Alvarez	60	Operations	2018-01-01	18	Aqualis	111983	2	0	0
209	Barbara Brooks	53	Sales	2011-01-01	16	Kaldora	158329	4	132746	0
210	Justin Jimenez	56	Development	2020-01-01	16	Kaldora	127841	5	0	0
211	Deborah Russell	43	Operations	2011-01-01	11	Aqualis	100715	3	0	0
212	Amber Pierce	45	Support	2013-01-01	12	Xentara	88281	2	0	2
213	Jerry Church	47	Development	2018-01-01	10	Lumeria	110879	4	0	0
214	Tony Weaver	24	Development	2023-01-01	1	Zebronia	83475	3	0	0
215	Sherri Moreno	45	Development	2022-01-01	15	Xentara	115754	2	0	0
216	Carolyn Williams	50	Operations	2021-01-01	15	Nirvon	115773	5	0	0
217	Melissa Goodman	34	Marketing	2023-01-01	4	Arkalon	88082	4	0	0
218	Angela Moore	29	Sales	2023-01-01	4	Aqualis	151547	4	135492	0
219	Ann Morris	46	Development	2026-01-01	13	Kaldora	105911	4	0	0
220	Christopher Brady	51	Operations	2020-01-01	9	Vantor	99901	4	0	0
221	Jacob Garrison	33	Marketing	2015-01-01	10	Nirvon	95732	3	0	0
222	Michelle Wilkinson	25	Development	2014-01-01	1	Zebronia	80442	2	0	0
223	Wendy Taylor	41	Development	2016-01-01	5	Vantor	90514	2	0	0
224	Christopher Marshall	49	Development	2024-01-01	16	Drogol	111603	3	0	0
225	Madison Moreno	57	Sales	2017-01-01	18	Kaldora	118278	3	69097	0
226	Alyssa Fernandez	62	Development	2020-01-01	20	Zebronia	138178	5	0	0
227	Paula Martinez	44	Development	2018-01-01	2	Zebronia	91978	5	0	0
228	Melissa Johnson	45	Sales	2020-01-01	19	Vantor	152714	4	111697	0
229	Jeffrey Owens	35	Development	2014-01-01	3	Zebronia	99662	4	0	0
230	Melissa Martinez	57	Support	2021-01-01	14	Kaldora	112613	4	0	4
231	Crystal Elliott	55	Support	2025-01-01	10	Drogol	101897	4	0	5
232	Marcus Mendez	51	Sales	2026-01-01	19	Arkalon	127595	3	106953	0
233	Collin Parks	53	Development	2018-01-01	15	Utopia	122813	4	0	0
234	Victoria Valdez	39	Development	2025-01-01	7	Aqualis	92710	4	0	0
235	James Morgan	43	Development	2019-01-01	8	Drogol	98383	2	0	0
236	Deborah Davis	53	Sales	2010-01-01	18	Aqualis	156659	4	118274	0
237	Connor Terry	46	Support	2012-01-01	19	Kaldora	109691	5	0	4
238	Katherine Delgado	51	Sales	2022-01-01	16	Zebronia	90201	1	45510	0
239	Stephanie Taylor	41	Development	2016-01-01	8	Xentara	98391	2	0	0
240	Kyle Orr	61	Support	2021-01-01	20	Zebronia	86945	2	0	2
241	Juan Armstrong	60	Development	2019-01-01	20	Kaldora	126538	2	0	0
242	Mrs. Ashley Brown	34	Sales	2025-01-01	10	Lumeria	118088	3	83234	0
243	Mr. Tony Cunningham	41	Support	2015-01-01	13	Lumeria	112957	4	0	5
244	Kevin Adams	32	Support	2017-01-01	5	Xentara	111912	4	0	5
245	Briana Perry	54	Leadership	2022-01-01	20	Lumeria	500000	3	0	0
246	Crystal Baxter	53	Support	2023-01-01	19	Utopia	112595	4	0	5
247	Nancy Smith	48	Support	2021-01-01	9	Lumeria	117886	5	0	4
248	Alicia Rangel	47	Development	2016-01-01	17	Arkalon	119965	2	0	0
249	Jorge Perez	42	Marketing	2017-01-01	3	Aqualis	95538	5	0	0
250	Michael Moore	45	Operations	2018-01-01	4	Zebronia	98032	4	0	0
251	John Robinson	52	Development	2023-01-01	20	Aqualis	130287	3	0	0
252	Brandon Short	46	Marketing	2022-01-01	19	Arkalon	111748	3	0	0
253	Jennifer Murphy	49	Marketing	2013-01-01	4	Drogol	96822	5	0	0
254	Jeremy Hurley	48	Operations	2016-01-01	20	Arkalon	115510	2	0	0
255	Shane Peterson	48	Operations	2012-01-01	3	Lumeria	87348	4	0	0
256	Susan Smith	42	Marketing	2025-01-01	17	Drogol	104479	5	0	0
257	Julie Williams	40	Operations	2019-01-01	3	Aqualis	82507	2	0	0
258	Theresa Mcintyre	55	Operations	2016-01-01	20	Aqualis	119350	3	0	0
259	Andrea Baldwin	52	Development	2022-01-01	10	Xentara	108141	5	0	0
260	James Martin	27	Development	2020-01-01	3	Lumeria	88059	3	0	0
261	Katherine Chen	38	Sales	2021-01-01	7	Arkalon	164254	5	138054	0
262	Timothy Dougherty	58	Development	2013-01-01	18	Vantor	140479	5	0	0
263	Tyler Thomas	30	Development	2022-01-01	6	Zebronia	91600	2	0	0
264	Ricky Galvan	47	Support	2011-01-01	16	Arkalon	78096	1	0	1
265	Sabrina Mills	46	Development	2024-01-01	13	Arkalon	107842	4	0	0
266	Robert Cook	53	Development	2019-01-01	17	Nirvon	121946	3	0	0
267	Jared Black	31	Sales	2016-01-01	8	Drogol	138360	4	96092	0
268	Lisa Morales	45	Development	2023-01-01	17	Aqualis	119264	2	0	0
269	Amy Farrell	52	Leadership	2013-01-01	19	Arkalon	500000	4	0	0
270	Peter Klein	44	Support	2018-01-01	2	Arkalon	85275	1	0	2
271	Kevin Lopez	46	Sales	2023-01-01	15	Vantor	96931	1	57551	0
272	Amanda Moore	30	Operations	2012-01-01	7	Vantor	89419	2	0	0
273	Kimberly Stephens	25	Operations	2020-01-01	3	Xentara	95782	4	0	0
274	Thomas Wagner	57	Development	2015-01-01	16	Zebronia	127188	5	0	0
275	Laurie Lee	53	Operations	2018-01-01	19	Vantor	118055	3	0	0
276	Erin Contreras	53	Development	2016-01-01	19	Zebronia	141805	5	0	0
277	David Dyer	37	Leadership	2019-01-01	5	Utopia	500000	3	0	0
278	Mark Powers	43	Operations	2012-01-01	5	Aqualis	91914	4	0	0
279	Keith Hines	52	Development	2024-01-01	9	Xentara	103080	5	0	0
280	Jessica Trujillo	48	Operations	2021-01-01	6	Xentara	104521	5	0	0
281	Laurie Bailey	41	Marketing	2010-01-01	7	Kaldora	95789	5	0	0
282	Karen Greer	31	Support	2015-01-01	4	Utopia	118119	5	0	4
283	Albert Davies	44	Marketing	2021-01-01	16	Kaldora	117613	4	0	0
284	Brooke Newman	41	Operations	2025-01-01	13	Kaldora	102515	5	0	0
285	Sheila Mcintosh	35	Operations	2012-01-01	3	Nirvon	94149	4	0	0
286	Mrs. Carla Anderson MD	49	Development	2016-01-01	16	Aqualis	119030	3	0	0
287	Janice Gibson	39	Operations	2018-01-01	16	Xentara	114699	4	0	0
288	Kimberly Perry	41	Sales	2024-01-01	18	Kaldora	82947	1	32277	0
289	Francisco Bryant	57	Marketing	2017-01-01	12	Nirvon	102534	4	0	0
290	Samuel Pope	43	Development	2017-01-01	16	Utopia	118180	2	0	0
291	Christian Parsons	59	Development	2017-01-01	20	Xentara	142677	4	0	0
292	Charles Jones	24	Sales	2017-01-01	1	Xentara	116664	3	65357	0
293	Robin Francis	39	Development	2019-01-01	2	Vantor	100565	5	0	0
294	Christopher Woods	49	Sales	2015-01-01	16	Arkalon	87286	1	28457	0
295	James Reed	41	Development	2024-01-01	10	Nirvon	100926	2	0	0
296	Derrick Cochran	35	Development	2014-01-01	9	Aqualis	114557	4	0	0
297	Heather Miller	34	Sales	2012-01-01	9	Lumeria	144225	3	119450	0
298	Benjamin Day	37	Marketing	2015-01-01	5	Drogol	99608	5	0	0
299	William Gonzales	31	Development	2014-01-01	4	Vantor	89321	3	0	0
300	Amanda Hogan	46	Operations	2010-01-01	3	Arkalon	93113	5	0	0
301	Michael Hawkins	47	Marketing	2013-01-01	9	Vantor	93465	3	0	0
302	Jesse Olson	46	Operations	2011-01-01	10	Zebronia	100779	3	0	0
303	Sarah Abbott	48	Sales	2021-01-01	8	Utopia	145447	3	118452	0
304	Paul Cooper	40	Operations	2016-01-01	4	Xentara	94991	5	0	0
305	Victor Smith	49	Sales	2017-01-01	4	Vantor	93110	2	30945	0
306	Matthew Wise	39	Sales	2014-01-01	4	Nirvon	155713	4	130321	0
307	Mia Davis	45	Support	2015-01-01	9	Zebronia	78410	1	0	1
308	Lori Pacheco	57	Development	2015-01-01	16	Arkalon	131941	4	0	0
309	Amanda Mathews	51	Marketing	2010-01-01	14	Utopia	103138	3	0	0
310	Lauren Wise	54	Development	2014-01-01	15	Drogol	125175	5	0	0
311	Michele Mcintosh	30	Support	2021-01-01	2	Nirvon	102742	3	0	4
312	Eugene Martin	58	Support	2026-01-01	16	Vantor	67389	1	0	1
313	Nathaniel Johnson	61	Development	2016-01-01	18	Aqualis	125522	3	0	0
314	Robert Cohen	42	Marketing	2010-01-01	2	Kaldora	84284	4	0	0
315	Debra Alvarado	51	Sales	2011-01-01	19	Zebronia	160932	5	127813	0
316	Nichole Foster	57	Sales	2019-01-01	19	Xentara	118326	3	68779	0
317	George Harrison	53	Sales	2025-01-01	20	Nirvon	155751	5	138595	0
318	Shannon Lambert	38	Operations	2024-01-01	11	Kaldora	95778	2	0	0
319	James Johnson	59	Development	2011-01-01	18	Xentara	122617	2	0	0
320	Timothy Kelly	42	Support	2023-01-01	19	Nirvon	99919	4	0	3
321	Kevin Reyes	42	Marketing	2011-01-01	14	Utopia	114050	5	0	0
322	Angela Humphrey	50	Marketing	2015-01-01	19	Drogol	125985	5	0	0
323	Donna Adams	56	Marketing	2016-01-01	12	Vantor	95387	2	0	0
324	Melinda Sanchez	50	Operations	2022-01-01	18	Zebronia	115312	5	0	0
325	Jason Miranda	56	Development	2019-01-01	19	Nirvon	140421	4	0	0
326	Lydia Wong	56	Development	2021-01-01	19	Xentara	135410	5	0	0
327	Jose Diaz	42	Sales	2023-01-01	12	Utopia	80648	1	25820	0
328	Kristina Burton	42	Support	2019-01-01	20	Vantor	97527	3	0	3
329	Joseph Cook	39	Operations	2021-01-01	9	Arkalon	110473	5	0	0
330	Amanda Mccoy	55	Sales	2025-01-01	14	Zebronia	88161	2	39531	0
331	Joe Long	60	Support	2018-01-01	19	Nirvon	86791	2	0	2
332	Kevin Clark	43	Support	2026-01-01	3	Kaldora	84106	3	0	3
333	Daniel Richmond	26	Marketing	2011-01-01	3	Utopia	82818	3	0	0
334	James Blackwell	40	Marketing	2024-01-01	3	Xentara	78051	2	0	0
335	Ronald Mcclain	48	Development	2013-01-01	20	Zebronia	128361	2	0	0
336	Krystal Lopez	46	Development	2013-01-01	7	Lumeria	109029	4	0	0
337	Timothy Gomez	38	Operations	2017-01-01	5	Aqualis	99711	4	0	0
338	Edwin Gallegos	54	Development	2020-01-01	9	Arkalon	106517	4	0	0
339	Jennifer Rodriguez	54	Support	2013-01-01	12	Drogol	102939	3	0	4
340	Scott Clark	54	Support	2023-01-01	20	Kaldora	113104	4	0	5
341	Laura Hernandez	50	Marketing	2013-01-01	6	Kaldora	84923	2	0	0
342	Brian Martinez	58	Sales	2022-01-01	13	Kaldora	125544	2	85923	0
343	Samuel Mitchell	31	Development	2013-01-01	2	Drogol	92120	5	0	0
344	Edward Watson	49	Support	2022-01-01	5	Aqualis	83385	2	0	1
345	Dustin Welch	30	Sales	2017-01-01	3	Aqualis	144893	4	98804	0
346	Kathleen Brewer	48	Sales	2016-01-01	3	Arkalon	120901	3	72319	0
347	Nicole Everett	42	Marketing	2021-01-01	15	Nirvon	104463	3	0	0
348	Rebecca Harrison	55	Support	2016-01-01	11	Kaldora	100023	4	0	3
349	Diana Luna	39	Development	2017-01-01	8	Drogol	114566	5	0	0
350	Allison Donovan	40	Support	2024-01-01	13	Xentara	70566	1	0	1
351	Lance Lucero	50	Development	2024-01-01	11	Vantor	95344	2	0	0
352	Blake Li	43	Sales	2023-01-01	11	Kaldora	162944	5	134663	0
353	Kimberly Miller	30	Development	2023-01-01	3	Xentara	90760	5	0	0
354	Walter Elliott	41	Development	2010-01-01	1	Lumeria	97413	5	0	0
355	Christine Newton	37	Support	2011-01-01	4	Arkalon	98123	3	0	3
356	Allen Henry	51	Marketing	2012-01-01	13	Nirvon	109937	4	0	0
357	Autumn Skinner	48	Sales	2016-01-01	5	Lumeria	119742	3	72336	0
358	Keith Smith	38	Support	2011-01-01	13	Kaldora	122762	5	0	5
359	David Mullen	59	Development	2025-01-01	14	Arkalon	102212	2	0	0
360	Christopher Moyer	39	Support	2023-01-01	5	Aqualis	85693	1	0	2
361	Brandy Lindsey	45	Marketing	2017-01-01	12	Xentara	112537	5	0	0
362	Kimberly Mendoza	47	Operations	2016-01-01	20	Zebronia	122234	4	0	0
363	Ariana Frank	45	Marketing	2013-01-01	3	Zebronia	94683	5	0	0
364	Robert Ramirez	39	Operations	2021-01-01	11	Zebronia	114154	5	0	0
365	Daniel Kim	35	Development	2013-01-01	8	Utopia	99556	3	0	0
366	Taylor Hartman	62	Support	2014-01-01	18	Xentara	93339	2	0	3
367	Eric Gomez	35	Development	2012-01-01	10	Utopia	102216	2	0	0
368	James Williams	35	Development	2012-01-01	3	Lumeria	103251	5	0	0
369	Kelsey Byrd	32	Development	2017-01-01	1	Drogol	80254	2	0	0
370	Mrs. Laura Russell	42	Support	2018-01-01	16	Nirvon	116537	5	0	4
371	Brittney Robinson	39	Sales	2013-01-01	7	Drogol	147036	4	102729	0
372	Jeffrey Hall	29	Development	2012-01-01	5	Nirvon	92457	3	0	0
373	Mark Grant	30	Operations	2012-01-01	5	Nirvon	93496	4	0	0
374	Charles Munoz	44	Operations	2023-01-01	10	Drogol	99161	5	0	0
375	Lisa Ramirez	60	Sales	2017-01-01	19	Utopia	121885	2	85016	0
376	Matthew Reynolds	51	Sales	2023-01-01	10	Nirvon	116976	2	88763	0
377	Lisa Wright	48	Marketing	2013-01-01	7	Utopia	103337	5	0	0
378	Mary Anderson	41	Operations	2012-01-01	2	Lumeria	79466	2	0	0
379	Cassandra Johnson	40	Development	2010-01-01	17	Lumeria	119462	2	0	0
380	Peggy Solomon	38	Sales	2021-01-01	7	Vantor	102703	1	55883	0
381	Adam Adams	39	Development	2011-01-01	6	Nirvon	109839	5	0	0
382	Erin Alvarado	59	Marketing	2021-01-01	14	Lumeria	101830	3	0	0
383	Allison Hernandez	52	Marketing	2013-01-01	20	Arkalon	112808	3	0	0
384	Troy Mercer	48	Sales	2021-01-01	8	Zebronia	139939	4	99256	0
385	Danielle Garcia	53	Development	2011-01-01	8	Nirvon	112596	4	0	0
386	Kaitlyn Riggs	23	Development	2012-01-01	1	Lumeria	79819	2	0	0
387	Michael Smith	28	Operations	2020-01-01	4	Utopia	88472	3	0	0
388	Cody Robinson	44	Sales	2020-01-01	5	Drogol	145268	3	115988	0
389	Katherine Frost	56	Sales	2021-01-01	17	Kaldora	99235	2	43481	0
390	Andrew Bennett	33	Support	2017-01-01	6	Zebronia	115025	5	0	5
391	Vicki Browning	46	Operations	2026-01-01	1	Zebronia	72207	4	0	0
392	Robin Velazquez	33	Operations	2018-01-01	1	Xentara	94151	5	0	0
393	Roger Golden	47	Operations	2020-01-01	15	Xentara	119866	4	0	0
394	Kathy Jordan	40	Development	2018-01-01	12	Kaldora	106986	2	0	0
395	Timothy Humphrey	49	Development	2025-01-01	6	Kaldora	84657	3	0	0
396	Martin Lee III	55	Development	2021-01-01	14	Nirvon	119108	4	0	0
397	Peter Hill	36	Development	2010-01-01	9	Utopia	103357	3	0	0
398	Charles Morris	38	Operations	2012-01-01	12	Kaldora	109602	5	0	0
399	David Baker	51	Marketing	2015-01-01	10	Drogol	104430	4	0	0
400	Richard Fox	38	Operations	2013-01-01	16	Vantor	107996	2	0	0
401	Steven King	45	Support	2022-01-01	20	Arkalon	115326	5	0	5
402	Nicholas Williamson	45	Operations	2012-01-01	18	Zebronia	115039	3	0	0
403	Michael Lewis	48	Operations	2020-01-01	19	Arkalon	128225	4	0	0
404	Nicole Morgan	39	Sales	2012-01-01	15	Nirvon	114833	3	61040	0
405	Craig Murphy	37	Development	2015-01-01	11	Lumeria	112023	4	0	0
406	Monica Carpenter	51	Operations	2018-01-01	20	Nirvon	132104	5	0	0
407	Laura Bray	40	Marketing	2022-01-01	1	Vantor	73105	3	0	0
408	Joe Carr	47	Development	2019-01-01	7	Drogol	113079	5	0	0
409	Rebecca Russell	30	Marketing	2013-01-01	3	Drogol	79491	2	0	0
410	Geoffrey Gomez	39	Operations	2016-01-01	9	Vantor	109722	5	0	0
411	Maxwell Gonzalez	61	Development	2011-01-01	19	Drogol	142510	5	0	0
412	Travis Byrd	48	Development	2025-01-01	10	Utopia	99081	4	0	0
413	Wayne Griffin	37	Support	2020-01-01	15	Xentara	84162	1	0	2
414	Sarah Stein	35	Operations	2026-01-01	8	Nirvon	89396	5	0	0
415	Jeffrey Guzman	35	Support	2023-01-01	3	Aqualis	91559	4	0	3
416	William Price	50	Marketing	2012-01-01	12	Zebronia	102715	4	0	0
417	Steven Carter	37	Support	2019-01-01	9	Lumeria	89128	3	0	2
418	Eric Wagner	38	Development	2019-01-01	9	Xentara	107210	4	0	0
419	Martin Sanchez	48	Development	2010-01-01	19	Xentara	133351	4	0	0
420	Kyle Lara	25	Development	2016-01-01	1	Arkalon	80381	2	0	0
421	Alison Wright	34	Development	2026-01-01	10	Vantor	102895	5	0	0
422	Allison Herring	54	Development	2024-01-01	16	Nirvon	126623	5	0	0
423	Gregory Cannon DVM	30	Operations	2017-01-01	2	Zebronia	96978	5	0	0
424	Jason Miller	60	Operations	2021-01-01	16	Nirvon	107485	2	0	0
425	Christopher Miller	35	Operations	2012-01-01	3	Aqualis	100498	5	0	0
426	Stephen Johnson	58	Operations	2026-01-01	16	Aqualis	95284	2	0	0
427	Scott Henderson	33	Development	2021-01-01	6	Vantor	107985	4	0	0
428	Scott Harvey	55	Support	2020-01-01	20	Nirvon	113432	4	0	5
429	Patrick Williams	39	Sales	2013-01-01	1	Aqualis	120592	2	77257	0
430	Jeffery Ramos	35	Marketing	2013-01-01	3	Utopia	95087	5	0	0
431	Maria Aguilar	38	Operations	2020-01-01	15	Drogol	104361	2	0	0
432	Brandon Snyder	41	Sales	2026-01-01	8	Zebronia	91845	2	49507	0
433	Michael Obrien	25	Operations	2012-01-01	2	Aqualis	97867	5	0	0
434	Matthew Williams	28	Operations	2015-01-01	5	Zebronia	101653	5	0	0
435	Shirley Perez	53	Sales	2014-01-01	10	Zebronia	125352	3	81155	0
436	Mr. Joseph Mcclain	28	Operations	2015-01-01	2	Kaldora	79816	2	0	0
437	Jasmine Davis	54	Operations	2024-01-01	17	Zebronia	115096	4	0	0
438	Carlos Espinoza	58	Development	2018-01-01	18	Drogol	122942	2	0	0
439	Kimberly Thornton	43	Support	2010-01-01	9	Aqualis	106779	4	0	3
440	David Moreno	26	Development	2010-01-01	1	Aqualis	80628	2	0	0
441	Andrew Scott	48	Marketing	2016-01-01	16	Lumeria	117349	4	0	0
442	Melissa Montes	34	Sales	2020-01-01	8	Drogol	158235	4	132499	0
443	Lisa Wilkinson	37	Support	2025-01-01	5	Kaldora	75651	1	0	2
444	Shawn Marks	52	Development	2018-01-01	17	Utopia	130917	5	0	0
445	Alicia Molina	60	Development	2025-01-01	15	Drogol	113168	4	0	0
446	James Martinez	53	Support	2019-01-01	8	Vantor	87111	2	0	2
447	Amanda Chavez	36	Development	2023-01-01	9	Arkalon	94109	3	0	0
448	Melanie Blankenship	64	Development	2023-01-01	19	Zebronia	127751	3	0	0
449	Wesley Stewart	36	Operations	2022-01-01	3	Arkalon	74527	2	0	0
450	Jordan Wagner	50	Marketing	2024-01-01	19	Zebronia	115678	5	0	0
451	Lisa Estrada	62	Development	2019-01-01	18	Lumeria	130282	4	0	0
452	Denise Phillips	37	Support	2017-01-01	14	Lumeria	115791	5	0	5
453	Jennifer Brown	37	Marketing	2021-01-01	2	Utopia	76666	2	0	0
454	Eileen Williams	29	Support	2017-01-01	1	Nirvon	107301	4	0	3
455	Ricky Williams	29	Sales	2013-01-01	6	Aqualis	127799	3	85563	0
456	David Brennan	35	Sales	2026-01-01	12	Lumeria	95507	2	56215	0
457	Logan Carter	54	Sales	2010-01-01	16	Nirvon	137759	3	105806	0
458	Tamara Marshall	43	Operations	2019-01-01	16	Drogol	110773	3	0	0
459	Christopher Waller	50	Development	2024-01-01	13	Utopia	108268	4	0	0
460	Francisco Murphy	50	Sales	2015-01-01	14	Nirvon	162408	5	121272	0
461	Jorge Rosario	36	Operations	2010-01-01	11	Lumeria	113296	4	0	0
462	Jesse Armstrong	44	Development	2010-01-01	18	Drogol	124867	3	0	0
463	Rachel Green	35	Sales	2026-01-01	8	Vantor	91714	2	50034	0
464	Katie Hernandez	43	Operations	2016-01-01	15	Vantor	110360	3	0	0
465	Jessica Thomas	48	Development	2023-01-01	19	Lumeria	127190	3	0	0
466	Wendy Thompson	50	Development	2023-01-01	14	Kaldora	111718	4	0	0
467	Mary Garza	51	Operations	2020-01-01	18	Utopia	112702	2	0	0
468	Amanda Long	40	Marketing	2025-01-01	15	Utopia	92798	2	0	0
469	Oscar Thomas	55	Support	2010-01-01	15	Kaldora	82555	2	0	1
470	Courtney Hammond	41	Marketing	2021-01-01	6	Zebronia	87963	3	0	0
471	Charles Fleming	54	Development	2024-01-01	9	Kaldora	98107	4	0	0
472	Jason Smith	49	Marketing	2023-01-01	18	Arkalon	105651	4	0	0
473	Michelle Collins	40	Development	2026-01-01	1	Aqualis	67691	2	0	0
474	Daniel Jordan	51	Operations	2020-01-01	9	Kaldora	99088	4	0	0
475	Tiffany Henderson	38	Sales	2012-01-01	3	Nirvon	82004	1	20300	0
476	Laura Jackson	34	Sales	2025-01-01	8	Drogol	95249	2	50064	0
477	Jennifer Miller	47	Sales	2014-01-01	5	Vantor	129158	3	92171	0
478	Kayla Jones	57	Sales	2017-01-01	14	Lumeria	159990	4	139253	0
479	Michael Alexander	52	Development	2025-01-01	19	Utopia	125700	5	0	0
480	Timothy Brown	40	Development	2019-01-01	11	Aqualis	107159	3	0	0
481	Elizabeth Ruiz	45	Operations	2016-01-01	14	Aqualis	102719	2	0	0
482	Michelle Sanchez	32	Development	2010-01-01	2	Utopia	90228	4	0	0
483	Jennifer Bond	60	Development	2025-01-01	16	Xentara	115275	4	0	0
484	Christina Doyle	55	Support	2023-01-01	18	Zebronia	91942	2	0	3
485	Corey Jones	35	Marketing	2010-01-01	3	Nirvon	79181	2	0	0
486	Sharon Shannon	46	Operations	2014-01-01	8	Zebronia	102670	5	0	0
487	Donald Orr DVM	28	Marketing	2019-01-01	5	Lumeria	82767	2	0	0
488	Anne Simmons	29	Development	2013-01-01	1	Drogol	95122	4	0	0
489	Lisa Garcia	38	Marketing	2016-01-01	10	Zebronia	103292	5	0	0
490	Shawn Bush	44	Operations	2023-01-01	10	Drogol	99548	5	0	0
491	Christina Mckee	42	Development	2024-01-01	19	Drogol	127208	5	0	0
492	Brandon Morton	42	Development	2018-01-01	19	Arkalon	139999	4	0	0
493	Larry Johnson	35	Sales	2023-01-01	1	Vantor	124313	3	79421	0
494	Cheryl Gay	40	Development	2010-01-01	10	Aqualis	104442	3	0	0
495	Catherine Gilbert	41	Marketing	2021-01-01	17	Zebronia	106927	3	0	0
496	Amber Odonnell PhD	54	Marketing	2020-01-01	15	Nirvon	117411	5	0	0
497	Lisa Holt	39	Sales	2020-01-01	6	Arkalon	159774	4	123059	0
498	John Hartman	41	Development	2014-01-01	18	Utopia	125442	3	0	0
499	William Navarro	31	Support	2015-01-01	8	Kaldora	92213	2	0	3
500	Glenda Martin	43	Support	2018-01-01	18	Vantor	89095	3	0	2
501	Tina Nelson	41	Development	2011-01-01	5	Aqualis	93422	3	0	0
502	Raymond Lang	40	Sales	2011-01-01	10	Zebronia	122058	2	81626	0
503	Matthew Morris	46	Operations	2026-01-01	16	Zebronia	99482	3	0	0
504	Melissa Steele	42	Operations	2025-01-01	14	Kaldora	96708	3	0	0
505	Nancy Brooks	45	Support	2023-01-01	15	Xentara	84719	1	0	2
506	Mark Dougherty	46	Development	2026-01-01	3	Xentara	72219	2	0	0
507	John Bradley	48	Support	2023-01-01	17	Aqualis	78458	1	0	2
508	Janice Lopez	52	Development	2023-01-01	15	Nirvon	114633	2	0	0
509	Matthew Long	26	Marketing	2012-01-01	4	Nirvon	85775	3	0	0
510	Jessica Curtis	48	Sales	2012-01-01	7	Xentara	140642	3	109041	0
511	Jared Parker	43	Marketing	2021-01-01	4	Drogol	82414	2	0	0
512	James Brown	46	Operations	2012-01-01	5	Xentara	103038	5	0	0
513	Adam Morrison	46	Support	2022-01-01	19	Vantor	108351	4	0	4
514	Kristina Freeman	41	Development	2019-01-01	3	Nirvon	85603	2	0	0
515	Jennifer Davis	51	Development	2025-01-01	19	Arkalon	124147	5	0	0
516	Mark Smith	62	Operations	2018-01-01	19	Xentara	126522	4	0	0
517	Rachel Hanna	41	Sales	2021-01-01	13	Vantor	86846	1	29409	0
518	Herbert Joseph	44	Support	2013-01-01	20	Zebronia	85437	1	0	2
519	Michelle Coleman	55	Sales	2015-01-01	12	Lumeria	149438	4	117395	0
520	Valerie Munoz	48	Sales	2013-01-01	8	Zebronia	102803	2	49526	0
521	Bradley Johnson	43	Operations	2015-01-01	19	Kaldora	124723	5	0	0
522	Kari Moss	44	Marketing	2022-01-01	15	Xentara	109579	5	0	0
523	Lisa Powers	53	Operations	2013-01-01	18	Kaldora	117896	4	0	0
524	Colton Larson	51	Sales	2025-01-01	15	Zebronia	77887	1	26428	0
525	Jon Simmons	60	Development	2013-01-01	18	Arkalon	137834	4	0	0
526	Gerald Owens	56	Development	2017-01-01	20	Drogol	127832	2	0	0
527	Amanda Morris	52	Support	2025-01-01	18	Zebronia	104221	5	0	5
528	Tina Morris	34	Operations	2016-01-01	8	Lumeria	93240	2	0	0
529	Erica Johnson	49	Operations	2019-01-01	19	Vantor	127578	4	0	0
530	Keith Pratt	41	Development	2017-01-01	8	Drogol	114835	5	0	0
531	Patricia King	37	Operations	2015-01-01	15	Vantor	113249	4	0	0
532	Eric Johnson	40	Support	2018-01-01	5	Aqualis	78115	1	0	1
533	Shaun Huber	37	Development	2010-01-01	1	Xentara	82309	3	0	0
534	Thomas Perez	56	Development	2014-01-01	13	Xentara	110123	2	0	0
535	Christopher Rodriguez	32	Operations	2025-01-01	2	Utopia	80035	5	0	0
536	Jennifer Watson	30	Development	2012-01-01	8	Aqualis	100759	3	0	0
537	Theodore Solomon	36	Marketing	2020-01-01	7	Utopia	87806	2	0	0
538	Brandon Jones	52	Operations	2015-01-01	11	Xentara	112102	4	0	0
539	Tyler Hernandez	51	Development	2023-01-01	15	Kaldora	120016	5	0	0
540	Debbie Alexander MD	59	Support	2025-01-01	18	Kaldora	88207	3	0	3
541	James Williams	47	Sales	2016-01-01	13	Vantor	123404	2	85487	0
542	Mark Scott	48	Development	2010-01-01	11	Arkalon	122339	5	0	0
543	Matthew Harding	48	Development	2024-01-01	16	Zebronia	112823	3	0	0
544	Mr. Joshua Perry	46	Support	2011-01-01	12	Xentara	89419	3	0	2
545	Misty Chan	45	Operations	2018-01-01	6	Lumeria	87583	2	0	0
546	Blake Lopez	42	Marketing	2024-01-01	5	Vantor	84273	5	0	0
547	Glenn Carey	46	Development	2014-01-01	2	Xentara	96740	4	0	0
548	Thomas Graham	50	Support	2026-01-01	14	Kaldora	105927	5	0	5
549	Trevor Lyons	38	Sales	2012-01-01	12	Xentara	103446	2	49302	0
550	Evan Walters	47	Operations	2025-01-01	8	Lumeria	92989	5	0	0
551	Jonathan Skinner	32	Development	2010-01-01	4	Zebronia	104493	5	0	0
552	Annette Peterson	35	Support	2015-01-01	4	Zebronia	107244	4	0	3
553	Michael Lawson	38	Development	2018-01-01	12	Lumeria	118482	5	0	0
554	Melissa Moore	40	Marketing	2015-01-01	18	Aqualis	120197	4	0	0
555	Jennifer Johnson	51	Development	2013-01-01	14	Aqualis	128467	4	0	0
556	Russell Norman	34	Operations	2021-01-01	5	Aqualis	85979	2	0	0
557	Jade Craig	34	Development	2010-01-01	1	Kaldora	90965	5	0	0
558	James Turner	52	Support	2020-01-01	11	Zebronia	88256	2	0	2
559	John Kelley	43	Marketing	2020-01-01	14	Drogol	102276	3	0	0
560	Caroline Cruz	31	Operations	2011-01-01	7	Vantor	103434	4	0	0
561	Christopher Lee	35	Development	2011-01-01	13	Nirvon	112573	3	0	0
562	Maria Long	32	Support	2022-01-01	5	Lumeria	95301	3	0	4
563	Sarah Miller	42	Sales	2025-01-01	15	Zebronia	87441	2	38672	0
564	Michele Perry	46	Operations	2021-01-01	5	Lumeria	102970	5	0	0
565	Stacey Andrews	40	Marketing	2014-01-01	6	Xentara	92799	4	0	0
566	Rose Petersen	37	Operations	2015-01-01	8	Xentara	92759	2	0	0
567	Tara Garcia	58	Development	2019-01-01	13	Kaldora	125536	4	0	0
568	Mary Hayes	50	Support	2014-01-01	15	Drogol	110128	5	0	4
569	Cindy Johnston	37	Marketing	2014-01-01	7	Drogol	87676	2	0	0
570	Kimberly Hall	46	Development	2018-01-01	14	Drogol	119275	4	0	0
571	Kelly Brandt	53	Development	2019-01-01	9	Lumeria	102300	3	0	0
572	Bethany Mosley	35	Development	2018-01-01	6	Nirvon	94361	3	0	0
573	Katherine Patel	64	Development	2014-01-01	20	Arkalon	129441	3	0	0
574	Mrs. Lisa Holder MD	40	Operations	2017-01-01	17	Nirvon	122876	4	0	0
575	Traci Wells	39	Operations	2020-01-01	3	Drogol	100966	5	0	0
576	Christy Rice	38	Sales	2022-01-01	16	Nirvon	128407	3	97715	0
577	Erica Doyle MD	29	Development	2015-01-01	3	Zebronia	102660	5	0	0
578	Jessica Wilson	29	Marketing	2024-01-01	2	Drogol	74398	4	0	0
579	Debra Rodriguez	42	Operations	2015-01-01	10	Vantor	95027	2	0	0
580	Eric Evans	34	Sales	2023-01-01	2	Vantor	81758	1	29825	0
581	Meghan Villegas	36	Support	2023-01-01	2	Drogol	70627	1	0	1
582	Christopher Hoffman	36	Marketing	2016-01-01	9	Xentara	90594	2	0	0
583	April Trujillo	40	Marketing	2024-01-01	6	Xentara	90503	4	0	0
584	Richard Morris	46	Development	2025-01-01	5	Aqualis	87558	4	0	0
585	Misty Stone	51	Development	2012-01-01	7	Lumeria	104991	5	0	0
586	Becky Ochoa	44	Support	2022-01-01	10	Vantor	101569	3	0	4
587	Kyle Sanchez	47	Sales	2017-01-01	15	Drogol	137438	4	94540	0
588	Joseph Garcia	49	Support	2010-01-01	17	Arkalon	123019	5	0	5
589	Ann King	37	Operations	2024-01-01	12	Drogol	104110	4	0	0
590	Shannon Mcdowell	50	Marketing	2025-01-01	15	Aqualis	95387	3	0	0
591	Joseph Velasquez	52	Development	2011-01-01	18	Utopia	125656	3	0	0
592	Catherine Melton	55	Support	2017-01-01	10	Zebronia	76988	1	0	1
593	Ashley Roberts	33	Development	2017-01-01	3	Lumeria	102261	5	0	0
594	Linda Martinez	42	Sales	2020-01-01	10	Aqualis	164328	5	139431	0
595	Heather Hudson	28	Development	2021-01-01	5	Utopia	89864	2	0	0
596	Erika Morrison	60	Support	2024-01-01	20	Arkalon	105623	4	0	5
597	Michael Lopez	52	Sales	2017-01-01	16	Aqualis	144532	4	95093	0
598	Justin Brown	56	Support	2013-01-01	14	Vantor	88086	2	0	2
599	Mark Koch	36	Support	2019-01-01	8	Arkalon	118297	5	0	4
600	Justin Frye	42	Sales	2012-01-01	8	Utopia	108201	2	54345	0
601	Nicole Garcia	56	Development	2017-01-01	14	Kaldora	123136	5	0	0
602	Daniel Lawrence	42	Support	2023-01-01	16	Lumeria	112275	4	0	5
603	Jasmin Black	42	Marketing	2012-01-01	14	Vantor	114214	5	0	0
604	Cynthia Smith	32	Support	2012-01-01	10	Lumeria	76736	1	0	1
605	Derrick Savage	54	Development	2025-01-01	19	Nirvon	117917	3	0	0
606	Donald Green	49	Operations	2021-01-01	17	Aqualis	117308	4	0	0
607	Mitchell Nguyen	46	Support	2023-01-01	11	Zebronia	69317	1	0	1
608	Roberto Griffin MD	28	Development	2017-01-01	4	Arkalon	88110	2	0	0
609	Joseph Robertson	34	Sales	2015-01-01	11	Drogol	144957	3	119045	0
610	Jessica Sutton	41	Marketing	2020-01-01	18	Vantor	123087	5	0	0
611	Teresa Wright	44	Support	2011-01-01	14	Lumeria	107505	4	0	4
612	Jessica Hogan	53	Sales	2024-01-01	16	Vantor	105735	2	54986	0
613	Susan Collins	53	Support	2010-01-01	19	Lumeria	122229	5	0	5
614	Susan Raymond	37	Support	2017-01-01	10	Arkalon	103243	3	0	4
615	Steven Simmons	50	Development	2010-01-01	6	Zebronia	94037	3	0	0
616	Lynn Best	41	Development	2025-01-01	17	Aqualis	109938	2	0	0
617	Zachary White	38	Development	2015-01-01	8	Kaldora	99374	3	0	0
618	Karen Irwin	45	Marketing	2022-01-01	4	Lumeria	86849	4	0	0
619	Sarah Malone	43	Operations	2022-01-01	16	Utopia	118288	5	0	0
620	Jessica Edwards	34	Operations	2016-01-01	3	Xentara	84833	3	0	0
621	Alyssa Eaton	30	Development	2023-01-01	5	Arkalon	95675	5	0	0
622	Cynthia Rose	52	Sales	2013-01-01	13	Arkalon	145536	3	116761	0
623	Alexander Green	54	Support	2025-01-01	9	Vantor	98191	4	0	4
624	Marvin Phelps	24	Development	2010-01-01	1	Kaldora	97307	5	0	0
625	Monica Orr	29	Development	2012-01-01	4	Zebronia	95105	4	0	0
626	Jodi Donovan	52	Development	2021-01-01	7	Vantor	104729	5	0	0
627	Dr. Rachel Stein DDS	35	Operations	2022-01-01	5	Nirvon	85922	4	0	0
628	Nicole Wilson	43	Support	2017-01-01	16	Xentara	122600	5	0	5
629	David Alvarado	45	Operations	2024-01-01	8	Arkalon	91772	3	0	0
630	Lynn Johnson	28	Sales	2010-01-01	1	Drogol	110983	2	61120	0
631	Nancy Howard	49	Operations	2020-01-01	9	Aqualis	100333	4	0	0
632	Eddie Hernandez	56	Sales	2021-01-01	15	Aqualis	120733	2	78920	0
633	Taylor Ruiz	27	Support	2024-01-01	4	Vantor	100425	4	0	3
634	Jasmine Fowler	31	Development	2020-01-01	8	Vantor	113299	4	0	0
635	Tammy Randall	45	Development	2021-01-01	12	Aqualis	107608	2	0	0
636	Matthew Fritz	52	Operations	2022-01-01	8	Lumeria	85635	2	0	0
637	Jerry Freeman	56	Development	2014-01-01	17	Arkalon	122942	3	0	0
638	Tiffany Valdez	38	Marketing	2024-01-01	12	Drogol	97029	5	0	0
639	Samantha Castaneda	53	Support	2024-01-01	12	Lumeria	77739	1	0	1
640	Kimberly Allen	45	Marketing	2026-01-01	9	Kaldora	80376	2	0	0
641	Susan Fuller	37	Operations	2011-01-01	10	Utopia	105274	5	0	0
642	Sabrina Vasquez	58	Development	2022-01-01	17	Arkalon	127965	4	0	0
643	Megan Palmer	34	Development	2019-01-01	12	Aqualis	114976	4	0	0
644	Michelle Williams	27	Operations	2021-01-01	1	Aqualis	95472	5	0	0
645	Gary Morris	48	Development	2016-01-01	4	Kaldora	89575	3	0	0
646	Chelsea Jones MD	42	Development	2019-01-01	20	Xentara	135030	4	0	0
647	Michelle Hunter	61	Development	2026-01-01	16	Aqualis	113374	4	0	0
648	Kylie Hanson	45	Development	2026-01-01	9	Xentara	99110	5	0	0
649	Tony Walter	53	Operations	2012-01-01	13	Drogol	112924	5	0	0
650	Chelsea Rogers	53	Development	2022-01-01	10	Nirvon	102252	4	0	0
651	William Gomez	47	Support	2022-01-01	12	Utopia	99847	4	0	4
652	April Baldwin	41	Development	2015-01-01	7	Zebronia	103229	4	0	0
653	Margaret Moore	51	Operations	2011-01-01	10	Aqualis	102375	4	0	0
654	Alejandra Alvarez	54	Development	2014-01-01	11	Lumeria	120996	4	0	0
655	Russell Lynch	46	Marketing	2012-01-01	6	Nirvon	95198	5	0	0
656	Rebecca Thomas	52	Marketing	2020-01-01	12	Nirvon	95903	2	0	0
657	Matthew Burton	33	Development	2019-01-01	8	Kaldora	99764	3	0	0
658	Andrew Branch	40	Sales	2015-01-01	16	Drogol	143106	4	104780	0
659	Paula Archer	25	Operations	2017-01-01	2	Kaldora	92401	4	0	0
660	Breanna Arroyo	38	Development	2020-01-01	3	Xentara	86593	3	0	0
661	Deanna Foster	36	Development	2025-01-01	7	Lumeria	92024	4	0	0
662	Kari Bond	40	Marketing	2011-01-01	3	Nirvon	79396	2	0	0
663	Benjamin Weaver	31	Operations	2022-01-01	5	Arkalon	85727	4	0	0
664	William Johnson	56	Support	2021-01-01	13	Nirvon	100902	4	0	3
665	Aaron Juarez	39	Support	2024-01-01	5	Xentara	101802	5	0	4
666	Jay Booker	50	Operations	2023-01-01	7	Zebronia	91727	3	0	0
667	Juan Sanchez	30	Operations	2026-01-01	6	Nirvon	79774	3	0	0
668	Virginia Jenkins	50	Sales	2016-01-01	6	Zebronia	112830	2	66570	0
669	Marvin Gray	38	Operations	2010-01-01	10	Kaldora	113031	5	0	0
670	Amy Johnson	49	Marketing	2019-01-01	6	Utopia	97565	4	0	0
671	Christina Norris	49	Operations	2022-01-01	18	Utopia	104975	2	0	0
672	Jennifer Powell	43	Development	2017-01-01	2	Kaldora	84037	3	0	0
673	Thomas Romero	49	Marketing	2011-01-01	7	Aqualis	94844	5	0	0
674	Kaylee Harris	59	Support	2020-01-01	16	Nirvon	120894	4	0	5
675	David Jacobs	43	Marketing	2010-01-01	11	Drogol	94789	2	0	0
676	Brittany Neal	43	Operations	2023-01-01	7	Vantor	91612	3	0	0
677	Samantha Wilson	31	Operations	2019-01-01	6	Lumeria	90304	3	0	0
678	David Johnson	42	Support	2011-01-01	19	Vantor	77771	1	0	1
679	Heather Delgado	42	Sales	2022-01-01	4	Zebronia	112103	2	66182	0
680	Adam Powers	33	Operations	2020-01-01	5	Zebronia	102228	5	0	0
681	Luis Johnson	31	Support	2018-01-01	2	Zebronia	88011	2	0	2
682	Elizabeth Thomas	56	Sales	2018-01-01	18	Lumeria	115333	2	69545	0
683	Thomas Saunders	60	Operations	2017-01-01	16	Nirvon	114219	4	0	0
684	Luke Sanders	60	Support	2022-01-01	15	Arkalon	113303	4	0	5
685	Tony Bowman	59	Development	2012-01-01	16	Arkalon	132566	4	0	0
686	Elizabeth Lewis	51	Development	2019-01-01	6	Aqualis	93472	2	0	0
687	Wendy Baker	39	Sales	2022-01-01	13	Zebronia	165076	5	138143	0
688	Kyle Lawson	40	Sales	2023-01-01	5	Kaldora	105310	2	53214	0
689	Cassandra Harrell	54	Operations	2017-01-01	14	Arkalon	103367	2	0	0
690	Eric Johnson	50	Sales	2011-01-01	17	Lumeria	135761	3	99961	0
691	Samuel Krueger	50	Marketing	2012-01-01	17	Xentara	107700	3	0	0
692	Kimberly Davis	52	Development	2015-01-01	18	Zebronia	133315	5	0	0
693	Judith Sanchez	54	Development	2018-01-01	18	Nirvon	130120	4	0	0
694	Chase Sims	32	Development	2026-01-01	8	Zebronia	90723	3	0	0
695	Lance Hernandez	62	Development	2025-01-01	18	Utopia	120049	4	0	0
696	Michelle Byrd	42	Marketing	2022-01-01	10	Nirvon	93128	4	0	0
697	Nicole Hardy	38	Operations	2023-01-01	13	Lumeria	107493	4	0	0
698	Andrew Carlson	56	Operations	2013-01-01	19	Vantor	118420	3	0	0
699	Amanda Alvarado	34	Operations	2018-01-01	8	Vantor	94356	3	0	0
700	Sarah Matthews	42	Development	2019-01-01	19	Lumeria	125473	2	0	0
\.


--
-- TOC entry 3474 (class 0 OID 17742)
-- Dependencies: 225
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
-- TOC entry 3475 (class 0 OID 17752)
-- Dependencies: 226
-- Data for Name: employees; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging.employees (employee_id, name, age, dept_id, joining_date, years_of_experience, country, salary, performance_rating) FROM stdin;
1	Stephen Cummings	36	0	2015-01-01	6	Kaldora	127621.00	3
2	Jessica Yoder	45	1	2017-01-01	11	Aqualis	102035.00	5
3	Eric Zimmerman	44	2	2023-01-01	1	Xentara	115498.00	5
4	Scott Ellis	47	3	2024-01-01	4	Arkalon	84189.00	2
5	Kathryn Jones	45	4	2019-01-01	7	Lumeria	100865.00	5
6	Chad Padilla	29	3	2021-01-01	6	Kaldora	99903.00	4
7	Brian Chavez	31	1	2020-01-01	9	Vantor	89533.00	2
8	Steven Jones	36	4	2020-01-01	4	Vantor	82867.00	2
9	Alvin Hicks	32	3	2014-01-01	9	Lumeria	101851.00	3
10	Beverly Rush	40	1	2012-01-01	3	Nirvon	84931.00	4
11	Jordan Webb	41	0	2021-01-01	19	Nirvon	145502.00	4
12	Marisa Davis	31	0	2012-01-01	4	Kaldora	104709.00	2
13	Kenneth Wright	49	1	2019-01-01	15	Utopia	117173.00	5
14	Ryan Hurley	31	3	2020-01-01	2	Aqualis	96772.00	4
15	Bernard Bennett	46	3	2017-01-01	19	Zebronia	124922.00	2
16	Terry Miller	60	3	2021-01-01	19	Nirvon	127488.00	3
17	Denise Singh	34	3	2011-01-01	8	Vantor	99611.00	3
18	Angela Scott Dds	40	2	2013-01-01	16	Aqualis	108005.00	4
19	Robert Baker	34	0	2021-01-01	9	Drogol	112407.00	2
20	Miguel Garrett	56	4	2016-01-01	14	Arkalon	107100.00	3
21	Pamela Moses	37	1	2023-01-01	8	Aqualis	91684.00	3
22	Tommy Ward	27	3	2013-01-01	4	Lumeria	105106.00	5
23	Keith Holden	54	3	2025-01-01	11	Xentara	94900.00	2
24	Robert Martin	57	3	2013-01-01	13	Utopia	127452.00	5
25	Melissa Hamilton	44	2	2018-01-01	13	Aqualis	87598.00	2
26	Sarah Turner	36	4	2018-01-01	4	Vantor	95341.00	5
27	Craig Russell	44	2	2012-01-01	7	Zebronia	78382.00	1
28	Victoria Porter	52	1	2010-01-01	20	Nirvon	110286.00	2
29	Craig Sampson	35	5	2018-01-01	9	Vantor	267436.00	2
30	Michael Howard	29	4	2011-01-01	7	Zebronia	100348.00	5
31	Sean Sampson	42	5	2010-01-01	2	Nirvon	500000.00	3
32	Clayton Singh	52	2	2013-01-01	18	Vantor	92054.00	2
33	Joshua Wilkins	37	0	2023-01-01	14	Nirvon	110795.00	3
34	Carl Arnold	33	4	2018-01-01	9	Aqualis	93019.00	2
35	Jessica Williams	52	4	2010-01-01	14	Drogol	120142.00	5
36	Crystal Baker	36	3	2017-01-01	7	Arkalon	103335.00	4
37	Keith Ellis	31	2	2025-01-01	8	Arkalon	82524.00	2
38	Ashley Matthews	42	0	2016-01-01	19	Arkalon	109894.00	2
39	Carolyn Rodriguez	46	3	2010-01-01	9	Lumeria	109444.00	5
40	Susan Pearson	40	1	2026-01-01	7	Drogol	82313.00	4
41	Jody Glenn	39	2	2011-01-01	5	Nirvon	92524.00	2
42	Angela Brown	56	4	2016-01-01	15	Arkalon	110575.00	3
43	Amanda Glover	58	3	2023-01-01	16	Xentara	112297.00	3
44	Daniel House	44	4	2026-01-01	14	Drogol	95512.00	3
45	Lindsay Griffith	42	3	2023-01-01	6	Utopia	91936.00	2
46	Austin Dougherty	52	4	2019-01-01	18	Zebronia	112442.00	2
47	Catherine Fitzgerald	42	2	2020-01-01	7	Utopia	76566.00	1
48	Frank Chavez	52	0	2010-01-01	10	Drogol	160642.00	5
49	Danielle Duran	33	4	2024-01-01	5	Aqualis	95326.00	5
50	James Scott	49	3	2016-01-01	7	Utopia	97123.00	3
51	Eric Bass	28	3	2026-01-01	2	Zebronia	78219.00	4
52	Lisa Moore	46	3	2019-01-01	13	Zebronia	109296.00	2
53	Cheryl Hall	46	0	2014-01-01	1	Zebronia	146839.00	4
54	Mark Ortiz	49	2	2023-01-01	6	Utopia	90718.00	3
55	Jorge Bowen	30	3	2024-01-01	2	Drogol	86766.00	4
56	Jordan Thompson	33	4	2025-01-01	11	Utopia	90499.00	3
57	Walter Lloyd	49	3	2022-01-01	4	Utopia	95293.00	4
58	Christine Willis	41	4	2023-01-01	15	Vantor	111960.00	4
59	Cynthia Mitchell	45	1	2022-01-01	15	Lumeria	101543.00	5
60	Virginia Taylor	32	0	2023-01-01	7	Vantor	117956.00	2
61	Anthony Hines	62	3	2024-01-01	19	Lumeria	129152.00	4
62	Meagan Wilkins	55	5	2012-01-01	15	Arkalon	500000.00	3
63	Erica Lopez	42	3	2020-01-01	10	Zebronia	119960.00	5
64	Stephen Landry	54	0	2012-01-01	16	Kaldora	118371.00	3
65	Nicole Smith	44	2	2011-01-01	6	Vantor	86753.00	2
66	Jeanne Thomas	57	0	2010-01-01	20	Nirvon	114886.00	3
67	Michelle Long	29	4	2020-01-01	7	Kaldora	89497.00	2
68	Brandon Boyd	46	3	2018-01-01	15	Vantor	115649.00	2
69	Christopher Williams	43	0	2022-01-01	13	Kaldora	107357.00	2
70	Kyle Guzman	55	4	2021-01-01	17	Drogol	112326.00	3
71	Dr. Nancy Lopez	48	2	2024-01-01	12	Kaldora	70679.00	1
72	Brenda Davis	49	2	2017-01-01	13	Utopia	107815.00	4
73	Willie Mercer	46	2	2017-01-01	11	Aqualis	97129.00	3
74	Christopher Madden Jr.	40	4	2022-01-01	7	Zebronia	85974.00	3
75	Brandy Webster	46	2	2010-01-01	8	Drogol	88383.00	2
76	Jennifer Graham	60	1	2019-01-01	18	Aqualis	107216.00	2
77	Jessica Jenkins	52	4	2025-01-01	14	Kaldora	104847.00	5
78	James Hebert	48	3	2016-01-01	20	Zebronia	137158.00	5
79	Scott Kim	59	3	2024-01-01	18	Zebronia	131825.00	5
80	Cristina Burke	36	4	2018-01-01	8	Nirvon	92044.00	2
81	Kevin Scott Dvm	54	3	2011-01-01	11	Zebronia	113349.00	4
82	Cheyenne Williams	47	3	2016-01-01	13	Arkalon	127686.00	5
83	Dustin Kaufman	52	3	2018-01-01	14	Xentara	114753.00	3
84	Christopher Hernandez	41	2	2022-01-01	14	Nirvon	91990.00	4
85	Mary Flores	38	2	2014-01-01	2	Aqualis	107645.00	4
86	Misty Williams	29	0	2017-01-01	5	Zebronia	135325.00	3
87	Miranda Gordon	57	2	2010-01-01	17	Nirvon	82024.00	2
88	Tammy Wood	42	3	2012-01-01	16	Kaldora	119623.00	3
89	Wesley Baxter	54	0	2021-01-01	19	Kaldora	87535.00	1
90	Alan Weaver	41	2	2021-01-01	11	Kaldora	93355.00	2
91	Dillon Fox	45	5	2015-01-01	17	Zebronia	274840.00	5
92	Cassandra Ingram	48	3	2015-01-01	18	Lumeria	125298.00	3
93	Whitney White	37	3	2017-01-01	13	Arkalon	117707.00	4
94	Barbara Vargas	28	0	2016-01-01	4	Utopia	143275.00	3
95	Peter Green	57	3	2012-01-01	17	Drogol	129075.00	5
96	Stephanie Armstrong	54	1	2014-01-01	13	Utopia	96771.00	2
97	Denise Walker	58	4	2026-01-01	18	Kaldora	100032.00	2
98	Sandra Castro	47	2	2012-01-01	7	Arkalon	114619.00	5
99	Andrea Leonard	29	2	2026-01-01	1	Nirvon	79284.00	3
100	Joseph Crosby	47	4	2021-01-01	16	Nirvon	107603.00	2
101	Samantha Ellis	51	2	2025-01-01	20	Lumeria	76609.00	2
102	Katherine Lewis	37	3	2015-01-01	6	Arkalon	94065.00	3
103	Eric Duncan	58	3	2012-01-01	14	Kaldora	115029.00	3
104	Carla Rios	33	3	2019-01-01	4	Vantor	96663.00	5
105	Jeremy Ross	24	4	2019-01-01	2	Drogol	82264.00	3
106	Mary Johnson	47	3	2013-01-01	12	Aqualis	108095.00	2
107	Leslie Martin	36	3	2025-01-01	6	Drogol	85167.00	3
108	Troy Gordon	37	1	2019-01-01	12	Drogol	109448.00	4
109	Elaine Benson	36	2	2019-01-01	7	Utopia	102636.00	3
110	Jacqueline Ford Md	50	3	2010-01-01	12	Aqualis	110178.00	3
111	Jimmy Hansen	29	2	2012-01-01	6	Lumeria	82177.00	2
112	Brandon Farley	26	3	2023-01-01	4	Aqualis	80640.00	2
113	James Cannon	56	3	2016-01-01	18	Vantor	129648.00	4
114	Dwayne Ortiz	30	3	2014-01-01	3	Vantor	85280.00	2
115	Kaitlyn Wiggins	25	2	2025-01-01	3	Zebronia	91613.00	3
116	Travis Owen	39	5	2019-01-01	15	Arkalon	500000.00	3
117	Kimberly Shelton	43	0	2024-01-01	13	Arkalon	107779.00	2
118	Amy Morgan	56	4	2013-01-01	12	Xentara	102580.00	3
119	Sarah Hart	45	3	2018-01-01	3	Lumeria	85033.00	2
120	Gregory Romero	33	3	2018-01-01	9	Zebronia	99362.00	2
121	Jeffrey Hart	39	3	2022-01-01	12	Vantor	110341.00	3
122	Michael Burton	49	4	2017-01-01	7	Aqualis	93394.00	3
123	John Salazar	57	2	2016-01-01	17	Lumeria	87561.00	2
124	Christine Phillips	31	3	2013-01-01	6	Arkalon	100464.00	4
125	Christopher Rogers	29	0	2023-01-01	3	Kaldora	125066.00	2
126	John Harrison	45	2	2017-01-01	8	Nirvon	96837.00	3
127	Peter Lopez	45	4	2016-01-01	7	Utopia	99019.00	5
128	Louis Jennings	42	1	2013-01-01	12	Arkalon	103024.00	4
129	Mark Frank	39	3	2017-01-01	9	Kaldora	114361.00	4
130	Joshua Espinoza Dds	27	3	2010-01-01	2	Drogol	82169.00	2
131	Charles Mcdonald	46	1	2015-01-01	2	Drogol	79132.00	3
132	Heather David	54	3	2014-01-01	9	Utopia	114929.00	4
133	Dylan Owen	34	1	2025-01-01	4	Nirvon	76521.00	4
134	Laura Hurley	34	2	2018-01-01	8	Zebronia	85550.00	1
135	Scott Archer	35	5	2026-01-01	3	Xentara	258291.00	3
136	Steven Campbell	31	4	2025-01-01	8	Utopia	84146.00	3
137	Ashley Dixon	27	1	2018-01-01	3	Zebronia	83110.00	3
138	Lisa Mosley	54	4	2022-01-01	10	Utopia	100868.00	5
139	Theresa Mcguire	51	3	2018-01-01	8	Lumeria	107111.00	5
140	Nicole Peterson	46	2	2017-01-01	12	Utopia	102689.00	3
141	Steven Hawkins	46	2	2022-01-01	19	Aqualis	99047.00	4
142	Mia Vargas	52	5	2024-01-01	8	Kaldora	266751.00	5
143	Selena Burton	46	2	2020-01-01	14	Nirvon	119233.00	4
144	Cody Forbes	49	1	2010-01-01	20	Aqualis	110002.00	2
145	Christina Baker	48	3	2011-01-01	3	Arkalon	102443.00	5
146	Joyce Williams	39	3	2022-01-01	16	Drogol	116901.00	2
147	Sandra Armstrong	46	2	2021-01-01	9	Drogol	111888.00	4
148	Michael Hunt	51	0	2023-01-01	19	Xentara	130406.00	4
149	Tiffany Thornton	35	2	2012-01-01	13	Utopia	92066.00	2
150	David Lawson	43	3	2017-01-01	6	Zebronia	101846.00	5
151	Briana Powell	38	4	2015-01-01	10	Drogol	100595.00	3
152	Nicholas Taylor	41	3	2017-01-01	3	Xentara	88272.00	3
153	Christopher Bell	33	3	2025-01-01	7	Utopia	91509.00	4
154	Darren Duncan	28	2	2011-01-01	3	Xentara	77973.00	1
155	Jennifer Green	54	2	2019-01-01	16	Xentara	112860.00	4
156	Robert Ellis	38	3	2023-01-01	14	Drogol	112056.00	4
157	Richard Olson	52	3	2016-01-01	17	Zebronia	120402.00	2
158	Ian Moody	37	0	2015-01-01	3	Aqualis	99303.00	2
159	Thomas Ray	40	1	2023-01-01	4	Nirvon	90835.00	5
160	James Daniel	33	4	2025-01-01	8	Arkalon	87226.00	4
161	Tonya Spencer	45	1	2011-01-01	19	Drogol	107117.00	2
162	Patrick Shaw	31	0	2018-01-01	7	Xentara	123383.00	3
163	Alexander Davis	47	3	2012-01-01	14	Vantor	126972.00	4
164	Jessica Pitts	51	0	2016-01-01	18	Kaldora	84295.00	1
165	David Simpson	41	0	2023-01-01	1	Vantor	139920.00	4
166	Kendra Thompson	56	4	2025-01-01	12	Utopia	99408.00	5
167	Mary Aguilar	64	3	2024-01-01	19	Nirvon	123475.00	4
168	Scott Edwards	48	3	2010-01-01	4	Nirvon	94584.00	4
169	Joseph Kerr	61	3	2019-01-01	20	Nirvon	129810.00	3
170	Jason Ochoa	38	2	2023-01-01	14	Kaldora	87070.00	2
171	Shannon Hubbard	42	1	2020-01-01	10	Aqualis	93150.00	2
172	Vincent Cunningham	62	0	2013-01-01	18	Nirvon	154210.00	4
173	Angel Weber	45	4	2024-01-01	4	Arkalon	76524.00	3
174	Natalie Robinson	49	3	2022-01-01	10	Vantor	102299.00	2
175	Douglas Davies	46	4	2023-01-01	8	Nirvon	101992.00	5
176	Patricia Bright	57	4	2012-01-01	20	Drogol	115952.00	2
177	Laurie Gutierrez	27	0	2012-01-01	1	Nirvon	138331.00	3
178	Jesse Green	34	4	2017-01-01	1	Xentara	77341.00	2
179	Casey Alexander	36	4	2024-01-01	13	Zebronia	100375.00	2
180	Mr. William Kane	32	4	2015-01-01	1	Kaldora	76739.00	2
181	Brandon Fitzpatrick	27	4	2012-01-01	3	Vantor	84121.00	3
182	Alejandra Becker	42	3	2016-01-01	4	Vantor	87510.00	2
183	John Bennett	29	4	2020-01-01	7	Arkalon	101640.00	4
184	Stacey White	33	2	2017-01-01	5	Lumeria	82377.00	2
185	Richard Lucas	47	4	2013-01-01	4	Aqualis	90427.00	4
186	Frederick Daniels	45	1	2023-01-01	20	Vantor	109787.00	2
187	Gabriela Crawford	35	2	2019-01-01	11	Kaldora	98392.00	3
188	Audrey Allen	53	4	2024-01-01	11	Nirvon	102386.00	4
189	April Manning	43	2	2014-01-01	8	Lumeria	89555.00	3
190	Donna Vasquez	49	3	2012-01-01	10	Arkalon	119742.00	5
191	Johnny Harrington	49	3	2016-01-01	11	Xentara	105467.00	2
192	James Rocha	33	3	2015-01-01	9	Kaldora	99427.00	2
193	Jacob Proctor	49	1	2011-01-01	19	Drogol	111563.00	3
194	Christina Day	42	3	2024-01-01	18	Drogol	120047.00	4
195	Andrew Valencia	52	1	2021-01-01	14	Xentara	101807.00	3
196	Charles Bean	43	4	2013-01-01	7	Aqualis	89072.00	2
197	Howard Wilson	43	4	2012-01-01	16	Xentara	125096.00	5
198	Christina Small	32	4	2012-01-01	9	Zebronia	97013.00	3
199	Bridget Shea	33	4	2013-01-01	2	Vantor	82181.00	3
200	Donna Bell	39	2	2013-01-01	13	Utopia	85222.00	1
201	Sara Pollard	46	0	2019-01-01	11	Xentara	132526.00	3
202	Stephanie Schmitt	36	4	2012-01-01	11	Lumeria	104697.00	4
203	Anne Peterson	43	3	2015-01-01	12	Aqualis	109800.00	3
204	Michael Smith	33	4	2026-01-01	3	Zebronia	73479.00	3
205	Mark Johns	31	3	2012-01-01	9	Vantor	117114.00	5
206	Sherry Cole	43	4	2026-01-01	6	Utopia	74244.00	2
207	Denise Cunningham Dds	42	4	2017-01-01	9	Xentara	97998.00	3
208	Karen Alvarez	60	4	2018-01-01	18	Aqualis	111983.00	2
209	Barbara Brooks	53	0	2011-01-01	16	Kaldora	158329.00	4
210	Justin Jimenez	56	3	2020-01-01	16	Kaldora	127841.00	5
211	Deborah Russell	43	4	2011-01-01	11	Aqualis	100715.00	3
212	Amber Pierce	45	2	2013-01-01	12	Xentara	88281.00	2
213	Jerry Church	47	3	2018-01-01	10	Lumeria	110879.00	4
214	Tony Weaver	24	3	2023-01-01	1	Zebronia	83475.00	3
215	Sherri Moreno	45	3	2022-01-01	15	Xentara	115754.00	2
216	Carolyn Williams	50	4	2021-01-01	15	Nirvon	115773.00	5
217	Melissa Goodman	34	1	2023-01-01	4	Arkalon	88082.00	4
218	Angela Moore	29	0	2023-01-01	4	Aqualis	151547.00	4
219	Ann Morris	46	3	2026-01-01	13	Kaldora	105911.00	4
220	Christopher Brady	51	4	2020-01-01	9	Vantor	99901.00	4
221	Jacob Garrison	33	1	2015-01-01	10	Nirvon	95732.00	3
222	Michelle Wilkinson	25	3	2014-01-01	1	Zebronia	80442.00	2
223	Wendy Taylor	41	3	2016-01-01	5	Vantor	90514.00	2
224	Christopher Marshall	49	3	2024-01-01	16	Drogol	111603.00	3
225	Madison Moreno	57	0	2017-01-01	18	Kaldora	118278.00	3
226	Alyssa Fernandez	62	3	2020-01-01	20	Zebronia	138178.00	5
227	Paula Martinez	44	3	2018-01-01	2	Zebronia	91978.00	5
228	Melissa Johnson	45	0	2020-01-01	19	Vantor	152714.00	4
229	Jeffrey Owens	35	3	2014-01-01	3	Zebronia	99662.00	4
230	Melissa Martinez	57	2	2021-01-01	14	Kaldora	112613.00	4
231	Crystal Elliott	55	2	2025-01-01	10	Drogol	101897.00	4
232	Marcus Mendez	51	0	2026-01-01	19	Arkalon	127595.00	3
233	Collin Parks	53	3	2018-01-01	15	Utopia	122813.00	4
234	Victoria Valdez	39	3	2025-01-01	7	Aqualis	92710.00	4
235	James Morgan	43	3	2019-01-01	8	Drogol	98383.00	2
236	Deborah Davis	53	0	2010-01-01	18	Aqualis	156659.00	4
237	Connor Terry	46	2	2012-01-01	19	Kaldora	109691.00	5
238	Katherine Delgado	51	0	2022-01-01	16	Zebronia	90201.00	1
239	Stephanie Taylor	41	3	2016-01-01	8	Xentara	98391.00	2
240	Kyle Orr	61	2	2021-01-01	20	Zebronia	86945.00	2
241	Juan Armstrong	60	3	2019-01-01	20	Kaldora	126538.00	2
242	Mrs. Ashley Brown	34	0	2025-01-01	10	Lumeria	118088.00	3
243	Mr. Tony Cunningham	41	2	2015-01-01	13	Lumeria	112957.00	4
244	Kevin Adams	32	2	2017-01-01	5	Xentara	111912.00	4
245	Briana Perry	54	5	2022-01-01	20	Lumeria	500000.00	3
246	Crystal Baxter	53	2	2023-01-01	19	Utopia	112595.00	4
247	Nancy Smith	48	2	2021-01-01	9	Lumeria	117886.00	5
248	Alicia Rangel	47	3	2016-01-01	17	Arkalon	119965.00	2
249	Jorge Perez	42	1	2017-01-01	3	Aqualis	95538.00	5
250	Michael Moore	45	4	2018-01-01	4	Zebronia	98032.00	4
251	John Robinson	52	3	2023-01-01	20	Aqualis	130287.00	3
252	Brandon Short	46	1	2022-01-01	19	Arkalon	111748.00	3
253	Jennifer Murphy	49	1	2013-01-01	4	Drogol	96822.00	5
254	Jeremy Hurley	48	4	2016-01-01	20	Arkalon	115510.00	2
255	Shane Peterson	48	4	2012-01-01	3	Lumeria	87348.00	4
256	Susan Smith	42	1	2025-01-01	17	Drogol	104479.00	5
257	Julie Williams	40	4	2019-01-01	3	Aqualis	82507.00	2
258	Theresa Mcintyre	55	4	2016-01-01	20	Aqualis	119350.00	3
259	Andrea Baldwin	52	3	2022-01-01	10	Xentara	108141.00	5
260	James Martin	27	3	2020-01-01	3	Lumeria	88059.00	3
261	Katherine Chen	38	0	2021-01-01	7	Arkalon	164254.00	5
262	Timothy Dougherty	58	3	2013-01-01	18	Vantor	140479.00	5
263	Tyler Thomas	30	3	2022-01-01	6	Zebronia	91600.00	2
264	Ricky Galvan	47	2	2011-01-01	16	Arkalon	78096.00	1
265	Sabrina Mills	46	3	2024-01-01	13	Arkalon	107842.00	4
266	Robert Cook	53	3	2019-01-01	17	Nirvon	121946.00	3
267	Jared Black	31	0	2016-01-01	8	Drogol	138360.00	4
268	Lisa Morales	45	3	2023-01-01	17	Aqualis	119264.00	2
269	Amy Farrell	52	5	2013-01-01	19	Arkalon	500000.00	4
270	Peter Klein	44	2	2018-01-01	2	Arkalon	85275.00	1
271	Kevin Lopez	46	0	2023-01-01	15	Vantor	96931.00	1
272	Amanda Moore	30	4	2012-01-01	7	Vantor	89419.00	2
273	Kimberly Stephens	25	4	2020-01-01	3	Xentara	95782.00	4
274	Thomas Wagner	57	3	2015-01-01	16	Zebronia	127188.00	5
275	Laurie Lee	53	4	2018-01-01	19	Vantor	118055.00	3
276	Erin Contreras	53	3	2016-01-01	19	Zebronia	141805.00	5
277	David Dyer	37	5	2019-01-01	5	Utopia	500000.00	3
278	Mark Powers	43	4	2012-01-01	5	Aqualis	91914.00	4
279	Keith Hines	52	3	2024-01-01	9	Xentara	103080.00	5
280	Jessica Trujillo	48	4	2021-01-01	6	Xentara	104521.00	5
281	Laurie Bailey	41	1	2010-01-01	7	Kaldora	95789.00	5
282	Karen Greer	31	2	2015-01-01	4	Utopia	118119.00	5
283	Albert Davies	44	1	2021-01-01	16	Kaldora	117613.00	4
284	Brooke Newman	41	4	2025-01-01	13	Kaldora	102515.00	5
285	Sheila Mcintosh	35	4	2012-01-01	3	Nirvon	94149.00	4
286	Mrs. Carla Anderson Md	49	3	2016-01-01	16	Aqualis	119030.00	3
287	Janice Gibson	39	4	2018-01-01	16	Xentara	114699.00	4
288	Kimberly Perry	41	0	2024-01-01	18	Kaldora	82947.00	1
289	Francisco Bryant	57	1	2017-01-01	12	Nirvon	102534.00	4
290	Samuel Pope	43	3	2017-01-01	16	Utopia	118180.00	2
291	Christian Parsons	59	3	2017-01-01	20	Xentara	142677.00	4
292	Charles Jones	24	0	2017-01-01	1	Xentara	116664.00	3
293	Robin Francis	39	3	2019-01-01	2	Vantor	100565.00	5
294	Christopher Woods	49	0	2015-01-01	16	Arkalon	87286.00	1
295	James Reed	41	3	2024-01-01	10	Nirvon	100926.00	2
296	Derrick Cochran	35	3	2014-01-01	9	Aqualis	114557.00	4
297	Heather Miller	34	0	2012-01-01	9	Lumeria	144225.00	3
298	Benjamin Day	37	1	2015-01-01	5	Drogol	99608.00	5
299	William Gonzales	31	3	2014-01-01	4	Vantor	89321.00	3
300	Amanda Hogan	46	4	2010-01-01	3	Arkalon	93113.00	5
301	Michael Hawkins	47	1	2013-01-01	9	Vantor	93465.00	3
302	Jesse Olson	46	4	2011-01-01	10	Zebronia	100779.00	3
303	Sarah Abbott	48	0	2021-01-01	8	Utopia	145447.00	3
304	Paul Cooper	40	4	2016-01-01	4	Xentara	94991.00	5
305	Victor Smith	49	0	2017-01-01	4	Vantor	93110.00	2
306	Matthew Wise	39	0	2014-01-01	4	Nirvon	155713.00	4
307	Mia Davis	45	2	2015-01-01	9	Zebronia	78410.00	1
308	Lori Pacheco	57	3	2015-01-01	16	Arkalon	131941.00	4
309	Amanda Mathews	51	1	2010-01-01	14	Utopia	103138.00	3
310	Lauren Wise	54	3	2014-01-01	15	Drogol	125175.00	5
311	Michele Mcintosh	30	2	2021-01-01	2	Nirvon	102742.00	3
312	Eugene Martin	58	2	2026-01-01	16	Vantor	67389.00	1
313	Nathaniel Johnson	61	3	2016-01-01	18	Aqualis	125522.00	3
314	Robert Cohen	42	1	2010-01-01	2	Kaldora	84284.00	4
315	Debra Alvarado	51	0	2011-01-01	19	Zebronia	160932.00	5
316	Nichole Foster	57	0	2019-01-01	19	Xentara	118326.00	3
317	George Harrison	53	0	2025-01-01	20	Nirvon	155751.00	5
318	Shannon Lambert	38	4	2024-01-01	11	Kaldora	95778.00	2
319	James Johnson	59	3	2011-01-01	18	Xentara	122617.00	2
320	Timothy Kelly	42	2	2023-01-01	19	Nirvon	99919.00	4
321	Kevin Reyes	42	1	2011-01-01	14	Utopia	114050.00	5
322	Angela Humphrey	50	1	2015-01-01	19	Drogol	125985.00	5
323	Donna Adams	56	1	2016-01-01	12	Vantor	95387.00	2
324	Melinda Sanchez	50	4	2022-01-01	18	Zebronia	115312.00	5
325	Jason Miranda	56	3	2019-01-01	19	Nirvon	140421.00	4
326	Lydia Wong	56	3	2021-01-01	19	Xentara	135410.00	5
327	Jose Diaz	42	0	2023-01-01	12	Utopia	80648.00	1
328	Kristina Burton	42	2	2019-01-01	20	Vantor	97527.00	3
329	Joseph Cook	39	4	2021-01-01	9	Arkalon	110473.00	5
330	Amanda Mccoy	55	0	2025-01-01	14	Zebronia	88161.00	2
331	Joe Long	60	2	2018-01-01	19	Nirvon	86791.00	2
332	Kevin Clark	43	2	2026-01-01	3	Kaldora	84106.00	3
333	Daniel Richmond	26	1	2011-01-01	3	Utopia	82818.00	3
334	James Blackwell	40	1	2024-01-01	3	Xentara	78051.00	2
335	Ronald Mcclain	48	3	2013-01-01	20	Zebronia	128361.00	2
336	Krystal Lopez	46	3	2013-01-01	7	Lumeria	109029.00	4
337	Timothy Gomez	38	4	2017-01-01	5	Aqualis	99711.00	4
338	Edwin Gallegos	54	3	2020-01-01	9	Arkalon	106517.00	4
339	Jennifer Rodriguez	54	2	2013-01-01	12	Drogol	102939.00	3
340	Scott Clark	54	2	2023-01-01	20	Kaldora	113104.00	4
341	Laura Hernandez	50	1	2013-01-01	6	Kaldora	84923.00	2
342	Brian Martinez	58	0	2022-01-01	13	Kaldora	125544.00	2
343	Samuel Mitchell	31	3	2013-01-01	2	Drogol	92120.00	5
344	Edward Watson	49	2	2022-01-01	5	Aqualis	83385.00	2
345	Dustin Welch	30	0	2017-01-01	3	Aqualis	144893.00	4
346	Kathleen Brewer	48	0	2016-01-01	3	Arkalon	120901.00	3
347	Nicole Everett	42	1	2021-01-01	15	Nirvon	104463.00	3
348	Rebecca Harrison	55	2	2016-01-01	11	Kaldora	100023.00	4
349	Diana Luna	39	3	2017-01-01	8	Drogol	114566.00	5
350	Allison Donovan	40	2	2024-01-01	13	Xentara	70566.00	1
351	Lance Lucero	50	3	2024-01-01	11	Vantor	95344.00	2
352	Blake Li	43	0	2023-01-01	11	Kaldora	162944.00	5
353	Kimberly Miller	30	3	2023-01-01	3	Xentara	90760.00	5
354	Walter Elliott	41	3	2010-01-01	1	Lumeria	97413.00	5
355	Christine Newton	37	2	2011-01-01	4	Arkalon	98123.00	3
356	Allen Henry	51	1	2012-01-01	13	Nirvon	109937.00	4
357	Autumn Skinner	48	0	2016-01-01	5	Lumeria	119742.00	3
358	Keith Smith	38	2	2011-01-01	13	Kaldora	122762.00	5
359	David Mullen	59	3	2025-01-01	14	Arkalon	102212.00	2
360	Christopher Moyer	39	2	2023-01-01	5	Aqualis	85693.00	1
361	Brandy Lindsey	45	1	2017-01-01	12	Xentara	112537.00	5
362	Kimberly Mendoza	47	4	2016-01-01	20	Zebronia	122234.00	4
363	Ariana Frank	45	1	2013-01-01	3	Zebronia	94683.00	5
364	Robert Ramirez	39	4	2021-01-01	11	Zebronia	114154.00	5
365	Daniel Kim	35	3	2013-01-01	8	Utopia	99556.00	3
366	Taylor Hartman	62	2	2014-01-01	18	Xentara	93339.00	2
367	Eric Gomez	35	3	2012-01-01	10	Utopia	102216.00	2
368	James Williams	35	3	2012-01-01	3	Lumeria	103251.00	5
369	Kelsey Byrd	32	3	2017-01-01	1	Drogol	80254.00	2
370	Mrs. Laura Russell	42	2	2018-01-01	16	Nirvon	116537.00	5
371	Brittney Robinson	39	0	2013-01-01	7	Drogol	147036.00	4
372	Jeffrey Hall	29	3	2012-01-01	5	Nirvon	92457.00	3
373	Mark Grant	30	4	2012-01-01	5	Nirvon	93496.00	4
374	Charles Munoz	44	4	2023-01-01	10	Drogol	99161.00	5
375	Lisa Ramirez	60	0	2017-01-01	19	Utopia	121885.00	2
376	Matthew Reynolds	51	0	2023-01-01	10	Nirvon	116976.00	2
377	Lisa Wright	48	1	2013-01-01	7	Utopia	103337.00	5
378	Mary Anderson	41	4	2012-01-01	2	Lumeria	79466.00	2
379	Cassandra Johnson	40	3	2010-01-01	17	Lumeria	119462.00	2
380	Peggy Solomon	38	0	2021-01-01	7	Vantor	102703.00	1
381	Adam Adams	39	3	2011-01-01	6	Nirvon	109839.00	5
382	Erin Alvarado	59	1	2021-01-01	14	Lumeria	101830.00	3
383	Allison Hernandez	52	1	2013-01-01	20	Arkalon	112808.00	3
384	Troy Mercer	48	0	2021-01-01	8	Zebronia	139939.00	4
385	Danielle Garcia	53	3	2011-01-01	8	Nirvon	112596.00	4
386	Kaitlyn Riggs	23	3	2012-01-01	1	Lumeria	79819.00	2
387	Michael Smith	28	4	2020-01-01	4	Utopia	88472.00	3
388	Cody Robinson	44	0	2020-01-01	5	Drogol	145268.00	3
389	Katherine Frost	56	0	2021-01-01	17	Kaldora	99235.00	2
390	Andrew Bennett	33	2	2017-01-01	6	Zebronia	115025.00	5
391	Vicki Browning	46	4	2026-01-01	1	Zebronia	72207.00	4
392	Robin Velazquez	33	4	2018-01-01	1	Xentara	94151.00	5
393	Roger Golden	47	4	2020-01-01	15	Xentara	119866.00	4
394	Kathy Jordan	40	3	2018-01-01	12	Kaldora	106986.00	2
395	Timothy Humphrey	49	3	2025-01-01	6	Kaldora	84657.00	3
396	Martin Lee Iii	55	3	2021-01-01	14	Nirvon	119108.00	4
397	Peter Hill	36	3	2010-01-01	9	Utopia	103357.00	3
398	Charles Morris	38	4	2012-01-01	12	Kaldora	109602.00	5
399	David Baker	51	1	2015-01-01	10	Drogol	104430.00	4
400	Richard Fox	38	4	2013-01-01	16	Vantor	107996.00	2
401	Steven King	45	2	2022-01-01	20	Arkalon	115326.00	5
402	Nicholas Williamson	45	4	2012-01-01	18	Zebronia	115039.00	3
403	Michael Lewis	48	4	2020-01-01	19	Arkalon	128225.00	4
404	Nicole Morgan	39	0	2012-01-01	15	Nirvon	114833.00	3
405	Craig Murphy	37	3	2015-01-01	11	Lumeria	112023.00	4
406	Monica Carpenter	51	4	2018-01-01	20	Nirvon	132104.00	5
407	Laura Bray	40	1	2022-01-01	1	Vantor	73105.00	3
408	Joe Carr	47	3	2019-01-01	7	Drogol	113079.00	5
409	Rebecca Russell	30	1	2013-01-01	3	Drogol	79491.00	2
410	Geoffrey Gomez	39	4	2016-01-01	9	Vantor	109722.00	5
411	Maxwell Gonzalez	61	3	2011-01-01	19	Drogol	142510.00	5
412	Travis Byrd	48	3	2025-01-01	10	Utopia	99081.00	4
413	Wayne Griffin	37	2	2020-01-01	15	Xentara	84162.00	1
414	Sarah Stein	35	4	2026-01-01	8	Nirvon	89396.00	5
415	Jeffrey Guzman	35	2	2023-01-01	3	Aqualis	91559.00	4
416	William Price	50	1	2012-01-01	12	Zebronia	102715.00	4
417	Steven Carter	37	2	2019-01-01	9	Lumeria	89128.00	3
418	Eric Wagner	38	3	2019-01-01	9	Xentara	107210.00	4
419	Martin Sanchez	48	3	2010-01-01	19	Xentara	133351.00	4
420	Kyle Lara	25	3	2016-01-01	1	Arkalon	80381.00	2
421	Alison Wright	34	3	2026-01-01	10	Vantor	102895.00	5
422	Allison Herring	54	3	2024-01-01	16	Nirvon	126623.00	5
423	Gregory Cannon Dvm	30	4	2017-01-01	2	Zebronia	96978.00	5
424	Jason Miller	60	4	2021-01-01	16	Nirvon	107485.00	2
425	Christopher Miller	35	4	2012-01-01	3	Aqualis	100498.00	5
426	Stephen Johnson	58	4	2026-01-01	16	Aqualis	95284.00	2
427	Scott Henderson	33	3	2021-01-01	6	Vantor	107985.00	4
428	Scott Harvey	55	2	2020-01-01	20	Nirvon	113432.00	4
429	Patrick Williams	39	0	2013-01-01	1	Aqualis	120592.00	2
430	Jeffery Ramos	35	1	2013-01-01	3	Utopia	95087.00	5
431	Maria Aguilar	38	4	2020-01-01	15	Drogol	104361.00	2
432	Brandon Snyder	41	0	2026-01-01	8	Zebronia	91845.00	2
433	Michael Obrien	25	4	2012-01-01	2	Aqualis	97867.00	5
434	Matthew Williams	28	4	2015-01-01	5	Zebronia	101653.00	5
435	Shirley Perez	53	0	2014-01-01	10	Zebronia	125352.00	3
436	Mr. Joseph Mcclain	28	4	2015-01-01	2	Kaldora	79816.00	2
437	Jasmine Davis	54	4	2024-01-01	17	Zebronia	115096.00	4
438	Carlos Espinoza	58	3	2018-01-01	18	Drogol	122942.00	2
439	Kimberly Thornton	43	2	2010-01-01	9	Aqualis	106779.00	4
440	David Moreno	26	3	2010-01-01	1	Aqualis	80628.00	2
441	Andrew Scott	48	1	2016-01-01	16	Lumeria	117349.00	4
442	Melissa Montes	34	0	2020-01-01	8	Drogol	158235.00	4
443	Lisa Wilkinson	37	2	2025-01-01	5	Kaldora	75651.00	1
444	Shawn Marks	52	3	2018-01-01	17	Utopia	130917.00	5
445	Alicia Molina	60	3	2025-01-01	15	Drogol	113168.00	4
446	James Martinez	53	2	2019-01-01	8	Vantor	87111.00	2
447	Amanda Chavez	36	3	2023-01-01	9	Arkalon	94109.00	3
448	Melanie Blankenship	64	3	2023-01-01	19	Zebronia	127751.00	3
449	Wesley Stewart	36	4	2022-01-01	3	Arkalon	74527.00	2
450	Jordan Wagner	50	1	2024-01-01	19	Zebronia	115678.00	5
451	Lisa Estrada	62	3	2019-01-01	18	Lumeria	130282.00	4
452	Denise Phillips	37	2	2017-01-01	14	Lumeria	115791.00	5
453	Jennifer Brown	37	1	2021-01-01	2	Utopia	76666.00	2
454	Eileen Williams	29	2	2017-01-01	1	Nirvon	107301.00	4
455	Ricky Williams	29	0	2013-01-01	6	Aqualis	127799.00	3
456	David Brennan	35	0	2026-01-01	12	Lumeria	95507.00	2
457	Logan Carter	54	0	2010-01-01	16	Nirvon	137759.00	3
458	Tamara Marshall	43	4	2019-01-01	16	Drogol	110773.00	3
459	Christopher Waller	50	3	2024-01-01	13	Utopia	108268.00	4
460	Francisco Murphy	50	0	2015-01-01	14	Nirvon	162408.00	5
461	Jorge Rosario	36	4	2010-01-01	11	Lumeria	113296.00	4
462	Jesse Armstrong	44	3	2010-01-01	18	Drogol	124867.00	3
463	Rachel Green	35	0	2026-01-01	8	Vantor	91714.00	2
464	Katie Hernandez	43	4	2016-01-01	15	Vantor	110360.00	3
465	Jessica Thomas	48	3	2023-01-01	19	Lumeria	127190.00	3
466	Wendy Thompson	50	3	2023-01-01	14	Kaldora	111718.00	4
467	Mary Garza	51	4	2020-01-01	18	Utopia	112702.00	2
468	Amanda Long	40	1	2025-01-01	15	Utopia	92798.00	2
469	Oscar Thomas	55	2	2010-01-01	15	Kaldora	82555.00	2
470	Courtney Hammond	41	1	2021-01-01	6	Zebronia	87963.00	3
471	Charles Fleming	54	3	2024-01-01	9	Kaldora	98107.00	4
472	Jason Smith	49	1	2023-01-01	18	Arkalon	105651.00	4
473	Michelle Collins	40	3	2026-01-01	1	Aqualis	67691.00	2
474	Daniel Jordan	51	4	2020-01-01	9	Kaldora	99088.00	4
475	Tiffany Henderson	38	0	2012-01-01	3	Nirvon	82004.00	1
476	Laura Jackson	34	0	2025-01-01	8	Drogol	95249.00	2
477	Jennifer Miller	47	0	2014-01-01	5	Vantor	129158.00	3
478	Kayla Jones	57	0	2017-01-01	14	Lumeria	159990.00	4
479	Michael Alexander	52	3	2025-01-01	19	Utopia	125700.00	5
480	Timothy Brown	40	3	2019-01-01	11	Aqualis	107159.00	3
481	Elizabeth Ruiz	45	4	2016-01-01	14	Aqualis	102719.00	2
482	Michelle Sanchez	32	3	2010-01-01	2	Utopia	90228.00	4
483	Jennifer Bond	60	3	2025-01-01	16	Xentara	115275.00	4
484	Christina Doyle	55	2	2023-01-01	18	Zebronia	91942.00	2
485	Corey Jones	35	1	2010-01-01	3	Nirvon	79181.00	2
486	Sharon Shannon	46	4	2014-01-01	8	Zebronia	102670.00	5
487	Donald Orr Dvm	28	1	2019-01-01	5	Lumeria	82767.00	2
488	Anne Simmons	29	3	2013-01-01	1	Drogol	95122.00	4
489	Lisa Garcia	38	1	2016-01-01	10	Zebronia	103292.00	5
490	Shawn Bush	44	4	2023-01-01	10	Drogol	99548.00	5
491	Christina Mckee	42	3	2024-01-01	19	Drogol	127208.00	5
492	Brandon Morton	42	3	2018-01-01	19	Arkalon	139999.00	4
493	Larry Johnson	35	0	2023-01-01	1	Vantor	124313.00	3
494	Cheryl Gay	40	3	2010-01-01	10	Aqualis	104442.00	3
495	Catherine Gilbert	41	1	2021-01-01	17	Zebronia	106927.00	3
496	Amber Odonnell Phd	54	1	2020-01-01	15	Nirvon	117411.00	5
497	Lisa Holt	39	0	2020-01-01	6	Arkalon	159774.00	4
498	John Hartman	41	3	2014-01-01	18	Utopia	125442.00	3
499	William Navarro	31	2	2015-01-01	8	Kaldora	92213.00	2
500	Glenda Martin	43	2	2018-01-01	18	Vantor	89095.00	3
501	Tina Nelson	41	3	2011-01-01	5	Aqualis	93422.00	3
502	Raymond Lang	40	0	2011-01-01	10	Zebronia	122058.00	2
503	Matthew Morris	46	4	2026-01-01	16	Zebronia	99482.00	3
504	Melissa Steele	42	4	2025-01-01	14	Kaldora	96708.00	3
505	Nancy Brooks	45	2	2023-01-01	15	Xentara	84719.00	1
506	Mark Dougherty	46	3	2026-01-01	3	Xentara	72219.00	2
507	John Bradley	48	2	2023-01-01	17	Aqualis	78458.00	1
508	Janice Lopez	52	3	2023-01-01	15	Nirvon	114633.00	2
509	Matthew Long	26	1	2012-01-01	4	Nirvon	85775.00	3
510	Jessica Curtis	48	0	2012-01-01	7	Xentara	140642.00	3
511	Jared Parker	43	1	2021-01-01	4	Drogol	82414.00	2
512	James Brown	46	4	2012-01-01	5	Xentara	103038.00	5
513	Adam Morrison	46	2	2022-01-01	19	Vantor	108351.00	4
514	Kristina Freeman	41	3	2019-01-01	3	Nirvon	85603.00	2
515	Jennifer Davis	51	3	2025-01-01	19	Arkalon	124147.00	5
516	Mark Smith	62	4	2018-01-01	19	Xentara	126522.00	4
517	Rachel Hanna	41	0	2021-01-01	13	Vantor	86846.00	1
518	Herbert Joseph	44	2	2013-01-01	20	Zebronia	85437.00	1
519	Michelle Coleman	55	0	2015-01-01	12	Lumeria	149438.00	4
520	Valerie Munoz	48	0	2013-01-01	8	Zebronia	102803.00	2
521	Bradley Johnson	43	4	2015-01-01	19	Kaldora	124723.00	5
522	Kari Moss	44	1	2022-01-01	15	Xentara	109579.00	5
523	Lisa Powers	53	4	2013-01-01	18	Kaldora	117896.00	4
524	Colton Larson	51	0	2025-01-01	15	Zebronia	77887.00	1
525	Jon Simmons	60	3	2013-01-01	18	Arkalon	137834.00	4
526	Gerald Owens	56	3	2017-01-01	20	Drogol	127832.00	2
527	Amanda Morris	52	2	2025-01-01	18	Zebronia	104221.00	5
528	Tina Morris	34	4	2016-01-01	8	Lumeria	93240.00	2
529	Erica Johnson	49	4	2019-01-01	19	Vantor	127578.00	4
530	Keith Pratt	41	3	2017-01-01	8	Drogol	114835.00	5
531	Patricia King	37	4	2015-01-01	15	Vantor	113249.00	4
532	Eric Johnson	40	2	2018-01-01	5	Aqualis	78115.00	1
533	Shaun Huber	37	3	2010-01-01	1	Xentara	82309.00	3
534	Thomas Perez	56	3	2014-01-01	13	Xentara	110123.00	2
535	Christopher Rodriguez	32	4	2025-01-01	2	Utopia	80035.00	5
536	Jennifer Watson	30	3	2012-01-01	8	Aqualis	100759.00	3
537	Theodore Solomon	36	1	2020-01-01	7	Utopia	87806.00	2
538	Brandon Jones	52	4	2015-01-01	11	Xentara	112102.00	4
539	Tyler Hernandez	51	3	2023-01-01	15	Kaldora	120016.00	5
540	Debbie Alexander Md	59	2	2025-01-01	18	Kaldora	88207.00	3
541	James Williams	47	0	2016-01-01	13	Vantor	123404.00	2
542	Mark Scott	48	3	2010-01-01	11	Arkalon	122339.00	5
543	Matthew Harding	48	3	2024-01-01	16	Zebronia	112823.00	3
544	Mr. Joshua Perry	46	2	2011-01-01	12	Xentara	89419.00	3
545	Misty Chan	45	4	2018-01-01	6	Lumeria	87583.00	2
546	Blake Lopez	42	1	2024-01-01	5	Vantor	84273.00	5
547	Glenn Carey	46	3	2014-01-01	2	Xentara	96740.00	4
548	Thomas Graham	50	2	2026-01-01	14	Kaldora	105927.00	5
549	Trevor Lyons	38	0	2012-01-01	12	Xentara	103446.00	2
550	Evan Walters	47	4	2025-01-01	8	Lumeria	92989.00	5
551	Jonathan Skinner	32	3	2010-01-01	4	Zebronia	104493.00	5
552	Annette Peterson	35	2	2015-01-01	4	Zebronia	107244.00	4
553	Michael Lawson	38	3	2018-01-01	12	Lumeria	118482.00	5
554	Melissa Moore	40	1	2015-01-01	18	Aqualis	120197.00	4
555	Jennifer Johnson	51	3	2013-01-01	14	Aqualis	128467.00	4
556	Russell Norman	34	4	2021-01-01	5	Aqualis	85979.00	2
557	Jade Craig	34	3	2010-01-01	1	Kaldora	90965.00	5
558	James Turner	52	2	2020-01-01	11	Zebronia	88256.00	2
559	John Kelley	43	1	2020-01-01	14	Drogol	102276.00	3
560	Caroline Cruz	31	4	2011-01-01	7	Vantor	103434.00	4
561	Christopher Lee	35	3	2011-01-01	13	Nirvon	112573.00	3
562	Maria Long	32	2	2022-01-01	5	Lumeria	95301.00	3
563	Sarah Miller	42	0	2025-01-01	15	Zebronia	87441.00	2
564	Michele Perry	46	4	2021-01-01	5	Lumeria	102970.00	5
565	Stacey Andrews	40	1	2014-01-01	6	Xentara	92799.00	4
566	Rose Petersen	37	4	2015-01-01	8	Xentara	92759.00	2
567	Tara Garcia	58	3	2019-01-01	13	Kaldora	125536.00	4
568	Mary Hayes	50	2	2014-01-01	15	Drogol	110128.00	5
569	Cindy Johnston	37	1	2014-01-01	7	Drogol	87676.00	2
570	Kimberly Hall	46	3	2018-01-01	14	Drogol	119275.00	4
571	Kelly Brandt	53	3	2019-01-01	9	Lumeria	102300.00	3
572	Bethany Mosley	35	3	2018-01-01	6	Nirvon	94361.00	3
573	Katherine Patel	64	3	2014-01-01	20	Arkalon	129441.00	3
574	Mrs. Lisa Holder Md	40	4	2017-01-01	17	Nirvon	122876.00	4
575	Traci Wells	39	4	2020-01-01	3	Drogol	100966.00	5
576	Christy Rice	38	0	2022-01-01	16	Nirvon	128407.00	3
577	Erica Doyle Md	29	3	2015-01-01	3	Zebronia	102660.00	5
578	Jessica Wilson	29	1	2024-01-01	2	Drogol	74398.00	4
579	Debra Rodriguez	42	4	2015-01-01	10	Vantor	95027.00	2
580	Eric Evans	34	0	2023-01-01	2	Vantor	81758.00	1
581	Meghan Villegas	36	2	2023-01-01	2	Drogol	70627.00	1
582	Christopher Hoffman	36	1	2016-01-01	9	Xentara	90594.00	2
583	April Trujillo	40	1	2024-01-01	6	Xentara	90503.00	4
584	Richard Morris	46	3	2025-01-01	5	Aqualis	87558.00	4
585	Misty Stone	51	3	2012-01-01	7	Lumeria	104991.00	5
586	Becky Ochoa	44	2	2022-01-01	10	Vantor	101569.00	3
587	Kyle Sanchez	47	0	2017-01-01	15	Drogol	137438.00	4
588	Joseph Garcia	49	2	2010-01-01	17	Arkalon	123019.00	5
589	Ann King	37	4	2024-01-01	12	Drogol	104110.00	4
590	Shannon Mcdowell	50	1	2025-01-01	15	Aqualis	95387.00	3
591	Joseph Velasquez	52	3	2011-01-01	18	Utopia	125656.00	3
592	Catherine Melton	55	2	2017-01-01	10	Zebronia	76988.00	1
593	Ashley Roberts	33	3	2017-01-01	3	Lumeria	102261.00	5
594	Linda Martinez	42	0	2020-01-01	10	Aqualis	164328.00	5
595	Heather Hudson	28	3	2021-01-01	5	Utopia	89864.00	2
596	Erika Morrison	60	2	2024-01-01	20	Arkalon	105623.00	4
597	Michael Lopez	52	0	2017-01-01	16	Aqualis	144532.00	4
598	Justin Brown	56	2	2013-01-01	14	Vantor	88086.00	2
599	Mark Koch	36	2	2019-01-01	8	Arkalon	118297.00	5
600	Justin Frye	42	0	2012-01-01	8	Utopia	108201.00	2
601	Nicole Garcia	56	3	2017-01-01	14	Kaldora	123136.00	5
602	Daniel Lawrence	42	2	2023-01-01	16	Lumeria	112275.00	4
603	Jasmin Black	42	1	2012-01-01	14	Vantor	114214.00	5
604	Cynthia Smith	32	2	2012-01-01	10	Lumeria	76736.00	1
605	Derrick Savage	54	3	2025-01-01	19	Nirvon	117917.00	3
606	Donald Green	49	4	2021-01-01	17	Aqualis	117308.00	4
607	Mitchell Nguyen	46	2	2023-01-01	11	Zebronia	69317.00	1
608	Roberto Griffin Md	28	3	2017-01-01	4	Arkalon	88110.00	2
609	Joseph Robertson	34	0	2015-01-01	11	Drogol	144957.00	3
610	Jessica Sutton	41	1	2020-01-01	18	Vantor	123087.00	5
611	Teresa Wright	44	2	2011-01-01	14	Lumeria	107505.00	4
612	Jessica Hogan	53	0	2024-01-01	16	Vantor	105735.00	2
613	Susan Collins	53	2	2010-01-01	19	Lumeria	122229.00	5
614	Susan Raymond	37	2	2017-01-01	10	Arkalon	103243.00	3
615	Steven Simmons	50	3	2010-01-01	6	Zebronia	94037.00	3
616	Lynn Best	41	3	2025-01-01	17	Aqualis	109938.00	2
617	Zachary White	38	3	2015-01-01	8	Kaldora	99374.00	3
618	Karen Irwin	45	1	2022-01-01	4	Lumeria	86849.00	4
619	Sarah Malone	43	4	2022-01-01	16	Utopia	118288.00	5
620	Jessica Edwards	34	4	2016-01-01	3	Xentara	84833.00	3
621	Alyssa Eaton	30	3	2023-01-01	5	Arkalon	95675.00	5
622	Cynthia Rose	52	0	2013-01-01	13	Arkalon	145536.00	3
623	Alexander Green	54	2	2025-01-01	9	Vantor	98191.00	4
624	Marvin Phelps	24	3	2010-01-01	1	Kaldora	97307.00	5
625	Monica Orr	29	3	2012-01-01	4	Zebronia	95105.00	4
626	Jodi Donovan	52	3	2021-01-01	7	Vantor	104729.00	5
627	Dr. Rachel Stein Dds	35	4	2022-01-01	5	Nirvon	85922.00	4
628	Nicole Wilson	43	2	2017-01-01	16	Xentara	122600.00	5
629	David Alvarado	45	4	2024-01-01	8	Arkalon	91772.00	3
630	Lynn Johnson	28	0	2010-01-01	1	Drogol	110983.00	2
631	Nancy Howard	49	4	2020-01-01	9	Aqualis	100333.00	4
632	Eddie Hernandez	56	0	2021-01-01	15	Aqualis	120733.00	2
633	Taylor Ruiz	27	2	2024-01-01	4	Vantor	100425.00	4
634	Jasmine Fowler	31	3	2020-01-01	8	Vantor	113299.00	4
635	Tammy Randall	45	3	2021-01-01	12	Aqualis	107608.00	2
636	Matthew Fritz	52	4	2022-01-01	8	Lumeria	85635.00	2
637	Jerry Freeman	56	3	2014-01-01	17	Arkalon	122942.00	3
638	Tiffany Valdez	38	1	2024-01-01	12	Drogol	97029.00	5
639	Samantha Castaneda	53	2	2024-01-01	12	Lumeria	77739.00	1
640	Kimberly Allen	45	1	2026-01-01	9	Kaldora	80376.00	2
641	Susan Fuller	37	4	2011-01-01	10	Utopia	105274.00	5
642	Sabrina Vasquez	58	3	2022-01-01	17	Arkalon	127965.00	4
643	Megan Palmer	34	3	2019-01-01	12	Aqualis	114976.00	4
644	Michelle Williams	27	4	2021-01-01	1	Aqualis	95472.00	5
645	Gary Morris	48	3	2016-01-01	4	Kaldora	89575.00	3
646	Chelsea Jones Md	42	3	2019-01-01	20	Xentara	135030.00	4
647	Michelle Hunter	61	3	2026-01-01	16	Aqualis	113374.00	4
648	Kylie Hanson	45	3	2026-01-01	9	Xentara	99110.00	5
649	Tony Walter	53	4	2012-01-01	13	Drogol	112924.00	5
650	Chelsea Rogers	53	3	2022-01-01	10	Nirvon	102252.00	4
651	William Gomez	47	2	2022-01-01	12	Utopia	99847.00	4
652	April Baldwin	41	3	2015-01-01	7	Zebronia	103229.00	4
653	Margaret Moore	51	4	2011-01-01	10	Aqualis	102375.00	4
654	Alejandra Alvarez	54	3	2014-01-01	11	Lumeria	120996.00	4
655	Russell Lynch	46	1	2012-01-01	6	Nirvon	95198.00	5
656	Rebecca Thomas	52	1	2020-01-01	12	Nirvon	95903.00	2
657	Matthew Burton	33	3	2019-01-01	8	Kaldora	99764.00	3
658	Andrew Branch	40	0	2015-01-01	16	Drogol	143106.00	4
659	Paula Archer	25	4	2017-01-01	2	Kaldora	92401.00	4
660	Breanna Arroyo	38	3	2020-01-01	3	Xentara	86593.00	3
661	Deanna Foster	36	3	2025-01-01	7	Lumeria	92024.00	4
662	Kari Bond	40	1	2011-01-01	3	Nirvon	79396.00	2
663	Benjamin Weaver	31	4	2022-01-01	5	Arkalon	85727.00	4
664	William Johnson	56	2	2021-01-01	13	Nirvon	100902.00	4
665	Aaron Juarez	39	2	2024-01-01	5	Xentara	101802.00	5
666	Jay Booker	50	4	2023-01-01	7	Zebronia	91727.00	3
667	Juan Sanchez	30	4	2026-01-01	6	Nirvon	79774.00	3
668	Virginia Jenkins	50	0	2016-01-01	6	Zebronia	112830.00	2
669	Marvin Gray	38	4	2010-01-01	10	Kaldora	113031.00	5
670	Amy Johnson	49	1	2019-01-01	6	Utopia	97565.00	4
671	Christina Norris	49	4	2022-01-01	18	Utopia	104975.00	2
672	Jennifer Powell	43	3	2017-01-01	2	Kaldora	84037.00	3
673	Thomas Romero	49	1	2011-01-01	7	Aqualis	94844.00	5
674	Kaylee Harris	59	2	2020-01-01	16	Nirvon	120894.00	4
675	David Jacobs	43	1	2010-01-01	11	Drogol	94789.00	2
676	Brittany Neal	43	4	2023-01-01	7	Vantor	91612.00	3
677	Samantha Wilson	31	4	2019-01-01	6	Lumeria	90304.00	3
678	David Johnson	42	2	2011-01-01	19	Vantor	77771.00	1
679	Heather Delgado	42	0	2022-01-01	4	Zebronia	112103.00	2
680	Adam Powers	33	4	2020-01-01	5	Zebronia	102228.00	5
681	Luis Johnson	31	2	2018-01-01	2	Zebronia	88011.00	2
682	Elizabeth Thomas	56	0	2018-01-01	18	Lumeria	115333.00	2
683	Thomas Saunders	60	4	2017-01-01	16	Nirvon	114219.00	4
684	Luke Sanders	60	2	2022-01-01	15	Arkalon	113303.00	4
685	Tony Bowman	59	3	2012-01-01	16	Arkalon	132566.00	4
686	Elizabeth Lewis	51	3	2019-01-01	6	Aqualis	93472.00	2
687	Wendy Baker	39	0	2022-01-01	13	Zebronia	165076.00	5
688	Kyle Lawson	40	0	2023-01-01	5	Kaldora	105310.00	2
689	Cassandra Harrell	54	4	2017-01-01	14	Arkalon	103367.00	2
690	Eric Johnson	50	0	2011-01-01	17	Lumeria	135761.00	3
691	Samuel Krueger	50	1	2012-01-01	17	Xentara	107700.00	3
692	Kimberly Davis	52	3	2015-01-01	18	Zebronia	133315.00	5
693	Judith Sanchez	54	3	2018-01-01	18	Nirvon	130120.00	4
694	Chase Sims	32	3	2026-01-01	8	Zebronia	90723.00	3
695	Lance Hernandez	62	3	2025-01-01	18	Utopia	120049.00	4
696	Michelle Byrd	42	1	2022-01-01	10	Nirvon	93128.00	4
697	Nicole Hardy	38	4	2023-01-01	13	Lumeria	107493.00	4
698	Andrew Carlson	56	4	2013-01-01	19	Vantor	118420.00	3
699	Amanda Alvarado	34	4	2018-01-01	8	Vantor	94356.00	3
700	Sarah Matthews	42	3	2019-01-01	19	Lumeria	125473.00	2
\.


--
-- TOC entry 3472 (class 0 OID 17736)
-- Dependencies: 223
-- Data for Name: invalid_data; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging.invalid_data (employee_id, name, age, department, date_of_joining, years_of_experience, country, salary, performance_rating, total_sales, support_rating) FROM stdin;
\.


--
-- TOC entry 3477 (class 0 OID 17774)
-- Dependencies: 228
-- Data for Name: sales_data; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging.sales_data (employee_id, total_sales) FROM stdin;
1	87491.00
11	97175.00
12	50562.00
19	65978.00
33	65708.00
38	62719.00
48	130913.00
53	115963.00
60	75608.00
64	68153.00
66	61356.00
69	71090.00
86	100261.00
89	29328.00
94	113820.00
117	74080.00
125	89781.00
148	97435.00
158	44516.00
162	75147.00
164	21718.00
165	112376.00
172	126998.00
177	102434.00
201	94504.00
209	132746.00
218	135492.00
225	69097.00
228	111697.00
232	106953.00
236	118274.00
238	45510.00
242	83234.00
261	138054.00
267	96092.00
271	57551.00
288	32277.00
292	65357.00
294	28457.00
297	119450.00
303	118452.00
305	30945.00
306	130321.00
315	127813.00
316	68779.00
317	138595.00
327	25820.00
330	39531.00
342	85923.00
345	98804.00
346	72319.00
352	134663.00
357	72336.00
371	102729.00
375	85016.00
376	88763.00
380	55883.00
384	99256.00
388	115988.00
389	43481.00
404	61040.00
429	77257.00
432	49507.00
435	81155.00
442	132499.00
455	85563.00
456	56215.00
457	105806.00
460	121272.00
463	50034.00
475	20300.00
476	50064.00
477	92171.00
478	139253.00
493	79421.00
497	123059.00
502	81626.00
510	109041.00
517	29409.00
519	117395.00
520	49526.00
524	26428.00
541	85487.00
549	49302.00
563	38672.00
576	97715.00
580	29825.00
587	94540.00
594	139431.00
597	95093.00
600	54345.00
609	119045.00
612	54986.00
622	116761.00
630	61120.00
632	78920.00
658	104780.00
668	66570.00
679	66182.00
682	69545.00
687	138143.00
688	53214.00
690	99961.00
\.


--
-- TOC entry 3476 (class 0 OID 17764)
-- Dependencies: 227
-- Data for Name: support_data; Type: TABLE DATA; Schema: staging; Owner: postgres
--

COPY staging.support_data (employee_id, support_rating) FROM stdin;
3	5
18	4
25	2
27	1
32	3
37	3
41	3
47	1
54	3
65	2
71	1
72	4
73	3
75	2
84	3
85	3
87	1
90	3
98	5
99	2
101	2
109	4
111	1
115	4
123	2
126	3
134	2
140	4
141	4
143	5
147	4
149	3
154	1
155	5
170	3
184	1
187	3
189	2
200	2
212	2
230	4
231	5
237	4
240	2
243	5
244	5
246	5
247	4
264	1
270	2
282	4
307	1
311	4
312	1
320	3
328	3
331	2
332	3
339	4
340	5
344	1
348	3
350	1
355	3
358	5
360	2
366	3
370	4
390	5
401	5
413	2
415	3
417	2
428	5
439	3
443	2
446	2
452	5
454	3
469	1
484	3
499	3
500	2
505	2
507	2
513	4
518	2
527	5
532	1
540	3
544	2
548	5
552	3
558	2
562	4
568	4
581	1
586	4
588	5
592	1
596	5
598	2
599	4
602	5
604	1
607	1
611	4
613	5
614	4
623	4
628	5
633	3
639	1
651	4
664	3
665	4
674	5
678	1
681	2
684	5
\.


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 224
-- Name: departments_dept_id_seq; Type: SEQUENCE SET; Schema: staging; Owner: postgres
--

SELECT pg_catalog.setval('staging.departments_dept_id_seq', 1, false);


-- Completed on 2026-04-04 02:06:23 EDT

--
-- PostgreSQL database dump complete
--

\unrestrict 79yGWzynu0qD08dkonyRvQvJarokcafPMo4Q2iDIuL4fy5QmeBQVNBOChvJ3rLv

