--
-- PostgreSQL database dump
--

\restrict PCaPiVACgYT0Py2zzEYAXwGoJ2Q8R6RUlMW6n6OB1UQh0WuIBsueKRVIPANbS7I

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

-- Started on 2026-04-27 08:17:27 EDT

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
-- TOC entry 3441 (class 0 OID 33431)
-- Dependencies: 225
-- Data for Name: average_price_delta_per_rating; Type: TABLE DATA; Schema: gold; Owner: postgres
--

COPY gold.average_price_delta_per_rating (star_bucket, avg_price_delta_percent, avg_list_price_delta_percent) FROM stdin;
2 - 2.25	-71.78	-90.00
2.25 - 2.5	-66.92	-87.00
2.5 - 2.75	-45.34	-79.39
2.75 - 3	-37.24	-86.81
3 - 3.25	-10.52	-72.43
3.25 - 3.5	-26.90	-77.74
3.5 - 3.75	-8.66	-70.98
3.75 - 4	-8.31	-71.18
4 - 4.25	-6.35	-69.13
4.25 - 4.5	-7.24	-69.72
4.5 - 4.75	-12.98	-70.88
4.75 - 5	-2.39	-65.06
5 - 5.25	26.81	-59.50
\.


--
-- TOC entry 3442 (class 0 OID 33436)
-- Dependencies: 226
-- Data for Name: average_price_delta_per_rating_per_catagory; Type: TABLE DATA; Schema: gold; Owner: postgres
--

COPY gold.average_price_delta_per_rating_per_catagory (name, star_bucket, avg_price_delta_percent, avg_list_price_delta_percent) FROM stdin;
Abrasive & Finishing Products	4.75 - 5	-14.85	-100.00
Additive Manufacturing Products	2.75 - 3	-100.00	-100.00
Additive Manufacturing Products	3 - 3.25	-24.03	-100.00
Additive Manufacturing Products	3.25 - 3.5	3.14	-100.00
Additive Manufacturing Products	3.5 - 3.75	128.22	0.65
Additive Manufacturing Products	3.75 - 4	92.49	-33.27
Additive Manufacturing Products	4 - 4.25	69.44	-59.45
Additive Manufacturing Products	4.25 - 4.5	-8.95	-72.78
Additive Manufacturing Products	4.5 - 4.75	-42.18	-89.34
Additive Manufacturing Products	4.75 - 5	-59.71	-94.24
Arts & Crafts Supplies	3 - 3.25	-39.25	-100.00
Arts & Crafts Supplies	3.25 - 3.5	15.93	-75.24
Arts & Crafts Supplies	3.5 - 3.75	-20.98	-75.45
Arts & Crafts Supplies	3.75 - 4	-0.08	-73.61
Arts & Crafts Supplies	4 - 4.25	0.01	-73.16
Arts & Crafts Supplies	4.25 - 4.5	6.07	-68.53
Arts & Crafts Supplies	4.5 - 4.75	-0.15	-69.19
Arts & Crafts Supplies	4.75 - 5	9.47	-57.92
Automotive Exterior Accessories	2.5 - 2.75	-13.62	-100.00
Automotive Exterior Accessories	2.75 - 3	-7.18	-72.88
Automotive Exterior Accessories	3 - 3.25	-16.72	-73.42
Automotive Exterior Accessories	3.25 - 3.5	-33.84	-85.48
Automotive Exterior Accessories	3.5 - 3.75	-9.04	-74.72
Automotive Exterior Accessories	3.75 - 4	12.23	-77.59
Automotive Exterior Accessories	4 - 4.25	5.37	-75.58
Automotive Exterior Accessories	4.25 - 4.5	4.81	-68.53
Automotive Exterior Accessories	4.5 - 4.75	-9.43	-72.91
Automotive Exterior Accessories	4.75 - 5	33.47	-70.27
Automotive Tires & Wheels	2.5 - 2.75	-84.46	-100.00
Automotive Tires & Wheels	2.75 - 3	-86.04	-97.81
Automotive Tires & Wheels	3 - 3.25	-85.19	-97.80
Automotive Tires & Wheels	3.25 - 3.5	-40.15	-92.87
Automotive Tires & Wheels	3.5 - 3.75	-21.78	-80.23
Automotive Tires & Wheels	3.75 - 4	-10.45	-75.87
Automotive Tires & Wheels	4 - 4.25	6.74	-69.93
Automotive Tires & Wheels	4.25 - 4.5	4.25	-75.65
Automotive Tires & Wheels	4.5 - 4.75	-8.30	-73.77
Automotive Tires & Wheels	4.75 - 5	8.09	-49.48
Automotive Tools & Equipment	2.5 - 2.75	-80.06	-90.43
Automotive Tools & Equipment	2.75 - 3	-43.27	-100.00
Automotive Tools & Equipment	3 - 3.25	-71.01	-92.68
Automotive Tools & Equipment	3.25 - 3.5	-64.66	-88.50
Automotive Tools & Equipment	3.5 - 3.75	-35.15	-72.73
Automotive Tools & Equipment	3.75 - 4	-2.25	-56.34
Automotive Tools & Equipment	4 - 4.25	-17.55	-69.41
Automotive Tools & Equipment	4.25 - 4.5	8.22	-64.46
Automotive Tools & Equipment	4.5 - 4.75	-5.70	-63.55
Automotive Tools & Equipment	4.75 - 5	8.98	-51.61
Automotive Tools & Equipment	5 - 5.25	-10.92	-100.00
Baby Activity & Entertainment Products	4 - 4.25	265.28	-100.00
Baby Care Products	2.75 - 3	-27.54	-100.00
Baby Care Products	3.25 - 3.5	-35.08	-100.00
Baby Care Products	3.5 - 3.75	0.93	-72.21
Baby Care Products	3.75 - 4	-6.49	-89.55
Baby Care Products	4 - 4.25	5.92	-89.64
Baby Care Products	4.25 - 4.5	-1.21	-87.21
Baby Care Products	4.5 - 4.75	-3.31	-83.73
Baby Care Products	4.75 - 5	13.81	-95.66
Baby & Toddler Feeding Supplies	3 - 3.25	-41.65	-100.00
Baby & Toddler Feeding Supplies	3.25 - 3.5	33.91	-100.00
Baby & Toddler Feeding Supplies	3.5 - 3.75	-45.26	-93.25
Baby & Toddler Feeding Supplies	3.75 - 4	46.32	-100.00
Baby & Toddler Feeding Supplies	4 - 4.25	33.10	-70.11
Baby & Toddler Feeding Supplies	4.25 - 4.5	-18.38	-91.13
Baby & Toddler Feeding Supplies	4.5 - 4.75	-30.94	-94.12
Baby & Toddler Feeding Supplies	4.75 - 5	10.05	-90.63
Baby & Toddler Toys	2.25 - 2.5	-54.30	-100.00
Baby & Toddler Toys	2.5 - 2.75	-38.66	-47.03
Baby & Toddler Toys	2.75 - 3	12.95	-3.45
Baby & Toddler Toys	3 - 3.25	-38.64	-100.00
Baby & Toddler Toys	3.25 - 3.5	-3.19	-70.03
Baby & Toddler Toys	3.5 - 3.75	3.88	-81.16
Baby & Toddler Toys	3.75 - 4	-10.17	-79.64
Baby & Toddler Toys	4 - 4.25	-12.18	-76.27
Baby & Toddler Toys	4.25 - 4.5	-1.85	-71.14
Baby & Toddler Toys	4.5 - 4.75	-4.45	-67.07
Baby & Toddler Toys	4.75 - 5	4.86	-59.02
Beading & Jewelry Making	2.75 - 3	-4.09	-100.00
Beading & Jewelry Making	3 - 3.25	-34.93	-100.00
Beading & Jewelry Making	3.25 - 3.5	-4.67	-100.00
Beading & Jewelry Making	3.5 - 3.75	103.08	-100.00
Beading & Jewelry Making	3.75 - 4	67.73	-96.28
Beading & Jewelry Making	4 - 4.25	19.11	-75.61
Beading & Jewelry Making	4.25 - 4.5	-4.18	-91.03
Beading & Jewelry Making	4.5 - 4.75	-20.59	-89.78
Beading & Jewelry Making	4.75 - 5	-19.50	-89.50
Beauty Tools & Accessories	2.75 - 3	-62.48	-100.00
Beauty Tools & Accessories	3.25 - 3.5	-35.05	-100.00
Beauty Tools & Accessories	3.5 - 3.75	-48.05	-100.00
Beauty Tools & Accessories	3.75 - 4	-5.80	-8.32
Beauty Tools & Accessories	4 - 4.25	-10.89	-52.39
Beauty Tools & Accessories	4.25 - 4.5	-15.58	-45.74
Beauty Tools & Accessories	4.5 - 4.75	-31.32	-55.12
Beauty Tools & Accessories	4.75 - 5	-13.84	-63.54
Boys' Clothing	3.25 - 3.5	-61.85	-100.00
Boys' Clothing	3.5 - 3.75	71.21	-100.00
Boys' Clothing	3.75 - 4	-17.95	-80.54
Boys' Clothing	4 - 4.25	-8.49	-90.16
Boys' Clothing	4.25 - 4.5	-4.12	-84.60
Boys' Clothing	4.5 - 4.75	-12.09	-80.01
Boys' Clothing	4.75 - 5	-11.79	-73.51
Boys' Clothing	5 - 5.25	-100.00	-100.00
Boys' Jewelry	4.25 - 4.5	-16.17	-100.00
Boys' Jewelry	4.5 - 4.75	-14.90	-100.00
Boys' Shoes	4 - 4.25	6.71	-0.16
Boys' Shoes	4.25 - 4.5	-58.67	-100.00
Boys' Shoes	4.5 - 4.75	-33.41	-82.43
Boys' Watches	3.25 - 3.5	3.43	-100.00
Boys' Watches	3.5 - 3.75	-42.54	-40.80
Boys' Watches	3.75 - 4	10.93	-100.00
Boys' Watches	4 - 4.25	-12.19	-82.60
Boys' Watches	4.25 - 4.5	-8.96	-84.66
Boys' Watches	4.5 - 4.75	-12.79	-76.59
Car Care	3.25 - 3.5	-81.72	-100.00
Car Care	4 - 4.25	17.33	-18.96
Car Care	4.25 - 4.5	-28.57	-100.00
Car Care	4.5 - 4.75	-38.55	-85.87
Cat Supplies	2.5 - 2.75	88.71	-100.00
Cat Supplies	2.75 - 3	-5.82	-100.00
Cat Supplies	3 - 3.25	67.73	21.43
Cat Supplies	3.25 - 3.5	-25.03	-75.80
Cat Supplies	3.5 - 3.75	-1.69	-57.51
Cat Supplies	3.75 - 4	-2.22	-78.70
Cat Supplies	4 - 4.25	-7.56	-68.91
Cat Supplies	4.25 - 4.5	-4.96	-66.61
Cat Supplies	4.5 - 4.75	-11.54	-72.88
Cat Supplies	4.75 - 5	-27.34	-77.44
Cat Supplies	5 - 5.25	-35.93	-42.57
Child Safety Car Seats & Accessories	2.75 - 3	-85.69	-100.00
Child Safety Car Seats & Accessories	3 - 3.25	-0.17	-100.00
Child Safety Car Seats & Accessories	3.25 - 3.5	-36.70	-84.04
Child Safety Car Seats & Accessories	3.5 - 3.75	-26.71	-88.25
Child Safety Car Seats & Accessories	3.75 - 4	-46.94	-91.69
Child Safety Car Seats & Accessories	4 - 4.25	-33.56	-82.28
Child Safety Car Seats & Accessories	4.25 - 4.5	-11.59	-77.18
Child Safety Car Seats & Accessories	4.5 - 4.75	12.79	-56.66
Child Safety Car Seats & Accessories	4.75 - 5	109.14	-34.93
Computer External Components	3.75 - 4	-61.92	-100.00
Computer Monitors	2.5 - 2.75	-30.91	-20.40
Computer Monitors	3 - 3.25	16.59	-100.00
Computer Monitors	3.25 - 3.5	-38.38	-90.34
Computer Monitors	3.5 - 3.75	-3.97	-76.93
Computer Monitors	3.75 - 4	10.49	-78.98
Computer Monitors	4 - 4.25	1.39	-59.09
Computer Monitors	4.25 - 4.5	5.75	-49.87
Computer Monitors	4.5 - 4.75	-19.20	-56.14
Computer Monitors	4.75 - 5	-33.48	-73.76
Computers	3 - 3.25	-80.79	-100.00
Computers	3.5 - 3.75	23.00	-100.00
Computers	3.75 - 4	-68.86	-86.72
Computers	4 - 4.25	-76.66	-92.46
Computers	4.25 - 4.5	-76.00	-87.88
Computers	4.5 - 4.75	-77.15	-91.30
Computers	4.75 - 5	-78.12	-87.17
Diet & Sports Nutrition	2.75 - 3	259.79	-100.00
Diet & Sports Nutrition	3 - 3.25	21.21	-46.75
Diet & Sports Nutrition	3.25 - 3.5	7.62	-58.49
Diet & Sports Nutrition	3.5 - 3.75	4.11	-52.73
Diet & Sports Nutrition	3.75 - 4	-9.32	-74.20
Diet & Sports Nutrition	4 - 4.25	0.92	-67.45
Diet & Sports Nutrition	4.25 - 4.5	-15.69	-69.62
Diet & Sports Nutrition	4.5 - 4.75	-4.32	-63.39
Diet & Sports Nutrition	4.75 - 5	-6.93	-55.89
Fabric Decorating	3.25 - 3.5	-30.94	-100.00
Fabric Decorating	3.5 - 3.75	-40.25	-93.58
Fabric Decorating	3.75 - 4	-59.49	-80.24
Fabric Decorating	4 - 4.25	-50.66	-81.44
Fabric Decorating	4.25 - 4.5	-54.18	-82.87
Fabric Decorating	4.5 - 4.75	-48.90	-69.75
Fabric Decorating	4.75 - 5	-24.22	43.73
Foot, Hand & Nail Care Products	2.5 - 2.75	32.35	11.79
Foot, Hand & Nail Care Products	2.75 - 3	-38.68	-100.00
Foot, Hand & Nail Care Products	3 - 3.25	-36.28	-93.55
Foot, Hand & Nail Care Products	3.25 - 3.5	-36.15	-91.38
Foot, Hand & Nail Care Products	3.5 - 3.75	-27.64	-84.88
Foot, Hand & Nail Care Products	3.75 - 4	-13.82	-72.16
Foot, Hand & Nail Care Products	4 - 4.25	-1.97	-66.63
Foot, Hand & Nail Care Products	4.25 - 4.5	9.43	-66.03
Foot, Hand & Nail Care Products	4.5 - 4.75	3.05	-66.02
Foot, Hand & Nail Care Products	4.75 - 5	31.59	-58.70
Foot, Hand & Nail Care Products	5 - 5.25	194.04	292.98
Furniture	3 - 3.25	-57.18	-87.98
Furniture	3.25 - 3.5	-35.55	-72.11
Furniture	3.5 - 3.75	-22.08	-75.59
Furniture	3.75 - 4	-17.85	-61.71
Furniture	4 - 4.25	7.70	-66.68
Furniture	4.25 - 4.5	24.04	-45.76
Furniture	4.5 - 4.75	1.26	-56.68
Furniture	4.75 - 5	2.89	-59.06
Girls' Clothing	3.25 - 3.5	-49.94	-93.37
Girls' Clothing	3.5 - 3.75	17.92	-85.12
Girls' Clothing	3.75 - 4	0.46	-83.88
Girls' Clothing	4 - 4.25	2.01	-80.64
Girls' Clothing	4.25 - 4.5	-3.76	-81.85
Girls' Clothing	4.5 - 4.75	-12.04	-80.62
Girls' Clothing	4.75 - 5	-5.55	-76.60
Girls' Jewelry	2.75 - 3	-29.62	-100.00
Girls' Jewelry	3 - 3.25	64.33	-100.00
Girls' Jewelry	3.25 - 3.5	6.71	-94.14
Girls' Jewelry	3.5 - 3.75	12.00	-96.55
Girls' Jewelry	3.75 - 4	-26.52	-92.79
Girls' Jewelry	4 - 4.25	-26.41	-92.79
Girls' Jewelry	4.25 - 4.5	-27.92	-91.40
Girls' Jewelry	4.5 - 4.75	-15.43	-88.93
Girls' Jewelry	4.75 - 5	-24.57	-84.22
Hardware	3 - 3.25	-51.33	-100.00
Hardware	3.25 - 3.5	-39.65	-47.21
Hardware	3.5 - 3.75	14.86	-51.24
Hardware	3.75 - 4	73.40	-10.52
Hardware	4 - 4.25	14.31	-57.45
Hardware	4.25 - 4.5	-0.71	-67.43
Hardware	4.5 - 4.75	-5.19	-70.57
Hardware	4.75 - 5	21.40	-67.55
Headphones & Earbuds	2.25 - 2.5	-80.34	-80.11
Headphones & Earbuds	2.75 - 3	-29.54	-93.05
Headphones & Earbuds	3 - 3.25	-15.45	-77.11
Headphones & Earbuds	3.25 - 3.5	-35.26	-72.56
Headphones & Earbuds	3.5 - 3.75	-6.49	-63.64
Headphones & Earbuds	3.75 - 4	-23.89	-67.94
Headphones & Earbuds	4 - 4.25	-18.60	-67.12
Headphones & Earbuds	4.25 - 4.5	-4.50	-61.61
Headphones & Earbuds	4.5 - 4.75	13.78	-52.13
Headphones & Earbuds	4.75 - 5	-10.53	-66.77
Headphones & Earbuds	5 - 5.25	-21.39	-70.23
Home Décor Products	2.5 - 2.75	-55.58	-100.00
Home Décor Products	2.75 - 3	-59.63	-100.00
Home Décor Products	3 - 3.25	25.12	-49.41
Home Décor Products	3.25 - 3.5	-9.32	-67.24
Home Décor Products	3.5 - 3.75	-2.54	-64.03
Home Décor Products	3.75 - 4	-12.55	-67.36
Home Décor Products	4 - 4.25	-4.94	-56.40
Home Décor Products	4.25 - 4.5	-4.19	-56.98
Home Décor Products	4.5 - 4.75	0.15	-53.50
Home Décor Products	4.75 - 5	10.36	-53.08
Home Décor Products	5 - 5.25	146.99	-100.00
Horse Supplies	4 - 4.25	-8.09	-100.00
Horse Supplies	4.25 - 4.5	-18.02	-100.00
Horse Supplies	4.5 - 4.75	-48.87	-100.00
Industrial Adhesives, Sealants & Lubricants	3 - 3.25	-54.54	-90.42
Industrial Adhesives, Sealants & Lubricants	3.25 - 3.5	-55.63	-58.57
Industrial Adhesives, Sealants & Lubricants	3.5 - 3.75	-51.59	-85.28
Industrial Adhesives, Sealants & Lubricants	3.75 - 4	-52.06	-90.62
Industrial Adhesives, Sealants & Lubricants	4 - 4.25	-44.15	-85.79
Industrial Adhesives, Sealants & Lubricants	4.25 - 4.5	-45.53	-86.45
Industrial Adhesives, Sealants & Lubricants	4.5 - 4.75	-33.70	-75.24
Industrial Adhesives, Sealants & Lubricants	4.75 - 5	-16.70	-66.57
Industrial Hardware	3.25 - 3.5	-33.65	-100.00
Industrial Hardware	3.5 - 3.75	-12.46	-85.45
Industrial Hardware	3.75 - 4	-31.56	-88.72
Industrial Hardware	4 - 4.25	-20.62	-86.22
Industrial Hardware	4.25 - 4.5	-14.93	-76.08
Industrial Hardware	4.5 - 4.75	-14.74	-79.85
Industrial Hardware	4.75 - 5	19.97	-77.16
Industrial Materials	3 - 3.25	-66.88	-100.00
Industrial Materials	3.25 - 3.5	-66.88	-100.00
Industrial Materials	3.75 - 4	-56.93	-82.34
Industrial Materials	4 - 4.25	-34.64	-88.58
Industrial Materials	4.25 - 4.5	-29.57	-87.79
Industrial Materials	4.5 - 4.75	-37.67	-81.79
Industrial Materials	4.75 - 5	-21.65	-98.34
Kids' Electronics	4 - 4.25	-25.42	-100.00
Kids' Electronics	4.25 - 4.5	363.04	442.30
Kids' Furniture	2.75 - 3	-34.34	-52.92
Kids' Furniture	3 - 3.25	-50.78	-98.73
Kids' Furniture	3.25 - 3.5	-55.54	-57.56
Kids' Furniture	3.5 - 3.75	-16.73	-40.15
Kids' Furniture	3.75 - 4	14.52	-81.96
Kids' Furniture	4 - 4.25	-17.59	-73.55
Kids' Furniture	4.25 - 4.5	-31.73	-75.10
Kids' Furniture	4.5 - 4.75	-36.02	-75.71
Kids' Furniture	4.75 - 5	-39.64	-73.08
Kids' Home Store	3.5 - 3.75	-66.76	-100.00
Kids' Home Store	3.75 - 4	15.65	8.53
Kids' Home Store	4 - 4.25	-5.92	-65.19
Kids' Home Store	4.25 - 4.5	18.27	-51.39
Kids' Home Store	4.5 - 4.75	2.54	-62.30
Kids' Home Store	4.75 - 5	-4.04	-61.83
Kids' Home Store	5 - 5.25	-16.84	-100.00
Kids' Party Supplies	2.5 - 2.75	-41.05	-100.00
Kids' Party Supplies	3.25 - 3.5	36.77	-66.25
Kids' Party Supplies	3.5 - 3.75	-32.92	-94.05
Kids' Party Supplies	3.75 - 4	3.04	-77.66
Kids' Party Supplies	4 - 4.25	-5.00	-85.98
Kids' Party Supplies	4.25 - 4.5	-11.77	-81.48
Kids' Party Supplies	4.5 - 4.75	-8.86	-80.83
Kids' Party Supplies	4.75 - 5	-0.25	-75.90
Kids' Play Boats	3.5 - 3.75	-73.12	-48.92
Kids' Play Boats	3.75 - 4	-81.12	-100.00
Kids' Play Boats	4 - 4.25	-73.83	-77.88
Kids' Play Boats	4.25 - 4.5	-85.44	-88.08
Kids' Play Boats	4.5 - 4.75	-74.21	-67.49
Kids' Play Boats	4.75 - 5	-80.74	-100.00
Kids' Play Tractors	3.25 - 3.5	-76.24	-100.00
Kids' Play Tractors	3.75 - 4	-61.34	-40.80
Kids' Play Tractors	4 - 4.25	-6.07	-86.19
Kids' Play Tractors	4.25 - 4.5	-13.93	-56.35
Kids' Play Tractors	4.5 - 4.75	-27.98	-72.52
Kids' Play Tractors	4.75 - 5	-23.43	-51.41
Kitchen & Bath Fixtures	4 - 4.25	2.67	-100.00
Kitchen & Bath Fixtures	4.25 - 4.5	19.41	-7.11
Kitchen & Bath Fixtures	4.5 - 4.75	-31.17	-81.55
Kitchen & Bath Fixtures	4.75 - 5	-14.50	-100.00
Knitting & Crochet Supplies	2.75 - 3	68.06	67.87
Knitting & Crochet Supplies	3 - 3.25	-0.43	-100.00
Knitting & Crochet Supplies	3.25 - 3.5	-24.70	-100.00
Knitting & Crochet Supplies	3.5 - 3.75	12.47	-55.42
Knitting & Crochet Supplies	3.75 - 4	-1.03	-81.42
Knitting & Crochet Supplies	4 - 4.25	-2.48	-74.26
Knitting & Crochet Supplies	4.25 - 4.5	-1.93	-77.26
Knitting & Crochet Supplies	4.5 - 4.75	-9.83	-75.83
Knitting & Crochet Supplies	4.75 - 5	-10.36	-61.98
Knitting & Crochet Supplies	5 - 5.25	-39.25	-100.00
Light Bulbs	2.75 - 3	-44.30	-75.69
Light Bulbs	3 - 3.25	-8.75	-100.00
Light Bulbs	3.25 - 3.5	-55.29	-93.02
Light Bulbs	3.5 - 3.75	-26.62	-80.29
Light Bulbs	3.75 - 4	-15.69	-89.00
Light Bulbs	4 - 4.25	-4.48	-81.47
Light Bulbs	4.25 - 4.5	-6.06	-75.51
Light Bulbs	4.5 - 4.75	-15.05	-77.68
Light Bulbs	4.75 - 5	-19.08	-87.14
Luggage	3.25 - 3.5	20.80	-100.00
Luggage	3.5 - 3.75	-19.35	-69.51
Luggage	3.75 - 4	29.55	-70.98
Luggage	4 - 4.25	-13.41	-61.25
Luggage	4.25 - 4.5	-3.69	-61.25
Luggage	4.5 - 4.75	-19.23	-66.48
Luggage	4.75 - 5	-36.17	-84.19
Makeup	2.75 - 3	-4.77	-100.00
Makeup	3 - 3.25	-48.01	-81.54
Makeup	3.25 - 3.5	-23.04	-74.23
Makeup	3.5 - 3.75	-5.66	-70.39
Makeup	3.75 - 4	-18.09	-67.96
Makeup	4 - 4.25	-14.05	-63.58
Makeup	4.25 - 4.5	-11.66	-56.65
Makeup	4.5 - 4.75	0.26	-47.97
Makeup	4.75 - 5	17.80	-63.44
Men's Accessories	3.25 - 3.5	-65.31	-100.00
Men's Accessories	3.5 - 3.75	-51.72	-100.00
Men's Accessories	3.75 - 4	-59.79	-93.17
Men's Accessories	4 - 4.25	-52.35	-94.08
Men's Accessories	4.25 - 4.5	-46.31	-92.22
Men's Accessories	4.5 - 4.75	-48.27	-92.53
Men's Accessories	4.75 - 5	-56.34	-92.52
Men's Clothing	3.25 - 3.5	-35.73	-100.00
Men's Clothing	3.5 - 3.75	-6.52	-71.49
Men's Clothing	3.75 - 4	2.18	-42.70
Men's Clothing	4 - 4.25	0.64	-70.59
Men's Clothing	4.25 - 4.5	-17.86	-71.89
Men's Clothing	4.5 - 4.75	-11.45	-66.76
Men's Clothing	4.75 - 5	-36.27	-77.03
Men's Shoes	3.25 - 3.5	-4.80	-9.31
Men's Shoes	3.5 - 3.75	-51.44	-79.60
Men's Shoes	3.75 - 4	-32.11	-60.43
Men's Shoes	4 - 4.25	-27.04	-54.38
Men's Shoes	4.25 - 4.5	-17.10	-56.20
Men's Shoes	4.5 - 4.75	-6.04	-54.38
Men's Shoes	4.75 - 5	-16.88	-76.69
Nintendo Switch Consoles, Games & Accessories	2.75 - 3	37.31	-100.00
Nintendo Switch Consoles, Games & Accessories	3.25 - 3.5	-67.78	-100.00
Nintendo Switch Consoles, Games & Accessories	3.5 - 3.75	-50.03	-80.14
Nintendo Switch Consoles, Games & Accessories	3.75 - 4	-26.49	-81.11
Nintendo Switch Consoles, Games & Accessories	4 - 4.25	-19.72	-82.81
Nintendo Switch Consoles, Games & Accessories	4.25 - 4.5	-2.32	-75.83
Nintendo Switch Consoles, Games & Accessories	4.5 - 4.75	-8.72	-80.67
Nintendo Switch Consoles, Games & Accessories	4.75 - 5	-25.74	-90.03
Nursery Furniture, Bedding & Décor	4.25 - 4.5	10.49	-37.60
Nursery Furniture, Bedding & Décor	4.5 - 4.75	19.91	-53.48
Nursery Furniture, Bedding & Décor	4.75 - 5	13.79	-100.00
Office Electronics	2.25 - 2.5	-56.41	-70.93
Office Electronics	2.5 - 2.75	-17.91	-44.00
Office Electronics	2.75 - 3	-51.17	-52.62
Office Electronics	3 - 3.25	-53.70	-89.13
Office Electronics	3.25 - 3.5	-19.16	-63.96
Office Electronics	3.5 - 3.75	-12.36	-63.15
Office Electronics	3.75 - 4	-27.64	-59.79
Office Electronics	4 - 4.25	-20.68	-62.82
Office Electronics	4.25 - 4.5	-25.87	-69.78
Office Electronics	4.5 - 4.75	-50.63	-74.80
Office Electronics	4.75 - 5	-43.71	-67.05
Office Electronics	5 - 5.25	-49.57	-69.28
Party Decorations	3.75 - 4	87.82	-100.00
Party Decorations	4 - 4.25	-11.13	-100.00
Party Decorations	4.25 - 4.5	0.16	-77.99
Party Decorations	4.5 - 4.75	3.48	-83.66
Party Decorations	4.75 - 5	-0.16	-100.00
PlayStation 4 Games, Consoles & Accessories	2.75 - 3	-66.16	-75.25
PlayStation 4 Games, Consoles & Accessories	3 - 3.25	134.84	-93.23
PlayStation 4 Games, Consoles & Accessories	3.25 - 3.5	10.39	-94.59
PlayStation 4 Games, Consoles & Accessories	3.5 - 3.75	-12.42	-76.57
PlayStation 4 Games, Consoles & Accessories	3.75 - 4	-13.81	-74.52
PlayStation 4 Games, Consoles & Accessories	4 - 4.25	7.88	-69.40
PlayStation 4 Games, Consoles & Accessories	4.25 - 4.5	-8.73	-68.74
PlayStation 4 Games, Consoles & Accessories	4.5 - 4.75	-8.84	-63.32
PlayStation 4 Games, Consoles & Accessories	4.75 - 5	-6.13	-65.46
PlayStation 5 Consoles, Games & Accessories	3.5 - 3.75	-69.49	-100.00
PlayStation 5 Consoles, Games & Accessories	3.75 - 4	-55.61	-100.00
PlayStation 5 Consoles, Games & Accessories	4 - 4.25	-45.45	-100.00
PlayStation 5 Consoles, Games & Accessories	4.25 - 4.5	61.67	-86.69
PlayStation 5 Consoles, Games & Accessories	4.5 - 4.75	-27.60	-91.24
PlayStation 5 Consoles, Games & Accessories	4.75 - 5	103.05	-100.00
PlayStation Vita Games, Consoles & Accessories	3 - 3.25	-26.73	-100.00
PlayStation Vita Games, Consoles & Accessories	3.25 - 3.5	-69.60	-100.00
PlayStation Vita Games, Consoles & Accessories	3.5 - 3.75	-13.91	-100.00
PlayStation Vita Games, Consoles & Accessories	3.75 - 4	-59.17	-98.47
PlayStation Vita Games, Consoles & Accessories	4 - 4.25	-2.95	-90.50
PlayStation Vita Games, Consoles & Accessories	4.25 - 4.5	-34.76	-86.60
PlayStation Vita Games, Consoles & Accessories	4.5 - 4.75	-33.57	-81.33
PlayStation Vita Games, Consoles & Accessories	4.75 - 5	-42.74	-69.07
Pregnancy & Maternity Products	3.25 - 3.5	-33.27	-51.63
Pregnancy & Maternity Products	3.5 - 3.75	-18.84	-88.39
Pregnancy & Maternity Products	3.75 - 4	-5.82	-82.73
Pregnancy & Maternity Products	4 - 4.25	13.57	-68.05
Pregnancy & Maternity Products	4.25 - 4.5	4.46	-66.34
Pregnancy & Maternity Products	4.5 - 4.75	-11.45	-67.07
Pregnancy & Maternity Products	4.75 - 5	-15.15	-85.91
Printmaking Supplies	2.5 - 2.75	-88.97	-100.00
Printmaking Supplies	3 - 3.25	-87.74	-100.00
Printmaking Supplies	3.25 - 3.5	-76.69	-100.00
Printmaking Supplies	3.5 - 3.75	62.28	-100.00
Printmaking Supplies	3.75 - 4	-25.77	-80.01
Printmaking Supplies	4 - 4.25	-0.58	-84.11
Printmaking Supplies	4.25 - 4.5	-7.06	-72.62
Printmaking Supplies	4.5 - 4.75	-45.27	-84.31
Printmaking Supplies	4.75 - 5	-48.96	-76.88
Reptiles & Amphibian Supplies	3.5 - 3.75	-6.44	-13.85
Reptiles & Amphibian Supplies	4 - 4.25	-28.18	-82.61
Reptiles & Amphibian Supplies	4.25 - 4.5	58.70	-100.00
Reptiles & Amphibian Supplies	4.5 - 4.75	224.83	186.12
Shaving & Hair Removal Products	2.75 - 3	-78.28	-100.00
Shaving & Hair Removal Products	3 - 3.25	-41.06	-85.32
Shaving & Hair Removal Products	3.25 - 3.5	-50.24	-64.18
Shaving & Hair Removal Products	3.5 - 3.75	-47.47	-69.48
Shaving & Hair Removal Products	3.75 - 4	-7.68	-37.34
Shaving & Hair Removal Products	4 - 4.25	14.52	-44.47
Shaving & Hair Removal Products	4.25 - 4.5	20.35	-50.28
Shaving & Hair Removal Products	4.5 - 4.75	-6.76	-64.29
Shaving & Hair Removal Products	4.75 - 5	-13.17	-51.20
Skin Care Products	2.75 - 3	-44.13	-100.00
Skin Care Products	3 - 3.25	-42.68	-56.70
Skin Care Products	3.25 - 3.5	16.47	-100.00
Skin Care Products	3.5 - 3.75	-4.07	-48.40
Skin Care Products	3.75 - 4	-31.03	-79.91
Skin Care Products	4 - 4.25	-1.55	-74.57
Skin Care Products	4.25 - 4.5	3.20	-56.70
Skin Care Products	4.5 - 4.75	12.09	-60.73
Skin Care Products	4.75 - 5	12.55	-65.93
Slot Cars, Race Tracks & Accessories	2.75 - 3	-27.32	-100.00
Slot Cars, Race Tracks & Accessories	3 - 3.25	-48.06	-79.92
Slot Cars, Race Tracks & Accessories	3.5 - 3.75	-0.57	-100.00
Slot Cars, Race Tracks & Accessories	3.75 - 4	0.47	-48.54
Slot Cars, Race Tracks & Accessories	4 - 4.25	58.21	-55.19
Slot Cars, Race Tracks & Accessories	4.25 - 4.5	-12.87	-76.53
Slot Cars, Race Tracks & Accessories	4.5 - 4.75	-18.19	-60.89
Slot Cars, Race Tracks & Accessories	4.75 - 5	-41.87	-77.42
Smart Home: Lawn and Garden	3 - 3.25	-50.01	-34.92
Smart Home: Lawn and Garden	3.25 - 3.5	-100.00	-100.00
Smart Home: Lawn and Garden	3.75 - 4	-100.00	-100.00
Smart Home: Lawn and Garden	4 - 4.25	-47.77	-100.00
Smart Home: Lawn and Garden	4.25 - 4.5	-100.00	-100.00
Smart Home: Security Cameras and Systems	2.5 - 2.75	-85.17	-78.52
Smart Home: Security Cameras and Systems	2.75 - 3	-77.75	-71.91
Smart Home: Security Cameras and Systems	3.25 - 3.5	-57.14	-50.42
Smart Home: Security Cameras and Systems	3.5 - 3.75	-47.71	-47.82
Smart Home: Security Cameras and Systems	3.75 - 4	-19.71	-44.29
Smart Home: Security Cameras and Systems	4 - 4.25	-25.68	-48.09
Smart Home: Security Cameras and Systems	4.25 - 4.5	14.21	-44.58
Smart Home: Security Cameras and Systems	4.5 - 4.75	37.61	-64.57
Smart Home: Security Cameras and Systems	4.75 - 5	-58.78	-100.00
Smart Home: Voice Assistants and Hubs	2.25 - 2.5	-100.00	-100.00
Smart Home: Voice Assistants and Hubs	2.75 - 3	-100.00	-100.00
Smart Home: Voice Assistants and Hubs	3 - 3.25	-100.00	-100.00
Smart Home: Voice Assistants and Hubs	3.5 - 3.75	-100.00	-100.00
Smart Home: Voice Assistants and Hubs	3.75 - 4	-10.15	-96.30
Smart Home: Voice Assistants and Hubs	4 - 4.25	-50.73	-87.95
Smart Home: Voice Assistants and Hubs	4.25 - 4.5	-26.03	-100.00
Smart Home: Voice Assistants and Hubs	4.5 - 4.75	-23.93	-97.53
Sports & Outdoor Play Toys	2 - 2.25	-72.65	-85.00
Sports & Outdoor Play Toys	2.25 - 2.5	-54.04	-100.00
Sports & Outdoor Play Toys	2.5 - 2.75	-36.48	-75.59
Sports & Outdoor Play Toys	2.75 - 3	-52.86	-92.33
Sports & Outdoor Play Toys	3 - 3.25	-30.06	-57.96
Sports & Outdoor Play Toys	3.25 - 3.5	-29.43	-59.75
Sports & Outdoor Play Toys	3.5 - 3.75	-26.65	-62.15
Sports & Outdoor Play Toys	3.75 - 4	-24.25	-63.34
Sports & Outdoor Play Toys	4 - 4.25	-21.61	-63.19
Sports & Outdoor Play Toys	4.25 - 4.5	3.68	-57.62
Sports & Outdoor Play Toys	4.5 - 4.75	4.22	-55.07
Sports & Outdoor Play Toys	4.75 - 5	22.37	-52.78
Televisions & Video Products	3 - 3.25	-30.62	-81.41
Televisions & Video Products	3.25 - 3.5	-39.38	-68.27
Televisions & Video Products	3.5 - 3.75	-3.01	-80.06
Televisions & Video Products	3.75 - 4	20.46	-69.60
Televisions & Video Products	4 - 4.25	8.94	-66.32
Televisions & Video Products	4.25 - 4.5	-11.89	-72.10
Televisions & Video Products	4.5 - 4.75	-31.83	-72.99
Televisions & Video Products	4.75 - 5	-5.03	-59.48
Toys & Games	2.75 - 3	-31.93	-100.00
Toys & Games	3 - 3.25	-9.64	-74.54
Toys & Games	3.25 - 3.5	24.65	-78.88
Toys & Games	3.5 - 3.75	-5.38	-76.63
Toys & Games	3.75 - 4	14.11	-45.71
Toys & Games	4 - 4.25	10.88	-48.39
Toys & Games	4.25 - 4.5	-2.30	-63.44
Toys & Games	4.5 - 4.75	-13.10	-63.23
Toys & Games	4.75 - 5	-16.95	-56.99
Vacuum Cleaners & Floor Care	3.25 - 3.5	45.92	-20.93
Vacuum Cleaners & Floor Care	3.5 - 3.75	70.94	3.17
Vacuum Cleaners & Floor Care	3.75 - 4	64.74	-48.39
Vacuum Cleaners & Floor Care	4 - 4.25	105.01	-19.08
Vacuum Cleaners & Floor Care	4.25 - 4.5	102.47	-31.75
Vacuum Cleaners & Floor Care	4.5 - 4.75	-19.80	-76.60
Vacuum Cleaners & Floor Care	4.75 - 5	-41.07	-80.74
Vacuum Cleaners & Floor Care	5 - 5.25	194.14	-67.53
Video Games	2.75 - 3	-33.14	-38.72
Video Games	3 - 3.25	478.62	90.22
Video Games	3.25 - 3.5	-6.12	-39.74
Video Games	3.5 - 3.75	98.10	-42.78
Video Games	3.75 - 4	11.79	-46.29
Video Games	4 - 4.25	4.11	-51.57
Video Games	4.25 - 4.5	-13.35	-58.63
Video Games	4.5 - 4.75	-20.64	-61.68
Video Games	4.75 - 5	-19.61	-74.16
Wearable Technology	2.5 - 2.75	-77.39	-100.00
Wearable Technology	3 - 3.25	-6.12	-88.40
Wearable Technology	3.25 - 3.5	-25.25	-86.12
Wearable Technology	3.5 - 3.75	19.07	-70.31
Wearable Technology	3.75 - 4	-6.45	-86.25
Wearable Technology	4 - 4.25	-13.47	-87.64
Wearable Technology	4.25 - 4.5	-40.07	-90.21
Wearable Technology	4.5 - 4.75	-44.38	-92.23
Wearable Technology	4.75 - 5	-31.39	-93.40
Wellness & Relaxation Products	2.75 - 3	-61.34	-100.00
Wellness & Relaxation Products	3 - 3.25	20.87	-97.62
Wellness & Relaxation Products	3.25 - 3.5	-28.48	-84.84
Wellness & Relaxation Products	3.5 - 3.75	12.34	-83.95
Wellness & Relaxation Products	3.75 - 4	15.53	-67.77
Wellness & Relaxation Products	4 - 4.25	22.63	-52.75
Wellness & Relaxation Products	4.25 - 4.5	1.12	-64.34
Wellness & Relaxation Products	4.5 - 4.75	-10.14	-72.11
Wellness & Relaxation Products	4.75 - 5	13.85	-59.34
Wellness & Relaxation Products	5 - 5.25	-24.81	-100.00
Wii U Games, Consoles & Accessories	3 - 3.25	5.09	-100.00
Wii U Games, Consoles & Accessories	3.25 - 3.5	-64.76	-40.54
Wii U Games, Consoles & Accessories	3.5 - 3.75	82.38	-86.44
Wii U Games, Consoles & Accessories	3.75 - 4	337.33	-89.51
Wii U Games, Consoles & Accessories	4 - 4.25	12.32	-60.81
Wii U Games, Consoles & Accessories	4.25 - 4.5	-13.97	-72.05
Wii U Games, Consoles & Accessories	4.5 - 4.75	-26.53	-71.20
Wii U Games, Consoles & Accessories	4.75 - 5	-22.41	-78.20
Women's Handbags	2 - 2.25	-70.06	-100.00
Women's Handbags	3 - 3.25	-67.71	-100.00
Women's Handbags	3.25 - 3.5	-32.34	-64.48
Women's Handbags	3.5 - 3.75	-60.97	-92.66
Women's Handbags	3.75 - 4	-51.28	-92.72
Women's Handbags	4 - 4.25	-42.77	-88.79
Women's Handbags	4.25 - 4.5	-35.10	-82.80
Women's Handbags	4.5 - 4.75	-26.38	-78.79
Women's Handbags	4.75 - 5	-12.22	-73.35
Women's Handbags	5 - 5.25	1.00	-38.27
Women's Watches	3.25 - 3.5	-53.48	-100.00
Women's Watches	3.5 - 3.75	-69.53	-92.14
Women's Watches	3.75 - 4	-66.76	-93.68
Women's Watches	4 - 4.25	-58.46	-92.75
Women's Watches	4.25 - 4.5	-46.12	-84.43
Women's Watches	4.5 - 4.75	-16.15	-62.32
Women's Watches	4.75 - 5	33.53	-42.26
Xbox 360 Games, Consoles & Accessories	3.5 - 3.75	-88.38	-100.00
Xbox 360 Games, Consoles & Accessories	3.75 - 4	106.34	-100.00
Xbox 360 Games, Consoles & Accessories	4 - 4.25	70.04	-55.84
Xbox 360 Games, Consoles & Accessories	4.25 - 4.5	7.40	-70.38
Xbox 360 Games, Consoles & Accessories	4.5 - 4.75	-28.08	-100.00
\.


--
-- TOC entry 3440 (class 0 OID 33421)
-- Dependencies: 223
-- Data for Name: average_product_per_category; Type: TABLE DATA; Schema: gold; Owner: postgres
--

COPY gold.average_product_per_category (name, category_id, average_stars, average_price, average_listprice) FROM stdin;
Gift Cards	125	4.83	27.27	\N
Baby Stationery	40	4.67	12.54	13.61
Stationery & Gift Wrapping Supplies	137	4.63	13.53	16.58
Toy Figures & Playsets	217	4.62	23.43	27.44
Stuffed Animals & Plush Toys	229	4.61	21.73	23.97
Baby	42	4.60	18.26	22.06
Baby Boys' Clothing & Shoes	43	4.60	18.47	22.23
Gift Wrapping Supplies	12	4.60	14.48	16.52
Kids' Play Trains & Trams	234	4.57	33.15	33.64
Baby Girls' Clothing & Shoes	264	4.57	18.43	22.36
Party Supplies	177	4.57	14.22	16.95
Household Supplies	130	4.57	16.86	21.74
Automotive Enthusiast Merchandise	25	4.57	34.28	44.67
Health & Household	135	4.57	15.51	19.13
Baby Gifts	39	4.57	19.50	21.10
Food Service Equipment & Supplies	156	4.57	22.68	28.74
Kitchen & Dining	170	4.56	26.52	37.88
Puzzles	227	4.56	20.61	22.56
Games & Accessories	223	4.56	26.17	32.69
Industrial & Scientific	162	4.56	20.01	26.17
Kids' Home Store	172	4.55	30.05	36.72
Electrical Equipment	210	4.55	25.11	34.47
Electronic Components	149	4.55	26.45	26.44
Painting, Drawing & Art Supplies	10	4.54	17.67	22.27
Boys' Clothing	84	4.54	25.90	30.17
Tools & Home Improvement	215	4.53	33.95	39.27
Kids' Play Cars & Race Cars	236	4.53	23.90	22.95
Dolls & Accessories	221	4.53	26.45	31.14
Fasteners	154	4.53	15.50	19.55
Building Toys	220	4.53	45.39	47.45
Party Decorations	13	4.52	13.79	15.91
Sports & Outdoors	200	4.52	29.21	42.60
Craft Supplies & Materials	11	4.52	16.26	20.63
Power Tools & Hand Tools	207	4.52	37.61	53.66
Scrapbooking & Stamping Supplies	5	4.52	15.49	19.18
Arts & Crafts Supplies	219	4.52	13.70	17.97
Sewing Products	6	4.52	15.03	20.45
Baby & Toddler Toys	230	4.51	21.16	26.41
Automotive Replacement Parts	21	4.51	24.10	29.25
Nursery Furniture, Bedding & Décor	41	4.51	30.75	42.73
Home Appliances	201	4.51	26.67	35.00
Bedding	164	4.51	33.16	44.67
Industrial Power & Hand Tools	146	4.51	44.11	67.95
Craft & Hobby Fabric	7	4.51	19.53	23.56
Travel Tote Bags	101	4.50	27.88	31.76
Travel Accessories	105	4.50	20.27	20.97
Oils & Fluids	20	4.50	50.02	56.46
Kids' Play Tractors	239	4.50	54.30	50.66
Wall Art	174	4.50	20.46	22.95
Needlework Supplies	8	4.50	19.29	21.67
Kids' Party Supplies	216	4.50	15.25	16.78
Girls' Clothing	91	4.50	24.95	30.09
Personal Care Products	52	4.49	22.36	22.58
Beading & Jewelry Making	1	4.49	15.63	20.24
Home Décor Products	165	4.49	20.24	26.34
Puppets & Puppet Theaters	226	4.49	26.16	27.93
Hardware	211	4.48	24.84	34.94
Baby Care Products	35	4.48	15.38	19.09
Knitting & Crochet Supplies	3	4.48	17.25	19.39
Slot Cars, Race Tracks & Accessories	240	4.48	45.39	49.79
Accessories & Supplies	76	4.48	40.88	47.53
Retail Store Fixtures & Equipment	161	4.48	24.21	28.36
Boys' Accessories	87	4.48	19.06	22.10
Girls' Accessories	94	4.48	16.60	19.42
Skin Care Products	49	4.48	21.46	23.68
Outdoor Recreation	199	4.47	29.00	39.65
Bath Products	163	4.47	23.37	30.68
Camera & Photo	79	4.47	164.66	115.57
Kids' Play Trucks	235	4.47	31.29	32.05
Boys' Shoes	90	4.46	42.17	50.08
Power Transmission Products	139	4.46	19.75	21.30
Video Games	255	4.46	55.31	63.61
Travel Duffel Bags	99	4.46	71.89	70.79
Automotive Tools & Equipment	17	4.46	49.34	67.89
Toys & Games	270	4.46	30.02	36.04
Sports & Fitness	198	4.46	26.90	36.91
Learning & Education Toys	224	4.46	25.15	30.61
Kids' Play Buses	238	4.45	29.02	30.84
Backpacks	107	4.45	53.03	58.04
Health Care Products	131	4.45	19.25	22.81
Girls' Shoes	97	4.45	38.90	48.09
Automotive Exterior Accessories	24	4.45	29.51	40.56
Home Storage & Organization	173	4.45	53.93	50.12
Heavy Duty & Commercial Vehicle Equipment	15	4.44	49.93	56.61
Building Supplies	212	4.44	49.29	62.56
Lighting & Ceiling Fans	209	4.44	37.15	48.91
Hydraulics, Pneumatics & Plumbing	147	4.44	31.37	42.04
RV Parts & Accessories	27	4.44	56.38	67.66
Laptop Bags	109	4.44	53.82	52.28
Laptop Accessories	65	4.44	38.49	51.82
Baby & Toddler Feeding Supplies	30	4.44	24.85	31.26
Home Lighting & Ceiling Fans	169	4.43	42.13	57.35
Toy Vehicle Playsets	233	4.43	33.31	36.87
Hair Care Products	47	4.43	21.23	25.67
Home Audio & Theater Products	82	4.43	74.37	94.54
Men's Accessories	112	4.43	43.21	66.38
Women's Handbags	118	4.43	56.74	74.05
Vacuum Cleaners & Floor Care	175	4.43	46.45	87.26
Industrial Materials	140	4.43	30.16	25.45
Industrial Hardware	141	4.43	19.13	22.53
Beauty Tools & Accessories	50	4.42	15.38	19.85
Nintendo Switch Consoles, Games & Accessories	260	4.42	31.01	38.23
Oral Care Products	126	4.42	18.79	24.86
Arts, Crafts & Sewing Storage	9	4.42	21.78	27.31
Automotive Performance Parts & Accessories	18	4.42	107.24	108.74
Furniture	166	4.42	65.07	87.87
Cutting Tools	153	4.42	27.50	34.84
Smart Home: Other Solutions	196	4.42	113.80	126.09
Men's Clothing	110	4.41	45.85	55.34
Women's Accessories	120	4.41	33.54	61.40
Kitchen & Bath Fixtures	208	4.41	62.81	80.20
Computers	81	4.41	130.04	105.42
Packaging & Shipping Supplies	160	4.41	50.74	50.75
Baby Travel Gear	36	4.41	50.17	65.74
Household Cleaning Supplies	167	4.41	20.05	24.51
Occupational Health & Safety Products	152	4.41	24.44	27.51
Safety & Security	205	4.41	34.45	46.25
Welding & Soldering	214	4.40	73.58	72.37
Boys' School Uniforms	265	4.40	18.55	24.93
Pumps & Plumbing Equipment	203	4.40	45.07	53.17
Baby Activity & Entertainment Products	38	4.40	48.18	57.36
Messenger Bags	100	4.40	48.05	50.46
Material Handling Products	144	4.40	48.47	68.25
Heating, Cooling & Air Quality	171	4.40	56.94	68.86
Light Bulbs	206	4.40	23.32	26.72
Dog Supplies	180	4.39	25.02	32.62
Baby Diapering Products	29	4.39	23.88	25.41
Boys' Jewelry	88	4.39	15.97	14.51
Girls' Jewelry	95	4.39	24.14	18.75
Televisions & Video Products	69	4.39	42.08	48.40
Home Use Medical Supplies & Equipment	133	4.39	28.85	36.24
Luggage	108	4.39	115.84	143.67
Computer Components	63	4.39	94.06	128.06
Kids' Dress Up & Pretend Play	225	4.39	24.08	31.36
Seasonal Décor	168	4.39	26.55	35.39
Kids' Play Boats	237	4.39	121.29	32.29
Janitorial & Sanitation Supplies	151	4.38	41.52	59.20
Smart Home: Lighting	191	4.38	58.20	82.15
Abrasive & Finishing Products	142	4.38	24.65	27.72
Measuring & Layout	213	4.38	68.57	85.94
Wellness & Relaxation Products	128	4.38	32.57	47.17
Baby & Child Care Products	129	4.38	21.04	23.22
Lab & Scientific Products	150	4.38	31.44	41.80
Paint, Wall Treatments & Supplies	204	4.37	24.04	30.73
Child Safety Car Seats & Accessories	32	4.36	38.36	56.39
Lights, Bulbs & Indicators	22	4.36	42.19	51.20
Motorcycle & Powersports	28	4.36	32.39	43.61
Tablet Accessories	64	4.36	26.02	32.97
Cell Phones & Accessories	75	4.36	25.19	30.93
Men's Shoes	114	4.36	98.79	110.26
Women's Jewelry	123	4.36	31.36	33.05
Diet & Sports Nutrition	132	4.36	27.78	30.47
Filtration	148	4.36	66.07	77.39
Legacy Systems	250	4.36	43.52	54.50
Professional Dental Supplies	159	4.35	24.85	32.25
Automotive Tires & Wheels	16	4.35	42.33	52.96
Sports & Outdoor Play Toys	228	4.35	30.29	35.83
Video Game Consoles & Accessories	83	4.34	31.22	40.55
Automotive Interior Accessories	23	4.34	29.27	35.42
Wii U Games, Consoles & Accessories	252	4.34	41.85	50.44
Foot, Hand & Nail Care Products	51	4.34	13.60	17.81
Office Electronics	72	4.34	112.92	116.03
Portable Audio & Video	73	4.33	49.48	51.14
Smart Home: Home Entertainment	188	4.33	397.71	431.79
Test, Measure & Inspect	145	4.33	68.96	87.08
Sports Nutrition Products	136	4.33	34.25	36.98
Fabric Decorating	2	4.33	30.79	20.02
Tricycles, Scooters & Wagons	231	4.33	49.21	65.54
Cat Supplies	179	4.33	28.08	38.29
Professional Medical Supplies	158	4.32	26.45	29.25
Commercial Door Products	138	4.32	24.02	25.86
Girls' School Uniforms	98	4.31	18.74	24.18
eBook Readers & Accessories	74	4.31	37.61	33.91
Industrial Adhesives, Sealants & Lubricants	143	4.31	30.82	34.77
Women's Shoes	122	4.31	78.24	92.48
PlayStation 4 Games, Consoles & Accessories	253	4.31	33.23	40.39
Printmaking Supplies	4	4.31	81.47	70.49
Kids' Furniture	124	4.31	108.87	116.82
Toilet Training Products	34	4.31	20.04	22.65
Makeup	48	4.30	14.69	17.59
Novelty Toys & Amusements	218	4.30	16.25	18.66
Garment Bags	102	4.30	86.93	41.74
Finger Toys	232	4.29	26.62	20.72
Men's Watches	113	4.29	127.26	185.14
Car Care	19	4.28	27.30	31.81
Girls' Watches	96	4.28	19.58	26.95
PC Games & Accessories	263	4.28	60.22	69.03
Fish & Aquatic Pets	181	4.28	24.81	30.20
Baby Strollers & Accessories	44	4.27	71.15	92.53
Pregnancy & Maternity Products	31	4.27	32.69	34.44
Nintendo 3DS & 2DS Consoles, Games & Accessories	249	4.27	39.78	45.71
Additive Manufacturing Products	157	4.26	53.96	69.46
Shaving & Hair Removal Products	53	4.26	24.35	29.17
Xbox One Games, Consoles & Accessories	254	4.26	32.78	36.56
Women's Watches	121	4.26	84.36	135.31
Luggage Sets	103	4.26	237.56	329.90
Vehicle Electronics	78	4.26	103.02	114.52
Horse Supplies	182	4.26	50.69	43.24
Wearable Technology	68	4.26	30.92	56.80
Science Education Supplies	155	4.26	108.24	112.32
PlayStation Vita Games, Consoles & Accessories	251	4.25	52.63	51.13
Rain Umbrellas	106	4.25	29.26	29.51
Smart Home: Lawn and Garden	195	4.24	158.51	163.63
Data Storage	55	4.24	161.34	105.74
PlayStation 5 Consoles, Games & Accessories	261	4.24	36.02	51.86
Smart Home: Security Cameras and Systems	190	4.24	121.29	121.00
Car Electronics & Accessories	26	4.24	34.48	50.93
Women's Clothing	116	4.23	35.41	44.53
Beauty & Personal Care	45	4.23	20.66	26.04
Vision Products	127	4.23	17.71	19.25
Smart Home: WiFi and Networking	189	4.22	147.90	199.43
Sexual Wellness Products	134	4.21	26.41	30.60
Boys' Watches	89	4.21	18.36	27.06
Reptiles & Amphibian Supplies	183	4.21	25.64	30.17
Xbox Series X & S Consoles, Games & Accessories	262	4.21	39.75	59.40
PlayStation 3 Games, Consoles & Accessories	243	4.21	87.89	36.06
Xbox 360 Games, Consoles & Accessories	245	4.21	38.71	35.96
Computer Monitors	56	4.20	231.57	263.82
Ironing Products	176	4.20	37.40	45.13
Online Video Game Services	256	4.19	41.45	24.99
Smart Home: Smart Locks and Entry	187	4.19	167.03	184.68
GPS & Navigation	70	4.18	71.94	108.48
Security & Surveillance Equipment	80	4.17	99.87	111.96
Small Animal Supplies	184	4.16	25.01	28.56
Virtual Reality Hardware & Accessories	259	4.16	141.38	59.14
Baby Safety Products	33	4.14	31.21	43.63
Pet Bird Supplies	178	4.14	18.86	24.94
Smart Home: Plugs and Outlets	192	4.14	32.50	47.90
Suitcases	104	4.13	124.56	146.06
Computer Networking	60	4.13	114.32	111.76
Automotive Paint & Paint Supplies	14	4.12	57.79	62.32
Kids' Electronics	222	4.12	40.21	42.41
Computers & Tablets	57	4.11	571.87	430.01
Smart Home: New Smart Devices	185	4.10	156.45	175.79
Computer Servers	54	4.10	1561.52	264.14
Perfumes & Fragrances	46	4.09	32.28	32.33
Nintendo DS Games, Consoles & Accessories	242	4.08	37.85	38.63
Mac Games & Accessories	248	4.07	51.29	52.78
Wii Games, Consoles & Accessories	244	4.05	31.17	30.45
Headphones & Earbuds	71	4.05	54.37	67.17
Smart Home - Heating & Cooling	197	4.05	261.73	323.90
Sony PSP Games, Consoles & Accessories	241	4.04	44.12	30.17
Smart Home: Vacuums and Mops	193	3.99	344.96	436.18
Video Projectors	77	3.99	172.29	165.46
Tablet Replacement Parts	58	3.94	41.54	39.70
Computer External Components	66	3.93	173.29	151.85
Smart Home: Voice Assistants and Hubs	186	3.91	92.37	202.39
Smart Home Thermostats - Compatibility Checker	194	3.79	182.52	181.31
\.


--
-- TOC entry 3443 (class 0 OID 33441)
-- Dependencies: 227
-- Data for Name: top_average_delta; Type: TABLE DATA; Schema: gold; Owner: postgres
--

COPY gold.top_average_delta (asin, title, category_id, stars, reviews, adjusted_price, adjusted_listprice, category_rank) FROM stdin;
B08G5BTH74	TCP Global 5 Gallon (20 Liters) Pressure Pot Tank for Resin Casting - Heavy Duty Powder Coated Pot with Air Tight Clamp On Lid, Caster Wheels, Regulator, Gauge - Use for Curing Resin in Casting Molds	1	4.3	103	284.3600	-20.2400	1
B00557CZQU	GemOro Auracle Analyzer | Accurate Compact Portable Electronic High Karat Gold & Platinum Tester | Precision Tool with Expert Professional Reading & Accuracy (2009)	1	4	132	283.3700	-20.2400	2
B07P98GJWL	Longer Ray5 Laser Engraver Machine Laser Cutter Engraving CNC Machine, 5W Laser Engraver with 0.08 * 0.08 Compressed Spot, 32-bit Motherboard, DIY Engraver Area 400x400mm	1	4.2	141	221.3600	279.7500	3
B082V9MTKQ	FASTTOBUY 6 KG Propane Melting Furnace Kit w Graphite Crucible and Tongs 1300°C /2372°F Casting Refining Smelting for Precious Metals Gold Silver Tin Aluminum 7-in-1 Melting Casting Tool	1	3.8	390	184.3600	-20.2400	4
B08VJ2JTY1	Comgrow Laser Engraving Machine for Dog Tag Metal Wood Silicone,Portable Desktop Laser Engraver Machine Tumblers Leather Glass Acrylic	1	3.7	255	137.3600	-20.2400	5
B00TUWF8ZG	Reliable 1500FR Octagonal Knife Cloth Cutting Machine, 4-Inch High Power Light Weight Fabric Cutter, 1" cutting capacity, High-power Electric Motor, Knife Guard, Automatic Sharpener, Thin Base Plate	2	4.1	134	158.2100	-20.0200	1
B0048BJ9ZE	Procion Cold Water Dye Powder, 8-Color Assortment, 8-oz. Bulk Jars, for Tie-Dye, Batik, Ice Dyeing, Non-Toxic. Pack of 8.	2	4.8	565	84.6000	219.6400	2
B07QFFWHBW	CON Bases (Yellow)Q	2	4.3	417	73.2100	-20.0200	3
B07KRNKSCD	Jacquard Procion MX Bundle Fiber Reactive Dye, Jacquard Soda Ash 1-Pound,3 Pairs of Pixiss Latex Gloves, 1-Ounce Assorted Sizes Rubber Bands, 4X 8-Ounce Squeeze Bottles, 6 Craft Spoons Scoops	2	4.5	372	39.2000	-20.0200	4
B08QZQLDRN	U.S. Art Supply 24 Color Set of Permanent Acrylic Fabric Paint in 2 Ounce Bottles, Plus a 7-Piece Brush Kit - Artists Textile Paint for Clothes, Denim, Canvas, Jeans, Jackets, T-Shirts, Bags, Shoes	2	4.6	520	29.2000	-20.0200	5
B07KV7MRVF	I Want IT All - MEGA PRO Set - Two addi Knitting Machines with Pattern Books and Accessories	3	4.5	304	362.7500	-19.3900	1
B01EXNFTT6	New Improved Version Of addi Express Kingsize Extended Starter Kit With New Improved Mechanical Row Counter. Knitting Machine, 2 Pattern Books, Hook, Replacement Needles, Stopper, Yarn	3	4.6	490	218.5400	249.6100	2
B07KM9X3JC	addi Express King Size Knitting Machine Kit Extended Version with Manual Counter Includes: 46 Needles, Knitting Machine, Pattern Book, Express Hook, Replacement Needles, Stopper	3	4.5	450	201.7600	-19.3900	3
B086R89SP3	ChiaoGoo Twist Shorties Interchangeable Knitting Needle Set Bundle, Sizes US 0 - US 8	3	4.7	229	176.3500	-19.3900	4
B01N9GZCN4	ChiaoGoo Twist Red Lace 5-Inch Complete 7500-C Interchangeable Circular Knitting Needle Set, Sizes US 2, 3, 4, 5, 6, 7, 8, 9, 10, 10.5, 11, 13, 15 with 6 Cords Bundle with 1 Artsiga Crafts Project Bag	3	4.8	676	159.7500	-19.3900	5
B0817S39RS	Mophorn Heat Press Machine 12x15 inch 5in1 T-Shirt Heat Press and Vinyl Cutter 53 inch Plotter Machine 1350mm Paper Feed Vinyl Cutter Plotter 2 PARCELS Separately	4	4	120	578.5200	-70.4900	1
B09CKQJB28	CREWORKS 16x20 Inch Heat Press Machine with Slide Out Base, Auto Open Clamshell Heat Press, Digital Clam Heat Press for T Shirts Bags Mouse Pads, Home Heat Transfer Machine for Gifts Charity	4	4.1	212	568.5200	-70.4900	2
B07X4F3BQX	12-Ton 4x7 Inch Heat Press Machine - Pump Sold Seperately	4	4.6	356	477.5300	-70.4900	3
B09B989K4C	NugSmasher Mini Starter Kit Includes: Three (3) Packs of 12 3.5 Gram Extraction Bags, Silicon Jar, Magnet, Everything Tool. KIT HAS Everything Needed to GET Started. "Rosin Made Simple"	4	4.6	227	423.5300	-70.4900	4
B0817SQHHL	Mophorn Heat Press Machine 12x15 inch 5in1 T-Shirt Heat Press and Vinyl Cutter 14 inch Plotter Machine 375mm Paper Feed Vinyl Cutter Plotter 2 PARCELS Separately	4	3.7	182	408.5200	-70.4900	5
B07QJ9R8KR	Lagenda Electric Air Balloon Pump, B231 Portable Professional Automatic Modeling Balloon Inflator Electric Balloon Blower Pump Air Blower with Timer for Party Events Decoration	13	4.6	113	151.2100	-15.9100	1
B0BHDJBBNK	BATTIFE 40Pack White Confetti Wands, 14 Inch Tissue Paper Confetti, Flick Flutter Sticks for Wedding, Celebrations, Anniversary, Birthday, Graduation Party	13	4.3	895	33.1100	-15.9100	2
B09YR25D58	WOMRICH Girl Baby Shower Decorations Elephant Theme Set, Baby Shower Guestbook Elephant Sign Frame, It is a Girl Banners Elephant Garland Paper Lantern Paper Flower Pom Poms (Pink)	13	4.6	125	16.2000	-15.9100	3
B08975GY9P	Funeral Guest Book | Memorial Guest Book | Guest Book for Funeral Hardcover | Guestbook for Sign in, Celebration of Life Memorial Service | Funeral Guest Sign Book with Memory Table Card Sign Included	13	4.8	425	13.1900	-15.9100	4
B08PBDPLMX	MINI ZOZI 12 inch Blank Vinyl Records Fake 10 Pieces in 1 Pack for Indie Aesthetic Room Decor or Home Decor on Wall for Bedroom or Living Room Discos Music Studio Hip Hop Decorative Purpose	13	4.5	165	12.2000	-15.9100	5
B007KEVN00	ARB (CKMTP12) 12V Twin Motor High Performance Portable Air Compressor	16	4.7	155	947.6700	-52.9600	1
B0050DI9YQ	ARB CKMTA12 '12V' On-Board Twin High Performance Air Compressor, Ideal for Air Lockers Locking Differentials, Tire Inflator, Air Horn, Air Tools and Pneumatic Tools.	16	4.6	1051	573.6700	-52.9600	2
B009BF9S4E	EEZTire-TPMS Real Time/24x7 Tire Pressure Monitoring System (TPMS10) - 10 Anit-Theft Sensors, incl. 3-Year Warranty	16	4.1	239	496.6700	-52.9600	3
B074KQFD6W	Torin T83505W Blackjack Hydraulic Low Profile Steel Racing Floor Jack with Single Piston Quick Lift Pump, 3 Ton (6,000 lb) Capacity, Black	16	4.4	569	480.1300	-52.9600	4
B082QJJ6G5	TireMinder i10 RV TPMS with 10 Transmitters	16	4.3	264	436.6700	-52.9600	5
B092894STV	2023 Upgrade LAUNCH X431 PRO3S+ Elite Bluetooth Bi-Directional Scan Tool,OEM Topology Mapping,HD Trucks Scan,Online Coding&37+ Service for All Cars,Full System Diagnostic,Key IMMO,2-Year Free Update	17	4.3	356	1099.6600	-67.8900	1
B06XC3RSMC	LAUNCH X431 PROS V+ Elite Bidirectional Scan Tool with CANFD Connector 2023 Newly Added,37+ Reset for All Cars,ECU Online Coding,Key IMMO,OEM Full System Diagnostic,2 Yrs Free Update,Same as X431 V+	17	4.4	141	842.6600	-67.8900	2
B017OVC2UI	Fluke 1587 FC 2-in-1 Insulation Multimeter, True-RMS, Selectable Insulation Test Voltages Up To 1000 V, Pi/DAR Timed Ratio Tests, Measures Frequency, Includes Low-Pass Filter For Motor Drive VFD	17	4.7	173	810.5900	-67.8900	3
B07QJZB61S	Fieldpiece SM480V SMAN Digital Manifold Wireless Data Logging	17	4.7	627	676.5600	-67.8900	4
B07SGG81RR	WARN 103255 VR EVO 12-S Electric 12V DC Winch with Synthetic Rope: 3/8" Diameter x 90' Length, 6 Ton (12,000 lb) Pulling Capacity , Black	17	4.7	284	670.6000	872.1000	5
B0023UM58U	CW-128 Gel-Gloss RV Cleaner and Wax with Carnauba - 128 oz.	19	4.2	245	15.4700	19.7500	1
B0001E3RPA	Gardena 987 Soft Bristle Car Wash Brush	19	4.5	453	-1.6400	-31.8100	2
B0055MZG3E	Sonax (308000) Chrome & Aluminum Paste - 2.5 oz.	19	4.2	1087	-6.0100	-31.8100	3
B07N4BK4ZV	Tire Dressing, Tire Shine, Tire, Vinyl, and Rubber Dressing, Tire and Wheel Care Products, 32 Oz	19	4.4	138	-7.8000	-31.8100	4
B0BDQQRND8	Car Rubber Duck, Yellow Duck Decoration Dashboard with Sun Hat Swim Ring Necklace Sunglasses for Car Dashboard Decorations	19	4.5	136	-19.4100	-22.8200	5
B078HV3KXY	Trailer Valet TVXL25 XL Trailer Dolly - 2-5/16" Ball	24	3.8	176	644.5900	-40.5600	1
B07CZ268GT	Furrion Vision S Wireless RV Backup Camera System with 7-Inch Monitor, 1 Rear Sharkfin, Infrared Night Vision, Wide-Angle View, Hi-Res, IP65 Waterproof, Motion Detection, Microphone - FOS07TASF	24	4.5	2160	542.6400	680.3900	2
B0BBDXT1KL	X-BULL Winch-13500 lb. Load Capacity Electric Winch Kit 12V Synthetic Rope,Waterproof IP67 Electric Winch with Hawse Fairlead, with Wireless Handheld Remote and Corded Control Recovery	24	4.5	982	370.3900	-40.5600	3
B08CY72484	B&W Trailer Hitches B&W MultiPro Tow & Stow - Fits 2.5" Receiver, Tri-Ball (1-7/8" x 2" x 2-5/16")	24	4.8	360	369.4900	-40.5600	4
B00N5XEOMY	Rock Tamers Official Mudflap System 2.5" Hub with Matte Black Stainless Steel Trim Plates	24	4.7	2164	360.4800	-40.5600	5
B00U0DFCWI	Disney Adjustable High Chair, Mickey Silhouette	30	4.7	331	165.3800	-31.2600	1
B0BCP81BJZ	Bwcece Newly Upgraded Wearable Breast Pump,LCD Hands-Free Pump,3 Modes&9 Levels Adjustable for Comfortable Painless Breast Pump,Electric Breastfeeding Pump,Low Noise Breast Pump,24 mm Flange(2 PCS)	30	4	127	165.1400	-31.2600	2
B09V3K2966	Motif Medical - New & Improved Duo - Portable Double Electric Breast Pump, Easy, On-The-Go Pumping, Ideal for Travel Moms	30	3.8	132	134.1500	-31.2600	3
B09MSMR786	PediaSure Peptide 1.0 Cal,24 Count,Complete,Balanced Nutrition for Kids with GI Conditions,Peptide-Based Formula,with 7g Protein and Prebiotics,for Oral or Tube Feeding,Chocolate,8-fl-oz Bottle	30	4.4	105	125.1200	-31.2600	4
B01BGVLCCG	Graco DuoDiner LX High Chair, Converts to Dining Booster Seat, Groove	30	4.8	1180	105.1400	-31.2600	5
B09BR12MB4	kegg Fertility Tracker + Free Fertility App | 12-Month Pregnancy Warranty | No Recurring Costs | Predicts Fertile Window | Helps Exercise Pelvic Floor Muscles	31	4.3	213	226.3100	-34.4400	1
B0BSMS37W8	Mira Fertility MAX Starter Kit, Predict & Confirm Ovulation + 6 Day Fertility Window, Mira Analyzer, 20 Mira Max Wands to Track Actual E3G, LH, & Progesterone (PdG) Levels + Mira App Included	31	4.2	813	216.3100	-34.4400	2
B09GSB9K7Y	bbhugme Adjustable Pregnancy Pillow – Full Body Support for Side Sleeping - Adjustable Firmness and Shape - Supports Back, Legs, Belly, Hips for Pregnant Women - Removable Cover - Dusty Pink	31	4.5	223	176.3100	-34.4400	3
B08BHT19MS	TwinGo Nurse & Lounge Pillow (Grey) - Breastfeeding Pillow for Twins or Two Lounge Pillows || 8 uses || XS to Plus Size Woman || Preemie 0-12+ mo Babies	31	4.7	159	167.3000	-34.4400	4
B07JMNKDNZ	Modern Fertility Hormone Test | Reliable, Convenient at-Home Kit for Women Delivers Personalized Fertility Specialist Approved Reports, Collect Your Sample and Send It to Our Lab	31	4.1	364	146.3100	-34.4400	5
B08J4F5XSH	Gazelle S Stroller Modular Double Stroller for Infant and Toddler Includes Detachable Shopping Basket Over 20+ Configurations Folds Flat for Easy Storage	32	4.4	160	811.5900	843.5600	1
B0CB6ZBVMV	Evenflo Gold Shyft DualRide with Carryall Storage Infant Car Seat and Stroller Combo (Opal Pink)	32	4.4	124	561.6300	-56.3900	2
B07HML1BT5	Doona Infant Car Seat & Latch Base - Rear Facing, Car Seat to Stroller in Seconds - US Version, Nitro Black	32	4.8	13444	511.6400	-56.3900	3
B07CC5X39W	Joovy Qool Stroller, Customizable Stroller, Single, Double, Triple, Black Melange	32	4.5	602	461.6300	493.6000	4
B09R6LK74D	WAYB Pico Travel Car Seat with Premium Carrying Bag- Lightweight, Portable, Foldable - Perfect for Airplanes, Rideshares, and Road Trips - Forward Facing for Kids 22-50 lbs. and 30-45”	32	4.4	577	456.6400	-56.3900	5
B010MHT9O8	Viper Multi Level Dog Bite Sleeve with 3-Way Adjustable Bite Bar - Left Hand (Sleeve with Jute Cover)	35	4.7	206	159.6100	-19.0900	1
B00D64AH4G	X-Tuff Oxygen and Airway Trauma Bag by Lightning X Navy Blue	35	4.7	129	104.6100	-19.0900	2
B01FV2VKQE	RYL Beta500 Beta 1, 3-D Glucan	35	4.5	110	72.5700	-19.0900	3
B07WPYCJ2G	PUPPAPUPO Washable Baby futon Set, Mini Size 23.6" x 35.4"	35	4.5	108	71.6200	-19.0900	4
B06X3WH1R7	bblüv - Kilö - Precise Digital Baby Scale for Infants up to 44 lbs	35	4.1	198	52.6100	-19.0900	5
B0BV6XL64K	Adjustable Baby Playpen 71''x59'' Playard for Babies and Toddlers Foldable Play Pen with Gate Large Baby Fence Play Area, Cationic Light Grey	38	4.2	155	127.8100	-57.3600	1
B00821FLT4	Ubbi Steel Odor Locking, No Special Bag Required Money Saving, Awards-Winning, Modern Design, Registry Must-Have Diaper Pail, White	41	4.6	7969	39.2400	-42.7300	1
B08QVG9759	Hatch Rest Baby Sound Machine, Night Light | 2nd Gen | Sleep Trainer, Time-to-Rise Alarm Clock, White Noise Soother, Music & Stories for Nursery, Toddler & Kids Bedroom (Wi-Fi)	41	4.7	38289	39.2400	-42.7300	2
B07CFLYWGM	Diaper Genie Registry Gift Set | Includes Diaper Genie Complete Diaper Pail, 8 Refill Bags, 1 Carbon Filter | Perfect Starter Kit	41	4.7	7532	35.2500	47.2600	3
B0BVLX15R2	Baby Playpen Play Pens for Babies and Toddlers Baby Fence Baby Play Yards for Indoor & Outdoor with Breathable Mesh Anti-Fall Playpen	41	4.4	590	29.2400	37.2600	4
B0713M8Z5L	Diaper Genie Complete Diaper Pail (White) with Antimicrobial Odor Control | Includes 1 Diaper Trash Can, 1 Refill Bags, 1 Carbon Filter	41	4.6	18746	17.2200	-42.7300	5
B07DG16YDB	Maybelline New York Brow Tattoo Longlasting Tint, Dark Brown, 4.9 ml,1 Count (Pack of 1),B2998500	48	4.3	1772	0	12.4000	1
B08CD1X91F	Heroine Make by KISSME Prime Liquid Eyeliner, Super Waterproof, Ultra Fine Tip for Precise Eye Makeup, Stay All Day Long, 01 Jet Black	48	4.3	953	0	-17.5900	2
B0BC27VJSM	Obagi Nu-Cil Eyebrow Boosting Serum - Ultimate Eyebrow Growth Serum with Hyaluronic Acid - Dermatologist Approved Brow Serum for Thin, Patchy & Over-Tweezed Eyebrows - Fast Absorbing - 6ml	48	4.4	112	130.3100	-17.5900	3
B081LNVFGT	NULASTIN LASH and BROW Dual System, Eyelash & Eyebrow Boosting Serums with Elastaplex Technology, Vegan-Friendly & Cruelty-Free (2-pack, 3 ml Each)	48	3.9	525	124.3100	-17.5900	4
B0B57D3V1F	Ogee Face Stick Trio - Contour Stick Makeup Collection - Certified Organic Bronzer, Blush Stick, and Highlighter Stick for a Flawless Look	48	4.3	1127	123.3100	-17.5900	5
B0BGVQTDC5	Terra Pure 1-Shoppe 40 Piece Ecobox All-In-Kit | Green Tea Soap | 12 Shampoo, 8 Conditioner, 12 Body Wash & 8 Lotion | 10.14oz Hotel Soaps and Toiletries Bulk | Personal Care Products	49	4.3	100	228.5300	-23.6800	1
B07R4S5ZT4	Hydraskincare PDT LED Light Photodynamic Facial Skin Care Rejuvenation Photon Therapy Machine	49	4.7	806	224.5400	-23.6800	2
B09YCHSYV6	NuFACE MINI+ Starter Kit – Petite Microcurrent Facial Toning Device with Aqua Gel Activator 1.69 Oz, Silk Crème Activator 0.5 Oz + Clean Sweep Applicator Brush – Violet Dusk	49	4.2	230	191.0400	-23.6800	3
B0716YHHNH	SK_ll,SK2 Facial Treatment Essence 230ml Skincare Pitera Water, sk2 from Japan	49	4.3	136	153.5400	176.2200	4
B075YQXRYY	Babor DOCTOR Daily Lifting Collagen Cream with Hyaluronic Acid Moisturizer, Natural Anti Aging Wrinkle Cream for Face, Firming Moisturizer for Women	49	4.5	207	143.4400	-23.6800	5
B0758JDTXK	Michael Todd Beauty - Sonicsmooth - Dermaplaning Tool - 2 in 1 Women’s Facial Exfoliation & Peach Fuzz Hair Removal System with 8 Weeks of Safety Edges	50	4	2200	105.6200	-19.8500	1
B07G7HXHBF	ForPro Professional Collection Premium Hot Towel Warmer, 23L Extra Large Capacity, Two Stainless Steel Racks, White	50	4.4	3165	94.6100	110.1400	2
B0B8S7LQ4Z	Laser Hair Removal for Women and Men, at-Home Painless Permanent Hair Removal with Cooling System, Upgraded to 999,900 Flashes IPL Hair Removal Device on Armpits Back Legs Arms Bikini Whole Body	50	4.8	4337	94.6100	-19.8500	3
B0BJZSGQ8P	IPL Hair Removal, Laser Hair Removal with Cooling for Women and Men, AMOTAOS 3-in-1 At-Home Permanent Hair Removal Device 9 Levels Upgrade 999900 Flashes for Face Armpit Arm Bikini Line Leg Whole Body	50	4.4	22735	94.6000	-19.8500	4
B0BTVDCQXR	Professional Microneedling Pen - Wireless Adjustable Micro Needling Microneedle Machine, Microneedle Pen with 22 Replacement Cartridges 4pcs 16pin+4pcs 26pin+6pcs 36pin+6pcs 42pin+2pcs Nano.	50	4.4	5233	84.6100	130.1400	5
B07GKPY7YK	Gelish 18G Plus with Comfort Cure with 36 Watt LED, High Performance Gel Curing Light for Your Gel Nail Polish, Gel Lamp, Nail Lamp	51	4.6	284	248.1900	261.1900	1
B088K1585Z	Kiara Sky Beyond Pro Rechargeable LED Lamp Vol II (White)	51	4.3	621	216.3900	-17.8100	2
B006GWDBZ2	Gelish 18G: Professional Salon-Grade 36W with 3 Timer Settings and Eyeshield for Manicures and Pedicures - LED Nail Polish Curing Lamp	51	4.6	965	196.3900	-17.8100	3
B07RV6VS7L	Footsie Bath Footbath Plus Spa, 4-Setting Switch, 30 Min Timer, Temperature Control, with Tray and 5 Liners …	51	4.1	244	171.3700	177.1400	4
B09B8XSTH7	MelodySusie 35000RPM Nail Drill Professional, Rechargeable Cordless Nail Drill Machine Portable Efile for Acrylic Gel Nails Remove, 8Pcs Nail Drill Bits, Low Noise Low Heat, Sparkle Plus, White	51	4.5	655	162.3900	-17.8100	5
B09WQRVPYP	Braun IPL Long-lasting Hair Removal System for Women and Men, NEW Silk Expert Pro 5 PL5347, Head-to-toe Usage, for Body & Face, Alternative to Salon Laser Hair Removal, With 3 Extra Caps	53	4.2	479	405.6400	-29.1700	1
B07WYY6KKC	Braun IPL Long-Lasting Hair Removal for Women and Men, Silk Expert Pro 5 PL5137 with Venus Swirl Razor, Long-lasting Reduction in Hair Regrowth for Body & Face, Corded	53	4.4	6457	325.6400	-29.1700	2
B0BTYWX542	Ulike Laser Hair Removal for Women and Men, Air 3 IPL Hair Removal with Sapphire Ice-Cooling System for Painless & Long-Lasting Result, Flat-Head Window for Body & Face at-Home Use, Purple	53	4	270	304.6500	-29.1700	3
B0C2TZYW8S	Ulike Laser Hair Removal for Women and Men, Air 3 IPL Hair Removal with Sapphire Ice-Cooling System for Painless & Long-Lasting Result, Flat-Head Design for Body & Face Treatment at-Home, White	53	4.4	156	304.6500	-29.1700	4
B0BXPDTJRR	Ulike Laser Hair Removal for Women and Men, Air 3 IPL Hair Removal with Sapphire Ice-Cooling System for Painless & Long-Lasting Result, Flat-Head Window for Body & Face at-Home Use	53	4.3	305	304.6500	-29.1700	5
B08ZC54V7C	ASUS ProArt Display 32” 4K HDR Computer Monitor (PA32UCG-K) - UHD (3840 x 2160), Mini-LED IPS, 1600nits, 120Hz, 10-bit, Thunderbolt 3, HDMI2.1, w/Calibrator, Compatible With Laptop & Mac Monitor,Black	56	3.9	132	2767.4300	-263.8200	1
B09568W9GS	ASUS ROG Swift 32” 4K HDR 144Hz DSC Gaming Monitor (PG32UQX) - UHD (3840 x 2160), Mini-LED IPS, G-SYNC Ultimate, Local dimming, Quantum Dot technology, DisplayHDR 1400, Eye Care, DisplayPort, HDMI	56	4.1	410	2061.0401	-263.8200	2
B01KZNMS2Y	SkyTrak Launch Monitor w/ 30 Day Trial of Game Improvement Software	56	3.8	120	1763.4300	-263.8200	3
B08412P2GB	BenQ SW321C Photo Video Editing Monitor 32" 4K UHD | 99% AdobeRGB,100% sRGB,95% P3 | IPS | Hardware Calibrated | 16 bit 3D LUT | DeltaE ≤2 | Uniformity | HLG | AQCOLOR | Ergonomic | USB-C(60W) , Black	56	4.4	399	1668.4200	-263.8200	4
B09V3HGN6Q	Apple Studio Display - Standard Glass - VESA Mount Adapter	56	4.5	154	1367.3800	-263.8200	5
B0C7VBVSW5	KVM Switch 2 Computers 2 Monitors, 4K@30Hz Dual Monitor HDMI USB 2.0 PC Switcher for 2 Coputers Share Keyboard Mouse and Monitor, Support Copy and Extended Display	66	3.9	1787	-107.3000	-151.8500	1
B07B9WPR7G	HTC VIVE Pro Virtual Reality System	68	4.1	685	1268.0800	-56.8000	1
B0BXMSBSC7	SUUNTO 9 Peak and Peak Pro Sports GPS Watch for Demanding, Performance-Driven Athletes and Adventurers	68	4.3	400	410.1500	442.2000	2
B01MQX3306	Garmin 010-01733-00 Fenix 5X Sapphire - Slate Gray with Black Band	68	4.6	8567	399.0700	543.1900	3
B0876JJSYL	Polar Grit X - Rugged Multisport GPS Smart Watch - Ultra-Long Battery Life, Wrist-based Heart Rate, Military-Level Durability, Sleep and Recovery, Navigation - Trail Running, Mountain Biking	68	4.3	1235	399.0300	-56.8000	4
B083BXDHRM	SUUNTO 7 GPS Sports Smart Watch	68	4.1	769	368.0800	-56.8000	5
B089Q25DRT	Denon AVR-X6700H 8K Ultra HD 11.2 Channel (140Watt X 11) AV Receiver - 3D Audio & Video with IMAX Enhanced, Built for Gaming, Music Streaming, Alexa + HEOS	69	4.6	264	2502.9200	-48.4000	1
B099Z93KL7	Sony HT-A9 7.1.4ch High Performance Home Theater Speaker System Multi-Dimensional Surround Sound Experience with 360 Spatial Sound Mapping, works with Alexa and Google Assistant,White	69	4	209	1955.9200	-48.4000	2
B08WWF1MJG	Blackmagic Design ATEM Mini Extreme ISO Switcher	69	4.7	217	1252.9200	-48.4000	3
B09W4JM24G	Panasonic DP-UB9000P1K Reference Class 4K Ultra HD Blu-ray Player with HDR10+ and Dolby Vision Playback	69	4.4	110	957.9100	-48.4000	4
B08WWXFZ5W	Blackmagic Design ATEM Mini Extreme Switcher	69	4.6	139	952.9200	-48.4000	5
B01LD5GO7I	SONY MDR-Z1R WW2 Signature, Hi-Res Headphone, Black (International Version)	71	4.4	110	1495.6200	-67.1700	1
B08ZR34S9T	Audeze LCD-X Over Ear Open Back Headphone New 2021 Version Creator Package with Carry case	71	4.5	129	1144.6300	-67.1700	2
B07K59HW9R	HIFIMAN Arya Stealth Magnet Version Full-Size Over-Ear Planar Magnetic Headphone for Audiophiles/Studio	71	4.5	272	944.6300	-67.1700	3
B0B93YKQT3	Focal Bathys Over-Ear Hi-Fi Bluetooth Wireless Headphones with Active Noise Cancelation	71	4.4	140	644.6300	731.8300	4
B0B33PXPJT	Bowers & Wilkins Px8 Over-Ear Wireless Headphones, Advanced Active Noise Cancellation, Compatible with B&W Android/iOS Music App, Premium Design, Offers 7-Hour Playback on 15-Min Quick Charge, Black	71	4.4	234	604.7600	631.8300	5
B08DL977MJ	SAMSUNG 130" The Premiere Ultra Short Throw 4K UHD Smart Triple Laser Projector for Home Theater, HDR, 4.2Ch Surround Sound System w/ Alexa Built-In (SP-LSP9TFAXZA, Latest Model)	72	4.3	275	5885.0702	-116.0300	1
B07TTTR2G1	LG HU85LA Ultra Short Throw 4K UHD Laser Smart Home Theater Cinebeam Projector with Alexa built-in, LG Thinq AI, and LG webOS Lite Smart TV	72	4.3	102	3502.0300	-116.0300	2
B0B6HXCMQJ	AWOL VISION LTV-2500 4K UHD Ultra Short Throw Triple Laser Projector with Dolby Vision & Atmos, Active 3D, 150", 2600 Lumen, HDR10+, UST Laser TV Projector (Fire TV Stick 4K Max included)	72	4.3	161	2886.0800	-116.0300	3
B08T4BW2CB	LG HU810PW 4K UHD (3840 x 2160) Smart Dual Laser CineBeam Projector with 97% DCI-P3 and 2700 ANSI Lumens	72	4.3	211	2097.0700	-116.0300	4
B08DK18VM9	WEMAX Nova 4K UHD Ultra Short Throw Projector, 150" ALPD Laser TV with Smart Android TV, HDR10 Home Theater, Dolby Audio DTS-HD, UST Projector for Movie, WiFi Bluetooth, Built in Google Assistant	72	4.1	354	1987.0700	-116.0300	5
B079ZC5V2Y	Microsoft Natural Ergonomic Keyboard 4000 for Business - Wired	81	4.5	6666	268.9100	-105.4200	1
B01KM6EJOY	QWERKYTOYS Qwerkywriter S Typewriter Inspired Retro Mechanical Wired & Wireless Keyboard with Tablet Stand	81	4.7	815	119.9500	-105.4200	2
B01LNRRRQS	G-PACK PRO - Desktop Standing Desk Converter | Sit-To-Stand Work Desk Riser | Adjustable from 5.7” to 19.7” | Fits Dual Monitor -Removable Keyboard Tray | Ergonomically	81	4.5	255	94.9600	-105.4200	3
B0C5DYZ3C5	Perixx PERIBOARD-835BR Wireless Ergonomic Mechanical Keyboard - RGB Backlit - Low-Profile Brown Tactile Switches - Multi-Device Connection - Compatible with Windows and Mac OS X - US English	81	4.3	104	49.9500	-105.4200	4
B01MRSRQLA	TERRAMASTER D2-310 USB Type C External Hard Drive RAID Enclosure USB3.1 (Gen1) 2-Bay RAID Storage Support RAID 0/1/Single (Diskless)	81	4	723	29.9500	-105.4200	5
B07MX8KTYD	Boys' Cotton Underwear Multicolor-Pack	84	4.7	563	0	-30.1700	1
B086XJX723	PajamaGram Fleece Pajamas for Kids - Kids Button Down Pajamas	84	4.7	199	0	-30.1700	2
B07KWQYGKM	Boy's Tuxedo Suit Kids Floral Tuxedo Slim Fit Child Formal Tuxedo for Prom Halloween Christmas Party	84	4.5	291	112.0900	-30.1700	3
B07GJHGRYW	Boys 7-Piece Plaid Suits Slim Fit Little Kids and Big Youth Boy Suit Set	84	4.6	406	94.0900	-30.1700	4
B0755CRRX1	Signature Boys' Slim Fit Suit Complete Outfit	84	4.6	1633	86.0800	-30.1700	5
B08MKY6K1H	Stainless Steel Hoop Dangle Earrings for Men Women, Black/18K Gold Plated Dangle Hinged Hoop Earrings, Long Chain Pendant Earrings, Come Gift Box	88	4.3	139	0.0200	-14.5100	1
B079L2RDSR	Real Scorpion Necklace, Real Scorpion Pendant Necklace	88	4.4	490	-0.3900	-14.5100	2
B083K6QM2X	Personalized Handmade Braided Bracelet with Hollow Heart Symbol Adjustable Rope Woven Bangle for Couple	88	4.4	747	-0.9800	-14.5100	3
B07ZPS41BY	Norse Viking Tree of Life Necklace for Men Women Retro Stainless Steel Yggdrasil Pendant Amulet Jewelry Gift for Men Women	88	4.6	411	-1.9800	-14.5100	4
B0919Y43KV	BOSATE Kpop Bangtan Boys Bracelet Bangtan Boys Army Bracelet to Love Yourself Army Bangtan Boys Lover Jewelry Bangtan Boys Fans Gift	88	4.5	110	-2.0800	-14.5100	5
B073XCZMVJ	LACOSTE.12.12 Kids 2030005 Children's	89	4.5	222	47.4600	-27.0600	1
B00GN4CFFK	Bandai Dx Yokai Watch	89	3.8	903	35.6300	-27.0600	2
B07HNWFLDY	Engraved Wooden Watch for Men,Personalized Wood Watch Anniversary Christmas Father's Day for Dad Husband	89	4.3	265	14.6300	-27.0600	3
B07HNVJQ71	Engraved Wooden Watch for Men,Personalized Wood Watch Anniversary Christmas Father's Day for Dad Husband	89	4.3	265	14.6300	-27.0600	4
B0953JJK4G	Kids Watch - Analog Watches for Kids - Girls & Boys Watches Ages 7-10, Watches for Kids 8-12, Kids Analog Watch Telling Time Teaching Tool, Gift Watches for Girls and Boys	89	4.2	403	13.8100	-27.0600	5
B096S33CM8	Boys Winter Boots Boys Hiking Boots Shoes Waterproof Boys Boots Sneakers Kids Outdoor Winter Shoes Hi Top Boys Snow Boots Slip Resistant (Little Boys/Big Boys)	90	4.5	187	3.8200	-50.0800	1
B00BCVGMS0	Caldera Junior Hiking Boot	90	4	468	2.8300	-0.0800	2
B07G35WKSH	Kids Boys Dress Oxford Shoes	90	4.5	600	-6.1800	-50.0800	3
B0BK74XD97	Kids' Toledo JR TF Turf Soccer Shoes	90	4.5	490	-7.2200	-50.0800	4
B09NQXT2BM	Toddler-Kids Waterproof Light Up Rain Boots Patterns and Glitter Boots with Handles for Boys and Girls	90	4.7	2147	-10.1800	-50.0800	5
B08X64KDCT	Harry Potter Girls' Hogwarts Castle Shirt and Shorts Sleepwear Pajama Set - All 4 Houses Available	91	4.7	221	0	5.8600	1
B083V6R5QR	Harry Potter Big Girls' Hogwarts House Crest Racerback Tank and Shorts Pajama Lounge Set	91	4.8	616	0	0.8600	2
B083V6JMB2	Harry Potter Big Girls' Hogwarts House Crest Racerback Tank and Shorts Pajama Lounge Set	91	4.8	616	0	0.8600	3
B0757B43M8	Girls Tank Nightgown with Cape	91	4.8	346	0	-0.1400	4
B079CVR54J	Girls Leggings 3 Pack Modal Size 4-16 Stretchy Pants	91	4.5	2134	0	-3.1400	5
B015QWISY6	Round White Diamond Split Shank Enhancer Guard Wedding Ring (0.35 ctw, Color I-J, Clarity I1-I3) in Gold	95	4.2	112	516.0600	-18.7500	1
B07H7JKNVF	Natural and Certified Gemstone and Diamond Butterfly Petite Necklace in 14k White Gold | 1.04 Carat Pendant with Chain	95	4.2	130	461.4600	-18.7500	2
B07GFKW474	Solid 14K White Gold 1.25CTW 4mm GH Color Moissanite Engagement Ring Half Eternity Anniversary Wedding Band	95	4.6	140	374.8600	-18.7500	3
B0B7K3T1CQ	Natural Blue Sapphire Teardrop Pendant Necklace in Sterling Silver/14K Solid Gold/Platinum for Women, Girls with 18" Chain | September Birthstone Jewelry Gift for Her	95	4	114	364.8600	-18.7500	4
B07WDRFQ69	14K Yellow Gold 2.5mm, 3.5mm, 4.5mm, or 5.5mm Figaro Link Chain Necklace- Made in Italy- Multiple Lengths Available	95	3.7	652	327.7800	-18.7500	5
B09Y2DBZGS	Spinners, Black, 22-inch Baseline Essential Carry-On	108	4.5	241	583.1600	-143.6700	1
B08GD1WLS4	Sympatico Hardside Domestic Spinner Luggage, Matte Black, 22-Inch Carry-On	108	4.6	167	483.1600	-143.6700	2
B07XGHDK66	Pelican Air 1615 Travel Case - Suitcase Luggage (Blue)	108	4.7	386	394.1100	-143.6700	3
B0CDNXXB5R	ZDX Luggage, Ocean, Carry-On 22 Inch	108	4.6	113	383.1600	-143.6700	4
B07PQNMT5K	Winfield 3 DLX Hardside Luggage with Spinners, 3-Piece Set (20/25/28), Graphite Grey	108	4.3	3376	315.3300	-143.6700	5
B0BHZTKSP3	Flint and Tinder Men's Flannel-Lined Waxed Trucker Jacket, Water & Weather Resistant	110	4.5	124	252.1500	-55.3400	1
B07Z9DV67Z	B3 Bomber Jacket Aviator Real Shearling B3 Bomber Jacket Winter	110	4.1	354	234.1400	244.6500	2
B07S4K2DF1	PRO+ Bluetooth Heated Vest with Battery Pack Included - App Control - 12V Dual Battery Ready Soft Shell	110	4.6	100	203.1500	-55.3400	3
B08TTT9JWP	Real Lambskin Swedish Bomber Coat - Sherpa Lined Leather Jacket Fur Coats	110	4	209	181.1500	-55.3400	4
B008XD4YBW	Men Richard Classic Leather Blazer Lambskin Sport Coat Jacket (Regular, Big & Tall and Short)	110	4.5	636	154.1400	244.6500	5
B094C3XW93	Cheetah Sunglasses with Polarized Lenses – Performance Sports Active Cat Eye Sunglasses – For Women	112	4.4	102	155.7900	-66.3800	1
B0B9PK4XSJ	RB3507 Clubmaster Aluminum Square Sunglasses	112	4.6	368	147.1800	148.6200	2
B00B35OM9G	Royal Flush Straw Hat	112	4.5	466	106.7800	-66.3800	3
B002B42268	Men's Rb3362 Cockpit Aviator Sunglasses	112	4.6	790	101.8700	119.6200	4
B097CYKZFD	Rechargeable Heated Gloves Battery Electric Ski Gloves with 3 Heating Levels Touchscreen Waterproof Gloves for Men & Women	112	4.2	520	75.7900	-66.3800	5
B075RTQKXW	Lineman Extreme Non-insulated with Steel Safety Toe	114	4.7	106	436.1600	-110.2600	1
B00RIF48W6	Men's Alamosa Ostrich Square Toe Cowboy Boots Traditional	114	4.4	199	328.2100	-110.2600	2
B07H7LV997	Men's Match Walking Shoe	114	4.5	508	300.1100	-110.2600	3
B085BX44RN	Jordan Women's Shoes Air Jordan 1 Mid SE Light Club CW1140-100	114	4.6	189	271.2100	-110.2600	4
B09235G37L	Jordan Men's Sneaker	114	4.6	661	250.6100	269.7400	5
B089J6NJWS	Women's Medium Liz Shopper Tote	118	4.4	163	638.2600	-74.0500	1
B09LB9HW86	MICHAEL Michael Kors Hamilton MD Satchel bundled with Trifold Wallet and Purse Hook	118	4.6	102	401.2600	-74.0500	2
B095KTKD1T	Women's The Leather Medium Tote Bag	118	4.7	168	393.2600	-74.0500	3
B092QNCH74	Women's Perry Tote	118	4.6	165	341.2600	373.9500	4
B00K2J0A4U	Melissa Zip Satchel Leather Handbag	118	4.4	640	331.2600	-74.0500	5
B078WXTN79	Men's Modern 3-Hand Automatic Watch, Open Aperture Dial and Edge to Edge Crystal	121	4.5	335	409.1600	514.6900	1
B00272NBJQ	G Shock GW-5000-1JF Multi Band 6 Japan Made	121	4.7	753	393.0800	385.6700	2
B07FF21NWZ	Men's Classic Wilton 26-Jewel Automatic Leather Strap Watch, 40 Hour Power Reserve, Domed Sapphire Crystal, Exhibition Case Back, Luminous Hands, 43mm	121	4.6	324	365.6400	459.6900	3
B0016ISIKE	Women's 96R000 Diamond Accented Chronograph Watch	121	4	167	265.6300	264.6800	4
B078WW6SZC	Men's Marine Star 'Series B' Chronograph Quartz Watch, Rotating Dial, 100M Water Resistant, 43mm	121	4.7	1572	253.1400	359.6900	5
B07BZYLTW5	South Shore Tiara Loft Bed with Desk, Twin	124	3.9	290	891.1200	-116.8200	1
B0C585YLZV	Max & Lily Full Bed, Wood Bed Frame with Headboard for Kids with Trundle, Slatted, Blue & Nightstand with Drawer and Shelf, Blue	124	4.4	2058	688.1100	-116.8200	2
B07KYF1X21	South Shore Bebble Modern Bunk Bed White and Natural Twin	124	4.5	112	591.1200	677.1800	3
B07CGSZJ7L	Naomi Home Twin Size Loft Bed with Storage, Desk, Cabinet Ladder, Low Study Pine Wood for Kids, Safety Guard Rails, Bookcase Shelf, White	124	4.2	686	473.0800	-116.8200	4
B0713MG1LX	House Bed Frame Full Size Made in the USA - No Legs	124	4.3	188	450.1300	-116.8200	5
B0BPTJF75D	Normatec 3 - Recovery System with Patented Dynamic Compression Massage Technology (Normatec 3 Full Body (Standard Legs + Hips + Arms) FSA-HSA Approved	128	4.6	252	1416.4300	-47.1700	1
B0B6RL7NQJ	TheraGun Pro Handheld Deep Tissue Massage Gun - Bluetooth Enabled Percussion Massage Gun & Personal Massager for Pain Relief & Circulation in Neck, Back, Leg, Shoulder and Body (Black - 5th Gen)	128	4.5	2605	544.4200	-47.1700	2
B01LBI1BIO	Sperti KBD UVB Phototherapy Lamp - At-Home Sun Deficiency Lamp, Boost Immune system, Strengthens Bones, Increases Mood, Happier Life, 7 Year Warranty, Just 5 Mins for a Healthy Life - US Based Company	128	4.3	158	516.4300	-47.1700	3
B00BG84WF4	EARTHLITE Portable Massage Table LUNA - Ultra-Lightweight, Patented Aluminum Reiki Frame incl. Flex-Rest Face Cradle & Carry Case (29lb)	128	4.4	214	381.9800	521.8300	4
B0C42NTLYC	Theragun Elite Ultra-Quiet Handheld Deep Tissue Massage Gun - Bluetooth Enabled Percussion Massage Gun & Personal Massager for Pain Relief in Neck, Back, Leg, Hand, Shoulder and Foot (Black - 5th Gen)	128	4.6	4602	364.4300	401.8300	5
B01BL40DJG	Immunotec Immunocal Platinum (30 pouches)	132	4.5	853	144.6800	-30.4700	1
B07FMBV7ZY	HMR "Classic" 800 Shake Meal Replacement Mix | Chocolate Shake Powder to Support Healthy Weight Loss | 17g of Protein | Easy to Make | Low Calorie Food | Triple Pack, 18 Single Serve Packets per Box	132	4.7	638	128.2200	-30.4700	2
B08MTK2Y2W	PRÜVIT Keto//OS NAT® Strawberry Peach Keto Supplements – Charged - Exogenous Ketones - BHB Salts Ketogenic Supplement for Workout Energy Boost for Men and Women (20 Count)	132	4.4	896	126.2200	-30.4700	3
B09T81C63C	UNICITY BALANCE ORANGE - Stay Full Longer by Slowing Carbohydrate Absorption (60 Packets). Helps Support a Healthy Digestive System and Keeps Your Body Well Maintained (30-Day Supply)	132	4.1	426	118.1700	-30.4700	4
B07PWNRTBV	Organifi Green Juice and Red Juice Bundle - 30 Day Supply - Delicious, Refreshing Organic Superfood Supplement Powder with Antioxidants for Energy and Stress Relief Support - No GMO, Gluten, or Soy	132	4.5	682	103.1400	-30.4700	5
B071LHTW6Q	AdirOffice Acrylic Plexiglass Sheet 24’’x24’’ 1/8'' Thick - Transparent, Plastic Sheeting - Durable, Water Resistant & Weatherproof - Multipurpose & Ideal for Countless Uses – 6 Pack, Clear	140	4.5	329	99.8300	114.5000	1
B00NL4C8V6	TRIM-LOK Rubber Edge Trim" Fits 1/32" Edge, 3/8" Leg Length, 100" Length, Black" Flexible Neoprene Edge Protector for Sharp/Rough Surfaces, Easy to Install for Cars, Boats, Machinery and More	140	4.3	683	86.8300	-25.4500	2
B09BVQYK8M	FOXIVO 36'' x 100' Hardware Cloth 1/4 inch Square Openings - 23 Gauge Hot-Dipped Galvanized Wire mesh Welded cage Wire Rolls, Great for Flower beds Chicken Coop Rabbits Animal Enclosure	140	4.7	155	79.8300	104.1900	3
B07GHM4X7F	RevTime Anti-Vibration Mats, 28" x 28", 5/8" (15 mm) Thick Rubber Mats, Anti-Walk, Anti-Move, Anti-Noise for Washer, Dryer, Audio Equipment, Strength Training Equipment Mat (Pack of 2)	140	4.4	221	77.6900	-25.4500	4
B078DT97L7	TRUE COMPOSITES: Biaxial Fiberglass Chopped Strand Cloth 1708 x 50” Wide, 10 Yards, 30 Feet, Laminating Repair Kits-Great for Boats, Car Exterior, Canoe, Surfboard, Non-Tacky Finish	140	4.5	151	68.8100	-25.4500	5
B087TP1ZTY	Art3d Decorative Ceiling Tile 2x2 Glue up, Suspended Ceiling Tile Pack of 48pcs White Floral	141	4.5	187	280.8600	-22.5300	1
B0006TUB5E	Posi Lock 106 Manual Puller, 3 Jaws, 10 tons Capacity, 6" Reach, 1/4" - 7" Spread Range, 13-1/3" Overall Length	141	4.7	154	205.8600	-22.5300	2
B08LP2JK1F	US Weight (Made in USA) 2 inch x 100 feet' White Plastic Safety Chain ft. SunShield UV Resistant Technology	141	4.7	1259	142.6700	181.2600	3
B0C1YF8Z33	Wallmaster Pegboard Organizer Garage Storage Rack, Metal Pegboard Organizer Set with Tool Board Hooks Accessories,Storage Bins, Overhead Shelf, Paper Towel Holder Father's Day Gift (Black)	141	4.5	124	140.8600	-22.5300	4
B0BNN6RN48	TORACK Metal Pegboard Wall Organizer 4ft Wide, Pegboard System for Garage with Accessories and Wall Mount Storage Bins, Shelves and Paper Towel Holder, Pegboard Kit for Workbench, Shop, Shed(Black)	141	4.5	650	130.8600	-22.5300	5
B0002SQYF0	Scotch-Brite General Purpose 7447 Hand Pad, Very Fine Grade, 6 in x 9 in, Pack of 20, Aluminum Oxide, Surface Preparation, Scuffing, Blending, Cleaning, Maroon	142	4.8	2782	-3.6600	-27.7200	1
B00SJSY5O2	Rubberseal Liquid Rubber Waterproofing and Protective Coating - Roll On WHITE (5 Gallons)	143	4.4	988	275.1700	-34.7700	1
B00OYVDOSG	Makita XGC01Z 18V LXT Lithium-Ion Cordless 10 oz. Caulk & Adhesive Gun, Tool Only	143	4.7	352	233.1800	416.4300	2
B0BVG688VN	PC Products PC-7 Epoxy Adhesive Paste, Two-Part Heavy Duty, 2oz in Two Jars, Charcoal Gray 27776, (Pack of 4, 48 Count)	143	4.5	284	225.0800	-34.7700	3
B077XZJWYD	ZipWall HDAZ2 Self-Adhesive Heavy-Duty Zipper 24 Count (12 Packs of 2)	143	4.6	1590	220.2400	-34.7700	4
B0B16M6WYL	Clear BioSeal 100% Silicone Sealant Caulk Kitchen and Bath Grade, Waterproof and No Odor No Color Change 10.1 Ounce Cartridge, 50 Clear Tubes Set / 2 Boxes	143	4.3	192	219.1700	-34.7700	5
B0C3CKT79Q	Snapmaker J1s 3D Printer, IDEX 3D Printer 5X Fast Speed, FDM 3D Printers with Independent Dual Extruder Direct Drive,Dual-Material Printing,4 Printing Modes,All Metal Structure,Large Print Volume	157	4.1	355	1445.0400	-69.4600	1
B09L7XCW3B	R QIDI TECHNOLOGY X-CF Pro 3D Printers Industrial Grade,Specially Developed for Printing Carbon Fiber&Nylon with QIDI Fast Slicer, Automatic Leveling,Large Build Volume 11.8x9.8x11.8 Inch	157	4.5	127	1445.0400	-69.4600	2
B0BV6Q16WR	Official Creality CR-M4 3D Printer with Sprite Dual-Gear Direct Extruder 300°C Hotend 25-Point CR Touch Auto-Leveling Kit Dual-Y axis Linear Rails Large Build Volume 17.7 * 17.7 * 18.5in	157	4.1	510	1145.0400	-69.4600	3
B0BV6L9GQW	Creality 3D Printers CR-M4 Largest FDM 3D Printer 25-Point CR-Touch Auto-Leveling Flexible PC Surface Fast-Heating Bed Quasi-Industrial Grade Dual Y-axis Linear Rails 17.71 * 17.71 * 18.5in	157	4.2	713	1145.0400	-69.4600	4
B0B21QL7LZ	ANYCUBIC Resin 3D Printer, Photon M3 Max SLA LCD UV Resin Printers with 13.6'' 7K Mono Screen, Smart Resin Filler, Large 3D Printing Size 11.7'' x 6.5'' x 11.81''	157	4.3	1936	1066.0300	-69.4600	5
B09XGVY1Q1	Rugland 8x10 Area Rugs - Stain Resistant Washable Rug, Anti Slip Backing Rugs for Living Room, Vintage Tribal Area Rugs (TPR07-Ivory, 8'x10')	165	4.4	1552	179.7500	-26.3400	1
B0C2YZNKCR	Area Rug Living Room Rugs: 9x12 Large Soft Machine Washable Boho Moroccan Farmhouse Neutral Stain Resistant Indoor Floor Rug Carpet for Bedroom Under Dining Table Home Office House Decor - Brown	165	4.5	102	169.7500	-26.3400	2
B0BPBSYHL8	befbee Washable Rug 8x10 Area Rugs for Living Room - Stain Resistant Non-Slip Backing Rugs for Bedroom,Ultra-Thin Vintage Large Area Rug (Turmeric/Grey,8'x10'	165	4.6	482	169.6600	-26.3400	3
B0BJTY6ZK5	VanPokins LED Bathroom Mirror, 24x32 Inch Gradient Front and Backlit LED Mirror for Bathroom, 3 Colors Dimmable CRI>90 Double Lights, IP54 Enhanced Anti-Fog, Hanging Plates Wall Mount Lighted Mirror	165	4.6	185	159.7500	-26.3400	4
B095PTV79F	LEGO Icons The Friends Apartments 10292, Friends TV Show Gift from Iconic Series, Detailed Model of Set, Collectors Building Set with 7 Minifigures of Your Favorite Characters	165	4.9	1602	159.7500	-26.3400	5
B091JQ3BB9	Novilla California King Mattress, 12 Inch Gel Memory Foam Cal King Mattress for Cool Sleep & Pressure Relief, Medium Plush Feel with Motion Isolating, Bliss	166	4.4	219	403.9300	441.1300	1
B003CT37L0	Sleep Innovations Shiloh 12 Inch Memory Foam Mattress with Ventilated Suretemp Foam for Breathability, Queen Size, Bed in a Box, Medium Firm Support,White	166	4.3	6563	384.9200	392.1200	2
B074MSBTZP	La-Z-Boy Delano Big & Tall Executive Office Chair, High Back Ergonomic Lumbar Support, Bonded Leather, Black with Mahogany Wood Finish	166	4.1	1963	372.9900	-87.8700	3
B0BWQY71DB	Sweetnight Queen Mattress, 12 Inch Gel Memory Foam Mattress in a Box, Plush Comfort Queen Size Mattress for Motion Isolation & Pressure Relief, Gray, Starry Night Grey	166	4.7	138	370.2700	-87.8700	4
B0B77MG8V9	ErGear L-Shaped Electric Standing Desk, 63 inches Double Motor Height Adjustable Sit Stand up Corner Desk, Large Home Office Desk Computer Workstation, Black	166	4.6	109	334.9200	-87.8700	5
B07Y5SLKJL	Graco Sense2Snooze Bassinet with Cry Detection Technology | Baby Bassinet Detects and Responds to Baby's Cries to Help Soothe Back to Sleep, Ellison , 19 D x 26 W x 41 H Inch (Pack of 1)	172	4.4	1660	276.8300	293.2700	1
B07XDW2LTH	RONBEI Baby Bassinet, Bedside Sleeper Cribs,Baby Bed to Bed, Adjustable, Portable for Newborn, Infant/Baby Boy/Baby Girl	172	4.6	3157	169.6400	-36.7200	2
B098R93KK7	KoolerThings Baby Bassinet, Bedside Sleeper for Baby, Easy Folding Portable Crib with Storage Basket for Newborn, Bedside Bassinet, Comfy Mattress/Travel Bag Included (White and Gold)	172	4.5	267	159.9400	-36.7200	3
B09V1LG1B9	Beka Baby 4 in 1 Bassinet Bedside Sleeper, 4 Functions Bedside Crib Sleeper, Playard, Changing Table, Baby Bassinet for Newborn Baby	172	4.6	584	159.9400	-36.7200	4
B08K2Q24SV	Graco My View 4 in 1 Bassinet | Infant to Toddler Bassinet with 4 Stages, Derby , 23.19x33.5x32.25 Inch (Pack of 1)	172	4.7	368	159.9400	-36.7200	5
B0BVB5PTDK	Roborock S8 Pro Ultra Robot Vacuum, Auto-Drying, Self-Washing, Liftable Dual Brush & Sonic Mop, 6000Pa Suction, Self-Refilling, Self-Emptying, Obstacle Avoidance, Black (RockDock Ultra Series)	175	4.5	294	1553.5400	-87.2600	1
B0BVB6JKMX	roborock S7 Max Ultra Robot Vacuum and Mop Combo, Auto Mop Drying/ Washing, Self-Emptying, Self-Refilling, 5500Pa Suction, Reactive Tech Obstacle Avoidance, Black (RockDock Ultra Series)	175	4.4	2008	1253.5400	-87.2600	2
B07HNLCKDC	Miele Complete C3 Marin Canister HEPA Canister Vacuum Cleaner with SEB236 Powerhead Bundle - Includes Performance Pack 16 Type GN AirClean Genuine FilterBags + Genuine AH50 HEPA Filter	175	4.4	422	1173.5200	-87.2600	3
B09NPKWDRX	ECOVACS DEEBOT X1 Omni Robot Vacuum and Mop Combo with Self-Emptying, Auto-Wash, Auto-Refill and Auto-Hot Air Drying, 5000Pa Suction, AIVI 3D Obstacle Avoidance, Built-in YIKO Voice Assistant, Black	175	3.9	1440	1052.5500	-87.2600	4
B0C4DFB33W	ECOVACS DEEBOT T20 Omni Robot Vacuum and Mop, Hot Water Mop Washing, Self-Emptying, Hot Air Drying, 6000Pa Suction, OZMO Turbo Spinning Mop with Auto Mop Lift, Obstacle Avoidance, YIKO Voice Assistant	175	4.3	1692	1028.3400	-87.2600	5
B0C5MGQZP4	Self Cleaning Cat Litter Box - Anti-Pinch/Odor-Removal Design Automatic Cat Litter Box, Extra Large for Multiple Cats, All Litter Can Use, Easy Clean, with Garbage Bags/Mats, Smart App Control	179	4.3	2684	571.9100	-38.2900	1
B09KC7Q4YF	PETKIT Self Cleaning Cat Litter Box, PURAMAX Extra Large Automatic Cat Litter Box for Multiple Cats, xSecure/Odor Removal/APP Control	179	4	1077	570.9200	-38.2900	2
B0B1LH69H3	KungFuPet Self-Cleaning Cat Litter Box, Automatic Cat Litter Box for Multi Cats, Extra Large Smart Litter Box with Mat & Liner, APP Control/Safety Protection/Odor Removal [Upgrade Version]	179	3.8	1118	550.9200	-38.2900	3
B0B87Q6Y2V	MeoWant Self-Cleaning Cat Litter Box, Integrated Safety Protection Automatic Cat Litter Box for Multi Cats, Extra Large/Odor Isolation/APP Control Smart Cat Litter Box with Mat & Liner	179	4.1	614	541.9100	-38.2900	4
B074CQF37Q	SportDOG Brand TEK Series 1.5 GPS Tracking + E-Collar System - 7 Mile Range - Waterproof and Rechargeable - Tone, Vibration, and 99 Levels of Shock - Expandable to Locate and Train up to 12 Dogs	179	3.9	142	521.8700	-38.2900	5
B076Q8PWLM	Rhinegold Torrent Outdoor Rug Lightweight.No Fill	182	4.4	732	22.8500	-43.2400	1
B07D1QXXJN	Cwell Equine Travel Fleece Rug/Cooler Standard Neck Burgundy Choice of Sizes (6'6)…	182	4.3	124	-4.1000	-43.2400	2
B071XPXCVS	New Horse COB Pony Shetland Mini RED Show Travel Fleece Rug 3'6"-6'9" Stable Cooler Choice of Sizes (4'6")…	182	4.2	132	-4.1000	-43.2400	3
B07F1GGZQH	Rhinegold Cotton Quilted Saddle Cloth	182	4.6	250	-11.9500	-43.2400	4
B0748LNBH8	Rhinegold Half Pad	182	4.4	118	-16.0500	-43.2400	5
B0922CCQFK	REPTI ZOO Full Glass 35 Gallon Reptile Tank, Front Opening Wide & Low Reptile Terrarium 36" x 18"x 12" for Lizard Gecko Tortoise Snake, Top Screen Ventilation & Anti Escape Lid	183	4.5	948	172.7400	198.8100	1
B08G8JXWMX	unipaws Tortoise House with Tray, Tortoise Enclosure with Reptile Carpet and Food Bowls for Small Animals, Indoor and Outdoor Medium Habitat, Anti-Corrosion and Moisture Proof	183	4.3	235	54.3500	-30.1700	2
B08PCR8KVF	ExoRepti Deep Heat Projector Reptile Heat Lamp Bulb (DHP 100W, PAR30), Basking Light for Bearded Dragon & Leopard Gecko, Carbon Infrared Heater for Amphibian Pet	183	4.4	283	6.3500	-30.1700	3
B09RF7X69Y	Dried grubs for Chicken -Alternative to Dried mealworms for Chickens-Dried Black Soldier Fly Larvae for Laying hens Backyard Flock Party Poultry, Fowl, Reptiles, Amphibian etc	183	4.7	285	2.8500	-0.1800	4
B09V57HMVV	OCSOSO Heated Cat Bed Electric Heating Pad for Cats and Dogs Waterproof Warming Mat Auto-Off,18inch Pet Mat Temperature Adjustable and Constant Heating for Indoor and Outdoor Use	183	4.4	101	0.1500	-30.1700	5
B07D3X5PF3	TP-Link Smart Hub & Whole Home WiFi Mesh System	186	4.3	866	112.6100	-202.3900	1
B07NQD5L6V	Certified Refurbished Echo Studio - High-fidelity smart speaker with 3D audio and Alexa	186	4.5	2908	87.6200	-202.3900	2
B008UOEJRS	Nexia Z-Wave Bridge, Smart Home Hub, BR100	186	3.8	157	67.6200	-202.3900	3
B078YBV6H2	X10 WM100 Wi-Fi HUB for Android and Apple Devices	186	3.9	123	27.6200	-202.3900	4
B07D19VVTX	Hubitat Elevation Home Automation Hub (Model C-7) Compatible with Alexa, HomeKit, Google Home, Zigbee, Z-Wave, Lutron	186	4	2438	27.5800	-52.4400	5
B082KGF6FX	REOLINK 4K Security Camera System, RLK16-800B8 8pcs H.265 PoE Wired with Person Vehicle Detection, 8MP/4K 16CH NVR with 4TB HDD for 24-7 Recording	190	4.5	1129	878.7000	-121.0000	1
B082KHKG89	REOLINK 4K Security Camera System, RLK16-800D8, 8pcs H.265 4K PoE, Wired with Person Vehicle Detection, 8MP/4K 16CH NVR with 4TB HDD for 24-7 Recording	190	4.3	838	878.7000	-121.0000	2
B07W4WBKKJ	REOLINK 4K Security Camera System, 6pcs H.265 PoE Wired Bullet 4K Cameras with Person Vehicle Detection, 4K/8CH NVR Recorder with 2TB HDD for 24-7 Recording, RLK8-800B6	190	4.5	759	578.7000	-121.0000	3
B01C6KUKMY	REOLINK 4MP 16CH PoE Security Camera System, 8pcs Wired 1440P IP Camera with Person Vehicle Detection, Night Vision, 4K NVR with 4TB HDD for 24-7 Recording RLK16-410B8, Motion Only alert	190	4.5	1164	578.7000	-121.0000	4
B086D1K62S	ZOSI H.265+ 16 Channel Security Camera System, DVR with Hard Drive 4TB and 16 x 1080p Surveillance CCTV Camera Outdoor Indoor with 120ft Night Vision,105°Wide Angle, Remote Access	190	4.3	2888	478.6900	-121.0000	5
B07P8BHL8H	Miracle-Gro Twelve Indoor Growing System, Side Table with LED Grow Light for Year Round Gardening, Planter For Leafy Greens, Herbs & Flowers	195	4.1	313	172.6800	-163.6300	1
B0758JX1L3	Gro 7 Zone Controller - Smart Sprinkler	195	3.2	191	-79.2700	-57.1400	2
B074XKB239	AcuRite Atlas 01007M Weather Station with Temperature and Humidity Gauge, Rainfall, Wind Speed, Direction & Lightning Detection for Home Forecast	195	4	768	-158.5100	-163.6300	3
B0723CSMGD	Bluetooth Headset with LED Display	195	4.4	467	-158.5100	-163.6300	4
B074ZNJYT8	AcuRite Smart Weather Station with Remote Monitoring Compatible with Amazon Alexa (01012M), Internet Connected	195	4.4	445	-158.5100	-163.6300	5
B00LOWYHQG	General Electric WB08T10023 Lamp halogen ( 1 count )	206	4.4	244	0	-26.7200	1
B00805EAI0	Wolff System Wolff Dark Tan II F71 T12 100W Tanning Bed Bulbs, Box of 24 Lamps	206	4.6	588	336.2800	-26.7200	2
B0BM41NBTY	Sunco 100 Pack T8 LED 4FT Tube Light Bulbs Ballast Bypass Fluorescent Replacement 6000K Daylight Deluxe 18W Clear Cover Retrofit Single Ended Power (SEP) Commercial Grade – UL	206	4.4	2588	326.6700	376.2700	3
B00805CEKQ	Wolff System Wolff Dark Tan II F71 T12 100W Tanning Bed Bulbs, Box of 16 Lamps	206	4.4	462	256.1300	-26.7200	4
B07QFLVVWL	25Pack, T8 LED Bulbs 4FT Tube Light, 60W 6500LM 6000K Cold White, 4 Foot Flourescent Tube Replacement, 4 Row V Shape 270 Degree, Remove Ballast, Double Row, Dual-end Powered, Clear Cover	206	4.5	143	246.5800	-26.7200	5
B07HL817CS	Moen Brecklyn Glacier White One-Handle Single-Hole Kitchen Faucet with Pull-Out Sprayer and Power Clean, Optional Deckplate Included, 87557W, 59" Hose Length	208	4.4	354	75.2000	68.8000	1
B07TSZZ28T	KOHLER R77748-SD-BL Malleco Touchless Pull Down Kitchen Sink Faucet with Soap/Lotion Dispenser in Matte Black	208	4.6	409	74.1900	-80.2000	2
B07CCH882V	Charmingwater Touchless Bathroom Sink Faucet, Hands Free Automatic Sensor Faucet with Hole Cover Plate, Chrome	208	4.2	1070	57.1800	-80.2000	3
B08FLP7HCJ	Serene Valley Sink Bottom Grid 29-1/2" X 15-9/16", Centered Drain with Corner Radius 3/8", Sink Protector NDG3016C	208	4.8	171	-9.1100	-80.2000	4
B003H49MAA	Kohler 1024385 Genuine Part Toilet Flush Valve Kit with 3 ¼” Flapper	208	4.7	414	-32.5700	-40.2000	5
B01MXUWMED	GC GHOST CONTROLS Heavy-Duty Solar Automatic Gate Opener Kit for Driveway Swing Gates with Long-Range Solar Gate Opener Remote - Model TDS2XP	211	4.5	2601	854.1600	-34.9400	1
B07X6KFBLZ	Mighty Mule MM372W Automatic Gate Opener DUAL SMART, Black	211	3.8	273	557.6400	674.0600	2
B07X36PGH1	Mighty Mule MM371W Automatic Gate Opener (SMART), Single, BLACK	211	4.1	1128	365.1400	394.0600	3
B000ZHD0F0	Alarm Lock - DL270026D Trilogy By T2 Stand Alone digital lock DL2700/26D	211	4.5	263	355.1600	-34.9400	4
B0C2PB869K	Level Lock+ Smart Lock with Apple Home Keys - Smart Deadbolt for Keyless Entry Plus Key Card or App, Bluetooth Enabled Lock Works with Apple HomeKit, Matte Black	211	3.8	119	304.1600	-34.9400	5
B0B8RQ7JR3	wellent 80 Pcs Foam Glow Sticks with 3 Modes Colorful Flashing, Neon Party Favors Supplies for Birthday, Wedding, Carnival, Concert, Halloween	216	4.6	128	56.7400	-16.7800	1
B092J61TXF	Oh Twodles Minnie Twodles Birthday Party Supplies Decorations Mouse Banner Cake Topper 2nd Banner Balloon Minnie Backdrop Cupcake Topper for Girls Baby Bday	216	4.6	428	34.7400	-16.7800	2
B0B12C1FHH	Max Fun Led Light Up Glasses Toys Plastic Shutter Shades Glasses Flashing Glow in The Dark Sticks Sunglasses Party Supplies	216	4.5	432	32.7400	-16.7800	3
B0B56FW2X8	OLUPP 84 Pcs Led Glasses Halloween Party Supplies,5 Colors Light Up Glasses Led Party Sunglasses, Shutter Shades Glasses Party Favors for Adult Kid Birthday Halloween Valentine's Day Accessories	216	4.7	263	24.7400	29.2100	4
B001CUUJBC	THE WEBCASTER GUN Outdoor Halloween Decorations Spider Web Shooter For Indoor/outdoor Halloween Decor Spiderwebs	216	4.1	230	24.7400	-16.7800	5
B00DU2H6QQ	Clover 8440 Fine Weaving Sticks (6-Pack), Brown	219	4.7	163	0	-17.9700	1
B0B91YSQB1	Homedics Drift Sandscape, Kinetic Sand, Perpetual Motion Machine, Zen Garden, Meditation Accessories, Decorative Sandscape, Bluetooth, iOS, Android, by Homedics (16 Inch (Small), Black)	219	4.6	189	317.1100	382.0200	2
B076ZSCX7M	LITTLE FREE LIBRARY® Unfinished Kit with Official Charter Sign and World Map Access Included, Amish Crafted in America, Share Books, Support the Nonprofit that Builds Community and Expands Book Access	219	4.5	126	316.2500	-17.9700	3
B018IL7AQY	Harry Potter Books Set #1-7 in Collectible Trunk-Like Toy Chest Box, Decorative Stickers Included by Harry Potte	219	4.8	1305	163.1900	-17.9700	4
B001JJVY38	Model Color - Acrylic, 72 Basic Colors Set in Plastic Case	219	4.6	201	159.2900	174.4600	5
B08SJSX775	FWFX Dance Mat Games for TV - Wireless Musical Electronic Dance Mats with HD Camera, Double User Exercise Fitness Non-Slip Dance Step Pad Dancing Mat for Kids & Adults, Gift for Boys & Girls…	222	4.3	632	145.9800	187.5800	1
B09ZHSMBNK	Smart Watch for Kids with MP3 Music Double Cameras Video Player 24 of Games Recorder Pedometer Alarm Clock Calculator Flashlight Watch Electronic Learning Education Toys Gifts for 3-12 Age Boys Girls	222	4	134	-10.2200	-42.4100	2
B0851D7312	WELLFUNTIME Inflatable Water Slide Park with Splash Pool Climb The Wall, 3 Inflatable Sport Balls and 4 Water Guns, Water Slide with Air Blower	228	4.4	461	609.7000	-35.8300	1
B0881ZSGSB	Sunny & Fun 2-in-1 Bounce & Blast Inflatable Water Slide Park – Heavy-Duty for Outdoor Fun - Climbing Wall, Slide, Bouncer & Splash Pool – Easy to Set Up, Included Air Pump & Carrying Case	228	4.3	431	519.7000	-35.8300	2
B0C7GWD3G7	Bounce House with Slide for Kids 5-12, Inflatable Bounce House with Blower, YARD Bouncy House for Indoor / Outdoor Backyard, 12ft x 10ft x 9ft Bouncy Castle, Jump House for Adult Toddlers Kids Party	228	4.5	104	429.7000	-35.8300	3
B003WY6YQ0	Bounceland Pop Star Inflatable Bounce House Bouncer, Large Bouncing Area with Long Slide, Climbing Wall, Basketball Hoop, UL 1HP Blower Included, 15 ft x 13 ft x 8.3 ft H, Pop Star Kids Party Theme	228	4.4	561	428.7100	-35.8300	4
B00AU0O8B2	Little Tikes Rocky Mountain River Race Inflatable Slide Bouncer Multicolor, 161.00''L x 169.00''W x 103.00''H --- Weight: 50.00lbs.	228	4.4	1864	425.0700	464.1600	5
B01N9FO5TX	Ufree Action Pony, Large Mechanical Horse Toy, Ride on Bounce up and Down and Move, Height 44 inch for Children 6 Years to Adult Black Mane and Tail	230	4.4	114	348.5700	-26.4100	1
B0BKMYRVXJ	ECR4Kids SoftZone Lincoln Tunnel Climber, Toddler Playset, Earthtone, 9-Piece	230	4.8	333	248.8300	-26.4100	2
B07N84F7D2	PonyCycle Official Classic U Series Ride on Horse Toy Plush Walking Animal Pink Unicorn Size 4 for Age 4-9 Ux402	230	4.8	366	247.8400	-26.4100	3
B095SBHCJN	PonyCycle Authentic Ride on Horse Pony Kids Ride on Toys (with Brake/ 36" Height/Size 4 for Age 4-8) Riding Horse Walking Horse Toy Plush Brown Ux424	230	4.8	292	247.8400	-26.4100	4
B095SCQPBG	PonyCycle Authentic Ride on Unicorn (with Brake/ 36" Height/Size 4 for Age 4-8) Toddler Pink Horse Ride on Toys for Girls Ride on Horse Plush Ux402	230	4.8	172	247.8400	-26.4100	5
B006HDF3B0	Fisher-Price Disney's Jake and The Never Land Pirates - Hook's Battle Boat	237	4.6	393	-31.3000	-32.2900	1
B01K5MIUAE	New-Ray Camo Pick Up Truck with Jon Boat and Trailer	237	4.1	118	-48.2400	-32.2900	2
B084PYPWFB	KidKraft Adventure Bound™: Wooden Pirate Ship Play Set with Lights and Sounds, Pirate Figures, 8 Pieces Included, Gift for Ages 3+	237	4.7	1302	-65.1800	27.7000	3
B075ZBDYB1	Click N’ Play Military Air Force F/A 18 Super Hornet Fighter Jet, 16 Piece Play Set with Accessories - Army Action Figures, Missiles, and More, Toy for Boys 6+,Grey	237	4.2	648	-73.9100	17.7000	4
B07PHZVDWR	Special Forces Patrol, Licht, Sound, mit Aufziehschnur, deutsche Version, 24cm, J3+	237	3.6	350	-84.0700	-32.2900	5
B08DP2BQ7T	LAEGENDARY 1:14 Scale RC Front Loader Tractor, Metal Bulldozer, 22 Channel - Toys & Games	239	4.3	474	212.9900	246.3300	1
B07MKZR372	Theo Klein - John Deere Engine Premium Toys for Kids Ages 3 Years & Up	239	4.5	2004	78.6500	100.7700	2
B079GXSXB2	Bruder 09817 John Deere 9620RX with Track Belts Vehicles - Toys	239	4.8	205	65.6000	-50.6600	3
B00QH3HT94	Bruder John Deere T670i Combine Harvester	239	4.7	416	62.6500	-50.6600	4
B07P4JF4S2	Bruder 02545 Prinoth Snow Groomer Leitwolf	239	4	234	53.7000	-50.6600	5
B0B1F64B5C	Carrera Digital 132 20030023 Race to Victory Digital Electric 1:32 Scale Slot Car Racing Track Set for Racing up to 6 Cars at Once - Includes Two 1:32 Scale Cars & Two Dual-Speed Controllers Age 8+	240	4.5	108	347.4200	382.2100	1
B0828KS59M	Carrera Evolution 20025238 Motodrom Racer Analog Electric 1: 32 Scale Slot Car Racing Track Set - Includes Two 1: 32 Scale Cars & Two Dual-Speed Controllers Ages 8+	240	4.4	124	219.6000	-49.7900	2
B078YV8J58	Scalextric C1384 Gulf Racing 1:32 Scale Electric Slot Car Set	240	4.2	208	204.6000	-49.7900	3
B01H8XPMEA	DMXSLOTS Exclusive Slot Car Racing Package (4 Cars Included)	240	4.2	199	154.6000	-49.7900	4
B084CJ31LS	Scalextric Batman vs Joker 1:32 Spark Plug Slot Car Race Track Set C1415T, Black	240	4.1	174	129.6000	-49.7900	5
B00B3PDH5G	Turtle Beach - Ear Force PX51 Wireless Gaming Headset - Dolby Digital - PS3, Xbox 360	245	3.9	310	231.2800	-35.9600	1
B006W41W82	Turtle Beach Ear Force XP300 Wireless Gaming Headset - Xbox 360	245	4	278	184.2800	-35.9600	2
B0071LFKMY	Turtle Beach Ear Force X32 Wireless Gaming Headset Compatible with Xbox 360	245	4	118	161.2800	-35.9600	3
B0050SYR74	Xbox 360 Ear Force XP500 Programmable Wireless Headset	245	4	286	154.2800	233.9900	4
B01ARFIYMS	Microsoft Xbox 360 E 4GB Console (Renewed)	245	4.1	133	119.2800	-35.9600	5
B07VPRVBFF	Valve Index VR Full Kit	251	4.1	277	1309.3300	-51.1300	1
B00F27JDY0	PlayStation Vita Wi-Fi Light blue/White PCH-2000ZA14(Japan Import)	251	4.4	465	257.1200	-51.1300	2
B0897GCBWW	Tobii Eye Tracker 5	251	4.2	1844	246.3700	-51.1300	3
B00K85X1TE	SENRAN KAGURA SHINOVI VERSUS - 'Let's Get Physical' Limited Edition - PlayStation Vita	251	4.1	185	227.3200	-51.1300	4
B00F27JGVA	PlayStation Vita Memory Card 64GB (PCH-Z641J)	251	4.7	3720	190.8700	-51.1300	5
B00FS23T26	Nintendo Wii U Black Premium Pack (32GB) + New Super Mario Bros.U + New Super Luigi U	252	3.9	299	2458.1400	-50.4400	1
B00CHYOP94	Game & Wario - Nintendo Wii U	252	3.7	117	458.1400	-50.4400	2
B07HRDZ737	Nintendo Wii U Deluxe Set: Super Mario 3D World and Nintendo Land Bundle - Black 32 GB (Renewed)	252	4.1	151	269.9900	-50.4400	3
B07PDB4525	Animal Crossing Amiibo Cards Series 2 – Full Box (18 Packs) (6 Cards Per Pack/108 Cards)	252	4.2	113	248.1000	-50.4400	4
B017W1771Y	The Legend of Zelda: Twilight Princess HD Wii U - Nintendo Toy Figure, 5.7"x3.5"x8" Animal Theme, No Assembly Required	252	4.7	1386	208.3900	219.1600	5
B00ZIV1OCY	Mad Catz, Saitek, Tritton MadCatz Music Set ROCK BAND 4 wireless fender stratocaster (game + guitar) PS4	253	4.3	113	785.2000	-40.3900	1
B09KVHZFHP	Case Club Pro Gaming Station to Fit Playstation 5. Comes with Built-in 24" 1080p Monitor, Cooling Fans. Fits PS5 (Disc or Digital), Controllers, & Games, (PS5 NOT Included) 1MS / 144 Hertz	253	4.1	153	766.7200	-40.3900	2
B0BSTFS6W5	Playseat Trophy - Logitech G Edition Sim Racing Cockpit | Fully Adjustable | Supports all Direct Drive Steering Wheels | Lightweight & Robust | Absolute Comfort ActiFit	253	4.7	116	565.7700	-40.3900	3
B01M1L2NRL	Thrustmaster T300 RS - Gran Turismo Edition Racing Wheel (PS5,PS4,PC)	253	4.4	2841	416.7600	-40.3900	4
B07YBXD45K	The Last of Us Part II - PlayStation 4 Collector's Edition	253	4.7	1256	366.7400	-40.3900	5
B09FPCT3H8	HTC VIVE Pro 2 Virtual Reality System	255	3.7	358	1343.6900	-63.6100	1
B09QH74XC4	Case Club 4K Gaming Station to Fit PlayStation 5. Comes with Built-in 24" 4K Monitor, Cooling Fans, & Speakers. Fits PS5 (Disc or Digital), Controllers, & Games, (PS5 NOT Included)	255	4.1	153	944.6400	-63.6100	2
B09Z7KGTVW	Meta Quest Pro	255	4	591	939.9400	-63.6100	3
B0BQXDFLJ6	HTC Vive XR Elite Virtual Reality Headset + Controllers	255	3.1	107	821.6900	-63.6100	4
B0997XNVCH	Arcade1Up Star Wars Digital Pinball	255	4.5	112	694.6800	786.3800	5
B07G8RVWY8	The Liar Princess and the Blind Prince - Nintendo Switch	260	4.4	222	318.9800	-38.2300	1
B08LPP9YTR	Fire Emblem 30th Anniversary Edition - Nintendo Switch	260	4.7	725	218.9800	-38.2300	2
B09SBZ19D3	Fire Emblem Warriors: Three Hopes [Limited Edition] (European Version)	260	4.6	217	169.2800	-38.2300	3
B08D1GTK2B	Amiibo Joker (Nintendo Switch)	260	4.7	1673	148.9300	-38.2300	4
B07HC4ZD3B	Poké Ball Plus Charge Stand Officially Licensed by Nintendo & Pokémon	260	4.6	2350	148.9300	-38.2300	5
B09SVDZ41D	BCB Controllers Custom Wireless Controller compatible with PS-5 Controller | Works with Play-Station 5 Console | Proudly Customized in USA with Permanent HYDRO-DIP Printing (NOT JUST A SKIN)	261	4.4	254	118.9700	-51.8600	1
B0B4DXMH4N	Yeahka	261	4.8	1556	37.1200	-51.8600	2
B0BDRZX1GL	オクトパストラベラーⅡ -PS5	261	4.5	322	18.9500	-51.8600	3
B09BG44WZT	omarando Carrying Case for PS5,Travel Storage Bag for PS5,Bag for PS5 Console Games and Accessories,Included Gamepad Controller Protective Box (Black-Red)	261	4.5	203	9.9700	-1.8700	4
B09XM9M578	Foamy Lizard StealthPlates PS5 Vented Faceplate for The Playstation 5 Console, Replacement Shell Accessories, Protective High Strength ABS, Cooling Vents, Precision Fit (Black Viper - Disc Edition)	261	4.6	171	8.9700	-51.8600	5
B0BMG5WQFY	OTTARO 24V 10AH Ride on UTV Cars 2 Seater, Electric Cars Vehicles for Kids Teens,Metal Frame,EVA Wheels, 2x200W Powerful Motors, 20” Large 2 Seats, Bluetooth, Remote Control, Max Speed 4.7Mph(Blue)	270	4	114	359.9800	-36.0400	1
B0BGLLCJ68	sopbost 2023 Kids Ride On Car 24V Battery Powered 4 Wheeler 2x2/4x4 Motorized Ride On UTV with Parent Remote Ride On Toys, 4 Spring Absorbers, Red	270	4.2	874	319.9700	423.9500	2
B0B6GH4YLP	Doona Liki Trike S5 - Premium Foldable Trike for Toddlers, Toddler Tricycle Stroller, Push and Fold Doona Tricycle for Ages 10 Months to 3 Years, Racing Green	270	4.6	1127	269.9800	-36.0400	3
B09HKQDXL7	Joywhale 24V 2 Seater Kids Ride on Car Truck 4WD Battery Powered Motorized Easy-Drag Truck, with 4x75W Powerful Engine, Soft Braking, Remote Control, Suspension & Free Car Cover, 2023 New Model, Pink	270	3.9	639	269.9700	463.9500	4
B09JJ899CX	LEGO Ideas Home Alone 21330 Building Kit; Buildable Movie Memorabilia; Delightful Gift Idea for Millennials (3,955 Pieces)	270	4.8	826	269.9700	-36.0400	5
\.


-- Completed on 2026-04-27 08:17:27 EDT

--
-- PostgreSQL database dump complete
--

\unrestrict PCaPiVACgYT0Py2zzEYAXwGoJ2Q8R6RUlMW6n6OB1UQh0WuIBsueKRVIPANbS7I

