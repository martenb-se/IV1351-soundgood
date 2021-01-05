--
-- Clear old data
--
\! echo 'Clearing old data..';
TRUNCATE "instrument_category" RESTART IDENTITY CASCADE;
TRUNCATE "instrument" RESTART IDENTITY CASCADE;
TRUNCATE "genre" RESTART IDENTITY CASCADE;
TRUNCATE "address" RESTART IDENTITY CASCADE;
TRUNCATE "email" RESTART IDENTITY CASCADE;
TRUNCATE "phone" RESTART IDENTITY CASCADE;
TRUNCATE "person" RESTART IDENTITY CASCADE;
TRUNCATE "person_email" RESTART IDENTITY CASCADE;
TRUNCATE "person_phone" RESTART IDENTITY CASCADE;
TRUNCATE "instructor" RESTART IDENTITY CASCADE;
TRUNCATE "instrument_taught_by_instructor" RESTART IDENTITY CASCADE;
TRUNCATE "parent" RESTART IDENTITY CASCADE;
TRUNCATE "parent_email" RESTART IDENTITY CASCADE;
TRUNCATE "parent_phone" RESTART IDENTITY CASCADE;
TRUNCATE "student" RESTART IDENTITY CASCADE;
TRUNCATE "student_instrument" RESTART IDENTITY CASCADE;
TRUNCATE "student_sibling" RESTART IDENTITY CASCADE;
TRUNCATE "parent_student" RESTART IDENTITY CASCADE;
TRUNCATE "student_application" RESTART IDENTITY CASCADE;
TRUNCATE "advanced_audition" RESTART IDENTITY CASCADE;
TRUNCATE "instrument_in_stock" RESTART IDENTITY CASCADE;
TRUNCATE "pricing_scheme_instrument_fee" RESTART IDENTITY CASCADE;
TRUNCATE "instrument_rental" RESTART IDENTITY CASCADE;
TRUNCATE "calendar_day" RESTART IDENTITY CASCADE;
TRUNCATE "group_lesson_slot" RESTART IDENTITY CASCADE;
TRUNCATE "scheduled_lesson" RESTART IDENTITY CASCADE;
TRUNCATE "group_lesson" RESTART IDENTITY CASCADE;
TRUNCATE "ensemble" RESTART IDENTITY CASCADE;
TRUNCATE "scheduled_lesson_student" RESTART IDENTITY CASCADE;
TRUNCATE "individual_lesson_period" RESTART IDENTITY CASCADE;
TRUNCATE "individual_lesson" RESTART IDENTITY CASCADE;
TRUNCATE "available_instructor_during_individual_lesson_period" RESTART IDENTITY CASCADE;
TRUNCATE "booked_individual_lesson_on_individual_lesson_period" RESTART IDENTITY CASCADE;

--
-- Testing data
--
\! echo 'Insert testing data..';
-- instrument_category
\! echo 'Insert into Instrument Category..';
COPY instrument_category (name) FROM stdin;
wind
string
keyboard
\.

-- instrument
\! echo 'Insert into Instrument..';
COPY instrument (type, instrument_category_id) FROM stdin;
Steel-string acoustic guitar	2
Acoustic resonator guitar	2
Bansuri	1
Spilåpipa	1
Bandoneon	3
Piano	3
Keyboard glockenspiel	3
Clavinet	3
Bassoon	1
Tenor horn	1
Kafir harp	2
Khim	2
\.

-- genre
\! echo 'Insert into Genre..';
COPY genre (name) FROM stdin;
punk rock
gospel band
folk
electronic
disco
reggae
symphony
metal
hip hop
\.

-- address
\! echo 'Insert into Address..';
COPY address (city_name, street_name, zip_code) FROM stdin;
Stockholm	Birger Jarlsgatan 220	10576
Stockholm	Peder Fredags Gränd 84	12207
Stockholm	Odengatan 194	12084
Stockholm	Solgränd 240	12946
Stockholm	Fru Gunillas Gränd 104	10884
Stockholm	Södra Bankogränd 50	12884
Stockholm	Johannesgränd 161	11253
Stockholm	Baggensgatan 280	10423
Stockholm	Stora Gråmunkegränd 143	13069
Stockholm	Tulegatan 242	13653
Stockholm	Storkyrkobrinken 168	13192
Stockholm	Gaffelgränd 270	10946
Stockholm	Biblioteksgatan 282	10546
Stockholm	Drottninggatan 217	10761
Stockholm	Nygränd 78	12053
Stockholm	Göran Hälsinges Gränd 16	11007
Stockholm	Norra Bankogränd 156	11930
Stockholm	Didrik Ficks Gränd 64	10700
Stockholm	Triewaldsgränd 298	13623
Stockholm	Munkbrohamnen 158	11807
Stockholm	Själagårdsgatan 205	12546
Stockholm	Trångsund 109	13592
Stockholm	Brunnsgränd 246	10669
Stockholm	Mårten Trotzigs Gränd 81	11746
Stockholm	Högvaktsterrassen 256	11130
Stockholm	Torgdragargränd 57	13469
Stockholm	Sven Vintappares Gränd 162	13376
Stockholm	Munkbrogatan 46	11776
Stockholm	Fru Gunillas Gränd 159	10884
Stockholm	Norra Bankogränd 279	11930
Stockholm	Nybrogatan 53	12023
Stockholm	Strömsborgsbron 218	13253
Stockholm	Tyska Brinken 242	13746
Stockholm	Myntgatan 88	11869
Stockholm	Sveavägen 226	13346
Stockholm	Tegelbacken 279	13407
Stockholm	Ferkens Gränd 237	10792
Stockholm	Trädgårdstvärgränd 112	13561
Stockholm	Telegrafgränd 300	13438
Stockholm	Hamngatan 23	11069
Stockholm	Bredgränd 196	10638
Stockholm	Baggensgatan 21	10423
Stockholm	Drakens Gränd 270	10730
Stockholm	Stora Gråmunkegränd 16	13069
Stockholm	Bollhusgränd 154	10607
Stockholm	Strandvägen 215	13223
Stockholm	Telegrafgränd 90	13438
Stockholm	Klockgjutargränd 289	11407
Stockholm	Ferkens Gränd 3	10792
Stockholm	Munkbroleden 39	11838
Stockholm	Rådhusgränd 236	12300
Stockholm	Birger Jarlsgatan 140	10576
Stockholm	Helga Lekamens Gränd 276	11100
Stockholm	Sveavägen 122	13346
Stockholm	Riddarhuskajen 33	12392
Stockholm	Drakens Gränd 138	10730
Stockholm	Prästgatan 279	12269
Stockholm	Kåkbrinken 269	11284
Stockholm	Riksgatan 294	12423
Stockholm	Munkbrohamnen 247	11807
Stockholm	Sturegatan 110	13284
Stockholm	Munkbroleden 111	11838
Stockholm	Kindstugatan 215	11376
Stockholm	Trädgårdstvärgränd 224	13561
Stockholm	Göran Hälsinges Gränd 275	11007
Stockholm	Södra Dryckesgränd 111	12915
Stockholm	Spektens Gränd 247	12976
Stockholm	Baggensgatan 15	10423
Stockholm	Johannesgränd 39	11253
Stockholm	Norra Bankogränd 168	11930
Stockholm	Malmskillnadsgatan 174	11715
Stockholm	Köpmanbrinken 60	11469
Stockholm	Telegrafgränd 101	13438
Stockholm	Göran Hälsinges Gränd 72	11007
Stockholm	Schönfeldts Gränd 44	12515
Stockholm	Finska Kyrkogränd 65	10823
Stockholm	Sveavägen 132	13346
Stockholm	Folkungagatan 79	10853
Stockholm	Drakens Gränd 85	10730
Stockholm	Kanslikajen 125	11346
Stockholm	Sven Vintappares Gränd 159	13376
Stockholm	Finska Kyrkogränd 236	10823
Stockholm	Gåsgränd 178	10976
Stockholm	Staffan Sasses Gränd 13	13007
Stockholm	Köpmanbrinken 226	11469
Stockholm	Fru Gunillas Gränd 193	10884
Stockholm	Slussplan 125	12853
Stockholm	Bollhusgränd 56	10607
Stockholm	Triewaldsgränd 14	13623
Stockholm	Stora Nygatan 33	13130
Stockholm	Odengatan 109	12084
Stockholm	Göran Hälsinges Gränd 43	11007
Stockholm	Bankkajen 138	10453
Stockholm	Birger Jarlsgatan 15	10576
Stockholm	Sankt Paulsgatan 248	12484
Stockholm	Järntorgsgatan 203	11223
Stockholm	Munkbrohamnen 9	11807
Stockholm	Kungsgatan 244	11561
Stockholm	Västra Trädgårdsgatan 128	13869
Stockholm	Ferkens Gränd 196	10792
Stockholm	Didrik Ficks Gränd 72	10700
Stockholm	Pelikansgränd 287	12238
Stockholm	Gaffelgränd 18	10946
Stockholm	Telegrafgränd 17	13438
Stockholm	Skeppsbrokajen 97	12638
Stockholm	Riddargatan 165	12330
Stockholm	Helga Lekamens Gränd 82	11100
Stockholm	Slottskajen 242	12823
Stockholm	Lilla Hoparegränd 281	11653
Stockholm	Odengatan 129	12084
Stockholm	Bollhusgränd 67	10607
Stockholm	Tullgränd 161	13684
Stockholm	Västerlånggatan 199	13838
Stockholm	Riksgatan 121	12423
Stockholm	Norrlandsgatan 128	11992
Stockholm	Riddarhusgränd 54	12361
Stockholm	Slottskajen 17	12823
Stockholm	Gåsgränd 182	10976
Stockholm	Stora Nygatan 238	13130
Stockholm	Artillerigatan 42	10392
Stockholm	Riddarhuskajen 153	12392
Stockholm	Tulegatan 145	13653
Stockholm	Torgdragargränd 231	13469
Stockholm	Södra Bankogränd 280	12884
Stockholm	Riddargatan 205	12330
Stockholm	Skottgränd 117	12730
Stockholm	Spektens Gränd 239	12976
Stockholm	Yxsmedsgränd 4	13900
Stockholm	Tyska Brinken 22	13746
Stockholm	Staffan Sasses Gränd 30	13007
Stockholm	Tunnelgatan 267	13715
Stockholm	Bollhusgränd 275	10607
Stockholm	Stora Hoparegränd 29	13100
Stockholm	Norr Mälarstrand 5	11900
Stockholm	Stora Nygatan 155	13130
Stockholm	Riddarhuskajen 85	12392
Stockholm	Myntgatan 1	11869
Stockholm	Packhusgränd 299	12176
Stockholm	Malmskillnadsgatan 298	11715
Stockholm	Tunnelgatan 231	13715
Stockholm	Norra Dryckesgränd 12	11961
Stockholm	Triewaldsgränd 80	13623
Stockholm	Strandvägen 73	13223
Stockholm	Torgdragargränd 142	13469
Stockholm	Västra Trädgårdsgatan 88	13869
Stockholm	Arsenalsgatan 282	10361
Stockholm	Stora Nygatan 5	13130
Stockholm	Strandvägen 135	13223
Stockholm	Skräddargränd 245	12761
Stockholm	Högvaktsterrassen 213	11130
Stockholm	Storkyrkobrinken 57	13192
Stockholm	Ignatiigränd 153	11161
Stockholm	Götgatan 176	11038
Stockholm	Bredgränd 151	10638
Stockholm	Pelikansgränd 78	12238
Stockholm	Högvaktsterrassen 215	11130
Stockholm	Birger Jarlsgatan 47	10576
Stockholm	Skeppsbron 24	12669
Stockholm	Munkbroleden 225	11838
Stockholm	Torstenssonsgatan 195	13500
Stockholm	Ferkens Gränd 68	10792
Stockholm	Trångsund 72	13592
Stockholm	Drottninggatan 16	10761
Stockholm	Munkbroleden 66	11838
Stockholm	Svartmangatan 155	13315
Stockholm	Bedoirsgränd 19	10484
Stockholm	Trångsund 208	13592
Stockholm	Finska Kyrkogränd 145	10823
Stockholm	Didrik Ficks Gränd 78	10700
Stockholm	Johannesgränd 210	11253
Stockholm	Riddarhuskajen 249	12392
Stockholm	Torstenssonsgatan 229	13500
Stockholm	Sturegatan 169	13284
Stockholm	Stora Nygatan 184	13130
Stockholm	Helga Lekamens Gränd 237	11100
Stockholm	Triewaldsgränd 135	13623
Stockholm	Bankkajen 270	10453
Stockholm	Benickebrinken 121	10515
Stockholm	Skeppar Karls Gränd 59	12576
Stockholm	Artillerigatan 246	10392
Stockholm	Stora Hoparegränd 209	13100
Stockholm	Köpmangatan 76	11500
Stockholm	Helga Lekamens Gränd 86	11100
Stockholm	Gåsgränd 62	10976
Stockholm	Västra Trädgårdsgatan 270	13869
Stockholm	Norra Dryckesgränd 27	11961
Stockholm	Södra Bankogränd 12	12884
Stockholm	Ferkens Gränd 108	10792
Stockholm	Torgdragargränd 116	13469
Stockholm	Svartmangatan 75	13315
Stockholm	Ferkens Gränd 139	10792
Stockholm	Överskärargränd 13	12146
Stockholm	Kråkgränd 199	11530
Stockholm	Munkbrohamnen 185	11807
Stockholm	Riksgatan 15	12423
Stockholm	Järntorgsgatan 133	11223
Stockholm	Slottsbacken 260	12792
Stockholm	Tyska Skolgränd 37	13776
Stockholm	Jakobsgatan 285	11192
Stockholm	Gåsgränd 262	10976
Stockholm	Trångsund 58	13592
Stockholm	Funckens Gränd 275	10915
Stockholm	Bredgränd 73	10638
Stockholm	Köpmangatan 50	11500
Stockholm	Stora Nygatan 240	13130
Stockholm	Skeppar Karls Gränd 31	12576
Stockholm	Lejonbacken 27	11592
Stockholm	Jakobsgatan 199	11192
Stockholm	Jakobsgatan 113	11192
Stockholm	Skeppar Olofs Gränd 70	12607
Stockholm	Vasagatan 169	13807
Stockholm	Folkungagatan 46	10853
Stockholm	Staffan Sasses Gränd 90	13007
Stockholm	Brunnsgränd 245	10669
Stockholm	Munkbroleden 96	11838
Stockholm	Sankt Paulsgatan 157	12484
Stockholm	Schönfeldts Gränd 25	12515
Stockholm	Stora Nygatan 292	13130
Stockholm	Ignatiigränd 69	11161
Stockholm	Klockgjutargränd 240	11407
Stockholm	Skomakargatan 262	12700
Stockholm	Tyska Skolgränd 269	13776
Stockholm	Skomakargatan 234	12700
Stockholm	Helga Lekamens Gränd 109	11100
Stockholm	Salviigränd 296	12453
Stockholm	Trädgårdstvärgränd 61	13561
Stockholm	Västerlånggatan 172	13838
Stockholm	Rådhusgränd 39	12300
Stockholm	Tullgränd 149	13684
Stockholm	Trädgårdstvärgränd 124	13561
Stockholm	Sven Vintappares Gränd 149	13376
Stockholm	Norra Dryckesgränd 137	11961
Stockholm	Strandvägen 207	13223
Stockholm	Fru Gunillas Gränd 244	10884
Stockholm	Kolmätargränd 136	11438
Stockholm	Vasagatan 186	13807
Stockholm	Överskärargränd 103	12146
Stockholm	Schönfeldts Gränd 216	12515
Stockholm	Nybrogatan 29	12023
Stockholm	Södra Dryckesgränd 246	12915
Stockholm	Skomakargatan 77	12700
Stockholm	Stora Gråmunkegränd 141	13069
Stockholm	Skeppar Karls Gränd 13	12576
Stockholm	Birger Jarlsgatan 284	10576
Stockholm	Bankkajen 200	10453
Stockholm	Spektens Gränd 212	12976
Stockholm	Brunnsgränd 132	10669
Stockholm	Arsenalsgatan 168	10361
Stockholm	Stora Gråmunkegränd 112	13069
Stockholm	Tyska Skolgränd 135	13776
Stockholm	Torgdragargränd 31	13469
Stockholm	Packhusgränd 284	12176
Stockholm	Själagårdsgatan 92	12546
Stockholm	Skottgränd 185	12730
Stockholm	Göran Hälsinges Gränd 294	11007
Stockholm	Brunnsgränd 281	10669
Stockholm	Biblioteksgatan 206	10546
Stockholm	Sankt Paulsgatan 162	12484
Stockholm	Kanslikajen 144	11346
Stockholm	Sven Vintappares Gränd 186	13376
Stockholm	Storgatan 132	13161
Stockholm	Finska Kyrkogränd 45	10823
Stockholm	Köpmangatan 203	11500
Stockholm	Lejonstedts Gränd 283	11623
Stockholm	Malmskillnadsgatan 172	11715
Stockholm	Riksgatan 196	12423
Stockholm	Artillerigatan 237	10392
Stockholm	Sven Vintappares Gränd 12	13376
Stockholm	Torstenssonsgatan 182	13500
Stockholm	Lejonbacken 166	11592
Stockholm	Munkbrogatan 162	11776
Stockholm	Jakobsgatan 90	11192
Stockholm	Skottgränd 257	12730
Stockholm	Kolmätargränd 85	11438
Stockholm	Bankkajen 258	10453
Stockholm	Schönfeldts Gränd 148	12515
Stockholm	Mårten Trotzigs Gränd 44	11746
Stockholm	Tulegatan 131	13653
Stockholm	Strömsborgsbron 74	13253
Stockholm	Trädgårdstvärgränd 16	13561
Stockholm	Spektens Gränd 33	12976
Stockholm	Kungsgatan 44	11561
Stockholm	Tegelbacken 111	13407
Stockholm	Sveavägen 265	13346
Stockholm	Slussplan 38	12853
Stockholm	Riddarhuskajen 52	12392
Stockholm	Funckens Gränd 150	10915
Stockholm	Tulegatan 196	13653
Stockholm	Bedoirsgränd 103	10484
Stockholm	Torgdragargränd 196	13469
Stockholm	Munkbrogatan 12	11776
Stockholm	Yxsmedsgränd 108	13900
Stockholm	Norrlandsgatan 111	11992
Stockholm	Ignatiigränd 148	11161
Stockholm	Högvaktsterrassen 117	11130
Stockholm	Torgdragargränd 266	13469
Stockholm	Nygränd 14	12053
Stockholm	Munkbroleden 285	11838
Stockholm	Bollhusgränd 24	10607
Stockholm	Brunnsgränd 147	10669
Stockholm	Riddarhusgränd 238	12361
Stockholm	Jakobsgatan 26	11192
Stockholm	Brunnsgränd 73	10669
Stockholm	Sveavägen 66	13346
Stockholm	Överskärargränd 281	12146
Stockholm	Tullgränd 196	13684
Stockholm	Storgatan 286	13161
Stockholm	Skottgränd 23	12730
Stockholm	Ignatiigränd 186	11161
Stockholm	Skeppar Karls Gränd 156	12576
Stockholm	Skomakargatan 276	12700
Stockholm	Skeppar Olofs Gränd 275	12607
Stockholm	Vasagatan 275	13807
Stockholm	Munkbrogatan 85	11776
Stockholm	Didrik Ficks Gränd 179	10700
Stockholm	Ferkens Gränd 78	10792
Stockholm	Strömsborgsbron 231	13253
Stockholm	Södra Bankogränd 120	12884
Stockholm	Torstenssonsgatan 87	13500
Stockholm	Trädgårdstvärgränd 70	13561
Stockholm	Norrlandsgatan 240	11992
Stockholm	Strandvägen 128	13223
Stockholm	Drakens Gränd 88	10730
Stockholm	Skeppsbron 185	12669
Stockholm	Lejonbacken 145	11592
Stockholm	Storgatan 232	13161
Stockholm	Malmskillnadsgatan 197	11715
Stockholm	Skeppar Karls Gränd 52	12576
Stockholm	Trädgårdsgatan 255	13530
Stockholm	Tyska Skolgränd 3	13776
Stockholm	Överskärargränd 154	12146
Stockholm	Drottninggatan 37	10761
Stockholm	Strandvägen 243	13223
Stockholm	Prästgatan 31	12269
Stockholm	Bankkajen 176	10453
Stockholm	Norrlandsgatan 61	11992
Stockholm	Tyska Skolgränd 238	13776
Stockholm	Tyska Brinken 44	13746
Stockholm	Folkungagatan 229	10853
Stockholm	Biblioteksgatan 111	10546
Stockholm	Schönfeldts Gränd 200	12515
Stockholm	Köpmanbrinken 14	11469
Stockholm	Munkbrogatan 282	11776
Stockholm	Helga Lekamens Gränd 245	11100
Stockholm	Gåsgränd 26	10976
Stockholm	Skräddargränd 27	12761
Stockholm	Arsenalsgatan 198	10361
Stockholm	Södra Bankogränd 5	12884
Stockholm	Ignatiigränd 19	11161
Stockholm	Packhusgränd 98	12176
Stockholm	Solgränd 114	12946
Stockholm	Sveavägen 196	13346
Stockholm	Myntgatan 100	11869
Stockholm	Lejonstedts Gränd 36	11623
Stockholm	Svartmangatan 225	13315
Stockholm	Munkbrohamnen 85	11807
Stockholm	Lilla Nygatan 144	11684
Stockholm	Kindstugatan 264	11376
Stockholm	Norra Bankogränd 5	11930
Stockholm	Biblioteksgatan 249	10546
Stockholm	Staffan Sasses Gränd 100	13007
Stockholm	Södra Dryckesgränd 248	12915
Stockholm	Tyska Brinken 73	13746
Stockholm	Jakobsgatan 16	11192
Stockholm	Södra Bankogränd 71	12884
Stockholm	Själagårdsgatan 97	12546
Stockholm	Helga Lekamens Gränd 22	11100
Stockholm	Sturegatan 133	13284
Stockholm	Stora Nygatan 242	13130
Stockholm	Kindstugatan 110	11376
Stockholm	Finska Kyrkogränd 195	10823
Stockholm	Bollhusgränd 279	10607
Stockholm	Storkyrkobrinken 44	13192
Stockholm	Skottgränd 297	12730
Stockholm	Norra Bankogränd 270	11930
Stockholm	Tullgränd 277	13684
Stockholm	Kanslikajen 106	11346
Stockholm	Benickebrinken 99	10515
Stockholm	Trädgårdstvärgränd 262	13561
Stockholm	Bedoirsgränd 287	10484
Stockholm	Nybrogatan 242	12023
Stockholm	Myntgatan 179	11869
Stockholm	Lilla Hoparegränd 276	11653
Stockholm	Folkungagatan 269	10853
Stockholm	Järntorgsgatan 60	11223
Stockholm	Tulegatan 138	13653
Stockholm	Telegrafgränd 254	13438
Stockholm	Triewaldsgränd 38	13623
Stockholm	Tulegatan 53	13653
Stockholm	Göran Hälsinges Gränd 188	11007
Stockholm	Arsenalsgatan 117	10361
Stockholm	Munkbroleden 132	11838
Stockholm	Trångsund 20	13592
Stockholm	Järntorgsgatan 20	11223
Stockholm	Södra Dryckesgränd 169	12915
Stockholm	Göran Hälsinges Gränd 282	11007
Stockholm	Prästgatan 3	12269
Stockholm	Ankargränd 25	10330
Stockholm	Götgatan 33	11038
Stockholm	Telegrafgränd 183	13438
Stockholm	Odengatan 210	12084
Stockholm	Rådhusgränd 156	12300
Stockholm	Nybrogatan 91	12023
Stockholm	Helga Lekamens Gränd 145	11100
Stockholm	Johannesgränd 174	11253
Stockholm	Köpmangatan 194	11500
Stockholm	Kanslikajen 36	11346
Stockholm	Munkbrohamnen 266	11807
Stockholm	Staffan Sasses Gränd 183	13007
Stockholm	Ankargränd 127	10330
Stockholm	Sven Vintappares Gränd 194	13376
Stockholm	Skeppsbrokajen 205	12638
Stockholm	Vasagatan 114	13807
Stockholm	Finska Kyrkogränd 296	10823
Stockholm	Slottskajen 185	12823
Stockholm	Storgatan 290	13161
Stockholm	Nybrogatan 143	12023
Stockholm	Stora Gråmunkegränd 248	13069
Stockholm	Peder Fredags Gränd 41	12207
Stockholm	Peder Fredags Gränd 269	12207
Stockholm	Södra Bankogränd 198	12884
Stockholm	Överskärargränd 299	12146
Stockholm	Skräddargränd 255	12761
Stockholm	Bedoirsgränd 245	10484
Stockholm	Västra Trädgårdsgatan 10	13869
Stockholm	Drakens Gränd 40	10730
Stockholm	Odengatan 251	12084
Stockholm	Peder Fredags Gränd 120	12207
Stockholm	Kåkbrinken 49	11284
Stockholm	Kindstugatan 153	11376
Stockholm	Kindstugatan 237	11376
Stockholm	Storgatan 295	13161
Stockholm	Sankt Paulsgatan 62	12484
Stockholm	Arsenalsgatan 196	10361
Stockholm	Storkyrkobrinken 131	13192
Stockholm	Bollhusgränd 53	10607
Stockholm	Västra Trädgårdsgatan 74	13869
Stockholm	Munkbrohamnen 48	11807
Stockholm	Skomakargatan 187	12700
Stockholm	Skottgränd 226	12730
Stockholm	Torgdragargränd 45	13469
Stockholm	Birger Jarlsgatan 275	10576
Stockholm	Sankt Paulsgatan 257	12484
Stockholm	Köpmangatan 294	11500
Stockholm	Trångsund 84	13592
Stockholm	Arsenalsgatan 138	10361
Stockholm	Biblioteksgatan 169	10546
Stockholm	Gaffelgränd 27	10946
Stockholm	Klockgjutargränd 181	11407
Stockholm	Tyska Skolgränd 220	13776
Stockholm	Helga Lekamens Gränd 14	11100
Stockholm	Torstenssonsgatan 274	13500
Stockholm	Västerlånggatan 221	13838
Stockholm	Birger Jarlsgatan 233	10576
Stockholm	Baggensgatan 233	10423
Stockholm	Artillerigatan 287	10392
Stockholm	Tulegatan 91	13653
Stockholm	Torstenssonsgatan 59	13500
Stockholm	Spektens Gränd 156	12976
Stockholm	Storkyrkobrinken 189	13192
Stockholm	Tullgränd 191	13684
Stockholm	Gåsgränd 1	10976
Stockholm	Gåsgränd 229	10976
Stockholm	Packhusgränd 21	12176
Stockholm	Birger Jarlsgatan 279	10576
Stockholm	Mårten Trotzigs Gränd 62	11746
Stockholm	Peder Fredags Gränd 1	12207
Stockholm	Slussplan 293	12853
Stockholm	Tulegatan 206	13653
Stockholm	Kindstugatan 186	11376
Stockholm	Stora Hoparegränd 290	13100
Stockholm	Storgatan 193	13161
Stockholm	Rådhusgränd 195	12300
Stockholm	Malmskillnadsgatan 283	11715
Stockholm	Drottninggatan 42	10761
Stockholm	Odengatan 65	12084
Stockholm	Skeppar Olofs Gränd 189	12607
Stockholm	Riddarhuskajen 38	12392
Stockholm	Bedoirsgränd 265	10484
Stockholm	Munkbroleden 264	11838
Stockholm	Nygränd 87	12053
Stockholm	Hamngatan 218	11069
Stockholm	Malmskillnadsgatan 284	11715
Stockholm	Salviigränd 175	12453
Stockholm	Odengatan 84	12084
Stockholm	Tunnelgatan 190	13715
Stockholm	Torstenssonsgatan 171	13500
Stockholm	Salviigränd 50	12453
Stockholm	Benickebrinken 25	10515
Stockholm	Skomakargatan 227	12700
Stockholm	Peder Fredags Gränd 168	12207
Stockholm	Lejonbacken 241	11592
Stockholm	Riksgatan 88	12423
Stockholm	Källargränd 275	11315
Stockholm	Västra Trädgårdsgatan 82	13869
Stockholm	Gåsgränd 227	10976
Stockholm	Staffan Sasses Gränd 39	13007
Stockholm	Fru Gunillas Gränd 169	10884
Stockholm	Lilla Nygatan 295	11684
Stockholm	Källargränd 4	11315
Stockholm	Bollhusgränd 227	10607
Stockholm	Fru Gunillas Gränd 56	10884
Stockholm	Prästgatan 105	12269
Stockholm	Stenbastugränd 188	13038
Stockholm	Riddarhusgränd 108	12361
Stockholm	Götgatan 129	11038
Stockholm	Ankargränd 151	10330
Stockholm	Källargränd 113	11315
Stockholm	Telegrafgränd 261	13438
Stockholm	Västerlånggatan 26	13838
Stockholm	Västra Trädgårdsgatan 234	13869
Stockholm	Kungsgatan 32	11561
Stockholm	Sveavägen 106	13346
Stockholm	Didrik Ficks Gränd 92	10700
Stockholm	Själagårdsgatan 299	12546
Stockholm	Funckens Gränd 8	10915
Stockholm	Slottskajen 162	12823
Stockholm	Storkyrkobrinken 9	13192
Stockholm	Lilla Hoparegränd 165	11653
Stockholm	Högvaktsterrassen 297	11130
Stockholm	Lejonbacken 183	11592
Stockholm	Peder Fredags Gränd 170	12207
Stockholm	Klockgjutargränd 21	11407
Stockholm	Drottninggatan 71	10761
Stockholm	Slottskajen 19	12823
Stockholm	Helga Lekamens Gränd 278	11100
Stockholm	Nybrogatan 99	12023
Stockholm	Staffan Sasses Gränd 147	13007
Stockholm	Triewaldsgränd 209	13623
Stockholm	Svartmangatan 193	13315
Stockholm	Göran Hälsinges Gränd 27	11007
Stockholm	Tegelbacken 222	13407
Stockholm	Strömsborgsbron 190	13253
Stockholm	Kindstugatan 48	11376
Stockholm	Norr Mälarstrand 195	11900
Stockholm	Österlånggatan 300	12115
Stockholm	Sankt Paulsgatan 151	12484
Stockholm	Norra Dryckesgränd 235	11961
Stockholm	Torstenssonsgatan 44	13500
Stockholm	Arsenalsgatan 162	10361
Stockholm	Peder Fredags Gränd 241	12207
Stockholm	Götgatan 15	11038
Stockholm	Torgdragargränd 170	13469
Stockholm	Folkungagatan 240	10853
Stockholm	Didrik Ficks Gränd 152	10700
Stockholm	Slottsbacken 191	12792
\.

-- email
\! echo 'Insert into Email..';
COPY email (email_address) FROM stdin;
lisbeth.bengtsson+soundgood@temporary-mail.net
gabriel.ekstroem+soundgood@temporary-mail.net
wilma.joensson+soundgood@temporary-mail.net
dennis.bergstroem+soundgood@temporary-mail.net
lisbeth.lundstroem+soundgood@temporary-mail.net
lars.claesson+soundgood@temporary-mail.net
per.axelsson+soundgood@temporary-mail.net
agneta.jansson+soundgood@temporary-mail.net
gunnel.lundberg+soundgood@temporary-mail.net
christoffer.henriksson+soundgood@temporary-mail.net
jakob.fredriksson+soundgood@temporary-mail.net
eva.lundqvist+soundgood@temporary-mail.net
leif.hansen+soundgood@temporary-mail.net
erik.bergman+soundgood@temporary-mail.net
mohamed.gunnarsson+soundgood@temporary-mail.net
alva.viklund+soundgood@temporary-mail.net
samuel.sundberg+soundgood@temporary-mail.net
alice.lindgren+soundgood@temporary-mail.net
ludvig.svensson+soundgood@temporary-mail.net
claes.berggren+soundgood@temporary-mail.net
lucas.hermansson+soundgood@temporary-mail.net
adam.bergstroem+soundgood@temporary-mail.net
lisa.hermansson+soundgood@temporary-mail.net
anette.eklund+soundgood@temporary-mail.net
alexandra.johansson+soundgood@temporary-mail.net
emelie.sandstroem+soundgood@temporary-mail.net
olof.stroem+soundgood@temporary-mail.net
emma.hellstroem+soundgood@temporary-mail.net
anton.olsson+soundgood@temporary-mail.net
linus.berglund+soundgood@temporary-mail.net
adam.eliasson+soundgood@temporary-mail.net
alice.hedlund+soundgood@temporary-mail.net
samuel.bjoerklund+soundgood@temporary-mail.net
emelie.aaberg+soundgood@temporary-mail.net
max.samuelsson+soundgood@temporary-mail.net
barbro.bergstroem+soundgood@temporary-mail.net
josef.forsberg+soundgood@temporary-mail.net
bengt.ahmed+soundgood@temporary-mail.net
ulf.forsberg+soundgood@temporary-mail.net
hanna.aastroem+soundgood@temporary-mail.net
kerstin.forsberg+soundgood@temporary-mail.net
pernilla.hassan+soundgood@temporary-mail.net
rut.aakesson+soundgood@temporary-mail.net
lisa.ekstroem+soundgood@temporary-mail.net
sara.gunnarsson+soundgood@temporary-mail.net
felicia.blom+soundgood@temporary-mail.net
emil.hedlund+soundgood@temporary-mail.net
aake.eriksson+soundgood@temporary-mail.net
karl.gustafsson+soundgood@temporary-mail.net
susanne.holmberg+soundgood@temporary-mail.net
torbjoern.pettersson+parent@temporary-mail.net
mona.pettersson+parent@temporary-mail.net
ann.pettersson_09+student@temporary-mail.net
britt-marie.olsson+parent@temporary-mail.net
ludvig.olsson+parent@temporary-mail.net
emil.olsson_07+student@temporary-mail.net
oliver.henriksson+parent@temporary-mail.net
carina.henriksson_08+student@temporary-mail.net
stig.svensson+parent@temporary-mail.net
monica.svensson+parent@temporary-mail.net
ulf.svensson_05+student@temporary-mail.net
lucas.nordstroem+parent@temporary-mail.net
alice.nordstroem_09+student@temporary-mail.net
siv.aakesson+parent@temporary-mail.net
karin.aakesson+parent@temporary-mail.net
rebecca.aakesson_08+student@temporary-mail.net
hugo.mohamed+parent@temporary-mail.net
karin.mohamed_09+student@temporary-mail.net
oskar.engstroem+parent@temporary-mail.net
jakob.engstroem_07+student@temporary-mail.net
mattias.bjoerklund+parent@temporary-mail.net
anette.bjoerklund_07+student@temporary-mail.net
arvid.blomqvist+parent@temporary-mail.net
britt-marie.blomqvist_09+student@temporary-mail.net
louise.blomqvist_05+student@temporary-mail.net
henrik.blomqvist_05+student@temporary-mail.net
josef.hellstroem+parent@temporary-mail.net
margareta.hellstroem_05+student@temporary-mail.net
johan.nyberg+parent@temporary-mail.net
ulrika.nyberg_05+student@temporary-mail.net
bengt.falk+parent@temporary-mail.net
jakob.falk+parent@temporary-mail.net
jimmy.falk_08+student@temporary-mail.net
olle.axelsson+parent@temporary-mail.net
felix.axelsson+parent@temporary-mail.net
gabriel.axelsson_04+student@temporary-mail.net
viktoria.nyberg+parent@temporary-mail.net
torbjoern.nyberg+parent@temporary-mail.net
hanna.nyberg_09+student@temporary-mail.net
leif.persson+parent@temporary-mail.net
linus.persson_09+student@temporary-mail.net
liam.forsberg+parent@temporary-mail.net
britt.forsberg+parent@temporary-mail.net
olof.forsberg_03+student@temporary-mail.net
anita.holmgren+parent@temporary-mail.net
ulf.holmgren+parent@temporary-mail.net
mikaela.holmgren_06+student@temporary-mail.net
leif.aastroem+parent@temporary-mail.net
rickard.aastroem+parent@temporary-mail.net
robert.aastroem_06+student@temporary-mail.net
goeran.nordin+parent@temporary-mail.net
agnes.nordin_05+student@temporary-mail.net
jonas.stroem+parent@temporary-mail.net
ulla.stroem+parent@temporary-mail.net
kerstin.stroem_06+student@temporary-mail.net
inger.fredriksson+parent@temporary-mail.net
anton.fredriksson+parent@temporary-mail.net
jakob.fredriksson_09+student@temporary-mail.net
mohamed.paalsson+parent@temporary-mail.net
pontus.paalsson+parent@temporary-mail.net
nils.paalsson_03+student@temporary-mail.net
ulla.falk+parent@temporary-mail.net
per.falk_03+student@temporary-mail.net
kurt.loefgren+parent@temporary-mail.net
jenny.loefgren_06+student@temporary-mail.net
sofia.bergstroem+parent@temporary-mail.net
gustav.bergstroem+parent@temporary-mail.net
agnes.bergstroem_08+student@temporary-mail.net
josefin.samuelsson+parent@temporary-mail.net
max.samuelsson_08+student@temporary-mail.net
thomas.larsson+parent@temporary-mail.net
olle.larsson+parent@temporary-mail.net
sandra.larsson_03+student@temporary-mail.net
oskar.lundin+parent@temporary-mail.net
ulf.lundin+parent@temporary-mail.net
carina.lundin_08+student@temporary-mail.net
filip.lundin_09+student@temporary-mail.net
helen.lundin_09+student@temporary-mail.net
thomas.lundgren+parent@temporary-mail.net
sofie.lundgren+parent@temporary-mail.net
helen.lundgren_04+student@temporary-mail.net
louise.berg+parent@temporary-mail.net
lovisa.berg+parent@temporary-mail.net
leif.berg_06+student@temporary-mail.net
maja.berg_03+student@temporary-mail.net
martin.eklund+parent@temporary-mail.net
anton.eklund_08+student@temporary-mail.net
gunnar.wallin+parent@temporary-mail.net
charlotte.wallin_07+student@temporary-mail.net
lars.svensson+parent@temporary-mail.net
siv.svensson+parent@temporary-mail.net
jessica.svensson_06+student@temporary-mail.net
lars.andersson+parent@temporary-mail.net
monica.andersson+parent@temporary-mail.net
pia.andersson_05+student@temporary-mail.net
ebba.eklund+parent@temporary-mail.net
agneta.eklund+parent@temporary-mail.net
patrik.eklund_05+student@temporary-mail.net
charlotte.nordin+parent@temporary-mail.net
olof.nordin_04+student@temporary-mail.net
margareta.lundstroem+parent@temporary-mail.net
frida.lundstroem+parent@temporary-mail.net
linn.lundstroem_07+student@temporary-mail.net
klara.nordin+parent@temporary-mail.net
aasa.nordin_07+student@temporary-mail.net
daniel.forsberg+parent@temporary-mail.net
johan.forsberg+parent@temporary-mail.net
david.forsberg_07+student@temporary-mail.net
gunnel.svensson+parent@temporary-mail.net
ulrika.svensson_03+student@temporary-mail.net
pernilla.blomqvist+parent@temporary-mail.net
lars.blomqvist+parent@temporary-mail.net
christian.blomqvist_06+student@temporary-mail.net
jonathan.lundgren+parent@temporary-mail.net
haakan.lundgren_05+student@temporary-mail.net
emilia.lundgren_09+student@temporary-mail.net
ida.lundgren_05+student@temporary-mail.net
matilda.lindqvist+parent@temporary-mail.net
sven.lindqvist+parent@temporary-mail.net
arvid.lindqvist_05+student@temporary-mail.net
annika.norberg+parent@temporary-mail.net
siv.norberg_03+student@temporary-mail.net
patrik.martinsson+parent@temporary-mail.net
aasa.martinsson_06+student@temporary-mail.net
olof.oeberg+parent@temporary-mail.net
leif.oeberg+parent@temporary-mail.net
lovisa.oeberg_03+student@temporary-mail.net
ali.sjoeberg+parent@temporary-mail.net
caroline.sjoeberg+parent@temporary-mail.net
charlotte.sjoeberg_07+student@temporary-mail.net
kjell.soederberg+parent@temporary-mail.net
yvonne.soederberg+parent@temporary-mail.net
birgitta.soederberg_08+student@temporary-mail.net
lovisa.bergman+parent@temporary-mail.net
karl.bergman_06+student@temporary-mail.net
matilda.isaksson+parent@temporary-mail.net
erik.isaksson+parent@temporary-mail.net
eva.isaksson_03+student@temporary-mail.net
anton.maansson+parent@temporary-mail.net
david.maansson_05+student@temporary-mail.net
gunnel.stroem+parent@temporary-mail.net
marie.stroem_09+student@temporary-mail.net
viktor.lundqvist+parent@temporary-mail.net
daniel.lundqvist_05+student@temporary-mail.net
henrik.eklund+parent@temporary-mail.net
ali.eklund_07+student@temporary-mail.net
sara.isaksson+parent@temporary-mail.net
cecilia.isaksson_03+student@temporary-mail.net
sandra.bengtsson+parent@temporary-mail.net
simon.bengtsson+parent@temporary-mail.net
erika.bengtsson_04+student@temporary-mail.net
axel.jansson+parent@temporary-mail.net
isabelle.jansson_06+student@temporary-mail.net
cecilia.hedlund+parent@temporary-mail.net
gustav.hedlund_09+student@temporary-mail.net
cecilia.forsberg+parent@temporary-mail.net
bjoern.forsberg+parent@temporary-mail.net
leo.forsberg_06+student@temporary-mail.net
kevin.gustafsson+parent@temporary-mail.net
david.gustafsson_09+student@temporary-mail.net
kent.loefgren+parent@temporary-mail.net
yvonne.loefgren_05+student@temporary-mail.net
kerstin.lundberg+parent@temporary-mail.net
patrik.lundberg_03+student@temporary-mail.net
christoffer.lundberg_09+student@temporary-mail.net
jonas.lundberg_03+student@temporary-mail.net
fredrik.soederberg+parent@temporary-mail.net
marcus.soederberg+parent@temporary-mail.net
leo.soederberg_08+student@temporary-mail.net
tobias.ahmed+parent@temporary-mail.net
ulrika.ahmed_07+student@temporary-mail.net
robert.ahmed+parent@temporary-mail.net
liam.ahmed+parent@temporary-mail.net
edvin.ahmed_08+student@temporary-mail.net
sofia.pettersson+parent@temporary-mail.net
ann.pettersson+parent@temporary-mail.net
josefin.pettersson_04+student@temporary-mail.net
jesper.pettersson_03+student@temporary-mail.net
lovisa.pettersson_04+student@temporary-mail.net
viktoria.sundstroem+parent@temporary-mail.net
oliver.sundstroem+parent@temporary-mail.net
alexandra.sundstroem_08+student@temporary-mail.net
jimmy.sundstroem_03+student@temporary-mail.net
kristina.sundstroem_05+student@temporary-mail.net
hugo.bergman+parent@temporary-mail.net
gunnar.bergman_08+student@temporary-mail.net
rut.isaksson+parent@temporary-mail.net
aake.isaksson_06+student@temporary-mail.net
john.bengtsson+parent@temporary-mail.net
henrik.bengtsson_07+student@temporary-mail.net
ann.gustafsson+parent@temporary-mail.net
erik.gustafsson+parent@temporary-mail.net
adam.gustafsson_07+student@temporary-mail.net
robert.forsberg+parent@temporary-mail.net
marianne.forsberg_06+student@temporary-mail.net
filip.jonsson+parent@temporary-mail.net
jan.jonsson+parent@temporary-mail.net
aake.jonsson_05+student@temporary-mail.net
axel.jonsson_04+student@temporary-mail.net
camilla.jonsson_09+student@temporary-mail.net
kristina.ali+parent@temporary-mail.net
torbjoern.ali+parent@temporary-mail.net
bengt.ali_03+student@temporary-mail.net
jessica.ali_04+student@temporary-mail.net
nils.eriksson+parent@temporary-mail.net
hanna.eriksson_09+student@temporary-mail.net
anton.danielsson+parent@temporary-mail.net
william.danielsson+parent@temporary-mail.net
samuel.danielsson_08+student@temporary-mail.net
pia.nilsson+parent@temporary-mail.net
emilia.nilsson_03+student@temporary-mail.net
lovisa.stroemberg+parent@temporary-mail.net
siv.stroemberg_08+student@temporary-mail.net
erika.aakesson+parent@temporary-mail.net
emelie.aakesson+parent@temporary-mail.net
peter.aakesson_06+student@temporary-mail.net
kevin.claesson+parent@temporary-mail.net
ella.claesson_04+student@temporary-mail.net
olivia.danielsson+parent@temporary-mail.net
ebba.danielsson+parent@temporary-mail.net
madeleine.danielsson_06+student@temporary-mail.net
ann-marie.hassan+parent@temporary-mail.net
oliver.hassan+parent@temporary-mail.net
daniel.hassan_05+student@temporary-mail.net
jonathan.hassan_06+student@temporary-mail.net
lucas.hassan_03+student@temporary-mail.net
per.sjoeberg+parent@temporary-mail.net
ali.sjoeberg_07+student@temporary-mail.net
johan.lindstroem+parent@temporary-mail.net
ulf.lindstroem_07+student@temporary-mail.net
albin.lindqvist+parent@temporary-mail.net
linnea.lindqvist+parent@temporary-mail.net
david.lindqvist_08+student@temporary-mail.net
mikaela.aakesson+parent@temporary-mail.net
josefin.aakesson+parent@temporary-mail.net
johan.aakesson_07+student@temporary-mail.net
christian.danielsson+parent@temporary-mail.net
anton.danielsson_646+parent@temporary-mail.net
anna.danielsson_09+student@temporary-mail.net
siv.viklund+parent@temporary-mail.net
gunilla.viklund+parent@temporary-mail.net
jakob.viklund_06+student@temporary-mail.net
lena.sandberg+parent@temporary-mail.net
karin.sandberg_05+student@temporary-mail.net
moa.sandberg_05+student@temporary-mail.net
gabriel.isaksson+parent@temporary-mail.net
pontus.isaksson_05+student@temporary-mail.net
pia.stroemberg+parent@temporary-mail.net
lina.stroemberg+parent@temporary-mail.net
frida.stroemberg_05+student@temporary-mail.net
jonathan.hedlund+parent@temporary-mail.net
julia.hedlund_09+student@temporary-mail.net
lisbeth.oeberg+parent@temporary-mail.net
sofia.oeberg_05+student@temporary-mail.net
moa.oeberg_06+student@temporary-mail.net
frida.oeberg_08+student@temporary-mail.net
ali.lundqvist+parent@temporary-mail.net
robin.lundqvist_07+student@temporary-mail.net
johanna.stroem+parent@temporary-mail.net
kristina.stroem+parent@temporary-mail.net
arvid.stroem_07+student@temporary-mail.net
andreas.danielsson+parent@temporary-mail.net
gabriel.danielsson+parent@temporary-mail.net
ella.danielsson_08+student@temporary-mail.net
alexandra.johansson+parent@temporary-mail.net
hans.johansson+parent@temporary-mail.net
agnes.johansson_07+student@temporary-mail.net
jan.blom+parent@temporary-mail.net
sara.blom+parent@temporary-mail.net
lina.blom_06+student@temporary-mail.net
gun.nordstroem+parent@temporary-mail.net
mohamed.nordstroem+parent@temporary-mail.net
bjoern.nordstroem_09+student@temporary-mail.net
siv.nordstroem_06+student@temporary-mail.net
oliver.nordstroem_07+student@temporary-mail.net
sven.lundqvist+parent@temporary-mail.net
erika.lundqvist_03+student@temporary-mail.net
roger.aastroem+parent@temporary-mail.net
lucas.aastroem_04+student@temporary-mail.net
olle.hermansson+parent@temporary-mail.net
olivia.hermansson_05+student@temporary-mail.net
marianne.isaksson+parent@temporary-mail.net
sara.isaksson_596+parent@temporary-mail.net
dennis.isaksson_06+student@temporary-mail.net
nina.lundstroem+parent@temporary-mail.net
helen.lundstroem_05+student@temporary-mail.net
kjell.isaksson+parent@temporary-mail.net
johnny.isaksson_03+student@temporary-mail.net
stefan.dahlberg+parent@temporary-mail.net
maja.dahlberg_09+student@temporary-mail.net
jan.ali+parent@temporary-mail.net
amanda.ali+parent@temporary-mail.net
samuel.ali_09+student@temporary-mail.net
liam.lindgren+parent@temporary-mail.net
anneli.lindgren_05+student@temporary-mail.net
lovisa.berglund+parent@temporary-mail.net
bjoern.berglund_05+student@temporary-mail.net
agnes.berglund_08+student@temporary-mail.net
jakob.berglund_07+student@temporary-mail.net
david.abrahamsson+parent@temporary-mail.net
birgitta.abrahamsson_07+student@temporary-mail.net
matilda.holmgren+parent@temporary-mail.net
mohamed.holmgren+parent@temporary-mail.net
jesper.holmgren_09+student@temporary-mail.net
alva.holmgren_08+student@temporary-mail.net
jonas.holmgren+parent@temporary-mail.net
lisa.holmgren+parent@temporary-mail.net
ebba.holmgren_03+student@temporary-mail.net
johnny.lindqvist+parent@temporary-mail.net
sara.lindqvist_04+student@temporary-mail.net
cecilia.bengtsson+parent@temporary-mail.net
ella.bengtsson_03+student@temporary-mail.net
anette.claesson+parent@temporary-mail.net
jessica.claesson_03+student@temporary-mail.net
ella.claesson_06+student@temporary-mail.net
jan.blom_369+parent@temporary-mail.net
ingrid.blom+parent@temporary-mail.net
simon.blom_05+student@temporary-mail.net
hanna.andreasson+parent@temporary-mail.net
marianne.andreasson+parent@temporary-mail.net
bengt.andreasson_07+student@temporary-mail.net
sven.nordin+parent@temporary-mail.net
susanne.nordin+parent@temporary-mail.net
fredrik.nordin_04+student@temporary-mail.net
mikaela.jonsson+parent@temporary-mail.net
birgitta.jonsson+parent@temporary-mail.net
berit.jonsson_09+student@temporary-mail.net
linda.jonsson_09+student@temporary-mail.net
jessica.jonsson_06+student@temporary-mail.net
thomas.jakobsson+parent@temporary-mail.net
britt-marie.jakobsson_09+student@temporary-mail.net
maja.svensson+parent@temporary-mail.net
felix.svensson_05+student@temporary-mail.net
martin.svensson_03+student@temporary-mail.net
eva.falk+parent@temporary-mail.net
hans.falk_05+student@temporary-mail.net
christer.nilsson+parent@temporary-mail.net
erika.nilsson_07+student@temporary-mail.net
nathalie.nystroem+parent@temporary-mail.net
kent.nystroem+parent@temporary-mail.net
anton.nystroem_08+student@temporary-mail.net
anita.nilsson+parent@temporary-mail.net
rut.nilsson_03+student@temporary-mail.net
lovisa.dahlberg+parent@temporary-mail.net
ida.dahlberg+parent@temporary-mail.net
leo.dahlberg_04+student@temporary-mail.net
patrik.holmberg+parent@temporary-mail.net
charlotte.holmberg_06+student@temporary-mail.net
rut.claesson+parent@temporary-mail.net
joakim.claesson+parent@temporary-mail.net
amanda.claesson_07+student@temporary-mail.net
felicia.sandstroem+parent@temporary-mail.net
daniel.sandstroem_06+student@temporary-mail.net
olof.berggren+parent@temporary-mail.net
viktoria.berggren+parent@temporary-mail.net
max.berggren_03+student@temporary-mail.net
edvin.bjoerk+parent@temporary-mail.net
nathalie.bjoerk+parent@temporary-mail.net
anton.bjoerk_08+student@temporary-mail.net
adam.mohamed+parent@temporary-mail.net
christian.mohamed_05+student@temporary-mail.net
carina.mohamed_04+student@temporary-mail.net
ludvig.mohamed_09+student@temporary-mail.net
elsa.viklund+parent@temporary-mail.net
simon.viklund+parent@temporary-mail.net
per.viklund_07+student@temporary-mail.net
samuel.svensson+parent@temporary-mail.net
adam.svensson+parent@temporary-mail.net
aasa.svensson_08+student@temporary-mail.net
therese.sjoegren+parent@temporary-mail.net
erika.sjoegren_08+student@temporary-mail.net
christer.eklund+parent@temporary-mail.net
elias.eklund_05+student@temporary-mail.net
wilma.abrahamsson+parent@temporary-mail.net
kjell.abrahamsson+parent@temporary-mail.net
dennis.abrahamsson_06+student@temporary-mail.net
cecilia.fransson+parent@temporary-mail.net
ida.fransson+parent@temporary-mail.net
lisbeth.fransson_05+student@temporary-mail.net
rolf.stroem+parent@temporary-mail.net
joel.stroem+parent@temporary-mail.net
ellen.stroem_06+student@temporary-mail.net
filip.sjoegren+parent@temporary-mail.net
daniel.sjoegren_03+student@temporary-mail.net
liam.ek+parent@temporary-mail.net
hanna.ek_09+student@temporary-mail.net
sven.fransson+parent@temporary-mail.net
yvonne.fransson_09+student@temporary-mail.net
peter.hassan+parent@temporary-mail.net
pia.hassan+parent@temporary-mail.net
kurt.hassan_06+student@temporary-mail.net
mats.sjoegren+parent@temporary-mail.net
mohamed.sjoegren+parent@temporary-mail.net
elias.sjoegren_04+student@temporary-mail.net
anton.mattsson+parent@temporary-mail.net
eva.mattsson+parent@temporary-mail.net
per.mattsson_07+student@temporary-mail.net
erik.engstroem+parent@temporary-mail.net
nathalie.engstroem+parent@temporary-mail.net
albin.engstroem_09+student@temporary-mail.net
niklas.norberg+parent@temporary-mail.net
goeran.norberg_09+student@temporary-mail.net
linnea.nyberg+parent@temporary-mail.net
ingrid.nyberg+parent@temporary-mail.net
max.nyberg_09+student@temporary-mail.net
sonja.nyberg_05+student@temporary-mail.net
camilla.svensson+parent@temporary-mail.net
adam.svensson_06+student@temporary-mail.net
william.maansson+parent@temporary-mail.net
gunnar.maansson_07+student@temporary-mail.net
isabelle.holmgren+parent@temporary-mail.net
thomas.holmgren+parent@temporary-mail.net
rebecca.holmgren_06+student@temporary-mail.net
ann.holmgren_09+student@temporary-mail.net
kurt.aaberg+parent@temporary-mail.net
viktor.aaberg_07+student@temporary-mail.net
anna.henriksson+parent@temporary-mail.net
kjell.henriksson+parent@temporary-mail.net
claes.henriksson_08+student@temporary-mail.net
jenny.forsberg+parent@temporary-mail.net
pia.forsberg_08+student@temporary-mail.net
pia.bergman+parent@temporary-mail.net
tommy.bergman_07+student@temporary-mail.net
ulf.holmgren_131+parent@temporary-mail.net
viktor.holmgren_09+student@temporary-mail.net
alice.lundgren+parent@temporary-mail.net
carina.lundgren_03+student@temporary-mail.net
marianne.holmberg+parent@temporary-mail.net
filip.holmberg_05+student@temporary-mail.net
felix.lindstroem+parent@temporary-mail.net
linus.lindstroem_06+student@temporary-mail.net
rasmus.persson+parent@temporary-mail.net
agnes.persson+parent@temporary-mail.net
susanne.persson_03+student@temporary-mail.net
carina.jakobsson+parent@temporary-mail.net
louise.jakobsson+parent@temporary-mail.net
oliver.jakobsson_07+student@temporary-mail.net
lennart.sundberg+parent@temporary-mail.net
ann-christin.sundberg_06+student@temporary-mail.net
frida.arvidsson+parent@temporary-mail.net
lars.arvidsson+parent@temporary-mail.net
katarina.arvidsson_04+student@temporary-mail.net
pia.oeberg+parent@temporary-mail.net
monica.oeberg_03+student@temporary-mail.net
christer.engstroem+parent@temporary-mail.net
rebecca.engstroem+parent@temporary-mail.net
mikael.engstroem_03+student@temporary-mail.net
ulf.berg+parent@temporary-mail.net
rut.berg+parent@temporary-mail.net
oliver.berg_04+student@temporary-mail.net
ulrika.bjoerk+parent@temporary-mail.net
pernilla.bjoerk+parent@temporary-mail.net
britt-marie.bjoerk_09+student@temporary-mail.net
roger.jansson+parent@temporary-mail.net
kjell.jansson+parent@temporary-mail.net
ann.jansson_03+student@temporary-mail.net
andreas.sjoeberg+parent@temporary-mail.net
aasa.sjoeberg_05+student@temporary-mail.net
claes.lund+parent@temporary-mail.net
william.lund_06+student@temporary-mail.net
birgitta.bengtsson+parent@temporary-mail.net
gun.bengtsson+parent@temporary-mail.net
britt.bengtsson_03+student@temporary-mail.net
anna.bengtsson_06+student@temporary-mail.net
adam.bengtsson_07+student@temporary-mail.net
alva.nilsson+parent@temporary-mail.net
elisabeth.nilsson+parent@temporary-mail.net
linnea.nilsson_04+student@temporary-mail.net
albin.eklund+parent@temporary-mail.net
rickard.eklund+parent@temporary-mail.net
jonathan.eklund_09+student@temporary-mail.net
david.eklund_08+student@temporary-mail.net
gunnel.eklund_03+student@temporary-mail.net
emma.hansen+parent@temporary-mail.net
john.hansen+parent@temporary-mail.net
sofia.hansen_08+student@temporary-mail.net
sofie.jonsson+parent@temporary-mail.net
marianne.jonsson+parent@temporary-mail.net
bo.jonsson_03+student@temporary-mail.net
niklas.jonsson_09+student@temporary-mail.net
josef.samuelsson+parent@temporary-mail.net
martin.samuelsson_04+student@temporary-mail.net
mats.holmberg+parent@temporary-mail.net
hugo.holmberg+parent@temporary-mail.net
ann-marie.holmberg_07+student@temporary-mail.net
helen.sandstroem+parent@temporary-mail.net
samuel.sandstroem_07+student@temporary-mail.net
monica.lundstroem+parent@temporary-mail.net
rasmus.lundstroem_05+student@temporary-mail.net
henrik.berg+parent@temporary-mail.net
jesper.berg+parent@temporary-mail.net
wilma.berg_06+student@temporary-mail.net
rebecca.berg_05+student@temporary-mail.net
elisabeth.hassan+parent@temporary-mail.net
alexander.hassan+parent@temporary-mail.net
rolf.hassan_05+student@temporary-mail.net
david.hassan_05+student@temporary-mail.net
gunnar.lindstroem+parent@temporary-mail.net
amanda.lindstroem_03+student@temporary-mail.net
carina.hellstroem+parent@temporary-mail.net
therese.hellstroem+parent@temporary-mail.net
lisa.hellstroem_05+student@temporary-mail.net
eva.hellstroem_08+student@temporary-mail.net
ulrika.hellstroem_07+student@temporary-mail.net
anette.olofsson+parent@temporary-mail.net
lars.olofsson_09+student@temporary-mail.net
torbjoern.mattsson+parent@temporary-mail.net
lisa.mattsson_05+student@temporary-mail.net
ann-christin.samuelsson+parent@temporary-mail.net
lars.samuelsson+parent@temporary-mail.net
david.samuelsson_04+student@temporary-mail.net
axel.samuelsson_04+student@temporary-mail.net
karin.samuelsson_03+student@temporary-mail.net
margareta.wikstroem+parent@temporary-mail.net
emma.wikstroem+parent@temporary-mail.net
katarina.wikstroem_09+student@temporary-mail.net
jan.blom_473+parent@temporary-mail.net
per.blom+parent@temporary-mail.net
pernilla.blom_05+student@temporary-mail.net
ella.blom_04+student@temporary-mail.net
lucas.blom_06+student@temporary-mail.net
simon.berggren+parent@temporary-mail.net
johnny.berggren_05+student@temporary-mail.net
ellen.bergqvist+parent@temporary-mail.net
julia.bergqvist+parent@temporary-mail.net
john.bergqvist_06+student@temporary-mail.net
anna.sundberg+parent@temporary-mail.net
alice.sundberg_05+student@temporary-mail.net
kurt.isaksson+parent@temporary-mail.net
jessica.isaksson_03+student@temporary-mail.net
maria.ekstroem+parent@temporary-mail.net
joakim.ekstroem+parent@temporary-mail.net
axel.ekstroem_07+student@temporary-mail.net
kent.holmgren+parent@temporary-mail.net
camilla.holmgren+parent@temporary-mail.net
marcus.holmgren_03+student@temporary-mail.net
sandra.oeberg+parent@temporary-mail.net
alexandra.oeberg+parent@temporary-mail.net
pontus.oeberg_06+student@temporary-mail.net
claes.oeberg_09+student@temporary-mail.net
anders.oeberg_05+student@temporary-mail.net
eva.andreasson+parent@temporary-mail.net
anders.andreasson+parent@temporary-mail.net
madeleine.andreasson_07+student@temporary-mail.net
joergen.andreasson_07+student@temporary-mail.net
amanda.andreasson_04+student@temporary-mail.net
christoffer.bergstroem+parent@temporary-mail.net
linnea.bergstroem+parent@temporary-mail.net
gustav.bergstroem_07+student@temporary-mail.net
anette.bergstroem_08+student@temporary-mail.net
isak.bergstroem_06+student@temporary-mail.net
stig.isaksson+parent@temporary-mail.net
monica.isaksson+parent@temporary-mail.net
olof.isaksson_07+student@temporary-mail.net
leo.stroemberg+parent@temporary-mail.net
olle.stroemberg_06+student@temporary-mail.net
lena.wikstroem+parent@temporary-mail.net
kjell.wikstroem+parent@temporary-mail.net
gabriel.wikstroem_04+student@temporary-mail.net
bjoern.claesson+parent@temporary-mail.net
joergen.claesson_04+student@temporary-mail.net
andreas.eliasson+parent@temporary-mail.net
claes.eliasson_09+student@temporary-mail.net
christoffer.hedlund+parent@temporary-mail.net
andreas.hedlund+parent@temporary-mail.net
joakim.hedlund_09+student@temporary-mail.net
josefin.jansson+parent@temporary-mail.net
mikaela.jansson+parent@temporary-mail.net
birgitta.jansson_06+student@temporary-mail.net
anette.sandstroem+parent@temporary-mail.net
malin.sandstroem+parent@temporary-mail.net
leo.sandstroem_09+student@temporary-mail.net
gun.sjoegren+parent@temporary-mail.net
marcus.sjoegren_06+student@temporary-mail.net
lisbeth.blom+parent@temporary-mail.net
claes.blom+parent@temporary-mail.net
bjoern.blom_05+student@temporary-mail.net
adam.lind+parent@temporary-mail.net
filip.lind_03+student@temporary-mail.net
alice.eliasson+parent@temporary-mail.net
jimmy.eliasson+parent@temporary-mail.net
christer.eliasson_08+student@temporary-mail.net
jenny.blom+parent@temporary-mail.net
joel.blom_08+student@temporary-mail.net
ulla.eklund+parent@temporary-mail.net
olivia.eklund_09+student@temporary-mail.net
emilia.eklund_07+student@temporary-mail.net
bo.eklund_03+student@temporary-mail.net
oliver.lindberg+parent@temporary-mail.net
isabelle.lindberg+parent@temporary-mail.net
gun.lindberg_09+student@temporary-mail.net
jimmy.sandberg+parent@temporary-mail.net
berit.sandberg+parent@temporary-mail.net
olof.sandberg_05+student@temporary-mail.net
aasa.sandberg_04+student@temporary-mail.net
kerstin.sandberg_06+student@temporary-mail.net
hans.blom+parent@temporary-mail.net
ann-marie.blom+parent@temporary-mail.net
siv.blom_07+student@temporary-mail.net
anneli.hellstroem+parent@temporary-mail.net
ulrika.hellstroem_09+student@temporary-mail.net
ulla.falk_275+parent@temporary-mail.net
linus.falk_03+student@temporary-mail.net
hugo.hermansson+parent@temporary-mail.net
linus.hermansson_07+student@temporary-mail.net
stig.danielsson+parent@temporary-mail.net
alice.danielsson_04+student@temporary-mail.net
lovisa.axelsson+parent@temporary-mail.net
malin.axelsson+parent@temporary-mail.net
elias.axelsson_07+student@temporary-mail.net
christian.axelsson_08+student@temporary-mail.net
emil.gunnarsson+parent@temporary-mail.net
jesper.gunnarsson+parent@temporary-mail.net
maja.gunnarsson_06+student@temporary-mail.net
kent.lund+parent@temporary-mail.net
nina.lund_06+student@temporary-mail.net
ingrid.blom_964+parent@temporary-mail.net
therese.blom+parent@temporary-mail.net
emma.blom_06+student@temporary-mail.net
ulla.holmberg+parent@temporary-mail.net
roger.holmberg_09+student@temporary-mail.net
ella.larsson+parent@temporary-mail.net
henrik.larsson_05+student@temporary-mail.net
alice.lindqvist+parent@temporary-mail.net
jessica.lindqvist_08+student@temporary-mail.net
maja.lindqvist_04+student@temporary-mail.net
ann.oeberg+parent@temporary-mail.net
max.oeberg+parent@temporary-mail.net
kristina.oeberg_09+student@temporary-mail.net
anette.stroemberg+parent@temporary-mail.net
mikaela.stroemberg+parent@temporary-mail.net
jimmy.stroemberg_04+student@temporary-mail.net
karl.bjoerk+parent@temporary-mail.net
linda.bjoerk+parent@temporary-mail.net
birgitta.bjoerk_09+student@temporary-mail.net
berit.norberg+parent@temporary-mail.net
aasa.norberg_06+student@temporary-mail.net
anette.johansson+parent@temporary-mail.net
jessica.johansson+parent@temporary-mail.net
ella.johansson_04+student@temporary-mail.net
gunnel.stroem_478+parent@temporary-mail.net
kjell.stroem+parent@temporary-mail.net
joakim.stroem_09+student@temporary-mail.net
stefan.eliasson+parent@temporary-mail.net
kjell.eliasson+parent@temporary-mail.net
siv.eliasson_05+student@temporary-mail.net
torbjoern.nordin+parent@temporary-mail.net
nina.nordin+parent@temporary-mail.net
stefan.nordin_05+student@temporary-mail.net
siv.svensson_221+parent@temporary-mail.net
jakob.svensson+parent@temporary-mail.net
emelie.svensson_04+student@temporary-mail.net
hanna.hermansson+parent@temporary-mail.net
therese.hermansson_04+student@temporary-mail.net
ali.berg+parent@temporary-mail.net
max.berg_08+student@temporary-mail.net
lena.ekstroem+parent@temporary-mail.net
sebastian.ekstroem_08+student@temporary-mail.net
rasmus.ekstroem_06+student@temporary-mail.net
emilia.ekstroem_06+student@temporary-mail.net
bo.persson+parent@temporary-mail.net
filip.persson_03+student@temporary-mail.net
emelie.persson_03+student@temporary-mail.net
kevin.persson_06+student@temporary-mail.net
siv.mohamed+parent@temporary-mail.net
birgitta.mohamed_08+student@temporary-mail.net
jessica.engstroem+parent@temporary-mail.net
linnea.engstroem_09+student@temporary-mail.net
anton.eliasson+parent@temporary-mail.net
henrik.eliasson_06+student@temporary-mail.net
samuel.bjoerklund+parent@temporary-mail.net
ali.bjoerklund_09+student@temporary-mail.net
agneta.bjoerklund_08+student@temporary-mail.net
astrid.bergqvist+parent@temporary-mail.net
john.bergqvist+parent@temporary-mail.net
inger.bergqvist_06+student@temporary-mail.net
aasa.bergman+parent@temporary-mail.net
alva.bergman+parent@temporary-mail.net
lennart.bergman_08+student@temporary-mail.net
daniel.ahmed+parent@temporary-mail.net
rickard.ahmed_07+student@temporary-mail.net
marcus.nyberg+parent@temporary-mail.net
lisbeth.nyberg+parent@temporary-mail.net
sofia.nyberg_04+student@temporary-mail.net
sven.nyberg_08+student@temporary-mail.net
emelie.hansson+parent@temporary-mail.net
roger.hansson_04+student@temporary-mail.net
olle.sjoegren+parent@temporary-mail.net
agneta.sjoegren_08+student@temporary-mail.net
pia.sjoegren_06+student@temporary-mail.net
anna.sjoegren_04+student@temporary-mail.net
nina.bergstroem+parent@temporary-mail.net
ellen.bergstroem+parent@temporary-mail.net
agneta.bergstroem_03+student@temporary-mail.net
viktor.lindgren+parent@temporary-mail.net
marcus.lindgren+parent@temporary-mail.net
rebecca.lindgren_09+student@temporary-mail.net
torbjoern.lindgren_04+student@temporary-mail.net
lisbeth.holm+parent@temporary-mail.net
lennart.holm_07+student@temporary-mail.net
ludvig.holm_03+student@temporary-mail.net
rut.holm_04+student@temporary-mail.net
albin.lundstroem+parent@temporary-mail.net
annika.lundstroem_06+student@temporary-mail.net
marcus.falk+parent@temporary-mail.net
ulrika.falk_06+student@temporary-mail.net
gun.viklund+parent@temporary-mail.net
carina.viklund_05+student@temporary-mail.net
bengt.viklund_03+student@temporary-mail.net
yvonne.gunnarsson+parent@temporary-mail.net
oliver.gunnarsson+parent@temporary-mail.net
anton.gunnarsson_04+student@temporary-mail.net
anneli.jansson+parent@temporary-mail.net
malin.jansson+parent@temporary-mail.net
carina.jansson_06+student@temporary-mail.net
martin.jansson_09+student@temporary-mail.net
therese.jansson_05+student@temporary-mail.net
johanna.claesson+parent@temporary-mail.net
aake.claesson_08+student@temporary-mail.net
olivia.claesson_08+student@temporary-mail.net
camilla.lindstroem+parent@temporary-mail.net
rasmus.lindstroem+parent@temporary-mail.net
maria.lindstroem_04+student@temporary-mail.net
frida.norberg+parent@temporary-mail.net
rolf.norberg+parent@temporary-mail.net
tobias.norberg_04+student@temporary-mail.net
rickard.nordin+parent@temporary-mail.net
joergen.nordin+parent@temporary-mail.net
johan.nordin_09+student@temporary-mail.net
patrik.nordin_08+student@temporary-mail.net
ebba.nordin_08+student@temporary-mail.net
moa.axelsson+parent@temporary-mail.net
ingrid.axelsson+parent@temporary-mail.net
mikael.axelsson_05+student@temporary-mail.net
johanna.sandstroem+parent@temporary-mail.net
johan.sandstroem+parent@temporary-mail.net
birgitta.sandstroem_06+student@temporary-mail.net
peter.abrahamsson+parent@temporary-mail.net
oskar.abrahamsson_08+student@temporary-mail.net
ulf.abrahamsson_03+student@temporary-mail.net
lina.abrahamsson_04+student@temporary-mail.net
felicia.lundin+parent@temporary-mail.net
magnus.lundin_05+student@temporary-mail.net
siv.lundin_08+student@temporary-mail.net
ali.ali+parent@temporary-mail.net
johan.ali+parent@temporary-mail.net
helen.ali_09+student@temporary-mail.net
ludvig.ali_09+student@temporary-mail.net
madeleine.henriksson+parent@temporary-mail.net
ulf.henriksson_05+student@temporary-mail.net
anton.henriksson_05+student@temporary-mail.net
alexander.stroemberg+parent@temporary-mail.net
nathalie.stroemberg_09+student@temporary-mail.net
sebastian.holm+parent@temporary-mail.net
arvid.holm_05+student@temporary-mail.net
marianne.oeberg+parent@temporary-mail.net
frida.oeberg_03+student@temporary-mail.net
bo.nystroem+parent@temporary-mail.net
viktor.nystroem_07+student@temporary-mail.net
sebastian.arvidsson+parent@temporary-mail.net
moa.arvidsson+parent@temporary-mail.net
magnus.arvidsson_08+student@temporary-mail.net
ali.hansen+parent@temporary-mail.net
caroline.hansen+parent@temporary-mail.net
niklas.hansen_09+student@temporary-mail.net
david.karlsson+parent@temporary-mail.net
birgitta.karlsson+parent@temporary-mail.net
mohamed.karlsson_04+student@temporary-mail.net
filip.holm+parent@temporary-mail.net
ellen.holm+parent@temporary-mail.net
johnny.holm_09+student@temporary-mail.net
ann-marie.holm_05+student@temporary-mail.net
sofia.bergstroem_188+parent@temporary-mail.net
andreas.bergstroem+parent@temporary-mail.net
tobias.bergstroem_07+student@temporary-mail.net
marianne.lindgren+parent@temporary-mail.net
ali.lindgren_06+student@temporary-mail.net
carina.lindgren_07+student@temporary-mail.net
lars.lindgren_08+student@temporary-mail.net
margareta.forsberg+parent@temporary-mail.net
albin.forsberg_09+student@temporary-mail.net
per.forsberg_06+student@temporary-mail.net
andreas.forsberg_04+student@temporary-mail.net
aasa.olsson+parent@temporary-mail.net
julia.olsson+parent@temporary-mail.net
elsa.olsson_06+student@temporary-mail.net
madeleine.olsson_06+student@temporary-mail.net
gustav.olsson_04+student@temporary-mail.net
viktor.isaksson+parent@temporary-mail.net
niklas.isaksson+parent@temporary-mail.net
viktoria.isaksson_04+student@temporary-mail.net
lisbeth.isaksson_08+student@temporary-mail.net
lars.isaksson_05+student@temporary-mail.net
katarina.mattsson+parent@temporary-mail.net
jimmy.mattsson_04+student@temporary-mail.net
matilda.mattsson_06+student@temporary-mail.net
alexander.mattsson_09+student@temporary-mail.net
leif.karlsson+parent@temporary-mail.net
johanna.karlsson+parent@temporary-mail.net
linus.karlsson_07+student@temporary-mail.net
lovisa.lindqvist+parent@temporary-mail.net
olle.lindqvist_08+student@temporary-mail.net
isabelle.lindqvist_06+student@temporary-mail.net
mikael.lindqvist_08+student@temporary-mail.net
jimmy.jakobsson+parent@temporary-mail.net
jesper.jakobsson_03+student@temporary-mail.net
caroline.ali+parent@temporary-mail.net
emil.ali_06+student@temporary-mail.net
edvin.johansson+parent@temporary-mail.net
emilia.johansson+parent@temporary-mail.net
nathalie.johansson_09+student@temporary-mail.net
alice.holm+parent@temporary-mail.net
felix.holm+parent@temporary-mail.net
tommy.holm_03+student@temporary-mail.net
linn.holm_05+student@temporary-mail.net
emma.aastroem+parent@temporary-mail.net
haakan.aastroem_06+student@temporary-mail.net
hanna.lind+parent@temporary-mail.net
stig.lind+parent@temporary-mail.net
alexander.lind_06+student@temporary-mail.net
emilia.andreasson+parent@temporary-mail.net
fredrik.andreasson_04+student@temporary-mail.net
helen.andreasson_03+student@temporary-mail.net
kjell.andreasson_03+student@temporary-mail.net
lucas.axelsson+parent@temporary-mail.net
martin.axelsson_07+student@temporary-mail.net
carina.lindberg+parent@temporary-mail.net
thomas.lindberg_06+student@temporary-mail.net
anders.eklund+parent@temporary-mail.net
kevin.eklund+parent@temporary-mail.net
agnes.eklund_07+student@temporary-mail.net
mohamed.abrahamsson+parent@temporary-mail.net
aasa.abrahamsson+parent@temporary-mail.net
cecilia.abrahamsson_09+student@temporary-mail.net
marie.sjoegren+parent@temporary-mail.net
nils.sjoegren+parent@temporary-mail.net
jessica.sjoegren_09+student@temporary-mail.net
katarina.eliasson+parent@temporary-mail.net
viktoria.eliasson_04+student@temporary-mail.net
astrid.samuelsson+parent@temporary-mail.net
julia.samuelsson_09+student@temporary-mail.net
elias.hansen+parent@temporary-mail.net
leif.hansen_09+student@temporary-mail.net
rolf.holmberg+parent@temporary-mail.net
sofie.holmberg+parent@temporary-mail.net
niklas.holmberg_08+student@temporary-mail.net
alice.nordin+parent@temporary-mail.net
lars.nordin_08+student@temporary-mail.net
anna.sjoegren+parent@temporary-mail.net
leif.sjoegren+parent@temporary-mail.net
tommy.sjoegren_09+student@temporary-mail.net
ulf.olofsson+parent@temporary-mail.net
robert.olofsson_04+student@temporary-mail.net
goeran.olofsson_06+student@temporary-mail.net
frida.berggren+parent@temporary-mail.net
samuel.berggren_03+student@temporary-mail.net
andreas.karlsson+parent@temporary-mail.net
eva.karlsson_09+student@temporary-mail.net
claes.hassan+parent@temporary-mail.net
klara.hassan+parent@temporary-mail.net
hugo.hassan_06+student@temporary-mail.net
gunnel.eriksson+parent@temporary-mail.net
kent.eriksson_06+student@temporary-mail.net
maja.andreasson+parent@temporary-mail.net
erik.andreasson+parent@temporary-mail.net
kurt.andreasson_09+student@temporary-mail.net
rebecca.olsson+parent@temporary-mail.net
edvin.olsson_07+student@temporary-mail.net
ellen.maansson+parent@temporary-mail.net
joergen.maansson+parent@temporary-mail.net
inger.maansson_09+student@temporary-mail.net
gustav.hassan+parent@temporary-mail.net
ellen.hassan+parent@temporary-mail.net
lovisa.hassan_05+student@temporary-mail.net
david.nordstroem+parent@temporary-mail.net
pia.nordstroem_07+student@temporary-mail.net
carina.nordstroem_07+student@temporary-mail.net
arvid.nordstroem_08+student@temporary-mail.net
jimmy.berglund+parent@temporary-mail.net
nina.berglund+parent@temporary-mail.net
stig.berglund_09+student@temporary-mail.net
kent.lundberg+parent@temporary-mail.net
isak.lundberg_08+student@temporary-mail.net
kevin.berg+parent@temporary-mail.net
kent.berg+parent@temporary-mail.net
christoffer.berg_08+student@temporary-mail.net
birgitta.loefgren+parent@temporary-mail.net
ingrid.loefgren_07+student@temporary-mail.net
niklas.loefgren_05+student@temporary-mail.net
sebastian.loefgren_05+student@temporary-mail.net
david.aakesson+parent@temporary-mail.net
per.aakesson_04+student@temporary-mail.net
nils.aakesson_04+student@temporary-mail.net
carina.jonsson+parent@temporary-mail.net
elsa.jonsson+parent@temporary-mail.net
gunnar.jonsson_05+student@temporary-mail.net
josefin.ekstroem+parent@temporary-mail.net
kerstin.ekstroem_09+student@temporary-mail.net
malin.johansson+parent@temporary-mail.net
lisbeth.johansson+parent@temporary-mail.net
joel.johansson_05+student@temporary-mail.net
lisa.lundqvist+parent@temporary-mail.net
viktor.lundqvist_08+student@temporary-mail.net
stig.ek+parent@temporary-mail.net
ann.ek_06+student@temporary-mail.net
mikael.ek_03+student@temporary-mail.net
kristina.jonsson+parent@temporary-mail.net
madeleine.jonsson_09+student@temporary-mail.net
johanna.aaberg+parent@temporary-mail.net
patrik.aaberg+parent@temporary-mail.net
annika.aaberg_06+student@temporary-mail.net
olle.aaberg_05+student@temporary-mail.net
astrid.aaberg_09+student@temporary-mail.net
nina.aaberg+parent@temporary-mail.net
madeleine.aaberg_05+student@temporary-mail.net
simon.wallin+parent@temporary-mail.net
ingrid.wallin_07+student@temporary-mail.net
karl.svensson+parent@temporary-mail.net
axel.svensson+parent@temporary-mail.net
rickard.svensson_05+student@temporary-mail.net
fredrik.lind+parent@temporary-mail.net
axel.lind+parent@temporary-mail.net
ulrika.lind_05+student@temporary-mail.net
christoffer.martinsson+parent@temporary-mail.net
fredrik.martinsson+parent@temporary-mail.net
viktor.martinsson_05+student@temporary-mail.net
william.bjoerk+parent@temporary-mail.net
nathalie.bjoerk_06+student@temporary-mail.net
ann.jansson+parent@temporary-mail.net
marie.jansson+parent@temporary-mail.net
oskar.jansson_09+student@temporary-mail.net
pia.soederberg+parent@temporary-mail.net
per.soederberg+parent@temporary-mail.net
mikael.soederberg_06+student@temporary-mail.net
william.wikstroem+parent@temporary-mail.net
ella.wikstroem_08+student@temporary-mail.net
sven.haakansson+parent@temporary-mail.net
yvonne.haakansson_07+student@temporary-mail.net
olivia.haakansson_04+student@temporary-mail.net
frida.haakansson_05+student@temporary-mail.net
jonas.lundin+parent@temporary-mail.net
rolf.lundin_06+student@temporary-mail.net
daniel.lundin_03+student@temporary-mail.net
mattias.wallin+parent@temporary-mail.net
robin.wallin+parent@temporary-mail.net
aake.wallin_06+student@temporary-mail.net
ida.lundstroem+parent@temporary-mail.net
gunnar.lundstroem_04+student@temporary-mail.net
nils.lundgren+parent@temporary-mail.net
katarina.lundgren_09+student@temporary-mail.net
jessica.jonasson+parent@temporary-mail.net
agnes.jonasson_03+student@temporary-mail.net
sofia.ekstroem+parent@temporary-mail.net
hanna.ekstroem+parent@temporary-mail.net
pernilla.ekstroem_04+student@temporary-mail.net
erik.maartensson+parent@temporary-mail.net
madeleine.maartensson+parent@temporary-mail.net
albin.maartensson_04+student@temporary-mail.net
tommy.maartensson_06+student@temporary-mail.net
christoffer.engstroem+parent@temporary-mail.net
albin.engstroem_07+student@temporary-mail.net
yvonne.johansson+parent@temporary-mail.net
gabriel.johansson+parent@temporary-mail.net
john.johansson_06+student@temporary-mail.net
adam.hansson+parent@temporary-mail.net
ann.hansson_03+student@temporary-mail.net
aake.bjoerklund+parent@temporary-mail.net
barbro.bjoerklund_03+student@temporary-mail.net
anette.dahlberg+parent@temporary-mail.net
matilda.dahlberg+parent@temporary-mail.net
gunnel.dahlberg_06+student@temporary-mail.net
yvonne.hansen+parent@temporary-mail.net
albin.hansen+parent@temporary-mail.net
kristina.hansen_08+student@temporary-mail.net
madeleine.isaksson+parent@temporary-mail.net
felicia.isaksson+parent@temporary-mail.net
hugo.isaksson_09+student@temporary-mail.net
jonathan.bengtsson+parent@temporary-mail.net
ulrika.bengtsson_07+student@temporary-mail.net
fredrik.bengtsson+parent@temporary-mail.net
ulrika.bengtsson_306+student@temporary-mail.net
adam.karlsson+parent@temporary-mail.net
emelie.karlsson_09+student@temporary-mail.net
peter.lundin+parent@temporary-mail.net
albin.lundin_09+student@temporary-mail.net
niklas.lindstroem+parent@temporary-mail.net
henrik.lindstroem_07+student@temporary-mail.net
karin.lindstroem_05+student@temporary-mail.net
siv.hassan+parent@temporary-mail.net
christer.hassan+parent@temporary-mail.net
per.hassan_09+student@temporary-mail.net
josef.lundgren+parent@temporary-mail.net
felix.lundgren_03+student@temporary-mail.net
martin.lindberg+parent@temporary-mail.net
mona.lindberg+parent@temporary-mail.net
kevin.lindberg_06+student@temporary-mail.net
sandra.nystroem+parent@temporary-mail.net
cecilia.nystroem+parent@temporary-mail.net
ebba.nystroem_07+student@temporary-mail.net
nils.svensson+parent@temporary-mail.net
linn.svensson_03+student@temporary-mail.net
simon.svensson_03+student@temporary-mail.net
alexandra.loefgren+parent@temporary-mail.net
moa.loefgren+parent@temporary-mail.net
madeleine.loefgren_08+student@temporary-mail.net
mattias.nordin+parent@temporary-mail.net
ulla.nordin+parent@temporary-mail.net
moa.nordin_08+student@temporary-mail.net
elin.nordin_08+student@temporary-mail.net
nils.hermansson+parent@temporary-mail.net
max.hermansson_07+student@temporary-mail.net
berit.fransson+parent@temporary-mail.net
felix.fransson+parent@temporary-mail.net
patrik.fransson_05+student@temporary-mail.net
camilla.sjoegren+parent@temporary-mail.net
jan.sjoegren_07+student@temporary-mail.net
haakan.lind+parent@temporary-mail.net
alice.lind+parent@temporary-mail.net
gunnar.lind_03+student@temporary-mail.net
mohamed.ek+parent@temporary-mail.net
rolf.ek+parent@temporary-mail.net
thomas.ek_09+student@temporary-mail.net
roger.loefgren+parent@temporary-mail.net
nils.loefgren_04+student@temporary-mail.net
sofie.bergqvist+parent@temporary-mail.net
karin.bergqvist+parent@temporary-mail.net
hans.bergqvist_09+student@temporary-mail.net
nathalie.pettersson+parent@temporary-mail.net
linus.pettersson+parent@temporary-mail.net
claes.pettersson_07+student@temporary-mail.net
johnny.andreasson+parent@temporary-mail.net
kerstin.andreasson_04+student@temporary-mail.net
tobias.wikstroem+parent@temporary-mail.net
hugo.wikstroem_03+student@temporary-mail.net
joel.stroemberg+parent@temporary-mail.net
erik.stroemberg_05+student@temporary-mail.net
per.lundqvist+parent@temporary-mail.net
magnus.lundqvist_09+student@temporary-mail.net
rickard.engstroem+parent@temporary-mail.net
annika.engstroem+parent@temporary-mail.net
anette.engstroem_08+student@temporary-mail.net
joakim.wikstroem+parent@temporary-mail.net
linn.wikstroem+parent@temporary-mail.net
kerstin.wikstroem_07+student@temporary-mail.net
ann.magnusson+parent@temporary-mail.net
robert.magnusson_08+student@temporary-mail.net
carina.magnusson_08+student@temporary-mail.net
haakan.ekstroem+parent@temporary-mail.net
henrik.ekstroem+parent@temporary-mail.net
siv.ekstroem_05+student@temporary-mail.net
ann-marie.olofsson+parent@temporary-mail.net
martin.olofsson_04+student@temporary-mail.net
mats.arvidsson+parent@temporary-mail.net
katarina.arvidsson+parent@temporary-mail.net
pernilla.arvidsson_03+student@temporary-mail.net
caroline.hansen_819+parent@temporary-mail.net
kerstin.hansen_06+student@temporary-mail.net
adam.olsson+parent@temporary-mail.net
joel.olsson_03+student@temporary-mail.net
jonas.hedlund+parent@temporary-mail.net
ingrid.hedlund+parent@temporary-mail.net
claes.hedlund_08+student@temporary-mail.net
jonathan.lund+parent@temporary-mail.net
helen.lund+parent@temporary-mail.net
henrik.lund_08+student@temporary-mail.net
filip.viklund+parent@temporary-mail.net
emelie.viklund_06+student@temporary-mail.net
maria.gunnarsson+parent@temporary-mail.net
jessica.gunnarsson+parent@temporary-mail.net
siv.gunnarsson_04+student@temporary-mail.net
ulla.lindgren+parent@temporary-mail.net
julia.lindgren_06+student@temporary-mail.net
alexander.loefgren+parent@temporary-mail.net
monica.loefgren+parent@temporary-mail.net
isabelle.loefgren_05+student@temporary-mail.net
oskar.pettersson+parent@temporary-mail.net
magnus.pettersson_03+student@temporary-mail.net
jakob.pettersson_04+student@temporary-mail.net
klara.pettersson_04+student@temporary-mail.net
goeran.soederberg+parent@temporary-mail.net
karl.soederberg_08+student@temporary-mail.net
christian.martinsson+parent@temporary-mail.net
ann.martinsson+parent@temporary-mail.net
pontus.martinsson_08+student@temporary-mail.net
lennart.bergstroem+parent@temporary-mail.net
matilda.bergstroem_05+student@temporary-mail.net
erika.bergstroem_03+student@temporary-mail.net
wilma.bergstroem_07+student@temporary-mail.net
daniel.loefgren+parent@temporary-mail.net
dennis.loefgren_06+student@temporary-mail.net
josef.hansen+parent@temporary-mail.net
mona.hansen+parent@temporary-mail.net
susanne.hansen_06+student@temporary-mail.net
lisbeth.hansen_09+student@temporary-mail.net
therese.holm+parent@temporary-mail.net
gun.holm+parent@temporary-mail.net
nils.holm_07+student@temporary-mail.net
camilla.axelsson+parent@temporary-mail.net
siv.axelsson_06+student@temporary-mail.net
sonja.axelsson_09+student@temporary-mail.net
peter.axelsson_09+student@temporary-mail.net
mohamed.oeberg+parent@temporary-mail.net
kurt.oeberg+parent@temporary-mail.net
simon.oeberg_07+student@temporary-mail.net
joakim.lundin+parent@temporary-mail.net
ellen.lundin_03+student@temporary-mail.net
lena.dahlberg+parent@temporary-mail.net
britt.dahlberg_09+student@temporary-mail.net
fredrik.dahlberg_08+student@temporary-mail.net
moa.bjoerk+parent@temporary-mail.net
martin.bjoerk_07+student@temporary-mail.net
rolf.martinsson+parent@temporary-mail.net
mona.martinsson_05+student@temporary-mail.net
robert.maansson+parent@temporary-mail.net
christian.maansson_06+student@temporary-mail.net
johnny.ali+parent@temporary-mail.net
lovisa.ali_07+student@temporary-mail.net
sven.isaksson+parent@temporary-mail.net
magnus.isaksson+parent@temporary-mail.net
mohamed.isaksson_06+student@temporary-mail.net
joergen.forsberg+parent@temporary-mail.net
samuel.forsberg_06+student@temporary-mail.net
jonas.forsberg_03+student@temporary-mail.net
emil.jonsson+parent@temporary-mail.net
sofia.jonsson_06+student@temporary-mail.net
bo.ekstroem+parent@temporary-mail.net
mona.ekstroem_09+student@temporary-mail.net
viktor.lindgren_213+parent@temporary-mail.net
ulla.lindgren_06+student@temporary-mail.net
johnny.jonasson+parent@temporary-mail.net
henrik.jonasson_09+student@temporary-mail.net
kerstin.nilsson+parent@temporary-mail.net
mikaela.nilsson_09+student@temporary-mail.net
olivia.norberg+parent@temporary-mail.net
roger.norberg+parent@temporary-mail.net
joakim.norberg_04+student@temporary-mail.net
emma.bergqvist+parent@temporary-mail.net
william.bergqvist+parent@temporary-mail.net
gunnel.bergqvist_07+student@temporary-mail.net
moa.mattsson+parent@temporary-mail.net
marianne.mattsson_03+student@temporary-mail.net
niklas.norberg_870+parent@temporary-mail.net
kevin.norberg+parent@temporary-mail.net
louise.norberg_05+student@temporary-mail.net
maja.hellstroem+parent@temporary-mail.net
alexandra.hellstroem+parent@temporary-mail.net
johnny.hellstroem_09+student@temporary-mail.net
hans.holm+parent@temporary-mail.net
johnny.holm_06+student@temporary-mail.net
alexandra.nordstroem+parent@temporary-mail.net
linus.nordstroem+parent@temporary-mail.net
siv.nordstroem_07+student@temporary-mail.net
ann-christin.maansson+parent@temporary-mail.net
rolf.maansson+parent@temporary-mail.net
rasmus.maansson_07+student@temporary-mail.net
klara.larsson+parent@temporary-mail.net
viktor.larsson+parent@temporary-mail.net
gabriel.larsson_06+student@temporary-mail.net
jessica.mohamed+parent@temporary-mail.net
kristina.mohamed_08+student@temporary-mail.net
alva.gustafsson+parent@temporary-mail.net
leif.gustafsson_06+student@temporary-mail.net
amanda.lund+parent@temporary-mail.net
margareta.lund+parent@temporary-mail.net
josef.lund_07+student@temporary-mail.net
monica.gustafsson+parent@temporary-mail.net
lisbeth.gustafsson+parent@temporary-mail.net
karl.gustafsson_06+student@temporary-mail.net
lena.bergqvist+parent@temporary-mail.net
ella.bergqvist+parent@temporary-mail.net
mats.bergqvist_09+student@temporary-mail.net
elin.forsberg+parent@temporary-mail.net
louise.forsberg_04+student@temporary-mail.net
ella.hedlund+parent@temporary-mail.net
gabriel.hedlund_03+student@temporary-mail.net
lucas.lindgren+parent@temporary-mail.net
eva.lindgren+parent@temporary-mail.net
jonas.lindgren_07+student@temporary-mail.net
daniel.lundin+parent@temporary-mail.net
lennart.lundin+parent@temporary-mail.net
josefin.lundin_07+student@temporary-mail.net
margareta.falk+parent@temporary-mail.net
cecilia.falk_03+student@temporary-mail.net
mikaela.falk_03+student@temporary-mail.net
andreas.johansson+parent@temporary-mail.net
roger.johansson_04+student@temporary-mail.net
elin.falk+parent@temporary-mail.net
berit.falk+parent@temporary-mail.net
wilma.falk_06+student@temporary-mail.net
sara.blom_2+parent@temporary-mail.net
pontus.blom+parent@temporary-mail.net
agneta.blom_06+student@temporary-mail.net
cecilia.bengtsson_42+parent@temporary-mail.net
ann-christin.bengtsson+parent@temporary-mail.net
anton.bengtsson_07+student@temporary-mail.net
nina.holmgren+parent@temporary-mail.net
ulrika.holmgren+parent@temporary-mail.net
andreas.holmgren_06+student@temporary-mail.net
ida.bergqvist+parent@temporary-mail.net
rickard.bergqvist_09+student@temporary-mail.net
britt-marie.bjoerk+parent@temporary-mail.net
jakob.bjoerk_08+student@temporary-mail.net
albin.bjoerk_05+student@temporary-mail.net
tommy.bjoerk_08+student@temporary-mail.net
linn.abrahamsson+parent@temporary-mail.net
oliver.abrahamsson+parent@temporary-mail.net
robin.abrahamsson_08+student@temporary-mail.net
andreas.jakobsson+parent@temporary-mail.net
mats.jakobsson+parent@temporary-mail.net
jakob.jakobsson_04+student@temporary-mail.net
louise.jakobsson_09+student@temporary-mail.net
frida.jakobsson_04+student@temporary-mail.net
anita.maartensson+parent@temporary-mail.net
ulrika.maartensson+parent@temporary-mail.net
charlotte.maartensson_07+student@temporary-mail.net
elias.maartensson_03+student@temporary-mail.net
olof.maartensson_09+student@temporary-mail.net
christoffer.danielsson+parent@temporary-mail.net
aake.danielsson+parent@temporary-mail.net
susanne.danielsson_05+student@temporary-mail.net
britt.oeberg+parent@temporary-mail.net
aasa.oeberg_03+student@temporary-mail.net
bo.oeberg_03+student@temporary-mail.net
samuel.oeberg_08+student@temporary-mail.net
aasa.blom+parent@temporary-mail.net
albin.blom_08+student@temporary-mail.net
johanna.mattsson+parent@temporary-mail.net
dennis.mattsson+parent@temporary-mail.net
albin.mattsson_06+student@temporary-mail.net
linnea.paalsson+parent@temporary-mail.net
alexandra.paalsson_09+student@temporary-mail.net
lina.aakesson+parent@temporary-mail.net
gustav.aakesson_09+student@temporary-mail.net
inger.hedlund+parent@temporary-mail.net
william.hedlund_09+student@temporary-mail.net
filip.blomqvist+parent@temporary-mail.net
ida.blomqvist_07+student@temporary-mail.net
tommy.blomqvist_06+student@temporary-mail.net
rickard.blomqvist_05+student@temporary-mail.net
britt-marie.larsson+parent@temporary-mail.net
alice.larsson+parent@temporary-mail.net
mikaela.larsson_05+student@temporary-mail.net
kurt.danielsson+parent@temporary-mail.net
andreas.danielsson_209+parent@temporary-mail.net
oliver.danielsson_06+student@temporary-mail.net
lena.danielsson_05+student@temporary-mail.net
rut.falk+parent@temporary-mail.net
sven.falk+parent@temporary-mail.net
jonas.falk_04+student@temporary-mail.net
rasmus.lindqvist+parent@temporary-mail.net
oskar.lindqvist+parent@temporary-mail.net
max.lindqvist_03+student@temporary-mail.net
ellen.lindqvist_09+student@temporary-mail.net
sofie.lindqvist_09+student@temporary-mail.net
stig.jansson+parent@temporary-mail.net
joakim.jansson_05+student@temporary-mail.net
oskar.paalsson+parent@temporary-mail.net
erika.paalsson+parent@temporary-mail.net
anna.paalsson_07+student@temporary-mail.net
anita.hansen+parent@temporary-mail.net
emilia.hansen+parent@temporary-mail.net
william.hansen_07+student@temporary-mail.net
pernilla.gustafsson+parent@temporary-mail.net
hans.gustafsson+parent@temporary-mail.net
erik.gustafsson_06+student@temporary-mail.net
mohamed.jonasson+parent@temporary-mail.net
felicia.jonasson_05+student@temporary-mail.net
isak.nilsson+parent@temporary-mail.net
joakim.nilsson_03+student@temporary-mail.net
ann-christin.lundgren+parent@temporary-mail.net
maria.lundgren+parent@temporary-mail.net
berit.lundgren_05+student@temporary-mail.net
helena.jakobsson+parent@temporary-mail.net
sandra.jakobsson_07+student@temporary-mail.net
stefan.andersson+parent@temporary-mail.net
joergen.andersson_07+student@temporary-mail.net
kjell.andersson_09+student@temporary-mail.net
siv.maartensson+parent@temporary-mail.net
lina.maartensson_03+student@temporary-mail.net
lisa.lund+parent@temporary-mail.net
felix.lund+parent@temporary-mail.net
christer.lund_03+student@temporary-mail.net
gunilla.larsson+parent@temporary-mail.net
emma.larsson+parent@temporary-mail.net
kjell.larsson_04+student@temporary-mail.net
robert.bjoerklund+parent@temporary-mail.net
ida.bjoerklund+parent@temporary-mail.net
kevin.bjoerklund_06+student@temporary-mail.net
britt-marie.fransson+parent@temporary-mail.net
rickard.fransson+parent@temporary-mail.net
peter.fransson_09+student@temporary-mail.net
alice.arvidsson+parent@temporary-mail.net
ulf.arvidsson_05+student@temporary-mail.net
karin.abrahamsson+parent@temporary-mail.net
kent.abrahamsson+parent@temporary-mail.net
niklas.abrahamsson_06+student@temporary-mail.net
annika.abrahamsson_09+student@temporary-mail.net
anneli.mattsson+parent@temporary-mail.net
eva.mattsson_135+parent@temporary-mail.net
kerstin.mattsson_07+student@temporary-mail.net
ella.lindqvist+parent@temporary-mail.net
elsa.lindqvist_04+student@temporary-mail.net
mattias.lindqvist_09+student@temporary-mail.net
wilma.jansson+parent@temporary-mail.net
moa.jansson_07+student@temporary-mail.net
liam.jansson_09+student@temporary-mail.net
nathalie.mattsson+parent@temporary-mail.net
helena.mattsson+parent@temporary-mail.net
agneta.mattsson_07+student@temporary-mail.net
leif.viklund+parent@temporary-mail.net
britt-marie.viklund+parent@temporary-mail.net
lennart.viklund_03+student@temporary-mail.net
isabelle.claesson+parent@temporary-mail.net
pontus.claesson+parent@temporary-mail.net
caroline.claesson_08+student@temporary-mail.net
gabriel.claesson_07+student@temporary-mail.net
tommy.claesson_03+student@temporary-mail.net
barbro.olsson+parent@temporary-mail.net
ali.olsson+parent@temporary-mail.net
ellen.olsson_03+student@temporary-mail.net
john.johansson+parent@temporary-mail.net
linn.johansson_08+student@temporary-mail.net
susanne.maansson+parent@temporary-mail.net
kent.maansson_07+student@temporary-mail.net
jan.mattsson+parent@temporary-mail.net
bengt.mattsson+parent@temporary-mail.net
sven.mattsson_08+student@temporary-mail.net
joakim.larsson+parent@temporary-mail.net
emma.larsson_04+student@temporary-mail.net
mattias.samuelsson+parent@temporary-mail.net
bjoern.samuelsson_09+student@temporary-mail.net
amanda.nordstroem+parent@temporary-mail.net
linn.nordstroem+parent@temporary-mail.net
ann.nordstroem_06+student@temporary-mail.net
ebba.sjoeberg+parent@temporary-mail.net
mikaela.sjoeberg_07+student@temporary-mail.net
joakim.nordstroem+parent@temporary-mail.net
jonas.nordstroem+parent@temporary-mail.net
dennis.nordstroem_03+student@temporary-mail.net
emilia.bergqvist+parent@temporary-mail.net
karl.bergqvist+parent@temporary-mail.net
viktor.bergqvist_07+student@temporary-mail.net
malin.bergqvist_05+student@temporary-mail.net
ali.bergqvist_04+student@temporary-mail.net
edvin.nordstroem+parent@temporary-mail.net
jessica.nordstroem+parent@temporary-mail.net
mohamed.nordstroem_07+student@temporary-mail.net
therese.andersson+parent@temporary-mail.net
linn.andersson+parent@temporary-mail.net
mikael.andersson_04+student@temporary-mail.net
linn.jonasson+parent@temporary-mail.net
sonja.jonasson_07+student@temporary-mail.net
ella.bengtsson+parent@temporary-mail.net
filip.bengtsson+parent@temporary-mail.net
jakob.bengtsson_08+student@temporary-mail.net
hanna.hedlund+parent@temporary-mail.net
christian.hedlund_05+student@temporary-mail.net
frida.hedlund_03+student@temporary-mail.net
stefan.hedlund_06+student@temporary-mail.net
leo.sjoeberg+parent@temporary-mail.net
marcus.sjoeberg+parent@temporary-mail.net
simon.sjoeberg_05+student@temporary-mail.net
magnus.wikstroem+parent@temporary-mail.net
thomas.wikstroem_09+student@temporary-mail.net
goeran.wikstroem_04+student@temporary-mail.net
gun.wikstroem_04+student@temporary-mail.net
pontus.larsson+parent@temporary-mail.net
emilia.larsson+parent@temporary-mail.net
helena.larsson_09+student@temporary-mail.net
simon.forsberg+parent@temporary-mail.net
alexandra.forsberg+parent@temporary-mail.net
alva.forsberg_08+student@temporary-mail.net
agnes.joensson+parent@temporary-mail.net
helen.joensson+parent@temporary-mail.net
louise.joensson_06+student@temporary-mail.net
ellen.bergqvist_639+parent@temporary-mail.net
lena.bergqvist_04+student@temporary-mail.net
ebba.dahlberg+parent@temporary-mail.net
helena.dahlberg+parent@temporary-mail.net
amanda.dahlberg_04+student@temporary-mail.net
jan.paalsson+parent@temporary-mail.net
elsa.paalsson_04+student@temporary-mail.net
martin.paalsson_07+student@temporary-mail.net
ebba.paalsson_04+student@temporary-mail.net
oskar.jonasson+parent@temporary-mail.net
per.jonasson+parent@temporary-mail.net
julia.jonasson_08+student@temporary-mail.net
maria.jansson+parent@temporary-mail.net
bjoern.jansson_09+student@temporary-mail.net
emma.nyberg+parent@temporary-mail.net
joakim.nyberg+parent@temporary-mail.net
simon.nyberg_05+student@temporary-mail.net
oskar.sjoegren+parent@temporary-mail.net
yvonne.sjoegren+parent@temporary-mail.net
ann-marie.sjoegren_06+student@temporary-mail.net
lisa.olsson+parent@temporary-mail.net
louise.olsson+parent@temporary-mail.net
linda.olsson_06+student@temporary-mail.net
bengt.sandberg+parent@temporary-mail.net
oliver.sandberg+parent@temporary-mail.net
john.sandberg_05+student@temporary-mail.net
moa.ahmed+parent@temporary-mail.net
ellen.ahmed_09+student@temporary-mail.net
stella.svensson@truthfinderlogin.com
loke.aaberg@truthfinderlogin.com
william.bjoerk@truthfinderlogin.com
carljohan.holmgren@truthfinderlogin.com
yonis.nilsson@truthfinderlogin.com
\.

-- phone
\! echo 'Insert into Phone..';
COPY phone (phone_number, phone_type) FROM stdin;
08-1692962	home
079-5814922	work
08-5768979	home
070-5401429	work
08-5461688	home
071-8063351	work
08-7615448	home
078-5641601	work
08-2461722	home
073-7633683	work
08-7460986	home
079-7390039	work
08-3384886	home
076-2275154	work
08-1308590	home
077-2797934	work
08-7922783	home
077-3039763	work
08-9384488	home
071-2797685	work
08-8230524	home
076-7815929	work
08-2616104	home
071-6766200	work
08-1616255	home
075-4171759	work
08-2154439	home
072-6387635	work
08-5384387	home
078-4512315	work
08-2769087	home
076-2883069	work
08-5076989	home
075-7869444	work
08-2000101	home
073-7605369	work
08-9307761	home
071-7213496	work
08-4769337	home
072-6091032	work
08-6615442	home
079-5859047	work
08-9230216	home
076-8397455	work
08-1923793	home
071-8876797	work
08-4615251	home
070-2402416	work
08-3077544	home
071-9725935	work
08-8922385	home
070-1297891	work
08-8691991	home
078-6434185	work
08-4692050	home
077-1189246	work
08-2461905	home
077-9268265	work
08-5077399	home
077-8485383	work
08-5307389	home
074-9779744	work
08-8384519	home
074-1840378	work
08-9615232	home
076-5279269	work
08-4922934	home
079-8977403	work
08-8615290	home
076-7195853	work
08-8769296	home
079-9766744	work
08-2231421	home
070-7524674	work
08-9153312	home
072-3887061	work
08-8846281	home
073-6984115	work
08-2922939	home
076-7483290	work
08-1846711	home
077-8091082	work
08-1307727	home
073-9740774	work
08-2077702	home
070-1730096	work
08-7922360	home
070-2232743	work
08-1769657	home
078-1603970	work
08-8307595	home
073-8481874	work
08-8845581	home
073-9675956	work
08-3769885	home
076-5294025	work
08-2230641	home
075-5336163	work
08-4845855	home
075-5135510	work
077-8335057	work
072-2650283	work
08-6000229	home
074-3287329	work
074-8712574	work
08-1692696	home
070-2397268	work
08-3000696	home
070-6868682	work
077-3092323	work
08-8614944	home
074-4167277	work
08-6230297	home
071-1557722	work
078-8329885	work
08-2077262	home
072-1007666	work
08-5923458	home
071-9607104	work
08-3462159	home
075-5348544	work
08-6308081	home
076-7219514	work
08-4769633	home
071-5537909	work
08-8461075	home
076-7694262	work
08-4846095	home
078-3529442	work
078-1547255	work
08-3692723	home
076-6426151	work
070-3612761	work
08-9153685	home
076-5497256	work
076-4273670	work
08-2769949	home
077-4109104	work
08-7538104	home
075-3529948	work
072-8816885	work
08-7692386	home
077-8940901	work
074-1100643	work
08-1307707	home
073-5687693	work
074-1309529	work
08-3384479	home
079-9486689	work
08-5077029	home
079-7998749	work
071-4072730	work
08-4538647	home
070-7793579	work
075-6123285	work
08-3922951	home
070-1375751	work
072-3070517	work
08-8845618	home
070-8188987	work
08-2769273	home
075-5882771	work
08-6537992	home
076-7715192	work
071-9098708	work
08-2307763	home
072-2058133	work
08-8614977	home
076-5594068	work
074-5129078	work
08-2384724	home
078-4109374	work
075-3629244	work
08-2077086	home
076-5771387	work
075-7453821	work
08-3615510	home
071-8147598	work
078-4860429	work
08-8691981	home
071-5078355	work
08-2308332	home
074-5693468	work
08-2692711	home
078-5772384	work
079-1868277	work
08-7768521	home
079-4490662	work
070-6094398	work
08-3923504	home
077-6992576	work
076-8647256	work
08-2462018	home
073-8223967	work
08-7384321	home
079-6435640	work
076-5597437	work
08-1769331	home
073-2850180	work
08-9306815	home
072-8243671	work
077-8573139	work
08-8076245	home
070-9340371	work
08-5461404	home
079-9343542	work
079-4413944	work
08-2769177	home
074-5607389	work
08-1385031	home
077-1519711	work
070-5668870	work
08-1692279	home
070-5248807	work
08-6461756	home
075-6756102	work
08-3308110	home
073-6475893	work
071-5748835	work
08-4768840	home
076-9150379	work
072-3745616	work
08-4154307	home
070-3514063	work
074-1982796	work
08-9922511	home
070-9733152	work
08-2231284	home
074-8413335	work
077-8844938	work
08-2000127	home
074-6609622	work
08-5846570	home
074-7033861	work
08-2615264	home
076-4555074	work
08-8845338	home
070-5675923	work
08-6845827	home
076-4681258	work
08-6076907	home
071-7862585	work
073-7632075	work
08-3000050	home
076-4836835	work
08-7307796	home
070-9228014	work
08-4385174	home
071-7255119	work
078-2391031	work
08-5461471	home
072-5359154	work
08-1769368	home
072-7948679	work
08-9461134	home
075-8087014	work
08-9845832	home
078-8323669	work
074-9966642	work
08-6307504	home
072-1301017	work
08-5230725	home
078-1472564	work
076-6098699	work
08-6153452	home
076-9655714	work
076-3239433	work
08-7307047	home
070-2738171	work
078-2169292	work
08-2692725	home
075-5409412	work
08-8076928	home
075-4779492	work
08-1230882	home
079-1373906	work
08-6230697	home
072-3316997	work
070-3512967	work
08-9384165	home
071-7340505	work
08-8922965	home
078-1004705	work
074-3306028	work
08-7461752	home
074-1538462	work
073-3590893	work
08-6077040	home
073-7160302	work
08-7076636	home
074-1038753	work
075-8996748	work
08-7692359	home
071-4887744	work
08-9999013	home
070-6770205	work
08-9614500	home
078-4113463	work
079-3192028	work
08-7768577	home
070-1231427	work
08-9538401	home
071-3342929	work
071-4823096	work
08-1770060	home
073-1720560	work
077-7541285	work
08-7999318	home
077-2052435	work
08-4999571	home
074-9803141	work
08-8076652	home
078-5466414	work
070-2343753	work
08-6230471	home
073-8256050	work
079-5222512	work
08-4922644	home
070-5526675	work
077-9604263	work
08-5692781	home
072-1155793	work
073-1035129	work
08-4539060	home
074-9625369	work
08-9538281	home
073-8344970	work
08-5153423	home
075-2973403	work
072-3358855	work
08-9307035	home
075-5932214	work
08-8307123	home
075-4923080	work
08-8922668	home
076-8512818	work
08-9922378	home
070-2639403	work
071-8524544	work
08-1154768	home
076-9165112	work
071-1334985	work
08-8076152	home
079-1853021	work
076-6532639	work
08-8307329	home
074-1229398	work
073-5537416	work
08-7153977	home
078-3077995	work
075-6564763	work
08-3077401	home
072-1023864	work
08-8230154	home
075-1592349	work
08-3154115	home
076-8944831	work
08-2846534	home
073-3784994	work
073-8613602	work
08-1846561	home
073-9638440	work
08-5845874	home
070-3453308	work
08-3077407	home
076-2841981	work
08-1692386	home
079-2596132	work
076-4621044	work
08-6922497	home
077-3593250	work
08-4846475	home
074-3650305	work
08-8999760	home
075-6564571	work
08-2230858	home
079-8638969	work
074-5749118	work
08-9230093	home
078-1145361	work
071-7420843	work
08-2153770	home
070-9727810	work
08-4845945	home
077-9636044	work
08-8538139	home
071-6832691	work
08-1461550	home
070-9586853	work
078-2527417	work
08-9230546	home
078-3162282	work
076-3309447	work
08-2308029	home
074-2900988	work
073-3889831	work
08-2000147	home
076-5132508	work
076-2603317	work
08-3385049	home
078-4129739	work
08-6231017	home
078-9258285	work
08-8999873	home
079-9123291	work
08-8461271	home
075-2953514	work
08-8076748	home
079-9283179	work
073-2477608	work
08-3000566	home
079-1014561	work
08-9307218	home
072-2849212	work
077-2332708	work
08-1385471	home
073-6950864	work
08-1538803	home
071-1001768	work
079-5887607	work
08-6691871	home
073-4513719	work
08-1231562	home
075-4482692	work
070-1954563	work
08-7999917	home
077-4861567	work
079-5714195	work
08-3999919	home
071-3748034	work
08-3000063	home
078-4662970	work
074-8304115	work
08-2692325	home
076-4834998	work
079-1383156	work
08-9922984	home
072-7192352	work
08-5153473	home
076-1720622	work
08-7460859	home
071-1659777	work
077-2146953	work
08-2230991	home
079-5393818	work
072-1333806	work
08-8922582	home
074-3161021	work
071-1567062	work
08-8537872	home
072-4359188	work
08-2231094	home
078-3115589	work
08-5614914	home
078-6514631	work
08-4077243	home
074-9235828	work
077-6237853	work
08-4769427	home
071-8034662	work
070-6977124	work
08-6307151	home
076-9812781	work
077-6464221	work
08-3307877	home
072-9024415	work
071-6212945	work
08-7230941	home
070-4742261	work
08-9691464	home
078-5875084	work
073-6762114	work
08-3231470	home
070-4389003	work
08-2692991	home
074-1197367	work
08-9230047	home
072-7253242	work
073-6302785	work
08-2539205	home
075-9022262	work
08-1846302	home
075-6819542	work
073-2257962	work
08-3999832	home
073-9351392	work
08-8076935	home
070-3895284	work
08-6691778	home
078-6891582	work
08-4230499	home
077-5539831	work
08-3231183	home
071-5919608	work
08-3230897	home
078-1306381	work
08-6768822	home
078-1839135	work
077-5620027	work
08-9768818	home
079-4291719	work
072-2261321	work
08-2384614	home
073-8432165	work
08-7768777	home
076-5679263	work
074-4594686	work
08-1923789	home
071-9824091	work
08-4846045	home
078-1813354	work
073-6769473	work
08-6461453	home
072-6866546	work
079-1653539	work
08-6537929	home
071-2287340	work
071-5506776	work
08-8077108	home
072-7258335	work
071-3898905	work
08-3153835	home
071-6189350	work
08-3769722	home
075-7846449	work
08-7000205	home
076-2946639	work
071-3511677	work
08-9692236	home
073-4713482	work
078-4064670	work
08-7000112	home
073-1741628	work
072-9196489	work
08-3000139	home
073-4509678	work
079-9992541	work
08-6385002	home
076-8185755	work
076-8825103	work
08-9153143	home
078-1786810	work
08-9845742	home
075-3209767	work
078-9056007	work
072-8279241	work
08-5999573	home
072-9171607	work
08-9461094	home
077-5933911	work
070-1183704	work
08-9153352	home
078-7903420	work
075-1350887	work
08-8691948	home
070-2639035	work
08-5153840	home
077-6993497	work
079-8329533	work
08-8307569	home
073-2499814	work
08-2462188	home
077-3849717	work
08-3846289	home
071-5032364	work
071-3834336	work
08-9768875	home
072-2532482	work
076-6235027	work
08-5615213	home
077-9076534	work
077-5561061	work
08-6538565	home
079-6213469	work
08-5307309	home
075-4481898	work
078-3172194	work
08-7538554	home
075-6350734	work
08-6999589	home
079-4691147	work
08-7922776	home
077-4735161	work
079-3322854	work
08-6691718	home
071-5012669	work
077-6426304	work
08-1693175	home
076-5247706	work
070-2440024	work
08-1385238	home
075-4072360	work
078-3490845	work
08-7692269	home
077-7884575	work
072-2474474	work
08-1923413	home
072-5088034	work
073-4583927	work
08-1154388	home
070-8979052	work
08-7922679	home
078-1358979	work
074-9656122	work
08-9691790	home
072-7732102	work
08-8922299	home
072-4270763	work
08-5692731	home
071-7530325	work
077-7738137	work
08-6615066	home
076-9172167	work
075-8250193	work
08-7076863	home
074-5454988	work
070-3045421	work
08-2770013	home
072-9342997	work
08-1923909	home
071-2033105	work
079-5407168	work
08-1616001	home
072-9729680	work
08-6461470	home
073-3171102	work
079-6945139	work
08-3615573	home
075-5000623	work
08-8692071	home
072-3389702	work
08-8153490	home
075-5488622	work
075-8881778	work
08-2307696	home
078-5372018	work
078-6328249	work
08-4000341	home
079-1968570	work
077-5198236	work
08-4308266	home
079-5987170	work
08-4538640	home
074-2463341	work
08-6307754	home
070-7700976	work
08-1231532	home
079-7754377	work
08-8691491	home
071-3037264	work
071-2881415	work
08-8999717	home
074-5200472	work
071-5112727	work
08-4230962	home
071-5071096	work
08-4692436	home
071-1163865	work
075-1479340	work
08-3230820	home
077-7553475	work
08-7077102	home
071-5107853	work
08-3846120	home
072-2326342	work
08-1385431	home
079-5483385	work
076-5470615	work
08-6538338	home
072-2789844	work
074-4057450	work
08-4615128	home
071-6125516	work
076-5068683	work
08-9384119	home
078-7460649	work
08-8384040	home
073-4412743	work
073-8421682	work
08-9152993	home
075-9414134	work
072-3513311	work
08-7691673	home
075-3061776	work
073-5164714	work
08-4153641	home
071-6157219	work
074-1740314	work
08-8768736	home
071-5361666	work
074-5613660	work
08-8615420	home
078-9906260	work
08-7384031	home
070-7717450	work
08-6230361	home
075-8827059	work
08-2538789	home
071-3938904	work
08-9384335	home
077-4501611	work
08-1461829	home
072-5150580	work
08-8922848	home
078-6586106	work
08-4691936	home
076-7303155	work
08-9999359	home
076-6052381	work
079-5769284	work
08-5230668	home
072-5126832	work
074-2533928	work
08-3154098	home
075-5881598	work
08-3077081	home
073-7198590	work
071-5734774	work
08-8923081	home
071-6501943	work
08-5384174	home
076-1004824	work
08-4846675	home
077-9034228	work
070-3712760	work
08-1769224	home
073-1815340	work
075-4069805	work
08-1923463	home
079-1512878	work
08-6154065	home
074-3485916	work
08-3230607	home
075-4079531	work
08-1923217	home
078-8380026	work
08-8614757	home
071-3413765	work
071-6376771	work
08-5615806	home
079-5831869	work
072-3728870	work
08-9461250	home
078-1668100	work
08-8154003	home
077-3220128	work
073-2004461	work
08-7076323	home
072-5107098	work
072-5027670	work
08-3154225	home
070-7309997	work
071-5388555	work
08-6692194	home
071-6663932	work
077-4494962	work
08-7000252	home
079-6686275	work
071-6169502	work
071-2123498	work
08-6769504	home
073-9090869	work
08-9769171	home
071-4188571	work
073-3074213	work
08-4692180	home
077-1832737	work
08-2000484	home
072-9639593	work
08-2230891	home
079-4464771	work
08-8384563	home
072-6873040	work
08-7461219	home
070-7210475	work
08-8999400	home
070-8358453	work
077-1376925	work
08-9153173	home
079-5759200	work
072-8231364	work
08-5231098	home
072-7968056	work
074-8858972	work
08-8307306	home
071-9599583	work
071-9269805	work
08-2077096	home
079-4639380	work
075-7523912	work
08-6923034	home
073-4293690	work
08-4230892	home
074-5508917	work
08-8153823	home
074-4440319	work
074-3899495	work
08-4538724	home
074-2238124	work
070-9203378	work
08-6691848	home
072-7868923	work
08-9076874	home
078-2018044	work
073-6159187	work
08-9691350	home
070-5137073	work
08-5615383	home
072-6455393	work
08-2153840	home
070-2790191	work
08-8307689	home
073-2642674	work
079-4123638	work
08-5922632	home
074-5884972	work
070-5030934	work
08-1385158	home
079-5461690	work
08-5230502	home
079-4135032	work
073-7310818	work
08-9692133	home
077-5561867	work
08-9614573	home
074-6610668	work
08-2385223	home
071-3537610	work
08-1615685	home
079-6867906	work
072-6366778	work
08-6538512	home
074-6460142	work
070-9283342	work
08-3922798	home
077-4380808	work
077-8879284	work
08-4692836	home
073-4530483	work
08-3000592	home
070-4739858	work
08-2692205	home
077-9843495	work
08-7153251	home
076-8997295	work
070-8889386	work
08-1154488	home
076-5427408	work
08-7460836	home
077-9015194	work
075-6968370	work
08-3153669	home
076-8531123	work
08-5692112	home
074-8234830	work
08-7615028	home
072-4190510	work
08-8615190	home
074-4936130	work
074-6294011	work
08-4922974	home
073-7773085	work
08-4307443	home
070-7252638	work
072-8078004	work
08-8538372	home
075-1101886	work
08-4769094	home
070-6987054	work
079-6057969	work
08-4461632	home
071-9812421	work
073-9603022	work
08-3692887	home
074-7024319	work
08-5076486	home
071-1811893	work
078-3918432	work
08-1616145	home
072-1695163	work
08-7768811	home
071-8768044	work
071-7961456	work
08-7538560	home
071-2737665	work
08-9614670	home
079-3270365	work
08-3230574	home
074-5993693	work
079-4722018	work
08-7461056	home
073-7285893	work
08-6615083	home
073-4428137	work
073-4072592	work
08-2999850	home
077-2481259	work
08-8461151	home
074-7968187	work
08-8076941	home
070-8566529	work
08-3692374	home
075-2309098	work
076-6593047	work
08-2308196	home
072-5191103	work
08-1770074	home
077-8666971	work
08-8230111	home
070-9412840	work
077-8510649	work
08-7077236	home
073-1874506	work
070-9836061	work
08-5077369	home
076-4964857	work
073-1121376	work
08-9461520	home
076-8432329	work
08-3615446	home
077-8763335	work
072-3006362	work
08-1538730	home
076-2363562	work
076-7507176	work
08-9153812	home
077-2112761	work
08-1462442	home
071-4410514	work
08-5308018	home
072-8640623	work
08-4923237	home
079-1842802	work
070-4642605	work
08-4385158	home
071-4558694	work
08-2385356	home
074-1229475	work
08-3307634	home
073-9856337	work
08-9384142	home
070-7450504	work
079-8429861	work
08-8846127	home
072-9742982	work
079-7984382	work
08-9306895	home
079-4348837	work
08-9383859	home
070-4883631	work
078-9213790	work
08-2769660	home
077-9368355	work
08-1154218	home
077-1416238	work
08-4846165	home
079-5235106	work
072-6435047	work
08-9229920	home
071-9812746	work
075-6142632	work
08-3307501	home
077-1817586	work
071-1948097	work
08-7538297	home
078-7605026	work
08-2769973	home
074-2345424	work
08-5922538	home
071-2281901	work
08-1076997	home
078-8358153	work
08-2846057	home
072-4775345	work
08-8845891	home
075-3830091	work
075-4091773	work
08-5461741	home
071-9313620	work
08-5999963	home
072-4342964	work
071-9323366	work
08-5307516	home
079-8539621	work
077-4433141	work
08-3000259	home
071-9825270	work
08-3384929	home
077-6854078	work
070-8649544	work
08-4000312	home
070-4762747	work
070-3608853	work
08-3615213	home
077-7556500	work
08-4769696	home
072-3343629	work
079-1467893	work
08-7769087	home
079-4739492	work
08-1077336	home
078-7548942	work
074-6784539	work
08-8692098	home
074-7846843	work
076-9012150	work
08-6846186	home
073-2488115	work
08-9768635	home
071-6856505	work
077-1056649	work
08-2308532	home
074-1793011	work
071-1615325	work
08-7307607	home
079-1016978	work
08-8154016	home
074-3333772	work
08-5307689	home
078-6408084	work
08-7923132	home
074-5496002	work
08-5768836	home
079-6889367	work
076-9799597	work
08-5769595	home
071-5792642	work
073-2737968	work
08-7461479	home
072-3513225	work
08-5615866	home
077-7321601	work
078-3861339	work
08-7154011	home
078-8145627	work
08-1462302	home
078-2421055	work
076-3714055	work
08-9922118	home
071-2000518	work
08-2076936	home
070-3981752	work
08-5461877	home
070-1165197	work
079-4820859	work
08-5769099	home
075-6982450	work
076-5545061	work
08-3461427	home
072-2570686	work
08-3692517	home
075-8801526	work
071-1603982	work
08-3692797	home
074-4374280	work
08-8154033	home
073-5147306	work
077-7019027	work
08-6461137	home
070-3182201	work
08-1154481	home
070-7445631	work
08-8230401	home
072-8030172	work
074-5814176	work
08-1769321	home
071-6227270	work
08-9922331	home
079-3459633	work
073-3846120	work
074-9604932	work
08-4768970	home
070-1365091	work
078-1284074	work
08-6999955	home
070-3422572	work
08-7076999	home
073-7873726	work
077-3555643	work
08-8922345	home
079-5810572	work
08-1693145	home
077-5929541	work
08-6461786	home
078-6566125	work
08-4000645	home
077-5233407	work
08-9230133	home
075-2854263	work
08-1154288	home
073-7437372	work
08-1615878	home
072-4040708	work
079-9294426	work
08-2615294	home
076-7911697	work
08-3769525	home
071-6883835	work
08-9692073	home
070-3559944	work
08-2999823	home
079-2925921	work
08-9000023	home
076-9624834	work
08-9845905	home
079-3988744	work
08-1693005	home
074-9642312	work
070-3839945	work
08-1308433	home
071-6396566	work
075-5085516	work
08-1231698	home
078-9148543	work
08-9383986	home
071-3035540	work
073-3803627	work
08-8999307	home
075-1903154	work
072-3619478	work
08-7692083	home
073-5066619	work
08-8230594	home
079-6268591	work
078-1214720	work
08-9461234	home
078-9675387	work
071-4263551	work
08-2692122	home
071-8797231	work
076-1213806	work
08-2692881	home
077-8659833	work
08-5691855	home
073-3550786	work
08-1693159	home
074-2521854	work
076-8313378	work
08-4615188	home
078-1289338	work
071-5119671	work
08-5768703	home
070-6944967	work
070-5004537	work
08-7384880	home
075-8770991	work
08-9384368	home
076-2012118	work
08-3692627	home
073-5703286	work
073-5628611	work
08-8000187	home
079-9166476	work
076-2812972	work
08-8153693	home
077-4981312	work
08-6000093	home
077-7635983	work
08-4539010	home
078-5860817	work
075-5082577	work
08-2153856	home
079-8566307	work
070-4720360	work
08-5461258	home
071-6103753	work
074-3589712	work
08-6769218	home
072-9863949	work
075-1192483	work
08-6230314	home
073-8050595	work
08-1462369	home
079-4037962	work
08-4846605	home
074-2447243	work
073-9828898	work
08-5384417	home
074-8881040	work
072-4815916	work
08-2923588	home
077-4701957	work
076-2383165	work
08-4539013	home
073-6474935	work
074-8416153	work
08-6384599	home
076-9500309	work
08-5461321	home
079-8251546	work
08-9538144	home
070-3039235	work
074-9337774	work
08-8999680	home
070-6177355	work
08-6384183	home
075-8317243	work
08-1538484	home
071-8371875	work
08-7000088	home
076-6634846	work
08-5769259	home
076-7018875	work
071-3983537	work
08-4231212	home
071-8222984	work
076-5704720	work
08-6307395	home
072-8282154	work
079-4632973	work
08-3539094	home
078-7162602	work
072-9965079	work
08-9922358	home
070-8030251	work
08-2692874	home
074-4206287	work
078-6588518	work
08-7768607	home
070-6856657	work
078-4648668	work
08-2461938	home
078-7031509	work
078-1271763	work
08-4462135	home
074-8096751	work
08-3538192	home
073-2242053	work
08-1769900	home
075-5307582	work
074-3914934	work
074-2624220	work
08-2461562	home
071-1761010	work
08-5922878	home
077-6260832	work
08-7846019	home
070-1657641	work
074-6642456	work
08-6153632	home
077-5676599	work
071-1774443	work
08-2846377	home
073-2156460	work
075-1927671	work
08-1077416	home
070-9142623	work
071-1362102	work
08-3538555	home
077-9676108	work
08-8846151	home
076-7489611	work
070-8683535	work
08-9845256	home
076-6983382	work
079-6464732	work
08-9922864	home
075-4247177	work
08-4153601	home
070-2886443	work
08-8614890	home
077-5699830	work
074-8272825	work
08-2000194	home
079-6615568	work
070-1355941	work
08-6615755	home
073-7634355	work
073-5113396	work
08-2538316	home
070-6533564	work
072-6945076	work
08-7307530	home
071-5007999	work
08-8229994	home
078-1353905	work
08-4384788	home
077-7058977	work
078-7474390	work
08-3077681	home
076-8924961	work
08-4231019	home
077-5389185	work
08-5769266	home
071-2651801	work
074-3304008	work
08-3768992	home
079-5229271	work
08-2153953	home
079-6142611	work
077-6907007	work
08-7307054	home
074-4569254	work
070-4775451	work
08-3000702	home
077-1409841	work
078-2962266	work
08-5307542	home
076-4052408	work
072-4537928	work
08-7768967	home
077-8180599	work
08-9307464	home
079-5421281	work
071-5826723	work
08-8538265	home
076-1149967	work
08-2769123	home
077-2031046	work
078-4045984	work
08-8769106	home
070-4826609	work
08-8384426	home
076-6024458	work
077-5644532	work
08-3692167	home
073-9852875	work
076-8616834	work
08-5000204	home
073-5956541	work
077-1864675	work
08-5538956	home
072-4000293	work
08-6461433	home
075-3119157	work
072-9313457	work
08-5154166	home
073-7106680	work
08-8999257	home
076-1190254	work
070-5745824	work
08-1154368	home
079-2005623	work
08-5769502	home
073-3446768	work
077-5389955	work
08-2845997	home
071-2879412	work
072-1893169	work
08-8922762	home
074-8437751	work
072-9342863	work
08-2385260	home
071-7459056	work
077-4214519	work
08-2000394	home
072-8052614	work
08-7230712	home
091-1735185	home
092-2470370	home
093-3205555	home
094-3940740	home
095-4675925	home
\.

-- person
\! echo 'Insert into Person..';
COPY person (address_id, first_name, last_name, birth_date, person_number) FROM stdin;
1	Lisbeth	Bengtsson	1951-10-24	511024-3408
2	Gabriel	Ekström	1988-04-27	880427-8565
3	Wilma	Jönsson	1966-08-01	660801-5126
4	Dennis	Bergström	1983-07-19	830719-6371
5	Lisbeth	Lundström	1961-10-28	611028-5027
6	Lars	Claesson	1969-05-28	690528-3856
7	Per	Axelsson	1960-01-13	600113-7550
8	Agneta	Jansson	1998-12-25	981225-1776
9	Gunnel	Lundberg	1978-03-24	780324-5690
10	Christoffer	Henriksson	1962-03-04	620304-7466
11	Jakob	Fredriksson	1977-07-10	770710-4571
12	Eva	Lundqvist	1959-06-26	590626-9583
13	Leif	Hansen	1964-03-01	640301-9034
14	Erik	Bergman	1990-04-05	900405-9441
15	Mohamed	Gunnarsson	1967-03-25	670325-2079
16	Alva	Viklund	1977-10-16	771016-9934
17	Samuel	Sundberg	1956-12-03	561203-3505
18	Alice	Lindgren	1982-06-23	820623-8134
19	Ludvig	Svensson	1964-03-17	640317-1850
20	Claes	Berggren	1990-10-20	901020-4460
21	Lucas	Hermansson	1997-08-04	970804-6363
22	Adam	Bergström	1983-10-29	831029-8768
23	Lisa	Hermansson	1992-08-19	920819-7369
24	Anette	Eklund	1989-01-14	890114-3472
25	Alexandra	Johansson	1979-07-01	790701-5825
26	Emelie	Sandström	1954-09-16	540916-6732
27	Olof	Ström	1990-06-08	900608-3068
28	Emma	Hellström	1957-11-30	571130-9954
29	Anton	Olsson	1965-08-16	650816-3919
30	Linus	Berglund	1992-04-27	920427-3719
31	Adam	Eliasson	1980-07-23	800723-5453
32	Alice	Hedlund	1962-10-10	621010-8202
33	Samuel	Björklund	1987-09-12	870912-1639
34	Emelie	Åberg	1989-12-11	891211-8083
35	Max	Samuelsson	1958-01-19	580119-1262
36	Barbro	Bergström	1986-08-13	860813-5284
37	Josef	Forsberg	1952-07-20	520720-3984
38	Bengt	Ahmed	1983-03-11	830311-5169
39	Ulf	Forsberg	1963-01-01	630101-6025
40	Hanna	Åström	1994-09-02	940902-9593
41	Kerstin	Forsberg	1995-06-21	950621-1482
42	Pernilla	Hassan	1954-04-11	540411-5940
43	Rut	Åkesson	1977-08-15	770815-5341
44	Lisa	Ekström	1998-11-21	981121-8750
45	Sara	Gunnarsson	1976-08-16	760816-3148
46	Felicia	Blom	1983-12-21	831221-3971
47	Emil	Hedlund	1979-09-26	790926-5170
48	Åke	Eriksson	1954-03-20	540320-4307
49	Karl	Gustafsson	1999-09-29	990929-7625
50	Susanne	Holmberg	1973-03-12	730312-4452
51	Ann	Pettersson	2009-07-14	090714-3176
52	Emil	Olsson	2007-10-04	071004-7069
53	Carina	Henriksson	2008-01-14	080114-3298
54	Ulf	Svensson	2005-06-28	050628-3241
55	Alice	Nordström	2009-10-01	091001-5007
56	Rebecca	Åkesson	2008-11-08	081108-6602
57	Karin	Mohamed	2009-12-17	091217-7441
58	Jakob	Engström	2007-07-15	070715-6592
59	Anette	Björklund	2007-03-10	070310-3010
60	Britt-Marie	Blomqvist	2009-09-28	090928-5488
60	Louise	Blomqvist	2005-11-25	051125-4310
60	Henrik	Blomqvist	2005-04-02	050402-8325
61	Margareta	Hellström	2005-03-06	050306-3521
62	Ulrika	Nyberg	2005-08-10	050810-9063
63	Jimmy	Falk	2008-06-02	080602-2794
64	Gabriel	Axelsson	2004-01-30	040130-2070
65	Hanna	Nyberg	2009-10-05	091005-9245
66	Linus	Persson	2009-10-18	091018-8549
67	Olof	Forsberg	2003-05-15	030515-7786
68	Mikaela	Holmgren	2006-11-11	061111-6419
69	Robert	Åström	2006-10-13	061013-6558
70	Agnes	Nordin	2005-10-27	051027-1810
71	Kerstin	Ström	2006-11-10	061110-8358
72	Jakob	Fredriksson	2009-03-27	090327-6582
73	Nils	Pålsson	2003-03-11	030311-7386
74	Per	Falk	2003-01-04	030104-6926
75	Jenny	Löfgren	2006-10-23	061023-3223
76	Agnes	Bergström	2008-05-13	080513-6801
77	Max	Samuelsson	2008-06-18	080618-9866
78	Sandra	Larsson	2003-05-03	030503-1569
79	Carina	Lundin	2008-10-08	081008-9292
79	Filip	Lundin	2009-12-08	091208-6857
79	Helen	Lundin	2009-03-24	090324-6536
80	Helen	Lundgren	2004-12-08	041208-2760
81	Leif	Berg	2006-06-10	060610-9387
81	Maja	Berg	2003-10-20	031020-6503
82	Anton	Eklund	2008-11-12	081112-3975
83	Charlotte	Wallin	2007-04-13	070413-3966
84	Jessica	Svensson	2006-08-09	060809-8216
85	Pia	Andersson	2005-12-15	051215-7454
86	Patrik	Eklund	2005-09-29	050929-6554
87	Olof	Nordin	2004-03-19	040319-2990
88	Linn	Lundström	2007-06-20	070620-7248
89	Åsa	Nordin	2007-03-08	070308-2669
90	David	Forsberg	2007-07-02	070702-9591
91	Ulrika	Svensson	2003-10-01	031001-6373
92	Christian	Blomqvist	2006-06-06	060606-7338
93	Håkan	Lundgren	2005-11-04	051104-8324
93	Emilia	Lundgren	2009-07-18	090718-9294
93	Ida	Lundgren	2005-05-21	050521-7836
94	Arvid	Lindqvist	2005-09-30	050930-7401
95	Siv	Norberg	2003-05-12	030512-1931
96	Åsa	Martinsson	2006-01-03	060103-4838
97	Lovisa	Öberg	2003-07-29	030729-9560
98	Charlotte	Sjöberg	2007-12-11	071211-2150
99	Birgitta	Söderberg	2008-09-29	080929-5173
100	Karl	Bergman	2006-06-16	060616-3574
101	Eva	Isaksson	2003-11-14	031114-8894
102	David	Månsson	2005-01-29	050129-3153
103	Marie	Ström	2009-03-13	090313-3288
104	Daniel	Lundqvist	2005-12-05	051205-7696
105	Ali	Eklund	2007-04-25	070425-9134
106	Cecilia	Isaksson	2003-01-27	030127-9600
107	Erika	Bengtsson	2004-07-22	040722-8709
108	Isabelle	Jansson	2006-06-26	060626-3101
109	Gustav	Hedlund	2009-09-16	090916-2125
110	Leo	Forsberg	2006-08-03	060803-2900
111	David	Gustafsson	2009-07-08	090708-5070
112	Yvonne	Löfgren	2005-05-15	050515-2330
113	Patrik	Lundberg	2003-04-06	030406-6897
113	Christoffer	Lundberg	2009-05-10	090510-7454
113	Jonas	Lundberg	2003-01-07	030107-4019
114	Leo	Söderberg	2008-04-24	080424-8755
115	Ulrika	Ahmed	2007-05-03	070503-5376
116	Edvin	Ahmed	2008-05-22	080522-5968
117	Josefin	Pettersson	2004-05-02	040502-2963
117	Jesper	Pettersson	2003-12-04	031204-6147
117	Lovisa	Pettersson	2004-12-09	041209-1910
118	Alexandra	Sundström	2008-11-11	081111-7811
118	Jimmy	Sundström	2003-07-03	030703-7853
118	Kristina	Sundström	2005-03-26	050326-9581
119	Gunnar	Bergman	2008-10-18	081018-4861
120	Åke	Isaksson	2006-08-04	060804-8039
121	Henrik	Bengtsson	2007-11-14	071114-8056
122	Adam	Gustafsson	2007-09-09	070909-1276
123	Marianne	Forsberg	2006-09-11	060911-3600
124	Åke	Jonsson	2005-03-06	050306-8322
124	Axel	Jonsson	2004-01-22	040122-9653
124	Camilla	Jonsson	2009-01-14	090114-1739
125	Bengt	Ali	2003-11-28	031128-5894
125	Jessica	Ali	2004-01-08	040108-6764
126	Hanna	Eriksson	2009-12-23	091223-4663
127	Samuel	Danielsson	2008-01-16	080116-4898
128	Emilia	Nilsson	2003-07-04	030704-5740
129	Siv	Strömberg	2008-10-25	081025-3781
130	Peter	Åkesson	2006-03-19	060319-7864
131	Ella	Claesson	2004-06-23	040623-2363
132	Madeleine	Danielsson	2006-07-02	060702-1920
133	Daniel	Hassan	2005-05-01	050501-1098
133	Jonathan	Hassan	2006-01-01	060101-9003
133	Lucas	Hassan	2003-01-28	030128-3529
134	Ali	Sjöberg	2007-01-26	070126-5704
135	Ulf	Lindström	2007-01-08	070108-2521
136	David	Lindqvist	2008-03-22	080322-6661
137	Johan	Åkesson	2007-10-25	071025-8724
138	Anna	Danielsson	2009-11-29	091129-4932
139	Jakob	Viklund	2006-11-23	061123-9419
140	Karin	Sandberg	2005-03-19	050319-4235
140	Moa	Sandberg	2005-12-07	051207-5268
141	Pontus	Isaksson	2005-09-20	050920-8922
142	Frida	Strömberg	2005-07-19	050719-2912
143	Julia	Hedlund	2009-03-17	090317-2351
144	Sofia	Öberg	2005-03-03	050303-4845
144	Moa	Öberg	2006-08-23	060823-8358
144	Frida	Öberg	2008-09-22	080922-1245
145	Robin	Lundqvist	2007-03-01	070301-4175
146	Arvid	Ström	2007-07-16	070716-4679
147	Ella	Danielsson	2008-10-08	081008-1349
148	Agnes	Johansson	2007-03-23	070323-1340
149	Lina	Blom	2006-07-08	060708-7178
150	Björn	Nordström	2009-03-23	090323-9002
150	Siv	Nordström	2006-03-21	060321-5807
150	Oliver	Nordström	2007-03-14	070314-4196
151	Erika	Lundqvist	2003-03-15	030315-9099
152	Lucas	Åström	2004-06-02	040602-5627
153	Olivia	Hermansson	2005-01-07	050107-2557
154	Dennis	Isaksson	2006-05-08	060508-2114
155	Helen	Lundström	2005-01-13	050113-1080
156	Johnny	Isaksson	2003-04-03	030403-8813
157	Maja	Dahlberg	2009-03-02	090302-7506
158	Samuel	Ali	2009-10-22	091022-8766
159	Anneli	Lindgren	2005-11-07	051107-2654
160	Björn	Berglund	2005-10-16	051016-6234
160	Agnes	Berglund	2008-03-07	080307-2735
160	Jakob	Berglund	2007-05-02	070502-2671
161	Birgitta	Abrahamsson	2007-10-25	071025-7338
162	Jesper	Holmgren	2009-06-27	090627-4980
162	Alva	Holmgren	2008-07-15	080715-3739
163	Ebba	Holmgren	2003-01-23	030123-6808
164	Sara	Lindqvist	2004-06-13	040613-8032
165	Ella	Bengtsson	2003-10-26	031026-1540
166	Jessica	Claesson	2003-03-17	030317-3298
166	Ella	Claesson	2006-03-12	060312-6434
167	Simon	Blom	2005-10-11	051011-3293
168	Bengt	Andreasson	2007-07-16	070716-6856
169	Fredrik	Nordin	2004-06-03	040603-6327
170	Berit	Jonsson	2009-09-28	090928-9506
170	Linda	Jonsson	2009-01-23	090123-8683
170	Jessica	Jonsson	2006-01-08	060108-1342
171	Britt-Marie	Jakobsson	2009-04-15	090415-2915
172	Felix	Svensson	2005-09-14	050914-2030
172	Martin	Svensson	2003-09-12	030912-7637
173	Hans	Falk	2005-03-14	050314-4354
174	Erika	Nilsson	2007-10-04	071004-5337
175	Anton	Nyström	2008-05-11	080511-3727
176	Rut	Nilsson	2003-06-12	030612-2839
177	Leo	Dahlberg	2004-03-25	040325-6431
178	Charlotte	Holmberg	2006-01-30	060130-6822
179	Amanda	Claesson	2007-04-07	070407-6975
180	Daniel	Sandström	2006-10-14	061014-2184
181	Max	Berggren	2003-08-19	030819-2384
182	Anton	Björk	2008-12-21	081221-6067
183	Christian	Mohamed	2005-11-05	051105-1831
183	Carina	Mohamed	2004-01-26	040126-1821
183	Ludvig	Mohamed	2009-08-05	090805-2780
184	Per	Viklund	2007-10-26	071026-3708
185	Åsa	Svensson	2008-09-22	080922-9552
186	Erika	Sjögren	2008-07-19	080719-1374
187	Elias	Eklund	2005-09-19	050919-8099
188	Dennis	Abrahamsson	2006-03-09	060309-4061
189	Lisbeth	Fransson	2005-12-12	051212-2763
190	Ellen	Ström	2006-07-08	060708-6790
191	Daniel	Sjögren	2003-10-16	031016-4066
192	Hanna	Ek	2009-03-08	090308-5397
193	Yvonne	Fransson	2009-06-02	090602-9988
194	Kurt	Hassan	2006-01-07	060107-2556
195	Elias	Sjögren	2004-10-01	041001-1530
196	Per	Mattsson	2007-03-21	070321-5327
197	Albin	Engström	2009-05-16	090516-7334
198	Göran	Norberg	2009-11-20	091120-1614
199	Max	Nyberg	2009-12-04	091204-3106
199	Sonja	Nyberg	2005-10-03	051003-6387
200	Adam	Svensson	2006-12-09	061209-7626
201	Gunnar	Månsson	2007-06-28	070628-1532
202	Rebecca	Holmgren	2006-03-27	060327-5041
202	Ann	Holmgren	2009-03-24	090324-3780
203	Viktor	Åberg	2007-07-03	070703-7149
204	Claes	Henriksson	2008-04-13	080413-1738
205	Pia	Forsberg	2008-10-23	081023-9921
206	Tommy	Bergman	2007-11-23	071123-1449
207	Viktor	Holmgren	2009-10-29	091029-9775
208	Carina	Lundgren	2003-05-11	030511-7376
209	Filip	Holmberg	2005-10-29	051029-6940
210	Linus	Lindström	2006-11-13	061113-1236
211	Susanne	Persson	2003-03-22	030322-9785
212	Oliver	Jakobsson	2007-04-29	070429-6425
213	Ann-Christin	Sundberg	2006-03-18	060318-8236
214	Katarina	Arvidsson	2004-01-09	040109-5351
215	Monica	Öberg	2003-12-05	031205-5866
216	Mikael	Engström	2003-03-16	030316-8579
217	Oliver	Berg	2004-04-01	040401-8004
218	Britt-Marie	Björk	2009-12-09	091209-6518
219	Ann	Jansson	2003-07-02	030702-8480
220	Åsa	Sjöberg	2005-12-01	051201-6106
221	William	Lund	2006-09-11	060911-6363
222	Britt	Bengtsson	2003-03-17	030317-3322
222	Anna	Bengtsson	2006-06-17	060617-5024
222	Adam	Bengtsson	2007-10-20	071020-8356
223	Linnéa	Nilsson	2004-09-14	040914-7998
224	Jonathan	Eklund	2009-10-04	091004-2407
224	David	Eklund	2008-12-27	081227-4843
224	Gunnel	Eklund	2003-05-18	030518-1497
225	Sofia	Hansen	2008-08-23	080823-1393
226	Bo	Jonsson	2003-06-19	030619-4036
226	Niklas	Jonsson	2009-03-13	090313-4765
227	Martin	Samuelsson	2004-03-05	040305-8381
18	Ann-Marie	Holmberg	2007-07-03	070703-6463
228	Samuel	Sandström	2007-01-15	070115-6770
229	Rasmus	Lundström	2005-04-10	050410-9661
230	Wilma	Berg	2006-03-03	060303-3747
230	Rebecca	Berg	2005-04-18	050418-8905
231	Rolf	Hassan	2005-08-07	050807-6122
231	David	Hassan	2005-07-02	050702-3059
232	Amanda	Lindström	2003-01-01	030101-3769
233	Lisa	Hellström	2005-10-16	051016-4569
233	Eva	Hellström	2008-01-03	080103-9405
233	Ulrika	Hellström	2007-12-01	071201-6906
234	Lars	Olofsson	2009-10-09	091009-8474
235	Lisa	Mattsson	2005-06-18	050618-9497
236	David	Samuelsson	2004-12-03	041203-5826
236	Axel	Samuelsson	2004-03-20	040320-5164
236	Karin	Samuelsson	2003-12-11	031211-7047
237	Katarina	Wikström	2009-12-02	091202-6093
238	Pernilla	Blom	2005-05-25	050525-1611
238	Ella	Blom	2004-12-28	041228-2378
238	Lucas	Blom	2006-07-10	060710-7760
239	Johnny	Berggren	2005-05-12	050512-1897
240	John	Bergqvist	2006-09-16	060916-1013
241	Alice	Sundberg	2005-04-30	050430-2340
242	Jessica	Isaksson	2003-03-27	030327-7628
243	Axel	Ekström	2007-12-01	071201-7839
244	Marcus	Holmgren	2003-06-19	030619-5611
245	Pontus	Öberg	2006-11-15	061115-6670
245	Claes	Öberg	2009-11-01	091101-6285
245	Anders	Öberg	2005-05-18	050518-7971
246	Madeleine	Andreasson	2007-06-05	070605-5944
246	Jörgen	Andreasson	2007-12-28	071228-3977
246	Amanda	Andreasson	2004-11-27	041127-4442
247	Gustav	Bergström	2007-11-07	071107-1787
247	Anette	Bergström	2008-09-04	080904-4118
247	Isak	Bergström	2006-01-23	060123-9460
248	Olof	Isaksson	2007-05-25	070525-6824
249	Olle	Strömberg	2006-03-05	060305-7670
250	Gabriel	Wikström	2004-10-15	041015-9602
251	Jörgen	Claesson	2004-06-17	040617-1405
252	Claes	Eliasson	2009-09-08	090908-7116
253	Joakim	Hedlund	2009-07-08	090708-9940
254	Birgitta	Jansson	2006-12-14	061214-7231
255	Leo	Sandström	2009-04-11	090411-2695
256	Marcus	Sjögren	2006-05-05	060505-6159
257	Björn	Blom	2005-06-17	050617-6569
258	Filip	Lind	2003-11-17	031117-2076
259	Christer	Eliasson	2008-04-24	080424-4721
260	Joel	Blom	2008-07-21	080721-7591
261	Olivia	Eklund	2009-08-25	090825-8643
261	Emilia	Eklund	2007-10-20	071020-5527
261	Bo	Eklund	2003-07-01	030701-3128
262	Gun	Lindberg	2009-10-10	091010-4355
263	Olof	Sandberg	2005-07-19	050719-5717
263	Åsa	Sandberg	2004-10-02	041002-4657
263	Kerstin	Sandberg	2006-11-06	061106-5350
264	Siv	Blom	2007-07-26	070726-7993
265	Ulrika	Hellström	2009-12-17	091217-8597
266	Linus	Falk	2003-05-06	030506-3547
267	Linus	Hermansson	2007-06-04	070604-8295
268	Alice	Danielsson	2004-03-19	040319-3980
269	Elias	Axelsson	2007-06-05	070605-5589
269	Christian	Axelsson	2008-03-22	080322-9392
270	Maja	Gunnarsson	2006-12-05	061205-9386
271	Nina	Lund	2006-07-11	060711-1010
272	Emma	Blom	2006-05-19	060519-9934
273	Roger	Holmberg	2009-05-23	090523-7384
274	Henrik	Larsson	2005-12-29	051229-2145
275	Jessica	Lindqvist	2008-08-19	080819-9699
275	Maja	Lindqvist	2004-01-29	040129-6454
276	Kristina	Öberg	2009-09-12	090912-5817
277	Jimmy	Strömberg	2004-03-16	040316-1789
278	Birgitta	Björk	2009-03-07	090307-4961
279	Åsa	Norberg	2006-03-15	060315-2885
280	Ella	Johansson	2004-03-03	040303-7260
281	Joakim	Ström	2009-01-08	090108-7981
282	Siv	Eliasson	2005-07-13	050713-3619
283	Stefan	Nordin	2005-12-11	051211-4554
284	Emelie	Svensson	2004-11-23	041123-9627
285	Therese	Hermansson	2004-12-02	041202-3905
286	Max	Berg	2008-06-19	080619-7117
287	Sebastian	Ekström	2008-09-17	080917-7009
287	Rasmus	Ekström	2006-11-09	061109-4335
287	Emilia	Ekström	2006-12-07	061207-4278
288	Filip	Persson	2003-09-29	030929-1367
288	Emelie	Persson	2003-01-12	030112-4830
288	Kevin	Persson	2006-05-12	060512-2001
289	Birgitta	Mohamed	2008-05-25	080525-8662
290	Linnéa	Engström	2009-10-21	091021-9609
291	Henrik	Eliasson	2006-10-29	061029-8572
292	Ali	Björklund	2009-01-10	090110-7250
292	Agneta	Björklund	2008-11-26	081126-8085
293	Inger	Bergqvist	2006-09-08	060908-1278
294	Lennart	Bergman	2008-01-04	080104-8513
295	Rickard	Ahmed	2007-06-12	070612-5960
296	Sofia	Nyberg	2004-10-10	041010-7601
296	Sven	Nyberg	2008-03-07	080307-9946
297	Roger	Hansson	2004-11-20	041120-5479
298	Agneta	Sjögren	2008-04-16	080416-5322
298	Pia	Sjögren	2006-04-24	060424-1422
298	Anna	Sjögren	2004-05-03	040503-9140
299	Agneta	Bergström	2003-05-24	030524-2307
300	Rebecca	Lindgren	2009-08-21	090821-7250
300	Torbjörn	Lindgren	2004-03-22	040322-3142
301	Lennart	Holm	2007-11-24	071124-9763
301	Ludvig	Holm	2003-05-19	030519-4367
301	Rut	Holm	2004-08-02	040802-1350
302	Annika	Lundström	2006-08-18	060818-1434
303	Ulrika	Falk	2006-07-20	060720-4815
304	Carina	Viklund	2005-03-06	050306-1822
304	Bengt	Viklund	2003-03-23	030323-1468
305	Anton	Gunnarsson	2004-10-23	041023-5089
306	Carina	Jansson	2006-04-30	060430-1168
306	Martin	Jansson	2009-08-05	090805-5916
306	Therese	Jansson	2005-07-23	050723-5141
307	Åke	Claesson	2008-04-21	080421-9327
307	Olivia	Claesson	2008-05-29	080529-7355
308	Maria	Lindström	2004-04-28	040428-3517
309	Tobias	Norberg	2004-03-16	040316-6044
310	Johan	Nordin	2009-07-10	090710-5910
310	Patrik	Nordin	2008-09-14	080914-3845
310	Ebba	Nordin	2008-03-19	080319-9223
311	Mikael	Axelsson	2005-06-30	050630-8956
195	Birgitta	Sandström	2006-08-24	060824-9710
312	Oskar	Abrahamsson	2008-06-07	080607-1924
312	Ulf	Abrahamsson	2003-09-26	030926-9728
312	Lina	Abrahamsson	2004-07-06	040706-2181
313	Magnus	Lundin	2005-04-09	050409-3675
313	Siv	Lundin	2008-08-09	080809-8040
314	Helen	Ali	2009-03-17	090317-7210
314	Ludvig	Ali	2009-05-20	090520-5761
315	Ulf	Henriksson	2005-06-21	050621-3453
315	Anton	Henriksson	2005-12-17	051217-5829
316	Nathalie	Strömberg	2009-09-17	090917-5853
317	Arvid	Holm	2005-12-11	051211-9785
318	Frida	Öberg	2003-04-08	030408-8156
319	Viktor	Nyström	2007-09-30	070930-4190
320	Magnus	Arvidsson	2008-12-08	081208-3293
321	Niklas	Hansen	2009-07-12	090712-5918
322	Mohamed	Karlsson	2004-09-06	040906-9846
323	Johnny	Holm	2009-08-04	090804-2278
323	Ann-Marie	Holm	2005-10-07	051007-8181
324	Tobias	Bergström	2007-04-07	070407-7031
325	Ali	Lindgren	2006-06-06	060606-9987
325	Carina	Lindgren	2007-03-06	070306-8346
325	Lars	Lindgren	2008-06-16	080616-1444
326	Albin	Forsberg	2009-03-16	090316-3657
326	Per	Forsberg	2006-12-27	061227-2690
326	Andreas	Forsberg	2004-05-19	040519-8441
327	Elsa	Olsson	2006-03-11	060311-3754
327	Madeleine	Olsson	2006-10-03	061003-8481
327	Gustav	Olsson	2004-05-14	040514-2415
328	Viktoria	Isaksson	2004-11-17	041117-9211
328	Lisbeth	Isaksson	2008-01-17	080117-9094
328	Lars	Isaksson	2005-06-25	050625-8110
329	Jimmy	Mattsson	2004-03-08	040308-4254
329	Matilda	Mattsson	2006-01-23	060123-7720
329	Alexander	Mattsson	2009-10-01	091001-2871
330	Linus	Karlsson	2007-04-10	070410-8547
331	Olle	Lindqvist	2008-09-27	080927-7957
331	Isabelle	Lindqvist	2006-03-13	060313-3521
331	Mikael	Lindqvist	2008-06-16	080616-3127
332	Jesper	Jakobsson	2003-05-27	030527-1827
333	Emil	Ali	2006-07-13	060713-6470
334	Nathalie	Johansson	2009-03-26	090326-7755
335	Tommy	Holm	2003-09-27	030927-4223
335	Linn	Holm	2005-10-21	051021-4893
336	Håkan	Åström	2006-03-15	060315-1283
337	Alexander	Lind	2006-12-10	061210-3887
338	Fredrik	Andreasson	2004-06-16	040616-5217
338	Helen	Andreasson	2003-11-17	031117-5632
338	Kjell	Andreasson	2003-08-16	030816-2205
339	Martin	Axelsson	2007-03-25	070325-7592
340	Thomas	Lindberg	2006-06-17	060617-9901
341	Agnes	Eklund	2007-07-07	070707-3813
342	Cecilia	Abrahamsson	2009-08-01	090801-7809
343	Jessica	Sjögren	2009-05-27	090527-8354
344	Viktoria	Eliasson	2004-07-27	040727-8746
345	Julia	Samuelsson	2009-08-18	090818-6406
346	Leif	Hansen	2009-12-06	091206-3542
347	Niklas	Holmberg	2008-07-12	080712-1868
348	Lars	Nordin	2008-01-21	080121-9619
349	Tommy	Sjögren	2009-03-14	090314-6108
350	Robert	Olofsson	2004-03-08	040308-6747
350	Göran	Olofsson	2006-03-12	060312-4702
351	Samuel	Berggren	2003-10-02	031002-4534
352	Eva	Karlsson	2009-05-01	090501-5517
353	Hugo	Hassan	2006-10-13	061013-6202
354	Kent	Eriksson	2006-09-01	060901-6449
355	Kurt	Andreasson	2009-01-18	090118-1032
356	Edvin	Olsson	2007-03-06	070306-8577
357	Inger	Månsson	2009-11-23	091123-9630
358	Lovisa	Hassan	2005-11-21	051121-4900
359	Pia	Nordström	2007-09-28	070928-8807
359	Carina	Nordström	2007-09-07	070907-4595
359	Arvid	Nordström	2008-01-19	080119-4143
360	Stig	Berglund	2009-04-06	090406-4979
361	Isak	Lundberg	2008-06-06	080606-2717
362	Christoffer	Berg	2008-10-14	081014-1713
363	Ingrid	Löfgren	2007-12-20	071220-3595
363	Niklas	Löfgren	2005-03-12	050312-7235
363	Sebastian	Löfgren	2005-04-26	050426-9796
364	Per	Åkesson	2004-12-11	041211-2450
364	Nils	Åkesson	2004-05-22	040522-3777
365	Gunnar	Jonsson	2005-03-15	050315-5871
366	Kerstin	Ekström	2009-01-19	090119-1494
367	Joel	Johansson	2005-03-07	050307-1649
368	Viktor	Lundqvist	2008-05-17	080517-4356
369	Ann	Ek	2006-11-13	061113-2267
369	Mikael	Ek	2003-03-22	030322-9611
370	Madeleine	Jonsson	2009-12-04	091204-3767
371	Annika	Åberg	2006-04-09	060409-1462
371	Olle	Åberg	2005-12-15	051215-9922
371	Astrid	Åberg	2009-07-25	090725-7489
372	Madeleine	Åberg	2005-01-19	050119-8428
373	Ingrid	Wallin	2007-01-19	070119-2072
374	Rickard	Svensson	2005-11-04	051104-8340
375	Ulrika	Lind	2005-10-15	051015-6466
376	Viktor	Martinsson	2005-09-03	050903-6208
377	Nathalie	Björk	2006-03-27	060327-6361
378	Oskar	Jansson	2009-10-08	091008-1199
379	Mikael	Söderberg	2006-11-07	061107-1705
380	Ella	Wikström	2008-06-08	080608-8688
381	Yvonne	Håkansson	2007-08-21	070821-4382
381	Olivia	Håkansson	2004-03-09	040309-3347
381	Frida	Håkansson	2005-08-01	050801-3307
382	Rolf	Lundin	2006-09-21	060921-5025
382	Daniel	Lundin	2003-07-26	030726-9092
383	Åke	Wallin	2006-11-08	061108-2538
384	Gunnar	Lundström	2004-08-04	040804-3958
385	Katarina	Lundgren	2009-12-23	091223-3459
386	Agnes	Jonasson	2003-10-16	031016-8851
387	Pernilla	Ekström	2004-03-16	040316-2761
388	Albin	Mårtensson	2004-07-28	040728-5527
388	Tommy	Mårtensson	2006-06-10	060610-7928
389	Albin	Engström	2007-07-21	070721-8772
390	John	Johansson	2006-03-07	060307-8734
391	Ann	Hansson	2003-12-28	031228-4540
392	Barbro	Björklund	2003-07-15	030715-3809
393	Gunnel	Dahlberg	2006-03-21	060321-2440
394	Kristina	Hansen	2008-11-30	081130-4245
395	Hugo	Isaksson	2009-01-19	090119-2054
396	Ulrika	Bengtsson	2007-03-24	070324-1653
397	Ulrika	Bengtsson	2007-11-28	071128-9058
398	Emelie	Karlsson	2009-06-26	090626-6044
399	Albin	Lundin	2009-11-29	091129-6812
400	Henrik	Lindström	2007-12-23	071223-9292
400	Karin	Lindström	2005-10-17	051017-2968
401	Per	Hassan	2009-11-15	091115-6826
402	Felix	Lundgren	2003-03-07	030307-4728
403	Kevin	Lindberg	2006-07-08	060708-3433
404	Ebba	Nyström	2007-11-20	071120-9643
405	Linn	Svensson	2003-07-06	030706-6548
405	Simon	Svensson	2003-11-23	031123-4694
406	Madeleine	Löfgren	2008-07-16	080716-8356
407	Moa	Nordin	2008-09-09	080909-6399
407	Elin	Nordin	2008-01-28	080128-1775
408	Max	Hermansson	2007-01-27	070127-5828
409	Patrik	Fransson	2005-09-29	050929-2025
410	Jan	Sjögren	2007-07-27	070727-8040
411	Gunnar	Lind	2003-12-19	031219-8633
412	Thomas	Ek	2009-10-02	091002-4827
413	Nils	Löfgren	2004-06-15	040615-2207
414	Hans	Bergqvist	2009-11-20	091120-7553
415	Claes	Pettersson	2007-11-28	071128-5114
416	Kerstin	Andreasson	2004-03-05	040305-1436
417	Hugo	Wikström	2003-12-28	031228-4664
418	Erik	Strömberg	2005-09-15	050915-8689
419	Magnus	Lundqvist	2009-03-01	090301-2086
420	Anette	Engström	2008-09-03	080903-5181
421	Kerstin	Wikström	2007-05-04	070504-6670
422	Robert	Magnusson	2008-11-17	081117-3145
422	Carina	Magnusson	2008-09-02	080902-3120
423	Siv	Ekström	2005-11-01	051101-5687
424	Martin	Olofsson	2004-01-30	040130-5180
425	Pernilla	Arvidsson	2003-08-09	030809-9779
426	Kerstin	Hansen	2006-05-19	060519-7623
427	Joel	Olsson	2003-01-15	030115-7285
428	Claes	Hedlund	2008-05-07	080507-1651
429	Henrik	Lund	2008-12-22	081222-3873
430	Emelie	Viklund	2006-09-05	060905-2303
431	Siv	Gunnarsson	2004-03-22	040322-4892
432	Julia	Lindgren	2006-01-21	060121-6872
433	Isabelle	Löfgren	2005-04-13	050413-2325
434	Magnus	Pettersson	2003-08-21	030821-2406
434	Jakob	Pettersson	2004-03-09	040309-6449
434	Klara	Pettersson	2004-11-25	041125-2174
435	Karl	Söderberg	2008-01-08	080108-1969
436	Pontus	Martinsson	2008-08-22	080822-4760
437	Matilda	Bergström	2005-06-23	050623-8039
437	Erika	Bergström	2003-01-09	030109-6517
437	Wilma	Bergström	2007-03-20	070320-7027
47	Dennis	Löfgren	2006-07-05	060705-1588
438	Susanne	Hansen	2006-12-25	061225-9275
438	Lisbeth	Hansen	2009-03-24	090324-7815
439	Nils	Holm	2007-08-26	070826-1953
440	Siv	Axelsson	2006-07-15	060715-5637
440	Sonja	Axelsson	2009-06-25	090625-4545
440	Peter	Axelsson	2009-12-03	091203-6886
441	Simon	Öberg	2007-08-12	070812-3344
442	Ellen	Lundin	2003-04-13	030413-8852
443	Britt	Dahlberg	2009-07-14	090714-4612
443	Fredrik	Dahlberg	2008-12-12	081212-1457
444	Martin	Björk	2007-12-28	071228-5576
445	Mona	Martinsson	2005-12-04	051204-3845
446	Christian	Månsson	2006-03-23	060323-6522
447	Lovisa	Ali	2007-03-13	070313-9147
448	Mohamed	Isaksson	2006-01-05	060105-6484
449	Samuel	Forsberg	2006-03-22	060322-5806
449	Jonas	Forsberg	2003-10-19	031019-3610
450	Sofia	Jonsson	2006-05-05	060505-7652
451	Mona	Ekström	2009-06-04	090604-2668
452	Ulla	Lindgren	2006-01-20	060120-2393
453	Henrik	Jonasson	2009-10-20	091020-8644
454	Mikaela	Nilsson	2009-03-20	090320-1093
455	Joakim	Norberg	2004-09-15	040915-4549
456	Gunnel	Bergqvist	2007-10-24	071024-1480
457	Marianne	Mattsson	2003-06-01	030601-6627
458	Louise	Norberg	2005-09-30	050930-8169
459	Johnny	Hellström	2009-12-03	091203-7397
460	Johnny	Holm	2006-04-07	060407-8642
461	Siv	Nordström	2007-05-02	070502-6292
462	Rasmus	Månsson	2007-05-08	070508-9126
463	Gabriel	Larsson	2006-01-02	060102-9507
464	Kristina	Mohamed	2008-01-09	080109-3600
465	Leif	Gustafsson	2006-08-26	060826-4339
466	Josef	Lund	2007-10-06	071006-9733
467	Karl	Gustafsson	2006-07-14	060714-7246
468	Mats	Bergqvist	2009-08-13	090813-4505
469	Louise	Forsberg	2004-03-20	040320-4225
470	Gabriel	Hedlund	2003-03-04	030304-1917
471	Jonas	Lindgren	2007-07-15	070715-9471
472	Josefin	Lundin	2007-06-09	070609-5528
473	Cecilia	Falk	2003-03-25	030325-4825
473	Mikaela	Falk	2003-08-13	030813-2042
474	Roger	Johansson	2004-07-08	040708-1496
475	Wilma	Falk	2006-06-21	060621-6836
476	Agneta	Blom	2006-11-16	061116-7891
477	Anton	Bengtsson	2007-05-22	070522-2727
478	Andreas	Holmgren	2006-06-13	060613-6562
479	Rickard	Bergqvist	2009-03-19	090319-6269
480	Jakob	Björk	2008-10-19	081019-8648
480	Albin	Björk	2005-10-15	051015-3588
480	Tommy	Björk	2008-01-06	080106-7489
481	Robin	Abrahamsson	2008-12-07	081207-6404
482	Jakob	Jakobsson	2004-11-28	041128-8111
482	Louise	Jakobsson	2009-01-19	090119-1809
482	Frida	Jakobsson	2004-12-24	041224-8379
483	Charlotte	Mårtensson	2007-08-05	070805-6809
483	Elias	Mårtensson	2003-03-21	030321-6915
483	Olof	Mårtensson	2009-05-29	090529-9475
484	Susanne	Danielsson	2005-09-21	050921-2973
485	Åsa	Öberg	2003-09-09	030909-3078
485	Bo	Öberg	2003-09-02	030902-4560
485	Samuel	Öberg	2008-09-16	080916-2258
486	Albin	Blom	2008-06-20	080620-8773
487	Albin	Mattsson	2006-12-18	061218-9696
488	Alexandra	Pålsson	2009-10-13	091013-1945
489	Gustav	Åkesson	2009-04-05	090405-3725
490	William	Hedlund	2009-01-09	090109-5216
491	Ida	Blomqvist	2007-07-28	070728-6837
491	Tommy	Blomqvist	2006-09-28	060928-1274
491	Rickard	Blomqvist	2005-01-23	050123-1526
492	Mikaela	Larsson	2005-11-21	051121-5618
493	Oliver	Danielsson	2006-03-17	060317-3303
493	Lena	Danielsson	2005-08-16	050816-9737
494	Jonas	Falk	2004-03-14	040314-4702
495	Max	Lindqvist	2003-05-05	030505-2268
495	Ellen	Lindqvist	2009-05-02	090502-9427
495	Sofie	Lindqvist	2009-03-24	090324-2659
496	Joakim	Jansson	2005-03-24	050324-6167
497	Anna	Pålsson	2007-12-02	071202-2821
498	William	Hansen	2007-03-22	070322-5458
499	Erik	Gustafsson	2006-12-18	061218-8474
500	Felicia	Jonasson	2005-06-08	050608-4425
501	Joakim	Nilsson	2003-12-06	031206-3878
273	Berit	Lundgren	2005-10-24	051024-2928
502	Sandra	Jakobsson	2007-06-21	070621-6462
503	Jörgen	Andersson	2007-08-09	070809-2754
503	Kjell	Andersson	2009-11-09	091109-4506
504	Lina	Mårtensson	2003-03-12	030312-8847
505	Christer	Lund	2003-07-15	030715-2884
506	Kjell	Larsson	2004-12-28	041228-5173
507	Kevin	Björklund	2006-07-23	060723-4754
508	Peter	Fransson	2009-04-17	090417-6120
509	Ulf	Arvidsson	2005-03-05	050305-3878
510	Niklas	Abrahamsson	2006-09-18	060918-5194
510	Annika	Abrahamsson	2009-08-13	090813-4026
511	Kerstin	Mattsson	2007-04-28	070428-9560
512	Elsa	Lindqvist	2004-05-28	040528-7186
512	Mattias	Lindqvist	2009-11-04	091104-5631
513	Moa	Jansson	2007-01-19	070119-1678
513	Liam	Jansson	2009-01-27	090127-5032
514	Agneta	Mattsson	2007-05-21	070521-4385
515	Lennart	Viklund	2003-03-22	030322-8514
516	Caroline	Claesson	2008-06-11	080611-8022
516	Gabriel	Claesson	2007-08-15	070815-6302
516	Tommy	Claesson	2003-10-26	031026-9055
517	Ellen	Olsson	2003-03-15	030315-1765
518	Linn	Johansson	2008-05-19	080519-8710
519	Kent	Månsson	2007-04-16	070416-7097
520	Sven	Mattsson	2008-05-16	080516-5644
521	Emma	Larsson	2004-04-27	040427-9234
522	Björn	Samuelsson	2009-12-15	091215-8615
523	Ann	Nordström	2006-03-09	060309-6223
524	Mikaela	Sjöberg	2007-05-12	070512-9179
525	Dennis	Nordström	2003-04-15	030415-7514
526	Viktor	Bergqvist	2007-03-04	070304-6029
526	Malin	Bergqvist	2005-03-10	050310-6163
526	Ali	Bergqvist	2004-03-11	040311-6700
527	Mohamed	Nordström	2007-10-19	071019-3814
528	Mikael	Andersson	2004-06-19	040619-7590
529	Sonja	Jonasson	2007-10-26	071026-2924
530	Jakob	Bengtsson	2008-03-11	080311-3521
531	Christian	Hedlund	2005-04-11	050411-2269
531	Frida	Hedlund	2003-03-07	030307-8364
531	Stefan	Hedlund	2006-07-25	060725-1519
532	Simon	Sjöberg	2005-04-12	050412-7382
533	Thomas	Wikström	2009-03-27	090327-3647
533	Göran	Wikström	2004-12-18	041218-7460
533	Gun	Wikström	2004-11-16	041116-2373
534	Helena	Larsson	2009-12-06	091206-2817
535	Alva	Forsberg	2008-05-17	080517-7987
536	Louise	Jönsson	2006-03-06	060306-4478
537	Lena	Bergqvist	2004-05-20	040520-9727
538	Amanda	Dahlberg	2004-04-02	040402-1115
539	Elsa	Pålsson	2004-12-21	041221-9404
539	Martin	Pålsson	2007-12-10	071210-8968
539	Ebba	Pålsson	2004-03-24	040324-6838
540	Julia	Jonasson	2008-10-20	081020-8090
541	Björn	Jansson	2009-12-19	091219-2861
542	Simon	Nyberg	2005-12-01	051201-3848
543	Ann-Marie	Sjögren	2006-10-04	061004-5353
544	Linda	Olsson	2006-05-08	060508-9978
545	John	Sandberg	2005-12-01	051201-6619
546	Ellen	Ahmed	2009-12-17	091217-2616
\.

-- person_email
\! echo 'Insert into Person Email..';
COPY person_email (person_id, email_id) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
15	15
16	16
17	17
18	18
19	19
20	20
21	21
22	22
23	23
24	24
25	25
26	26
27	27
28	28
29	29
30	30
31	31
32	32
33	33
34	34
35	35
36	36
37	37
38	38
39	39
40	40
41	41
42	42
43	43
44	44
45	45
46	46
47	47
48	48
49	49
50	50
51	53
52	56
53	58
54	61
55	63
56	66
57	68
58	70
59	72
60	74
61	75
62	76
63	78
64	80
65	83
66	86
67	89
68	91
69	94
70	97
71	100
72	102
73	105
74	108
75	111
76	113
77	115
78	118
79	120
80	123
81	126
82	127
83	128
84	131
85	134
86	135
87	137
88	139
89	142
90	145
91	148
92	150
93	153
94	155
95	158
96	160
97	163
98	165
99	166
100	167
101	170
102	172
103	174
104	177
105	180
106	183
107	185
108	188
109	190
110	192
111	194
112	196
113	198
114	201
115	203
116	205
117	208
118	210
119	212
120	214
121	215
122	216
123	219
124	221
125	224
126	227
127	228
128	229
129	232
130	233
131	234
132	236
133	238
134	240
135	243
136	245
137	248
138	249
139	250
140	253
141	254
142	256
143	259
144	261
145	263
146	266
147	268
148	271
149	274
150	275
151	276
152	278
153	280
154	283
155	286
156	289
157	292
158	294
159	295
160	297
161	300
162	302
163	304
164	305
165	306
166	308
167	311
168	314
169	317
170	320
171	323
172	324
173	325
174	327
175	329
176	331
177	334
178	336
179	338
180	340
181	343
182	345
183	347
184	348
185	349
186	351
187	354
188	355
189	358
190	360
191	362
192	364
193	365
194	368
195	371
196	374
197	377
198	378
199	379
200	381
201	383
202	384
203	386
204	388
205	391
206	393
207	396
208	398
209	401
210	403
211	406
212	409
213	411
214	412
215	413
216	416
217	419
218	421
219	423
220	426
221	429
222	432
223	434
224	436
225	438
226	441
227	444
228	447
229	450
230	452
231	455
232	456
233	458
234	460
235	463
236	464
237	466
238	469
239	471
240	473
241	475
242	477
243	479
244	481
245	484
246	487
247	489
248	492
249	494
250	497
251	500
252	503
253	506
254	508
255	510
256	513
257	514
258	515
259	518
260	521
261	522
262	523
263	526
264	529
265	530
266	532
267	535
268	537
269	539
270	542
271	543
272	546
273	547
274	549
275	552
276	553
277	554
278	556
279	558
280	561
281	562
282	563
283	566
284	569
285	570
286	571
287	573
288	576
289	578
290	580
291	583
292	586
293	589
294	590
295	591
296	594
297	595
298	596
299	599
300	600
301	601
302	604
303	606
304	609
305	611
306	613
307	616
308	619
309	622
310	624
311	627
312	629
313	632
314	634
315	636
316	637
317	638
318	641
319	644
320	645
321	646
322	649
323	651
324	653
325	655
326	657
327	660
328	661
329	664
330	666
331	669
332	671
333	673
334	675
335	676
336	679
337	682
338	685
339	687
340	690
341	693
342	696
343	699
344	702
345	704
346	706
347	708
348	709
349	710
350	712
351	713
352	714
353	716
354	718
355	720
356	722
357	723
358	726
359	729
360	731
361	734
362	735
363	737
364	739
365	740
366	741
367	744
368	747
369	748
370	750
371	751
372	752
373	754
374	756
375	758
376	759
377	762
378	765
379	766
380	767
381	769
382	770
383	773
384	776
385	779
386	780
387	781
388	784
389	787
390	789
391	790
392	791
393	793
394	794
395	797
396	798
397	800
398	801
399	803
400	805
401	807
402	809
403	812
404	815
405	818
406	821
407	822
408	825
409	827
410	828
411	829
412	831
413	832
414	833
415	836
416	837
417	838
418	841
419	842
420	843
421	845
422	846
423	847
424	850
425	852
426	853
427	854
428	856
429	858
430	861
431	864
432	865
433	867
434	870
435	872
436	873
437	874
438	876
439	878
440	881
441	884
442	887
443	889
444	891
445	893
446	896
447	898
448	901
449	903
450	904
451	906
452	908
453	911
454	913
455	916
456	918
457	921
458	924
459	926
460	927
461	928
462	931
463	933
464	936
465	938
466	939
467	940
468	942
469	943
470	946
471	948
472	951
473	953
474	955
475	956
476	958
477	961
478	962
479	963
480	965
481	967
482	970
483	973
484	976
485	978
486	981
487	984
488	986
489	988
490	989
491	990
492	992
493	993
494	996
495	998
496	1000
497	1002
498	1005
499	1008
500	1009
501	1011
502	1014
503	1016
504	1018
505	1021
506	1024
507	1027
508	1029
509	1031
510	1033
511	1035
512	1037
513	1038
514	1041
515	1043
516	1046
517	1049
518	1051
519	1052
520	1055
521	1058
522	1059
523	1061
524	1064
525	1066
526	1069
527	1072
528	1074
529	1077
530	1080
531	1082
532	1084
533	1086
534	1088
535	1091
536	1094
537	1096
538	1097
539	1100
540	1102
541	1105
542	1107
543	1109
544	1112
545	1115
546	1117
547	1120
548	1122
549	1125
550	1127
551	1128
552	1129
553	1131
554	1134
555	1136
556	1137
557	1138
558	1140
559	1143
560	1144
561	1147
562	1149
563	1150
564	1151
565	1154
566	1156
567	1158
568	1159
569	1161
570	1163
571	1165
572	1167
573	1170
574	1172
575	1173
576	1175
577	1177
578	1179
579	1181
580	1183
581	1186
582	1189
583	1191
584	1194
585	1197
586	1199
587	1202
588	1205
589	1208
590	1210
591	1212
592	1215
593	1218
594	1221
595	1223
596	1225
597	1228
598	1231
599	1233
600	1234
601	1236
602	1239
603	1242
604	1245
605	1248
606	1250
607	1252
608	1253
609	1254
610	1257
611	1260
612	1261
613	1262
614	1265
615	1266
616	1267
617	1270
618	1272
619	1273
620	1274
621	1276
622	1279
623	1281
624	1283
625	1285
626	1287
627	1288
628	1289
629	1292
630	1295
631	1296
632	1299
633	1302
634	1303
635	1304
636	1306
637	1309
638	1312
639	1315
640	1317
641	1319
642	1322
643	1324
644	1326
645	1327
646	1329
647	1332
648	1335
649	1338
650	1341
651	1343
652	1346
653	1347
654	1350
655	1352
656	1353
657	1355
658	1356
659	1359
660	1362
661	1365
662	1366
663	1367
664	1370
665	1372
666	1374
667	1377
668	1379
669	1381
670	1384
671	1386
672	1389
673	1392
674	1393
675	1394
676	1397
677	1400
678	1402
679	1405
680	1407
681	1408
682	1409
683	1412
684	1414
685	1415
686	1416
687	1419
688	1422
689	1425
690	1427
691	1430
692	1432
693	1433
694	1434
695	1437
696	1439
697	1442
698	1445
699	1448
700	1451
701	1453
\.

-- person_phone
\! echo 'Insert into Person Phone..';
COPY person_phone (person_id, phone_id) FROM stdin;
1	1
1	2
2	3
2	4
3	5
3	6
4	7
4	8
5	9
5	10
6	11
6	12
7	13
7	14
8	15
8	16
9	17
9	18
10	19
10	20
11	21
11	22
12	23
12	24
13	25
13	26
14	27
14	28
15	29
15	30
16	31
16	32
17	33
17	34
18	35
18	36
19	37
19	38
20	39
20	40
21	41
21	42
22	43
22	44
23	45
23	46
24	47
24	48
25	49
25	50
26	51
26	52
27	53
27	54
28	55
28	56
29	57
29	58
30	59
30	60
31	61
31	62
32	63
32	64
33	65
33	66
34	67
34	68
35	69
35	70
36	71
36	72
37	73
37	74
38	75
38	76
39	77
39	78
40	79
40	80
41	81
41	82
42	83
42	84
43	85
43	86
44	87
44	88
45	89
45	90
46	91
46	92
47	93
47	94
48	95
48	96
49	97
49	98
50	99
50	100
51	103
52	106
53	108
54	111
55	113
56	116
57	118
58	120
59	122
60	124
61	124
62	124
63	126
64	128
65	131
66	134
67	137
68	139
69	142
70	145
71	148
72	150
73	153
74	156
75	159
76	161
77	163
78	166
79	168
80	171
81	174
82	174
83	174
84	177
85	180
86	180
87	182
88	184
89	187
90	190
91	193
92	195
93	198
94	200
95	203
96	205
97	208
98	210
99	210
100	210
101	213
102	215
103	217
104	220
105	223
106	226
107	228
108	231
109	233
110	235
111	237
112	239
113	241
114	244
115	246
116	248
117	251
118	253
119	255
120	257
121	257
122	257
123	260
124	262
125	265
126	268
127	268
128	268
129	271
130	271
131	271
132	273
133	275
134	277
135	280
136	282
137	285
138	285
139	285
140	288
141	288
142	290
143	293
144	295
145	297
146	300
147	302
148	305
149	308
150	308
151	308
152	310
153	312
154	315
155	318
156	321
157	324
158	326
159	326
160	328
161	331
162	333
163	335
164	335
165	335
166	337
167	340
168	343
169	346
170	349
171	352
172	352
173	352
174	354
175	356
176	358
177	361
178	363
179	365
180	367
181	370
182	372
183	374
184	374
185	374
186	376
187	379
188	379
189	382
190	384
191	386
192	388
193	388
194	391
195	394
196	397
197	400
198	400
199	400
200	402
201	404
202	404
203	406
204	408
205	411
206	413
207	416
208	418
209	421
210	423
211	426
212	429
213	431
214	431
215	431
216	434
217	437
218	439
219	441
220	444
221	447
222	450
223	452
224	454
225	456
226	459
227	462
228	465
229	468
230	470
231	473
232	473
233	475
234	477
235	480
236	480
237	482
238	485
239	487
240	489
241	491
242	493
243	495
244	497
245	500
246	503
247	505
248	508
249	510
250	513
251	516
252	519
253	522
254	524
255	526
256	529
257	529
258	529
259	532
260	535
261	535
262	535
263	538
264	541
265	541
266	543
267	35
268	547
269	549
270	552
271	552
272	555
273	555
274	557
275	560
276	560
277	560
278	562
279	564
280	567
281	567
282	567
283	570
284	573
285	573
286	573
287	575
288	578
289	580
290	582
291	585
292	588
293	591
294	591
295	591
296	594
297	594
298	594
299	597
300	597
301	597
302	600
303	602
304	605
305	607
306	609
307	612
308	615
309	618
310	620
311	623
312	625
313	628
314	630
315	632
316	632
317	632
318	635
319	638
320	638
321	638
322	641
323	643
324	645
325	647
326	649
327	652
328	652
329	655
330	657
331	660
332	662
333	664
334	666
335	666
336	669
337	672
338	675
339	677
340	680
341	683
342	686
343	689
344	692
345	694
346	696
347	698
348	698
349	698
350	700
351	700
352	700
353	702
354	704
355	706
356	708
357	708
358	711
359	714
360	716
361	719
362	719
363	721
364	723
365	723
366	723
367	726
368	729
369	729
370	731
371	731
372	731
373	733
374	735
375	737
376	737
377	740
378	743
379	743
380	743
381	745
382	745
383	748
384	751
385	754
386	754
387	754
388	757
389	462
390	761
391	761
392	761
393	763
394	763
395	766
396	766
397	768
398	768
399	770
400	772
401	774
402	776
403	779
404	782
405	785
406	788
407	788
408	791
409	793
410	793
411	793
412	795
413	795
414	795
415	798
416	798
417	798
418	801
419	801
420	801
421	803
422	803
423	803
424	806
425	808
426	808
427	808
428	810
429	812
430	815
431	818
432	818
433	820
434	823
435	825
436	825
437	825
438	827
439	829
440	832
441	835
442	838
443	840
444	842
445	844
446	847
447	849
448	852
449	854
450	854
451	856
452	858
453	861
454	863
455	866
456	868
457	871
458	874
459	876
460	876
461	876
462	879
463	881
464	884
465	886
466	886
467	886
468	888
469	888
470	891
471	893
472	896
473	898
474	900
475	900
476	902
477	905
478	905
479	905
480	907
481	909
482	912
483	915
484	918
485	920
486	923
487	926
488	928
489	930
490	930
491	930
492	932
493	932
494	935
495	937
496	939
497	941
498	944
499	947
500	947
501	949
502	952
503	954
504	956
505	959
506	962
507	965
508	967
509	969
510	971
511	973
512	975
513	975
514	978
515	980
516	983
517	986
518	988
519	988
520	991
521	994
522	994
523	996
524	999
525	1001
526	1004
527	1007
528	1009
529	1012
530	1015
531	1017
532	1019
533	1021
534	1023
535	1026
536	1029
537	1031
538	1031
539	1034
540	1036
541	1039
542	1041
543	1043
544	1046
545	1049
546	1051
547	1054
548	1056
549	1059
550	1061
551	1061
552	1061
553	1063
554	1066
555	1068
556	1068
557	1068
558	93
559	1072
560	1072
561	1075
562	1077
563	1077
564	1077
565	1080
566	1082
567	1084
568	1084
569	1086
570	1088
571	1090
572	1092
573	1095
574	1097
575	1097
576	1099
577	1101
578	1103
579	1105
580	1107
581	1110
582	1113
583	1115
584	1118
585	1121
586	1123
587	1126
588	1129
589	1132
590	1134
591	1136
592	1139
593	1142
594	1145
595	1147
596	1149
597	1152
598	1155
599	1157
600	1157
601	1159
602	1162
603	1165
604	1168
605	1171
606	1173
607	1175
608	1175
609	1175
610	1178
611	1181
612	1181
613	1181
614	1184
615	1184
616	1184
617	1187
618	1189
619	1189
620	1189
621	1191
622	1194
623	1196
624	1198
625	1200
626	1202
627	1202
628	1202
629	1205
630	1208
631	1208
632	1211
633	1214
634	1214
635	1214
636	1216
637	1219
638	1222
639	1225
640	1227
641	1229
642	662
643	1233
644	1235
645	1235
646	1237
647	1240
648	1243
649	1246
650	1249
651	1251
652	1254
653	1254
654	1257
655	1259
656	1259
657	1261
658	1261
659	1264
660	1267
661	1270
662	1270
663	1270
664	1273
665	1275
666	1277
667	1280
668	1282
669	1284
670	1287
671	1289
672	1292
673	1295
674	1295
675	1295
676	1298
677	1301
678	1303
679	1306
680	1308
681	1308
682	1308
683	1311
684	1313
685	1313
686	1313
687	1316
688	1319
689	1322
690	1324
691	1327
692	1329
693	1329
694	1329
695	1332
696	1334
697	1337
698	1340
699	1343
700	1346
701	1348
\.

-- instructor
\! echo 'Insert into Instructor..';
COPY instructor (person_id, employee_id, able_to_teach_ensembles) FROM stdin;
1	I-0001	true
2	I-0002	true
3	I-0003	false
4	I-0004	false
5	I-0005	true
6	I-0006	true
7	I-0007	true
8	I-0008	false
9	I-0009	false
10	I-0010	true
11	I-0011	false
12	I-0012	false
13	I-0013	false
14	I-0014	false
15	I-0015	true
16	I-0016	false
17	I-0017	false
18	I-0018	false
19	I-0019	false
20	I-0020	true
21	I-0021	true
22	I-0022	false
23	I-0023	false
24	I-0024	true
25	I-0025	false
26	I-0026	false
27	I-0027	false
28	I-0028	true
29	I-0029	true
30	I-0030	true
31	I-0031	true
32	I-0032	true
33	I-0033	false
34	I-0034	true
35	I-0035	true
36	I-0036	true
37	I-0037	true
38	I-0038	true
39	I-0039	true
40	I-0040	true
41	I-0041	true
42	I-0042	true
43	I-0043	true
44	I-0044	true
45	I-0045	false
46	I-0046	true
47	I-0047	false
48	I-0048	true
49	I-0049	true
50	I-0050	false
\.

-- instrument_taught_by_instructor
\! echo 'Insert into Instrument Taught By Instructor..';
COPY instrument_taught_by_instructor (instructor_person_id, instrument_id) FROM stdin;
1	9
1	4
1	5
1	2
1	3
1	8
1	12
1	10
2	3
2	5
2	12
2	8
2	9
2	7
2	2
3	6
3	8
3	2
3	4
3	7
3	11
4	11
4	1
4	12
4	7
4	4
4	9
4	10
4	3
5	10
5	7
5	11
5	9
5	6
5	5
5	1
5	12
6	9
6	11
6	8
6	12
6	10
6	2
6	7
7	7
7	4
7	8
7	2
7	6
7	9
7	1
7	11
8	5
8	11
8	9
8	3
8	1
8	7
8	4
8	10
9	4
9	9
9	8
9	2
9	3
9	5
10	12
10	5
10	10
10	9
10	8
10	7
10	11
10	2
10	4
11	12
11	8
11	3
11	5
11	10
11	11
11	9
11	2
12	5
12	6
12	10
12	2
12	3
12	4
12	8
12	12
12	9
13	9
13	1
13	3
13	12
13	11
13	10
13	5
14	6
14	2
14	1
14	12
14	11
14	7
14	4
14	8
15	8
15	10
15	1
15	11
15	5
15	9
15	6
15	2
16	12
16	9
16	3
16	10
16	8
16	11
16	5
17	2
17	3
17	1
17	7
17	9
17	5
17	12
18	12
18	2
18	6
18	10
18	3
18	5
18	9
18	4
18	1
19	11
19	4
19	7
19	12
19	2
19	1
19	3
19	5
20	4
20	9
20	11
20	12
20	2
20	1
20	5
20	10
21	2
21	6
21	4
21	3
21	9
21	5
21	1
22	9
22	1
22	10
22	11
22	7
22	2
22	6
22	12
23	1
23	9
23	7
23	3
23	4
23	10
23	12
23	5
23	8
24	9
24	5
24	12
24	2
24	8
24	10
24	4
25	5
25	6
25	10
25	9
25	4
25	3
25	11
25	12
26	10
26	7
26	1
26	6
26	4
26	12
26	2
27	11
27	3
27	12
27	10
27	1
27	7
27	2
27	9
27	8
28	6
28	12
28	8
28	11
28	10
28	4
28	7
28	2
28	9
28	3
29	6
29	2
29	7
29	3
29	5
29	10
29	12
30	8
30	4
30	12
30	3
30	5
30	7
30	1
31	1
31	11
31	5
31	10
31	12
31	6
32	1
32	10
32	12
32	8
32	6
32	5
32	3
32	11
32	2
33	2
33	8
33	6
33	3
33	9
33	12
33	1
34	7
34	8
34	1
34	5
34	11
34	12
34	4
34	3
34	6
35	7
35	3
35	5
35	8
35	4
35	6
36	8
36	1
36	3
36	5
36	2
36	7
37	11
37	5
37	9
37	4
37	7
37	6
37	1
37	3
37	10
38	1
38	2
38	11
38	5
38	9
38	10
39	1
39	7
39	12
39	11
39	6
39	5
39	3
39	4
40	12
40	2
40	4
40	6
40	8
40	7
41	6
41	4
41	2
41	11
41	3
41	7
41	8
41	10
42	2
42	3
42	1
42	8
42	10
42	5
42	6
42	7
43	9
43	7
43	3
43	5
43	1
43	10
43	8
43	12
44	4
44	5
44	2
44	6
44	1
44	9
44	11
44	8
44	12
44	3
45	12
45	8
45	6
45	4
45	3
45	5
45	11
45	7
45	10
46	8
46	1
46	4
46	11
46	6
46	3
46	2
46	12
47	11
47	1
47	5
47	9
47	10
47	8
47	12
47	4
47	6
48	5
48	11
48	3
48	8
48	2
48	9
48	7
48	4
48	6
49	2
49	6
49	3
49	12
49	10
49	4
50	1
50	7
50	3
50	10
50	12
50	8
50	4
50	9
\.

-- parent
\! echo 'Insert into Parent..';
COPY parent (first_name, last_name) FROM stdin;
Torbjörn	Pettersson
Mona	Pettersson
Britt-Marie	Olsson
Ludvig	Olsson
Oliver	Henriksson
Stig	Svensson
Monica	Svensson
Lucas	Nordström
Siv	Åkesson
Karin	Åkesson
Hugo	Mohamed
Oskar	Engström
Mattias	Björklund
Arvid	Blomqvist
Josef	Hellström
Johan	Nyberg
Bengt	Falk
Jakob	Falk
Olle	Axelsson
Felix	Axelsson
Viktoria	Nyberg
Torbjörn	Nyberg
Leif	Persson
Liam	Forsberg
Britt	Forsberg
Anita	Holmgren
Ulf	Holmgren
Leif	Åström
Rickard	Åström
Göran	Nordin
Jonas	Ström
Ulla	Ström
Inger	Fredriksson
Anton	Fredriksson
Mohamed	Pålsson
Pontus	Pålsson
Ulla	Falk
Kurt	Löfgren
Sofia	Bergström
Gustav	Bergström
Josefin	Samuelsson
Thomas	Larsson
Olle	Larsson
Oskar	Lundin
Ulf	Lundin
Thomas	Lundgren
Sofie	Lundgren
Louise	Berg
Lovisa	Berg
Martin	Eklund
Gunnar	Wallin
Lars	Svensson
Siv	Svensson
Lars	Andersson
Monica	Andersson
Ebba	Eklund
Agneta	Eklund
Charlotte	Nordin
Margareta	Lundström
Frida	Lundström
Klara	Nordin
Daniel	Forsberg
Johan	Forsberg
Gunnel	Svensson
Pernilla	Blomqvist
Lars	Blomqvist
Jonathan	Lundgren
Matilda	Lindqvist
Sven	Lindqvist
Annika	Norberg
Patrik	Martinsson
Olof	Öberg
Leif	Öberg
Ali	Sjöberg
Caroline	Sjöberg
Kjell	Söderberg
Yvonne	Söderberg
Lovisa	Bergman
Matilda	Isaksson
Erik	Isaksson
Anton	Månsson
Gunnel	Ström
Viktor	Lundqvist
Henrik	Eklund
Sara	Isaksson
Sandra	Bengtsson
Simon	Bengtsson
Axel	Jansson
Cecilia	Hedlund
Cecilia	Forsberg
Björn	Forsberg
Kevin	Gustafsson
Kent	Löfgren
Kerstin	Lundberg
Fredrik	Söderberg
Marcus	Söderberg
Tobias	Ahmed
Robert	Ahmed
Liam	Ahmed
Sofia	Pettersson
Ann	Pettersson
Viktoria	Sundström
Oliver	Sundström
Hugo	Bergman
Rut	Isaksson
John	Bengtsson
Ann	Gustafsson
Erik	Gustafsson
Robert	Forsberg
Filip	Jonsson
Jan	Jonsson
Kristina	Ali
Torbjörn	Ali
Nils	Eriksson
Anton	Danielsson
William	Danielsson
Pia	Nilsson
Lovisa	Strömberg
Erika	Åkesson
Emelie	Åkesson
Kevin	Claesson
Olivia	Danielsson
Ebba	Danielsson
Ann-Marie	Hassan
Oliver	Hassan
Per	Sjöberg
Johan	Lindström
Albin	Lindqvist
Linnéa	Lindqvist
Mikaela	Åkesson
Josefin	Åkesson
Christian	Danielsson
Anton	Danielsson
Siv	Viklund
Gunilla	Viklund
Lena	Sandberg
Gabriel	Isaksson
Pia	Strömberg
Lina	Strömberg
Jonathan	Hedlund
Lisbeth	Öberg
Ali	Lundqvist
Johanna	Ström
Kristina	Ström
Andreas	Danielsson
Gabriel	Danielsson
Alexandra	Johansson
Hans	Johansson
Jan	Blom
Sara	Blom
Gun	Nordström
Mohamed	Nordström
Sven	Lundqvist
Roger	Åström
Olle	Hermansson
Marianne	Isaksson
Sara	Isaksson
Nina	Lundström
Kjell	Isaksson
Stefan	Dahlberg
Jan	Ali
Amanda	Ali
Liam	Lindgren
Lovisa	Berglund
David	Abrahamsson
Matilda	Holmgren
Mohamed	Holmgren
Jonas	Holmgren
Lisa	Holmgren
Johnny	Lindqvist
Cecilia	Bengtsson
Anette	Claesson
Jan	Blom
Ingrid	Blom
Hanna	Andreasson
Marianne	Andreasson
Sven	Nordin
Susanne	Nordin
Mikaela	Jonsson
Birgitta	Jonsson
Thomas	Jakobsson
Maja	Svensson
Eva	Falk
Christer	Nilsson
Nathalie	Nyström
Kent	Nyström
Anita	Nilsson
Lovisa	Dahlberg
Ida	Dahlberg
Patrik	Holmberg
Rut	Claesson
Joakim	Claesson
Felicia	Sandström
Olof	Berggren
Viktoria	Berggren
Edvin	Björk
Nathalie	Björk
Adam	Mohamed
Elsa	Viklund
Simon	Viklund
Samuel	Svensson
Adam	Svensson
Therese	Sjögren
Christer	Eklund
Wilma	Abrahamsson
Kjell	Abrahamsson
Cecilia	Fransson
Ida	Fransson
Rolf	Ström
Joel	Ström
Filip	Sjögren
Liam	Ek
Sven	Fransson
Peter	Hassan
Pia	Hassan
Mats	Sjögren
Mohamed	Sjögren
Anton	Mattsson
Eva	Mattsson
Erik	Engström
Nathalie	Engström
Niklas	Norberg
Linnéa	Nyberg
Ingrid	Nyberg
Camilla	Svensson
William	Månsson
Isabelle	Holmgren
Thomas	Holmgren
Kurt	Åberg
Anna	Henriksson
Kjell	Henriksson
Jenny	Forsberg
Pia	Bergman
Ulf	Holmgren
Alice	Lundgren
Marianne	Holmberg
Felix	Lindström
Rasmus	Persson
Agnes	Persson
Carina	Jakobsson
Louise	Jakobsson
Lennart	Sundberg
Frida	Arvidsson
Lars	Arvidsson
Pia	Öberg
Christer	Engström
Rebecca	Engström
Ulf	Berg
Rut	Berg
Ulrika	Björk
Pernilla	Björk
Roger	Jansson
Kjell	Jansson
Andreas	Sjöberg
Claes	Lund
Birgitta	Bengtsson
Gun	Bengtsson
Alva	Nilsson
Elisabeth	Nilsson
Albin	Eklund
Rickard	Eklund
Emma	Hansen
John	Hansen
Sofie	Jonsson
Marianne	Jonsson
Josef	Samuelsson
Mats	Holmberg
Hugo	Holmberg
Helen	Sandström
Monica	Lundström
Henrik	Berg
Jesper	Berg
Elisabeth	Hassan
Alexander	Hassan
Gunnar	Lindström
Carina	Hellström
Therese	Hellström
Anette	Olofsson
Torbjörn	Mattsson
Ann-Christin	Samuelsson
Lars	Samuelsson
Margareta	Wikström
Emma	Wikström
Jan	Blom
Per	Blom
Simon	Berggren
Ellen	Bergqvist
Julia	Bergqvist
Anna	Sundberg
Kurt	Isaksson
Maria	Ekström
Joakim	Ekström
Kent	Holmgren
Camilla	Holmgren
Sandra	Öberg
Alexandra	Öberg
Eva	Andreasson
Anders	Andreasson
Christoffer	Bergström
Linnéa	Bergström
Stig	Isaksson
Monica	Isaksson
Leo	Strömberg
Lena	Wikström
Kjell	Wikström
Björn	Claesson
Andreas	Eliasson
Christoffer	Hedlund
Andreas	Hedlund
Josefin	Jansson
Mikaela	Jansson
Anette	Sandström
Malin	Sandström
Gun	Sjögren
Lisbeth	Blom
Claes	Blom
Adam	Lind
Alice	Eliasson
Jimmy	Eliasson
Jenny	Blom
Ulla	Eklund
Oliver	Lindberg
Isabelle	Lindberg
Jimmy	Sandberg
Berit	Sandberg
Hans	Blom
Ann-Marie	Blom
Anneli	Hellström
Ulla	Falk
Hugo	Hermansson
Stig	Danielsson
Lovisa	Axelsson
Malin	Axelsson
Emil	Gunnarsson
Jesper	Gunnarsson
Kent	Lund
Ingrid	Blom
Therese	Blom
Ulla	Holmberg
Ella	Larsson
Alice	Lindqvist
Ann	Öberg
Max	Öberg
Anette	Strömberg
Mikaela	Strömberg
Karl	Björk
Linda	Björk
Berit	Norberg
Anette	Johansson
Jessica	Johansson
Gunnel	Ström
Kjell	Ström
Stefan	Eliasson
Kjell	Eliasson
Torbjörn	Nordin
Nina	Nordin
Siv	Svensson
Jakob	Svensson
Hanna	Hermansson
Ali	Berg
Lena	Ekström
Bo	Persson
Siv	Mohamed
Jessica	Engström
Anton	Eliasson
Samuel	Björklund
Astrid	Bergqvist
John	Bergqvist
Åsa	Bergman
Alva	Bergman
Daniel	Ahmed
Marcus	Nyberg
Lisbeth	Nyberg
Emelie	Hansson
Olle	Sjögren
Nina	Bergström
Ellen	Bergström
Viktor	Lindgren
Marcus	Lindgren
Lisbeth	Holm
Albin	Lundström
Marcus	Falk
Gun	Viklund
Yvonne	Gunnarsson
Oliver	Gunnarsson
Anneli	Jansson
Malin	Jansson
Johanna	Claesson
Camilla	Lindström
Rasmus	Lindström
Frida	Norberg
Rolf	Norberg
Rickard	Nordin
Jörgen	Nordin
Moa	Axelsson
Ingrid	Axelsson
Johanna	Sandström
Johan	Sandström
Peter	Abrahamsson
Felicia	Lundin
Ali	Ali
Johan	Ali
Madeleine	Henriksson
Alexander	Strömberg
Sebastian	Holm
Marianne	Öberg
Bo	Nyström
Sebastian	Arvidsson
Moa	Arvidsson
Ali	Hansen
Caroline	Hansen
David	Karlsson
Birgitta	Karlsson
Filip	Holm
Ellen	Holm
Sofia	Bergström
Andreas	Bergström
Marianne	Lindgren
Margareta	Forsberg
Åsa	Olsson
Julia	Olsson
Viktor	Isaksson
Niklas	Isaksson
Katarina	Mattsson
Leif	Karlsson
Johanna	Karlsson
Lovisa	Lindqvist
Jimmy	Jakobsson
Caroline	Ali
Edvin	Johansson
Emilia	Johansson
Alice	Holm
Felix	Holm
Emma	Åström
Hanna	Lind
Stig	Lind
Emilia	Andreasson
Lucas	Axelsson
Carina	Lindberg
Anders	Eklund
Kevin	Eklund
Mohamed	Abrahamsson
Åsa	Abrahamsson
Marie	Sjögren
Nils	Sjögren
Katarina	Eliasson
Astrid	Samuelsson
Elias	Hansen
Rolf	Holmberg
Sofie	Holmberg
Alice	Nordin
Anna	Sjögren
Leif	Sjögren
Ulf	Olofsson
Frida	Berggren
Andreas	Karlsson
Claes	Hassan
Klara	Hassan
Gunnel	Eriksson
Maja	Andreasson
Erik	Andreasson
Rebecca	Olsson
Ellen	Månsson
Jörgen	Månsson
Gustav	Hassan
Ellen	Hassan
David	Nordström
Jimmy	Berglund
Nina	Berglund
Kent	Lundberg
Kevin	Berg
Kent	Berg
Birgitta	Löfgren
David	Åkesson
Carina	Jonsson
Elsa	Jonsson
Josefin	Ekström
Malin	Johansson
Lisbeth	Johansson
Lisa	Lundqvist
Stig	Ek
Kristina	Jonsson
Johanna	Åberg
Patrik	Åberg
Nina	Åberg
Simon	Wallin
Karl	Svensson
Axel	Svensson
Fredrik	Lind
Axel	Lind
Christoffer	Martinsson
Fredrik	Martinsson
William	Björk
Ann	Jansson
Marie	Jansson
Pia	Söderberg
Per	Söderberg
William	Wikström
Sven	Håkansson
Jonas	Lundin
Mattias	Wallin
Robin	Wallin
Ida	Lundström
Nils	Lundgren
Jessica	Jonasson
Sofia	Ekström
Hanna	Ekström
Erik	Mårtensson
Madeleine	Mårtensson
Christoffer	Engström
Yvonne	Johansson
Gabriel	Johansson
Adam	Hansson
Åke	Björklund
Anette	Dahlberg
Matilda	Dahlberg
Yvonne	Hansen
Albin	Hansen
Madeleine	Isaksson
Felicia	Isaksson
Jonathan	Bengtsson
Fredrik	Bengtsson
Adam	Karlsson
Peter	Lundin
Niklas	Lindström
Siv	Hassan
Christer	Hassan
Josef	Lundgren
Martin	Lindberg
Mona	Lindberg
Sandra	Nyström
Cecilia	Nyström
Nils	Svensson
Alexandra	Löfgren
Moa	Löfgren
Mattias	Nordin
Ulla	Nordin
Nils	Hermansson
Berit	Fransson
Felix	Fransson
Camilla	Sjögren
Håkan	Lind
Alice	Lind
Mohamed	Ek
Rolf	Ek
Roger	Löfgren
Sofie	Bergqvist
Karin	Bergqvist
Nathalie	Pettersson
Linus	Pettersson
Johnny	Andreasson
Tobias	Wikström
Joel	Strömberg
Per	Lundqvist
Rickard	Engström
Annika	Engström
Joakim	Wikström
Linn	Wikström
Ann	Magnusson
Håkan	Ekström
Henrik	Ekström
Ann-Marie	Olofsson
Mats	Arvidsson
Katarina	Arvidsson
Caroline	Hansen
Adam	Olsson
Jonas	Hedlund
Ingrid	Hedlund
Jonathan	Lund
Helen	Lund
Filip	Viklund
Maria	Gunnarsson
Jessica	Gunnarsson
Ulla	Lindgren
Alexander	Löfgren
Monica	Löfgren
Oskar	Pettersson
Göran	Söderberg
Christian	Martinsson
Ann	Martinsson
Lennart	Bergström
Daniel	Löfgren
Josef	Hansen
Mona	Hansen
Therese	Holm
Gun	Holm
Camilla	Axelsson
Mohamed	Öberg
Kurt	Öberg
Joakim	Lundin
Lena	Dahlberg
Moa	Björk
Rolf	Martinsson
Robert	Månsson
Johnny	Ali
Sven	Isaksson
Magnus	Isaksson
Jörgen	Forsberg
Emil	Jonsson
Bo	Ekström
Viktor	Lindgren
Johnny	Jonasson
Kerstin	Nilsson
Olivia	Norberg
Roger	Norberg
Emma	Bergqvist
William	Bergqvist
Moa	Mattsson
Niklas	Norberg
Kevin	Norberg
Maja	Hellström
Alexandra	Hellström
Hans	Holm
Alexandra	Nordström
Linus	Nordström
Ann-Christin	Månsson
Rolf	Månsson
Klara	Larsson
Viktor	Larsson
Jessica	Mohamed
Alva	Gustafsson
Amanda	Lund
Margareta	Lund
Monica	Gustafsson
Lisbeth	Gustafsson
Lena	Bergqvist
Ella	Bergqvist
Elin	Forsberg
Ella	Hedlund
Lucas	Lindgren
Eva	Lindgren
Daniel	Lundin
Lennart	Lundin
Margareta	Falk
Andreas	Johansson
Elin	Falk
Berit	Falk
Sara	Blom
Pontus	Blom
Cecilia	Bengtsson
Ann-Christin	Bengtsson
Nina	Holmgren
Ulrika	Holmgren
Ida	Bergqvist
Britt-Marie	Björk
Linn	Abrahamsson
Oliver	Abrahamsson
Andreas	Jakobsson
Mats	Jakobsson
Anita	Mårtensson
Ulrika	Mårtensson
Christoffer	Danielsson
Åke	Danielsson
Britt	Öberg
Åsa	Blom
Johanna	Mattsson
Dennis	Mattsson
Linnéa	Pålsson
Lina	Åkesson
Inger	Hedlund
Filip	Blomqvist
Britt-Marie	Larsson
Alice	Larsson
Kurt	Danielsson
Andreas	Danielsson
Rut	Falk
Sven	Falk
Rasmus	Lindqvist
Oskar	Lindqvist
Stig	Jansson
Oskar	Pålsson
Erika	Pålsson
Anita	Hansen
Emilia	Hansen
Pernilla	Gustafsson
Hans	Gustafsson
Mohamed	Jonasson
Isak	Nilsson
Ann-Christin	Lundgren
Maria	Lundgren
Helena	Jakobsson
Stefan	Andersson
Siv	Mårtensson
Lisa	Lund
Felix	Lund
Gunilla	Larsson
Emma	Larsson
Robert	Björklund
Ida	Björklund
Britt-Marie	Fransson
Rickard	Fransson
Alice	Arvidsson
Karin	Abrahamsson
Kent	Abrahamsson
Anneli	Mattsson
Eva	Mattsson
Ella	Lindqvist
Wilma	Jansson
Nathalie	Mattsson
Helena	Mattsson
Leif	Viklund
Britt-Marie	Viklund
Isabelle	Claesson
Pontus	Claesson
Barbro	Olsson
Ali	Olsson
John	Johansson
Susanne	Månsson
Jan	Mattsson
Bengt	Mattsson
Joakim	Larsson
Mattias	Samuelsson
Amanda	Nordström
Linn	Nordström
Ebba	Sjöberg
Joakim	Nordström
Jonas	Nordström
Emilia	Bergqvist
Karl	Bergqvist
Edvin	Nordström
Jessica	Nordström
Therese	Andersson
Linn	Andersson
Linn	Jonasson
Ella	Bengtsson
Filip	Bengtsson
Hanna	Hedlund
Leo	Sjöberg
Marcus	Sjöberg
Magnus	Wikström
Pontus	Larsson
Emilia	Larsson
Simon	Forsberg
Alexandra	Forsberg
Agnes	Jönsson
Helen	Jönsson
Ellen	Bergqvist
Ebba	Dahlberg
Helena	Dahlberg
Jan	Pålsson
Oskar	Jonasson
Per	Jonasson
Maria	Jansson
Emma	Nyberg
Joakim	Nyberg
Oskar	Sjögren
Yvonne	Sjögren
Lisa	Olsson
Louise	Olsson
Bengt	Sandberg
Oliver	Sandberg
Moa	Ahmed
\.

-- parent_email
\! echo 'Insert into Parent Email..';
COPY parent_email (parent_id, email_id) FROM stdin;
1	51
2	52
3	54
4	55
5	57
6	59
7	60
8	62
9	64
10	65
11	67
12	69
13	71
14	73
15	77
16	79
17	81
18	82
19	84
20	85
21	87
22	88
23	90
24	92
25	93
26	95
27	96
28	98
29	99
30	101
31	103
32	104
33	106
34	107
35	109
36	110
37	112
38	114
39	116
40	117
41	119
42	121
43	122
44	124
45	125
46	129
47	130
48	132
49	133
50	136
51	138
52	140
53	141
54	143
55	144
56	146
57	147
58	149
59	151
60	152
61	154
62	156
63	157
64	159
65	161
66	162
67	164
68	168
69	169
70	171
71	173
72	175
73	176
74	178
75	179
76	181
77	182
78	184
79	186
80	187
81	189
82	191
83	193
84	195
85	197
86	199
87	200
88	202
89	204
90	206
91	207
92	209
93	211
94	213
95	217
96	218
97	220
98	222
99	223
100	225
101	226
102	230
103	231
104	235
105	237
106	239
107	241
108	242
109	244
110	246
111	247
112	251
113	252
114	255
115	257
116	258
117	260
118	262
119	264
120	265
121	267
122	269
123	270
124	272
125	273
126	277
127	279
128	281
129	282
130	284
131	285
132	287
133	288
134	290
135	291
136	293
137	296
138	298
139	299
140	301
141	303
142	307
143	309
144	310
145	312
146	313
147	315
148	316
149	318
150	319
151	321
152	322
153	326
154	328
155	330
156	332
157	333
158	335
159	337
160	339
161	341
162	342
163	344
164	346
165	350
166	352
167	353
168	356
169	357
170	359
171	361
172	363
173	366
174	367
175	369
176	370
177	372
178	373
179	375
180	376
181	380
182	382
183	385
184	387
185	389
186	390
187	392
188	394
189	395
190	397
191	399
192	400
193	402
194	404
195	405
196	407
197	408
198	410
199	414
200	415
201	417
202	418
203	420
204	422
205	424
206	425
207	427
208	428
209	430
210	431
211	433
212	435
213	437
214	439
215	440
216	442
217	443
218	445
219	446
220	448
221	449
222	451
223	453
224	454
225	457
226	459
227	461
228	462
229	465
230	467
231	468
232	470
233	472
234	474
235	476
236	478
237	480
238	482
239	483
240	485
241	486
242	488
243	490
244	491
245	493
246	495
247	496
248	498
249	499
250	501
251	502
252	504
253	505
254	507
255	509
256	511
257	512
258	516
259	517
260	519
261	520
262	524
263	525
264	527
265	528
266	531
267	533
268	534
269	536
270	538
271	540
272	541
273	544
274	545
275	548
276	550
277	551
278	555
279	557
280	559
281	560
282	564
283	565
284	567
285	568
286	572
287	574
288	575
289	577
290	579
291	581
292	582
293	584
294	585
295	587
296	588
297	592
298	593
299	597
300	598
301	602
302	603
303	605
304	607
305	608
306	610
307	612
308	614
309	615
310	617
311	618
312	620
313	621
314	623
315	625
316	626
317	628
318	630
319	631
320	633
321	635
322	639
323	640
324	642
325	643
326	647
327	648
328	650
329	652
330	654
331	656
332	658
333	659
334	662
335	663
336	665
337	667
338	668
339	670
340	672
341	674
342	677
343	678
344	680
345	681
346	683
347	684
348	686
349	688
350	689
351	691
352	692
353	694
354	695
355	697
356	698
357	700
358	701
359	703
360	705
361	707
362	711
363	715
364	717
365	719
366	721
367	724
368	725
369	727
370	728
371	730
372	732
373	733
374	736
375	738
376	742
377	743
378	745
379	746
380	749
381	753
382	755
383	757
384	760
385	761
386	763
387	764
388	768
389	771
390	772
391	774
392	775
393	777
394	778
395	782
396	783
397	785
398	786
399	788
400	792
401	795
402	796
403	799
404	802
405	804
406	806
407	808
408	810
409	811
410	813
411	814
412	816
413	817
414	819
415	820
416	823
417	824
418	826
419	830
420	834
421	835
422	839
423	840
424	844
425	848
426	849
427	851
428	855
429	857
430	859
431	860
432	862
433	863
434	866
435	868
436	869
437	871
438	875
439	877
440	879
441	880
442	882
443	883
444	885
445	886
446	888
447	890
448	892
449	894
450	895
451	897
452	899
453	900
454	902
455	905
456	907
457	909
458	910
459	912
460	914
461	915
462	917
463	919
464	920
465	922
466	923
467	925
468	929
469	930
470	932
471	934
472	935
473	937
474	941
475	944
476	945
477	947
478	949
479	950
480	952
481	954
482	957
483	959
484	960
485	964
486	966
487	968
488	969
489	971
490	972
491	974
492	975
493	977
494	979
495	980
496	982
497	983
498	985
499	987
500	991
501	994
502	995
503	997
504	999
505	1001
506	1003
507	1004
508	1006
509	1007
510	1010
511	1012
512	1013
513	1015
514	1017
515	1019
516	1020
517	1022
518	1023
519	1025
520	1026
521	1028
522	1030
523	1032
524	1034
525	1036
526	1039
527	1040
528	1042
529	1044
530	1045
531	1047
532	1048
533	1050
534	1053
535	1054
536	1056
537	1057
538	1060
539	1062
540	1063
541	1065
542	1067
543	1068
544	1070
545	1071
546	1073
547	1075
548	1076
549	1078
550	1079
551	1081
552	1083
553	1085
554	1087
555	1089
556	1090
557	1092
558	1093
559	1095
560	1098
561	1099
562	1101
563	1103
564	1104
565	1106
566	1108
567	1110
568	1111
569	1113
570	1114
571	1116
572	1118
573	1119
574	1121
575	1123
576	1124
577	1126
578	1130
579	1132
580	1133
581	1135
582	1139
583	1141
584	1142
585	1145
586	1146
587	1148
588	1152
589	1153
590	1155
591	1157
592	1160
593	1162
594	1164
595	1166
596	1168
597	1169
598	1171
599	1174
600	1176
601	1178
602	1180
603	1182
604	1184
605	1185
606	1187
607	1188
608	1190
609	1192
610	1193
611	1195
612	1196
613	1198
614	1200
615	1201
616	1203
617	1204
618	1206
619	1207
620	1209
621	1211
622	1213
623	1214
624	1216
625	1217
626	1219
627	1220
628	1222
629	1224
630	1226
631	1227
632	1229
633	1230
634	1232
635	1235
636	1237
637	1238
638	1240
639	1241
640	1243
641	1244
642	1246
643	1247
644	1249
645	1251
646	1255
647	1256
648	1258
649	1259
650	1263
651	1264
652	1268
653	1269
654	1271
655	1275
656	1277
657	1278
658	1280
659	1282
660	1284
661	1286
662	1290
663	1291
664	1293
665	1294
666	1297
667	1298
668	1300
669	1301
670	1305
671	1307
672	1308
673	1310
674	1311
675	1313
676	1314
677	1316
678	1318
679	1320
680	1321
681	1323
682	1325
683	1328
684	1330
685	1331
686	1333
687	1334
688	1336
689	1337
690	1339
691	1340
692	1342
693	1344
694	1345
695	1348
696	1349
697	1351
698	1354
699	1357
700	1358
701	1360
702	1361
703	1363
704	1364
705	1368
706	1369
707	1371
708	1373
709	1375
710	1376
711	1378
712	1380
713	1382
714	1383
715	1385
716	1387
717	1388
718	1390
719	1391
720	1395
721	1396
722	1398
723	1399
724	1401
725	1403
726	1404
727	1406
728	1410
729	1411
730	1413
731	1417
732	1418
733	1420
734	1421
735	1423
736	1424
737	1426
738	1428
739	1429
740	1431
741	1435
742	1436
743	1438
744	1440
745	1441
746	1443
747	1444
748	1446
749	1447
750	1449
751	1450
752	1452
\.

-- parent_phone
\! echo 'Insert into Parent Phone..';
COPY parent_phone (parent_id, phone_id) FROM stdin;
1	101
2	102
3	104
4	105
5	107
6	109
7	110
8	112
9	114
10	115
11	117
12	119
13	121
14	123
15	125
16	127
17	129
18	130
19	132
20	133
21	135
22	136
23	138
24	140
25	141
26	143
27	144
28	146
29	147
30	149
31	151
32	152
33	154
34	155
35	157
36	158
37	160
38	162
39	164
40	165
41	167
42	169
43	170
44	172
45	173
46	175
47	176
48	178
49	179
50	181
51	183
52	185
53	186
54	188
55	189
56	191
57	192
58	194
59	196
60	197
61	199
62	201
63	202
64	204
65	206
66	207
67	209
68	211
69	212
70	214
71	216
72	218
73	219
74	221
75	222
76	224
77	225
78	227
79	229
80	230
81	232
82	234
83	236
84	238
85	240
86	242
87	243
88	245
89	247
90	249
91	250
92	252
93	254
94	256
95	258
96	259
97	261
98	263
99	264
100	266
101	267
102	269
103	270
104	272
105	274
106	276
107	278
108	279
109	281
110	283
111	284
112	286
113	287
114	289
115	291
116	292
117	294
118	296
119	298
120	299
121	301
122	303
123	304
124	306
125	307
126	309
127	311
128	313
129	314
130	316
131	317
132	319
133	320
134	322
135	323
136	325
137	327
138	329
139	330
140	332
141	334
142	336
143	338
144	339
145	341
146	342
147	344
148	345
149	347
150	348
151	350
152	351
153	353
154	355
155	357
156	359
157	360
158	362
159	364
160	366
161	368
162	369
163	371
164	373
165	375
166	377
167	378
168	380
169	381
170	383
171	385
172	387
173	389
174	390
175	392
176	393
177	395
178	396
179	398
180	399
181	401
182	403
183	405
184	407
185	409
186	410
187	412
188	414
189	415
190	417
191	419
192	420
193	422
194	424
195	425
196	427
197	428
198	430
199	432
200	433
201	435
202	436
203	438
204	440
205	442
206	443
207	445
208	446
209	448
210	449
211	451
212	453
213	455
214	457
215	458
216	460
217	461
218	463
219	464
220	466
221	467
222	469
223	471
224	472
225	474
226	476
227	478
228	479
229	481
230	483
231	484
232	486
233	488
234	490
235	492
236	494
237	496
238	498
239	499
240	501
241	502
242	504
243	506
244	507
245	509
246	511
247	512
248	514
249	515
250	517
251	518
252	520
253	521
254	523
255	525
256	527
257	528
258	530
259	531
260	533
261	534
262	536
263	537
264	539
265	540
266	542
267	544
268	545
269	546
270	548
271	550
272	551
273	553
274	554
275	556
276	558
277	559
278	561
279	563
280	565
281	566
282	568
283	569
284	571
285	572
286	574
287	576
288	577
289	579
290	581
291	583
292	584
293	586
294	587
295	589
296	590
297	592
298	593
299	595
300	596
301	598
302	599
303	601
304	603
305	604
306	606
307	608
308	610
309	611
310	613
311	614
312	616
313	617
314	619
315	621
316	622
317	624
318	626
319	627
320	629
321	631
322	633
323	634
324	636
325	637
326	639
327	640
328	642
329	644
330	646
331	648
332	650
333	651
334	653
335	654
336	656
337	658
338	659
339	661
340	663
341	665
342	667
343	668
344	670
345	671
346	673
347	674
348	676
349	678
350	679
351	681
352	682
353	684
354	685
355	687
356	688
357	690
358	691
359	693
360	695
361	697
362	699
363	701
364	703
365	705
366	707
367	709
368	710
369	712
370	713
371	715
372	717
373	718
374	720
375	722
376	724
377	725
378	727
379	728
380	730
381	732
382	734
383	736
384	738
385	739
386	741
387	742
388	744
389	746
390	747
391	749
392	750
393	752
394	753
395	755
396	756
397	758
398	759
399	760
400	762
401	764
402	765
403	767
404	769
405	771
406	773
407	775
408	777
409	778
410	780
411	781
412	783
413	784
414	786
415	787
416	789
417	790
418	792
419	794
420	796
421	797
422	799
423	800
424	802
425	804
426	805
427	807
428	809
429	811
430	813
431	814
432	816
433	817
434	819
435	821
436	822
437	824
438	826
439	828
440	830
441	831
442	833
443	834
444	836
445	837
446	839
447	841
448	843
449	845
450	846
451	848
452	850
453	851
454	853
455	855
456	857
457	859
458	860
459	862
460	864
461	865
462	867
463	869
464	870
465	872
466	873
467	875
468	877
469	878
470	880
471	882
472	883
473	885
474	887
475	889
476	890
477	892
478	894
479	895
480	897
481	899
482	901
483	903
484	904
485	906
486	908
487	910
488	911
489	913
490	914
491	916
492	917
493	919
494	921
495	922
496	924
497	925
498	927
499	929
500	931
501	933
502	934
503	936
504	938
505	940
506	942
507	943
508	945
509	946
510	948
511	950
512	951
513	953
514	955
515	957
516	958
517	960
518	961
519	963
520	964
521	966
522	968
523	970
524	972
525	974
526	976
527	977
528	979
529	981
530	982
531	984
532	985
533	987
534	989
535	990
536	992
537	993
538	995
539	997
540	998
541	1000
542	1002
543	1003
544	1005
545	1006
546	1008
547	1010
548	1011
549	1013
550	1014
551	1016
552	1018
553	1020
554	1022
555	1024
556	1025
557	1027
558	1028
559	1030
560	1032
561	1033
562	1035
563	1037
564	1038
565	1040
566	1042
567	1044
568	1045
569	1047
570	1048
571	1050
572	1052
573	1053
574	1055
575	1057
576	1058
577	1060
578	1062
579	1064
580	1065
581	1067
582	1069
583	1070
584	1071
585	1073
586	1074
587	1076
588	1078
589	1079
590	1081
591	1083
592	1085
593	1087
594	1089
595	1091
596	1093
597	1094
598	1096
599	1098
600	1100
601	1102
602	1104
603	1106
604	1108
605	1109
606	1111
607	1112
608	1114
609	1116
610	1117
611	1119
612	1120
613	1122
614	1124
615	1125
616	1127
617	1128
618	1130
619	1131
620	1133
621	1135
622	1137
623	1138
624	1140
625	1141
626	1143
627	1144
628	1146
629	1148
630	1150
631	1151
632	1153
633	1154
634	1156
635	1158
636	1160
637	1161
638	1163
639	1164
640	1166
641	1167
642	1169
643	1170
644	1172
645	1174
646	1176
647	1177
648	1179
649	1180
650	1182
651	1183
652	1185
653	1186
654	1188
655	1190
656	1192
657	1193
658	1195
659	1197
660	1199
661	1201
662	1203
663	1204
664	1206
665	1207
666	1209
667	1210
668	1212
669	1213
670	1215
671	1217
672	1218
673	1220
674	1221
675	1223
676	1224
677	1226
678	1228
679	1230
680	1231
681	1232
682	1234
683	1236
684	1238
685	1239
686	1241
687	1242
688	1244
689	1245
690	1247
691	1248
692	1250
693	1252
694	1253
695	1255
696	1256
697	1258
698	1260
699	1262
700	1263
701	1265
702	1266
703	1268
704	1269
705	1271
706	1272
707	1274
708	1276
709	1278
710	1279
711	1281
712	1283
713	1285
714	1286
715	1288
716	1290
717	1291
718	1293
719	1294
720	1296
721	1297
722	1299
723	1300
724	1302
725	1304
726	1305
727	1307
728	1309
729	1310
730	1312
731	1314
732	1315
733	1317
734	1318
735	1320
736	1321
737	1323
738	1325
739	1326
740	1328
741	1330
742	1331
743	1333
744	1335
745	1336
746	1338
747	1339
748	1341
749	1342
750	1344
751	1345
752	1347
\.

-- student
\! echo 'Insert into Student..';
COPY student (person_id, student_id, genre_id) FROM stdin;
51	S-000001	\N
52	S-000002	\N
53	S-000003	7
54	S-000004	\N
55	S-000005	\N
56	S-000006	\N
57	S-000007	\N
58	S-000008	\N
59	S-000009	7
60	S-000010	7
61	S-000011	\N
62	S-000012	7
63	S-000013	\N
64	S-000014	6
65	S-000015	\N
66	S-000016	\N
67	S-000017	\N
68	S-000018	\N
69	S-000019	1
70	S-000020	1
71	S-000021	\N
72	S-000022	3
73	S-000023	9
74	S-000024	3
75	S-000025	9
76	S-000026	\N
77	S-000027	4
78	S-000028	3
79	S-000029	6
80	S-000030	\N
81	S-000031	5
82	S-000032	\N
83	S-000033	4
84	S-000034	9
85	S-000035	8
86	S-000036	\N
87	S-000037	\N
88	S-000038	4
89	S-000039	\N
90	S-000040	\N
91	S-000041	\N
92	S-000042	2
93	S-000043	5
94	S-000044	\N
95	S-000045	\N
96	S-000046	\N
97	S-000047	\N
98	S-000048	6
99	S-000049	2
100	S-000050	1
101	S-000051	\N
102	S-000052	\N
103	S-000053	\N
104	S-000054	3
105	S-000055	6
106	S-000056	6
107	S-000057	7
108	S-000058	\N
109	S-000059	\N
110	S-000060	\N
111	S-000061	6
112	S-000062	6
113	S-000063	\N
114	S-000064	\N
115	S-000065	3
116	S-000066	4
117	S-000067	5
118	S-000068	2
119	S-000069	\N
120	S-000070	\N
121	S-000071	1
122	S-000072	\N
123	S-000073	3
124	S-000074	6
125	S-000075	6
126	S-000076	4
127	S-000077	\N
128	S-000078	\N
129	S-000079	6
130	S-000080	\N
131	S-000081	5
132	S-000082	4
133	S-000083	4
134	S-000084	\N
135	S-000085	7
136	S-000086	\N
137	S-000087	\N
138	S-000088	1
139	S-000089	8
140	S-000090	5
141	S-000091	\N
142	S-000092	\N
143	S-000093	1
144	S-000094	\N
145	S-000095	\N
146	S-000096	7
147	S-000097	\N
148	S-000098	7
149	S-000099	\N
150	S-000100	4
151	S-000101	4
152	S-000102	\N
153	S-000103	\N
154	S-000104	7
155	S-000105	6
156	S-000106	4
157	S-000107	\N
158	S-000108	\N
159	S-000109	\N
160	S-000110	8
161	S-000111	\N
162	S-000112	5
163	S-000113	\N
164	S-000114	8
165	S-000115	\N
166	S-000116	\N
167	S-000117	\N
168	S-000118	\N
169	S-000119	\N
170	S-000120	\N
171	S-000121	\N
172	S-000122	\N
173	S-000123	9
174	S-000124	5
175	S-000125	\N
176	S-000126	\N
177	S-000127	3
178	S-000128	\N
179	S-000129	7
180	S-000130	1
181	S-000131	\N
182	S-000132	\N
183	S-000133	\N
184	S-000134	\N
185	S-000135	\N
186	S-000136	1
187	S-000137	1
188	S-000138	\N
189	S-000139	\N
190	S-000140	\N
191	S-000141	\N
192	S-000142	2
193	S-000143	7
194	S-000144	\N
195	S-000145	\N
196	S-000146	\N
197	S-000147	5
198	S-000148	\N
199	S-000149	\N
200	S-000150	\N
201	S-000151	\N
202	S-000152	8
203	S-000153	\N
204	S-000154	7
205	S-000155	8
206	S-000156	\N
207	S-000157	2
208	S-000158	7
209	S-000159	\N
210	S-000160	9
211	S-000161	1
212	S-000162	3
213	S-000163	\N
214	S-000164	\N
215	S-000165	3
216	S-000166	6
217	S-000167	2
218	S-000168	\N
219	S-000169	6
220	S-000170	\N
221	S-000171	\N
222	S-000172	\N
223	S-000173	8
224	S-000174	\N
225	S-000175	1
226	S-000176	8
227	S-000177	5
228	S-000178	\N
229	S-000179	2
230	S-000180	\N
231	S-000181	3
232	S-000182	\N
233	S-000183	\N
234	S-000184	\N
235	S-000185	\N
236	S-000186	\N
237	S-000187	6
238	S-000188	\N
239	S-000189	\N
240	S-000190	\N
241	S-000191	\N
242	S-000192	7
243	S-000193	4
244	S-000194	\N
245	S-000195	\N
246	S-000196	\N
247	S-000197	7
248	S-000198	5
249	S-000199	\N
250	S-000200	\N
251	S-000201	\N
252	S-000202	1
253	S-000203	9
254	S-000204	\N
255	S-000205	2
256	S-000206	2
257	S-000207	\N
258	S-000208	5
259	S-000209	\N
260	S-000210	\N
261	S-000211	7
262	S-000212	\N
263	S-000213	\N
264	S-000214	\N
265	S-000215	9
266	S-000216	2
267	S-000217	\N
268	S-000218	\N
269	S-000219	\N
270	S-000220	\N
271	S-000221	\N
272	S-000222	5
273	S-000223	5
274	S-000224	8
275	S-000225	8
276	S-000226	7
277	S-000227	4
278	S-000228	\N
279	S-000229	3
280	S-000230	1
281	S-000231	\N
282	S-000232	\N
283	S-000233	9
284	S-000234	2
285	S-000235	1
286	S-000236	\N
287	S-000237	7
288	S-000238	6
289	S-000239	\N
290	S-000240	\N
291	S-000241	4
292	S-000242	\N
293	S-000243	\N
294	S-000244	3
295	S-000245	\N
296	S-000246	4
297	S-000247	\N
298	S-000248	\N
299	S-000249	\N
300	S-000250	\N
301	S-000251	\N
302	S-000252	4
303	S-000253	\N
304	S-000254	2
305	S-000255	\N
306	S-000256	5
307	S-000257	4
308	S-000258	\N
309	S-000259	\N
310	S-000260	\N
311	S-000261	\N
312	S-000262	9
313	S-000263	3
314	S-000264	7
315	S-000265	\N
316	S-000266	\N
317	S-000267	7
318	S-000268	\N
319	S-000269	\N
320	S-000270	\N
321	S-000271	1
322	S-000272	9
323	S-000273	\N
324	S-000274	\N
325	S-000275	8
326	S-000276	2
327	S-000277	\N
328	S-000278	\N
329	S-000279	\N
330	S-000280	1
331	S-000281	9
332	S-000282	5
333	S-000283	\N
334	S-000284	\N
335	S-000285	6
336	S-000286	\N
337	S-000287	\N
338	S-000288	9
339	S-000289	\N
340	S-000290	4
341	S-000291	\N
342	S-000292	\N
343	S-000293	\N
344	S-000294	2
345	S-000295	8
346	S-000296	\N
347	S-000297	\N
348	S-000298	7
349	S-000299	4
350	S-000300	5
351	S-000301	\N
352	S-000302	1
353	S-000303	\N
354	S-000304	\N
355	S-000305	\N
356	S-000306	\N
357	S-000307	6
358	S-000308	\N
359	S-000309	\N
360	S-000310	\N
361	S-000311	1
362	S-000312	4
363	S-000313	4
364	S-000314	\N
365	S-000315	\N
366	S-000316	\N
367	S-000317	7
368	S-000318	\N
369	S-000319	\N
370	S-000320	6
371	S-000321	\N
372	S-000322	5
373	S-000323	\N
374	S-000324	\N
375	S-000325	\N
376	S-000326	6
377	S-000327	8
378	S-000328	\N
379	S-000329	\N
380	S-000330	\N
381	S-000331	1
382	S-000332	\N
383	S-000333	9
384	S-000334	\N
385	S-000335	7
386	S-000336	2
387	S-000337	\N
388	S-000338	8
389	S-000339	\N
390	S-000340	1
391	S-000341	\N
392	S-000342	8
393	S-000343	3
394	S-000344	8
395	S-000345	5
396	S-000346	9
397	S-000347	1
398	S-000348	\N
399	S-000349	3
400	S-000350	4
401	S-000351	\N
402	S-000352	\N
403	S-000353	\N
404	S-000354	\N
405	S-000355	5
406	S-000356	1
407	S-000357	7
408	S-000358	\N
409	S-000359	9
410	S-000360	\N
411	S-000361	\N
412	S-000362	\N
413	S-000363	\N
414	S-000364	3
415	S-000365	8
416	S-000366	\N
417	S-000367	\N
418	S-000368	\N
419	S-000369	\N
420	S-000370	8
421	S-000371	9
422	S-000372	\N
423	S-000373	3
424	S-000374	1
425	S-000375	\N
426	S-000376	2
427	S-000377	6
428	S-000378	\N
429	S-000379	6
430	S-000380	2
431	S-000381	\N
432	S-000382	\N
433	S-000383	\N
434	S-000384	\N
435	S-000385	3
436	S-000386	\N
437	S-000387	\N
438	S-000388	\N
439	S-000389	6
440	S-000390	9
441	S-000391	7
442	S-000392	\N
443	S-000393	4
444	S-000394	\N
445	S-000395	\N
446	S-000396	\N
447	S-000397	\N
448	S-000398	2
449	S-000399	9
450	S-000400	7
451	S-000401	\N
452	S-000402	\N
453	S-000403	\N
454	S-000404	\N
455	S-000405	2
456	S-000406	\N
457	S-000407	8
458	S-000408	2
459	S-000409	\N
460	S-000410	\N
461	S-000411	\N
462	S-000412	5
463	S-000413	3
464	S-000414	\N
465	S-000415	1
466	S-000416	5
467	S-000417	1
468	S-000418	\N
469	S-000419	1
470	S-000420	\N
471	S-000421	\N
472	S-000422	6
473	S-000423	\N
474	S-000424	4
475	S-000425	3
476	S-000426	\N
477	S-000427	\N
478	S-000428	9
479	S-000429	\N
480	S-000430	9
481	S-000431	\N
482	S-000432	\N
483	S-000433	6
484	S-000434	9
485	S-000435	8
486	S-000436	5
487	S-000437	1
488	S-000438	\N
489	S-000439	\N
490	S-000440	6
491	S-000441	8
492	S-000442	\N
493	S-000443	6
494	S-000444	\N
495	S-000445	\N
496	S-000446	5
497	S-000447	\N
498	S-000448	\N
499	S-000449	\N
500	S-000450	\N
501	S-000451	\N
502	S-000452	\N
503	S-000453	\N
504	S-000454	6
505	S-000455	\N
506	S-000456	\N
507	S-000457	4
508	S-000458	\N
509	S-000459	2
510	S-000460	\N
511	S-000461	9
512	S-000462	3
513	S-000463	3
514	S-000464	4
515	S-000465	\N
516	S-000466	\N
517	S-000467	\N
518	S-000468	\N
519	S-000469	4
520	S-000470	2
521	S-000471	\N
522	S-000472	3
523	S-000473	\N
524	S-000474	\N
525	S-000475	\N
526	S-000476	8
527	S-000477	7
528	S-000478	8
529	S-000479	9
530	S-000480	\N
531	S-000481	5
532	S-000482	\N
533	S-000483	7
534	S-000484	4
535	S-000485	\N
536	S-000486	6
537	S-000487	\N
538	S-000488	\N
539	S-000489	5
540	S-000490	\N
541	S-000491	8
542	S-000492	5
543	S-000493	7
544	S-000494	\N
545	S-000495	8
546	S-000496	\N
547	S-000497	1
548	S-000498	\N
549	S-000499	1
550	S-000500	3
551	S-000501	1
552	S-000502	\N
553	S-000503	\N
554	S-000504	9
555	S-000505	3
556	S-000506	3
557	S-000507	6
558	S-000508	\N
559	S-000509	\N
560	S-000510	\N
561	S-000511	6
562	S-000512	\N
563	S-000513	\N
564	S-000514	6
565	S-000515	\N
566	S-000516	\N
567	S-000517	\N
568	S-000518	2
569	S-000519	\N
570	S-000520	\N
571	S-000521	\N
572	S-000522	7
573	S-000523	\N
574	S-000524	\N
575	S-000525	\N
576	S-000526	\N
577	S-000527	\N
578	S-000528	\N
579	S-000529	\N
580	S-000530	4
581	S-000531	8
582	S-000532	5
583	S-000533	1
584	S-000534	6
585	S-000535	2
586	S-000536	\N
587	S-000537	\N
588	S-000538	5
589	S-000539	8
590	S-000540	\N
591	S-000541	6
592	S-000542	7
593	S-000543	\N
594	S-000544	9
595	S-000545	\N
596	S-000546	\N
597	S-000547	9
598	S-000548	3
599	S-000549	4
600	S-000550	\N
601	S-000551	\N
602	S-000552	\N
603	S-000553	\N
604	S-000554	1
605	S-000555	9
606	S-000556	\N
607	S-000557	\N
608	S-000558	1
609	S-000559	\N
610	S-000560	\N
611	S-000561	\N
612	S-000562	1
613	S-000563	\N
614	S-000564	7
615	S-000565	2
616	S-000566	\N
617	S-000567	9
618	S-000568	4
619	S-000569	\N
620	S-000570	9
621	S-000571	\N
622	S-000572	8
623	S-000573	1
624	S-000574	5
625	S-000575	8
626	S-000576	2
627	S-000577	9
628	S-000578	4
629	S-000579	\N
630	S-000580	1
631	S-000581	\N
632	S-000582	6
633	S-000583	3
634	S-000584	6
635	S-000585	3
636	S-000586	\N
637	S-000587	9
638	S-000588	\N
639	S-000589	6
640	S-000590	\N
641	S-000591	3
642	S-000592	3
643	S-000593	\N
644	S-000594	1
645	S-000595	\N
646	S-000596	9
647	S-000597	\N
648	S-000598	1
649	S-000599	\N
650	S-000600	\N
651	S-000601	5
652	S-000602	\N
653	S-000603	5
654	S-000604	7
655	S-000605	\N
656	S-000606	5
657	S-000607	7
658	S-000608	\N
659	S-000609	2
660	S-000610	9
661	S-000611	\N
662	S-000612	9
663	S-000613	6
664	S-000614	7
665	S-000615	9
666	S-000616	9
667	S-000617	7
668	S-000618	\N
669	S-000619	\N
670	S-000620	3
671	S-000621	7
672	S-000622	5
673	S-000623	5
674	S-000624	\N
675	S-000625	2
676	S-000626	\N
677	S-000627	\N
678	S-000628	\N
679	S-000629	\N
680	S-000630	\N
681	S-000631	8
682	S-000632	1
683	S-000633	\N
684	S-000634	\N
685	S-000635	1
686	S-000636	1
687	S-000637	3
688	S-000638	\N
689	S-000639	6
690	S-000640	9
691	S-000641	\N
692	S-000642	\N
693	S-000643	4
694	S-000644	2
695	S-000645	\N
696	S-000646	6
697	S-000647	\N
698	S-000648	\N
699	S-000649	\N
700	S-000650	\N
701	S-000651	\N
\.

-- student_instrument
\! echo 'Insert into Student Instrument..';
COPY student_instrument (student_person_id, instrument_id, skill_level) FROM stdin;
51	12	beginner
52	12	beginner
53	11	beginner
54	7	intermediate
55	3	beginner
55	5	intermediate
55	7	advanced
56	8	intermediate
57	10	advanced
58	9	beginner
59	2	beginner
60	4	intermediate
61	10	intermediate
62	10	intermediate
63	12	advanced
64	5	intermediate
65	12	beginner
66	2	intermediate
67	3	intermediate
68	3	advanced
69	3	advanced
69	5	intermediate
70	12	beginner
71	8	advanced
71	2	intermediate
72	3	intermediate
73	8	beginner
74	5	advanced
75	5	intermediate
76	6	intermediate
76	10	beginner
76	2	intermediate
76	9	intermediate
76	1	intermediate
77	10	advanced
78	6	beginner
79	8	intermediate
80	8	intermediate
80	4	advanced
81	12	beginner
81	7	intermediate
82	7	advanced
83	8	intermediate
83	6	intermediate
83	7	advanced
84	4	advanced
85	12	beginner
85	9	beginner
86	6	beginner
87	9	intermediate
88	2	intermediate
89	8	advanced
90	10	intermediate
90	1	intermediate
91	5	intermediate
92	1	advanced
92	9	advanced
93	10	intermediate
94	10	intermediate
94	5	intermediate
95	7	beginner
96	3	beginner
97	3	advanced
98	6	advanced
98	3	advanced
99	10	beginner
100	6	intermediate
101	9	beginner
102	3	intermediate
103	1	intermediate
104	7	advanced
105	8	advanced
106	12	advanced
106	7	intermediate
107	4	beginner
108	6	beginner
109	8	advanced
110	2	beginner
111	7	advanced
112	9	beginner
113	3	beginner
113	2	beginner
114	12	intermediate
115	4	intermediate
115	10	intermediate
115	3	beginner
116	1	intermediate
117	11	advanced
118	4	intermediate
119	9	advanced
120	5	beginner
120	4	intermediate
121	12	beginner
122	9	intermediate
123	6	intermediate
124	6	advanced
125	8	intermediate
126	5	advanced
126	10	advanced
127	9	intermediate
128	3	intermediate
128	5	advanced
129	8	beginner
130	2	beginner
131	11	intermediate
132	11	advanced
133	10	intermediate
134	4	advanced
135	9	beginner
136	4	intermediate
137	8	advanced
138	4	intermediate
138	3	beginner
139	2	intermediate
140	1	advanced
141	7	beginner
142	3	beginner
143	8	intermediate
144	9	advanced
144	5	advanced
145	11	advanced
146	7	beginner
147	10	beginner
148	8	intermediate
149	5	advanced
150	11	advanced
151	12	advanced
151	2	beginner
152	3	advanced
153	3	advanced
154	8	beginner
155	12	advanced
156	6	advanced
157	5	advanced
158	7	beginner
159	3	advanced
159	1	intermediate
160	1	advanced
161	6	advanced
162	1	advanced
163	6	beginner
163	4	intermediate
164	5	intermediate
165	4	advanced
166	2	advanced
167	12	beginner
168	12	beginner
169	2	advanced
170	11	intermediate
171	9	advanced
172	7	intermediate
173	1	advanced
174	3	intermediate
175	9	beginner
176	7	intermediate
177	5	advanced
177	1	advanced
178	10	intermediate
179	10	intermediate
180	7	intermediate
181	2	beginner
182	11	intermediate
182	4	beginner
183	5	advanced
183	11	beginner
184	4	beginner
185	12	beginner
185	5	intermediate
186	12	intermediate
187	6	advanced
188	1	advanced
189	1	advanced
190	3	intermediate
191	3	intermediate
192	12	advanced
192	11	advanced
192	7	advanced
192	4	intermediate
193	11	intermediate
193	3	advanced
194	11	intermediate
195	11	intermediate
195	2	intermediate
196	3	beginner
197	2	beginner
198	5	advanced
198	4	beginner
199	4	intermediate
200	2	intermediate
201	3	intermediate
202	5	advanced
203	7	intermediate
204	4	intermediate
205	1	advanced
205	3	advanced
205	10	advanced
206	12	beginner
207	6	intermediate
207	7	advanced
208	12	beginner
208	6	advanced
208	2	intermediate
209	5	beginner
210	7	intermediate
211	2	intermediate
211	5	beginner
211	6	advanced
212	3	intermediate
213	12	advanced
213	5	intermediate
214	8	beginner
215	7	intermediate
216	7	intermediate
217	6	advanced
218	8	intermediate
218	11	advanced
218	12	intermediate
219	1	beginner
220	7	intermediate
221	12	intermediate
222	8	intermediate
223	9	beginner
224	10	advanced
225	1	beginner
226	3	advanced
227	9	intermediate
228	3	beginner
229	9	beginner
230	3	beginner
230	6	advanced
231	9	advanced
232	5	intermediate
233	12	advanced
234	1	advanced
235	6	advanced
235	9	intermediate
236	12	beginner
237	6	intermediate
238	6	intermediate
239	11	beginner
240	12	intermediate
241	7	advanced
242	11	intermediate
243	1	advanced
244	10	intermediate
245	1	advanced
246	11	intermediate
247	11	intermediate
247	4	beginner
248	6	intermediate
248	12	beginner
249	3	advanced
250	7	advanced
251	1	beginner
252	9	advanced
253	6	intermediate
254	5	intermediate
255	6	advanced
255	9	beginner
256	1	beginner
256	8	beginner
256	10	advanced
257	6	intermediate
258	9	intermediate
259	12	beginner
259	1	advanced
260	1	beginner
261	12	advanced
262	6	beginner
262	8	beginner
263	8	advanced
264	7	beginner
264	3	advanced
265	4	intermediate
266	7	intermediate
267	8	beginner
267	1	advanced
268	7	advanced
269	6	intermediate
269	4	intermediate
270	11	advanced
270	5	intermediate
271	3	advanced
271	12	advanced
272	11	advanced
272	4	beginner
273	11	advanced
274	6	advanced
274	7	beginner
274	3	advanced
274	8	advanced
275	6	intermediate
275	4	beginner
276	2	intermediate
277	9	intermediate
277	8	intermediate
278	5	intermediate
278	12	beginner
279	7	advanced
279	11	beginner
280	9	beginner
281	12	advanced
282	8	beginner
283	12	intermediate
284	6	beginner
285	11	advanced
286	4	intermediate
287	6	intermediate
288	4	intermediate
289	7	intermediate
290	4	advanced
291	1	intermediate
292	12	intermediate
293	2	intermediate
294	8	intermediate
295	11	beginner
295	12	intermediate
296	4	intermediate
297	7	beginner
297	12	beginner
298	5	beginner
299	6	beginner
300	7	advanced
301	6	intermediate
302	6	intermediate
303	12	advanced
304	7	advanced
304	12	intermediate
305	3	advanced
306	2	intermediate
307	5	beginner
308	5	intermediate
308	1	advanced
309	7	beginner
310	2	beginner
311	11	advanced
311	3	beginner
312	5	advanced
313	5	intermediate
314	3	beginner
315	4	advanced
315	8	intermediate
315	12	intermediate
315	9	advanced
316	10	advanced
316	6	advanced
316	12	intermediate
317	1	intermediate
318	10	advanced
319	3	advanced
320	2	intermediate
321	10	beginner
322	10	intermediate
323	3	beginner
324	8	beginner
325	6	advanced
326	7	advanced
327	5	beginner
328	11	beginner
328	8	intermediate
329	5	advanced
330	12	intermediate
331	10	advanced
332	4	advanced
333	10	advanced
334	8	beginner
334	7	beginner
334	9	advanced
335	11	beginner
335	1	intermediate
336	2	advanced
337	6	advanced
338	7	beginner
339	9	beginner
339	5	intermediate
340	11	intermediate
341	2	intermediate
342	11	advanced
343	2	intermediate
343	6	beginner
344	2	advanced
344	8	intermediate
344	9	beginner
345	12	advanced
345	2	advanced
346	12	intermediate
347	7	advanced
347	8	intermediate
348	4	beginner
349	6	beginner
350	9	intermediate
350	8	intermediate
350	11	advanced
351	2	advanced
352	5	advanced
353	2	advanced
353	9	beginner
354	4	beginner
355	5	beginner
356	5	advanced
357	3	beginner
357	11	advanced
358	4	advanced
359	7	beginner
360	7	advanced
361	2	intermediate
361	11	beginner
361	12	advanced
362	4	advanced
363	4	beginner
364	6	beginner
365	11	advanced
366	4	advanced
367	4	beginner
368	12	advanced
369	8	intermediate
370	10	advanced
371	11	advanced
372	12	beginner
372	3	beginner
373	8	beginner
374	6	advanced
374	1	intermediate
374	2	intermediate
375	2	intermediate
376	5	advanced
377	9	beginner
378	2	beginner
378	9	advanced
379	4	advanced
379	5	intermediate
379	2	beginner
380	1	advanced
381	10	beginner
382	2	advanced
382	4	advanced
383	4	beginner
384	9	beginner
385	12	advanced
386	5	advanced
387	4	advanced
388	4	beginner
389	2	beginner
389	3	intermediate
390	6	advanced
391	8	advanced
391	11	advanced
392	11	advanced
393	10	beginner
394	8	intermediate
395	4	intermediate
395	12	beginner
396	3	advanced
397	12	beginner
398	4	beginner
399	1	intermediate
399	10	beginner
400	5	beginner
401	1	intermediate
402	11	intermediate
402	4	beginner
402	9	advanced
403	1	advanced
404	11	intermediate
405	6	beginner
406	5	advanced
407	2	beginner
407	4	intermediate
408	1	beginner
409	8	advanced
410	9	advanced
411	11	beginner
411	3	advanced
412	12	advanced
413	1	beginner
414	4	beginner
414	8	beginner
415	5	advanced
416	1	advanced
417	9	intermediate
418	1	advanced
419	5	beginner
420	5	intermediate
421	9	beginner
421	10	advanced
422	10	intermediate
423	11	intermediate
424	11	beginner
424	5	advanced
425	8	beginner
426	4	advanced
427	6	advanced
428	7	intermediate
428	12	intermediate
429	11	intermediate
430	11	advanced
431	9	advanced
432	1	beginner
432	4	beginner
433	8	beginner
434	7	beginner
434	9	beginner
435	7	intermediate
436	2	beginner
436	6	advanced
437	7	intermediate
438	12	advanced
438	5	beginner
439	10	beginner
439	3	advanced
440	4	intermediate
440	3	beginner
441	3	advanced
442	2	beginner
442	6	intermediate
443	9	intermediate
444	4	beginner
445	9	intermediate
446	6	beginner
447	1	beginner
447	8	advanced
447	6	beginner
448	11	advanced
448	4	advanced
449	3	beginner
449	7	intermediate
450	4	beginner
450	2	beginner
451	7	beginner
452	9	intermediate
452	7	intermediate
453	6	advanced
453	8	intermediate
454	7	beginner
455	3	intermediate
456	5	advanced
456	12	intermediate
457	10	beginner
458	6	beginner
459	5	intermediate
460	9	intermediate
461	6	intermediate
462	10	beginner
462	7	advanced
463	5	advanced
464	10	intermediate
465	12	beginner
466	12	beginner
467	12	advanced
468	3	intermediate
468	10	intermediate
469	11	beginner
470	5	beginner
471	3	beginner
472	11	advanced
472	1	intermediate
473	6	advanced
474	9	beginner
475	6	beginner
476	12	advanced
476	4	intermediate
477	9	advanced
477	8	advanced
477	10	beginner
478	4	intermediate
479	1	beginner
480	7	advanced
481	11	beginner
482	12	advanced
483	7	advanced
484	6	advanced
484	8	advanced
484	7	advanced
485	3	beginner
486	9	beginner
486	3	advanced
487	7	intermediate
488	2	beginner
488	8	intermediate
489	3	intermediate
490	12	beginner
491	1	advanced
491	8	advanced
492	10	beginner
492	2	advanced
493	6	advanced
494	8	intermediate
494	9	advanced
495	1	advanced
495	7	beginner
496	2	intermediate
497	11	beginner
498	9	beginner
499	1	beginner
500	12	intermediate
500	11	intermediate
501	1	advanced
501	12	advanced
502	5	intermediate
503	11	advanced
504	4	advanced
505	12	intermediate
505	2	intermediate
506	5	advanced
506	4	beginner
507	5	advanced
508	1	intermediate
509	8	beginner
509	1	advanced
510	3	beginner
510	9	intermediate
510	1	intermediate
511	6	intermediate
512	8	beginner
513	2	beginner
514	10	intermediate
515	2	intermediate
516	5	intermediate
517	12	advanced
517	3	intermediate
518	7	intermediate
519	9	advanced
519	10	advanced
520	6	beginner
521	4	advanced
521	2	intermediate
522	2	intermediate
523	8	intermediate
524	2	advanced
525	6	beginner
525	2	intermediate
525	5	intermediate
525	4	beginner
526	6	beginner
527	10	beginner
528	1	intermediate
529	1	advanced
530	6	beginner
531	6	beginner
532	11	beginner
533	7	beginner
534	1	intermediate
535	4	intermediate
536	4	intermediate
536	10	intermediate
537	6	intermediate
538	9	advanced
538	5	advanced
538	4	beginner
539	1	intermediate
539	10	advanced
540	5	beginner
541	4	beginner
542	5	intermediate
543	6	beginner
543	2	intermediate
544	3	beginner
544	4	intermediate
545	3	intermediate
545	12	beginner
546	10	advanced
546	1	intermediate
547	7	beginner
547	5	intermediate
548	8	intermediate
548	1	beginner
549	10	advanced
550	3	beginner
551	4	advanced
552	5	beginner
552	2	beginner
553	3	intermediate
554	2	beginner
555	1	advanced
555	9	advanced
555	10	beginner
556	11	beginner
557	9	intermediate
558	3	beginner
559	3	advanced
560	5	advanced
561	10	intermediate
561	3	advanced
562	10	advanced
563	7	advanced
564	12	advanced
565	11	beginner
565	9	beginner
566	3	intermediate
567	10	beginner
567	12	intermediate
568	3	beginner
569	6	advanced
570	11	beginner
571	8	beginner
572	6	advanced
573	11	beginner
573	6	advanced
574	11	intermediate
574	1	intermediate
574	10	beginner
575	6	advanced
576	7	advanced
577	8	beginner
578	12	advanced
579	3	beginner
579	9	advanced
579	6	beginner
580	2	intermediate
581	11	beginner
581	2	beginner
582	10	advanced
583	7	beginner
584	7	advanced
585	11	intermediate
586	6	advanced
587	4	intermediate
587	5	intermediate
588	6	advanced
589	12	advanced
590	8	beginner
590	7	beginner
590	2	beginner
591	11	intermediate
592	9	advanced
592	10	advanced
593	5	advanced
594	12	beginner
595	2	advanced
595	1	advanced
596	6	beginner
597	1	intermediate
598	7	intermediate
599	9	beginner
599	8	beginner
599	11	intermediate
600	5	beginner
600	10	beginner
600	7	beginner
601	5	beginner
601	4	advanced
602	1	advanced
603	3	advanced
604	4	advanced
605	12	intermediate
606	5	advanced
607	2	intermediate
608	7	intermediate
608	4	intermediate
609	6	advanced
610	4	beginner
611	3	beginner
612	3	intermediate
613	10	beginner
614	4	intermediate
614	7	intermediate
614	3	beginner
615	1	intermediate
615	5	intermediate
616	1	intermediate
617	12	beginner
618	12	intermediate
618	8	advanced
619	10	advanced
619	11	intermediate
620	10	beginner
621	11	intermediate
621	6	beginner
621	2	intermediate
622	12	advanced
623	1	beginner
624	8	beginner
624	9	intermediate
624	12	advanced
625	12	beginner
626	9	beginner
626	4	advanced
627	1	intermediate
628	5	beginner
629	3	beginner
629	6	beginner
630	5	advanced
631	4	advanced
631	10	beginner
631	8	beginner
631	1	advanced
632	7	beginner
632	2	intermediate
633	10	beginner
633	5	intermediate
633	2	advanced
634	4	advanced
635	11	intermediate
636	2	intermediate
636	3	intermediate
636	5	beginner
636	7	intermediate
637	8	beginner
638	12	intermediate
639	7	advanced
640	12	intermediate
641	4	intermediate
642	2	advanced
642	11	intermediate
643	8	intermediate
644	9	beginner
645	4	beginner
646	6	intermediate
647	4	beginner
648	8	advanced
649	6	beginner
650	3	intermediate
650	4	advanced
651	4	beginner
652	3	intermediate
653	4	intermediate
653	8	advanced
654	6	intermediate
654	7	beginner
654	4	advanced
655	2	intermediate
656	1	intermediate
657	10	advanced
658	9	advanced
658	4	beginner
659	12	beginner
660	11	intermediate
660	12	beginner
661	3	advanced
661	7	intermediate
662	6	beginner
663	5	advanced
664	8	beginner
665	12	beginner
666	2	beginner
666	9	beginner
667	8	intermediate
668	1	intermediate
668	3	intermediate
669	4	intermediate
670	8	intermediate
670	3	intermediate
670	1	intermediate
671	1	intermediate
672	1	beginner
673	7	intermediate
674	10	beginner
674	4	beginner
674	8	intermediate
675	11	beginner
676	2	advanced
677	6	beginner
678	9	intermediate
678	11	advanced
679	12	beginner
679	10	beginner
680	8	advanced
681	9	beginner
682	3	intermediate
683	1	intermediate
684	4	advanced
684	8	beginner
685	4	advanced
686	11	beginner
687	7	intermediate
688	6	intermediate
689	6	intermediate
690	2	beginner
691	5	beginner
691	12	advanced
692	11	advanced
693	9	beginner
693	7	beginner
693	10	advanced
694	5	intermediate
695	1	advanced
696	5	beginner
696	4	advanced
697	4	beginner
698	12	beginner
699	12	intermediate
700	3	advanced
701	12	advanced
\.

-- student_sibling
\! echo 'Insert into Student Sibling..';
COPY student_sibling (student_person_id, sibling_person_id) FROM stdin;
60	61
60	62
61	60
61	62
62	60
62	61
81	82
81	83
82	81
82	83
83	81
83	82
85	86
86	85
98	99
98	100
99	98
99	100
100	98
100	99
120	121
120	122
121	120
121	122
122	120
122	121
126	127
126	128
127	126
127	128
128	126
128	127
129	130
129	131
130	129
130	131
131	129
131	130
137	138
137	139
138	137
138	139
139	137
139	138
140	141
141	140
149	150
149	151
150	149
150	151
151	149
151	150
158	159
159	158
163	164
163	165
164	163
164	165
165	163
165	164
171	172
171	173
172	171
172	173
173	171
173	172
183	184
183	185
184	183
184	185
185	183
185	184
187	188
188	187
192	193
193	192
197	198
197	199
198	197
198	199
199	197
199	198
201	202
202	201
213	214
213	215
214	213
214	215
215	213
215	214
231	232
232	231
235	236
236	235
256	257
256	258
257	256
257	258
258	256
258	257
260	261
260	262
261	260
261	262
262	260
262	261
264	265
265	264
270	271
271	270
272	273
273	272
275	276
275	277
276	275
276	277
277	275
277	276
280	281
280	282
281	280
281	282
282	280
282	281
284	285
284	286
285	284
285	286
286	284
286	285
293	294
293	295
294	293
294	295
295	293
295	294
296	297
296	298
297	296
297	298
298	296
298	297
299	300
299	301
300	299
300	301
301	299
301	300
315	316
315	317
316	315
316	317
317	315
317	316
319	320
319	321
320	319
320	321
321	319
321	320
327	328
328	327
334	335
335	334
347	348
347	349
348	347
348	349
349	347
349	348
350	351
350	352
351	350
351	352
352	350
352	351
356	357
357	356
361	362
362	361
364	365
364	366
365	364
365	366
366	364
366	365
368	369
369	368
370	371
370	372
371	370
371	372
372	370
372	371
375	376
376	375
378	379
378	380
379	378
379	380
380	378
380	379
381	382
382	381
385	386
385	387
386	385
386	387
387	385
387	386
390	391
390	392
391	390
391	392
392	390
392	391
393	394
394	393
395	396
396	395
397	398
398	397
406	407
407	406
409	410
409	411
410	409
410	411
411	409
411	410
412	413
412	414
413	412
413	414
414	412
414	413
415	416
415	417
416	415
416	417
417	415
417	416
418	419
418	420
419	418
419	420
420	418
420	419
421	422
421	423
422	421
422	423
423	421
423	422
425	426
425	427
426	425
426	427
427	425
427	426
431	432
432	431
435	436
435	437
436	435
436	437
437	435
437	436
449	450
450	449
459	460
459	461
460	459
460	461
461	459
461	460
465	466
465	467
466	465
466	467
467	465
467	466
468	469
469	468
474	475
475	474
477	478
477	479
478	477
478	479
479	477
479	478
489	490
489	491
490	489
490	491
491	489
491	490
492	493
493	492
499	500
500	499
512	513
513	512
518	519
519	518
521	522
522	521
537	538
538	537
550	551
550	552
551	550
551	552
552	550
552	551
555	556
555	557
556	555
556	557
557	555
557	556
559	560
560	559
562	563
562	564
563	562
563	564
564	562
564	563
567	568
568	567
574	575
575	574
599	600
600	599
607	608
607	609
608	607
608	609
609	607
609	608
611	612
611	613
612	611
612	613
613	611
613	612
614	615
614	616
615	614
615	616
616	614
616	615
618	619
618	620
619	618
619	620
620	618
620	619
626	627
626	628
627	626
627	628
628	626
628	627
630	631
631	630
633	634
633	635
634	633
634	635
635	633
635	634
644	645
645	644
652	653
653	652
655	656
656	655
657	658
658	657
661	662
661	663
662	661
662	663
663	661
663	662
673	674
673	675
674	673
674	675
675	673
675	674
680	681
680	682
681	680
681	682
682	680
682	681
684	685
684	686
685	684
685	686
686	684
686	685
692	693
692	694
693	692
693	694
694	692
694	693
\.

-- parent_student
\! echo 'Insert into Parent Student..';
COPY parent_student (parent_id, student_person_id) FROM stdin;
1	51
2	51
3	52
4	52
5	53
6	54
7	54
8	55
9	56
10	56
11	57
12	58
13	59
14	60
14	61
14	62
15	63
16	64
17	65
18	65
19	66
20	66
21	67
22	67
23	68
24	69
25	69
26	70
27	70
28	71
29	71
30	72
31	73
32	73
33	74
34	74
35	75
36	75
37	76
38	77
39	78
40	78
41	79
42	80
43	80
44	81
44	82
44	83
45	81
45	82
45	83
46	84
47	84
48	85
48	86
49	85
49	86
50	87
51	88
52	89
53	89
54	90
55	90
56	91
57	91
58	92
59	93
60	93
61	94
62	95
63	95
64	96
65	97
66	97
67	98
67	99
67	100
68	101
69	101
70	102
71	103
72	104
73	104
74	105
75	105
76	106
77	106
78	107
79	108
80	108
81	109
82	110
83	111
84	112
85	113
86	114
87	114
88	115
89	116
90	117
91	117
92	118
93	119
94	120
94	121
94	122
95	123
96	123
97	124
98	125
99	125
100	126
100	127
100	128
101	126
101	127
101	128
102	129
102	130
102	131
103	129
103	130
103	131
104	132
105	133
106	134
107	135
108	135
109	136
110	137
110	138
110	139
111	137
111	138
111	139
112	140
112	141
113	140
113	141
114	142
115	143
116	143
117	144
118	145
119	146
120	146
121	147
122	148
123	148
124	149
124	150
124	151
125	149
125	150
125	151
126	152
127	153
128	154
129	154
130	155
131	155
132	156
133	156
134	157
135	157
136	158
136	159
137	160
138	161
139	161
140	162
141	163
141	164
141	165
142	166
143	167
144	167
145	168
146	168
147	169
148	169
149	170
150	170
151	171
151	172
151	173
152	171
152	172
152	173
153	174
154	175
155	176
156	177
157	177
158	178
159	179
160	180
161	181
162	181
163	182
164	183
164	184
164	185
165	186
166	187
166	188
167	187
167	188
168	189
169	189
170	190
171	191
172	192
172	193
173	194
174	194
175	195
176	195
177	196
178	196
179	197
179	198
179	199
180	197
180	198
180	199
181	200
182	201
182	202
183	203
184	204
185	205
186	205
187	206
188	207
189	207
190	208
191	209
192	209
193	210
194	211
195	211
196	212
197	212
198	213
198	214
198	215
199	216
200	216
201	217
202	217
203	218
204	219
205	220
206	220
207	221
208	221
209	222
210	222
211	223
212	224
213	225
214	226
215	226
216	227
217	227
218	228
219	228
220	229
221	229
222	230
223	231
223	232
224	231
224	232
225	233
226	234
227	235
227	236
228	235
228	236
229	237
230	238
231	238
232	239
233	240
234	241
235	242
236	243
237	244
238	245
239	245
240	246
241	246
242	247
243	248
244	248
245	249
246	250
247	250
248	251
249	251
250	252
251	252
252	253
253	253
254	254
255	255
256	256
256	257
256	258
257	256
257	257
257	258
258	259
259	259
260	260
260	261
260	262
261	260
261	261
261	262
262	263
263	263
264	264
264	265
265	264
265	265
266	266
267	267
268	267
269	268
270	269
271	270
271	271
272	270
272	271
273	272
273	273
274	272
274	273
275	274
276	275
276	276
276	277
277	275
277	276
277	277
278	278
279	279
280	280
280	281
280	282
281	280
281	281
281	282
282	283
283	283
284	284
284	285
284	286
285	284
285	285
285	286
286	287
287	288
288	288
289	289
290	290
291	291
292	291
293	292
294	292
295	293
295	294
295	295
296	293
296	294
296	295
297	296
297	297
297	298
298	296
298	297
298	298
299	299
299	300
299	301
300	299
300	300
300	301
301	302
302	302
303	303
304	304
305	304
306	305
307	306
308	307
309	307
310	308
311	308
312	309
313	309
314	310
315	311
316	311
317	312
318	313
319	313
320	314
321	315
321	316
321	317
322	318
323	318
324	319
324	320
324	321
325	319
325	320
325	321
326	322
327	322
328	323
329	324
330	325
331	326
332	327
332	328
333	327
333	328
334	329
335	329
336	330
337	331
338	331
339	332
340	333
341	334
341	335
342	336
343	336
344	337
345	337
346	338
347	338
348	339
349	340
350	340
351	341
352	341
353	342
354	342
355	343
356	343
357	344
358	344
359	345
360	346
361	347
361	348
361	349
362	350
362	351
362	352
363	353
364	354
365	355
366	356
366	357
367	358
368	358
369	359
370	359
371	360
372	361
372	362
373	361
373	362
374	363
375	364
375	365
375	366
376	367
377	367
378	368
378	369
379	368
379	369
380	370
380	371
380	372
381	373
382	374
383	375
383	376
384	377
385	377
386	378
386	379
386	380
387	378
387	379
387	380
388	381
388	382
389	383
390	383
391	384
392	384
393	385
393	386
393	387
394	385
394	386
394	387
395	388
396	388
397	389
398	389
399	390
399	391
399	392
400	393
400	394
401	395
401	396
402	395
402	396
403	397
403	398
404	399
405	400
406	401
407	402
408	403
409	403
410	404
411	404
412	405
413	405
414	406
414	407
415	406
415	407
416	408
417	408
418	409
418	410
418	411
419	412
419	413
419	414
420	415
420	416
420	417
421	415
421	416
421	417
422	418
422	419
422	420
423	418
423	419
423	420
424	421
424	422
424	423
425	424
426	424
427	425
427	426
427	427
428	428
429	429
430	430
431	430
432	431
432	432
433	431
433	432
434	433
435	434
436	434
437	435
437	436
437	437
438	438
439	439
440	440
441	440
442	441
443	441
444	442
445	442
446	443
447	444
448	445
449	446
450	446
451	447
452	448
453	448
454	449
454	450
455	451
456	452
457	453
458	453
459	454
460	455
461	455
462	456
463	457
464	457
465	458
466	458
467	459
467	460
467	461
468	462
469	462
470	463
471	464
472	464
473	465
473	466
473	467
474	468
474	469
475	470
476	470
477	471
478	472
479	472
480	473
481	474
481	475
482	476
483	477
483	478
483	479
484	477
484	478
484	479
485	480
486	481
487	482
488	482
489	483
490	483
491	484
492	484
493	485
494	486
495	486
496	487
497	487
498	488
499	489
499	490
499	491
500	492
500	493
501	494
502	494
503	495
504	496
505	497
506	498
507	498
508	499
508	500
509	499
509	500
510	501
511	502
512	502
513	503
514	504
515	505
516	505
517	506
518	506
519	507
520	507
521	508
522	509
523	510
524	511
525	512
525	513
526	514
527	514
528	515
529	516
530	516
531	517
532	517
533	518
533	519
534	520
535	520
536	521
536	522
537	521
537	522
538	523
539	524
540	524
541	525
542	526
543	526
544	527
545	527
546	528
547	529
548	529
549	530
550	530
551	531
552	532
553	533
554	534
555	535
556	535
557	536
558	536
559	537
559	538
560	539
561	539
562	540
563	541
564	541
565	542
566	543
567	544
568	544
569	545
570	545
571	546
572	547
573	547
574	548
575	549
576	549
577	550
577	551
577	552
578	553
579	554
580	554
581	555
581	556
581	557
582	558
583	559
583	560
584	559
584	560
585	561
586	561
587	562
587	563
587	564
588	565
589	565
590	566
591	567
591	568
592	569
593	570
594	571
595	572
596	573
597	573
598	574
598	575
599	576
600	577
601	578
602	579
603	580
604	581
605	581
606	582
607	582
608	583
609	584
610	584
611	585
612	585
613	586
614	587
615	587
616	588
617	588
618	589
619	589
620	590
621	591
622	592
623	592
624	593
625	593
626	594
627	594
628	595
629	596
630	597
631	597
632	598
633	598
634	599
634	600
635	601
636	602
637	602
638	603
639	603
640	604
641	604
642	605
643	605
644	606
645	607
645	608
645	609
646	610
647	610
648	611
648	612
648	613
649	611
649	612
649	613
650	614
650	615
650	616
651	614
651	615
651	616
652	617
653	617
654	618
654	619
654	620
655	621
656	622
657	622
658	623
659	624
660	625
661	626
661	627
661	628
662	629
663	629
664	630
664	631
665	630
665	631
666	632
667	632
668	633
668	634
668	635
669	633
669	634
669	635
670	636
671	637
672	637
673	638
674	638
675	639
676	639
677	640
678	641
679	642
680	642
681	643
682	644
682	645
683	646
684	647
685	647
686	648
687	648
688	649
689	649
690	650
691	650
692	651
693	652
693	653
694	652
694	653
695	654
696	654
697	655
697	656
698	657
698	658
699	659
700	659
701	660
702	660
703	661
703	662
703	663
704	661
704	662
704	663
705	664
706	664
707	665
708	666
709	667
710	667
711	668
712	669
713	670
714	670
715	671
716	672
717	672
718	673
718	674
718	675
719	673
719	674
719	675
720	676
721	676
722	677
723	677
724	678
725	679
726	679
727	680
727	681
727	682
728	683
729	683
730	684
730	685
730	686
731	687
732	687
733	688
734	688
735	689
736	689
737	690
738	691
739	691
740	692
740	693
740	694
741	695
742	695
743	696
744	697
745	697
746	698
747	698
748	699
749	699
750	700
751	700
752	701
\.

-- student_application
\! echo 'Insert into Student Application..';
COPY student_application (first_name, last_name, birth_date, person_number, email_id, phone_id, instrument_id, skill_level, genre_id) FROM stdin;
Stella	Svensson	2010-01-01	100101-1236	1454	1349	1	beginner	\N
Loke	Åberg	2010-05-12	100512-4324	1455	1350	2	intermediate	\N
William	Björk	2008-05-10	080510-0930	1456	1351	7	advanced	\N
Carl-Johan	Holmgren	2010-10-10	101010-2380	1457	1352	\N	\N	5
Yonis	Nilsson	2009-12-07	091207-3202	1458	1353	\N	\N	3
\.

-- advanced_audition
\! echo 'Insert into Advanced Audition..';
COPY advanced_audition (student_application_id, date, time) FROM stdin;
3	2020-01-07	00:00
\.

-- instrument_in_stock
\! echo 'Insert into Instrument In Stock..';
COPY instrument_in_stock (instrument_brand, available_quantity, instrument_id) FROM stdin;
Gibson	10	1
Harman Professional	10	1
Yamaha	10	1
Gibson	10	2
Harman Professional	10	2
Yamaha	8	2
Gibson	7	3
Harman Professional	5	3
Yamaha	7	3
Gibson	10	4
Harman Professional	8	4
Yamaha	6	4
Gibson	8	5
Harman Professional	8	5
Yamaha	8	5
Gibson	5	6
Harman Professional	9	6
Yamaha	9	6
Gibson	8	7
Harman Professional	9	7
Yamaha	10	7
Gibson	8	8
Harman Professional	5	8
Yamaha	6	8
Gibson	10	9
Harman Professional	10	9
Yamaha	10	9
Gibson	6	10
Harman Professional	8	10
Yamaha	9	10
Gibson	7	11
Harman Professional	8	11
Yamaha	5	11
Gibson	5	12
Harman Professional	9	12
Yamaha	9	12
\.

-- pricing_scheme_instrument_fee
\! echo 'Insert into Pricing Scheme Instrument Fee..';
COPY pricing_scheme_instrument_fee (date, instrument_in_stock_id, price) FROM stdin;
2017-01-01	1	229
2017-01-01	2	239
2017-01-01	3	79
2017-01-01	4	129
2017-01-01	5	49
2017-01-01	6	99
2017-01-01	7	169
2017-01-01	8	99
2017-01-01	9	239
2017-01-01	10	189
2017-01-01	11	99
2017-01-01	12	89
2017-01-01	13	229
2017-01-01	14	189
2017-01-01	15	49
2017-01-01	16	229
2017-01-01	17	129
2017-01-01	18	109
2017-01-01	19	149
2017-01-01	20	109
2017-01-01	21	219
2017-01-01	22	179
2017-01-01	23	159
2017-01-01	24	79
2017-01-01	25	199
2017-01-01	26	49
2017-01-01	27	59
2017-01-01	28	209
2017-01-01	29	99
2017-01-01	30	129
2017-01-01	31	199
2017-01-01	32	129
2017-01-01	33	159
2017-01-01	34	99
2017-01-01	35	129
2017-01-01	36	189
2017-02-06	2	239
2017-02-13	31	79
2017-02-27	5	79
2017-03-18	3	229
2017-05-21	18	109
2017-05-31	18	219
2017-07-03	20	109
2017-08-08	19	149
2017-08-17	33	149
2017-09-01	28	189
2017-10-01	1	149
2017-10-03	8	179
2017-11-20	8	59
2017-12-18	10	79
2018-01-03	11	219
2018-01-04	23	239
2018-01-16	35	69
2018-02-17	8	129
2018-03-29	7	99
2018-05-25	16	109
2018-06-11	21	199
2018-06-17	23	109
2018-07-05	7	149
2018-07-20	34	49
2018-08-19	16	189
2018-09-06	9	209
2018-09-16	23	229
2018-09-27	7	189
2018-10-13	18	129
2019-02-21	20	119
2019-03-07	8	129
2019-03-18	31	199
2019-05-30	35	49
2019-06-05	16	69
2019-10-27	25	89
2019-11-11	22	239
2019-12-06	6	179
2020-01-07	8	179
2020-03-13	17	59
2020-04-26	16	219
2020-04-28	19	229
2020-06-10	8	209
2020-08-17	19	49
2020-08-20	18	59
2020-08-22	25	179
2020-08-29	24	159
2020-11-19	28	229
2020-12-19	10	149
\.

-- instrument_rental
\! echo 'Insert into Instrument Rental..';
COPY instrument_rental (pricing_scheme_instrument_fee_id, instrument_in_stock_id, date_from, date_to, student_person_id) FROM stdin;
36	36	2017-01-02	2017-05-01	390
12	12	2017-01-05	2017-11-04	674
14	14	2017-01-05	2017-11-04	693
26	26	2017-01-05	2017-09-04	612
23	23	2017-01-05	2017-07-04	248
4	4	2017-01-09	2017-12-08	621
23	23	2017-01-09	2017-08-08	361
35	35	2017-01-09	2017-10-08	304
34	34	2017-01-09	2017-08-08	434
22	22	2017-01-10	2017-08-09	373
36	36	2017-01-10	2017-04-09	290
27	27	2017-01-12	2017-02-11	354
34	34	2017-01-12	2017-09-11	115
1	1	2017-01-12	2017-05-11	685
22	22	2017-01-13	2017-03-12	222
6	6	2017-01-13	2017-12-12	551
11	11	2017-01-13	2017-11-12	187
31	31	2017-01-14	2017-04-13	239
21	21	2017-01-14	2018-01-13	683
13	13	2017-01-15	2018-01-14	532
3	3	2017-01-15	2017-03-14	132
27	27	2017-01-18	2017-02-17	618
10	10	2017-01-18	2017-10-17	437
7	7	2017-01-19	2017-08-18	309
19	19	2017-01-19	2017-10-18	279
25	25	2017-01-19	2017-10-18	414
11	11	2017-01-19	2017-04-18	600
31	31	2017-01-23	2017-03-22	696
30	30	2017-01-23	2017-02-22	458
10	10	2017-01-26	2017-07-25	226
36	36	2017-01-26	2017-05-25	395
11	11	2017-01-27	2017-04-26	377
15	15	2017-01-28	2017-10-27	113
18	18	2017-01-28	2017-09-27	258
3	3	2017-01-29	2017-03-28	510
6	6	2017-01-29	2017-12-28	213
20	20	2017-01-29	2017-09-28	56
27	27	2017-01-29	2017-07-28	598
23	23	2017-02-01	2017-10-31	604
28	28	2017-02-01	2017-08-31	696
6	6	2017-02-01	2018-01-31	563
2	2	2017-02-05	2017-10-04	173
11	11	2017-02-06	2018-02-05	558
13	13	2017-02-06	2017-03-05	642
9	9	2017-02-09	2018-02-08	503
26	26	2017-02-09	2017-04-08	423
13	13	2017-02-09	2018-01-08	165
20	20	2017-02-10	2017-10-09	167
8	8	2017-02-10	2017-11-09	311
27	27	2017-02-10	2017-04-09	416
24	24	2017-02-10	2017-08-09	680
11	11	2017-02-11	2017-10-10	297
2	2	2017-02-11	2018-02-10	385
9	9	2017-02-11	2017-07-10	571
36	36	2017-02-11	2017-06-10	190
11	11	2017-02-13	2018-02-12	163
10	10	2017-02-13	2017-12-12	464
22	22	2017-02-13	2017-07-12	338
23	23	2017-02-14	2018-02-13	176
13	13	2017-02-14	2017-04-13	647
3	3	2017-02-14	2017-08-13	555
11	11	2017-02-15	2017-07-14	564
28	28	2017-02-15	2017-09-14	356
32	32	2017-02-18	2017-06-17	654
2	2	2017-02-18	2017-04-17	100
9	9	2017-02-19	2017-10-18	253
16	16	2017-02-19	2017-03-18	198
3	3	2017-02-20	2017-11-19	559
26	26	2017-02-20	2017-10-19	215
4	4	2017-02-20	2017-06-19	655
17	17	2017-02-20	2017-03-19	171
24	24	2017-02-20	2018-02-19	154
7	7	2017-02-25	2018-01-24	659
2	2	2017-02-25	2017-05-24	109
10	10	2017-02-25	2017-10-24	259
1	1	2017-02-28	2017-04-27	154
30	30	2017-02-28	2017-11-27	184
11	11	2017-03-02	2017-06-01	652
35	35	2017-03-02	2018-01-01	362
19	19	2017-03-02	2017-10-01	358
5	5	2017-03-02	2017-05-01	548
16	16	2017-03-04	2018-01-03	70
36	36	2017-03-08	2017-12-07	341
8	8	2017-03-08	2018-01-07	216
5	5	2017-03-08	2018-03-07	439
15	15	2017-03-12	2018-01-11	293
1	1	2017-03-14	2017-12-13	322
23	23	2017-03-14	2017-05-13	178
19	19	2017-03-14	2017-07-13	455
28	28	2017-03-15	2017-12-14	387
19	19	2017-03-15	2018-02-14	292
8	8	2017-03-15	2017-05-14	245
14	14	2017-03-18	2017-07-17	451
6	6	2017-03-18	2018-02-17	688
10	10	2017-03-22	2017-04-21	559
16	16	2017-03-22	2017-06-21	609
15	15	2017-03-22	2017-04-21	128
12	12	2017-03-22	2017-06-21	118
33	33	2017-03-22	2017-08-21	437
15	15	2017-03-24	2017-10-23	628
29	29	2017-03-24	2017-09-23	551
13	13	2017-03-24	2017-12-23	539
6	6	2017-03-24	2017-04-23	487
7	7	2017-03-24	2017-10-23	318
8	8	2017-03-27	2017-04-26	306
4	4	2017-03-27	2018-01-26	554
28	28	2017-03-28	2017-11-27	318
3	3	2017-03-28	2017-08-27	105
27	27	2017-04-03	2018-01-02	484
10	10	2017-04-03	2017-05-02	331
25	25	2017-04-03	2017-06-02	610
19	19	2017-04-04	2018-02-03	681
10	10	2017-04-04	2017-06-03	509
14	14	2017-04-06	2018-02-05	81
3	3	2017-04-06	2017-09-05	387
9	9	2017-04-07	2017-12-06	204
34	34	2017-04-07	2017-06-06	688
9	9	2017-04-08	2018-02-07	338
8	8	2017-04-08	2018-04-07	659
35	35	2017-04-08	2017-11-07	125
32	32	2017-04-08	2017-06-07	296
36	36	2017-04-09	2017-12-08	549
14	14	2017-04-09	2017-12-08	209
28	28	2017-04-10	2017-10-09	261
6	6	2017-04-10	2017-05-09	612
12	12	2017-04-10	2017-09-09	549
22	22	2017-04-11	2017-11-10	250
32	32	2017-04-15	2017-10-14	243
20	20	2017-04-15	2017-12-14	522
26	26	2017-04-15	2017-10-14	456
13	13	2017-04-16	2018-04-15	626
25	25	2017-04-16	2017-08-15	246
4	4	2017-04-16	2018-03-15	673
24	24	2017-04-16	2017-12-15	284
24	24	2017-04-17	2017-12-16	62
36	36	2017-04-17	2018-03-16	327
17	17	2017-04-17	2017-07-16	332
33	33	2017-04-17	2017-10-16	174
29	29	2017-04-17	2017-09-16	582
4	4	2017-04-21	2017-09-20	160
1	1	2017-04-21	2017-07-20	231
10	10	2017-04-29	2018-03-28	77
30	30	2017-04-29	2017-06-28	262
35	35	2017-04-29	2017-10-28	562
31	31	2017-05-03	2018-01-02	369
35	35	2017-05-03	2017-09-02	344
7	7	2017-05-06	2018-04-05	195
18	18	2017-05-06	2018-01-05	69
8	8	2017-05-07	2018-01-06	214
7	7	2017-05-07	2018-01-06	248
13	13	2017-05-07	2017-11-06	319
18	18	2017-05-07	2017-08-06	131
10	10	2017-05-08	2017-07-07	243
36	36	2017-05-08	2017-10-07	86
11	11	2017-05-08	2017-12-07	567
4	4	2017-05-14	2017-06-13	293
24	24	2017-05-14	2018-01-13	296
17	17	2017-05-14	2018-03-13	515
21	21	2017-05-14	2017-10-13	75
30	30	2017-05-16	2017-10-15	264
6	6	2017-05-16	2017-11-15	449
8	8	2017-05-16	2017-11-15	69
17	17	2017-05-18	2018-03-17	393
20	20	2017-05-18	2017-10-17	264
11	11	2017-05-18	2017-08-17	160
7	7	2017-05-18	2017-10-17	178
33	33	2017-05-20	2017-12-19	407
20	20	2017-05-20	2018-04-19	172
6	6	2017-05-20	2017-06-19	187
22	22	2017-05-21	2018-02-20	138
35	35	2017-05-21	2018-04-20	77
27	27	2017-05-24	2017-07-23	661
5	5	2017-05-24	2017-12-23	320
4	4	2017-05-24	2018-02-23	315
1	1	2017-05-26	2018-01-25	559
36	36	2017-05-26	2017-06-25	500
28	28	2017-05-26	2018-05-25	669
14	14	2017-05-26	2017-07-25	96
33	33	2017-05-28	2018-04-27	576
31	31	2017-05-28	2017-06-27	188
14	14	2017-05-29	2018-03-28	648
5	5	2017-05-29	2017-10-28	433
34	34	2017-05-29	2018-04-28	94
24	24	2017-05-29	2018-05-28	61
13	13	2017-05-30	2017-11-29	255
29	29	2017-05-30	2018-05-29	548
9	9	2017-05-31	2017-06-30	521
18	18	2017-06-03	2017-10-02	166
23	23	2017-06-03	2018-03-02	191
32	32	2017-06-03	2018-03-02	250
20	20	2017-06-05	2018-04-04	61
1	1	2017-06-06	2017-11-05	133
16	16	2017-06-07	2018-01-06	630
33	33	2017-06-07	2017-11-06	68
3	3	2017-06-08	2018-03-07	528
17	17	2017-06-10	2018-02-09	275
31	31	2017-06-10	2018-04-09	552
5	5	2017-06-10	2018-01-09	615
31	31	2017-06-10	2017-07-09	107
27	27	2017-06-11	2017-10-10	102
27	27	2017-06-11	2017-10-10	522
18	18	2017-06-14	2018-06-13	156
2	2	2017-06-14	2017-09-13	167
11	11	2017-06-16	2017-08-15	145
27	27	2017-06-17	2017-10-16	122
2	2	2017-06-17	2017-12-16	207
31	31	2017-06-23	2017-10-22	459
30	30	2017-06-23	2018-05-22	425
5	5	2017-06-23	2017-10-22	548
7	7	2017-06-23	2018-05-22	579
16	16	2017-06-24	2018-03-23	573
9	9	2017-06-25	2018-06-24	480
32	32	2017-06-26	2017-12-25	219
4	4	2017-06-26	2017-09-25	144
31	31	2017-06-28	2017-09-27	173
14	14	2017-06-28	2017-11-27	634
21	21	2017-06-30	2017-11-29	564
27	27	2017-06-30	2017-12-29	554
20	20	2017-07-01	2017-08-31	301
30	30	2017-07-01	2018-03-31	500
31	31	2017-07-02	2017-09-01	568
20	20	2017-07-02	2017-11-01	56
26	26	2017-07-02	2018-02-01	313
26	26	2017-07-03	2018-06-02	148
34	34	2017-07-04	2018-03-03	131
15	15	2017-07-04	2018-02-03	671
10	10	2017-07-05	2018-05-04	499
16	16	2017-07-05	2017-11-04	419
23	23	2017-07-05	2017-08-04	89
34	34	2017-07-05	2018-02-04	239
19	19	2017-07-07	2018-04-06	533
1	1	2017-07-07	2018-01-06	447
35	35	2017-07-07	2018-02-06	555
6	6	2017-07-07	2018-04-06	336
18	18	2017-07-08	2018-04-07	62
6	6	2017-07-10	2018-04-09	613
5	5	2017-07-10	2018-07-09	377
9	9	2017-07-10	2017-08-09	248
27	27	2017-07-11	2018-05-10	413
30	30	2017-07-11	2018-04-10	566
9	9	2017-07-13	2018-06-12	682
13	13	2017-07-13	2018-05-12	140
3	3	2017-07-15	2017-08-14	222
12	12	2017-07-15	2017-10-14	494
19	19	2017-07-16	2018-07-15	675
6	6	2017-07-16	2018-05-15	599
29	29	2017-07-16	2018-03-15	255
29	29	2017-07-16	2017-09-15	103
25	25	2017-07-20	2018-04-19	425
10	10	2017-07-20	2017-08-19	630
32	32	2017-07-20	2017-08-19	458
12	12	2017-07-23	2018-05-22	312
12	12	2017-07-23	2018-06-22	513
5	5	2017-07-24	2018-05-23	503
35	35	2017-07-24	2017-10-23	467
29	29	2017-07-24	2017-09-23	203
20	20	2017-07-24	2018-01-23	141
17	17	2017-07-25	2018-06-24	346
27	27	2017-07-25	2018-01-24	159
29	29	2017-07-27	2017-12-26	144
25	25	2017-07-27	2018-05-26	489
32	32	2017-07-27	2018-03-26	611
10	10	2017-07-31	2018-05-30	365
29	29	2017-07-31	2018-05-30	293
26	26	2017-07-31	2017-08-30	647
11	11	2017-08-03	2017-10-02	506
31	31	2017-08-03	2018-05-02	91
22	22	2017-08-03	2018-07-02	616
21	21	2017-08-05	2017-09-04	407
15	15	2017-08-05	2018-06-04	616
3	3	2017-08-06	2018-02-05	422
26	26	2017-08-06	2018-02-05	140
24	24	2017-08-10	2018-08-09	453
34	34	2017-08-10	2017-12-09	231
18	18	2017-08-10	2017-12-09	650
35	35	2017-08-11	2017-12-10	362
2	2	2017-08-11	2017-09-10	455
22	22	2017-08-14	2018-06-13	217
30	30	2017-08-15	2017-10-14	82
5	5	2017-08-17	2018-02-16	71
27	27	2017-08-17	2017-09-16	662
1	1	2017-08-18	2018-01-17	212
36	36	2017-08-18	2018-01-17	177
12	12	2017-08-19	2017-11-18	210
36	36	2017-08-20	2018-01-19	693
23	23	2017-08-20	2018-07-19	197
21	21	2017-08-20	2018-07-19	496
2	2	2017-08-20	2018-04-19	605
2	2	2017-08-22	2017-12-21	139
21	21	2017-08-22	2017-11-21	518
2	2	2017-08-22	2018-08-21	321
18	18	2017-08-23	2018-07-22	349
18	18	2017-08-23	2018-08-22	103
1	1	2017-08-23	2018-01-22	518
17	17	2017-08-23	2017-10-22	240
21	21	2017-08-25	2017-12-24	495
9	9	2017-08-25	2018-03-24	383
7	7	2017-08-27	2018-04-26	171
2	2	2017-08-27	2018-06-26	179
15	15	2017-08-27	2018-01-26	234
21	21	2017-08-28	2017-12-27	177
33	33	2017-08-29	2018-01-28	53
3	3	2017-08-29	2017-11-28	492
13	13	2017-08-31	2018-03-30	300
2	2	2017-08-31	2017-10-30	301
17	17	2017-09-01	2018-02-28	393
16	16	2017-09-02	2018-06-01	286
18	18	2017-09-02	2018-09-01	479
3	3	2017-09-05	2017-10-04	146
17	17	2017-09-05	2018-09-04	464
27	27	2017-09-05	2017-10-04	645
11	11	2017-09-05	2018-06-04	434
32	32	2017-09-08	2018-05-07	237
35	35	2017-09-08	2018-05-07	692
19	19	2017-09-08	2017-11-07	593
19	19	2017-09-09	2017-12-08	286
23	23	2017-09-09	2018-09-08	57
17	17	2017-09-09	2018-01-08	58
22	22	2017-09-10	2017-12-09	251
20	20	2017-09-14	2018-01-13	325
32	32	2017-09-14	2018-04-13	668
22	22	2017-09-15	2018-02-14	338
4	4	2017-09-15	2018-02-14	442
30	30	2017-09-17	2018-01-16	387
11	11	2017-09-17	2018-07-16	561
12	12	2017-09-20	2017-12-19	633
26	26	2017-09-20	2018-02-19	70
22	22	2017-09-21	2018-07-20	437
25	25	2017-09-22	2018-09-21	421
4	4	2017-09-23	2018-04-22	194
29	29	2017-09-23	2018-06-22	187
10	10	2017-09-23	2018-01-22	557
28	28	2017-09-24	2018-01-23	639
29	29	2017-09-24	2017-12-23	107
29	29	2017-09-24	2017-12-23	565
25	25	2017-09-26	2017-10-25	454
29	29	2017-09-26	2018-08-25	658
10	10	2017-09-27	2018-09-26	276
17	17	2017-09-27	2017-12-26	436
5	5	2017-09-28	2018-07-27	461
10	10	2017-09-28	2017-12-27	665
26	26	2017-09-28	2018-08-27	65
30	30	2017-09-28	2018-03-27	411
14	14	2017-10-01	2018-07-31	399
15	15	2017-10-01	2018-06-30	502
34	34	2017-10-01	2017-10-31	644
4	4	2017-10-02	2018-01-01	204
20	20	2017-10-02	2018-02-01	441
18	18	2017-10-04	2018-06-03	233
31	31	2017-10-05	2017-12-04	304
4	4	2017-10-05	2018-09-04	396
3	3	2017-10-05	2018-02-04	82
4	4	2017-10-06	2018-07-05	117
19	19	2017-10-06	2018-08-05	84
21	21	2017-10-06	2018-06-05	404
14	14	2017-10-08	2018-01-07	189
11	11	2017-10-08	2018-05-07	229
3	3	2017-10-08	2018-04-07	249
25	25	2017-10-09	2017-11-08	306
35	35	2017-10-10	2018-04-09	360
3	3	2017-10-10	2017-11-09	640
28	28	2017-10-10	2018-09-09	576
21	21	2017-10-13	2018-06-12	560
5	5	2017-10-13	2018-09-12	349
1	1	2017-10-13	2018-04-12	159
27	27	2017-10-18	2018-08-17	356
36	36	2017-10-18	2018-01-17	64
2	2	2017-10-18	2017-12-17	60
33	33	2017-10-18	2018-08-17	94
14	14	2017-10-21	2018-06-20	326
20	20	2017-10-21	2018-04-20	545
31	31	2017-10-21	2017-11-20	169
15	15	2017-10-22	2018-05-21	333
32	32	2017-10-22	2018-06-21	620
11	11	2017-10-22	2017-11-21	493
26	26	2017-10-25	2018-08-24	343
22	22	2017-10-25	2018-05-24	629
3	3	2017-10-25	2018-07-24	449
5	5	2017-10-25	2017-11-24	80
32	32	2017-10-27	2018-04-26	615
26	26	2017-10-28	2018-01-27	580
27	27	2017-10-28	2018-02-27	683
17	17	2017-11-02	2018-03-01	673
30	30	2017-11-02	2018-10-01	221
35	35	2017-11-02	2018-10-01	162
30	30	2017-11-02	2018-06-01	474
3	3	2017-11-03	2018-06-02	216
5	5	2017-11-03	2018-07-02	345
28	28	2017-11-04	2018-04-03	276
15	15	2017-11-05	2018-09-04	342
10	10	2017-11-05	2018-07-04	388
21	21	2017-11-05	2018-04-04	416
26	26	2017-11-05	2018-02-04	434
35	35	2017-11-05	2018-02-04	617
30	30	2017-11-08	2018-08-07	342
25	25	2017-11-08	2017-12-07	146
4	4	2017-11-08	2018-10-07	463
3	3	2017-11-08	2018-01-07	217
26	26	2017-11-09	2018-04-08	390
1	1	2017-11-09	2018-04-08	684
7	7	2017-11-09	2018-04-08	660
21	21	2017-11-09	2018-03-08	176
23	23	2017-11-10	2018-11-09	333
26	26	2017-11-10	2018-01-09	257
20	20	2017-11-10	2018-10-09	360
3	3	2017-11-12	2018-09-11	407
15	15	2017-11-12	2018-11-11	556
27	27	2017-11-12	2018-06-11	509
16	16	2017-11-12	2018-03-11	78
10	10	2017-11-13	2018-03-12	493
20	20	2017-11-13	2018-08-12	238
1	1	2017-11-13	2018-10-12	527
7	7	2017-11-13	2017-12-12	150
32	32	2017-11-15	2018-10-14	246
12	12	2017-11-18	2018-09-17	539
35	35	2017-11-18	2018-05-17	301
9	9	2017-11-19	2018-01-18	644
33	33	2017-11-19	2018-04-18	687
36	36	2017-11-19	2018-04-18	147
14	14	2017-11-20	2017-12-19	568
1	1	2017-11-20	2018-08-19	270
31	31	2017-11-21	2018-01-20	692
1	1	2017-11-21	2018-09-20	219
3	3	2017-11-21	2018-03-20	629
10	10	2017-11-21	2018-07-20	307
8	8	2017-11-22	2018-09-21	269
12	12	2017-11-22	2018-07-21	72
11	11	2017-11-24	2018-01-23	569
6	6	2017-11-24	2018-09-23	509
21	21	2017-11-26	2018-07-25	450
22	22	2017-11-27	2018-01-26	696
14	14	2017-11-28	2018-03-27	289
18	18	2017-11-28	2018-06-27	369
30	30	2017-11-28	2018-11-27	440
13	13	2017-11-29	2018-05-28	108
11	11	2017-11-30	2018-03-01	669
3	3	2017-11-30	2018-03-29	352
21	21	2017-11-30	2018-06-29	541
36	36	2017-11-30	2018-05-29	619
27	27	2017-12-01	2018-03-31	205
27	27	2017-12-01	2017-12-31	666
2	2	2017-12-03	2018-11-02	499
27	27	2017-12-03	2018-12-02	325
36	36	2017-12-03	2018-08-02	508
2	2	2017-12-04	2018-07-03	456
5	5	2017-12-04	2018-08-03	682
31	31	2017-12-04	2018-04-03	158
2	2	2017-12-04	2018-08-03	238
34	34	2017-12-09	2018-11-08	633
31	31	2017-12-09	2018-04-08	374
12	12	2017-12-16	2018-12-15	334
20	20	2017-12-20	2018-12-19	347
8	8	2017-12-20	2018-11-19	475
28	28	2017-12-20	2018-06-19	625
12	12	2017-12-20	2018-05-19	582
22	22	2017-12-21	2018-03-20	97
4	4	2017-12-26	2018-02-25	322
10	10	2017-12-26	2018-03-25	139
35	35	2017-12-27	2018-01-26	58
28	28	2017-12-27	2018-06-26	153
19	19	2017-12-29	2018-04-28	355
6	6	2017-12-29	2018-06-28	549
29	29	2017-12-31	2018-03-02	178
6	6	2017-12-31	2018-10-30	459
34	34	2018-01-01	2018-11-30	699
32	32	2018-01-01	2018-06-30	513
10	10	2018-01-01	2018-08-31	352
25	25	2018-01-03	2018-05-02	51
18	18	2018-01-05	2019-01-04	697
2	2	2018-01-07	2018-12-06	453
36	36	2018-01-08	2018-03-07	210
7	7	2018-01-08	2018-06-07	635
7	7	2018-01-09	2018-02-08	160
1	1	2018-01-09	2018-12-08	491
27	27	2018-01-09	2018-12-08	366
29	29	2018-01-10	2018-05-09	180
16	16	2018-01-13	2018-10-12	630
33	33	2018-01-13	2018-05-12	184
15	15	2018-01-13	2018-06-12	568
2	2	2018-01-15	2018-06-14	213
18	18	2018-01-15	2019-01-14	297
2	2	2018-01-15	2018-05-14	321
30	30	2018-01-19	2018-12-18	253
27	27	2018-01-19	2018-06-18	345
19	19	2018-01-19	2018-09-18	660
21	21	2018-01-21	2018-12-20	605
10	10	2018-01-24	2018-02-23	385
29	29	2018-01-24	2018-04-23	256
7	7	2018-01-26	2018-08-25	589
36	36	2018-01-26	2018-11-25	632
5	5	2018-01-26	2018-02-25	471
8	8	2018-01-26	2018-09-25	346
5	5	2018-01-26	2018-10-25	533
22	22	2018-01-29	2019-01-28	632
21	21	2018-01-29	2018-11-28	179
8	8	2018-01-30	2018-07-29	215
33	33	2018-01-30	2018-12-29	572
9	9	2018-02-02	2018-03-01	527
13	13	2018-02-02	2018-05-01	56
21	21	2018-02-02	2018-08-01	653
35	35	2018-02-03	2018-12-02	144
25	25	2018-02-03	2018-05-02	206
24	24	2018-02-04	2018-07-03	134
15	15	2018-02-04	2018-11-03	245
14	14	2018-02-04	2019-02-03	400
17	17	2018-02-04	2018-04-03	495
35	35	2018-02-04	2018-08-03	316
17	17	2018-02-07	2019-02-06	85
27	27	2018-02-07	2018-03-06	180
14	14	2018-02-08	2018-07-07	364
9	9	2018-02-08	2018-04-07	420
27	27	2018-02-09	2018-10-08	407
6	6	2018-02-09	2018-03-08	416
7	7	2018-02-09	2018-06-08	365
28	28	2018-02-10	2018-11-09	647
4	4	2018-02-10	2018-09-09	582
19	19	2018-02-11	2018-05-10	678
35	35	2018-02-11	2018-11-10	218
19	19	2018-02-11	2018-07-10	163
17	17	2018-02-12	2019-01-11	317
36	36	2018-02-12	2018-06-11	663
13	13	2018-02-12	2018-07-11	588
4	4	2018-02-13	2018-08-12	164
34	34	2018-02-13	2018-12-12	104
2	2	2018-02-13	2018-07-12	110
36	36	2018-02-15	2018-05-14	444
19	19	2018-02-16	2018-11-15	52
31	31	2018-02-16	2019-02-15	504
16	16	2018-02-18	2018-11-17	187
22	22	2018-02-18	2018-06-17	658
26	26	2018-02-18	2018-10-17	394
9	9	2018-02-19	2018-11-18	554
25	25	2018-02-20	2018-08-19	173
35	35	2018-02-20	2018-05-19	650
9	9	2018-02-21	2018-06-20	662
24	24	2018-02-21	2019-01-20	427
6	6	2018-02-22	2019-01-21	250
26	26	2018-02-22	2018-08-21	555
31	31	2018-02-24	2018-03-23	357
24	24	2018-02-24	2018-06-23	318
23	23	2018-02-24	2019-01-23	145
25	25	2018-02-27	2019-02-26	492
11	11	2018-02-27	2018-05-26	79
27	27	2018-03-01	2018-10-31	169
36	36	2018-03-01	2018-12-31	429
1	1	2018-03-02	2019-01-01	146
5	5	2018-03-02	2018-06-01	156
25	25	2018-03-02	2019-03-01	253
17	17	2018-03-04	2018-11-03	184
32	32	2018-03-04	2018-06-03	211
27	27	2018-03-07	2018-05-06	306
29	29	2018-03-08	2019-02-07	244
17	17	2018-03-08	2018-12-07	586
14	14	2018-03-08	2018-09-07	386
23	23	2018-03-09	2018-06-08	211
14	14	2018-03-09	2018-07-08	167
21	21	2018-03-12	2018-09-11	686
36	36	2018-03-12	2018-12-11	195
1	1	2018-03-17	2019-03-16	196
29	29	2018-03-17	2018-04-16	377
31	31	2018-03-21	2018-09-20	405
20	20	2018-03-21	2018-06-20	683
13	13	2018-03-23	2018-12-22	272
26	26	2018-03-23	2018-05-22	228
22	22	2018-03-23	2018-09-22	524
6	6	2018-03-23	2018-11-22	557
36	36	2018-03-25	2018-07-24	78
9	9	2018-03-25	2018-09-24	378
13	13	2018-03-26	2018-06-25	408
26	26	2018-03-26	2019-03-25	444
17	17	2018-03-26	2018-12-25	548
22	22	2018-03-26	2018-10-25	273
20	20	2018-03-26	2018-04-25	190
26	26	2018-03-27	2018-08-26	136
31	31	2018-03-27	2018-08-26	522
34	34	2018-03-27	2018-08-26	331
16	16	2018-03-27	2018-08-26	154
4	4	2018-03-29	2018-11-28	327
11	11	2018-03-29	2019-01-28	68
14	14	2018-03-30	2019-01-29	551
10	10	2018-04-01	2019-01-31	370
17	17	2018-04-01	2018-12-31	366
1	1	2018-04-02	2019-01-01	571
3	3	2018-04-03	2018-07-02	85
10	10	2018-04-03	2018-08-02	138
3	3	2018-04-06	2018-11-05	657
21	21	2018-04-06	2019-03-05	422
28	28	2018-04-08	2018-11-07	573
26	26	2018-04-08	2018-09-07	380
6	6	2018-04-10	2019-02-09	120
27	27	2018-04-10	2019-04-09	90
3	3	2018-04-10	2018-12-09	133
7	7	2018-04-10	2019-03-09	351
5	5	2018-04-11	2018-11-10	146
17	17	2018-04-12	2018-07-11	219
20	20	2018-04-12	2018-08-11	353
30	30	2018-04-13	2019-02-12	596
7	7	2018-04-15	2018-09-14	54
11	11	2018-04-17	2019-03-16	243
10	10	2018-04-17	2019-04-16	545
31	31	2018-04-17	2018-06-16	268
4	4	2018-04-17	2018-07-16	113
4	4	2018-04-17	2018-06-16	231
16	16	2018-04-18	2018-05-17	458
1	1	2018-04-18	2019-02-17	671
30	30	2018-04-18	2018-12-17	54
19	19	2018-04-18	2018-09-17	107
35	35	2018-04-21	2019-01-20	383
10	10	2018-04-21	2019-02-20	667
13	13	2018-04-21	2018-05-20	191
25	25	2018-04-22	2018-06-21	112
20	20	2018-04-22	2018-07-21	186
36	36	2018-04-22	2019-04-21	434
20	20	2018-04-22	2018-12-21	107
13	13	2018-04-23	2018-05-22	604
2	2	2018-04-23	2019-01-22	68
9	9	2018-04-23	2018-05-22	546
3	3	2018-04-23	2018-05-22	249
18	18	2018-04-23	2019-02-22	470
31	31	2018-04-24	2018-10-23	665
29	29	2018-04-24	2018-11-23	599
15	15	2018-04-24	2018-06-23	210
26	26	2018-04-26	2018-12-25	484
3	3	2018-04-30	2019-01-29	113
14	14	2018-04-30	2019-04-29	574
33	33	2018-05-02	2018-11-01	647
25	25	2018-05-02	2018-09-01	174
20	20	2018-05-02	2018-12-01	363
25	25	2018-05-02	2018-07-01	84
3	3	2018-05-02	2018-07-01	416
31	31	2018-05-05	2018-11-04	356
1	1	2018-05-08	2019-01-07	157
20	20	2018-05-08	2018-09-07	127
27	27	2018-05-09	2018-09-08	314
32	32	2018-05-09	2018-07-08	461
25	25	2018-05-15	2019-01-14	257
36	36	2018-05-15	2019-04-14	123
4	4	2018-05-17	2019-01-16	527
11	11	2018-05-17	2019-01-16	166
31	31	2018-05-18	2019-01-17	576
1	1	2018-05-18	2019-05-17	512
33	33	2018-05-18	2018-09-17	498
6	6	2018-05-21	2018-09-20	381
7	7	2018-05-24	2018-10-23	73
30	30	2018-05-24	2018-10-23	148
33	33	2018-05-25	2019-01-24	75
6	6	2018-05-25	2018-11-24	138
7	7	2018-05-25	2018-07-24	235
30	30	2018-05-29	2018-10-28	102
26	26	2018-05-29	2018-06-28	558
28	28	2018-05-29	2018-11-28	125
12	12	2018-05-30	2018-10-29	561
35	35	2018-06-01	2019-05-31	354
10	10	2018-06-01	2018-09-30	685
25	25	2018-06-01	2018-11-30	684
4	4	2018-06-02	2019-01-01	312
24	24	2018-06-03	2019-04-02	547
8	8	2018-06-03	2018-07-02	650
2	2	2018-06-03	2018-08-02	156
19	19	2018-06-03	2018-10-02	639
26	26	2018-06-05	2019-01-04	411
11	11	2018-06-05	2018-12-04	697
3	3	2018-06-05	2019-02-04	622
30	30	2018-06-06	2019-03-05	140
32	32	2018-06-06	2019-02-05	200
13	13	2018-06-07	2018-11-06	519
18	18	2018-06-07	2019-04-06	120
19	19	2018-06-08	2019-03-07	468
9	9	2018-06-08	2018-07-07	700
21	21	2018-06-18	2018-11-17	579
3	3	2018-06-18	2018-12-17	399
9	9	2018-06-18	2019-05-17	476
31	31	2018-06-24	2019-04-23	622
4	4	2018-06-24	2019-06-23	397
2	2	2018-06-24	2018-07-23	82
23	23	2018-06-24	2018-11-23	226
9	9	2018-06-28	2018-09-27	173
6	6	2018-06-29	2018-08-28	648
36	36	2018-06-29	2019-01-28	574
21	21	2018-07-02	2018-09-01	70
3	3	2018-07-02	2018-12-01	104
7	7	2018-07-06	2019-06-05	325
16	16	2018-07-06	2019-05-05	303
28	28	2018-07-07	2019-06-06	323
13	13	2018-07-07	2018-10-06	167
12	12	2018-07-07	2019-02-06	524
20	20	2018-07-08	2019-06-07	278
5	5	2018-07-10	2019-03-09	206
16	16	2018-07-10	2019-05-09	441
3	3	2018-07-11	2018-11-10	69
36	36	2018-07-11	2019-03-10	466
13	13	2018-07-11	2019-03-10	416
27	27	2018-07-12	2018-12-11	71
13	13	2018-07-12	2019-05-11	465
12	12	2018-07-12	2018-10-11	403
13	13	2018-07-13	2019-07-12	661
15	15	2018-07-13	2018-11-12	471
32	32	2018-07-14	2019-07-13	140
8	8	2018-07-15	2018-12-14	425
35	35	2018-07-15	2019-01-14	469
32	32	2018-07-15	2018-08-14	481
10	10	2018-07-17	2019-06-16	82
21	21	2018-07-18	2019-01-17	561
14	14	2018-07-19	2019-04-18	420
26	26	2018-07-19	2018-11-18	223
17	17	2018-07-19	2018-10-18	383
17	17	2018-07-19	2018-09-18	234
14	14	2018-07-19	2018-12-18	653
11	11	2018-07-21	2019-06-20	603
32	32	2018-07-21	2018-08-20	224
2	2	2018-07-21	2019-03-20	335
10	10	2018-07-23	2019-05-22	607
32	32	2018-07-23	2019-05-22	528
4	4	2018-07-24	2018-12-23	533
4	4	2018-07-24	2018-09-23	194
29	29	2018-07-27	2018-09-26	339
28	28	2018-07-27	2019-07-26	480
18	18	2018-07-27	2018-12-26	309
10	10	2018-08-01	2019-01-31	629
20	20	2018-08-01	2018-11-30	682
32	32	2018-08-08	2019-07-07	123
9	9	2018-08-08	2019-08-07	372
11	11	2018-08-08	2019-07-07	659
24	24	2018-08-10	2018-09-09	169
13	13	2018-08-10	2018-09-09	194
2	2	2018-08-10	2018-10-09	682
8	8	2018-08-10	2019-08-09	271
9	9	2018-08-13	2019-01-12	638
18	18	2018-08-13	2019-04-12	354
21	21	2018-08-14	2019-06-13	674
23	23	2018-08-16	2019-05-15	333
2	2	2018-08-16	2018-09-15	362
10	10	2018-08-17	2018-10-16	369
30	30	2018-08-19	2019-01-18	611
29	29	2018-08-19	2019-03-18	613
20	20	2018-08-19	2019-05-18	185
33	33	2018-08-20	2018-10-19	157
35	35	2018-08-20	2018-11-19	149
14	14	2018-08-25	2019-03-24	476
14	14	2018-08-25	2018-09-24	478
15	15	2018-08-25	2018-12-24	70
27	27	2018-08-26	2019-05-25	242
35	35	2018-08-26	2018-10-25	493
4	4	2018-08-26	2019-06-25	106
20	20	2018-08-28	2019-08-27	259
3	3	2018-08-28	2018-12-27	108
3	3	2018-08-28	2019-04-27	178
21	21	2018-08-28	2019-04-27	419
18	18	2018-08-29	2019-02-28	650
25	25	2018-08-30	2018-12-29	264
11	11	2018-08-30	2018-11-29	238
6	6	2018-08-31	2019-08-30	638
21	21	2018-08-31	2018-12-30	368
5	5	2018-09-01	2019-06-30	259
11	11	2018-09-01	2019-06-30	572
21	21	2018-09-02	2019-03-01	353
13	13	2018-09-02	2018-11-01	566
12	12	2018-09-03	2019-02-02	604
29	29	2018-09-03	2019-03-02	457
18	18	2018-09-03	2018-10-02	635
29	29	2018-09-05	2019-08-04	116
4	4	2018-09-05	2019-06-04	530
26	26	2018-09-07	2019-04-06	323
18	18	2018-09-09	2018-11-08	148
35	35	2018-09-09	2018-10-08	670
26	26	2018-09-10	2018-11-09	600
23	23	2018-09-10	2019-07-09	203
5	5	2018-09-16	2019-04-15	291
31	31	2018-09-16	2019-03-15	211
29	29	2018-09-16	2019-02-15	435
34	34	2018-09-16	2019-02-15	334
26	26	2018-09-19	2019-08-18	395
28	28	2018-09-19	2018-10-18	522
22	22	2018-09-20	2019-06-19	588
24	24	2018-09-21	2019-09-20	545
4	4	2018-09-21	2019-08-20	511
14	14	2018-09-23	2019-02-22	165
8	8	2018-09-23	2019-07-22	446
1	1	2018-09-23	2019-08-22	573
32	32	2018-09-25	2019-07-24	678
21	21	2018-09-25	2019-09-24	470
2	2	2018-09-26	2019-04-25	458
14	14	2018-09-27	2019-02-26	602
27	27	2018-09-27	2019-09-26	434
2	2	2018-10-02	2019-02-01	422
1	1	2018-10-02	2019-06-01	693
20	20	2018-10-03	2019-10-02	168
19	19	2018-10-03	2019-07-02	197
26	26	2018-10-05	2019-05-04	173
12	12	2018-10-05	2019-05-04	678
8	8	2018-10-07	2019-09-06	209
10	10	2018-10-07	2019-04-06	73
27	27	2018-10-07	2019-05-06	75
31	31	2018-10-07	2019-06-06	448
18	18	2018-10-08	2019-02-07	270
36	36	2018-10-08	2019-01-07	194
34	34	2018-10-08	2019-10-07	127
32	32	2018-10-09	2019-04-08	615
36	36	2018-10-09	2019-01-08	618
25	25	2018-10-09	2019-06-08	365
16	16	2018-10-11	2018-12-10	618
9	9	2018-10-11	2019-01-10	387
2	2	2018-10-15	2019-09-14	244
6	6	2018-10-15	2019-07-14	523
5	5	2018-10-15	2019-10-14	66
32	32	2018-10-19	2019-07-18	76
1	1	2018-10-19	2019-06-18	195
30	30	2018-10-19	2019-07-18	610
12	12	2018-10-20	2019-03-19	659
24	24	2018-10-20	2018-12-19	474
19	19	2018-10-23	2019-05-22	535
29	29	2018-10-27	2019-08-26	278
19	19	2018-10-27	2019-09-26	91
31	31	2018-10-27	2019-10-26	72
30	30	2018-10-28	2019-05-27	566
35	35	2018-10-28	2019-07-27	530
10	10	2018-10-30	2018-12-29	531
19	19	2018-10-30	2019-10-29	220
4	4	2018-10-30	2019-10-29	77
6	6	2018-10-30	2018-11-29	87
27	27	2018-10-31	2019-09-30	661
29	29	2018-10-31	2019-03-30	332
2	2	2018-10-31	2019-03-02	563
30	30	2018-11-02	2019-11-01	153
2	2	2018-11-02	2019-05-01	158
20	20	2018-11-02	2019-09-01	500
35	35	2018-11-02	2019-04-01	427
22	22	2018-11-05	2019-09-04	356
26	26	2018-11-05	2019-07-04	231
33	33	2018-11-05	2019-03-04	240
31	31	2018-11-06	2019-07-05	581
28	28	2018-11-06	2019-07-05	229
3	3	2018-11-06	2019-04-05	376
9	9	2018-11-06	2019-06-05	370
9	9	2018-11-08	2019-06-07	375
18	18	2018-11-09	2019-11-08	386
33	33	2018-11-09	2019-02-08	151
12	12	2018-11-09	2019-02-08	458
32	32	2018-11-10	2019-01-09	371
24	24	2018-11-10	2019-09-09	674
3	3	2018-11-12	2019-04-11	245
23	23	2018-11-12	2018-12-11	625
34	34	2018-11-15	2019-07-14	408
3	3	2018-11-15	2019-05-14	612
13	13	2018-11-15	2019-11-14	365
4	4	2018-11-15	2018-12-14	229
2	2	2018-11-17	2019-05-16	102
24	24	2018-11-20	2019-11-19	180
21	21	2018-11-21	2019-10-20	348
10	10	2018-11-24	2019-04-23	153
28	28	2018-11-24	2019-01-23	309
7	7	2018-11-24	2018-12-23	322
17	17	2018-11-24	2019-02-23	550
33	33	2018-11-27	2019-11-26	117
16	16	2018-11-28	2019-10-27	596
36	36	2018-11-28	2018-12-27	634
11	11	2018-12-04	2019-01-03	81
19	19	2018-12-07	2019-06-06	221
22	22	2018-12-07	2019-12-06	193
17	17	2018-12-10	2019-10-09	361
15	15	2018-12-10	2019-07-09	135
34	34	2018-12-13	2019-06-12	298
25	25	2018-12-13	2019-03-12	198
26	26	2018-12-16	2019-12-15	368
13	13	2018-12-16	2019-11-15	683
7	7	2018-12-16	2019-11-15	163
34	34	2018-12-16	2019-02-15	308
17	17	2018-12-16	2019-10-15	62
3	3	2018-12-18	2019-09-17	619
11	11	2018-12-18	2019-05-17	646
1	1	2018-12-20	2019-08-19	391
7	7	2018-12-20	2019-03-19	165
26	26	2018-12-20	2019-11-19	583
2	2	2018-12-23	2019-06-22	359
15	15	2018-12-23	2019-05-22	315
30	30	2018-12-23	2019-08-22	502
22	22	2018-12-23	2019-01-22	503
7	7	2018-12-23	2019-04-22	297
17	17	2018-12-24	2019-10-23	550
25	25	2018-12-24	2019-03-23	479
16	16	2018-12-24	2019-06-23	301
25	25	2018-12-24	2019-12-23	139
28	28	2018-12-24	2019-08-23	335
3	3	2018-12-25	2019-09-24	557
30	30	2018-12-25	2019-09-24	281
8	8	2018-12-25	2019-02-24	204
16	16	2018-12-25	2019-07-24	531
13	13	2018-12-26	2019-01-25	377
20	20	2018-12-26	2019-05-25	413
18	18	2018-12-27	2019-01-26	199
29	29	2018-12-27	2019-06-26	109
30	30	2018-12-27	2019-03-26	304
25	25	2018-12-28	2019-01-27	327
8	8	2018-12-28	2019-03-27	689
2	2	2018-12-28	2019-04-27	460
25	25	2018-12-28	2019-05-27	72
35	35	2018-12-28	2019-03-27	73
12	12	2018-12-29	2019-01-28	193
3	3	2018-12-29	2019-05-28	587
19	19	2018-12-29	2019-12-28	589
20	20	2019-01-02	2019-02-01	127
21	21	2019-01-02	2020-01-01	683
33	33	2019-01-02	2019-12-01	551
27	27	2019-01-04	2019-09-03	316
3	3	2019-01-04	2019-10-03	100
13	13	2019-01-05	2019-10-04	265
5	5	2019-01-05	2019-06-04	377
22	22	2019-01-05	2019-05-04	313
20	20	2019-01-08	2019-04-07	610
22	22	2019-01-08	2019-04-07	437
10	10	2019-01-08	2020-01-07	592
15	15	2019-01-09	2019-02-08	590
15	15	2019-01-09	2019-06-08	561
15	15	2019-01-11	2019-12-10	363
13	13	2019-01-11	2019-03-10	324
19	19	2019-01-11	2019-12-10	190
27	27	2019-01-13	2020-01-12	100
36	36	2019-01-13	2019-12-12	488
21	21	2019-01-13	2019-04-12	326
26	26	2019-01-14	2019-10-13	175
6	6	2019-01-14	2019-09-13	463
7	7	2019-01-17	2019-12-16	117
11	11	2019-01-17	2019-02-16	491
7	7	2019-01-17	2019-07-16	361
10	10	2019-01-17	2019-10-16	207
27	27	2019-01-18	2019-07-17	56
6	6	2019-01-18	2020-01-17	134
26	26	2019-01-18	2019-03-17	171
9	9	2019-01-19	2019-07-18	387
23	23	2019-01-19	2019-03-18	77
32	32	2019-01-19	2019-04-18	308
20	20	2019-01-19	2019-02-18	280
35	35	2019-01-21	2019-05-20	523
6	6	2019-01-21	2019-03-20	301
1	1	2019-01-21	2019-08-20	480
22	22	2019-01-21	2020-01-20	98
33	33	2019-01-27	2019-11-26	558
2	2	2019-01-27	2019-03-26	156
13	13	2019-01-27	2019-06-26	418
9	9	2019-01-27	2019-12-26	116
24	24	2019-01-27	2019-10-26	163
23	23	2019-01-28	2020-01-27	273
36	36	2019-01-28	2020-01-27	505
17	17	2019-01-29	2019-09-28	430
5	5	2019-01-29	2019-03-28	655
1	1	2019-02-02	2019-07-01	471
30	30	2019-02-02	2019-06-01	670
24	24	2019-02-02	2019-09-01	207
23	23	2019-02-02	2019-12-01	454
25	25	2019-02-04	2019-04-03	246
28	28	2019-02-05	2019-05-04	192
22	22	2019-02-06	2019-07-05	195
36	36	2019-02-06	2020-01-05	242
27	27	2019-02-06	2019-10-05	519
12	12	2019-02-07	2019-04-06	166
10	10	2019-02-07	2019-03-06	396
9	9	2019-02-08	2019-06-07	450
18	18	2019-02-08	2019-10-07	106
5	5	2019-02-08	2019-03-07	609
11	11	2019-02-10	2019-06-09	334
1	1	2019-02-10	2019-11-09	555
11	11	2019-02-10	2019-07-09	285
26	26	2019-02-13	2019-12-12	491
3	3	2019-02-13	2019-07-12	154
18	18	2019-02-14	2019-04-13	616
34	34	2019-02-17	2019-05-16	287
33	33	2019-02-17	2019-12-16	416
30	30	2019-02-17	2019-09-16	421
12	12	2019-02-17	2019-08-16	505
25	25	2019-02-19	2019-08-18	139
34	34	2019-02-19	2019-07-18	171
5	5	2019-02-20	2019-11-19	503
6	6	2019-02-21	2019-11-20	269
28	28	2019-02-21	2019-10-20	209
17	17	2019-02-22	2019-08-21	112
12	12	2019-02-22	2019-03-21	75
1	1	2019-02-22	2020-01-21	440
25	25	2019-02-23	2020-02-22	182
15	15	2019-02-23	2019-10-22	110
36	36	2019-02-23	2019-04-22	566
12	12	2019-02-28	2020-01-27	419
8	8	2019-03-02	2020-02-01	510
36	36	2019-03-03	2019-07-02	484
11	11	2019-03-03	2020-02-02	650
17	17	2019-03-04	2019-07-03	183
27	27	2019-03-05	2019-04-04	233
20	20	2019-03-05	2020-02-04	686
31	31	2019-03-05	2019-11-04	635
3	3	2019-03-05	2019-09-04	446
10	10	2019-03-06	2019-05-05	520
36	36	2019-03-06	2019-06-05	191
33	33	2019-03-06	2019-11-05	170
4	4	2019-03-06	2019-06-05	380
10	10	2019-03-07	2019-04-06	183
10	10	2019-03-09	2019-11-08	478
22	22	2019-03-09	2019-09-08	496
4	4	2019-03-11	2019-04-10	602
21	21	2019-03-11	2019-06-10	269
30	30	2019-03-11	2020-02-10	679
14	14	2019-03-11	2020-03-10	467
4	4	2019-03-13	2019-07-12	161
32	32	2019-03-14	2019-09-13	670
18	18	2019-03-14	2020-01-13	125
35	35	2019-03-15	2019-08-14	122
35	35	2019-03-15	2020-02-14	526
5	5	2019-03-15	2020-02-14	463
31	31	2019-03-23	2020-03-22	217
18	18	2019-03-23	2020-01-22	666
36	36	2019-03-23	2019-07-22	587
35	35	2019-03-26	2020-02-25	447
19	19	2019-03-26	2019-12-25	266
2	2	2019-03-27	2019-10-26	466
35	35	2019-03-27	2020-02-26	667
23	23	2019-03-27	2019-10-26	152
8	8	2019-03-28	2020-02-27	381
31	31	2019-03-28	2019-11-27	180
29	29	2019-03-28	2019-06-27	538
20	20	2019-03-29	2020-03-28	422
35	35	2019-03-29	2019-08-28	427
26	26	2019-03-29	2019-08-28	187
7	7	2019-04-02	2019-11-01	388
30	30	2019-04-03	2019-10-02	57
12	12	2019-04-04	2019-11-03	582
24	24	2019-04-04	2019-07-03	62
1	1	2019-04-04	2019-12-03	553
25	25	2019-04-05	2019-07-04	110
15	15	2019-04-07	2020-03-06	84
5	5	2019-04-07	2019-08-06	324
35	35	2019-04-07	2020-04-06	565
32	32	2019-04-09	2019-12-08	625
22	22	2019-04-09	2019-12-08	190
29	29	2019-04-09	2019-06-08	634
11	11	2019-04-09	2019-08-08	442
27	27	2019-04-10	2019-06-09	598
6	6	2019-04-10	2019-11-09	300
26	26	2019-04-10	2019-12-09	550
20	20	2019-04-12	2020-01-11	186
6	6	2019-04-12	2019-07-11	227
14	14	2019-04-12	2020-04-11	307
3	3	2019-04-13	2019-11-12	576
17	17	2019-04-13	2020-02-12	439
13	13	2019-04-18	2020-01-17	359
14	14	2019-04-18	2019-05-17	298
7	7	2019-04-18	2020-01-17	418
18	18	2019-04-18	2019-09-17	460
25	25	2019-04-20	2020-01-19	145
2	2	2019-04-21	2019-09-20	602
5	5	2019-04-21	2019-08-20	348
25	25	2019-04-21	2020-03-20	421
10	10	2019-04-21	2020-04-20	668
5	5	2019-04-22	2019-06-21	536
29	29	2019-04-22	2019-05-21	266
36	36	2019-04-25	2019-11-24	477
13	13	2019-04-25	2020-04-24	655
7	7	2019-04-25	2019-06-24	610
14	14	2019-04-27	2019-06-26	239
36	36	2019-04-27	2019-09-26	474
12	12	2019-04-27	2019-06-26	513
27	27	2019-04-27	2019-08-26	179
18	18	2019-04-29	2019-08-28	491
26	26	2019-04-29	2019-12-28	472
3	3	2019-04-30	2019-08-29	545
17	17	2019-05-02	2019-11-01	403
32	32	2019-05-02	2020-01-01	158
12	12	2019-05-02	2019-07-01	155
14	14	2019-05-02	2019-12-01	597
14	14	2019-05-04	2019-08-03	604
17	17	2019-05-04	2019-09-03	230
10	10	2019-05-04	2019-09-03	53
18	18	2019-05-04	2019-09-03	65
22	22	2019-05-05	2019-06-04	352
4	4	2019-05-05	2020-02-04	254
31	31	2019-05-06	2019-11-05	290
14	14	2019-05-06	2019-07-05	353
25	25	2019-05-07	2019-08-06	143
16	16	2019-05-07	2019-10-06	677
27	27	2019-05-08	2020-04-07	335
5	5	2019-05-08	2020-01-07	600
25	25	2019-05-08	2020-04-07	502
18	18	2019-05-08	2019-12-07	591
5	5	2019-05-08	2019-08-07	595
21	21	2019-05-10	2019-12-09	581
26	26	2019-05-12	2019-07-11	669
13	13	2019-05-12	2019-10-11	678
2	2	2019-05-13	2019-06-12	176
15	15	2019-05-13	2019-08-12	246
3	3	2019-05-15	2020-03-14	641
14	14	2019-05-15	2019-11-14	616
2	2	2019-05-15	2019-10-14	540
6	6	2019-05-16	2019-08-15	85
12	12	2019-05-16	2019-07-15	519
21	21	2019-05-16	2019-09-15	628
28	28	2019-05-16	2019-12-15	80
10	10	2019-05-19	2019-07-18	617
1	1	2019-05-19	2019-07-18	260
9	9	2019-05-22	2019-07-21	228
20	20	2019-05-22	2019-12-21	205
15	15	2019-05-22	2019-11-21	69
16	16	2019-05-24	2019-09-23	460
18	18	2019-05-30	2019-10-29	164
11	11	2019-05-30	2019-10-29	97
19	19	2019-05-30	2019-07-29	548
25	25	2019-05-31	2019-11-30	131
32	32	2019-05-31	2019-09-30	320
14	14	2019-05-31	2020-03-30	131
27	27	2019-06-02	2020-03-01	111
1	1	2019-06-02	2019-10-01	217
2	2	2019-06-04	2019-09-03	508
2	2	2019-06-04	2019-10-03	277
10	10	2019-06-04	2020-05-03	156
21	21	2019-06-04	2020-02-03	104
5	5	2019-06-05	2019-10-04	80
21	21	2019-06-05	2019-11-04	317
10	10	2019-06-05	2019-11-04	669
25	25	2019-06-11	2019-07-10	394
2	2	2019-06-11	2020-01-10	419
10	10	2019-06-15	2019-11-14	589
31	31	2019-06-16	2020-04-15	588
20	20	2019-06-16	2019-12-15	90
2	2	2019-06-16	2019-10-15	96
30	30	2019-06-16	2020-06-15	353
27	27	2019-06-17	2019-11-16	245
21	21	2019-06-17	2019-09-16	367
19	19	2019-06-18	2019-09-17	204
23	23	2019-06-18	2019-11-17	317
1	1	2019-06-20	2019-08-19	657
11	11	2019-06-20	2019-08-19	250
2	2	2019-06-20	2019-09-19	67
15	15	2019-06-20	2020-06-19	573
35	35	2019-06-24	2020-05-23	376
35	35	2019-06-24	2019-10-23	542
30	30	2019-07-02	2020-01-01	438
21	21	2019-07-02	2019-12-01	440
28	28	2019-07-05	2020-05-04	580
21	21	2019-07-05	2020-07-04	471
1	1	2019-07-05	2020-01-04	482
13	13	2019-07-05	2020-07-04	467
2	2	2019-07-06	2019-10-05	218
36	36	2019-07-06	2020-04-05	110
31	31	2019-07-06	2020-07-05	56
26	26	2019-07-06	2019-11-05	600
9	9	2019-07-07	2020-02-06	122
4	4	2019-07-07	2019-11-06	561
19	19	2019-07-07	2019-10-06	650
3	3	2019-07-08	2020-05-07	531
32	32	2019-07-08	2020-07-07	222
14	14	2019-07-08	2020-02-07	71
12	12	2019-07-08	2020-01-07	237
4	4	2019-07-09	2020-06-08	127
4	4	2019-07-09	2020-04-08	566
28	28	2019-07-11	2019-11-10	160
23	23	2019-07-12	2020-07-11	397
15	15	2019-07-12	2019-09-11	393
3	3	2019-07-12	2019-09-11	415
25	25	2019-07-14	2020-05-13	682
24	24	2019-07-16	2019-10-15	434
34	34	2019-07-16	2019-09-15	580
10	10	2019-07-17	2020-05-16	417
22	22	2019-07-17	2020-01-16	120
34	34	2019-07-17	2019-12-16	625
29	29	2019-07-17	2020-07-16	128
3	3	2019-07-18	2020-03-17	102
14	14	2019-07-18	2019-11-17	132
17	17	2019-07-18	2020-07-17	182
12	12	2019-07-18	2020-06-17	343
11	11	2019-07-22	2020-05-21	222
15	15	2019-07-23	2020-07-22	248
16	16	2019-07-23	2020-01-22	451
36	36	2019-07-25	2020-07-24	281
34	34	2019-07-25	2020-03-24	138
9	9	2019-07-28	2020-04-27	225
4	4	2019-07-28	2020-05-27	234
35	35	2019-07-28	2019-12-27	478
5	5	2019-08-01	2019-10-31	458
7	7	2019-08-01	2020-05-31	125
5	5	2019-08-06	2019-09-05	369
19	19	2019-08-06	2020-01-05	333
16	16	2019-08-09	2020-03-08	318
1	1	2019-08-09	2020-06-08	495
11	11	2019-08-09	2020-05-08	374
25	25	2019-08-09	2019-09-08	497
32	32	2019-08-10	2020-01-09	97
30	30	2019-08-10	2020-02-09	529
26	26	2019-08-11	2020-08-10	404
5	5	2019-08-11	2020-01-10	441
4	4	2019-08-13	2020-08-12	94
6	6	2019-08-13	2020-01-12	586
36	36	2019-08-14	2020-03-13	424
25	25	2019-08-14	2019-12-13	355
20	20	2019-08-14	2020-06-13	526
9	9	2019-08-16	2019-09-15	96
5	5	2019-08-16	2019-09-15	479
7	7	2019-08-16	2020-07-15	539
4	4	2019-08-18	2019-12-17	137
36	36	2019-08-19	2020-03-18	152
13	13	2019-08-20	2020-05-19	412
32	32	2019-08-20	2020-05-19	633
4	4	2019-08-20	2020-03-19	306
29	29	2019-08-20	2019-09-19	144
32	32	2019-08-21	2019-09-20	425
9	9	2019-08-22	2020-01-21	417
6	6	2019-08-22	2019-09-21	615
12	12	2019-08-23	2020-02-22	410
28	28	2019-08-23	2020-01-22	234
6	6	2019-08-25	2020-04-24	350
12	12	2019-08-25	2020-03-24	414
35	35	2019-08-30	2020-05-29	334
4	4	2019-08-30	2020-01-29	387
17	17	2019-09-01	2019-09-30	694
11	11	2019-09-01	2020-04-30	653
10	10	2019-09-01	2020-08-31	476
8	8	2019-09-02	2020-02-01	238
14	14	2019-09-02	2020-05-01	277
26	26	2019-09-02	2020-03-01	384
24	24	2019-09-03	2019-12-02	688
25	25	2019-09-03	2020-03-02	443
9	9	2019-09-03	2020-05-02	395
7	7	2019-09-03	2019-10-02	374
18	18	2019-09-03	2020-01-02	295
35	35	2019-09-05	2020-04-04	539
29	29	2019-09-07	2020-06-06	59
5	5	2019-09-07	2019-11-06	627
2	2	2019-09-07	2019-12-06	358
1	1	2019-09-08	2019-12-07	331
22	22	2019-09-08	2020-01-07	315
17	17	2019-09-08	2019-10-07	687
9	9	2019-09-10	2020-02-09	175
8	8	2019-09-10	2020-07-09	91
26	26	2019-09-12	2019-12-11	220
1	1	2019-09-12	2020-09-11	472
18	18	2019-09-12	2020-04-11	289
24	24	2019-09-13	2020-01-12	327
1	1	2019-09-13	2020-07-12	278
5	5	2019-09-15	2020-03-14	213
32	32	2019-09-15	2020-07-14	279
8	8	2019-09-15	2020-08-14	177
25	25	2019-09-17	2020-01-16	121
11	11	2019-09-17	2020-06-16	252
2	2	2019-09-17	2020-07-16	223
29	29	2019-09-17	2019-10-16	576
9	9	2019-09-20	2020-09-19	61
18	18	2019-09-20	2020-02-19	429
21	21	2019-09-20	2020-07-19	251
24	24	2019-09-26	2020-01-25	61
22	22	2019-09-29	2020-04-28	270
3	3	2019-09-29	2020-03-28	121
29	29	2019-09-29	2019-11-28	511
21	21	2019-09-29	2019-11-28	108
29	29	2019-10-03	2020-09-02	491
11	11	2019-10-03	2020-01-02	668
30	30	2019-10-07	2019-11-06	184
19	19	2019-10-07	2020-05-06	444
36	36	2019-10-07	2019-11-06	52
1	1	2019-10-07	2020-10-06	336
5	5	2019-10-11	2019-11-10	532
3	3	2019-10-11	2020-03-10	405
13	13	2019-10-12	2020-02-11	179
16	16	2019-10-12	2020-09-11	151
1	1	2019-10-12	2020-05-11	541
29	29	2019-10-15	2020-10-14	578
18	18	2019-10-16	2020-06-15	469
5	5	2019-10-16	2020-03-15	383
27	27	2019-10-16	2020-08-15	144
15	15	2019-10-16	2020-10-15	389
3	3	2019-10-16	2020-02-15	178
5	5	2019-10-18	2020-04-17	354
28	28	2019-10-18	2020-05-17	374
15	15	2019-10-23	2020-02-22	100
28	28	2019-10-23	2020-04-22	434
26	26	2019-10-23	2020-10-22	503
15	15	2019-10-23	2020-02-22	139
17	17	2019-10-26	2020-01-25	310
7	7	2019-10-26	2020-03-25	512
24	24	2019-10-26	2020-04-25	408
20	20	2019-10-27	2020-10-26	557
34	34	2019-10-27	2019-11-26	486
34	34	2019-10-27	2020-03-26	448
13	13	2019-10-30	2020-04-29	237
30	30	2019-11-01	2020-06-30	635
34	34	2019-11-01	2020-06-30	602
31	31	2019-11-02	2019-12-01	701
16	16	2019-11-02	2020-04-01	564
30	30	2019-11-02	2020-02-01	435
2	2	2019-11-02	2020-11-01	460
35	35	2019-11-03	2020-07-02	464
2	2	2019-11-03	2020-09-02	244
11	11	2019-11-03	2020-04-02	504
19	19	2019-11-04	2019-12-03	449
2	2	2019-11-04	2020-09-03	194
30	30	2019-11-04	2020-11-03	560
3	3	2019-11-06	2020-09-05	627
29	29	2019-11-09	2020-07-08	655
26	26	2019-11-09	2020-04-08	528
6	6	2019-11-10	2020-06-09	53
10	10	2019-11-11	2020-11-10	427
11	11	2019-11-11	2020-01-10	209
29	29	2019-11-11	2020-02-10	415
16	16	2019-11-13	2020-03-12	679
32	32	2019-11-13	2020-03-12	197
28	28	2019-11-14	2020-11-13	494
36	36	2019-11-14	2020-01-13	663
27	27	2019-11-15	2020-03-14	566
4	4	2019-11-15	2020-03-14	259
31	31	2019-11-16	2020-10-15	684
27	27	2019-11-16	2020-02-15	184
32	32	2019-11-16	2020-11-15	147
6	6	2019-11-16	2019-12-15	423
30	30	2019-11-20	2020-06-19	443
6	6	2019-11-20	2020-06-19	416
26	26	2019-11-20	2020-09-19	250
15	15	2019-11-23	2020-04-22	115
19	19	2019-11-23	2020-11-22	132
29	29	2019-11-23	2020-05-22	510
13	13	2019-11-24	2020-11-23	674
7	7	2019-11-24	2020-06-23	460
12	12	2019-11-24	2020-11-23	696
7	7	2019-11-25	2019-12-24	517
6	6	2019-11-25	2020-04-24	351
14	14	2019-11-25	2020-03-24	561
6	6	2019-11-27	2020-09-26	686
2	2	2019-11-29	2020-08-28	363
2	2	2019-11-29	2020-11-28	236
36	36	2019-11-29	2020-10-28	541
30	30	2019-11-30	2020-10-29	515
10	10	2019-11-30	2020-06-29	449
10	10	2019-12-03	2020-02-02	421
14	14	2019-12-05	2020-05-04	106
25	25	2019-12-06	2020-11-05	103
24	24	2019-12-06	2020-11-05	132
14	14	2019-12-06	2020-12-05	562
17	17	2019-12-06	2020-02-05	524
18	18	2019-12-06	2020-01-05	605
24	24	2019-12-07	2020-06-06	410
3	3	2019-12-07	2020-08-06	268
4	4	2019-12-07	2020-11-06	236
18	18	2019-12-07	2020-08-06	359
17	17	2019-12-08	2020-06-07	644
23	23	2019-12-08	2020-10-07	383
5	5	2019-12-10	2020-07-09	697
27	27	2019-12-10	2020-01-09	451
2	2	2019-12-10	2020-07-09	379
2	2	2019-12-11	2020-01-10	71
2	2	2019-12-11	2020-10-10	303
33	33	2019-12-11	2020-05-10	452
22	22	2019-12-14	2020-03-13	178
33	33	2019-12-14	2020-10-13	414
28	28	2019-12-19	2020-09-18	154
7	7	2019-12-21	2020-02-20	362
32	32	2019-12-21	2020-09-20	522
36	36	2019-12-21	2020-02-20	291
31	31	2019-12-21	2020-12-20	116
25	25	2019-12-22	2020-07-21	518
13	13	2019-12-22	2020-04-21	514
6	6	2019-12-22	2020-07-21	147
29	29	2019-12-25	2020-09-24	571
23	23	2019-12-26	2020-08-25	279
17	17	2019-12-26	2020-02-25	183
31	31	2019-12-26	2020-05-25	340
10	10	2019-12-26	2020-08-25	559
7	7	2019-12-27	2020-11-26	688
4	4	2019-12-27	2020-05-26	427
1	1	2019-12-27	2020-07-26	542
21	21	2019-12-27	2020-10-26	473
24	24	2019-12-27	2020-12-26	672
10	10	2019-12-28	2020-03-27	269
20	20	2019-12-30	2020-03-29	606
34	34	2020-01-01	2020-06-30	188
23	23	2020-01-01	\N	312
22	22	2020-01-02	2020-08-01	96
27	27	2020-01-03	2020-04-02	661
17	17	2020-01-03	2020-02-02	574
32	32	2020-01-03	2020-06-02	187
18	18	2020-01-04	2020-10-03	174
9	9	2020-01-04	\N	124
25	25	2020-01-04	2020-10-03	214
5	5	2020-01-06	2020-08-05	346
35	35	2020-01-06	2020-05-05	219
17	17	2020-01-07	2020-05-06	129
32	32	2020-01-10	2020-08-09	80
33	33	2020-01-11	2020-12-10	458
21	21	2020-01-11	2020-11-10	129
5	5	2020-01-12	2020-02-11	529
17	17	2020-01-12	2020-04-11	164
30	30	2020-01-12	2020-02-11	179
36	36	2020-01-12	2020-12-11	384
31	31	2020-01-12	2020-11-11	363
18	18	2020-01-13	2020-10-12	299
2	2	2020-01-13	\N	128
12	12	2020-01-15	2020-10-14	277
27	27	2020-01-15	2020-02-14	502
5	5	2020-01-15	2020-05-14	627
21	21	2020-01-18	2020-11-17	278
25	25	2020-01-19	\N	580
2	2	2020-01-21	2020-04-20	391
1	1	2020-01-21	2020-10-20	167
21	21	2020-01-21	2020-06-20	140
33	33	2020-01-21	2020-05-20	640
10	10	2020-01-21	2020-12-20	561
22	22	2020-01-24	2020-12-23	185
5	5	2020-01-24	2020-02-23	284
18	18	2020-01-24	\N	296
20	20	2020-01-26	2020-09-25	316
13	13	2020-01-26	2020-12-25	284
19	19	2020-01-26	2020-02-25	214
33	33	2020-01-29	2020-05-28	380
25	25	2020-01-29	2020-04-28	244
28	28	2020-01-30	2020-12-29	158
5	5	2020-01-30	2020-03-29	340
18	18	2020-01-30	2020-05-29	356
27	27	2020-01-31	\N	237
22	22	2020-01-31	2020-09-30	548
3	3	2020-01-31	2020-04-30	68
20	20	2020-02-01	2020-07-31	701
22	22	2020-02-01	2020-11-30	699
34	34	2020-02-01	2020-04-30	683
3	3	2020-02-01	\N	697
24	24	2020-02-01	2020-05-31	395
11	11	2020-02-03	2020-12-02	81
24	24	2020-02-03	2020-04-02	255
4	4	2020-02-04	\N	688
19	19	2020-02-05	2020-12-04	333
17	17	2020-02-05	2020-08-04	112
7	7	2020-02-05	2020-04-04	500
18	18	2020-02-08	2020-03-07	338
30	30	2020-02-08	\N	357
14	14	2020-02-08	2020-11-07	533
27	27	2020-02-09	2020-10-08	151
20	20	2020-02-12	\N	138
6	6	2020-02-12	2020-07-11	458
36	36	2020-02-12	2020-03-11	225
10	10	2020-02-12	2020-08-11	375
16	16	2020-02-13	2020-11-12	626
13	13	2020-02-13	2020-04-12	445
3	3	2020-02-16	2020-09-15	122
22	22	2020-02-16	2020-10-15	465
9	9	2020-02-17	\N	661
8	8	2020-02-17	2020-11-16	228
36	36	2020-02-18	2020-10-17	521
1	1	2020-02-18	2020-06-17	474
6	6	2020-02-18	2020-07-17	211
30	30	2020-02-18	\N	342
30	30	2020-02-18	2020-07-17	624
27	27	2020-02-19	2020-09-18	135
11	11	2020-02-19	2020-06-18	451
30	30	2020-02-23	\N	470
29	29	2020-02-23	2020-05-22	628
21	21	2020-02-24	2020-12-23	85
9	9	2020-02-24	2020-04-23	68
26	26	2020-02-25	2020-03-24	474
8	8	2020-02-25	2020-10-24	557
20	20	2020-02-25	2020-08-24	230
15	15	2020-02-28	2020-12-27	140
11	11	2020-02-28	2020-08-27	679
22	22	2020-02-28	2020-07-27	408
35	35	2020-02-28	2020-05-27	448
8	8	2020-02-28	2020-05-27	397
15	15	2020-03-03	2020-04-02	184
25	25	2020-03-03	2020-04-02	378
12	12	2020-03-07	2020-11-06	646
35	35	2020-03-07	2020-05-06	86
9	9	2020-03-10	2020-07-09	108
17	17	2020-03-11	\N	286
27	27	2020-03-11	2020-04-10	295
12	12	2020-03-16	2020-10-15	366
32	32	2020-03-16	2020-05-15	262
7	7	2020-03-16	2020-10-15	109
5	5	2020-03-18	\N	345
17	17	2020-03-18	\N	369
18	18	2020-03-18	\N	495
14	14	2020-03-19	2020-09-18	470
1	1	2020-03-19	2020-05-18	629
21	21	2020-03-19	2020-09-18	650
26	26	2020-03-25	\N	250
5	5	2020-03-25	2020-05-24	263
34	34	2020-03-25	\N	294
1	1	2020-03-29	2020-12-28	452
36	36	2020-03-29	2020-05-28	154
14	14	2020-03-29	2020-12-28	536
23	23	2020-03-30	2020-05-29	438
19	19	2020-03-30	\N	102
36	36	2020-03-30	2020-08-29	269
4	4	2020-03-31	\N	550
26	26	2020-04-01	2020-11-30	90
16	16	2020-04-01	\N	200
14	14	2020-04-01	2020-05-31	163
36	36	2020-04-01	2020-08-31	619
5	5	2020-04-01	2020-07-31	461
11	11	2020-04-03	\N	425
27	27	2020-04-03	2020-10-02	662
3	3	2020-04-04	2020-05-03	106
34	34	2020-04-04	2020-05-03	545
19	19	2020-04-05	\N	239
35	35	2020-04-05	\N	179
7	7	2020-04-06	2020-10-05	196
17	17	2020-04-06	2020-10-05	571
36	36	2020-04-06	2020-08-05	494
4	4	2020-04-06	2020-09-05	529
17	17	2020-04-07	2020-11-06	240
15	15	2020-04-07	2020-09-06	667
35	35	2020-04-07	2020-12-06	80
22	22	2020-04-08	2020-08-07	186
25	25	2020-04-08	2020-09-07	504
18	18	2020-04-09	\N	652
27	27	2020-04-09	2020-10-08	406
12	12	2020-04-10	\N	263
31	31	2020-04-10	2020-08-09	334
24	24	2020-04-12	2020-12-11	112
19	19	2020-04-12	2020-11-11	219
7	7	2020-04-13	2020-08-12	194
18	18	2020-04-13	2020-07-12	422
20	20	2020-04-14	2020-08-13	160
21	21	2020-04-14	\N	195
15	15	2020-04-14	2020-09-13	623
3	3	2020-04-14	\N	203
19	19	2020-04-14	\N	606
13	13	2020-04-15	2020-09-14	235
10	10	2020-04-17	2020-06-16	582
31	31	2020-04-17	2020-06-16	60
5	5	2020-04-17	2020-05-16	436
20	20	2020-04-17	\N	376
15	15	2020-04-18	2020-10-17	177
5	5	2020-04-18	\N	450
5	5	2020-04-19	2020-12-18	548
5	5	2020-04-21	2020-09-20	472
20	20	2020-04-22	2020-12-21	55
14	14	2020-04-22	\N	449
17	17	2020-04-23	2020-07-22	149
36	36	2020-04-23	\N	352
16	16	2020-04-24	\N	199
3	3	2020-04-25	\N	231
24	24	2020-04-28	2020-05-27	665
6	6	2020-04-28	\N	78
13	13	2020-04-28	2020-06-27	139
28	28	2020-04-28	\N	486
27	27	2020-05-01	\N	415
16	16	2020-05-01	2020-06-30	144
13	13	2020-05-03	2020-09-02	379
6	6	2020-05-03	\N	459
11	11	2020-05-03	2020-11-02	99
35	35	2020-05-03	\N	464
19	19	2020-05-03	2020-09-02	148
10	10	2020-05-06	2020-06-05	575
15	15	2020-05-06	\N	106
34	34	2020-05-06	2020-11-05	127
22	22	2020-05-06	\N	643
9	9	2020-05-06	2020-12-05	216
10	10	2020-05-08	2020-06-07	638
11	11	2020-05-09	\N	350
35	35	2020-05-09	2020-07-08	174
19	19	2020-05-11	2020-08-10	407
4	4	2020-05-11	\N	550
27	27	2020-05-11	\N	465
4	4	2020-05-11	2020-07-10	586
9	9	2020-05-11	2020-10-10	626
1	1	2020-05-13	2020-11-12	475
27	27	2020-05-15	2020-12-14	271
28	28	2020-05-17	2020-12-16	186
33	33	2020-05-17	\N	663
21	21	2020-05-18	\N	663
2	2	2020-05-18	2020-07-17	133
13	13	2020-05-19	\N	173
9	9	2020-05-19	\N	286
26	26	2020-05-20	2020-09-19	637
1	1	2020-05-20	2020-08-19	687
25	25	2020-05-20	2020-06-19	482
26	26	2020-05-20	2020-12-19	285
17	17	2020-05-22	\N	516
3	3	2020-05-22	\N	661
35	35	2020-05-24	2020-10-23	686
27	27	2020-05-24	2020-08-23	160
11	11	2020-05-25	2020-09-24	116
32	32	2020-05-25	\N	263
5	5	2020-05-27	2020-10-26	667
26	26	2020-05-27	\N	425
14	14	2020-05-27	2020-12-26	311
32	32	2020-05-27	\N	577
36	36	2020-05-29	2020-11-28	628
14	14	2020-05-30	2020-08-29	531
34	34	2020-05-30	2020-07-29	515
13	13	2020-05-31	\N	95
18	18	2020-05-31	\N	595
31	31	2020-05-31	2020-08-30	197
5	5	2020-05-31	\N	166
14	14	2020-06-01	2020-10-31	510
24	24	2020-06-01	2020-09-30	359
29	29	2020-06-01	\N	325
25	25	2020-06-01	2020-11-30	448
3	3	2020-06-03	2020-08-02	64
26	26	2020-06-03	\N	109
4	4	2020-06-03	\N	353
7	7	2020-06-03	2020-07-02	589
8	8	2020-06-05	\N	364
26	26	2020-06-05	2020-08-04	73
33	33	2020-06-05	\N	350
35	35	2020-06-05	\N	417
28	28	2020-06-11	2020-12-10	262
24	24	2020-06-11	2020-11-10	148
25	25	2020-06-12	2020-10-11	587
4	4	2020-06-12	\N	651
24	24	2020-06-12	2020-08-11	275
25	25	2020-06-12	\N	627
25	25	2020-06-14	2020-10-13	529
32	32	2020-06-14	2020-12-13	405
33	33	2020-06-14	2020-07-13	65
3	3	2020-06-14	2020-12-13	369
30	30	2020-06-16	2020-08-15	534
4	4	2020-06-16	2020-07-15	437
10	10	2020-06-16	2020-12-15	439
20	20	2020-06-16	2020-12-15	541
35	35	2020-06-17	\N	589
6	6	2020-06-17	2020-10-16	319
35	35	2020-06-17	\N	370
12	12	2020-06-18	\N	215
3	3	2020-06-20	2020-11-19	617
21	21	2020-06-22	\N	483
11	11	2020-06-22	\N	540
17	17	2020-06-22	\N	512
10	10	2020-06-22	2020-12-21	525
11	11	2020-06-23	2020-11-22	196
15	15	2020-06-23	2020-10-22	641
29	29	2020-06-23	\N	695
5	5	2020-06-26	\N	612
30	30	2020-06-26	2020-10-25	412
29	29	2020-06-26	2020-07-25	511
1	1	2020-06-26	\N	98
31	31	2020-06-28	\N	74
25	25	2020-06-28	2020-09-27	264
6	6	2020-06-28	\N	328
23	23	2020-06-28	2020-10-27	84
18	18	2020-06-30	2020-07-29	656
34	34	2020-07-01	\N	281
16	16	2020-07-01	2020-08-31	372
34	34	2020-07-02	\N	612
7	7	2020-07-02	\N	161
13	13	2020-07-02	\N	245
10	10	2020-07-02	\N	266
1	1	2020-07-03	2020-09-02	464
7	7	2020-07-03	2020-08-02	597
10	10	2020-07-04	2020-09-03	539
35	35	2020-07-04	2020-10-03	453
10	10	2020-07-06	\N	644
13	13	2020-07-06	2020-08-05	474
30	30	2020-07-06	\N	328
21	21	2020-07-07	\N	79
31	31	2020-07-07	2020-11-06	343
32	32	2020-07-08	\N	384
8	8	2020-07-11	2020-10-10	625
29	29	2020-07-11	\N	692
2	2	2020-07-11	2020-12-10	325
5	5	2020-07-12	\N	341
6	6	2020-07-12	\N	372
23	23	2020-07-12	\N	469
18	18	2020-07-15	\N	528
4	4	2020-07-21	2020-08-20	349
25	25	2020-07-25	2020-10-24	492
21	21	2020-07-25	\N	551
17	17	2020-07-25	\N	561
2	2	2020-07-29	\N	208
4	4	2020-07-29	\N	684
30	30	2020-08-01	\N	188
22	22	2020-08-01	\N	576
33	33	2020-08-01	\N	366
18	18	2020-08-03	\N	413
3	3	2020-08-03	\N	604
17	17	2020-08-04	\N	591
2	2	2020-08-04	\N	538
22	22	2020-08-04	\N	52
20	20	2020-08-05	2020-09-04	656
29	29	2020-08-05	\N	101
22	22	2020-08-09	\N	166
6	6	2020-08-09	2020-12-08	400
7	7	2020-08-09	\N	234
35	35	2020-08-10	2020-10-09	544
31	31	2020-08-10	\N	139
3	3	2020-08-10	2020-11-09	277
9	9	2020-08-10	2020-12-09	423
32	32	2020-08-18	\N	533
27	27	2020-08-19	\N	674
20	20	2020-08-19	\N	479
10	10	2020-08-19	2020-12-18	331
26	26	2020-08-19	\N	518
34	34	2020-08-20	\N	186
36	36	2020-08-20	\N	391
18	18	2020-08-22	2020-10-21	534
24	24	2020-08-22	\N	96
7	7	2020-08-22	\N	176
17	17	2020-08-29	\N	146
30	30	2020-08-29	\N	235
13	13	2020-08-30	2020-10-29	381
32	32	2020-08-30	\N	318
1	1	2020-08-30	2020-12-29	460
7	7	2020-08-31	\N	602
8	8	2020-08-31	\N	256
14	14	2020-08-31	\N	449
6	6	2020-09-01	2020-10-31	643
20	20	2020-09-01	\N	79
10	10	2020-09-02	\N	143
31	31	2020-09-02	\N	641
29	29	2020-09-02	\N	112
2	2	2020-09-04	2020-10-03	302
5	5	2020-09-04	2020-11-03	616
11	11	2020-09-04	2020-10-03	197
15	15	2020-09-05	\N	365
10	10	2020-09-05	2020-11-04	210
29	29	2020-09-05	2020-12-04	74
20	20	2020-09-06	2020-11-05	106
19	19	2020-09-12	2020-10-11	204
23	23	2020-09-12	\N	303
27	27	2020-09-12	\N	179
2	2	2020-09-12	\N	185
3	3	2020-09-16	\N	599
26	26	2020-09-16	2020-12-15	56
15	15	2020-09-16	\N	194
19	19	2020-09-20	2020-10-19	170
36	36	2020-09-20	\N	153
4	4	2020-09-20	\N	110
2	2	2020-09-20	2020-10-19	300
1	1	2020-09-23	\N	511
26	26	2020-09-26	\N	466
1	1	2020-09-26	\N	491
9	9	2020-09-27	\N	656
6	6	2020-09-27	\N	160
11	11	2020-09-27	\N	459
10	10	2020-09-27	\N	603
14	14	2020-09-28	\N	404
20	20	2020-09-28	\N	529
1	1	2020-10-05	\N	274
24	24	2020-10-05	\N	617
3	3	2020-10-05	\N	433
35	35	2020-10-06	2020-11-05	114
1	1	2020-10-06	\N	339
26	26	2020-10-06	\N	498
5	5	2020-10-07	\N	650
2	2	2020-10-08	\N	609
1	1	2020-10-08	2020-12-07	346
29	29	2020-10-09	\N	195
15	15	2020-10-09	\N	530
25	25	2020-10-10	\N	105
13	13	2020-10-10	\N	556
11	11	2020-10-11	\N	670
2	2	2020-10-11	\N	214
35	35	2020-10-11	\N	436
19	19	2020-10-13	\N	58
5	5	2020-10-13	\N	180
36	36	2020-10-16	\N	619
15	15	2020-10-16	\N	138
12	12	2020-10-17	\N	494
4	4	2020-10-18	2020-11-17	588
33	33	2020-10-18	2020-11-17	589
12	12	2020-10-18	\N	349
6	6	2020-10-20	\N	322
2	2	2020-10-20	\N	133
31	31	2020-10-22	\N	492
27	27	2020-10-26	\N	509
27	27	2020-10-27	\N	204
4	4	2020-10-27	\N	143
18	18	2020-10-27	\N	531
19	19	2020-10-29	\N	447
16	16	2020-10-29	\N	483
22	22	2020-10-31	\N	635
26	26	2020-10-31	\N	193
9	9	2020-11-01	\N	655
25	25	2020-11-01	\N	464
27	27	2020-11-01	\N	657
14	14	2020-11-02	\N	684
7	7	2020-11-02	\N	330
29	29	2020-11-02	\N	139
6	6	2020-11-03	\N	670
35	35	2020-11-03	\N	347
18	18	2020-11-06	\N	541
25	25	2020-11-07	\N	406
1	1	2020-11-07	\N	216
13	13	2020-11-07	\N	168
24	24	2020-11-08	\N	264
4	4	2020-11-08	\N	327
2	2	2020-11-08	\N	410
32	32	2020-11-08	\N	169
11	11	2020-11-13	\N	514
13	13	2020-11-13	\N	101
28	28	2020-11-15	\N	540
20	20	2020-11-15	\N	232
14	14	2020-11-18	\N	477
7	7	2020-11-18	\N	255
27	27	2020-11-18	\N	142
23	23	2020-11-18	\N	54
32	32	2020-11-20	\N	339
25	25	2020-11-20	2020-12-19	190
1	1	2020-11-20	\N	667
33	33	2020-11-20	\N	222
30	30	2020-11-23	\N	555
21	21	2020-11-24	\N	126
8	8	2020-11-27	\N	215
22	22	2020-11-27	2020-12-26	617
3	3	2020-11-27	\N	174
21	21	2020-11-30	\N	552
21	21	2020-11-30	\N	103
34	34	2020-11-30	\N	75
30	30	2020-11-30	\N	581
20	20	2020-12-03	\N	493
10	10	2020-12-04	\N	135
16	16	2020-12-04	\N	129
12	12	2020-12-08	\N	511
14	14	2020-12-08	\N	218
36	36	2020-12-08	\N	272
25	25	2020-12-09	\N	516
19	19	2020-12-09	\N	295
19	19	2020-12-11	\N	529
6	6	2020-12-11	\N	145
16	16	2020-12-11	\N	665
18	18	2020-12-13	\N	568
7	7	2020-12-13	\N	268
9	9	2020-12-14	\N	227
15	15	2020-12-14	\N	696
9	9	2020-12-14	\N	337
30	30	2020-12-14	\N	554
1	1	2020-12-16	\N	433
22	22	2020-12-16	\N	137
2	2	2020-12-17	\N	314
27	27	2020-12-17	\N	404
23	23	2020-12-17	\N	440
13	13	2020-12-17	\N	125
19	19	2020-12-17	\N	353
17	17	2020-12-20	\N	301
10	10	2020-12-20	\N	502
36	36	2020-12-20	\N	137
3	3	2020-12-20	\N	269
4	4	2020-12-25	\N	526
2	2	2020-12-25	\N	572
10	10	2020-12-25	\N	572
8	8	2020-12-25	\N	653
36	36	2020-12-29	\N	295
29	29	2020-12-29	\N	668
3	3	2020-12-29	\N	503
\.

-- calendar_day
\! echo 'Insert into Calendar Day..';
COPY calendar_day (date, is_special_day_price) FROM stdin;
2017-01-01	true
2017-01-02	false
2017-01-03	false
2017-01-04	false
2017-01-05	false
2017-01-06	false
2017-01-07	true
2017-01-08	true
2017-01-09	false
2017-01-10	false
2017-01-11	false
2017-01-12	false
2017-01-13	false
2017-01-14	true
2017-01-15	true
2017-01-16	false
2017-01-17	false
2017-01-18	false
2017-01-19	false
2017-01-20	false
2017-01-21	true
2017-01-22	true
2017-01-23	false
2017-01-24	false
2017-01-25	false
2017-01-26	false
2017-01-27	false
2017-01-28	true
2017-01-29	true
2017-01-30	false
2017-01-31	false
2017-02-01	false
2017-02-02	false
2017-02-03	false
2017-02-04	true
2017-02-05	true
2017-02-06	false
2017-02-07	false
2017-02-08	false
2017-02-09	false
2017-02-10	false
2017-02-11	true
2017-02-12	true
2017-02-13	false
2017-02-14	false
2017-02-15	false
2017-02-16	false
2017-02-17	false
2017-02-18	true
2017-02-19	true
2017-02-20	false
2017-02-21	false
2017-02-22	false
2017-02-23	false
2017-02-24	false
2017-02-25	true
2017-02-26	true
2017-02-27	false
2017-02-28	false
2017-03-01	false
2017-03-02	false
2017-03-03	false
2017-03-04	true
2017-03-05	true
2017-03-06	false
2017-03-07	false
2017-03-08	false
2017-03-09	false
2017-03-10	false
2017-03-11	true
2017-03-12	true
2017-03-13	false
2017-03-14	false
2017-03-15	false
2017-03-16	false
2017-03-17	false
2017-03-18	true
2017-03-19	true
2017-03-20	false
2017-03-21	false
2017-03-22	false
2017-03-23	false
2017-03-24	false
2017-03-25	true
2017-03-26	true
2017-03-27	false
2017-03-28	false
2017-03-29	false
2017-03-30	false
2017-03-31	false
2017-04-01	true
2017-04-02	true
2017-04-03	false
2017-04-04	false
2017-04-05	false
2017-04-06	false
2017-04-07	false
2017-04-08	true
2017-04-09	true
2017-04-10	false
2017-04-11	false
2017-04-12	false
2017-04-13	false
2017-04-14	false
2017-04-15	true
2017-04-16	true
2017-04-17	false
2017-04-18	false
2017-04-19	false
2017-04-20	false
2017-04-21	false
2017-04-22	true
2017-04-23	true
2017-04-24	false
2017-04-25	false
2017-04-26	false
2017-04-27	false
2017-04-28	false
2017-04-29	true
2017-04-30	true
2017-05-01	false
2017-05-02	false
2017-05-03	false
2017-05-04	false
2017-05-05	false
2017-05-06	true
2017-05-07	true
2017-05-08	false
2017-05-09	false
2017-05-10	false
2017-05-11	false
2017-05-12	false
2017-05-13	true
2017-05-14	true
2017-05-15	false
2017-05-16	false
2017-05-17	false
2017-05-18	false
2017-05-19	false
2017-05-20	true
2017-05-21	true
2017-05-22	false
2017-05-23	false
2017-05-24	false
2017-05-25	false
2017-05-26	false
2017-05-27	true
2017-05-28	true
2017-05-29	false
2017-05-30	false
2017-05-31	false
2017-06-01	false
2017-06-02	false
2017-06-03	true
2017-06-04	true
2017-06-05	false
2017-06-06	false
2017-06-07	false
2017-06-08	false
2017-06-09	false
2017-06-10	true
2017-06-11	true
2017-06-12	false
2017-06-13	false
2017-06-14	false
2017-06-15	false
2017-06-16	false
2017-06-17	true
2017-06-18	true
2017-06-19	false
2017-06-20	false
2017-06-21	false
2017-06-22	false
2017-06-23	false
2017-06-24	true
2017-06-25	true
2017-06-26	false
2017-06-27	false
2017-06-28	false
2017-06-29	false
2017-06-30	false
2017-07-01	true
2017-07-02	true
2017-07-03	false
2017-07-04	false
2017-07-05	false
2017-07-06	false
2017-07-07	false
2017-07-08	true
2017-07-09	true
2017-07-10	false
2017-07-11	false
2017-07-12	false
2017-07-13	false
2017-07-14	false
2017-07-15	true
2017-07-16	true
2017-07-17	false
2017-07-18	false
2017-07-19	false
2017-07-20	false
2017-07-21	false
2017-07-22	true
2017-07-23	true
2017-07-24	false
2017-07-25	false
2017-07-26	false
2017-07-27	false
2017-07-28	false
2017-07-29	true
2017-07-30	true
2017-07-31	false
2017-08-01	false
2017-08-02	false
2017-08-03	false
2017-08-04	false
2017-08-05	true
2017-08-06	true
2017-08-07	false
2017-08-08	false
2017-08-09	false
2017-08-10	false
2017-08-11	false
2017-08-12	true
2017-08-13	true
2017-08-14	false
2017-08-15	false
2017-08-16	false
2017-08-17	false
2017-08-18	false
2017-08-19	true
2017-08-20	true
2017-08-21	false
2017-08-22	false
2017-08-23	false
2017-08-24	false
2017-08-25	false
2017-08-26	true
2017-08-27	true
2017-08-28	false
2017-08-29	false
2017-08-30	false
2017-08-31	false
2017-09-01	false
2017-09-02	true
2017-09-03	true
2017-09-04	false
2017-09-05	false
2017-09-06	false
2017-09-07	false
2017-09-08	false
2017-09-09	true
2017-09-10	true
2017-09-11	false
2017-09-12	false
2017-09-13	false
2017-09-14	false
2017-09-15	false
2017-09-16	true
2017-09-17	true
2017-09-18	false
2017-09-19	false
2017-09-20	false
2017-09-21	false
2017-09-22	false
2017-09-23	true
2017-09-24	true
2017-09-25	false
2017-09-26	false
2017-09-27	false
2017-09-28	false
2017-09-29	false
2017-09-30	true
2017-10-01	true
2017-10-02	false
2017-10-03	false
2017-10-04	false
2017-10-05	false
2017-10-06	false
2017-10-07	true
2017-10-08	true
2017-10-09	false
2017-10-10	false
2017-10-11	false
2017-10-12	false
2017-10-13	false
2017-10-14	true
2017-10-15	true
2017-10-16	false
2017-10-17	false
2017-10-18	false
2017-10-19	false
2017-10-20	false
2017-10-21	true
2017-10-22	true
2017-10-23	false
2017-10-24	false
2017-10-25	false
2017-10-26	false
2017-10-27	false
2017-10-28	true
2017-10-29	true
2017-10-30	false
2017-10-31	false
2017-11-01	false
2017-11-02	false
2017-11-03	false
2017-11-04	true
2017-11-05	true
2017-11-06	false
2017-11-07	false
2017-11-08	false
2017-11-09	false
2017-11-10	false
2017-11-11	true
2017-11-12	true
2017-11-13	false
2017-11-14	false
2017-11-15	false
2017-11-16	false
2017-11-17	false
2017-11-18	true
2017-11-19	true
2017-11-20	false
2017-11-21	false
2017-11-22	false
2017-11-23	false
2017-11-24	false
2017-11-25	true
2017-11-26	true
2017-11-27	false
2017-11-28	false
2017-11-29	false
2017-11-30	false
2017-12-01	false
2017-12-02	true
2017-12-03	true
2017-12-04	false
2017-12-05	false
2017-12-06	false
2017-12-07	false
2017-12-08	false
2017-12-09	true
2017-12-10	true
2017-12-11	false
2017-12-12	false
2017-12-13	false
2017-12-14	false
2017-12-15	false
2017-12-16	true
2017-12-17	true
2017-12-18	false
2017-12-19	false
2017-12-20	false
2017-12-21	false
2017-12-22	false
2017-12-23	true
2017-12-24	true
2017-12-25	false
2017-12-26	false
2017-12-27	false
2017-12-28	false
2017-12-29	false
2017-12-30	true
2017-12-31	true
2018-01-01	false
2018-01-02	false
2018-01-03	false
2018-01-04	false
2018-01-05	false
2018-01-06	true
2018-01-07	true
2018-01-08	false
2018-01-09	false
2018-01-10	false
2018-01-11	false
2018-01-12	false
2018-01-13	true
2018-01-14	true
2018-01-15	false
2018-01-16	false
2018-01-17	false
2018-01-18	false
2018-01-19	false
2018-01-20	true
2018-01-21	true
2018-01-22	false
2018-01-23	false
2018-01-24	false
2018-01-25	false
2018-01-26	false
2018-01-27	true
2018-01-28	true
2018-01-29	false
2018-01-30	false
2018-01-31	false
2018-02-01	false
2018-02-02	false
2018-02-03	true
2018-02-04	true
2018-02-05	false
2018-02-06	false
2018-02-07	false
2018-02-08	false
2018-02-09	false
2018-02-10	true
2018-02-11	true
2018-02-12	false
2018-02-13	false
2018-02-14	false
2018-02-15	false
2018-02-16	false
2018-02-17	true
2018-02-18	true
2018-02-19	false
2018-02-20	false
2018-02-21	false
2018-02-22	false
2018-02-23	false
2018-02-24	true
2018-02-25	true
2018-02-26	false
2018-02-27	false
2018-02-28	false
2018-03-01	false
2018-03-02	false
2018-03-03	true
2018-03-04	true
2018-03-05	false
2018-03-06	false
2018-03-07	false
2018-03-08	false
2018-03-09	false
2018-03-10	true
2018-03-11	true
2018-03-12	false
2018-03-13	false
2018-03-14	false
2018-03-15	false
2018-03-16	false
2018-03-17	true
2018-03-18	true
2018-03-19	false
2018-03-20	false
2018-03-21	false
2018-03-22	false
2018-03-23	false
2018-03-24	true
2018-03-25	true
2018-03-26	false
2018-03-27	false
2018-03-28	false
2018-03-29	false
2018-03-30	false
2018-03-31	true
2018-04-01	true
2018-04-02	false
2018-04-03	false
2018-04-04	false
2018-04-05	false
2018-04-06	false
2018-04-07	true
2018-04-08	true
2018-04-09	false
2018-04-10	false
2018-04-11	false
2018-04-12	false
2018-04-13	false
2018-04-14	true
2018-04-15	true
2018-04-16	false
2018-04-17	false
2018-04-18	false
2018-04-19	false
2018-04-20	false
2018-04-21	true
2018-04-22	true
2018-04-23	false
2018-04-24	false
2018-04-25	false
2018-04-26	false
2018-04-27	false
2018-04-28	true
2018-04-29	true
2018-04-30	false
2018-05-01	false
2018-05-02	false
2018-05-03	false
2018-05-04	false
2018-05-05	true
2018-05-06	true
2018-05-07	false
2018-05-08	false
2018-05-09	false
2018-05-10	false
2018-05-11	false
2018-05-12	true
2018-05-13	true
2018-05-14	false
2018-05-15	false
2018-05-16	false
2018-05-17	false
2018-05-18	false
2018-05-19	true
2018-05-20	true
2018-05-21	false
2018-05-22	false
2018-05-23	false
2018-05-24	false
2018-05-25	false
2018-05-26	true
2018-05-27	true
2018-05-28	false
2018-05-29	false
2018-05-30	false
2018-05-31	false
2018-06-01	false
2018-06-02	true
2018-06-03	true
2018-06-04	false
2018-06-05	false
2018-06-06	false
2018-06-07	false
2018-06-08	false
2018-06-09	true
2018-06-10	true
2018-06-11	false
2018-06-12	false
2018-06-13	false
2018-06-14	false
2018-06-15	false
2018-06-16	true
2018-06-17	true
2018-06-18	false
2018-06-19	false
2018-06-20	false
2018-06-21	false
2018-06-22	false
2018-06-23	true
2018-06-24	true
2018-06-25	false
2018-06-26	false
2018-06-27	false
2018-06-28	false
2018-06-29	false
2018-06-30	true
2018-07-01	true
2018-07-02	false
2018-07-03	false
2018-07-04	false
2018-07-05	false
2018-07-06	false
2018-07-07	true
2018-07-08	true
2018-07-09	false
2018-07-10	false
2018-07-11	false
2018-07-12	false
2018-07-13	false
2018-07-14	true
2018-07-15	true
2018-07-16	false
2018-07-17	false
2018-07-18	false
2018-07-19	false
2018-07-20	false
2018-07-21	true
2018-07-22	true
2018-07-23	false
2018-07-24	false
2018-07-25	false
2018-07-26	false
2018-07-27	false
2018-07-28	true
2018-07-29	true
2018-07-30	false
2018-07-31	false
2018-08-01	false
2018-08-02	false
2018-08-03	false
2018-08-04	true
2018-08-05	true
2018-08-06	false
2018-08-07	false
2018-08-08	false
2018-08-09	false
2018-08-10	false
2018-08-11	true
2018-08-12	true
2018-08-13	false
2018-08-14	false
2018-08-15	false
2018-08-16	false
2018-08-17	false
2018-08-18	true
2018-08-19	true
2018-08-20	false
2018-08-21	false
2018-08-22	false
2018-08-23	false
2018-08-24	false
2018-08-25	true
2018-08-26	true
2018-08-27	false
2018-08-28	false
2018-08-29	false
2018-08-30	false
2018-08-31	false
2018-09-01	true
2018-09-02	true
2018-09-03	false
2018-09-04	false
2018-09-05	false
2018-09-06	false
2018-09-07	false
2018-09-08	true
2018-09-09	true
2018-09-10	false
2018-09-11	false
2018-09-12	false
2018-09-13	false
2018-09-14	false
2018-09-15	true
2018-09-16	true
2018-09-17	false
2018-09-18	false
2018-09-19	false
2018-09-20	false
2018-09-21	false
2018-09-22	true
2018-09-23	true
2018-09-24	false
2018-09-25	false
2018-09-26	false
2018-09-27	false
2018-09-28	false
2018-09-29	true
2018-09-30	true
2018-10-01	false
2018-10-02	false
2018-10-03	false
2018-10-04	false
2018-10-05	false
2018-10-06	true
2018-10-07	true
2018-10-08	false
2018-10-09	false
2018-10-10	false
2018-10-11	false
2018-10-12	false
2018-10-13	true
2018-10-14	true
2018-10-15	false
2018-10-16	false
2018-10-17	false
2018-10-18	false
2018-10-19	false
2018-10-20	true
2018-10-21	true
2018-10-22	false
2018-10-23	false
2018-10-24	false
2018-10-25	false
2018-10-26	false
2018-10-27	true
2018-10-28	true
2018-10-29	false
2018-10-30	false
2018-10-31	false
2018-11-01	false
2018-11-02	false
2018-11-03	true
2018-11-04	true
2018-11-05	false
2018-11-06	false
2018-11-07	false
2018-11-08	false
2018-11-09	false
2018-11-10	true
2018-11-11	true
2018-11-12	false
2018-11-13	false
2018-11-14	false
2018-11-15	false
2018-11-16	false
2018-11-17	true
2018-11-18	true
2018-11-19	false
2018-11-20	false
2018-11-21	false
2018-11-22	false
2018-11-23	false
2018-11-24	true
2018-11-25	true
2018-11-26	false
2018-11-27	false
2018-11-28	false
2018-11-29	false
2018-11-30	false
2018-12-01	true
2018-12-02	true
2018-12-03	false
2018-12-04	false
2018-12-05	false
2018-12-06	false
2018-12-07	false
2018-12-08	true
2018-12-09	true
2018-12-10	false
2018-12-11	false
2018-12-12	false
2018-12-13	false
2018-12-14	false
2018-12-15	true
2018-12-16	true
2018-12-17	false
2018-12-18	false
2018-12-19	false
2018-12-20	false
2018-12-21	false
2018-12-22	true
2018-12-23	true
2018-12-24	false
2018-12-25	false
2018-12-26	false
2018-12-27	false
2018-12-28	false
2018-12-29	true
2018-12-30	true
2018-12-31	false
2019-01-01	false
2019-01-02	false
2019-01-03	false
2019-01-04	false
2019-01-05	true
2019-01-06	true
2019-01-07	false
2019-01-08	false
2019-01-09	false
2019-01-10	false
2019-01-11	false
2019-01-12	true
2019-01-13	true
2019-01-14	false
2019-01-15	false
2019-01-16	false
2019-01-17	false
2019-01-18	false
2019-01-19	true
2019-01-20	true
2019-01-21	false
2019-01-22	false
2019-01-23	false
2019-01-24	false
2019-01-25	false
2019-01-26	true
2019-01-27	true
2019-01-28	false
2019-01-29	false
2019-01-30	false
2019-01-31	false
2019-02-01	false
2019-02-02	true
2019-02-03	true
2019-02-04	false
2019-02-05	false
2019-02-06	false
2019-02-07	false
2019-02-08	false
2019-02-09	true
2019-02-10	true
2019-02-11	false
2019-02-12	false
2019-02-13	false
2019-02-14	false
2019-02-15	false
2019-02-16	true
2019-02-17	true
2019-02-18	false
2019-02-19	false
2019-02-20	false
2019-02-21	false
2019-02-22	false
2019-02-23	true
2019-02-24	true
2019-02-25	false
2019-02-26	false
2019-02-27	false
2019-02-28	false
2019-03-01	false
2019-03-02	true
2019-03-03	true
2019-03-04	false
2019-03-05	false
2019-03-06	false
2019-03-07	false
2019-03-08	false
2019-03-09	true
2019-03-10	true
2019-03-11	false
2019-03-12	false
2019-03-13	false
2019-03-14	false
2019-03-15	false
2019-03-16	true
2019-03-17	true
2019-03-18	false
2019-03-19	false
2019-03-20	false
2019-03-21	false
2019-03-22	false
2019-03-23	true
2019-03-24	true
2019-03-25	false
2019-03-26	false
2019-03-27	false
2019-03-28	false
2019-03-29	false
2019-03-30	true
2019-03-31	true
2019-04-01	false
2019-04-02	false
2019-04-03	false
2019-04-04	false
2019-04-05	false
2019-04-06	true
2019-04-07	true
2019-04-08	false
2019-04-09	false
2019-04-10	false
2019-04-11	false
2019-04-12	false
2019-04-13	true
2019-04-14	true
2019-04-15	false
2019-04-16	false
2019-04-17	false
2019-04-18	false
2019-04-19	false
2019-04-20	true
2019-04-21	true
2019-04-22	false
2019-04-23	false
2019-04-24	false
2019-04-25	false
2019-04-26	false
2019-04-27	true
2019-04-28	true
2019-04-29	false
2019-04-30	false
2019-05-01	false
2019-05-02	false
2019-05-03	false
2019-05-04	true
2019-05-05	true
2019-05-06	false
2019-05-07	false
2019-05-08	false
2019-05-09	false
2019-05-10	false
2019-05-11	true
2019-05-12	true
2019-05-13	false
2019-05-14	false
2019-05-15	false
2019-05-16	false
2019-05-17	false
2019-05-18	true
2019-05-19	true
2019-05-20	false
2019-05-21	false
2019-05-22	false
2019-05-23	false
2019-05-24	false
2019-05-25	true
2019-05-26	true
2019-05-27	false
2019-05-28	false
2019-05-29	false
2019-05-30	false
2019-05-31	false
2019-06-01	true
2019-06-02	true
2019-06-03	false
2019-06-04	false
2019-06-05	false
2019-06-06	false
2019-06-07	false
2019-06-08	true
2019-06-09	true
2019-06-10	false
2019-06-11	false
2019-06-12	false
2019-06-13	false
2019-06-14	false
2019-06-15	true
2019-06-16	true
2019-06-17	false
2019-06-18	false
2019-06-19	false
2019-06-20	false
2019-06-21	false
2019-06-22	true
2019-06-23	true
2019-06-24	false
2019-06-25	false
2019-06-26	false
2019-06-27	false
2019-06-28	false
2019-06-29	true
2019-06-30	true
2019-07-01	false
2019-07-02	false
2019-07-03	false
2019-07-04	false
2019-07-05	false
2019-07-06	true
2019-07-07	true
2019-07-08	false
2019-07-09	false
2019-07-10	false
2019-07-11	false
2019-07-12	false
2019-07-13	true
2019-07-14	true
2019-07-15	false
2019-07-16	false
2019-07-17	false
2019-07-18	false
2019-07-19	false
2019-07-20	true
2019-07-21	true
2019-07-22	false
2019-07-23	false
2019-07-24	false
2019-07-25	false
2019-07-26	false
2019-07-27	true
2019-07-28	true
2019-07-29	false
2019-07-30	false
2019-07-31	false
2019-08-01	false
2019-08-02	false
2019-08-03	true
2019-08-04	true
2019-08-05	false
2019-08-06	false
2019-08-07	false
2019-08-08	false
2019-08-09	false
2019-08-10	true
2019-08-11	true
2019-08-12	false
2019-08-13	false
2019-08-14	false
2019-08-15	false
2019-08-16	false
2019-08-17	true
2019-08-18	true
2019-08-19	false
2019-08-20	false
2019-08-21	false
2019-08-22	false
2019-08-23	false
2019-08-24	true
2019-08-25	true
2019-08-26	false
2019-08-27	false
2019-08-28	false
2019-08-29	false
2019-08-30	false
2019-08-31	true
2019-09-01	true
2019-09-02	false
2019-09-03	false
2019-09-04	false
2019-09-05	false
2019-09-06	false
2019-09-07	true
2019-09-08	true
2019-09-09	false
2019-09-10	false
2019-09-11	false
2019-09-12	false
2019-09-13	false
2019-09-14	true
2019-09-15	true
2019-09-16	false
2019-09-17	false
2019-09-18	false
2019-09-19	false
2019-09-20	false
2019-09-21	true
2019-09-22	true
2019-09-23	false
2019-09-24	false
2019-09-25	false
2019-09-26	false
2019-09-27	false
2019-09-28	true
2019-09-29	true
2019-09-30	false
2019-10-01	false
2019-10-02	false
2019-10-03	false
2019-10-04	false
2019-10-05	true
2019-10-06	true
2019-10-07	false
2019-10-08	false
2019-10-09	false
2019-10-10	false
2019-10-11	false
2019-10-12	true
2019-10-13	true
2019-10-14	false
2019-10-15	false
2019-10-16	false
2019-10-17	false
2019-10-18	false
2019-10-19	true
2019-10-20	true
2019-10-21	false
2019-10-22	false
2019-10-23	false
2019-10-24	false
2019-10-25	false
2019-10-26	true
2019-10-27	true
2019-10-28	false
2019-10-29	false
2019-10-30	false
2019-10-31	false
2019-11-01	false
2019-11-02	true
2019-11-03	true
2019-11-04	false
2019-11-05	false
2019-11-06	false
2019-11-07	false
2019-11-08	false
2019-11-09	true
2019-11-10	true
2019-11-11	false
2019-11-12	false
2019-11-13	false
2019-11-14	false
2019-11-15	false
2019-11-16	true
2019-11-17	true
2019-11-18	false
2019-11-19	false
2019-11-20	false
2019-11-21	false
2019-11-22	false
2019-11-23	true
2019-11-24	true
2019-11-25	false
2019-11-26	false
2019-11-27	false
2019-11-28	false
2019-11-29	false
2019-11-30	true
2019-12-01	true
2019-12-02	false
2019-12-03	false
2019-12-04	false
2019-12-05	false
2019-12-06	false
2019-12-07	true
2019-12-08	true
2019-12-09	false
2019-12-10	false
2019-12-11	false
2019-12-12	false
2019-12-13	false
2019-12-14	true
2019-12-15	true
2019-12-16	false
2019-12-17	false
2019-12-18	false
2019-12-19	false
2019-12-20	false
2019-12-21	true
2019-12-22	true
2019-12-23	false
2019-12-24	false
2019-12-25	false
2019-12-26	false
2019-12-27	false
2019-12-28	true
2019-12-29	true
2019-12-30	false
2019-12-31	false
2020-01-01	false
2020-01-02	false
2020-01-03	false
2020-01-04	true
2020-01-05	true
2020-01-06	false
2020-01-07	false
2020-01-08	false
2020-01-09	false
2020-01-10	false
2020-01-11	true
2020-01-12	true
2020-01-13	false
2020-01-14	false
2020-01-15	false
2020-01-16	false
2020-01-17	false
2020-01-18	true
2020-01-19	true
2020-01-20	false
2020-01-21	false
2020-01-22	false
2020-01-23	false
2020-01-24	false
2020-01-25	true
2020-01-26	true
2020-01-27	false
2020-01-28	false
2020-01-29	false
2020-01-30	false
2020-01-31	false
2020-02-01	true
2020-02-02	true
2020-02-03	false
2020-02-04	false
2020-02-05	false
2020-02-06	false
2020-02-07	false
2020-02-08	true
2020-02-09	true
2020-02-10	false
2020-02-11	false
2020-02-12	false
2020-02-13	false
2020-02-14	false
2020-02-15	true
2020-02-16	true
2020-02-17	false
2020-02-18	false
2020-02-19	false
2020-02-20	false
2020-02-21	false
2020-02-22	true
2020-02-23	true
2020-02-24	false
2020-02-25	false
2020-02-26	false
2020-02-27	false
2020-02-28	false
2020-02-29	true
2020-03-01	true
2020-03-02	false
2020-03-03	false
2020-03-04	false
2020-03-05	false
2020-03-06	false
2020-03-07	true
2020-03-08	true
2020-03-09	false
2020-03-10	false
2020-03-11	false
2020-03-12	false
2020-03-13	false
2020-03-14	true
2020-03-15	true
2020-03-16	false
2020-03-17	false
2020-03-18	false
2020-03-19	false
2020-03-20	false
2020-03-21	true
2020-03-22	true
2020-03-23	false
2020-03-24	false
2020-03-25	false
2020-03-26	false
2020-03-27	false
2020-03-28	true
2020-03-29	true
2020-03-30	false
2020-03-31	false
2020-04-01	false
2020-04-02	false
2020-04-03	false
2020-04-04	true
2020-04-05	true
2020-04-06	false
2020-04-07	false
2020-04-08	false
2020-04-09	false
2020-04-10	false
2020-04-11	true
2020-04-12	true
2020-04-13	false
2020-04-14	false
2020-04-15	false
2020-04-16	false
2020-04-17	false
2020-04-18	true
2020-04-19	true
2020-04-20	false
2020-04-21	false
2020-04-22	false
2020-04-23	false
2020-04-24	false
2020-04-25	true
2020-04-26	true
2020-04-27	false
2020-04-28	false
2020-04-29	false
2020-04-30	false
2020-05-01	false
2020-05-02	true
2020-05-03	true
2020-05-04	false
2020-05-05	false
2020-05-06	false
2020-05-07	false
2020-05-08	false
2020-05-09	true
2020-05-10	true
2020-05-11	false
2020-05-12	false
2020-05-13	false
2020-05-14	false
2020-05-15	false
2020-05-16	true
2020-05-17	true
2020-05-18	false
2020-05-19	false
2020-05-20	false
2020-05-21	false
2020-05-22	false
2020-05-23	true
2020-05-24	true
2020-05-25	false
2020-05-26	false
2020-05-27	false
2020-05-28	false
2020-05-29	false
2020-05-30	true
2020-05-31	true
2020-06-01	false
2020-06-02	false
2020-06-03	false
2020-06-04	false
2020-06-05	false
2020-06-06	true
2020-06-07	true
2020-06-08	false
2020-06-09	false
2020-06-10	false
2020-06-11	false
2020-06-12	false
2020-06-13	true
2020-06-14	true
2020-06-15	false
2020-06-16	false
2020-06-17	false
2020-06-18	false
2020-06-19	false
2020-06-20	true
2020-06-21	true
2020-06-22	false
2020-06-23	false
2020-06-24	false
2020-06-25	false
2020-06-26	false
2020-06-27	true
2020-06-28	true
2020-06-29	false
2020-06-30	false
2020-07-01	false
2020-07-02	false
2020-07-03	false
2020-07-04	true
2020-07-05	true
2020-07-06	false
2020-07-07	false
2020-07-08	false
2020-07-09	false
2020-07-10	false
2020-07-11	true
2020-07-12	true
2020-07-13	false
2020-07-14	false
2020-07-15	false
2020-07-16	false
2020-07-17	false
2020-07-18	true
2020-07-19	true
2020-07-20	false
2020-07-21	false
2020-07-22	false
2020-07-23	false
2020-07-24	false
2020-07-25	true
2020-07-26	true
2020-07-27	false
2020-07-28	false
2020-07-29	false
2020-07-30	false
2020-07-31	false
2020-08-01	true
2020-08-02	true
2020-08-03	false
2020-08-04	false
2020-08-05	false
2020-08-06	false
2020-08-07	false
2020-08-08	true
2020-08-09	true
2020-08-10	false
2020-08-11	false
2020-08-12	false
2020-08-13	false
2020-08-14	false
2020-08-15	true
2020-08-16	true
2020-08-17	false
2020-08-18	false
2020-08-19	false
2020-08-20	false
2020-08-21	false
2020-08-22	true
2020-08-23	true
2020-08-24	false
2020-08-25	false
2020-08-26	false
2020-08-27	false
2020-08-28	false
2020-08-29	true
2020-08-30	true
2020-08-31	false
2020-09-01	false
2020-09-02	false
2020-09-03	false
2020-09-04	false
2020-09-05	true
2020-09-06	true
2020-09-07	false
2020-09-08	false
2020-09-09	false
2020-09-10	false
2020-09-11	false
2020-09-12	true
2020-09-13	true
2020-09-14	false
2020-09-15	false
2020-09-16	false
2020-09-17	false
2020-09-18	false
2020-09-19	true
2020-09-20	true
2020-09-21	false
2020-09-22	false
2020-09-23	false
2020-09-24	false
2020-09-25	false
2020-09-26	true
2020-09-27	true
2020-09-28	false
2020-09-29	false
2020-09-30	false
2020-10-01	false
2020-10-02	false
2020-10-03	true
2020-10-04	true
2020-10-05	false
2020-10-06	false
2020-10-07	false
2020-10-08	false
2020-10-09	false
2020-10-10	true
2020-10-11	true
2020-10-12	false
2020-10-13	false
2020-10-14	false
2020-10-15	false
2020-10-16	false
2020-10-17	true
2020-10-18	true
2020-10-19	false
2020-10-20	false
2020-10-21	false
2020-10-22	false
2020-10-23	false
2020-10-24	true
2020-10-25	true
2020-10-26	false
2020-10-27	false
2020-10-28	false
2020-10-29	false
2020-10-30	false
2020-10-31	true
2020-11-01	true
2020-11-02	false
2020-11-03	false
2020-11-04	false
2020-11-05	false
2020-11-06	false
2020-11-07	true
2020-11-08	true
2020-11-09	false
2020-11-10	false
2020-11-11	false
2020-11-12	false
2020-11-13	false
2020-11-14	true
2020-11-15	true
2020-11-16	false
2020-11-17	false
2020-11-18	false
2020-11-19	false
2020-11-20	false
2020-11-21	true
2020-11-22	true
2020-11-23	false
2020-11-24	false
2020-11-25	false
2020-11-26	false
2020-11-27	false
2020-11-28	true
2020-11-29	true
2020-11-30	false
2020-12-01	false
2020-12-02	false
2020-12-03	false
2020-12-04	false
2020-12-05	true
2020-12-06	true
2020-12-07	false
2020-12-08	false
2020-12-09	false
2020-12-10	false
2020-12-11	false
2020-12-12	true
2020-12-13	true
2020-12-14	false
2020-12-15	false
2020-12-16	false
2020-12-17	false
2020-12-18	false
2020-12-19	true
2020-12-20	true
2020-12-21	false
2020-12-22	false
2020-12-23	false
2020-12-24	false
2020-12-25	false
2020-12-26	true
2020-12-27	true
2020-12-28	false
2020-12-29	false
2020-12-30	false
2020-12-31	false
2021-01-01	false
2021-01-02	true
2021-01-03	true
2021-01-04	false
2021-01-05	false
2021-01-06	false
2021-01-07	false
2021-01-08	false
2021-01-09	true
2021-01-10	true
2021-01-11	false
2021-01-12	false
2021-01-13	false
2021-01-14	false
2021-01-15	false
2021-01-16	true
2021-01-17	true
2021-01-18	false
2021-01-19	false
2021-01-20	false
2021-01-21	false
2021-01-22	false
2021-01-23	true
2021-01-24	true
2021-01-25	false
2021-01-26	false
2021-01-27	false
2021-01-28	false
2021-01-29	false
2021-01-30	true
2021-01-31	true
2021-02-01	false
2021-02-02	false
2021-02-03	false
2021-02-04	false
2021-02-05	false
2021-02-06	true
2021-02-07	true
2021-02-08	false
2021-02-09	false
2021-02-10	false
2021-02-11	false
2021-02-12	false
2021-02-13	true
2021-02-14	true
2021-02-15	false
2021-02-16	false
2021-02-17	false
2021-02-18	false
2021-02-19	false
2021-02-20	true
2021-02-21	true
2021-02-22	false
2021-02-23	false
2021-02-24	false
2021-02-25	false
2021-02-26	false
2021-02-27	true
2021-02-28	true
2021-03-01	false
2021-03-02	false
2021-03-03	false
2021-03-04	false
2021-03-05	false
2021-03-06	true
2021-03-07	true
2021-03-08	false
2021-03-09	false
2021-03-10	false
2021-03-11	false
2021-03-12	false
2021-03-13	true
2021-03-14	true
2021-03-15	false
2021-03-16	false
2021-03-17	false
2021-03-18	false
2021-03-19	false
2021-03-20	true
2021-03-21	true
2021-03-22	false
2021-03-23	false
2021-03-24	false
2021-03-25	false
2021-03-26	false
2021-03-27	true
2021-03-28	true
2021-03-29	false
2021-03-30	false
2021-03-31	false
2021-04-01	false
2021-04-02	false
2021-04-03	true
2021-04-04	true
2021-04-05	false
2021-04-06	false
2021-04-07	false
2021-04-08	false
2021-04-09	false
2021-04-10	true
2021-04-11	true
2021-04-12	false
2021-04-13	false
2021-04-14	false
2021-04-15	false
2021-04-16	false
2021-04-17	true
2021-04-18	true
2021-04-19	false
2021-04-20	false
2021-04-21	false
2021-04-22	false
2021-04-23	false
2021-04-24	true
2021-04-25	true
2021-04-26	false
2021-04-27	false
2021-04-28	false
2021-04-29	false
2021-04-30	false
2021-05-01	true
2021-05-02	true
2021-05-03	false
2021-05-04	false
2021-05-05	false
2021-05-06	false
2021-05-07	false
2021-05-08	true
2021-05-09	true
2021-05-10	false
2021-05-11	false
2021-05-12	false
2021-05-13	false
2021-05-14	false
2021-05-15	true
2021-05-16	true
2021-05-17	false
2021-05-18	false
2021-05-19	false
2021-05-20	false
2021-05-21	false
2021-05-22	true
2021-05-23	true
2021-05-24	false
2021-05-25	false
2021-05-26	false
2021-05-27	false
2021-05-28	false
2021-05-29	true
2021-05-30	true
2021-05-31	false
2021-06-01	false
2021-06-02	false
2021-06-03	false
2021-06-04	false
2021-06-05	true
2021-06-06	true
2021-06-07	false
2021-06-08	false
2021-06-09	false
2021-06-10	false
2021-06-11	false
2021-06-12	true
2021-06-13	true
2021-06-14	false
2021-06-15	false
2021-06-16	false
2021-06-17	false
2021-06-18	false
2021-06-19	true
2021-06-20	true
2021-06-21	false
2021-06-22	false
2021-06-23	false
2021-06-24	false
2021-06-25	false
2021-06-26	true
2021-06-27	true
2021-06-28	false
2021-06-29	false
2021-06-30	false
2021-07-01	false
2021-07-02	false
2021-07-03	true
2021-07-04	true
2021-07-05	false
2021-07-06	false
2021-07-07	false
2021-07-08	false
2021-07-09	false
2021-07-10	true
2021-07-11	true
2021-07-12	false
2021-07-13	false
2021-07-14	false
2021-07-15	false
2021-07-16	false
2021-07-17	true
2021-07-18	true
2021-07-19	false
2021-07-20	false
2021-07-21	false
2021-07-22	false
2021-07-23	false
2021-07-24	true
2021-07-25	true
2021-07-26	false
2021-07-27	false
2021-07-28	false
2021-07-29	false
2021-07-30	false
2021-07-31	true
2021-08-01	true
2021-08-02	false
2021-08-03	false
2021-08-04	false
2021-08-05	false
2021-08-06	false
2021-08-07	true
2021-08-08	true
2021-08-09	false
2021-08-10	false
2021-08-11	false
2021-08-12	false
2021-08-13	false
2021-08-14	true
2021-08-15	true
2021-08-16	false
2021-08-17	false
2021-08-18	false
2021-08-19	false
2021-08-20	false
2021-08-21	true
2021-08-22	true
2021-08-23	false
2021-08-24	false
2021-08-25	false
2021-08-26	false
2021-08-27	false
2021-08-28	true
2021-08-29	true
2021-08-30	false
2021-08-31	false
2021-09-01	false
2021-09-02	false
2021-09-03	false
2021-09-04	true
2021-09-05	true
2021-09-06	false
2021-09-07	false
2021-09-08	false
2021-09-09	false
2021-09-10	false
2021-09-11	true
2021-09-12	true
2021-09-13	false
2021-09-14	false
2021-09-15	false
2021-09-16	false
2021-09-17	false
2021-09-18	true
2021-09-19	true
2021-09-20	false
2021-09-21	false
2021-09-22	false
2021-09-23	false
2021-09-24	false
2021-09-25	true
2021-09-26	true
2021-09-27	false
2021-09-28	false
2021-09-29	false
2021-09-30	false
2021-10-01	false
2021-10-02	true
2021-10-03	true
2021-10-04	false
2021-10-05	false
2021-10-06	false
2021-10-07	false
2021-10-08	false
2021-10-09	true
2021-10-10	true
2021-10-11	false
2021-10-12	false
2021-10-13	false
2021-10-14	false
2021-10-15	false
2021-10-16	true
2021-10-17	true
2021-10-18	false
2021-10-19	false
2021-10-20	false
2021-10-21	false
2021-10-22	false
2021-10-23	true
2021-10-24	true
2021-10-25	false
2021-10-26	false
2021-10-27	false
2021-10-28	false
2021-10-29	false
2021-10-30	true
2021-10-31	true
2021-11-01	false
2021-11-02	false
2021-11-03	false
2021-11-04	false
2021-11-05	false
2021-11-06	true
2021-11-07	true
2021-11-08	false
2021-11-09	false
2021-11-10	false
2021-11-11	false
2021-11-12	false
2021-11-13	true
2021-11-14	true
2021-11-15	false
2021-11-16	false
2021-11-17	false
2021-11-18	false
2021-11-19	false
2021-11-20	true
2021-11-21	true
2021-11-22	false
2021-11-23	false
2021-11-24	false
2021-11-25	false
2021-11-26	false
2021-11-27	true
2021-11-28	true
2021-11-29	false
2021-11-30	false
2021-12-01	false
2021-12-02	false
2021-12-03	false
2021-12-04	true
2021-12-05	true
2021-12-06	false
2021-12-07	false
2021-12-08	false
2021-12-09	false
2021-12-10	false
2021-12-11	true
2021-12-12	true
2021-12-13	false
2021-12-14	false
2021-12-15	false
2021-12-16	false
2021-12-17	false
2021-12-18	true
2021-12-19	true
2021-12-20	false
2021-12-21	false
2021-12-22	false
2021-12-23	false
2021-12-24	false
2021-12-25	true
2021-12-26	true
2021-12-27	false
2021-12-28	false
2021-12-29	false
2021-12-30	false
2021-12-31	false
\.

-- group_lesson_slot
\! echo 'Insert into Group Lesson Slot..';
COPY group_lesson_slot (calendar_day_date, place, start_time, end_time) FROM stdin;
2017-01-01	Room 101	08:00	10:00
2017-01-01	Room 101	10:00	12:00
2017-01-01	Ensemble Room A	10:00	12:00
2017-01-01	Room 101	13:00	15:00
2017-01-01	Ensemble Room A	13:00	15:00
2017-01-01	Room 101	15:00	17:00
2017-01-01	Room 102	15:00	17:00
2017-01-02	Room 101	10:00	12:00
2017-01-02	Room 102	10:00	12:00
2017-01-02	Ensemble Room A	10:00	12:00
2017-01-02	Ensemble Room A	13:00	15:00
2017-01-02	Room 101	15:00	17:00
2017-01-03	Ensemble Room A	10:00	12:00
2017-01-03	Room 101	10:00	12:00
2017-01-03	Room 102	10:00	12:00
2017-01-03	Ensemble Room A	13:00	15:00
2017-01-04	Room 101	08:00	10:00
2017-01-04	Ensemble Room A	08:00	10:00
2017-01-04	Ensemble Room A	13:00	15:00
2017-01-04	Ensemble Room A	15:00	17:00
2017-01-04	Ensemble Room B	15:00	17:00
2017-01-05	Ensemble Room A	08:00	10:00
2017-01-05	Ensemble Room B	08:00	10:00
2017-01-05	Room 101	08:00	10:00
2017-01-05	Ensemble Room A	13:00	15:00
2017-01-05	Room 101	13:00	15:00
2017-01-05	Room 102	13:00	15:00
2017-01-06	Room 101	08:00	10:00
2017-01-06	Ensemble Room A	10:00	12:00
2017-01-06	Room 101	13:00	15:00
2017-01-06	Room 102	13:00	15:00
2017-01-06	Ensemble Room A	15:00	17:00
2017-01-07	Room 101	08:00	10:00
2017-01-07	Room 102	08:00	10:00
2017-01-07	Room 101	10:00	12:00
2017-01-07	Room 101	15:00	17:00
2017-01-07	Room 102	15:00	17:00
2017-01-08	Room 101	08:00	10:00
2017-01-08	Ensemble Room A	08:00	10:00
2017-01-08	Room 101	10:00	12:00
2017-01-08	Ensemble Room A	10:00	12:00
2017-01-08	Ensemble Room A	13:00	15:00
2017-01-09	Room 101	08:00	10:00
2017-01-09	Room 101	13:00	15:00
2017-01-09	Ensemble Room A	13:00	15:00
2017-01-09	Ensemble Room A	15:00	17:00
2017-01-10	Room 101	10:00	12:00
2017-01-10	Ensemble Room A	10:00	12:00
2017-01-10	Ensemble Room B	10:00	12:00
2017-01-10	Ensemble Room A	15:00	17:00
2017-01-11	Room 101	08:00	10:00
2017-01-11	Ensemble Room A	10:00	12:00
2017-01-11	Ensemble Room A	15:00	17:00
2017-01-11	Room 101	15:00	17:00
2017-01-12	Room 101	10:00	12:00
2017-01-12	Room 101	15:00	17:00
2017-01-13	Room 101	08:00	10:00
2017-01-13	Ensemble Room A	10:00	12:00
2017-01-13	Room 101	10:00	12:00
2017-01-13	Ensemble Room B	10:00	12:00
2017-01-13	Ensemble Room A	13:00	15:00
2017-01-13	Ensemble Room B	13:00	15:00
2017-01-14	Ensemble Room A	08:00	10:00
2017-01-14	Ensemble Room B	08:00	10:00
2017-01-14	Room 101	08:00	10:00
2017-01-14	Ensemble Room A	10:00	12:00
2017-01-14	Room 101	13:00	15:00
2017-01-14	Room 101	15:00	17:00
2017-01-14	Ensemble Room A	15:00	17:00
2017-01-14	Ensemble Room B	15:00	17:00
2017-01-15	Ensemble Room A	13:00	15:00
2017-01-16	Ensemble Room A	13:00	15:00
2017-01-16	Ensemble Room A	15:00	17:00
2017-01-16	Ensemble Room B	15:00	17:00
2017-01-17	Room 101	13:00	15:00
2017-01-17	Ensemble Room A	13:00	15:00
2017-01-17	Room 102	13:00	15:00
2017-01-17	Ensemble Room A	15:00	17:00
2017-01-17	Room 101	15:00	17:00
2017-01-18	Ensemble Room A	08:00	10:00
2017-01-18	Room 101	08:00	10:00
2017-01-18	Room 101	13:00	15:00
2017-01-18	Room 102	13:00	15:00
2017-01-18	Room 101	15:00	17:00
2017-01-19	Ensemble Room A	08:00	10:00
2017-01-19	Room 101	10:00	12:00
2017-01-19	Room 102	10:00	12:00
2017-01-19	Room 101	13:00	15:00
2017-01-19	Ensemble Room A	13:00	15:00
2017-01-19	Ensemble Room A	15:00	17:00
2017-01-19	Room 101	15:00	17:00
2017-01-20	Room 101	10:00	12:00
2017-01-20	Room 102	10:00	12:00
2017-01-20	Room 101	13:00	15:00
2017-01-20	Room 102	13:00	15:00
2017-01-20	Room 101	15:00	17:00
2017-01-20	Ensemble Room A	15:00	17:00
2017-01-21	Room 101	08:00	10:00
2017-01-21	Ensemble Room A	08:00	10:00
2017-01-21	Room 101	13:00	15:00
2017-01-21	Ensemble Room A	13:00	15:00
2017-01-21	Ensemble Room A	15:00	17:00
2017-01-21	Ensemble Room B	15:00	17:00
2017-01-22	Ensemble Room A	08:00	10:00
2017-01-22	Room 101	08:00	10:00
2017-01-22	Ensemble Room B	08:00	10:00
2017-01-22	Room 101	13:00	15:00
2017-01-22	Ensemble Room A	13:00	15:00
2017-01-22	Room 101	15:00	17:00
2017-01-22	Ensemble Room A	15:00	17:00
2017-01-22	Room 102	15:00	17:00
2017-01-23	Ensemble Room A	08:00	10:00
2017-01-23	Room 101	10:00	12:00
2017-01-23	Room 101	13:00	15:00
2017-01-23	Room 102	13:00	15:00
2017-01-23	Ensemble Room A	15:00	17:00
2017-01-23	Room 101	15:00	17:00
2017-01-24	Ensemble Room A	08:00	10:00
2017-01-24	Ensemble Room A	10:00	12:00
2017-01-24	Room 101	15:00	17:00
2017-01-24	Ensemble Room A	15:00	17:00
2017-01-25	Room 101	08:00	10:00
2017-01-25	Room 101	10:00	12:00
2017-01-25	Ensemble Room A	10:00	12:00
2017-01-25	Room 101	13:00	15:00
2017-01-25	Ensemble Room A	13:00	15:00
2017-01-25	Room 102	13:00	15:00
2017-01-25	Room 101	15:00	17:00
2017-01-25	Ensemble Room A	15:00	17:00
2017-01-26	Ensemble Room A	13:00	15:00
2017-01-27	Ensemble Room A	08:00	10:00
2017-01-27	Ensemble Room A	10:00	12:00
2017-01-27	Room 101	13:00	15:00
2017-01-27	Room 102	13:00	15:00
2017-01-27	Ensemble Room A	13:00	15:00
2017-01-27	Room 101	15:00	17:00
2017-01-28	Room 101	10:00	12:00
2017-01-28	Room 101	15:00	17:00
2017-01-29	Ensemble Room A	13:00	15:00
2017-01-29	Room 101	15:00	17:00
2017-01-30	Ensemble Room A	08:00	10:00
2017-01-30	Room 101	08:00	10:00
2017-01-30	Ensemble Room B	08:00	10:00
2017-01-30	Room 101	10:00	12:00
2017-01-30	Ensemble Room A	13:00	15:00
2017-01-30	Room 101	15:00	17:00
2017-01-31	Room 101	08:00	10:00
2017-01-31	Ensemble Room A	10:00	12:00
2017-01-31	Ensemble Room A	13:00	15:00
2017-01-31	Room 101	15:00	17:00
2017-01-31	Ensemble Room A	15:00	17:00
2017-01-31	Ensemble Room B	15:00	17:00
2017-02-01	Ensemble Room A	08:00	10:00
2017-02-01	Room 101	08:00	10:00
2017-02-01	Room 101	10:00	12:00
2017-02-01	Room 102	10:00	12:00
2017-02-01	Ensemble Room A	13:00	15:00
2017-02-01	Ensemble Room A	15:00	17:00
2017-02-02	Room 101	08:00	10:00
2017-02-02	Ensemble Room A	08:00	10:00
2017-02-02	Ensemble Room A	10:00	12:00
2017-02-02	Room 101	15:00	17:00
2017-02-03	Room 101	08:00	10:00
2017-02-03	Ensemble Room A	08:00	10:00
2017-02-03	Room 101	15:00	17:00
2017-02-03	Room 102	15:00	17:00
2017-02-04	Ensemble Room A	08:00	10:00
2017-02-04	Room 101	08:00	10:00
2017-02-04	Ensemble Room B	08:00	10:00
2017-02-04	Ensemble Room A	10:00	12:00
2017-02-04	Room 101	10:00	12:00
2017-02-04	Ensemble Room A	13:00	15:00
2017-02-05	Room 101	13:00	15:00
2017-02-05	Ensemble Room A	13:00	15:00
2017-02-06	Room 101	08:00	10:00
2017-02-06	Room 102	08:00	10:00
2017-02-06	Ensemble Room A	10:00	12:00
2017-02-06	Room 101	10:00	12:00
2017-02-06	Ensemble Room A	13:00	15:00
2017-02-06	Room 101	15:00	17:00
2017-02-07	Room 101	08:00	10:00
2017-02-07	Room 102	08:00	10:00
2017-02-07	Room 101	10:00	12:00
2017-02-07	Ensemble Room A	10:00	12:00
2017-02-07	Ensemble Room A	13:00	15:00
2017-02-07	Ensemble Room B	13:00	15:00
2017-02-07	Room 101	15:00	17:00
2017-02-07	Room 102	15:00	17:00
2017-02-07	Room 103	15:00	17:00
2017-02-08	Room 101	08:00	10:00
2017-02-08	Room 102	08:00	10:00
2017-02-08	Ensemble Room A	10:00	12:00
2017-02-08	Ensemble Room A	13:00	15:00
2017-02-08	Ensemble Room B	13:00	15:00
2017-02-08	Room 101	15:00	17:00
2017-02-08	Ensemble Room A	15:00	17:00
2017-02-09	Room 101	08:00	10:00
2017-02-09	Ensemble Room A	10:00	12:00
2017-02-10	Ensemble Room A	13:00	15:00
2017-02-10	Room 101	15:00	17:00
2017-02-10	Room 102	15:00	17:00
2017-02-11	Room 101	10:00	12:00
2017-02-11	Room 102	10:00	12:00
2017-02-11	Room 103	10:00	12:00
2017-02-11	Ensemble Room A	13:00	15:00
2017-02-11	Room 101	13:00	15:00
2017-02-11	Room 101	15:00	17:00
2017-02-12	Room 101	08:00	10:00
2017-02-12	Ensemble Room A	10:00	12:00
2017-02-12	Room 101	10:00	12:00
2017-02-12	Room 101	13:00	15:00
2017-02-12	Room 101	15:00	17:00
2017-02-13	Ensemble Room A	10:00	12:00
2017-02-13	Room 101	15:00	17:00
2017-02-14	Ensemble Room A	08:00	10:00
2017-02-14	Ensemble Room A	13:00	15:00
2017-02-14	Ensemble Room B	13:00	15:00
2017-02-14	Room 101	15:00	17:00
2017-02-15	Room 101	10:00	12:00
2017-02-15	Ensemble Room A	13:00	15:00
2017-02-15	Ensemble Room A	15:00	17:00
2017-02-16	Ensemble Room A	10:00	12:00
2017-02-16	Room 101	10:00	12:00
2017-02-16	Room 101	13:00	15:00
2017-02-16	Ensemble Room A	13:00	15:00
2017-02-16	Ensemble Room B	13:00	15:00
2017-02-16	Ensemble Room A	15:00	17:00
2017-02-17	Ensemble Room A	08:00	10:00
2017-02-17	Ensemble Room A	10:00	12:00
2017-02-17	Room 101	10:00	12:00
2017-02-17	Room 101	13:00	15:00
2017-02-17	Ensemble Room A	13:00	15:00
2017-02-18	Ensemble Room A	08:00	10:00
2017-02-18	Ensemble Room B	08:00	10:00
2017-02-18	Room 101	10:00	12:00
2017-02-18	Ensemble Room A	13:00	15:00
2017-02-18	Room 101	15:00	17:00
2017-02-18	Ensemble Room A	15:00	17:00
2017-02-18	Room 102	15:00	17:00
2017-02-19	Room 101	08:00	10:00
2017-02-19	Ensemble Room A	08:00	10:00
2017-02-19	Ensemble Room A	10:00	12:00
2017-02-19	Room 101	13:00	15:00
2017-02-19	Ensemble Room A	13:00	15:00
2017-02-19	Ensemble Room A	15:00	17:00
2017-02-20	Room 101	08:00	10:00
2017-02-20	Ensemble Room A	10:00	12:00
2017-02-20	Ensemble Room A	13:00	15:00
2017-02-20	Ensemble Room A	15:00	17:00
2017-02-21	Room 101	08:00	10:00
2017-02-21	Ensemble Room A	08:00	10:00
2017-02-21	Ensemble Room A	10:00	12:00
2017-02-21	Ensemble Room A	13:00	15:00
2017-02-21	Room 101	13:00	15:00
2017-02-21	Ensemble Room B	13:00	15:00
2017-02-21	Ensemble Room A	15:00	17:00
2017-02-21	Ensemble Room B	15:00	17:00
2017-02-22	Ensemble Room A	08:00	10:00
2017-02-22	Room 101	08:00	10:00
2017-02-22	Room 101	13:00	15:00
2017-02-23	Ensemble Room A	08:00	10:00
2017-02-23	Ensemble Room B	08:00	10:00
2017-02-23	Room 101	08:00	10:00
2017-02-23	Room 101	10:00	12:00
2017-02-23	Room 102	10:00	12:00
2017-02-23	Room 103	10:00	12:00
2017-02-23	Room 101	13:00	15:00
2017-02-23	Room 101	15:00	17:00
2017-02-24	Room 101	08:00	10:00
2017-02-24	Ensemble Room A	08:00	10:00
2017-02-24	Ensemble Room B	08:00	10:00
2017-02-24	Room 101	10:00	12:00
2017-02-24	Room 102	10:00	12:00
2017-02-24	Ensemble Room A	13:00	15:00
2017-02-24	Room 101	13:00	15:00
2017-02-25	Ensemble Room A	13:00	15:00
2017-02-26	Ensemble Room A	08:00	10:00
2017-02-26	Ensemble Room B	08:00	10:00
2017-02-26	Ensemble Room C	08:00	10:00
2017-02-26	Room 101	10:00	12:00
2017-02-26	Room 102	10:00	12:00
2017-02-26	Ensemble Room A	15:00	17:00
2017-02-27	Room 101	13:00	15:00
2017-02-27	Ensemble Room A	15:00	17:00
2017-02-27	Ensemble Room B	15:00	17:00
2017-02-28	Ensemble Room A	13:00	15:00
2017-02-28	Ensemble Room B	13:00	15:00
2017-02-28	Ensemble Room C	13:00	15:00
2017-02-28	Ensemble Room A	15:00	17:00
2017-02-28	Room 101	15:00	17:00
2017-02-28	Ensemble Room B	15:00	17:00
2017-03-01	Ensemble Room A	08:00	10:00
2017-03-01	Ensemble Room B	08:00	10:00
2017-03-01	Room 101	10:00	12:00
2017-03-01	Room 101	13:00	15:00
2017-03-01	Room 101	15:00	17:00
2017-03-02	Room 101	08:00	10:00
2017-03-02	Room 101	10:00	12:00
2017-03-02	Ensemble Room A	13:00	15:00
2017-03-02	Ensemble Room B	13:00	15:00
2017-03-03	Ensemble Room A	08:00	10:00
2017-03-03	Ensemble Room A	10:00	12:00
2017-03-03	Room 101	10:00	12:00
2017-03-03	Ensemble Room A	13:00	15:00
2017-03-03	Ensemble Room A	15:00	17:00
2017-03-03	Ensemble Room B	15:00	17:00
2017-03-04	Ensemble Room A	10:00	12:00
2017-03-04	Ensemble Room A	13:00	15:00
2017-03-04	Room 101	13:00	15:00
2017-03-05	Ensemble Room A	08:00	10:00
2017-03-05	Ensemble Room B	08:00	10:00
2017-03-05	Ensemble Room A	10:00	12:00
2017-03-05	Ensemble Room A	15:00	17:00
2017-03-06	Room 101	08:00	10:00
2017-03-06	Room 101	10:00	12:00
2017-03-06	Ensemble Room A	13:00	15:00
2017-03-06	Ensemble Room A	15:00	17:00
2017-03-07	Room 101	15:00	17:00
2017-03-07	Ensemble Room A	15:00	17:00
2017-03-08	Room 101	10:00	12:00
2017-03-08	Room 102	10:00	12:00
2017-03-08	Ensemble Room A	15:00	17:00
2017-03-08	Ensemble Room B	15:00	17:00
2017-03-08	Room 101	15:00	17:00
2017-03-09	Room 101	08:00	10:00
2017-03-09	Ensemble Room A	10:00	12:00
2017-03-09	Ensemble Room A	13:00	15:00
2017-03-09	Ensemble Room B	13:00	15:00
2017-03-09	Room 101	15:00	17:00
2017-03-09	Room 102	15:00	17:00
2017-03-10	Ensemble Room A	08:00	10:00
2017-03-10	Room 101	08:00	10:00
2017-03-10	Room 101	10:00	12:00
2017-03-10	Ensemble Room A	13:00	15:00
2017-03-10	Room 101	15:00	17:00
2017-03-10	Room 102	15:00	17:00
2017-03-11	Room 101	13:00	15:00
2017-03-11	Room 101	15:00	17:00
2017-03-12	Room 101	13:00	15:00
2017-03-13	Ensemble Room A	10:00	12:00
2017-03-13	Room 101	10:00	12:00
2017-03-13	Ensemble Room A	13:00	15:00
2017-03-13	Ensemble Room B	13:00	15:00
2017-03-13	Room 101	15:00	17:00
2017-03-14	Room 101	08:00	10:00
2017-03-14	Room 101	13:00	15:00
2017-03-14	Ensemble Room A	13:00	15:00
2017-03-14	Ensemble Room B	13:00	15:00
2017-03-14	Room 101	15:00	17:00
2017-03-14	Ensemble Room A	15:00	17:00
2017-03-15	Room 101	08:00	10:00
2017-03-15	Room 101	10:00	12:00
2017-03-15	Ensemble Room A	10:00	12:00
2017-03-15	Room 102	10:00	12:00
2017-03-15	Ensemble Room A	13:00	15:00
2017-03-15	Room 101	13:00	15:00
2017-03-16	Ensemble Room A	10:00	12:00
2017-03-16	Room 101	10:00	12:00
2017-03-16	Ensemble Room B	10:00	12:00
2017-03-16	Ensemble Room A	13:00	15:00
2017-03-16	Room 101	15:00	17:00
2017-03-17	Ensemble Room A	13:00	15:00
2017-03-17	Ensemble Room A	15:00	17:00
2017-03-17	Ensemble Room B	15:00	17:00
2017-03-18	Room 101	08:00	10:00
2017-03-18	Room 101	10:00	12:00
2017-03-18	Ensemble Room A	13:00	15:00
2017-03-18	Room 101	15:00	17:00
2017-03-18	Room 102	15:00	17:00
2017-03-18	Room 103	15:00	17:00
2017-03-19	Ensemble Room A	08:00	10:00
2017-03-19	Ensemble Room B	08:00	10:00
2017-03-19	Ensemble Room A	10:00	12:00
2017-03-19	Room 101	10:00	12:00
2017-03-19	Room 101	13:00	15:00
2017-03-19	Room 102	13:00	15:00
2017-03-19	Room 101	15:00	17:00
2017-03-19	Room 102	15:00	17:00
2017-03-20	Room 101	08:00	10:00
2017-03-20	Room 102	08:00	10:00
2017-03-20	Room 101	10:00	12:00
2017-03-20	Room 102	10:00	12:00
2017-03-20	Ensemble Room A	13:00	15:00
2017-03-20	Room 101	13:00	15:00
2017-03-20	Room 102	13:00	15:00
2017-03-20	Room 101	15:00	17:00
2017-03-21	Room 101	08:00	10:00
2017-03-21	Room 101	10:00	12:00
2017-03-21	Ensemble Room A	10:00	12:00
2017-03-21	Ensemble Room B	10:00	12:00
2017-03-21	Ensemble Room A	15:00	17:00
2017-03-22	Ensemble Room A	10:00	12:00
2017-03-22	Room 101	13:00	15:00
2017-03-22	Room 101	15:00	17:00
2017-03-23	Ensemble Room A	08:00	10:00
2017-03-23	Ensemble Room A	10:00	12:00
2017-03-23	Room 101	10:00	12:00
2017-03-23	Ensemble Room A	13:00	15:00
2017-03-23	Ensemble Room B	13:00	15:00
2017-03-23	Room 101	13:00	15:00
2017-03-23	Ensemble Room A	15:00	17:00
2017-03-23	Ensemble Room B	15:00	17:00
2017-03-23	Room 101	15:00	17:00
2017-03-24	Room 101	08:00	10:00
2017-03-24	Room 102	08:00	10:00
2017-03-24	Ensemble Room A	08:00	10:00
2017-03-24	Ensemble Room A	10:00	12:00
2017-03-24	Room 101	10:00	12:00
2017-03-24	Ensemble Room B	10:00	12:00
2017-03-24	Ensemble Room A	13:00	15:00
2017-03-24	Ensemble Room B	13:00	15:00
2017-03-24	Room 101	13:00	15:00
2017-03-24	Room 101	15:00	17:00
2017-03-25	Room 101	08:00	10:00
2017-03-25	Ensemble Room A	13:00	15:00
2017-03-25	Ensemble Room B	13:00	15:00
2017-03-25	Room 101	15:00	17:00
2017-03-26	Room 101	08:00	10:00
2017-03-26	Ensemble Room A	08:00	10:00
2017-03-26	Room 102	08:00	10:00
2017-03-26	Room 101	10:00	12:00
2017-03-26	Room 101	13:00	15:00
2017-03-26	Room 102	13:00	15:00
2017-03-26	Room 101	15:00	17:00
2017-03-27	Ensemble Room A	08:00	10:00
2017-03-27	Room 101	10:00	12:00
2017-03-27	Ensemble Room A	13:00	15:00
2017-03-27	Ensemble Room B	13:00	15:00
2017-03-27	Ensemble Room C	13:00	15:00
2017-03-27	Room 101	15:00	17:00
2017-03-28	Room 101	08:00	10:00
2017-03-28	Ensemble Room A	10:00	12:00
2017-03-28	Ensemble Room A	13:00	15:00
2017-03-28	Room 101	15:00	17:00
2017-03-28	Room 102	15:00	17:00
2017-03-29	Room 101	08:00	10:00
2017-03-29	Ensemble Room A	13:00	15:00
2017-03-29	Ensemble Room B	13:00	15:00
2017-03-29	Ensemble Room A	15:00	17:00
2017-03-30	Room 101	08:00	10:00
2017-03-30	Room 102	08:00	10:00
2017-03-30	Room 101	10:00	12:00
2017-03-30	Room 101	15:00	17:00
2017-03-30	Room 102	15:00	17:00
2017-03-31	Ensemble Room A	08:00	10:00
2017-03-31	Room 101	08:00	10:00
2017-03-31	Room 102	08:00	10:00
2017-03-31	Room 101	10:00	12:00
2017-03-31	Ensemble Room A	10:00	12:00
2017-03-31	Ensemble Room A	15:00	17:00
2017-03-31	Ensemble Room B	15:00	17:00
2017-04-01	Ensemble Room A	08:00	10:00
2017-04-01	Room 101	10:00	12:00
2017-04-01	Room 101	13:00	15:00
2017-04-01	Room 101	15:00	17:00
2017-04-01	Ensemble Room A	15:00	17:00
2017-04-01	Room 102	15:00	17:00
2017-04-02	Ensemble Room A	08:00	10:00
2017-04-02	Ensemble Room A	10:00	12:00
2017-04-02	Room 101	10:00	12:00
2017-04-02	Ensemble Room B	10:00	12:00
2017-04-03	Room 101	10:00	12:00
2017-04-03	Room 102	10:00	12:00
2017-04-03	Ensemble Room A	10:00	12:00
2017-04-03	Room 101	13:00	15:00
2017-04-03	Ensemble Room A	15:00	17:00
2017-04-04	Ensemble Room A	08:00	10:00
2017-04-04	Ensemble Room B	08:00	10:00
2017-04-04	Ensemble Room C	08:00	10:00
2017-04-04	Ensemble Room A	13:00	15:00
2017-04-04	Ensemble Room B	13:00	15:00
2017-04-04	Ensemble Room A	15:00	17:00
2017-04-05	Ensemble Room A	08:00	10:00
2017-04-05	Room 101	10:00	12:00
2017-04-05	Room 101	13:00	15:00
2017-04-05	Ensemble Room A	15:00	17:00
2017-04-06	Ensemble Room A	08:00	10:00
2017-04-06	Ensemble Room A	10:00	12:00
2017-04-06	Room 101	10:00	12:00
2017-04-07	Ensemble Room A	08:00	10:00
2017-04-07	Ensemble Room A	10:00	12:00
2017-04-07	Ensemble Room A	13:00	15:00
2017-04-08	Ensemble Room A	08:00	10:00
2017-04-08	Ensemble Room A	10:00	12:00
2017-04-08	Room 101	13:00	15:00
2017-04-08	Ensemble Room A	15:00	17:00
2017-04-09	Room 101	08:00	10:00
2017-04-09	Ensemble Room A	08:00	10:00
2017-04-09	Ensemble Room A	10:00	12:00
2017-04-09	Ensemble Room B	10:00	12:00
2017-04-09	Room 101	13:00	15:00
2017-04-09	Ensemble Room A	15:00	17:00
2017-04-10	Room 101	08:00	10:00
2017-04-10	Ensemble Room A	10:00	12:00
2017-04-10	Room 101	10:00	12:00
2017-04-10	Ensemble Room A	13:00	15:00
2017-04-10	Ensemble Room A	15:00	17:00
2017-04-11	Room 101	08:00	10:00
2017-04-11	Room 101	10:00	12:00
2017-04-11	Ensemble Room A	10:00	12:00
2017-04-11	Room 101	13:00	15:00
2017-04-12	Ensemble Room A	08:00	10:00
2017-04-12	Ensemble Room B	08:00	10:00
2017-04-12	Ensemble Room A	13:00	15:00
2017-04-12	Ensemble Room A	15:00	17:00
2017-04-13	Room 101	10:00	12:00
2017-04-13	Room 102	10:00	12:00
2017-04-13	Room 101	15:00	17:00
2017-04-14	Ensemble Room A	08:00	10:00
2017-04-14	Room 101	08:00	10:00
2017-04-14	Room 102	08:00	10:00
2017-04-14	Ensemble Room A	10:00	12:00
2017-04-14	Ensemble Room B	10:00	12:00
2017-04-14	Room 101	13:00	15:00
2017-04-14	Room 101	15:00	17:00
2017-04-14	Ensemble Room A	15:00	17:00
2017-04-14	Ensemble Room B	15:00	17:00
2017-04-15	Ensemble Room A	10:00	12:00
2017-04-15	Ensemble Room A	13:00	15:00
2017-04-15	Ensemble Room B	13:00	15:00
2017-04-15	Ensemble Room C	13:00	15:00
2017-04-15	Ensemble Room A	15:00	17:00
2017-04-15	Room 101	15:00	17:00
2017-04-15	Room 102	15:00	17:00
2017-04-16	Room 101	08:00	10:00
2017-04-16	Room 101	10:00	12:00
2017-04-16	Ensemble Room A	13:00	15:00
2017-04-16	Room 101	15:00	17:00
2017-04-17	Ensemble Room A	08:00	10:00
2017-04-17	Room 101	08:00	10:00
2017-04-17	Ensemble Room A	10:00	12:00
2017-04-17	Ensemble Room B	10:00	12:00
2017-04-17	Ensemble Room C	10:00	12:00
2017-04-17	Ensemble Room A	15:00	17:00
2017-04-18	Room 101	08:00	10:00
2017-04-18	Ensemble Room A	08:00	10:00
2017-04-18	Room 101	13:00	15:00
2017-04-18	Room 102	13:00	15:00
2017-04-18	Ensemble Room A	15:00	17:00
2017-04-19	Room 101	08:00	10:00
2017-04-19	Room 101	10:00	12:00
2017-04-19	Room 102	10:00	12:00
2017-04-19	Room 101	13:00	15:00
2017-04-19	Room 101	15:00	17:00
2017-04-19	Ensemble Room A	15:00	17:00
2017-04-20	Room 101	10:00	12:00
2017-04-20	Room 101	13:00	15:00
2017-04-20	Ensemble Room A	15:00	17:00
2017-04-21	Ensemble Room A	08:00	10:00
2017-04-21	Room 101	08:00	10:00
2017-04-21	Room 101	10:00	12:00
2017-04-21	Ensemble Room A	13:00	15:00
2017-04-21	Room 101	13:00	15:00
2017-04-21	Ensemble Room A	15:00	17:00
2017-04-22	Ensemble Room A	08:00	10:00
2017-04-22	Room 101	08:00	10:00
2017-04-22	Ensemble Room A	10:00	12:00
2017-04-22	Room 101	13:00	15:00
2017-04-22	Ensemble Room A	15:00	17:00
2017-04-22	Ensemble Room B	15:00	17:00
2017-04-23	Ensemble Room A	08:00	10:00
2017-04-23	Room 101	10:00	12:00
2017-04-23	Ensemble Room A	10:00	12:00
2017-04-23	Ensemble Room A	13:00	15:00
2017-04-23	Room 101	13:00	15:00
2017-04-24	Ensemble Room A	08:00	10:00
2017-04-24	Ensemble Room A	10:00	12:00
2017-04-24	Room 101	13:00	15:00
2017-04-24	Room 101	15:00	17:00
2017-04-25	Ensemble Room A	10:00	12:00
2017-04-26	Ensemble Room A	08:00	10:00
2017-04-26	Ensemble Room B	08:00	10:00
2017-04-26	Room 101	10:00	12:00
2017-04-26	Ensemble Room A	10:00	12:00
2017-04-26	Room 101	15:00	17:00
2017-04-26	Ensemble Room A	15:00	17:00
2017-04-26	Ensemble Room B	15:00	17:00
2017-04-27	Room 101	08:00	10:00
2017-04-27	Room 101	13:00	15:00
2017-04-27	Ensemble Room A	13:00	15:00
2017-04-27	Ensemble Room B	13:00	15:00
2017-04-27	Room 101	15:00	17:00
2017-04-28	Room 101	08:00	10:00
2017-04-28	Ensemble Room A	08:00	10:00
2017-04-28	Room 101	10:00	12:00
2017-04-28	Ensemble Room A	13:00	15:00
2017-04-28	Ensemble Room A	15:00	17:00
2017-04-28	Room 101	15:00	17:00
2017-04-29	Room 101	08:00	10:00
2017-04-29	Room 101	10:00	12:00
2017-04-29	Ensemble Room A	10:00	12:00
2017-04-29	Ensemble Room A	13:00	15:00
2017-04-29	Ensemble Room B	13:00	15:00
2017-04-29	Ensemble Room A	15:00	17:00
2017-04-30	Room 101	08:00	10:00
2017-04-30	Ensemble Room A	10:00	12:00
2017-04-30	Ensemble Room A	13:00	15:00
2017-04-30	Room 101	13:00	15:00
2017-05-01	Room 101	08:00	10:00
2017-05-01	Room 102	08:00	10:00
2017-05-01	Room 101	10:00	12:00
2017-05-01	Ensemble Room A	13:00	15:00
2017-05-01	Ensemble Room A	15:00	17:00
2017-05-01	Room 101	15:00	17:00
2017-05-02	Room 101	08:00	10:00
2017-05-02	Room 101	10:00	12:00
2017-05-02	Ensemble Room A	10:00	12:00
2017-05-02	Ensemble Room A	13:00	15:00
2017-05-02	Ensemble Room B	13:00	15:00
2017-05-02	Ensemble Room A	15:00	17:00
2017-05-02	Room 101	15:00	17:00
2017-05-03	Ensemble Room A	08:00	10:00
2017-05-03	Room 101	10:00	12:00
2017-05-03	Ensemble Room A	10:00	12:00
2017-05-03	Ensemble Room A	13:00	15:00
2017-05-03	Room 101	13:00	15:00
2017-05-04	Room 101	08:00	10:00
2017-05-04	Room 102	08:00	10:00
2017-05-04	Ensemble Room A	08:00	10:00
2017-05-04	Room 101	10:00	12:00
2017-05-04	Ensemble Room A	15:00	17:00
2017-05-04	Room 101	15:00	17:00
2017-05-05	Room 101	08:00	10:00
2017-05-05	Ensemble Room A	08:00	10:00
2017-05-05	Ensemble Room A	13:00	15:00
2017-05-05	Ensemble Room B	13:00	15:00
2017-05-05	Ensemble Room A	15:00	17:00
2017-05-06	Ensemble Room A	08:00	10:00
2017-05-06	Ensemble Room B	08:00	10:00
2017-05-06	Room 101	13:00	15:00
2017-05-06	Room 102	13:00	15:00
2017-05-07	Ensemble Room A	08:00	10:00
2017-05-07	Ensemble Room A	10:00	12:00
2017-05-07	Ensemble Room A	13:00	15:00
2017-05-07	Room 101	13:00	15:00
2017-05-07	Room 102	13:00	15:00
2017-05-08	Room 101	08:00	10:00
2017-05-08	Room 102	08:00	10:00
2017-05-08	Ensemble Room A	10:00	12:00
2017-05-08	Ensemble Room A	13:00	15:00
2017-05-08	Room 101	13:00	15:00
2017-05-08	Room 101	15:00	17:00
2017-05-09	Ensemble Room A	08:00	10:00
2017-05-09	Room 101	10:00	12:00
2017-05-09	Ensemble Room A	13:00	15:00
2017-05-09	Room 101	13:00	15:00
2017-05-09	Ensemble Room A	15:00	17:00
2017-05-09	Room 101	15:00	17:00
2017-05-10	Ensemble Room A	08:00	10:00
2017-05-10	Ensemble Room A	15:00	17:00
2017-05-11	Ensemble Room A	08:00	10:00
2017-05-11	Ensemble Room A	13:00	15:00
2017-05-12	Ensemble Room A	08:00	10:00
2017-05-12	Ensemble Room A	10:00	12:00
2017-05-12	Ensemble Room B	10:00	12:00
2017-05-13	Ensemble Room A	08:00	10:00
2017-05-13	Room 101	10:00	12:00
2017-05-13	Room 102	10:00	12:00
2017-05-14	Room 101	10:00	12:00
2017-05-14	Room 101	13:00	15:00
2017-05-14	Room 102	13:00	15:00
2017-05-14	Room 101	15:00	17:00
2017-05-14	Room 102	15:00	17:00
2017-05-15	Ensemble Room A	10:00	12:00
2017-05-16	Ensemble Room A	10:00	12:00
2017-05-16	Ensemble Room B	10:00	12:00
2017-05-16	Room 101	15:00	17:00
2017-05-16	Ensemble Room A	15:00	17:00
2017-05-16	Room 102	15:00	17:00
2017-05-17	Room 101	13:00	15:00
2017-05-17	Room 102	13:00	15:00
2017-05-18	Ensemble Room A	08:00	10:00
2017-05-18	Ensemble Room A	10:00	12:00
2017-05-18	Room 101	13:00	15:00
2017-05-18	Room 102	13:00	15:00
2017-05-18	Room 103	13:00	15:00
2017-05-18	Ensemble Room A	15:00	17:00
2017-05-19	Room 101	08:00	10:00
2017-05-19	Ensemble Room A	08:00	10:00
2017-05-19	Ensemble Room B	08:00	10:00
2017-05-19	Ensemble Room A	10:00	12:00
2017-05-19	Room 101	10:00	12:00
2017-05-19	Ensemble Room A	13:00	15:00
2017-05-20	Room 101	10:00	12:00
2017-05-20	Ensemble Room A	13:00	15:00
2017-05-20	Room 101	13:00	15:00
2017-05-20	Ensemble Room A	15:00	17:00
2017-05-21	Ensemble Room A	08:00	10:00
2017-05-21	Room 101	08:00	10:00
2017-05-21	Ensemble Room B	08:00	10:00
2017-05-21	Ensemble Room A	13:00	15:00
2017-05-21	Ensemble Room A	15:00	17:00
2017-05-22	Ensemble Room A	10:00	12:00
2017-05-22	Ensemble Room B	10:00	12:00
2017-05-22	Ensemble Room A	13:00	15:00
2017-05-22	Room 101	15:00	17:00
2017-05-22	Ensemble Room A	15:00	17:00
2017-05-23	Room 101	08:00	10:00
2017-05-23	Ensemble Room A	13:00	15:00
2017-05-24	Ensemble Room A	13:00	15:00
2017-05-24	Ensemble Room A	15:00	17:00
2017-05-25	Room 101	08:00	10:00
2017-05-25	Room 101	10:00	12:00
2017-05-25	Room 101	13:00	15:00
2017-05-26	Ensemble Room A	10:00	12:00
2017-05-26	Ensemble Room B	10:00	12:00
2017-05-26	Room 101	13:00	15:00
2017-05-26	Room 101	15:00	17:00
2017-05-27	Room 101	08:00	10:00
2017-05-27	Room 101	10:00	12:00
2017-05-27	Ensemble Room A	13:00	15:00
2017-05-27	Ensemble Room A	15:00	17:00
2017-05-28	Room 101	10:00	12:00
2017-05-28	Ensemble Room A	13:00	15:00
2017-05-28	Room 101	13:00	15:00
2017-05-28	Ensemble Room A	15:00	17:00
2017-05-29	Room 101	08:00	10:00
2017-05-29	Room 102	08:00	10:00
2017-05-29	Ensemble Room A	13:00	15:00
2017-05-29	Ensemble Room B	13:00	15:00
2017-05-29	Ensemble Room C	13:00	15:00
2017-05-29	Ensemble Room A	15:00	17:00
2017-05-29	Ensemble Room B	15:00	17:00
2017-05-30	Ensemble Room A	08:00	10:00
2017-05-30	Ensemble Room B	08:00	10:00
2017-05-30	Room 101	15:00	17:00
2017-05-30	Ensemble Room A	15:00	17:00
2017-05-31	Room 101	08:00	10:00
2017-05-31	Ensemble Room A	10:00	12:00
2017-05-31	Room 101	13:00	15:00
2017-05-31	Room 101	15:00	17:00
2017-05-31	Ensemble Room A	15:00	17:00
2017-06-01	Ensemble Room A	10:00	12:00
2017-06-01	Room 101	15:00	17:00
2017-06-01	Room 102	15:00	17:00
2017-06-02	Ensemble Room A	08:00	10:00
2017-06-02	Room 101	08:00	10:00
2017-06-02	Ensemble Room A	10:00	12:00
2017-06-02	Ensemble Room A	13:00	15:00
2017-06-02	Ensemble Room A	15:00	17:00
2017-06-03	Room 101	08:00	10:00
2017-06-03	Ensemble Room A	08:00	10:00
2017-06-03	Ensemble Room A	10:00	12:00
2017-06-03	Ensemble Room A	13:00	15:00
2017-06-03	Ensemble Room B	13:00	15:00
2017-06-03	Ensemble Room A	15:00	17:00
2017-06-04	Ensemble Room A	08:00	10:00
2017-06-04	Ensemble Room A	10:00	12:00
2017-06-04	Ensemble Room B	10:00	12:00
2017-06-04	Room 101	13:00	15:00
2017-06-04	Ensemble Room A	15:00	17:00
2017-06-04	Room 101	15:00	17:00
2017-06-04	Ensemble Room B	15:00	17:00
2017-06-05	Ensemble Room A	08:00	10:00
2017-06-05	Room 101	10:00	12:00
2017-06-05	Ensemble Room A	15:00	17:00
2017-06-05	Room 101	15:00	17:00
2017-06-06	Room 101	08:00	10:00
2017-06-06	Room 101	10:00	12:00
2017-06-06	Ensemble Room A	13:00	15:00
2017-06-06	Ensemble Room B	13:00	15:00
2017-06-07	Ensemble Room A	08:00	10:00
2017-06-07	Ensemble Room A	10:00	12:00
2017-06-07	Ensemble Room B	10:00	12:00
2017-06-07	Room 101	13:00	15:00
2017-06-07	Ensemble Room A	15:00	17:00
2017-06-08	Room 101	10:00	12:00
2017-06-08	Ensemble Room A	13:00	15:00
2017-06-08	Room 101	15:00	17:00
2017-06-08	Room 102	15:00	17:00
2017-06-09	Ensemble Room A	10:00	12:00
2017-06-09	Room 101	13:00	15:00
2017-06-09	Room 101	15:00	17:00
2017-06-10	Ensemble Room A	08:00	10:00
2017-06-10	Ensemble Room B	08:00	10:00
2017-06-10	Room 101	08:00	10:00
2017-06-10	Ensemble Room A	10:00	12:00
2017-06-10	Ensemble Room A	13:00	15:00
2017-06-10	Ensemble Room A	15:00	17:00
2017-06-10	Ensemble Room B	15:00	17:00
2017-06-11	Room 101	10:00	12:00
2017-06-12	Ensemble Room A	08:00	10:00
2017-06-12	Ensemble Room A	13:00	15:00
2017-06-12	Ensemble Room B	13:00	15:00
2017-06-12	Room 101	13:00	15:00
2017-06-12	Ensemble Room A	15:00	17:00
2017-06-12	Room 101	15:00	17:00
2017-06-12	Room 102	15:00	17:00
2017-06-13	Room 101	10:00	12:00
2017-06-13	Room 102	10:00	12:00
2017-06-13	Room 103	10:00	12:00
2017-06-13	Room 101	13:00	15:00
2017-06-13	Room 101	15:00	17:00
2017-06-14	Room 101	08:00	10:00
2017-06-14	Ensemble Room A	08:00	10:00
2017-06-14	Room 102	08:00	10:00
2017-06-14	Room 101	10:00	12:00
2017-06-14	Ensemble Room A	13:00	15:00
2017-06-14	Room 101	13:00	15:00
2017-06-14	Room 101	15:00	17:00
2017-06-15	Ensemble Room A	08:00	10:00
2017-06-15	Ensemble Room A	10:00	12:00
2017-06-15	Ensemble Room B	10:00	12:00
2017-06-15	Room 101	10:00	12:00
2017-06-15	Ensemble Room A	13:00	15:00
2017-06-15	Room 101	13:00	15:00
2017-06-15	Room 101	15:00	17:00
2017-06-16	Ensemble Room A	08:00	10:00
2017-06-16	Ensemble Room A	10:00	12:00
2017-06-16	Ensemble Room A	13:00	15:00
2017-06-16	Ensemble Room A	15:00	17:00
2017-06-18	Room 101	15:00	17:00
2017-06-19	Ensemble Room A	08:00	10:00
2017-06-19	Room 101	10:00	12:00
2017-06-19	Ensemble Room A	13:00	15:00
2017-06-20	Room 101	08:00	10:00
2017-06-20	Room 102	08:00	10:00
2017-06-20	Ensemble Room A	10:00	12:00
2017-06-20	Room 101	10:00	12:00
2017-06-20	Room 101	13:00	15:00
2017-06-21	Ensemble Room A	08:00	10:00
2017-06-21	Ensemble Room B	08:00	10:00
2017-06-21	Room 101	15:00	17:00
2017-06-21	Room 102	15:00	17:00
2017-06-21	Ensemble Room A	15:00	17:00
2017-06-22	Room 101	10:00	12:00
2017-06-22	Ensemble Room A	10:00	12:00
2017-06-22	Room 102	10:00	12:00
2017-06-22	Ensemble Room A	13:00	15:00
2017-06-22	Ensemble Room B	13:00	15:00
2017-06-22	Room 101	15:00	17:00
2017-06-22	Room 102	15:00	17:00
2017-06-23	Ensemble Room A	13:00	15:00
2017-06-23	Room 101	15:00	17:00
2017-06-24	Ensemble Room A	13:00	15:00
2017-06-24	Ensemble Room A	15:00	17:00
2017-06-24	Room 101	15:00	17:00
2017-06-25	Ensemble Room A	08:00	10:00
2017-06-25	Room 101	08:00	10:00
2017-06-25	Ensemble Room A	13:00	15:00
2017-06-25	Room 101	15:00	17:00
2017-06-26	Ensemble Room A	08:00	10:00
2017-06-26	Room 101	10:00	12:00
2017-06-26	Room 101	13:00	15:00
2017-06-26	Ensemble Room A	15:00	17:00
2017-06-26	Room 101	15:00	17:00
2017-06-26	Ensemble Room B	15:00	17:00
2017-06-27	Ensemble Room A	08:00	10:00
2017-06-27	Room 101	13:00	15:00
2017-06-27	Room 102	13:00	15:00
2017-06-28	Ensemble Room A	10:00	12:00
2017-06-29	Room 101	08:00	10:00
2017-06-29	Ensemble Room A	10:00	12:00
2017-06-29	Ensemble Room A	13:00	15:00
2017-06-29	Ensemble Room B	13:00	15:00
2017-06-29	Ensemble Room A	15:00	17:00
2017-06-29	Ensemble Room B	15:00	17:00
2017-06-30	Room 101	10:00	12:00
2017-06-30	Room 101	15:00	17:00
2017-07-01	Ensemble Room A	08:00	10:00
2017-07-01	Ensemble Room A	13:00	15:00
2017-07-01	Room 101	15:00	17:00
2017-07-01	Ensemble Room A	15:00	17:00
2017-07-01	Ensemble Room B	15:00	17:00
2017-07-02	Room 101	08:00	10:00
2017-07-02	Room 102	08:00	10:00
2017-07-02	Room 101	13:00	15:00
2017-07-02	Room 102	13:00	15:00
2017-07-04	Room 101	08:00	10:00
2017-07-04	Room 102	08:00	10:00
2017-07-04	Room 101	10:00	12:00
2017-07-04	Room 102	10:00	12:00
2017-07-04	Ensemble Room A	13:00	15:00
2017-07-04	Room 101	15:00	17:00
2017-07-05	Room 101	08:00	10:00
2017-07-05	Ensemble Room A	10:00	12:00
2017-07-05	Ensemble Room B	10:00	12:00
2017-07-05	Ensemble Room C	10:00	12:00
2017-07-05	Room 101	13:00	15:00
2017-07-05	Ensemble Room A	15:00	17:00
2017-07-06	Ensemble Room A	10:00	12:00
2017-07-06	Room 101	10:00	12:00
2017-07-06	Ensemble Room A	13:00	15:00
2017-07-06	Ensemble Room B	13:00	15:00
2017-07-07	Room 101	08:00	10:00
2017-07-07	Room 102	08:00	10:00
2017-07-07	Room 101	13:00	15:00
2017-07-07	Room 101	15:00	17:00
2017-07-07	Ensemble Room A	15:00	17:00
2017-07-08	Ensemble Room A	08:00	10:00
2017-07-08	Ensemble Room B	08:00	10:00
2017-07-08	Ensemble Room A	10:00	12:00
2017-07-08	Room 101	10:00	12:00
2017-07-08	Room 101	13:00	15:00
2017-07-09	Ensemble Room A	08:00	10:00
2017-07-09	Ensemble Room B	08:00	10:00
2017-07-09	Room 101	08:00	10:00
2017-07-09	Ensemble Room A	13:00	15:00
2017-07-09	Ensemble Room B	13:00	15:00
2017-07-09	Room 101	13:00	15:00
2017-07-10	Room 101	08:00	10:00
2017-07-10	Ensemble Room A	08:00	10:00
2017-07-10	Ensemble Room B	08:00	10:00
2017-07-10	Ensemble Room A	13:00	15:00
2017-07-10	Room 101	15:00	17:00
2017-07-11	Room 101	08:00	10:00
2017-07-11	Ensemble Room A	10:00	12:00
2017-07-11	Ensemble Room A	13:00	15:00
2017-07-11	Room 101	13:00	15:00
2017-07-11	Room 101	15:00	17:00
2017-07-11	Room 102	15:00	17:00
2017-07-11	Room 103	15:00	17:00
2017-07-12	Room 101	10:00	12:00
2017-07-12	Room 101	13:00	15:00
2017-07-13	Room 101	08:00	10:00
2017-07-13	Ensemble Room A	08:00	10:00
2017-07-13	Room 102	08:00	10:00
2017-07-13	Room 101	13:00	15:00
2017-07-13	Ensemble Room A	13:00	15:00
2017-07-13	Room 101	15:00	17:00
2017-07-13	Room 102	15:00	17:00
2017-07-14	Ensemble Room A	10:00	12:00
2017-07-14	Room 101	10:00	12:00
2017-07-14	Ensemble Room A	13:00	15:00
2017-07-14	Room 101	13:00	15:00
2017-07-15	Ensemble Room A	10:00	12:00
2017-07-15	Ensemble Room B	10:00	12:00
2017-07-15	Room 101	13:00	15:00
2017-07-15	Ensemble Room A	13:00	15:00
2017-07-15	Ensemble Room B	13:00	15:00
2017-07-15	Ensemble Room A	15:00	17:00
2017-07-15	Room 101	15:00	17:00
2017-07-16	Room 101	08:00	10:00
2017-07-16	Room 101	15:00	17:00
2017-07-16	Room 102	15:00	17:00
2017-07-17	Room 101	08:00	10:00
2017-07-17	Ensemble Room A	08:00	10:00
2017-07-17	Ensemble Room B	08:00	10:00
2017-07-17	Ensemble Room A	10:00	12:00
2017-07-17	Ensemble Room A	15:00	17:00
2017-07-17	Room 101	15:00	17:00
2017-07-18	Room 101	08:00	10:00
2017-07-18	Ensemble Room A	08:00	10:00
2017-07-18	Room 102	08:00	10:00
2017-07-18	Ensemble Room A	10:00	12:00
2017-07-18	Room 101	13:00	15:00
2017-07-18	Ensemble Room A	13:00	15:00
2017-07-18	Ensemble Room A	15:00	17:00
2017-07-18	Room 101	15:00	17:00
2017-07-19	Ensemble Room A	08:00	10:00
2017-07-19	Room 101	10:00	12:00
2017-07-19	Room 101	13:00	15:00
2017-07-19	Ensemble Room A	15:00	17:00
2017-07-19	Ensemble Room B	15:00	17:00
2017-07-20	Room 101	08:00	10:00
2017-07-20	Ensemble Room A	08:00	10:00
2017-07-20	Ensemble Room A	13:00	15:00
2017-07-20	Ensemble Room A	15:00	17:00
2017-07-21	Ensemble Room A	10:00	12:00
2017-07-21	Ensemble Room B	10:00	12:00
2017-07-21	Ensemble Room A	13:00	15:00
2017-07-22	Ensemble Room A	08:00	10:00
2017-07-22	Ensemble Room B	08:00	10:00
2017-07-22	Room 101	08:00	10:00
2017-07-22	Ensemble Room A	10:00	12:00
2017-07-22	Ensemble Room A	13:00	15:00
2017-07-22	Ensemble Room B	13:00	15:00
2017-07-22	Ensemble Room A	15:00	17:00
2017-07-23	Ensemble Room A	08:00	10:00
2017-07-23	Ensemble Room A	13:00	15:00
2017-07-23	Room 101	13:00	15:00
2017-07-23	Ensemble Room A	15:00	17:00
2017-07-23	Ensemble Room B	15:00	17:00
2017-07-24	Ensemble Room A	13:00	15:00
2017-07-24	Room 101	13:00	15:00
2017-07-24	Ensemble Room A	15:00	17:00
2017-07-25	Room 101	08:00	10:00
2017-07-25	Room 102	08:00	10:00
2017-07-25	Room 101	13:00	15:00
2017-07-25	Room 102	13:00	15:00
2017-07-25	Ensemble Room A	15:00	17:00
2017-07-26	Room 101	10:00	12:00
2017-07-26	Ensemble Room A	13:00	15:00
2017-07-26	Ensemble Room B	13:00	15:00
2017-07-26	Room 101	13:00	15:00
2017-07-26	Room 101	15:00	17:00
2017-07-26	Room 102	15:00	17:00
2017-07-27	Room 101	08:00	10:00
2017-07-27	Ensemble Room A	10:00	12:00
2017-07-27	Ensemble Room B	10:00	12:00
2017-07-27	Room 101	13:00	15:00
2017-07-27	Ensemble Room A	13:00	15:00
2017-07-27	Room 102	13:00	15:00
2017-07-28	Ensemble Room A	08:00	10:00
2017-07-28	Ensemble Room B	08:00	10:00
2017-07-28	Room 101	08:00	10:00
2017-07-28	Room 101	13:00	15:00
2017-07-28	Ensemble Room A	13:00	15:00
2017-07-28	Room 101	15:00	17:00
2017-07-28	Room 102	15:00	17:00
2017-07-29	Room 101	08:00	10:00
2017-07-29	Room 101	13:00	15:00
2017-07-29	Room 102	13:00	15:00
2017-07-29	Ensemble Room A	13:00	15:00
2017-07-29	Room 101	15:00	17:00
2017-07-30	Ensemble Room A	08:00	10:00
2017-07-30	Room 101	15:00	17:00
2017-07-30	Room 102	15:00	17:00
2017-07-30	Ensemble Room A	15:00	17:00
2017-07-31	Room 101	08:00	10:00
2017-07-31	Ensemble Room A	10:00	12:00
2017-07-31	Room 101	10:00	12:00
2017-07-31	Ensemble Room A	13:00	15:00
2017-07-31	Room 101	15:00	17:00
2017-07-31	Room 102	15:00	17:00
2017-08-01	Room 101	08:00	10:00
2017-08-01	Ensemble Room A	08:00	10:00
2017-08-01	Room 102	08:00	10:00
2017-08-01	Room 101	10:00	12:00
2017-08-01	Room 101	13:00	15:00
2017-08-01	Room 102	13:00	15:00
2017-08-02	Room 101	08:00	10:00
2017-08-02	Room 102	08:00	10:00
2017-08-02	Ensemble Room A	13:00	15:00
2017-08-02	Room 101	15:00	17:00
2017-08-02	Room 102	15:00	17:00
2017-08-03	Ensemble Room A	08:00	10:00
2017-08-03	Room 101	08:00	10:00
2017-08-03	Room 102	08:00	10:00
2017-08-03	Ensemble Room A	10:00	12:00
2017-08-03	Ensemble Room B	10:00	12:00
2017-08-03	Room 101	13:00	15:00
2017-08-03	Room 101	15:00	17:00
2017-08-04	Ensemble Room A	08:00	10:00
2017-08-04	Room 101	08:00	10:00
2017-08-04	Room 101	13:00	15:00
2017-08-04	Room 102	13:00	15:00
2017-08-05	Ensemble Room A	08:00	10:00
2017-08-05	Ensemble Room B	08:00	10:00
2017-08-05	Room 101	08:00	10:00
2017-08-05	Room 101	10:00	12:00
2017-08-05	Ensemble Room A	13:00	15:00
2017-08-05	Ensemble Room A	15:00	17:00
2017-08-06	Room 101	08:00	10:00
2017-08-06	Ensemble Room A	10:00	12:00
2017-08-06	Room 101	10:00	12:00
2017-08-06	Room 102	10:00	12:00
2017-08-06	Ensemble Room A	13:00	15:00
2017-08-06	Ensemble Room B	13:00	15:00
2017-08-06	Ensemble Room A	15:00	17:00
2017-08-06	Room 101	15:00	17:00
2017-08-06	Room 102	15:00	17:00
2017-08-07	Room 101	10:00	12:00
2017-08-07	Room 101	13:00	15:00
2017-08-07	Room 101	15:00	17:00
2017-08-07	Ensemble Room A	15:00	17:00
2017-08-07	Room 102	15:00	17:00
2017-08-08	Room 101	13:00	15:00
2017-08-08	Ensemble Room A	15:00	17:00
2017-08-09	Room 101	08:00	10:00
2017-08-09	Ensemble Room A	08:00	10:00
2017-08-09	Ensemble Room A	10:00	12:00
2017-08-09	Ensemble Room B	10:00	12:00
2017-08-09	Room 101	15:00	17:00
2017-08-10	Room 101	08:00	10:00
2017-08-10	Ensemble Room A	10:00	12:00
2017-08-10	Ensemble Room B	10:00	12:00
2017-08-10	Ensemble Room A	13:00	15:00
2017-08-10	Room 101	13:00	15:00
2017-08-10	Ensemble Room A	15:00	17:00
2017-08-10	Room 101	15:00	17:00
2017-08-11	Ensemble Room A	10:00	12:00
2017-08-11	Ensemble Room A	13:00	15:00
2017-08-11	Ensemble Room B	13:00	15:00
2017-08-11	Room 101	15:00	17:00
2017-08-12	Room 101	10:00	12:00
2017-08-12	Room 101	15:00	17:00
2017-08-13	Room 101	08:00	10:00
2017-08-14	Room 101	08:00	10:00
2017-08-14	Ensemble Room A	08:00	10:00
2017-08-14	Ensemble Room A	10:00	12:00
2017-08-14	Room 101	10:00	12:00
2017-08-14	Room 101	13:00	15:00
2017-08-14	Ensemble Room A	15:00	17:00
2017-08-15	Room 101	08:00	10:00
2017-08-15	Room 101	10:00	12:00
2017-08-15	Room 102	10:00	12:00
2017-08-15	Ensemble Room A	10:00	12:00
2017-08-15	Room 101	13:00	15:00
2017-08-15	Room 102	13:00	15:00
2017-08-15	Room 101	15:00	17:00
2017-08-15	Room 102	15:00	17:00
2017-08-16	Room 101	08:00	10:00
2017-08-16	Ensemble Room A	10:00	12:00
2017-08-16	Room 101	10:00	12:00
2017-08-16	Room 101	13:00	15:00
2017-08-16	Room 102	13:00	15:00
2017-08-16	Room 103	13:00	15:00
2017-08-16	Room 101	15:00	17:00
2017-08-17	Room 101	13:00	15:00
2017-08-17	Ensemble Room A	13:00	15:00
2017-08-17	Room 101	15:00	17:00
2017-08-17	Ensemble Room A	15:00	17:00
2017-08-18	Ensemble Room A	08:00	10:00
2017-08-18	Ensemble Room A	10:00	12:00
2017-08-18	Room 101	10:00	12:00
2017-08-18	Ensemble Room A	13:00	15:00
2017-08-18	Ensemble Room B	13:00	15:00
2017-08-18	Room 101	15:00	17:00
2017-08-19	Room 101	08:00	10:00
2017-08-19	Room 102	08:00	10:00
2017-08-19	Ensemble Room A	15:00	17:00
2017-08-19	Ensemble Room B	15:00	17:00
2017-08-20	Room 101	08:00	10:00
2017-08-20	Room 102	08:00	10:00
2017-08-20	Room 101	10:00	12:00
2017-08-20	Room 102	10:00	12:00
2017-08-20	Room 101	13:00	15:00
2017-08-21	Room 101	08:00	10:00
2017-08-21	Ensemble Room A	08:00	10:00
2017-08-21	Room 102	08:00	10:00
2017-08-21	Ensemble Room A	15:00	17:00
2017-08-22	Ensemble Room A	08:00	10:00
2017-08-22	Room 101	08:00	10:00
2017-08-22	Ensemble Room B	08:00	10:00
2017-08-22	Ensemble Room A	13:00	15:00
2017-08-22	Ensemble Room B	13:00	15:00
2017-08-23	Room 101	08:00	10:00
2017-08-23	Ensemble Room A	10:00	12:00
2017-08-23	Ensemble Room B	10:00	12:00
2017-08-23	Room 101	13:00	15:00
2017-08-23	Ensemble Room A	13:00	15:00
2017-08-23	Ensemble Room A	15:00	17:00
2017-08-23	Ensemble Room B	15:00	17:00
2017-08-24	Room 101	08:00	10:00
2017-08-24	Room 101	13:00	15:00
2017-08-24	Ensemble Room A	13:00	15:00
2017-08-25	Room 101	10:00	12:00
2017-08-25	Room 101	13:00	15:00
2017-08-25	Room 102	13:00	15:00
2017-08-25	Room 103	13:00	15:00
2017-08-25	Room 101	15:00	17:00
2017-08-26	Ensemble Room A	08:00	10:00
2017-08-26	Room 101	08:00	10:00
2017-08-26	Ensemble Room A	10:00	12:00
2017-08-26	Room 101	13:00	15:00
2017-08-26	Ensemble Room A	15:00	17:00
2017-08-26	Ensemble Room B	15:00	17:00
2017-08-27	Room 101	08:00	10:00
2017-08-27	Ensemble Room A	10:00	12:00
2017-08-27	Ensemble Room B	10:00	12:00
2017-08-27	Room 101	13:00	15:00
2017-08-27	Ensemble Room A	13:00	15:00
2017-08-28	Room 101	08:00	10:00
2017-08-28	Room 101	10:00	12:00
2017-08-28	Ensemble Room A	10:00	12:00
2017-08-28	Room 101	13:00	15:00
2017-08-28	Room 102	13:00	15:00
2017-08-28	Ensemble Room A	15:00	17:00
2017-08-29	Ensemble Room A	08:00	10:00
2017-08-29	Room 101	10:00	12:00
2017-08-29	Ensemble Room A	10:00	12:00
2017-08-29	Ensemble Room A	13:00	15:00
2017-08-29	Ensemble Room B	13:00	15:00
2017-08-29	Room 101	15:00	17:00
2017-08-29	Room 102	15:00	17:00
2017-08-30	Ensemble Room A	08:00	10:00
2017-08-30	Room 101	08:00	10:00
2017-08-30	Room 101	10:00	12:00
2017-08-30	Room 102	10:00	12:00
2017-08-30	Ensemble Room A	15:00	17:00
2017-08-30	Ensemble Room B	15:00	17:00
2017-08-31	Room 101	10:00	12:00
2017-09-01	Room 101	15:00	17:00
2017-09-02	Room 101	08:00	10:00
2017-09-02	Ensemble Room A	08:00	10:00
2017-09-02	Room 102	08:00	10:00
2017-09-02	Ensemble Room A	13:00	15:00
2017-09-02	Room 101	15:00	17:00
2017-09-03	Room 101	08:00	10:00
2017-09-04	Room 101	10:00	12:00
2017-09-04	Room 101	13:00	15:00
2017-09-04	Room 101	15:00	17:00
2017-09-05	Room 101	08:00	10:00
2017-09-05	Ensemble Room A	10:00	12:00
2017-09-05	Room 101	13:00	15:00
2017-09-05	Ensemble Room A	13:00	15:00
2017-09-05	Ensemble Room A	15:00	17:00
2017-09-06	Ensemble Room A	08:00	10:00
2017-09-06	Room 101	10:00	12:00
2017-09-06	Ensemble Room A	10:00	12:00
2017-09-06	Ensemble Room A	13:00	15:00
2017-09-06	Room 101	13:00	15:00
2017-09-06	Room 101	15:00	17:00
2017-09-06	Room 102	15:00	17:00
2017-09-06	Ensemble Room A	15:00	17:00
2017-09-07	Ensemble Room A	08:00	10:00
2017-09-07	Room 101	08:00	10:00
2017-09-07	Room 101	13:00	15:00
2017-09-07	Room 101	15:00	17:00
2017-09-07	Room 102	15:00	17:00
2017-09-08	Ensemble Room A	10:00	12:00
2017-09-08	Ensemble Room B	10:00	12:00
2017-09-08	Room 101	13:00	15:00
2017-09-08	Room 101	15:00	17:00
2017-09-09	Room 101	08:00	10:00
2017-09-09	Room 101	10:00	12:00
2017-09-09	Ensemble Room A	13:00	15:00
2017-09-10	Room 101	08:00	10:00
2017-09-10	Room 101	13:00	15:00
2017-09-10	Room 101	15:00	17:00
2017-09-11	Room 101	08:00	10:00
2017-09-11	Room 102	08:00	10:00
2017-09-11	Ensemble Room A	10:00	12:00
2017-09-11	Room 101	10:00	12:00
2017-09-11	Ensemble Room A	13:00	15:00
2017-09-11	Ensemble Room B	13:00	15:00
2017-09-11	Ensemble Room A	15:00	17:00
2017-09-12	Room 101	08:00	10:00
2017-09-12	Ensemble Room A	13:00	15:00
2017-09-12	Ensemble Room B	13:00	15:00
2017-09-12	Ensemble Room C	13:00	15:00
2017-09-13	Ensemble Room A	10:00	12:00
2017-09-13	Ensemble Room B	10:00	12:00
2017-09-13	Ensemble Room A	15:00	17:00
2017-09-13	Room 101	15:00	17:00
2017-09-14	Ensemble Room A	08:00	10:00
2017-09-14	Room 101	08:00	10:00
2017-09-14	Room 101	13:00	15:00
2017-09-14	Room 101	15:00	17:00
2017-09-15	Room 101	08:00	10:00
2017-09-15	Ensemble Room A	10:00	12:00
2017-09-15	Room 101	13:00	15:00
2017-09-15	Ensemble Room A	13:00	15:00
2017-09-15	Room 101	15:00	17:00
2017-09-16	Ensemble Room A	08:00	10:00
2017-09-16	Ensemble Room B	08:00	10:00
2017-09-16	Ensemble Room A	10:00	12:00
2017-09-16	Ensemble Room A	13:00	15:00
2017-09-16	Ensemble Room B	13:00	15:00
2017-09-16	Ensemble Room C	13:00	15:00
2017-09-16	Ensemble Room A	15:00	17:00
2017-09-17	Ensemble Room A	08:00	10:00
2017-09-17	Ensemble Room B	08:00	10:00
2017-09-17	Ensemble Room A	10:00	12:00
2017-09-17	Ensemble Room B	10:00	12:00
2017-09-18	Ensemble Room A	08:00	10:00
2017-09-18	Ensemble Room B	08:00	10:00
2017-09-18	Room 101	10:00	12:00
2017-09-18	Room 102	10:00	12:00
2017-09-18	Ensemble Room A	13:00	15:00
2017-09-18	Ensemble Room A	15:00	17:00
2017-09-19	Room 101	08:00	10:00
2017-09-19	Ensemble Room A	10:00	12:00
2017-09-19	Ensemble Room B	10:00	12:00
2017-09-19	Ensemble Room C	10:00	12:00
2017-09-19	Room 101	13:00	15:00
2017-09-19	Ensemble Room A	13:00	15:00
2017-09-19	Ensemble Room A	15:00	17:00
2017-09-19	Ensemble Room B	15:00	17:00
2017-09-19	Ensemble Room C	15:00	17:00
2017-09-20	Ensemble Room A	08:00	10:00
2017-09-20	Room 101	10:00	12:00
2017-09-20	Room 102	10:00	12:00
2017-09-20	Ensemble Room A	13:00	15:00
2017-09-20	Room 101	15:00	17:00
2017-09-20	Room 102	15:00	17:00
2017-09-20	Ensemble Room A	15:00	17:00
2017-09-21	Room 101	08:00	10:00
2017-09-21	Ensemble Room A	08:00	10:00
2017-09-21	Room 101	13:00	15:00
2017-09-22	Ensemble Room A	08:00	10:00
2017-09-22	Ensemble Room A	13:00	15:00
2017-09-22	Ensemble Room A	15:00	17:00
2017-09-22	Room 101	15:00	17:00
2017-09-22	Ensemble Room B	15:00	17:00
2017-09-23	Room 101	08:00	10:00
2017-09-23	Room 101	13:00	15:00
2017-09-23	Ensemble Room A	15:00	17:00
2017-09-23	Ensemble Room B	15:00	17:00
2017-09-23	Room 101	15:00	17:00
2017-09-24	Ensemble Room A	08:00	10:00
2017-09-24	Room 101	08:00	10:00
2017-09-24	Room 101	10:00	12:00
2017-09-24	Room 102	10:00	12:00
2017-09-24	Ensemble Room A	13:00	15:00
2017-09-24	Room 101	13:00	15:00
2017-09-24	Ensemble Room A	15:00	17:00
2017-09-24	Ensemble Room B	15:00	17:00
2017-09-25	Ensemble Room A	08:00	10:00
2017-09-25	Room 101	08:00	10:00
2017-09-25	Ensemble Room B	08:00	10:00
2017-09-25	Room 101	10:00	12:00
2017-09-25	Ensemble Room A	10:00	12:00
2017-09-25	Ensemble Room B	10:00	12:00
2017-09-25	Room 101	13:00	15:00
2017-09-25	Room 102	13:00	15:00
2017-09-25	Ensemble Room A	15:00	17:00
2017-09-25	Room 101	15:00	17:00
2017-09-26	Ensemble Room A	08:00	10:00
2017-09-26	Room 101	08:00	10:00
2017-09-26	Room 101	10:00	12:00
2017-09-26	Ensemble Room A	10:00	12:00
2017-09-26	Room 102	10:00	12:00
2017-09-26	Ensemble Room A	13:00	15:00
2017-09-26	Room 101	13:00	15:00
2017-09-26	Room 101	15:00	17:00
2017-09-27	Room 101	08:00	10:00
2017-09-27	Ensemble Room A	10:00	12:00
2017-09-27	Ensemble Room B	10:00	12:00
2017-09-27	Room 101	13:00	15:00
2017-09-27	Room 101	15:00	17:00
2017-09-27	Ensemble Room A	15:00	17:00
2017-09-28	Ensemble Room A	10:00	12:00
2017-09-28	Room 101	10:00	12:00
2017-09-28	Ensemble Room A	13:00	15:00
2017-09-28	Ensemble Room A	15:00	17:00
2017-09-28	Ensemble Room B	15:00	17:00
2017-09-28	Ensemble Room C	15:00	17:00
2017-09-29	Ensemble Room A	13:00	15:00
2017-09-29	Room 101	13:00	15:00
2017-09-29	Room 102	13:00	15:00
2017-09-29	Room 101	15:00	17:00
2017-09-30	Ensemble Room A	10:00	12:00
2017-09-30	Ensemble Room A	13:00	15:00
2017-09-30	Room 101	13:00	15:00
2017-09-30	Ensemble Room A	15:00	17:00
2017-10-01	Room 101	10:00	12:00
2017-10-01	Ensemble Room A	13:00	15:00
2017-10-01	Room 101	15:00	17:00
2017-10-01	Room 102	15:00	17:00
2017-10-02	Ensemble Room A	08:00	10:00
2017-10-02	Room 101	08:00	10:00
2017-10-02	Room 101	13:00	15:00
2017-10-02	Ensemble Room A	13:00	15:00
2017-10-03	Ensemble Room A	08:00	10:00
2017-10-03	Ensemble Room A	13:00	15:00
2017-10-03	Room 101	13:00	15:00
2017-10-04	Room 101	08:00	10:00
2017-10-04	Room 101	10:00	12:00
2017-10-05	Room 101	08:00	10:00
2017-10-05	Room 102	08:00	10:00
2017-10-05	Room 101	10:00	12:00
2017-10-05	Room 102	10:00	12:00
2017-10-05	Room 101	13:00	15:00
2017-10-05	Ensemble Room A	15:00	17:00
2017-10-05	Room 101	15:00	17:00
2017-10-06	Room 101	08:00	10:00
2017-10-06	Ensemble Room A	13:00	15:00
2017-10-06	Room 101	13:00	15:00
2017-10-06	Ensemble Room A	15:00	17:00
2017-10-06	Room 101	15:00	17:00
2017-10-07	Room 101	08:00	10:00
2017-10-07	Room 101	10:00	12:00
2017-10-07	Ensemble Room A	10:00	12:00
2017-10-07	Ensemble Room A	13:00	15:00
2017-10-07	Room 101	13:00	15:00
2017-10-08	Room 101	08:00	10:00
2017-10-08	Room 102	08:00	10:00
2017-10-08	Room 103	08:00	10:00
2017-10-08	Room 101	10:00	12:00
2017-10-08	Ensemble Room A	13:00	15:00
2017-10-08	Ensemble Room B	13:00	15:00
2017-10-08	Ensemble Room C	13:00	15:00
2017-10-08	Ensemble Room A	15:00	17:00
2017-10-08	Room 101	15:00	17:00
2017-10-08	Room 102	15:00	17:00
2017-10-09	Room 101	10:00	12:00
2017-10-09	Ensemble Room A	15:00	17:00
2017-10-10	Room 101	10:00	12:00
2017-10-10	Ensemble Room A	10:00	12:00
2017-10-10	Ensemble Room A	13:00	15:00
2017-10-10	Room 101	13:00	15:00
2017-10-10	Ensemble Room A	15:00	17:00
2017-10-11	Ensemble Room A	08:00	10:00
2017-10-11	Ensemble Room A	10:00	12:00
2017-10-11	Ensemble Room B	10:00	12:00
2017-10-11	Ensemble Room A	13:00	15:00
2017-10-11	Ensemble Room B	13:00	15:00
2017-10-11	Room 101	15:00	17:00
2017-10-11	Room 102	15:00	17:00
2017-10-11	Ensemble Room A	15:00	17:00
2017-10-12	Room 101	08:00	10:00
2017-10-12	Ensemble Room A	15:00	17:00
2017-10-13	Room 101	08:00	10:00
2017-10-13	Ensemble Room A	10:00	12:00
2017-10-13	Ensemble Room A	13:00	15:00
2017-10-13	Ensemble Room A	15:00	17:00
2017-10-13	Room 101	15:00	17:00
2017-10-13	Room 102	15:00	17:00
2017-10-14	Room 101	10:00	12:00
2017-10-14	Room 101	13:00	15:00
2017-10-14	Ensemble Room A	13:00	15:00
2017-10-15	Ensemble Room A	08:00	10:00
2017-10-15	Room 101	10:00	12:00
2017-10-15	Ensemble Room A	13:00	15:00
2017-10-15	Ensemble Room B	13:00	15:00
2017-10-15	Ensemble Room A	15:00	17:00
2017-10-16	Ensemble Room A	08:00	10:00
2017-10-16	Room 101	08:00	10:00
2017-10-16	Room 101	10:00	12:00
2017-10-16	Room 101	13:00	15:00
2017-10-17	Room 101	08:00	10:00
2017-10-17	Ensemble Room A	08:00	10:00
2017-10-17	Room 101	13:00	15:00
2017-10-17	Ensemble Room A	13:00	15:00
2017-10-18	Room 101	08:00	10:00
2017-10-18	Ensemble Room A	10:00	12:00
2017-10-18	Ensemble Room A	15:00	17:00
2017-10-19	Room 101	10:00	12:00
2017-10-19	Room 102	10:00	12:00
2017-10-19	Room 103	10:00	12:00
2017-10-19	Ensemble Room A	13:00	15:00
2017-10-19	Room 101	13:00	15:00
2017-10-19	Room 101	15:00	17:00
2017-10-19	Ensemble Room A	15:00	17:00
2017-10-20	Room 101	08:00	10:00
2017-10-20	Ensemble Room A	08:00	10:00
2017-10-20	Ensemble Room A	13:00	15:00
2017-10-20	Room 101	15:00	17:00
2017-10-21	Room 101	13:00	15:00
2017-10-21	Room 102	13:00	15:00
2017-10-21	Room 101	15:00	17:00
2017-10-21	Ensemble Room A	15:00	17:00
2017-10-22	Room 101	08:00	10:00
2017-10-22	Room 102	08:00	10:00
2017-10-22	Room 101	10:00	12:00
2017-10-22	Room 102	10:00	12:00
2017-10-22	Ensemble Room A	13:00	15:00
2017-10-22	Ensemble Room B	13:00	15:00
2017-10-22	Room 101	13:00	15:00
2017-10-23	Room 101	08:00	10:00
2017-10-23	Ensemble Room A	08:00	10:00
2017-10-24	Ensemble Room A	10:00	12:00
2017-10-24	Room 101	13:00	15:00
2017-10-24	Ensemble Room A	13:00	15:00
2017-10-25	Ensemble Room A	10:00	12:00
2017-10-25	Ensemble Room A	13:00	15:00
2017-10-25	Ensemble Room A	15:00	17:00
2017-10-26	Room 101	08:00	10:00
2017-10-26	Ensemble Room A	08:00	10:00
2017-10-26	Room 101	10:00	12:00
2017-10-26	Room 101	13:00	15:00
2017-10-26	Room 101	15:00	17:00
2017-10-27	Room 101	08:00	10:00
2017-10-27	Room 101	10:00	12:00
2017-10-27	Ensemble Room A	13:00	15:00
2017-10-28	Ensemble Room A	08:00	10:00
2017-10-28	Ensemble Room A	10:00	12:00
2017-10-28	Ensemble Room A	13:00	15:00
2017-10-28	Ensemble Room A	15:00	17:00
2017-10-28	Ensemble Room B	15:00	17:00
2017-10-29	Room 101	08:00	10:00
2017-10-29	Room 101	10:00	12:00
2017-10-29	Ensemble Room A	10:00	12:00
2017-10-29	Room 101	13:00	15:00
2017-10-29	Ensemble Room A	13:00	15:00
2017-10-29	Room 101	15:00	17:00
2017-10-30	Room 101	08:00	10:00
2017-10-30	Room 102	08:00	10:00
2017-10-30	Room 101	10:00	12:00
2017-10-30	Room 102	10:00	12:00
2017-10-30	Ensemble Room A	13:00	15:00
2017-10-31	Ensemble Room A	08:00	10:00
2017-10-31	Ensemble Room B	08:00	10:00
2017-10-31	Ensemble Room A	10:00	12:00
2017-10-31	Room 101	10:00	12:00
2017-10-31	Room 101	13:00	15:00
2017-10-31	Ensemble Room A	15:00	17:00
2017-10-31	Ensemble Room B	15:00	17:00
2017-11-01	Ensemble Room A	08:00	10:00
2017-11-01	Ensemble Room B	08:00	10:00
2017-11-01	Ensemble Room A	15:00	17:00
2017-11-01	Ensemble Room B	15:00	17:00
2017-11-02	Ensemble Room A	10:00	12:00
2017-11-02	Room 101	10:00	12:00
2017-11-02	Ensemble Room A	13:00	15:00
2017-11-02	Ensemble Room B	13:00	15:00
2017-11-02	Room 101	13:00	15:00
2017-11-02	Ensemble Room A	15:00	17:00
2017-11-03	Ensemble Room A	08:00	10:00
2017-11-03	Ensemble Room A	10:00	12:00
2017-11-03	Ensemble Room A	13:00	15:00
2017-11-04	Ensemble Room A	08:00	10:00
2017-11-04	Ensemble Room B	08:00	10:00
2017-11-04	Ensemble Room A	10:00	12:00
2017-11-04	Room 101	15:00	17:00
2017-11-05	Ensemble Room A	15:00	17:00
2017-11-06	Room 101	10:00	12:00
2017-11-06	Ensemble Room A	10:00	12:00
2017-11-06	Room 101	13:00	15:00
2017-11-06	Ensemble Room A	15:00	17:00
2017-11-06	Room 101	15:00	17:00
2017-11-07	Ensemble Room A	08:00	10:00
2017-11-07	Room 101	10:00	12:00
2017-11-07	Ensemble Room A	15:00	17:00
2017-11-08	Room 101	08:00	10:00
2017-11-08	Ensemble Room A	08:00	10:00
2017-11-08	Room 101	10:00	12:00
2017-11-08	Room 102	10:00	12:00
2017-11-08	Room 101	13:00	15:00
2017-11-08	Room 101	15:00	17:00
2017-11-09	Ensemble Room A	08:00	10:00
2017-11-09	Room 101	08:00	10:00
2017-11-09	Ensemble Room A	10:00	12:00
2017-11-09	Ensemble Room A	13:00	15:00
2017-11-10	Ensemble Room A	08:00	10:00
2017-11-10	Ensemble Room A	10:00	12:00
2017-11-10	Room 101	10:00	12:00
2017-11-10	Ensemble Room B	10:00	12:00
2017-11-10	Ensemble Room A	13:00	15:00
2017-11-10	Room 101	13:00	15:00
2017-11-10	Ensemble Room A	15:00	17:00
2017-11-10	Ensemble Room B	15:00	17:00
2017-11-11	Ensemble Room A	08:00	10:00
2017-11-12	Ensemble Room A	08:00	10:00
2017-11-12	Room 101	10:00	12:00
2017-11-13	Ensemble Room A	15:00	17:00
2017-11-13	Ensemble Room B	15:00	17:00
2017-11-14	Ensemble Room A	08:00	10:00
2017-11-14	Room 101	13:00	15:00
2017-11-14	Room 101	15:00	17:00
2017-11-15	Ensemble Room A	08:00	10:00
2017-11-15	Room 101	13:00	15:00
2017-11-15	Room 102	13:00	15:00
2017-11-15	Ensemble Room A	15:00	17:00
2017-11-15	Room 101	15:00	17:00
2017-11-16	Ensemble Room A	08:00	10:00
2017-11-16	Room 101	08:00	10:00
2017-11-16	Ensemble Room A	13:00	15:00
2017-11-16	Room 101	13:00	15:00
2017-11-16	Room 102	13:00	15:00
2017-11-17	Ensemble Room A	08:00	10:00
2017-11-17	Room 101	08:00	10:00
2017-11-17	Ensemble Room B	08:00	10:00
2017-11-17	Room 101	10:00	12:00
2017-11-17	Ensemble Room A	13:00	15:00
2017-11-17	Ensemble Room B	13:00	15:00
2017-11-17	Ensemble Room C	13:00	15:00
2017-11-17	Room 101	15:00	17:00
2017-11-17	Room 102	15:00	17:00
2017-11-18	Ensemble Room A	08:00	10:00
2017-11-18	Ensemble Room A	10:00	12:00
2017-11-18	Ensemble Room A	15:00	17:00
2017-11-19	Ensemble Room A	08:00	10:00
2017-11-19	Room 101	08:00	10:00
2017-11-19	Ensemble Room A	10:00	12:00
2017-11-19	Ensemble Room A	13:00	15:00
2017-11-19	Room 101	15:00	17:00
2017-11-20	Ensemble Room A	13:00	15:00
2017-11-20	Room 101	15:00	17:00
2017-11-21	Ensemble Room A	08:00	10:00
2017-11-21	Ensemble Room A	10:00	12:00
2017-11-21	Room 101	13:00	15:00
2017-11-22	Ensemble Room A	08:00	10:00
2017-11-22	Ensemble Room B	08:00	10:00
2017-11-22	Room 101	10:00	12:00
2017-11-22	Ensemble Room A	13:00	15:00
2017-11-22	Ensemble Room B	13:00	15:00
2017-11-22	Ensemble Room A	15:00	17:00
2017-11-23	Ensemble Room A	08:00	10:00
2017-11-23	Room 101	10:00	12:00
2017-11-23	Room 102	10:00	12:00
2017-11-23	Ensemble Room A	15:00	17:00
2017-11-23	Ensemble Room B	15:00	17:00
2017-11-23	Ensemble Room C	15:00	17:00
2017-11-24	Room 101	08:00	10:00
2017-11-24	Ensemble Room A	10:00	12:00
2017-11-24	Room 101	13:00	15:00
2017-11-24	Ensemble Room A	15:00	17:00
2017-11-25	Room 101	08:00	10:00
2017-11-25	Room 101	13:00	15:00
2017-11-25	Room 102	13:00	15:00
2017-11-25	Room 101	15:00	17:00
2017-11-26	Room 101	08:00	10:00
2017-11-26	Room 102	08:00	10:00
2017-11-26	Ensemble Room A	15:00	17:00
2017-11-27	Room 101	08:00	10:00
2017-11-27	Room 102	08:00	10:00
2017-11-28	Room 101	08:00	10:00
2017-11-28	Room 102	08:00	10:00
2017-11-28	Ensemble Room A	10:00	12:00
2017-11-28	Room 101	13:00	15:00
2017-11-28	Ensemble Room A	13:00	15:00
2017-11-29	Room 101	08:00	10:00
2017-11-29	Room 102	08:00	10:00
2017-11-29	Room 103	08:00	10:00
2017-11-29	Ensemble Room A	13:00	15:00
2017-11-29	Room 101	13:00	15:00
2017-11-29	Room 102	13:00	15:00
2017-11-29	Room 101	15:00	17:00
2017-11-30	Ensemble Room A	08:00	10:00
2017-11-30	Ensemble Room A	10:00	12:00
2017-11-30	Room 101	10:00	12:00
2017-11-30	Ensemble Room A	13:00	15:00
2017-11-30	Room 101	15:00	17:00
2017-12-01	Ensemble Room A	13:00	15:00
2017-12-01	Room 101	13:00	15:00
2017-12-01	Room 101	15:00	17:00
2017-12-02	Ensemble Room A	08:00	10:00
2017-12-02	Ensemble Room A	10:00	12:00
2017-12-03	Room 101	08:00	10:00
2017-12-03	Ensemble Room A	10:00	12:00
2017-12-03	Room 101	13:00	15:00
2017-12-03	Room 102	13:00	15:00
2017-12-03	Room 101	15:00	17:00
2017-12-04	Room 101	10:00	12:00
2017-12-04	Ensemble Room A	10:00	12:00
2017-12-04	Ensemble Room B	10:00	12:00
2017-12-04	Room 101	13:00	15:00
2017-12-05	Room 101	13:00	15:00
2017-12-05	Room 102	13:00	15:00
2017-12-05	Room 101	15:00	17:00
2017-12-06	Ensemble Room A	10:00	12:00
2017-12-06	Room 101	13:00	15:00
2017-12-06	Ensemble Room A	15:00	17:00
2017-12-06	Ensemble Room B	15:00	17:00
2017-12-06	Room 101	15:00	17:00
2017-12-07	Ensemble Room A	08:00	10:00
2017-12-07	Ensemble Room B	08:00	10:00
2017-12-07	Room 101	08:00	10:00
2017-12-07	Ensemble Room A	10:00	12:00
2017-12-07	Ensemble Room A	13:00	15:00
2017-12-07	Room 101	13:00	15:00
2017-12-07	Ensemble Room B	13:00	15:00
2017-12-07	Room 101	15:00	17:00
2017-12-07	Room 102	15:00	17:00
2017-12-07	Ensemble Room A	15:00	17:00
2017-12-08	Ensemble Room A	08:00	10:00
2017-12-08	Ensemble Room B	08:00	10:00
2017-12-08	Ensemble Room A	10:00	12:00
2017-12-08	Room 101	13:00	15:00
2017-12-08	Ensemble Room A	13:00	15:00
2017-12-08	Room 101	15:00	17:00
2017-12-09	Ensemble Room A	08:00	10:00
2017-12-09	Room 101	10:00	12:00
2017-12-09	Room 101	13:00	15:00
2017-12-09	Room 101	15:00	17:00
2017-12-09	Ensemble Room A	15:00	17:00
2017-12-10	Room 101	08:00	10:00
2017-12-10	Ensemble Room A	10:00	12:00
2017-12-10	Ensemble Room B	10:00	12:00
2017-12-10	Room 101	15:00	17:00
2017-12-11	Room 101	08:00	10:00
2017-12-11	Ensemble Room A	13:00	15:00
2017-12-11	Ensemble Room B	13:00	15:00
2017-12-11	Ensemble Room A	15:00	17:00
2017-12-12	Ensemble Room A	10:00	12:00
2017-12-12	Ensemble Room B	10:00	12:00
2017-12-12	Room 101	13:00	15:00
2017-12-12	Ensemble Room A	15:00	17:00
2017-12-12	Room 101	15:00	17:00
2017-12-13	Room 101	08:00	10:00
2017-12-13	Room 101	10:00	12:00
2017-12-13	Ensemble Room A	10:00	12:00
2017-12-13	Room 101	13:00	15:00
2017-12-14	Ensemble Room A	08:00	10:00
2017-12-14	Room 101	08:00	10:00
2017-12-14	Ensemble Room B	08:00	10:00
2017-12-14	Ensemble Room A	10:00	12:00
2017-12-14	Ensemble Room B	10:00	12:00
2017-12-14	Room 101	13:00	15:00
2017-12-14	Room 101	15:00	17:00
2017-12-14	Room 102	15:00	17:00
2017-12-14	Room 103	15:00	17:00
2017-12-15	Ensemble Room A	13:00	15:00
2017-12-16	Room 101	08:00	10:00
2017-12-16	Room 102	08:00	10:00
2017-12-16	Ensemble Room A	10:00	12:00
2017-12-16	Ensemble Room B	10:00	12:00
2017-12-16	Room 101	13:00	15:00
2017-12-16	Ensemble Room A	15:00	17:00
2017-12-17	Ensemble Room A	08:00	10:00
2017-12-17	Room 101	08:00	10:00
2017-12-17	Room 102	08:00	10:00
2017-12-17	Ensemble Room A	10:00	12:00
2017-12-17	Ensemble Room B	10:00	12:00
2017-12-17	Room 101	15:00	17:00
2017-12-17	Room 102	15:00	17:00
2017-12-18	Room 101	10:00	12:00
2017-12-18	Ensemble Room A	10:00	12:00
2017-12-18	Ensemble Room A	13:00	15:00
2017-12-19	Room 101	10:00	12:00
2017-12-19	Ensemble Room A	10:00	12:00
2017-12-19	Ensemble Room A	13:00	15:00
2017-12-19	Ensemble Room B	13:00	15:00
2017-12-19	Room 101	13:00	15:00
2017-12-19	Ensemble Room A	15:00	17:00
2017-12-20	Room 101	08:00	10:00
2017-12-20	Room 101	13:00	15:00
2017-12-21	Ensemble Room A	08:00	10:00
2017-12-21	Room 101	08:00	10:00
2017-12-21	Ensemble Room B	08:00	10:00
2017-12-21	Room 101	10:00	12:00
2017-12-21	Room 102	10:00	12:00
2017-12-21	Ensemble Room A	13:00	15:00
2017-12-22	Ensemble Room A	08:00	10:00
2017-12-22	Room 101	10:00	12:00
2017-12-22	Ensemble Room A	13:00	15:00
2017-12-22	Room 101	13:00	15:00
2017-12-22	Room 101	15:00	17:00
2017-12-23	Room 101	08:00	10:00
2017-12-23	Ensemble Room A	10:00	12:00
2017-12-23	Room 101	10:00	12:00
2017-12-23	Room 101	13:00	15:00
2017-12-23	Room 101	15:00	17:00
2017-12-23	Room 102	15:00	17:00
2017-12-24	Ensemble Room A	08:00	10:00
2017-12-24	Ensemble Room A	10:00	12:00
2017-12-24	Ensemble Room B	10:00	12:00
2017-12-24	Ensemble Room A	13:00	15:00
2017-12-24	Room 101	15:00	17:00
2017-12-25	Room 101	08:00	10:00
2017-12-25	Ensemble Room A	08:00	10:00
2017-12-25	Ensemble Room A	10:00	12:00
2017-12-25	Ensemble Room B	10:00	12:00
2017-12-25	Room 101	10:00	12:00
2017-12-26	Ensemble Room A	08:00	10:00
2017-12-26	Room 101	10:00	12:00
2017-12-27	Ensemble Room A	08:00	10:00
2017-12-27	Ensemble Room B	08:00	10:00
2017-12-27	Ensemble Room A	13:00	15:00
2017-12-28	Room 101	08:00	10:00
2017-12-28	Room 101	10:00	12:00
2017-12-28	Ensemble Room A	15:00	17:00
2017-12-28	Room 101	15:00	17:00
2017-12-29	Room 101	08:00	10:00
2017-12-29	Room 101	10:00	12:00
2017-12-29	Room 101	13:00	15:00
2017-12-29	Room 101	15:00	17:00
2017-12-29	Ensemble Room A	15:00	17:00
2017-12-30	Ensemble Room A	10:00	12:00
2017-12-30	Room 101	13:00	15:00
2017-12-30	Ensemble Room A	13:00	15:00
2017-12-31	Room 101	08:00	10:00
2017-12-31	Room 102	08:00	10:00
2017-12-31	Room 101	10:00	12:00
2017-12-31	Room 101	13:00	15:00
2017-12-31	Ensemble Room A	13:00	15:00
2017-12-31	Ensemble Room A	15:00	17:00
2018-01-01	Ensemble Room A	08:00	10:00
2018-01-01	Ensemble Room B	08:00	10:00
2018-01-01	Room 101	10:00	12:00
2018-01-01	Room 101	15:00	17:00
2018-01-01	Ensemble Room A	15:00	17:00
2018-01-02	Room 101	08:00	10:00
2018-01-02	Room 102	08:00	10:00
2018-01-02	Ensemble Room A	08:00	10:00
2018-01-02	Ensemble Room A	10:00	12:00
2018-01-02	Room 101	10:00	12:00
2018-01-02	Room 101	15:00	17:00
2018-01-03	Room 101	08:00	10:00
2018-01-03	Room 101	10:00	12:00
2018-01-03	Room 102	10:00	12:00
2018-01-03	Ensemble Room A	13:00	15:00
2018-01-03	Ensemble Room A	15:00	17:00
2018-01-04	Room 101	08:00	10:00
2018-01-04	Room 101	10:00	12:00
2018-01-04	Ensemble Room A	10:00	12:00
2018-01-04	Room 102	10:00	12:00
2018-01-04	Room 101	13:00	15:00
2018-01-04	Room 101	15:00	17:00
2018-01-04	Ensemble Room A	15:00	17:00
2018-01-05	Ensemble Room A	08:00	10:00
2018-01-05	Room 101	10:00	12:00
2018-01-05	Ensemble Room A	13:00	15:00
2018-01-05	Room 101	13:00	15:00
2018-01-05	Room 101	15:00	17:00
2018-01-05	Room 102	15:00	17:00
2018-01-06	Ensemble Room A	08:00	10:00
2018-01-06	Ensemble Room B	08:00	10:00
2018-01-06	Ensemble Room A	10:00	12:00
2018-01-06	Room 101	10:00	12:00
2018-01-06	Ensemble Room A	13:00	15:00
2018-01-06	Room 101	15:00	17:00
2018-01-07	Ensemble Room A	08:00	10:00
2018-01-07	Ensemble Room A	13:00	15:00
2018-01-07	Room 101	13:00	15:00
2018-01-07	Ensemble Room A	15:00	17:00
2018-01-07	Ensemble Room B	15:00	17:00
2018-01-07	Ensemble Room C	15:00	17:00
2018-01-08	Room 101	08:00	10:00
2018-01-08	Ensemble Room A	13:00	15:00
2018-01-08	Room 101	15:00	17:00
2018-01-09	Room 101	08:00	10:00
2018-01-09	Room 101	10:00	12:00
2018-01-09	Room 102	10:00	12:00
2018-01-09	Room 101	15:00	17:00
2018-01-10	Room 101	13:00	15:00
2018-01-11	Room 101	08:00	10:00
2018-01-11	Room 101	10:00	12:00
2018-01-11	Room 101	13:00	15:00
2018-01-11	Room 102	13:00	15:00
2018-01-11	Ensemble Room A	15:00	17:00
2018-01-11	Room 101	15:00	17:00
2018-01-12	Ensemble Room A	08:00	10:00
2018-01-12	Room 101	15:00	17:00
2018-01-12	Room 102	15:00	17:00
2018-01-12	Room 103	15:00	17:00
2018-01-13	Ensemble Room A	10:00	12:00
2018-01-13	Room 101	10:00	12:00
2018-01-13	Ensemble Room A	13:00	15:00
2018-01-13	Ensemble Room B	13:00	15:00
2018-01-14	Ensemble Room A	08:00	10:00
2018-01-14	Room 101	13:00	15:00
2018-01-14	Room 101	15:00	17:00
2018-01-14	Ensemble Room A	15:00	17:00
2018-01-14	Ensemble Room B	15:00	17:00
2018-01-15	Ensemble Room A	08:00	10:00
2018-01-15	Ensemble Room B	08:00	10:00
2018-01-15	Room 101	10:00	12:00
2018-01-15	Ensemble Room A	10:00	12:00
2018-01-15	Ensemble Room A	15:00	17:00
2018-01-16	Ensemble Room A	08:00	10:00
2018-01-16	Room 101	10:00	12:00
2018-01-16	Room 102	10:00	12:00
2018-01-16	Ensemble Room A	13:00	15:00
2018-01-16	Ensemble Room A	15:00	17:00
2018-01-17	Room 101	08:00	10:00
2018-01-17	Room 101	13:00	15:00
2018-01-17	Room 102	13:00	15:00
2018-01-17	Room 103	13:00	15:00
2018-01-17	Ensemble Room A	15:00	17:00
2018-01-17	Room 101	15:00	17:00
2018-01-18	Ensemble Room A	08:00	10:00
2018-01-18	Room 101	08:00	10:00
2018-01-18	Ensemble Room A	15:00	17:00
2018-01-18	Room 101	15:00	17:00
2018-01-18	Ensemble Room B	15:00	17:00
2018-01-19	Ensemble Room A	08:00	10:00
2018-01-19	Room 101	10:00	12:00
2018-01-19	Ensemble Room A	10:00	12:00
2018-01-19	Ensemble Room A	13:00	15:00
2018-01-19	Room 101	13:00	15:00
2018-01-19	Room 101	15:00	17:00
2018-01-19	Ensemble Room A	15:00	17:00
2018-01-20	Room 101	08:00	10:00
2018-01-20	Room 101	10:00	12:00
2018-01-20	Ensemble Room A	10:00	12:00
2018-01-20	Room 101	15:00	17:00
2018-01-20	Ensemble Room A	15:00	17:00
2018-01-20	Room 102	15:00	17:00
2018-01-21	Room 101	08:00	10:00
2018-01-21	Room 102	08:00	10:00
2018-01-21	Room 101	13:00	15:00
2018-01-21	Room 102	13:00	15:00
2018-01-22	Room 101	08:00	10:00
2018-01-22	Room 102	08:00	10:00
2018-01-22	Ensemble Room A	13:00	15:00
2018-01-22	Ensemble Room A	15:00	17:00
2018-01-23	Room 101	15:00	17:00
2018-01-23	Room 102	15:00	17:00
2018-01-24	Room 101	08:00	10:00
2018-01-25	Ensemble Room A	13:00	15:00
2018-01-25	Ensemble Room A	15:00	17:00
2018-01-25	Room 101	15:00	17:00
2018-01-26	Ensemble Room A	08:00	10:00
2018-01-26	Ensemble Room B	08:00	10:00
2018-01-26	Room 101	13:00	15:00
2018-01-26	Ensemble Room A	13:00	15:00
2018-01-26	Ensemble Room A	15:00	17:00
2018-01-27	Room 101	13:00	15:00
2018-01-27	Room 101	15:00	17:00
2018-01-27	Room 102	15:00	17:00
2018-01-28	Ensemble Room A	08:00	10:00
2018-01-28	Room 101	10:00	12:00
2018-01-28	Ensemble Room A	10:00	12:00
2018-01-28	Room 101	13:00	15:00
2018-01-28	Room 102	13:00	15:00
2018-01-29	Room 101	08:00	10:00
2018-01-29	Room 101	13:00	15:00
2018-01-29	Ensemble Room A	13:00	15:00
2018-01-29	Room 101	15:00	17:00
2018-01-29	Room 102	15:00	17:00
2018-01-30	Ensemble Room A	08:00	10:00
2018-01-30	Ensemble Room B	08:00	10:00
2018-01-30	Room 101	10:00	12:00
2018-01-30	Room 102	10:00	12:00
2018-01-30	Room 101	13:00	15:00
2018-01-30	Ensemble Room A	13:00	15:00
2018-01-30	Room 101	15:00	17:00
2018-01-30	Ensemble Room A	15:00	17:00
2018-01-31	Ensemble Room A	08:00	10:00
2018-01-31	Room 101	10:00	12:00
2018-01-31	Ensemble Room A	13:00	15:00
2018-02-01	Ensemble Room A	10:00	12:00
2018-02-01	Room 101	10:00	12:00
2018-02-01	Ensemble Room A	13:00	15:00
2018-02-02	Ensemble Room A	08:00	10:00
2018-02-02	Ensemble Room B	08:00	10:00
2018-02-02	Ensemble Room C	08:00	10:00
2018-02-02	Room 101	10:00	12:00
2018-02-02	Ensemble Room A	13:00	15:00
2018-02-02	Ensemble Room A	15:00	17:00
2018-02-03	Room 101	08:00	10:00
2018-02-03	Ensemble Room A	08:00	10:00
2018-02-04	Ensemble Room A	08:00	10:00
2018-02-04	Room 101	10:00	12:00
2018-02-04	Room 101	13:00	15:00
2018-02-04	Ensemble Room A	13:00	15:00
2018-02-04	Ensemble Room A	15:00	17:00
2018-02-04	Ensemble Room B	15:00	17:00
2018-02-05	Room 101	08:00	10:00
2018-02-05	Room 101	10:00	12:00
2018-02-06	Ensemble Room A	08:00	10:00
2018-02-06	Room 101	10:00	12:00
2018-02-06	Ensemble Room A	10:00	12:00
2018-02-06	Room 101	15:00	17:00
2018-02-07	Room 101	08:00	10:00
2018-02-07	Ensemble Room A	08:00	10:00
2018-02-07	Ensemble Room A	10:00	12:00
2018-02-07	Ensemble Room A	13:00	15:00
2018-02-07	Room 101	15:00	17:00
2018-02-08	Room 101	08:00	10:00
2018-02-08	Room 101	10:00	12:00
2018-02-08	Room 101	15:00	17:00
2018-02-09	Room 101	08:00	10:00
2018-02-09	Room 101	13:00	15:00
2018-02-09	Ensemble Room A	15:00	17:00
2018-02-09	Ensemble Room B	15:00	17:00
2018-02-09	Room 101	15:00	17:00
2018-02-10	Ensemble Room A	08:00	10:00
2018-02-10	Room 101	08:00	10:00
2018-02-10	Ensemble Room B	08:00	10:00
2018-02-10	Ensemble Room A	15:00	17:00
2018-02-11	Room 101	08:00	10:00
2018-02-11	Ensemble Room A	08:00	10:00
2018-02-11	Ensemble Room A	10:00	12:00
2018-02-11	Room 101	13:00	15:00
2018-02-11	Room 101	15:00	17:00
2018-02-11	Room 102	15:00	17:00
2018-02-12	Ensemble Room A	08:00	10:00
2018-02-12	Room 101	08:00	10:00
2018-02-12	Ensemble Room A	10:00	12:00
2018-02-12	Room 101	13:00	15:00
2018-02-12	Room 101	15:00	17:00
2018-02-13	Room 101	08:00	10:00
2018-02-13	Room 101	10:00	12:00
2018-02-13	Ensemble Room A	10:00	12:00
2018-02-14	Ensemble Room A	08:00	10:00
2018-02-14	Ensemble Room A	10:00	12:00
2018-02-14	Room 101	13:00	15:00
2018-02-14	Room 102	13:00	15:00
2018-02-14	Ensemble Room A	15:00	17:00
2018-02-14	Room 101	15:00	17:00
2018-02-15	Room 101	10:00	12:00
2018-02-15	Room 102	10:00	12:00
2018-02-15	Ensemble Room A	13:00	15:00
2018-02-15	Room 101	13:00	15:00
2018-02-15	Ensemble Room A	15:00	17:00
2018-02-15	Ensemble Room B	15:00	17:00
2018-02-15	Ensemble Room C	15:00	17:00
2018-02-16	Room 101	10:00	12:00
2018-02-16	Ensemble Room A	10:00	12:00
2018-02-16	Ensemble Room A	13:00	15:00
2018-02-16	Ensemble Room A	15:00	17:00
2018-02-17	Room 101	10:00	12:00
2018-02-17	Ensemble Room A	10:00	12:00
2018-02-17	Ensemble Room A	13:00	15:00
2018-02-17	Ensemble Room B	13:00	15:00
2018-02-17	Ensemble Room C	13:00	15:00
2018-02-18	Room 101	10:00	12:00
2018-02-18	Ensemble Room A	10:00	12:00
2018-02-18	Ensemble Room B	10:00	12:00
2018-02-18	Room 101	15:00	17:00
2018-02-18	Ensemble Room A	15:00	17:00
2018-02-19	Ensemble Room A	08:00	10:00
2018-02-19	Ensemble Room B	08:00	10:00
2018-02-19	Ensemble Room A	10:00	12:00
2018-02-19	Room 101	10:00	12:00
2018-02-19	Ensemble Room A	13:00	15:00
2018-02-19	Room 101	15:00	17:00
2018-02-19	Room 102	15:00	17:00
2018-02-20	Ensemble Room A	08:00	10:00
2018-02-20	Room 101	08:00	10:00
2018-02-20	Ensemble Room A	15:00	17:00
2018-02-21	Ensemble Room A	08:00	10:00
2018-02-21	Room 101	08:00	10:00
2018-02-21	Ensemble Room A	10:00	12:00
2018-02-21	Room 101	13:00	15:00
2018-02-21	Ensemble Room A	13:00	15:00
2018-02-21	Ensemble Room B	13:00	15:00
2018-02-22	Ensemble Room A	08:00	10:00
2018-02-22	Room 101	10:00	12:00
2018-02-22	Ensemble Room A	13:00	15:00
2018-02-22	Ensemble Room B	13:00	15:00
2018-02-22	Ensemble Room C	13:00	15:00
2018-02-23	Ensemble Room A	10:00	12:00
2018-02-23	Ensemble Room B	10:00	12:00
2018-02-23	Ensemble Room A	13:00	15:00
2018-02-23	Room 101	15:00	17:00
2018-02-24	Room 101	08:00	10:00
2018-02-24	Room 101	10:00	12:00
2018-02-24	Ensemble Room A	13:00	15:00
2018-02-24	Room 101	13:00	15:00
2018-02-24	Ensemble Room A	15:00	17:00
2018-02-25	Ensemble Room A	08:00	10:00
2018-02-25	Ensemble Room B	08:00	10:00
2018-02-25	Ensemble Room A	13:00	15:00
2018-02-25	Ensemble Room B	13:00	15:00
2018-02-25	Ensemble Room A	15:00	17:00
2018-02-26	Room 101	10:00	12:00
2018-02-26	Room 101	13:00	15:00
2018-02-26	Ensemble Room A	13:00	15:00
2018-02-26	Room 101	15:00	17:00
2018-02-27	Room 101	10:00	12:00
2018-02-27	Ensemble Room A	13:00	15:00
2018-02-27	Room 101	15:00	17:00
2018-02-28	Room 101	08:00	10:00
2018-02-28	Ensemble Room A	10:00	12:00
2018-02-28	Room 101	10:00	12:00
2018-02-28	Room 101	15:00	17:00
2018-02-28	Room 102	15:00	17:00
2018-03-01	Room 101	08:00	10:00
2018-03-01	Room 101	13:00	15:00
2018-03-01	Room 101	15:00	17:00
2018-03-02	Room 101	08:00	10:00
2018-03-02	Ensemble Room A	10:00	12:00
2018-03-02	Room 101	10:00	12:00
2018-03-02	Room 101	13:00	15:00
2018-03-02	Ensemble Room A	15:00	17:00
2018-03-03	Room 101	08:00	10:00
2018-03-03	Ensemble Room A	10:00	12:00
2018-03-03	Room 101	13:00	15:00
2018-03-03	Ensemble Room A	13:00	15:00
2018-03-03	Room 102	13:00	15:00
2018-03-03	Room 101	15:00	17:00
2018-03-03	Ensemble Room A	15:00	17:00
2018-03-04	Ensemble Room A	08:00	10:00
2018-03-04	Ensemble Room A	10:00	12:00
2018-03-04	Room 101	10:00	12:00
2018-03-04	Ensemble Room B	10:00	12:00
2018-03-04	Ensemble Room A	13:00	15:00
2018-03-04	Ensemble Room B	13:00	15:00
2018-03-04	Ensemble Room C	13:00	15:00
2018-03-04	Room 101	15:00	17:00
2018-03-04	Ensemble Room A	15:00	17:00
2018-03-05	Ensemble Room A	08:00	10:00
2018-03-05	Ensemble Room A	10:00	12:00
2018-03-05	Room 101	10:00	12:00
2018-03-05	Room 101	13:00	15:00
2018-03-05	Room 102	13:00	15:00
2018-03-05	Room 101	15:00	17:00
2018-03-06	Ensemble Room A	10:00	12:00
2018-03-06	Room 101	15:00	17:00
2018-03-07	Room 101	08:00	10:00
2018-03-07	Room 101	10:00	12:00
2018-03-07	Room 101	13:00	15:00
2018-03-07	Ensemble Room A	13:00	15:00
2018-03-07	Room 102	13:00	15:00
2018-03-07	Room 101	15:00	17:00
2018-03-08	Ensemble Room A	08:00	10:00
2018-03-08	Ensemble Room A	10:00	12:00
2018-03-08	Room 101	15:00	17:00
2018-03-09	Room 101	10:00	12:00
2018-03-09	Room 101	13:00	15:00
2018-03-09	Ensemble Room A	15:00	17:00
2018-03-10	Ensemble Room A	10:00	12:00
2018-03-10	Room 101	10:00	12:00
2018-03-10	Room 101	15:00	17:00
2018-03-11	Ensemble Room A	08:00	10:00
2018-03-11	Ensemble Room B	08:00	10:00
2018-03-11	Room 101	08:00	10:00
2018-03-11	Room 101	10:00	12:00
2018-03-11	Ensemble Room A	10:00	12:00
2018-03-11	Ensemble Room A	15:00	17:00
2018-03-12	Room 101	08:00	10:00
2018-03-12	Ensemble Room A	08:00	10:00
2018-03-12	Room 101	10:00	12:00
2018-03-12	Ensemble Room A	10:00	12:00
2018-03-12	Ensemble Room A	13:00	15:00
2018-03-12	Ensemble Room A	15:00	17:00
2018-03-13	Ensemble Room A	08:00	10:00
2018-03-13	Ensemble Room B	08:00	10:00
2018-03-13	Ensemble Room C	08:00	10:00
2018-03-13	Room 101	10:00	12:00
2018-03-13	Ensemble Room A	13:00	15:00
2018-03-13	Room 101	13:00	15:00
2018-03-13	Room 101	15:00	17:00
2018-03-14	Room 101	08:00	10:00
2018-03-14	Ensemble Room A	08:00	10:00
2018-03-14	Room 102	08:00	10:00
2018-03-14	Room 101	10:00	12:00
2018-03-14	Room 101	13:00	15:00
2018-03-14	Room 102	13:00	15:00
2018-03-14	Room 103	13:00	15:00
2018-03-14	Room 101	15:00	17:00
2018-03-14	Ensemble Room A	15:00	17:00
2018-03-15	Ensemble Room A	08:00	10:00
2018-03-15	Room 101	13:00	15:00
2018-03-15	Room 102	13:00	15:00
2018-03-15	Ensemble Room A	13:00	15:00
2018-03-15	Room 101	15:00	17:00
2018-03-15	Room 102	15:00	17:00
2018-03-16	Ensemble Room A	08:00	10:00
2018-03-16	Ensemble Room B	08:00	10:00
2018-03-16	Room 101	13:00	15:00
2018-03-16	Room 101	15:00	17:00
2018-03-16	Ensemble Room A	15:00	17:00
2018-03-17	Ensemble Room A	10:00	12:00
2018-03-17	Room 101	13:00	15:00
2018-03-17	Ensemble Room A	15:00	17:00
2018-03-17	Room 101	15:00	17:00
2018-03-18	Room 101	08:00	10:00
2018-03-18	Ensemble Room A	10:00	12:00
2018-03-18	Ensemble Room B	10:00	12:00
2018-03-18	Ensemble Room A	13:00	15:00
2018-03-18	Room 101	13:00	15:00
2018-03-18	Room 101	15:00	17:00
2018-03-18	Ensemble Room A	15:00	17:00
2018-03-19	Room 101	08:00	10:00
2018-03-19	Room 101	10:00	12:00
2018-03-19	Room 102	10:00	12:00
2018-03-19	Room 103	10:00	12:00
2018-03-19	Room 101	13:00	15:00
2018-03-19	Room 101	15:00	17:00
2018-03-19	Ensemble Room A	15:00	17:00
2018-03-20	Room 101	08:00	10:00
2018-03-20	Room 101	10:00	12:00
2018-03-20	Room 101	13:00	15:00
2018-03-21	Room 101	10:00	12:00
2018-03-21	Room 102	10:00	12:00
2018-03-21	Room 101	13:00	15:00
2018-03-21	Room 101	15:00	17:00
2018-03-21	Room 102	15:00	17:00
2018-03-21	Room 103	15:00	17:00
2018-03-22	Ensemble Room A	08:00	10:00
2018-03-22	Room 101	10:00	12:00
2018-03-22	Room 101	13:00	15:00
2018-03-22	Ensemble Room A	15:00	17:00
2018-03-22	Room 101	15:00	17:00
2018-03-23	Ensemble Room A	08:00	10:00
2018-03-23	Room 101	10:00	12:00
2018-03-24	Ensemble Room A	08:00	10:00
2018-03-24	Room 101	08:00	10:00
2018-03-24	Room 102	08:00	10:00
2018-03-24	Room 101	13:00	15:00
2018-03-24	Ensemble Room A	13:00	15:00
2018-03-24	Room 101	15:00	17:00
2018-03-24	Ensemble Room A	15:00	17:00
2018-03-25	Ensemble Room A	08:00	10:00
2018-03-25	Room 101	08:00	10:00
2018-03-25	Ensemble Room A	13:00	15:00
2018-03-26	Ensemble Room A	08:00	10:00
2018-03-26	Ensemble Room A	10:00	12:00
2018-03-26	Room 101	10:00	12:00
2018-03-26	Ensemble Room A	13:00	15:00
2018-03-26	Ensemble Room A	15:00	17:00
2018-03-27	Room 101	08:00	10:00
2018-03-27	Room 101	10:00	12:00
2018-03-27	Ensemble Room A	13:00	15:00
2018-03-27	Room 101	15:00	17:00
2018-03-27	Room 102	15:00	17:00
2018-03-27	Ensemble Room A	15:00	17:00
2018-03-28	Ensemble Room A	10:00	12:00
2018-03-28	Room 101	13:00	15:00
2018-03-28	Ensemble Room A	13:00	15:00
2018-03-29	Ensemble Room A	08:00	10:00
2018-03-29	Ensemble Room B	08:00	10:00
2018-03-29	Room 101	10:00	12:00
2018-03-29	Ensemble Room A	13:00	15:00
2018-03-29	Room 101	13:00	15:00
2018-03-29	Ensemble Room A	15:00	17:00
2018-03-30	Ensemble Room A	08:00	10:00
2018-03-30	Ensemble Room B	08:00	10:00
2018-03-30	Room 101	08:00	10:00
2018-03-30	Room 101	13:00	15:00
2018-03-30	Ensemble Room A	13:00	15:00
2018-03-30	Room 102	13:00	15:00
2018-03-30	Ensemble Room A	15:00	17:00
2018-03-31	Room 101	08:00	10:00
2018-03-31	Ensemble Room A	13:00	15:00
2018-03-31	Room 101	13:00	15:00
2018-03-31	Ensemble Room A	15:00	17:00
2018-03-31	Ensemble Room B	15:00	17:00
2018-04-01	Room 101	08:00	10:00
2018-04-01	Ensemble Room A	10:00	12:00
2018-04-01	Room 101	15:00	17:00
2018-04-02	Ensemble Room A	10:00	12:00
2018-04-02	Room 101	10:00	12:00
2018-04-02	Room 102	10:00	12:00
2018-04-02	Ensemble Room A	13:00	15:00
2018-04-02	Ensemble Room B	13:00	15:00
2018-04-02	Room 101	15:00	17:00
2018-04-03	Room 101	10:00	12:00
2018-04-03	Ensemble Room A	10:00	12:00
2018-04-03	Ensemble Room A	15:00	17:00
2018-04-04	Ensemble Room A	08:00	10:00
2018-04-04	Room 101	10:00	12:00
2018-04-04	Ensemble Room A	10:00	12:00
2018-04-04	Ensemble Room A	13:00	15:00
2018-04-04	Ensemble Room A	15:00	17:00
2018-04-04	Ensemble Room B	15:00	17:00
2018-04-05	Ensemble Room A	08:00	10:00
2018-04-05	Ensemble Room A	10:00	12:00
2018-04-06	Ensemble Room A	10:00	12:00
2018-04-06	Ensemble Room A	13:00	15:00
2018-04-06	Ensemble Room B	13:00	15:00
2018-04-06	Ensemble Room A	15:00	17:00
2018-04-06	Room 101	15:00	17:00
2018-04-06	Ensemble Room B	15:00	17:00
2018-04-07	Room 101	10:00	12:00
2018-04-07	Room 101	13:00	15:00
2018-04-07	Ensemble Room A	13:00	15:00
2018-04-07	Ensemble Room A	15:00	17:00
2018-04-07	Room 101	15:00	17:00
2018-04-08	Room 101	08:00	10:00
2018-04-08	Ensemble Room A	08:00	10:00
2018-04-08	Room 101	13:00	15:00
2018-04-08	Ensemble Room A	13:00	15:00
2018-04-08	Ensemble Room A	15:00	17:00
2018-04-09	Ensemble Room A	08:00	10:00
2018-04-09	Ensemble Room A	10:00	12:00
2018-04-09	Ensemble Room B	10:00	12:00
2018-04-09	Ensemble Room A	13:00	15:00
2018-04-09	Ensemble Room B	13:00	15:00
2018-04-09	Ensemble Room C	13:00	15:00
2018-04-09	Room 101	15:00	17:00
2018-04-09	Ensemble Room A	15:00	17:00
2018-04-10	Ensemble Room A	08:00	10:00
2018-04-10	Ensemble Room A	10:00	12:00
2018-04-10	Ensemble Room A	13:00	15:00
2018-04-10	Ensemble Room B	13:00	15:00
2018-04-10	Room 101	13:00	15:00
2018-04-10	Ensemble Room A	15:00	17:00
2018-04-10	Ensemble Room B	15:00	17:00
2018-04-10	Room 101	15:00	17:00
2018-04-11	Room 101	13:00	15:00
2018-04-11	Ensemble Room A	13:00	15:00
2018-04-11	Ensemble Room A	15:00	17:00
2018-04-11	Room 101	15:00	17:00
2018-04-12	Ensemble Room A	10:00	12:00
2018-04-12	Ensemble Room A	13:00	15:00
2018-04-12	Room 101	13:00	15:00
2018-04-12	Ensemble Room B	13:00	15:00
2018-04-12	Room 101	15:00	17:00
2018-04-12	Room 102	15:00	17:00
2018-04-13	Ensemble Room A	08:00	10:00
2018-04-13	Ensemble Room A	10:00	12:00
2018-04-13	Ensemble Room A	13:00	15:00
2018-04-13	Ensemble Room A	15:00	17:00
2018-04-14	Ensemble Room A	08:00	10:00
2018-04-14	Room 101	10:00	12:00
2018-04-14	Room 101	15:00	17:00
2018-04-14	Ensemble Room A	15:00	17:00
2018-04-15	Ensemble Room A	08:00	10:00
2018-04-15	Room 101	08:00	10:00
2018-04-15	Room 101	13:00	15:00
2018-04-15	Room 102	13:00	15:00
2018-04-15	Room 101	15:00	17:00
2018-04-16	Ensemble Room A	10:00	12:00
2018-04-16	Room 101	15:00	17:00
2018-04-16	Ensemble Room A	15:00	17:00
2018-04-17	Room 101	08:00	10:00
2018-04-17	Room 101	13:00	15:00
2018-04-17	Room 102	13:00	15:00
2018-04-18	Ensemble Room A	08:00	10:00
2018-04-18	Ensemble Room A	13:00	15:00
2018-04-18	Room 101	13:00	15:00
2018-04-18	Room 102	13:00	15:00
2018-04-18	Room 101	15:00	17:00
2018-04-18	Ensemble Room A	15:00	17:00
2018-04-18	Room 102	15:00	17:00
2018-04-19	Room 101	08:00	10:00
2018-04-19	Room 101	10:00	12:00
2018-04-19	Room 101	13:00	15:00
2018-04-19	Room 101	15:00	17:00
2018-04-20	Room 101	08:00	10:00
2018-04-20	Room 101	10:00	12:00
2018-04-20	Ensemble Room A	10:00	12:00
2018-04-20	Room 101	13:00	15:00
2018-04-20	Room 101	15:00	17:00
2018-04-21	Room 101	10:00	12:00
2018-04-21	Ensemble Room A	13:00	15:00
2018-04-21	Room 101	13:00	15:00
2018-04-21	Room 101	15:00	17:00
2018-04-21	Ensemble Room A	15:00	17:00
2018-04-22	Ensemble Room A	08:00	10:00
2018-04-22	Room 101	08:00	10:00
2018-04-22	Ensemble Room B	08:00	10:00
2018-04-22	Room 101	10:00	12:00
2018-04-22	Ensemble Room A	10:00	12:00
2018-04-22	Ensemble Room A	13:00	15:00
2018-04-22	Ensemble Room A	15:00	17:00
2018-04-23	Room 101	10:00	12:00
2018-04-24	Ensemble Room A	08:00	10:00
2018-04-24	Ensemble Room B	08:00	10:00
2018-04-24	Room 101	10:00	12:00
2018-04-24	Room 102	10:00	12:00
2018-04-24	Ensemble Room A	13:00	15:00
2018-04-24	Room 101	13:00	15:00
2018-04-24	Ensemble Room A	15:00	17:00
2018-04-24	Room 101	15:00	17:00
2018-04-24	Room 102	15:00	17:00
2018-04-25	Room 101	08:00	10:00
2018-04-25	Ensemble Room A	13:00	15:00
2018-04-25	Ensemble Room B	13:00	15:00
2018-04-25	Ensemble Room C	13:00	15:00
2018-04-25	Ensemble Room A	15:00	17:00
2018-04-26	Room 101	08:00	10:00
2018-04-26	Room 102	08:00	10:00
2018-04-26	Room 103	08:00	10:00
2018-04-26	Ensemble Room A	10:00	12:00
2018-04-26	Ensemble Room B	10:00	12:00
2018-04-26	Ensemble Room A	13:00	15:00
2018-04-26	Ensemble Room B	13:00	15:00
2018-04-27	Room 101	10:00	12:00
2018-04-27	Ensemble Room A	10:00	12:00
2018-04-27	Ensemble Room B	10:00	12:00
2018-04-27	Ensemble Room A	13:00	15:00
2018-04-27	Room 101	13:00	15:00
2018-04-27	Room 102	13:00	15:00
2018-04-27	Room 101	15:00	17:00
2018-04-28	Ensemble Room A	08:00	10:00
2018-04-28	Room 101	10:00	12:00
2018-04-28	Room 102	10:00	12:00
2018-04-28	Room 101	15:00	17:00
2018-04-29	Room 101	08:00	10:00
2018-04-29	Ensemble Room A	13:00	15:00
2018-04-29	Room 101	15:00	17:00
2018-04-29	Room 102	15:00	17:00
2018-04-30	Ensemble Room A	10:00	12:00
2018-04-30	Ensemble Room A	13:00	15:00
2018-05-01	Room 101	08:00	10:00
2018-05-01	Room 101	10:00	12:00
2018-05-01	Room 101	15:00	17:00
2018-05-01	Ensemble Room A	15:00	17:00
2018-05-01	Ensemble Room B	15:00	17:00
2018-05-02	Room 101	08:00	10:00
2018-05-02	Room 102	08:00	10:00
2018-05-02	Room 101	10:00	12:00
2018-05-02	Ensemble Room A	13:00	15:00
2018-05-02	Ensemble Room B	13:00	15:00
2018-05-02	Ensemble Room A	15:00	17:00
2018-05-03	Ensemble Room A	08:00	10:00
2018-05-03	Ensemble Room B	08:00	10:00
2018-05-03	Ensemble Room A	10:00	12:00
2018-05-03	Ensemble Room B	10:00	12:00
2018-05-03	Ensemble Room A	15:00	17:00
2018-05-03	Room 101	15:00	17:00
2018-05-04	Room 101	10:00	12:00
2018-05-04	Room 101	13:00	15:00
2018-05-04	Ensemble Room A	13:00	15:00
2018-05-05	Room 101	08:00	10:00
2018-05-05	Ensemble Room A	10:00	12:00
2018-05-05	Ensemble Room A	13:00	15:00
2018-05-05	Ensemble Room A	15:00	17:00
2018-05-06	Ensemble Room A	08:00	10:00
2018-05-06	Ensemble Room B	08:00	10:00
2018-05-06	Ensemble Room A	10:00	12:00
2018-05-06	Ensemble Room A	13:00	15:00
2018-05-06	Ensemble Room A	15:00	17:00
2018-05-06	Room 101	15:00	17:00
2018-05-07	Room 101	08:00	10:00
2018-05-07	Room 102	08:00	10:00
2018-05-07	Ensemble Room A	10:00	12:00
2018-05-07	Ensemble Room A	13:00	15:00
2018-05-07	Room 101	13:00	15:00
2018-05-07	Ensemble Room A	15:00	17:00
2018-05-08	Ensemble Room A	08:00	10:00
2018-05-08	Room 101	08:00	10:00
2018-05-08	Ensemble Room A	10:00	12:00
2018-05-08	Room 101	15:00	17:00
2018-05-09	Room 101	08:00	10:00
2018-05-09	Ensemble Room A	08:00	10:00
2018-05-09	Room 101	10:00	12:00
2018-05-09	Room 102	10:00	12:00
2018-05-09	Room 101	15:00	17:00
2018-05-09	Room 102	15:00	17:00
2018-05-10	Ensemble Room A	13:00	15:00
2018-05-10	Room 101	13:00	15:00
2018-05-11	Ensemble Room A	08:00	10:00
2018-05-11	Room 101	10:00	12:00
2018-05-11	Ensemble Room A	10:00	12:00
2018-05-11	Room 102	10:00	12:00
2018-05-11	Room 101	15:00	17:00
2018-05-11	Ensemble Room A	15:00	17:00
2018-05-12	Room 101	08:00	10:00
2018-05-12	Room 102	08:00	10:00
2018-05-12	Ensemble Room A	10:00	12:00
2018-05-12	Room 101	10:00	12:00
2018-05-12	Ensemble Room A	15:00	17:00
2018-05-12	Room 101	15:00	17:00
2018-05-12	Room 102	15:00	17:00
2018-05-13	Room 101	08:00	10:00
2018-05-13	Ensemble Room A	10:00	12:00
2018-05-13	Ensemble Room A	13:00	15:00
2018-05-13	Ensemble Room B	13:00	15:00
2018-05-13	Ensemble Room C	13:00	15:00
2018-05-13	Ensemble Room A	15:00	17:00
2018-05-13	Ensemble Room B	15:00	17:00
2018-05-14	Room 101	08:00	10:00
2018-05-14	Room 101	10:00	12:00
2018-05-14	Ensemble Room A	13:00	15:00
2018-05-15	Ensemble Room A	08:00	10:00
2018-05-15	Room 101	13:00	15:00
2018-05-15	Room 102	13:00	15:00
2018-05-15	Room 101	15:00	17:00
2018-05-15	Ensemble Room A	15:00	17:00
2018-05-16	Room 101	10:00	12:00
2018-05-16	Room 102	10:00	12:00
2018-05-16	Ensemble Room A	10:00	12:00
2018-05-16	Room 101	13:00	15:00
2018-05-16	Ensemble Room A	13:00	15:00
2018-05-17	Ensemble Room A	08:00	10:00
2018-05-17	Room 101	10:00	12:00
2018-05-17	Room 101	15:00	17:00
2018-05-17	Ensemble Room A	15:00	17:00
2018-05-18	Room 101	08:00	10:00
2018-05-18	Ensemble Room A	08:00	10:00
2018-05-18	Ensemble Room A	10:00	12:00
2018-05-18	Ensemble Room B	10:00	12:00
2018-05-18	Ensemble Room A	13:00	15:00
2018-05-18	Ensemble Room B	13:00	15:00
2018-05-19	Ensemble Room A	08:00	10:00
2018-05-19	Ensemble Room A	10:00	12:00
2018-05-19	Room 101	13:00	15:00
2018-05-19	Ensemble Room A	13:00	15:00
2018-05-20	Ensemble Room A	10:00	12:00
2018-05-20	Ensemble Room B	10:00	12:00
2018-05-20	Room 101	13:00	15:00
2018-05-20	Ensemble Room A	13:00	15:00
2018-05-20	Ensemble Room A	15:00	17:00
2018-05-21	Room 101	08:00	10:00
2018-05-21	Room 102	08:00	10:00
2018-05-21	Ensemble Room A	10:00	12:00
2018-05-21	Room 101	13:00	15:00
2018-05-21	Ensemble Room A	15:00	17:00
2018-05-21	Room 101	15:00	17:00
2018-05-21	Room 102	15:00	17:00
2018-05-22	Room 101	08:00	10:00
2018-05-22	Ensemble Room A	10:00	12:00
2018-05-22	Ensemble Room A	13:00	15:00
2018-05-22	Ensemble Room B	13:00	15:00
2018-05-22	Room 101	15:00	17:00
2018-05-23	Ensemble Room A	08:00	10:00
2018-05-23	Room 101	10:00	12:00
2018-05-23	Room 101	15:00	17:00
2018-05-23	Ensemble Room A	15:00	17:00
2018-05-24	Room 101	08:00	10:00
2018-05-24	Ensemble Room A	08:00	10:00
2018-05-24	Room 101	10:00	12:00
2018-05-24	Ensemble Room A	13:00	15:00
2018-05-24	Room 101	15:00	17:00
2018-05-24	Ensemble Room A	15:00	17:00
2018-05-24	Room 102	15:00	17:00
2018-05-25	Room 101	08:00	10:00
2018-05-25	Room 101	10:00	12:00
2018-05-25	Room 101	13:00	15:00
2018-05-25	Ensemble Room A	15:00	17:00
2018-05-26	Ensemble Room A	08:00	10:00
2018-05-26	Ensemble Room A	10:00	12:00
2018-05-26	Room 101	13:00	15:00
2018-05-26	Ensemble Room A	13:00	15:00
2018-05-26	Ensemble Room B	13:00	15:00
2018-05-26	Ensemble Room A	15:00	17:00
2018-05-26	Ensemble Room B	15:00	17:00
2018-05-27	Room 101	08:00	10:00
2018-05-27	Room 101	13:00	15:00
2018-05-27	Room 102	13:00	15:00
2018-05-27	Room 101	15:00	17:00
2018-05-27	Ensemble Room A	15:00	17:00
2018-05-28	Room 101	08:00	10:00
2018-05-28	Room 102	08:00	10:00
2018-05-28	Ensemble Room A	10:00	12:00
2018-05-28	Ensemble Room A	13:00	15:00
2018-05-28	Room 101	13:00	15:00
2018-05-28	Room 101	15:00	17:00
2018-05-28	Ensemble Room A	15:00	17:00
2018-05-29	Room 101	08:00	10:00
2018-05-29	Room 101	10:00	12:00
2018-05-29	Ensemble Room A	10:00	12:00
2018-05-29	Ensemble Room A	13:00	15:00
2018-05-29	Ensemble Room B	13:00	15:00
2018-05-29	Room 101	13:00	15:00
2018-05-29	Room 101	15:00	17:00
2018-05-30	Ensemble Room A	08:00	10:00
2018-05-30	Room 101	08:00	10:00
2018-05-30	Room 101	13:00	15:00
2018-05-30	Ensemble Room A	13:00	15:00
2018-05-30	Ensemble Room B	13:00	15:00
2018-05-31	Ensemble Room A	08:00	10:00
2018-05-31	Room 101	08:00	10:00
2018-05-31	Room 101	10:00	12:00
2018-05-31	Ensemble Room A	10:00	12:00
2018-05-31	Ensemble Room A	15:00	17:00
2018-06-01	Room 101	08:00	10:00
2018-06-01	Room 101	10:00	12:00
2018-06-01	Ensemble Room A	10:00	12:00
2018-06-01	Room 101	13:00	15:00
2018-06-01	Ensemble Room A	15:00	17:00
2018-06-01	Ensemble Room B	15:00	17:00
2018-06-01	Ensemble Room C	15:00	17:00
2018-06-02	Ensemble Room A	08:00	10:00
2018-06-02	Ensemble Room A	10:00	12:00
2018-06-02	Ensemble Room B	10:00	12:00
2018-06-02	Ensemble Room A	13:00	15:00
2018-06-02	Room 101	15:00	17:00
2018-06-02	Ensemble Room A	15:00	17:00
2018-06-03	Room 101	08:00	10:00
2018-06-03	Room 101	15:00	17:00
2018-06-03	Ensemble Room A	15:00	17:00
2018-06-04	Room 101	10:00	12:00
2018-06-04	Room 102	10:00	12:00
2018-06-04	Room 101	13:00	15:00
2018-06-04	Room 102	13:00	15:00
2018-06-05	Ensemble Room A	08:00	10:00
2018-06-05	Ensemble Room B	08:00	10:00
2018-06-05	Ensemble Room C	08:00	10:00
2018-06-05	Room 101	10:00	12:00
2018-06-05	Ensemble Room A	10:00	12:00
2018-06-05	Room 101	13:00	15:00
2018-06-05	Room 102	13:00	15:00
2018-06-05	Room 101	15:00	17:00
2018-06-06	Ensemble Room A	08:00	10:00
2018-06-06	Ensemble Room A	10:00	12:00
2018-06-07	Ensemble Room A	08:00	10:00
2018-06-07	Room 101	10:00	12:00
2018-06-07	Ensemble Room A	10:00	12:00
2018-06-07	Ensemble Room A	13:00	15:00
2018-06-07	Room 101	13:00	15:00
2018-06-07	Room 101	15:00	17:00
2018-06-08	Ensemble Room A	08:00	10:00
2018-06-08	Room 101	08:00	10:00
2018-06-08	Ensemble Room A	13:00	15:00
2018-06-08	Room 101	13:00	15:00
2018-06-08	Room 101	15:00	17:00
2018-06-08	Ensemble Room A	15:00	17:00
2018-06-09	Room 101	08:00	10:00
2018-06-09	Ensemble Room A	08:00	10:00
2018-06-09	Ensemble Room A	10:00	12:00
2018-06-09	Ensemble Room A	15:00	17:00
2018-06-09	Ensemble Room B	15:00	17:00
2018-06-09	Room 101	15:00	17:00
2018-06-10	Ensemble Room A	08:00	10:00
2018-06-10	Ensemble Room A	13:00	15:00
2018-06-10	Ensemble Room B	13:00	15:00
2018-06-11	Ensemble Room A	08:00	10:00
2018-06-11	Ensemble Room A	10:00	12:00
2018-06-11	Room 101	10:00	12:00
2018-06-11	Room 101	13:00	15:00
2018-06-11	Room 102	13:00	15:00
2018-06-11	Ensemble Room A	15:00	17:00
2018-06-12	Ensemble Room A	08:00	10:00
2018-06-12	Room 101	08:00	10:00
2018-06-12	Ensemble Room B	08:00	10:00
2018-06-12	Ensemble Room A	10:00	12:00
2018-06-12	Ensemble Room B	10:00	12:00
2018-06-12	Room 101	15:00	17:00
2018-06-12	Room 102	15:00	17:00
2018-06-13	Ensemble Room A	10:00	12:00
2018-06-13	Ensemble Room A	13:00	15:00
2018-06-13	Ensemble Room A	15:00	17:00
2018-06-14	Ensemble Room A	08:00	10:00
2018-06-14	Room 101	08:00	10:00
2018-06-14	Room 101	10:00	12:00
2018-06-14	Ensemble Room A	13:00	15:00
2018-06-14	Room 101	15:00	17:00
2018-06-14	Ensemble Room A	15:00	17:00
2018-06-15	Ensemble Room A	08:00	10:00
2018-06-15	Ensemble Room B	08:00	10:00
2018-06-15	Ensemble Room A	10:00	12:00
2018-06-15	Ensemble Room A	13:00	15:00
2018-06-16	Room 101	08:00	10:00
2018-06-16	Ensemble Room A	08:00	10:00
2018-06-16	Ensemble Room A	13:00	15:00
2018-06-16	Ensemble Room A	15:00	17:00
2018-06-16	Ensemble Room B	15:00	17:00
2018-06-16	Ensemble Room C	15:00	17:00
2018-06-17	Ensemble Room A	08:00	10:00
2018-06-17	Room 101	10:00	12:00
2018-06-17	Room 101	13:00	15:00
2018-06-17	Room 101	15:00	17:00
2018-06-18	Ensemble Room A	08:00	10:00
2018-06-18	Ensemble Room A	10:00	12:00
2018-06-18	Room 101	13:00	15:00
2018-06-18	Ensemble Room A	13:00	15:00
2018-06-18	Room 101	15:00	17:00
2018-06-18	Ensemble Room A	15:00	17:00
2018-06-19	Ensemble Room A	08:00	10:00
2018-06-19	Ensemble Room B	08:00	10:00
2018-06-19	Ensemble Room A	10:00	12:00
2018-06-19	Ensemble Room A	13:00	15:00
2018-06-19	Ensemble Room B	13:00	15:00
2018-06-19	Ensemble Room A	15:00	17:00
2018-06-19	Ensemble Room B	15:00	17:00
2018-06-20	Ensemble Room A	13:00	15:00
2018-06-21	Ensemble Room A	08:00	10:00
2018-06-21	Ensemble Room B	08:00	10:00
2018-06-21	Ensemble Room C	08:00	10:00
2018-06-21	Room 101	10:00	12:00
2018-06-21	Room 102	10:00	12:00
2018-06-21	Ensemble Room A	13:00	15:00
2018-06-21	Room 101	15:00	17:00
2018-06-22	Room 101	08:00	10:00
2018-06-22	Ensemble Room A	08:00	10:00
2018-06-22	Ensemble Room A	13:00	15:00
2018-06-22	Room 101	15:00	17:00
2018-06-22	Room 102	15:00	17:00
2018-06-22	Ensemble Room A	15:00	17:00
2018-06-23	Ensemble Room A	08:00	10:00
2018-06-23	Ensemble Room B	08:00	10:00
2018-06-23	Room 101	08:00	10:00
2018-06-23	Room 101	10:00	12:00
2018-06-23	Ensemble Room A	13:00	15:00
2018-06-23	Ensemble Room B	13:00	15:00
2018-06-23	Ensemble Room C	13:00	15:00
2018-06-24	Room 101	08:00	10:00
2018-06-24	Ensemble Room A	08:00	10:00
2018-06-24	Room 101	10:00	12:00
2018-06-24	Ensemble Room A	10:00	12:00
2018-06-25	Ensemble Room A	08:00	10:00
2018-06-25	Room 101	08:00	10:00
2018-06-25	Room 102	08:00	10:00
2018-06-25	Ensemble Room A	10:00	12:00
2018-06-25	Ensemble Room A	13:00	15:00
2018-06-25	Room 101	15:00	17:00
2018-06-26	Ensemble Room A	10:00	12:00
2018-06-26	Room 101	13:00	15:00
2018-06-26	Room 102	13:00	15:00
2018-06-26	Room 101	15:00	17:00
2018-06-27	Room 101	13:00	15:00
2018-06-28	Ensemble Room A	08:00	10:00
2018-06-28	Ensemble Room B	08:00	10:00
2018-06-28	Room 101	10:00	12:00
2018-06-28	Ensemble Room A	13:00	15:00
2018-06-28	Room 101	13:00	15:00
2018-06-28	Room 101	15:00	17:00
2018-06-28	Room 102	15:00	17:00
2018-06-30	Room 101	08:00	10:00
2018-06-30	Ensemble Room A	13:00	15:00
2018-06-30	Ensemble Room B	13:00	15:00
2018-07-01	Room 101	08:00	10:00
2018-07-01	Room 102	08:00	10:00
2018-07-01	Room 101	13:00	15:00
2018-07-01	Room 102	13:00	15:00
2018-07-01	Room 101	15:00	17:00
2018-07-02	Ensemble Room A	10:00	12:00
2018-07-02	Room 101	10:00	12:00
2018-07-02	Room 101	13:00	15:00
2018-07-02	Room 102	13:00	15:00
2018-07-02	Ensemble Room A	15:00	17:00
2018-07-02	Room 101	15:00	17:00
2018-07-03	Room 101	08:00	10:00
2018-07-03	Ensemble Room A	10:00	12:00
2018-07-03	Room 101	13:00	15:00
2018-07-03	Ensemble Room A	13:00	15:00
2018-07-03	Ensemble Room A	15:00	17:00
2018-07-03	Room 101	15:00	17:00
2018-07-04	Ensemble Room A	08:00	10:00
2018-07-04	Ensemble Room A	10:00	12:00
2018-07-04	Room 101	13:00	15:00
2018-07-04	Ensemble Room A	15:00	17:00
2018-07-04	Ensemble Room B	15:00	17:00
2018-07-05	Ensemble Room A	10:00	12:00
2018-07-05	Ensemble Room A	13:00	15:00
2018-07-05	Ensemble Room B	13:00	15:00
2018-07-05	Ensemble Room A	15:00	17:00
2018-07-06	Room 101	13:00	15:00
2018-07-06	Ensemble Room A	13:00	15:00
2018-07-06	Room 101	15:00	17:00
2018-07-06	Ensemble Room A	15:00	17:00
2018-07-06	Ensemble Room B	15:00	17:00
2018-07-07	Room 101	08:00	10:00
2018-07-07	Room 102	08:00	10:00
2018-07-07	Ensemble Room A	10:00	12:00
2018-07-07	Ensemble Room B	10:00	12:00
2018-07-07	Room 101	13:00	15:00
2018-07-08	Room 101	08:00	10:00
2018-07-08	Room 101	10:00	12:00
2018-07-08	Ensemble Room A	10:00	12:00
2018-07-08	Ensemble Room A	13:00	15:00
2018-07-08	Ensemble Room A	15:00	17:00
2018-07-09	Room 101	08:00	10:00
2018-07-09	Ensemble Room A	10:00	12:00
2018-07-09	Ensemble Room A	13:00	15:00
2018-07-09	Ensemble Room A	15:00	17:00
2018-07-10	Ensemble Room A	08:00	10:00
2018-07-10	Room 101	10:00	12:00
2018-07-10	Ensemble Room A	10:00	12:00
2018-07-10	Ensemble Room A	13:00	15:00
2018-07-11	Ensemble Room A	10:00	12:00
2018-07-11	Ensemble Room B	10:00	12:00
2018-07-11	Ensemble Room C	10:00	12:00
2018-07-11	Ensemble Room A	13:00	15:00
2018-07-11	Room 101	13:00	15:00
2018-07-12	Ensemble Room A	08:00	10:00
2018-07-12	Ensemble Room A	10:00	12:00
2018-07-12	Room 101	10:00	12:00
2018-07-12	Ensemble Room A	13:00	15:00
2018-07-13	Room 101	08:00	10:00
2018-07-13	Ensemble Room A	08:00	10:00
2018-07-13	Ensemble Room B	08:00	10:00
2018-07-13	Ensemble Room A	10:00	12:00
2018-07-13	Room 101	10:00	12:00
2018-07-13	Ensemble Room A	13:00	15:00
2018-07-14	Room 101	10:00	12:00
2018-07-14	Room 102	10:00	12:00
2018-07-14	Ensemble Room A	10:00	12:00
2018-07-14	Ensemble Room A	13:00	15:00
2018-07-14	Ensemble Room B	13:00	15:00
2018-07-14	Ensemble Room A	15:00	17:00
2018-07-14	Room 101	15:00	17:00
2018-07-15	Ensemble Room A	08:00	10:00
2018-07-15	Room 101	13:00	15:00
2018-07-15	Room 102	13:00	15:00
2018-07-15	Room 101	15:00	17:00
2018-07-16	Ensemble Room A	08:00	10:00
2018-07-16	Room 101	08:00	10:00
2018-07-16	Room 101	10:00	12:00
2018-07-16	Ensemble Room A	13:00	15:00
2018-07-17	Ensemble Room A	10:00	12:00
2018-07-17	Room 101	15:00	17:00
2018-07-18	Room 101	10:00	12:00
2018-07-18	Ensemble Room A	13:00	15:00
2018-07-18	Room 101	13:00	15:00
2018-07-18	Room 102	13:00	15:00
2018-07-18	Room 101	15:00	17:00
2018-07-18	Ensemble Room A	15:00	17:00
2018-07-18	Ensemble Room B	15:00	17:00
2018-07-19	Ensemble Room A	08:00	10:00
2018-07-19	Ensemble Room B	08:00	10:00
2018-07-19	Room 101	10:00	12:00
2018-07-19	Room 102	10:00	12:00
2018-07-19	Room 101	13:00	15:00
2018-07-19	Ensemble Room A	13:00	15:00
2018-07-19	Room 101	15:00	17:00
2018-07-19	Ensemble Room A	15:00	17:00
2018-07-20	Ensemble Room A	08:00	10:00
2018-07-20	Ensemble Room A	10:00	12:00
2018-07-20	Room 101	13:00	15:00
2018-07-20	Ensemble Room A	15:00	17:00
2018-07-21	Ensemble Room A	08:00	10:00
2018-07-21	Room 101	08:00	10:00
2018-07-21	Ensemble Room A	10:00	12:00
2018-07-21	Ensemble Room B	10:00	12:00
2018-07-21	Room 101	13:00	15:00
2018-07-21	Room 102	13:00	15:00
2018-07-21	Ensemble Room A	15:00	17:00
2018-07-22	Ensemble Room A	08:00	10:00
2018-07-22	Room 101	08:00	10:00
2018-07-22	Ensemble Room B	08:00	10:00
2018-07-22	Room 101	10:00	12:00
2018-07-22	Ensemble Room A	10:00	12:00
2018-07-22	Room 102	10:00	12:00
2018-07-22	Room 101	13:00	15:00
2018-07-22	Ensemble Room A	13:00	15:00
2018-07-22	Ensemble Room A	15:00	17:00
2018-07-22	Ensemble Room B	15:00	17:00
2018-07-23	Ensemble Room A	08:00	10:00
2018-07-23	Ensemble Room A	10:00	12:00
2018-07-23	Room 101	13:00	15:00
2018-07-23	Ensemble Room A	15:00	17:00
2018-07-24	Ensemble Room A	08:00	10:00
2018-07-24	Ensemble Room A	13:00	15:00
2018-07-24	Ensemble Room B	13:00	15:00
2018-07-24	Room 101	15:00	17:00
2018-07-25	Room 101	08:00	10:00
2018-07-25	Ensemble Room A	08:00	10:00
2018-07-25	Ensemble Room A	10:00	12:00
2018-07-26	Ensemble Room A	08:00	10:00
2018-07-26	Ensemble Room A	10:00	12:00
2018-07-27	Ensemble Room A	08:00	10:00
2018-07-27	Ensemble Room B	08:00	10:00
2018-07-27	Room 101	13:00	15:00
2018-07-27	Room 101	15:00	17:00
2018-07-27	Room 102	15:00	17:00
2018-07-28	Ensemble Room A	08:00	10:00
2018-07-28	Room 101	10:00	12:00
2018-07-28	Ensemble Room A	13:00	15:00
2018-07-28	Room 101	13:00	15:00
2018-07-29	Ensemble Room A	13:00	15:00
2018-07-29	Ensemble Room A	15:00	17:00
2018-07-30	Ensemble Room A	10:00	12:00
2018-07-30	Ensemble Room A	13:00	15:00
2018-07-30	Ensemble Room B	13:00	15:00
2018-07-30	Room 101	15:00	17:00
2018-07-31	Ensemble Room A	08:00	10:00
2018-07-31	Ensemble Room A	10:00	12:00
2018-07-31	Room 101	10:00	12:00
2018-07-31	Ensemble Room B	10:00	12:00
2018-07-31	Ensemble Room A	13:00	15:00
2018-07-31	Room 101	13:00	15:00
2018-07-31	Room 101	15:00	17:00
2018-07-31	Room 102	15:00	17:00
2018-07-31	Room 103	15:00	17:00
2018-08-01	Room 101	08:00	10:00
2018-08-01	Room 102	08:00	10:00
2018-08-01	Ensemble Room A	08:00	10:00
2018-08-01	Ensemble Room A	10:00	12:00
2018-08-01	Ensemble Room B	10:00	12:00
2018-08-01	Room 101	10:00	12:00
2018-08-01	Ensemble Room A	13:00	15:00
2018-08-01	Ensemble Room B	13:00	15:00
2018-08-01	Ensemble Room A	15:00	17:00
2018-08-01	Ensemble Room B	15:00	17:00
2018-08-02	Ensemble Room A	08:00	10:00
2018-08-02	Ensemble Room A	10:00	12:00
2018-08-02	Ensemble Room A	13:00	15:00
2018-08-02	Ensemble Room A	15:00	17:00
2018-08-02	Room 101	15:00	17:00
2018-08-02	Room 102	15:00	17:00
2018-08-03	Room 101	08:00	10:00
2018-08-03	Ensemble Room A	08:00	10:00
2018-08-03	Ensemble Room A	10:00	12:00
2018-08-03	Ensemble Room B	10:00	12:00
2018-08-03	Room 101	13:00	15:00
2018-08-03	Ensemble Room A	15:00	17:00
2018-08-03	Ensemble Room B	15:00	17:00
2018-08-03	Ensemble Room C	15:00	17:00
2018-08-04	Room 101	08:00	10:00
2018-08-04	Room 102	08:00	10:00
2018-08-04	Ensemble Room A	10:00	12:00
2018-08-04	Ensemble Room A	13:00	15:00
2018-08-04	Room 101	13:00	15:00
2018-08-04	Ensemble Room A	15:00	17:00
2018-08-05	Room 101	08:00	10:00
2018-08-05	Ensemble Room A	13:00	15:00
2018-08-05	Ensemble Room B	13:00	15:00
2018-08-05	Room 101	15:00	17:00
2018-08-05	Room 102	15:00	17:00
2018-08-06	Ensemble Room A	10:00	12:00
2018-08-06	Room 101	10:00	12:00
2018-08-06	Ensemble Room A	15:00	17:00
2018-08-07	Ensemble Room A	08:00	10:00
2018-08-07	Ensemble Room A	10:00	12:00
2018-08-07	Room 101	10:00	12:00
2018-08-07	Room 102	10:00	12:00
2018-08-07	Ensemble Room A	15:00	17:00
2018-08-08	Ensemble Room A	10:00	12:00
2018-08-08	Ensemble Room B	10:00	12:00
2018-08-08	Room 101	13:00	15:00
2018-08-08	Ensemble Room A	15:00	17:00
2018-08-09	Ensemble Room A	08:00	10:00
2018-08-09	Room 101	15:00	17:00
2018-08-10	Room 101	08:00	10:00
2018-08-10	Ensemble Room A	08:00	10:00
2018-08-10	Ensemble Room A	10:00	12:00
2018-08-10	Room 101	15:00	17:00
2018-08-10	Room 102	15:00	17:00
2018-08-11	Ensemble Room A	08:00	10:00
2018-08-11	Room 101	10:00	12:00
2018-08-11	Room 101	13:00	15:00
2018-08-11	Ensemble Room A	13:00	15:00
2018-08-11	Ensemble Room A	15:00	17:00
2018-08-12	Room 101	08:00	10:00
2018-08-12	Room 101	13:00	15:00
2018-08-12	Ensemble Room A	13:00	15:00
2018-08-13	Ensemble Room A	10:00	12:00
2018-08-13	Room 101	13:00	15:00
2018-08-13	Ensemble Room A	15:00	17:00
2018-08-14	Room 101	08:00	10:00
2018-08-14	Room 101	10:00	12:00
2018-08-14	Ensemble Room A	10:00	12:00
2018-08-14	Ensemble Room A	15:00	17:00
2018-08-15	Room 101	08:00	10:00
2018-08-15	Ensemble Room A	08:00	10:00
2018-08-15	Ensemble Room A	10:00	12:00
2018-08-15	Room 101	10:00	12:00
2018-08-15	Room 102	10:00	12:00
2018-08-15	Room 101	13:00	15:00
2018-08-15	Room 102	13:00	15:00
2018-08-15	Ensemble Room A	15:00	17:00
2018-08-15	Ensemble Room B	15:00	17:00
2018-08-16	Room 101	08:00	10:00
2018-08-16	Ensemble Room A	10:00	12:00
2018-08-16	Room 101	10:00	12:00
2018-08-16	Room 101	15:00	17:00
2018-08-17	Room 101	08:00	10:00
2018-08-17	Room 101	10:00	12:00
2018-08-17	Ensemble Room A	10:00	12:00
2018-08-17	Ensemble Room A	13:00	15:00
2018-08-17	Ensemble Room B	13:00	15:00
2018-08-17	Ensemble Room C	13:00	15:00
2018-08-17	Ensemble Room A	15:00	17:00
2018-08-18	Room 101	08:00	10:00
2018-08-18	Ensemble Room A	10:00	12:00
2018-08-18	Ensemble Room B	10:00	12:00
2018-08-18	Room 101	10:00	12:00
2018-08-18	Room 101	13:00	15:00
2018-08-18	Room 101	15:00	17:00
2018-08-18	Room 102	15:00	17:00
2018-08-19	Room 101	08:00	10:00
2018-08-19	Ensemble Room A	10:00	12:00
2018-08-19	Room 101	10:00	12:00
2018-08-19	Ensemble Room A	13:00	15:00
2018-08-19	Ensemble Room B	13:00	15:00
2018-08-19	Ensemble Room A	15:00	17:00
2018-08-20	Ensemble Room A	08:00	10:00
2018-08-20	Ensemble Room A	10:00	12:00
2018-08-20	Ensemble Room B	10:00	12:00
2018-08-20	Ensemble Room A	13:00	15:00
2018-08-21	Room 101	10:00	12:00
2018-08-21	Ensemble Room A	15:00	17:00
2018-08-21	Room 101	15:00	17:00
2018-08-23	Room 101	08:00	10:00
2018-08-23	Room 102	08:00	10:00
2018-08-23	Ensemble Room A	15:00	17:00
2018-08-23	Ensemble Room B	15:00	17:00
2018-08-24	Room 101	13:00	15:00
2018-08-24	Ensemble Room A	15:00	17:00
2018-08-24	Room 101	15:00	17:00
2018-08-24	Room 102	15:00	17:00
2018-08-25	Ensemble Room A	08:00	10:00
2018-08-25	Ensemble Room B	08:00	10:00
2018-08-25	Ensemble Room A	13:00	15:00
2018-08-25	Ensemble Room B	13:00	15:00
2018-08-26	Ensemble Room A	08:00	10:00
2018-08-26	Ensemble Room B	08:00	10:00
2018-08-26	Ensemble Room A	15:00	17:00
2018-08-27	Ensemble Room A	08:00	10:00
2018-08-27	Ensemble Room B	08:00	10:00
2018-08-27	Ensemble Room A	10:00	12:00
2018-08-27	Room 101	10:00	12:00
2018-08-27	Room 101	13:00	15:00
2018-08-27	Ensemble Room A	13:00	15:00
2018-08-27	Room 102	13:00	15:00
2018-08-27	Room 101	15:00	17:00
2018-08-27	Ensemble Room A	15:00	17:00
2018-08-28	Ensemble Room A	08:00	10:00
2018-08-28	Ensemble Room A	13:00	15:00
2018-08-28	Room 101	15:00	17:00
2018-08-29	Ensemble Room A	08:00	10:00
2018-08-29	Room 101	08:00	10:00
2018-08-29	Ensemble Room A	10:00	12:00
2018-08-29	Ensemble Room A	15:00	17:00
2018-08-30	Ensemble Room A	08:00	10:00
2018-08-30	Room 101	08:00	10:00
2018-08-30	Ensemble Room A	10:00	12:00
2018-08-30	Room 101	10:00	12:00
2018-08-30	Ensemble Room A	13:00	15:00
2018-08-30	Room 101	15:00	17:00
2018-08-30	Ensemble Room A	15:00	17:00
2018-08-31	Room 101	08:00	10:00
2018-08-31	Ensemble Room A	08:00	10:00
2018-08-31	Ensemble Room A	13:00	15:00
2018-08-31	Room 101	13:00	15:00
2018-08-31	Room 102	13:00	15:00
2018-08-31	Ensemble Room A	15:00	17:00
2018-09-01	Room 101	08:00	10:00
2018-09-01	Room 101	10:00	12:00
2018-09-01	Room 101	15:00	17:00
2018-09-01	Room 102	15:00	17:00
2018-09-02	Room 101	08:00	10:00
2018-09-02	Room 101	10:00	12:00
2018-09-02	Ensemble Room A	10:00	12:00
2018-09-02	Room 101	13:00	15:00
2018-09-02	Room 102	13:00	15:00
2018-09-02	Room 101	15:00	17:00
2018-09-03	Room 101	08:00	10:00
2018-09-03	Room 101	13:00	15:00
2018-09-03	Room 102	13:00	15:00
2018-09-03	Room 103	13:00	15:00
2018-09-04	Room 101	08:00	10:00
2018-09-04	Room 101	10:00	12:00
2018-09-04	Ensemble Room A	10:00	12:00
2018-09-04	Room 101	15:00	17:00
2018-09-04	Room 102	15:00	17:00
2018-09-04	Ensemble Room A	15:00	17:00
2018-09-05	Ensemble Room A	08:00	10:00
2018-09-05	Room 101	10:00	12:00
2018-09-05	Room 102	10:00	12:00
2018-09-05	Room 101	15:00	17:00
2018-09-05	Room 102	15:00	17:00
2018-09-06	Room 101	08:00	10:00
2018-09-06	Room 102	08:00	10:00
2018-09-06	Room 101	10:00	12:00
2018-09-06	Room 101	13:00	15:00
2018-09-07	Room 101	08:00	10:00
2018-09-07	Room 101	10:00	12:00
2018-09-07	Ensemble Room A	13:00	15:00
2018-09-07	Ensemble Room A	15:00	17:00
2018-09-08	Ensemble Room A	08:00	10:00
2018-09-08	Room 101	08:00	10:00
2018-09-08	Ensemble Room B	08:00	10:00
2018-09-08	Ensemble Room A	13:00	15:00
2018-09-08	Room 101	15:00	17:00
2018-09-09	Room 101	08:00	10:00
2018-09-09	Room 101	13:00	15:00
2018-09-09	Ensemble Room A	15:00	17:00
2018-09-09	Room 101	15:00	17:00
2018-09-10	Room 101	08:00	10:00
2018-09-10	Ensemble Room A	08:00	10:00
2018-09-10	Ensemble Room A	15:00	17:00
2018-09-10	Ensemble Room B	15:00	17:00
2018-09-11	Ensemble Room A	08:00	10:00
2018-09-11	Ensemble Room B	08:00	10:00
2018-09-11	Room 101	13:00	15:00
2018-09-11	Ensemble Room A	13:00	15:00
2018-09-11	Room 101	15:00	17:00
2018-09-12	Room 101	08:00	10:00
2018-09-13	Room 101	08:00	10:00
2018-09-13	Room 102	08:00	10:00
2018-09-13	Room 101	10:00	12:00
2018-09-13	Ensemble Room A	13:00	15:00
2018-09-13	Room 101	13:00	15:00
2018-09-13	Room 101	15:00	17:00
2018-09-14	Room 101	08:00	10:00
2018-09-14	Room 101	10:00	12:00
2018-09-14	Ensemble Room A	13:00	15:00
2018-09-14	Room 101	13:00	15:00
2018-09-14	Ensemble Room B	13:00	15:00
2018-09-14	Ensemble Room A	15:00	17:00
2018-09-15	Room 101	08:00	10:00
2018-09-15	Room 102	08:00	10:00
2018-09-15	Ensemble Room A	08:00	10:00
2018-09-15	Ensemble Room A	10:00	12:00
2018-09-16	Ensemble Room A	08:00	10:00
2018-09-16	Ensemble Room B	08:00	10:00
2018-09-16	Ensemble Room A	10:00	12:00
2018-09-16	Ensemble Room B	10:00	12:00
2018-09-16	Ensemble Room A	15:00	17:00
2018-09-16	Room 101	15:00	17:00
2018-09-17	Ensemble Room A	08:00	10:00
2018-09-17	Ensemble Room B	08:00	10:00
2018-09-17	Room 101	08:00	10:00
2018-09-17	Ensemble Room A	10:00	12:00
2018-09-17	Room 101	13:00	15:00
2018-09-18	Room 101	08:00	10:00
2018-09-18	Ensemble Room A	08:00	10:00
2018-09-19	Ensemble Room A	08:00	10:00
2018-09-19	Ensemble Room A	10:00	12:00
2018-09-19	Ensemble Room B	10:00	12:00
2018-09-19	Room 101	13:00	15:00
2018-09-19	Ensemble Room A	15:00	17:00
2018-09-19	Ensemble Room B	15:00	17:00
2018-09-19	Room 101	15:00	17:00
2018-09-20	Room 101	08:00	10:00
2018-09-20	Room 101	10:00	12:00
2018-09-20	Ensemble Room A	10:00	12:00
2018-09-20	Room 101	13:00	15:00
2018-09-20	Ensemble Room A	15:00	17:00
2018-09-20	Ensemble Room B	15:00	17:00
2018-09-20	Room 101	15:00	17:00
2018-09-21	Ensemble Room A	08:00	10:00
2018-09-21	Ensemble Room A	10:00	12:00
2018-09-21	Ensemble Room B	10:00	12:00
2018-09-21	Room 101	10:00	12:00
2018-09-21	Room 101	13:00	15:00
2018-09-21	Room 101	15:00	17:00
2018-09-21	Room 102	15:00	17:00
2018-09-22	Room 101	08:00	10:00
2018-09-22	Room 101	10:00	12:00
2018-09-22	Ensemble Room A	10:00	12:00
2018-09-22	Ensemble Room A	13:00	15:00
2018-09-22	Room 101	15:00	17:00
2018-09-23	Ensemble Room A	08:00	10:00
2018-09-23	Ensemble Room B	08:00	10:00
2018-09-23	Ensemble Room A	13:00	15:00
2018-09-24	Ensemble Room A	08:00	10:00
2018-09-24	Ensemble Room B	08:00	10:00
2018-09-24	Room 101	15:00	17:00
2018-09-24	Ensemble Room A	15:00	17:00
2018-09-25	Ensemble Room A	10:00	12:00
2018-09-25	Ensemble Room A	15:00	17:00
2018-09-25	Room 101	15:00	17:00
2018-09-26	Room 101	08:00	10:00
2018-09-26	Room 102	08:00	10:00
2018-09-26	Room 101	10:00	12:00
2018-09-26	Ensemble Room A	13:00	15:00
2018-09-26	Room 101	13:00	15:00
2018-09-26	Ensemble Room A	15:00	17:00
2018-09-26	Room 101	15:00	17:00
2018-09-27	Room 101	10:00	12:00
2018-09-27	Ensemble Room A	10:00	12:00
2018-09-27	Room 101	13:00	15:00
2018-09-27	Room 102	13:00	15:00
2018-09-27	Ensemble Room A	13:00	15:00
2018-09-28	Room 101	08:00	10:00
2018-09-28	Ensemble Room A	10:00	12:00
2018-09-28	Room 101	13:00	15:00
2018-09-28	Room 102	13:00	15:00
2018-09-28	Ensemble Room A	13:00	15:00
2018-09-28	Room 101	15:00	17:00
2018-09-29	Room 101	13:00	15:00
2018-09-29	Room 101	15:00	17:00
2018-09-30	Ensemble Room A	08:00	10:00
2018-09-30	Room 101	08:00	10:00
2018-09-30	Ensemble Room A	13:00	15:00
2018-10-01	Room 101	08:00	10:00
2018-10-01	Ensemble Room A	10:00	12:00
2018-10-01	Room 101	10:00	12:00
2018-10-01	Room 101	13:00	15:00
2018-10-01	Ensemble Room A	13:00	15:00
2018-10-01	Room 102	13:00	15:00
2018-10-02	Ensemble Room A	08:00	10:00
2018-10-02	Ensemble Room B	08:00	10:00
2018-10-02	Room 101	10:00	12:00
2018-10-02	Room 102	10:00	12:00
2018-10-02	Ensemble Room A	10:00	12:00
2018-10-02	Room 101	15:00	17:00
2018-10-02	Room 102	15:00	17:00
2018-10-03	Ensemble Room A	08:00	10:00
2018-10-03	Ensemble Room A	10:00	12:00
2018-10-03	Room 101	10:00	12:00
2018-10-03	Room 102	10:00	12:00
2018-10-03	Ensemble Room A	13:00	15:00
2018-10-03	Room 101	13:00	15:00
2018-10-03	Room 101	15:00	17:00
2018-10-04	Room 101	13:00	15:00
2018-10-04	Ensemble Room A	13:00	15:00
2018-10-04	Ensemble Room A	15:00	17:00
2018-10-05	Room 101	10:00	12:00
2018-10-05	Room 102	10:00	12:00
2018-10-05	Ensemble Room A	13:00	15:00
2018-10-06	Ensemble Room A	08:00	10:00
2018-10-06	Room 101	08:00	10:00
2018-10-06	Ensemble Room A	15:00	17:00
2018-10-07	Room 101	08:00	10:00
2018-10-07	Ensemble Room A	10:00	12:00
2018-10-07	Room 101	15:00	17:00
2018-10-07	Room 102	15:00	17:00
2018-10-08	Room 101	08:00	10:00
2018-10-08	Room 102	08:00	10:00
2018-10-08	Room 101	10:00	12:00
2018-10-08	Ensemble Room A	10:00	12:00
2018-10-08	Room 101	13:00	15:00
2018-10-08	Room 102	13:00	15:00
2018-10-08	Room 101	15:00	17:00
2018-10-09	Ensemble Room A	08:00	10:00
2018-10-09	Room 101	08:00	10:00
2018-10-09	Ensemble Room A	13:00	15:00
2018-10-09	Ensemble Room B	13:00	15:00
2018-10-09	Room 101	15:00	17:00
2018-10-09	Ensemble Room A	15:00	17:00
2018-10-10	Room 101	08:00	10:00
2018-10-10	Room 101	10:00	12:00
2018-10-10	Room 102	10:00	12:00
2018-10-10	Room 101	13:00	15:00
2018-10-10	Ensemble Room A	13:00	15:00
2018-10-10	Room 101	15:00	17:00
2018-10-11	Ensemble Room A	08:00	10:00
2018-10-11	Ensemble Room A	10:00	12:00
2018-10-11	Room 101	13:00	15:00
2018-10-11	Room 102	13:00	15:00
2018-10-11	Room 101	15:00	17:00
2018-10-12	Ensemble Room A	08:00	10:00
2018-10-12	Ensemble Room A	10:00	12:00
2018-10-12	Ensemble Room A	15:00	17:00
2018-10-13	Room 101	10:00	12:00
2018-10-13	Ensemble Room A	13:00	15:00
2018-10-13	Ensemble Room A	15:00	17:00
2018-10-14	Ensemble Room A	08:00	10:00
2018-10-14	Ensemble Room B	08:00	10:00
2018-10-14	Ensemble Room C	08:00	10:00
2018-10-14	Ensemble Room A	15:00	17:00
2018-10-14	Room 101	15:00	17:00
2018-10-14	Ensemble Room B	15:00	17:00
2018-10-15	Ensemble Room A	08:00	10:00
2018-10-15	Room 101	08:00	10:00
2018-10-15	Room 101	10:00	12:00
2018-10-15	Room 101	13:00	15:00
2018-10-15	Ensemble Room A	13:00	15:00
2018-10-15	Ensemble Room A	15:00	17:00
2018-10-16	Room 101	08:00	10:00
2018-10-16	Ensemble Room A	08:00	10:00
2018-10-16	Ensemble Room A	10:00	12:00
2018-10-16	Ensemble Room A	13:00	15:00
2018-10-16	Room 101	15:00	17:00
2018-10-16	Ensemble Room A	15:00	17:00
2018-10-16	Ensemble Room B	15:00	17:00
2018-10-17	Ensemble Room A	08:00	10:00
2018-10-17	Room 101	10:00	12:00
2018-10-17	Ensemble Room A	10:00	12:00
2018-10-17	Ensemble Room A	13:00	15:00
2018-10-17	Ensemble Room B	13:00	15:00
2018-10-17	Ensemble Room A	15:00	17:00
2018-10-18	Ensemble Room A	08:00	10:00
2018-10-18	Ensemble Room A	10:00	12:00
2018-10-18	Room 101	13:00	15:00
2018-10-18	Ensemble Room A	15:00	17:00
2018-10-18	Room 101	15:00	17:00
2018-10-18	Ensemble Room B	15:00	17:00
2018-10-19	Ensemble Room A	08:00	10:00
2018-10-19	Ensemble Room B	08:00	10:00
2018-10-19	Ensemble Room A	10:00	12:00
2018-10-19	Ensemble Room B	10:00	12:00
2018-10-19	Room 101	13:00	15:00
2018-10-20	Room 101	08:00	10:00
2018-10-20	Room 101	10:00	12:00
2018-10-20	Room 102	10:00	12:00
2018-10-20	Room 101	15:00	17:00
2018-10-21	Ensemble Room A	08:00	10:00
2018-10-21	Room 101	08:00	10:00
2018-10-21	Room 102	08:00	10:00
2018-10-21	Room 101	10:00	12:00
2018-10-21	Room 101	13:00	15:00
2018-10-21	Ensemble Room A	15:00	17:00
2018-10-21	Room 101	15:00	17:00
2018-10-22	Ensemble Room A	08:00	10:00
2018-10-22	Room 101	08:00	10:00
2018-10-22	Room 102	08:00	10:00
2018-10-22	Room 101	10:00	12:00
2018-10-22	Ensemble Room A	13:00	15:00
2018-10-22	Ensemble Room B	13:00	15:00
2018-10-22	Ensemble Room A	15:00	17:00
2018-10-22	Ensemble Room B	15:00	17:00
2018-10-22	Ensemble Room C	15:00	17:00
2018-10-23	Ensemble Room A	08:00	10:00
2018-10-23	Room 101	10:00	12:00
2018-10-23	Ensemble Room A	15:00	17:00
2018-10-23	Room 101	15:00	17:00
2018-10-23	Room 102	15:00	17:00
2018-10-24	Ensemble Room A	08:00	10:00
2018-10-24	Room 101	08:00	10:00
2018-10-24	Room 101	10:00	12:00
2018-10-24	Room 102	10:00	12:00
2018-10-24	Room 101	13:00	15:00
2018-10-24	Ensemble Room A	13:00	15:00
2018-10-25	Room 101	08:00	10:00
2018-10-25	Room 102	08:00	10:00
2018-10-25	Room 101	10:00	12:00
2018-10-25	Ensemble Room A	13:00	15:00
2018-10-25	Ensemble Room A	15:00	17:00
2018-10-25	Ensemble Room B	15:00	17:00
2018-10-26	Room 101	08:00	10:00
2018-10-26	Room 101	10:00	12:00
2018-10-26	Ensemble Room A	13:00	15:00
2018-10-27	Ensemble Room A	13:00	15:00
2018-10-27	Room 101	13:00	15:00
2018-10-27	Room 101	15:00	17:00
2018-10-28	Room 101	08:00	10:00
2018-10-28	Ensemble Room A	10:00	12:00
2018-10-28	Ensemble Room A	13:00	15:00
2018-10-28	Room 101	13:00	15:00
2018-10-28	Ensemble Room A	15:00	17:00
2018-10-28	Ensemble Room B	15:00	17:00
2018-10-29	Room 101	08:00	10:00
2018-10-29	Ensemble Room A	08:00	10:00
2018-10-29	Ensemble Room A	10:00	12:00
2018-10-29	Room 101	10:00	12:00
2018-10-29	Ensemble Room A	15:00	17:00
2018-10-30	Ensemble Room A	10:00	12:00
2018-10-30	Room 101	10:00	12:00
2018-10-30	Room 101	13:00	15:00
2018-10-30	Room 101	15:00	17:00
2018-10-30	Ensemble Room A	15:00	17:00
2018-10-31	Ensemble Room A	08:00	10:00
2018-10-31	Room 101	10:00	12:00
2018-10-31	Ensemble Room A	15:00	17:00
2018-10-31	Room 101	15:00	17:00
2018-10-31	Room 102	15:00	17:00
2018-11-01	Ensemble Room A	08:00	10:00
2018-11-01	Ensemble Room B	08:00	10:00
2018-11-01	Ensemble Room C	08:00	10:00
2018-11-01	Ensemble Room A	10:00	12:00
2018-11-01	Room 101	15:00	17:00
2018-11-02	Room 101	08:00	10:00
2018-11-02	Ensemble Room A	08:00	10:00
2018-11-02	Room 102	08:00	10:00
2018-11-02	Ensemble Room A	10:00	12:00
2018-11-02	Room 101	10:00	12:00
2018-11-02	Room 101	13:00	15:00
2018-11-02	Room 102	13:00	15:00
2018-11-02	Room 101	15:00	17:00
2018-11-03	Ensemble Room A	08:00	10:00
2018-11-03	Room 101	08:00	10:00
2018-11-03	Room 101	10:00	12:00
2018-11-04	Room 101	08:00	10:00
2018-11-04	Room 101	10:00	12:00
2018-11-04	Room 102	10:00	12:00
2018-11-04	Room 103	10:00	12:00
2018-11-05	Room 101	08:00	10:00
2018-11-05	Ensemble Room A	08:00	10:00
2018-11-05	Room 101	13:00	15:00
2018-11-05	Ensemble Room A	15:00	17:00
2018-11-06	Ensemble Room A	15:00	17:00
2018-11-07	Ensemble Room A	08:00	10:00
2018-11-07	Ensemble Room A	10:00	12:00
2018-11-07	Room 101	10:00	12:00
2018-11-07	Room 101	13:00	15:00
2018-11-07	Ensemble Room A	15:00	17:00
2018-11-07	Room 101	15:00	17:00
2018-11-08	Ensemble Room A	08:00	10:00
2018-11-09	Ensemble Room A	10:00	12:00
2018-11-09	Room 101	10:00	12:00
2018-11-09	Ensemble Room B	10:00	12:00
2018-11-09	Ensemble Room A	13:00	15:00
2018-11-10	Room 101	08:00	10:00
2018-11-10	Ensemble Room A	08:00	10:00
2018-11-10	Ensemble Room A	10:00	12:00
2018-11-10	Ensemble Room A	15:00	17:00
2018-11-10	Room 101	15:00	17:00
2018-11-10	Room 102	15:00	17:00
2018-11-11	Room 101	10:00	12:00
2018-11-11	Room 102	10:00	12:00
2018-11-11	Room 103	10:00	12:00
2018-11-11	Ensemble Room A	13:00	15:00
2018-11-11	Room 101	15:00	17:00
2018-11-12	Ensemble Room A	08:00	10:00
2018-11-12	Ensemble Room A	10:00	12:00
2018-11-12	Room 101	10:00	12:00
2018-11-12	Room 101	13:00	15:00
2018-11-12	Ensemble Room A	13:00	15:00
2018-11-12	Ensemble Room B	13:00	15:00
2018-11-12	Room 101	15:00	17:00
2018-11-12	Room 102	15:00	17:00
2018-11-13	Room 101	08:00	10:00
2018-11-13	Room 101	13:00	15:00
2018-11-13	Ensemble Room A	13:00	15:00
2018-11-13	Ensemble Room A	15:00	17:00
2018-11-14	Ensemble Room A	08:00	10:00
2018-11-14	Ensemble Room B	08:00	10:00
2018-11-14	Ensemble Room A	10:00	12:00
2018-11-14	Ensemble Room A	13:00	15:00
2018-11-14	Ensemble Room A	15:00	17:00
2018-11-15	Ensemble Room A	08:00	10:00
2018-11-15	Room 101	08:00	10:00
2018-11-15	Ensemble Room B	08:00	10:00
2018-11-15	Room 101	13:00	15:00
2018-11-15	Ensemble Room A	13:00	15:00
2018-11-15	Room 101	15:00	17:00
2018-11-15	Ensemble Room A	15:00	17:00
2018-11-15	Ensemble Room B	15:00	17:00
2018-11-16	Room 101	08:00	10:00
2018-11-16	Room 101	15:00	17:00
2018-11-17	Room 101	08:00	10:00
2018-11-17	Ensemble Room A	10:00	12:00
2018-11-17	Ensemble Room A	13:00	15:00
2018-11-17	Room 101	15:00	17:00
2018-11-18	Room 101	08:00	10:00
2018-11-18	Room 102	08:00	10:00
2018-11-18	Ensemble Room A	10:00	12:00
2018-11-18	Ensemble Room B	10:00	12:00
2018-11-18	Ensemble Room C	10:00	12:00
2018-11-18	Ensemble Room A	15:00	17:00
2018-11-18	Room 101	15:00	17:00
2018-11-19	Ensemble Room A	10:00	12:00
2018-11-19	Ensemble Room A	13:00	15:00
2018-11-19	Ensemble Room A	15:00	17:00
2018-11-20	Ensemble Room A	10:00	12:00
2018-11-20	Ensemble Room A	13:00	15:00
2018-11-20	Room 101	13:00	15:00
2018-11-20	Ensemble Room A	15:00	17:00
2018-11-21	Ensemble Room A	08:00	10:00
2018-11-21	Room 101	08:00	10:00
2018-11-21	Room 101	10:00	12:00
2018-11-21	Ensemble Room A	10:00	12:00
2018-11-21	Ensemble Room A	13:00	15:00
2018-11-21	Room 101	13:00	15:00
2018-11-21	Ensemble Room A	15:00	17:00
2018-11-21	Ensemble Room B	15:00	17:00
2018-11-21	Room 101	15:00	17:00
2018-11-22	Ensemble Room A	08:00	10:00
2018-11-22	Room 101	08:00	10:00
2018-11-22	Ensemble Room B	08:00	10:00
2018-11-22	Ensemble Room A	13:00	15:00
2018-11-22	Ensemble Room A	15:00	17:00
2018-11-23	Ensemble Room A	10:00	12:00
2018-11-23	Ensemble Room A	13:00	15:00
2018-11-23	Room 101	15:00	17:00
2018-11-23	Room 102	15:00	17:00
2018-11-23	Room 103	15:00	17:00
2018-11-24	Room 101	08:00	10:00
2018-11-24	Room 101	10:00	12:00
2018-11-24	Ensemble Room A	10:00	12:00
2018-11-24	Ensemble Room A	13:00	15:00
2018-11-24	Room 101	13:00	15:00
2018-11-24	Ensemble Room A	15:00	17:00
2018-11-24	Room 101	15:00	17:00
2018-11-24	Room 102	15:00	17:00
2018-11-25	Ensemble Room A	10:00	12:00
2018-11-25	Ensemble Room A	13:00	15:00
2018-11-25	Room 101	15:00	17:00
2018-11-26	Room 101	10:00	12:00
2018-11-26	Room 102	10:00	12:00
2018-11-26	Room 101	13:00	15:00
2018-11-26	Room 101	15:00	17:00
2018-11-28	Ensemble Room A	08:00	10:00
2018-11-28	Room 101	10:00	12:00
2018-11-28	Room 101	15:00	17:00
2018-11-29	Ensemble Room A	08:00	10:00
2018-11-29	Ensemble Room B	08:00	10:00
2018-11-29	Room 101	13:00	15:00
2018-11-30	Ensemble Room A	08:00	10:00
2018-11-30	Room 101	10:00	12:00
2018-11-30	Ensemble Room A	10:00	12:00
2018-11-30	Room 101	13:00	15:00
2018-11-30	Room 102	13:00	15:00
2018-11-30	Room 101	15:00	17:00
2018-12-01	Room 101	08:00	10:00
2018-12-01	Ensemble Room A	10:00	12:00
2018-12-01	Ensemble Room A	13:00	15:00
2018-12-01	Ensemble Room A	15:00	17:00
2018-12-02	Ensemble Room A	08:00	10:00
2018-12-02	Ensemble Room B	08:00	10:00
2018-12-02	Ensemble Room A	10:00	12:00
2018-12-02	Room 101	15:00	17:00
2018-12-02	Ensemble Room A	15:00	17:00
2018-12-03	Ensemble Room A	08:00	10:00
2018-12-03	Room 101	13:00	15:00
2018-12-04	Ensemble Room A	08:00	10:00
2018-12-04	Room 101	08:00	10:00
2018-12-04	Room 101	10:00	12:00
2018-12-04	Ensemble Room A	10:00	12:00
2018-12-04	Room 101	13:00	15:00
2018-12-04	Room 102	13:00	15:00
2018-12-05	Ensemble Room A	08:00	10:00
2018-12-05	Ensemble Room A	10:00	12:00
2018-12-05	Room 101	10:00	12:00
2018-12-05	Ensemble Room B	10:00	12:00
2018-12-05	Room 101	13:00	15:00
2018-12-05	Room 101	15:00	17:00
2018-12-06	Room 101	08:00	10:00
2018-12-06	Room 102	08:00	10:00
2018-12-06	Ensemble Room A	13:00	15:00
2018-12-06	Room 101	13:00	15:00
2018-12-06	Ensemble Room A	15:00	17:00
2018-12-06	Ensemble Room B	15:00	17:00
2018-12-07	Room 101	08:00	10:00
2018-12-07	Room 102	08:00	10:00
2018-12-07	Room 101	10:00	12:00
2018-12-07	Ensemble Room A	13:00	15:00
2018-12-07	Ensemble Room B	13:00	15:00
2018-12-07	Ensemble Room A	15:00	17:00
2018-12-07	Ensemble Room B	15:00	17:00
2018-12-07	Room 101	15:00	17:00
2018-12-08	Room 101	08:00	10:00
2018-12-08	Ensemble Room A	08:00	10:00
2018-12-08	Room 101	10:00	12:00
2018-12-08	Ensemble Room A	10:00	12:00
2018-12-08	Room 101	15:00	17:00
2018-12-09	Room 101	10:00	12:00
2018-12-09	Room 102	10:00	12:00
2018-12-09	Ensemble Room A	15:00	17:00
2018-12-10	Room 101	08:00	10:00
2018-12-10	Room 102	08:00	10:00
2018-12-10	Ensemble Room A	10:00	12:00
2018-12-10	Ensemble Room B	10:00	12:00
2018-12-10	Room 101	13:00	15:00
2018-12-10	Room 101	15:00	17:00
2018-12-10	Ensemble Room A	15:00	17:00
2018-12-11	Room 101	08:00	10:00
2018-12-11	Ensemble Room A	08:00	10:00
2018-12-11	Room 102	08:00	10:00
2018-12-11	Ensemble Room A	13:00	15:00
2018-12-11	Room 101	15:00	17:00
2018-12-11	Room 102	15:00	17:00
2018-12-12	Ensemble Room A	08:00	10:00
2018-12-12	Ensemble Room A	10:00	12:00
2018-12-12	Ensemble Room A	13:00	15:00
2018-12-12	Ensemble Room B	13:00	15:00
2018-12-12	Room 101	15:00	17:00
2018-12-13	Ensemble Room A	08:00	10:00
2018-12-13	Ensemble Room B	08:00	10:00
2018-12-13	Room 101	08:00	10:00
2018-12-13	Ensemble Room A	10:00	12:00
2018-12-13	Ensemble Room A	13:00	15:00
2018-12-13	Room 101	13:00	15:00
2018-12-13	Room 102	13:00	15:00
2018-12-14	Ensemble Room A	08:00	10:00
2018-12-14	Ensemble Room B	08:00	10:00
2018-12-14	Ensemble Room C	08:00	10:00
2018-12-14	Ensemble Room A	10:00	12:00
2018-12-14	Room 101	15:00	17:00
2018-12-15	Room 101	08:00	10:00
2018-12-15	Room 101	10:00	12:00
2018-12-15	Ensemble Room A	13:00	15:00
2018-12-15	Room 101	13:00	15:00
2018-12-15	Ensemble Room A	15:00	17:00
2018-12-15	Room 101	15:00	17:00
2018-12-16	Ensemble Room A	08:00	10:00
2018-12-16	Room 101	08:00	10:00
2018-12-16	Room 101	15:00	17:00
2018-12-17	Ensemble Room A	13:00	15:00
2018-12-17	Ensemble Room B	13:00	15:00
2018-12-17	Ensemble Room A	15:00	17:00
2018-12-17	Room 101	15:00	17:00
2018-12-18	Ensemble Room A	08:00	10:00
2018-12-18	Ensemble Room B	08:00	10:00
2018-12-18	Room 101	08:00	10:00
2018-12-18	Room 101	15:00	17:00
2018-12-18	Room 102	15:00	17:00
2018-12-19	Room 101	08:00	10:00
2018-12-19	Room 101	13:00	15:00
2018-12-20	Room 101	10:00	12:00
2018-12-20	Ensemble Room A	10:00	12:00
2018-12-20	Ensemble Room A	13:00	15:00
2018-12-20	Ensemble Room B	13:00	15:00
2018-12-20	Ensemble Room A	15:00	17:00
2018-12-20	Room 101	15:00	17:00
2018-12-21	Ensemble Room A	08:00	10:00
2018-12-21	Room 101	08:00	10:00
2018-12-21	Room 101	10:00	12:00
2018-12-21	Room 101	15:00	17:00
2018-12-21	Ensemble Room A	15:00	17:00
2018-12-22	Ensemble Room A	08:00	10:00
2018-12-22	Ensemble Room A	10:00	12:00
2018-12-22	Ensemble Room A	15:00	17:00
2018-12-22	Room 101	15:00	17:00
2018-12-23	Room 101	08:00	10:00
2018-12-23	Room 102	08:00	10:00
2018-12-23	Ensemble Room A	13:00	15:00
2018-12-24	Ensemble Room A	08:00	10:00
2018-12-24	Ensemble Room B	08:00	10:00
2018-12-24	Ensemble Room C	08:00	10:00
2018-12-24	Ensemble Room A	10:00	12:00
2018-12-24	Ensemble Room A	13:00	15:00
2018-12-24	Ensemble Room B	13:00	15:00
2018-12-24	Room 101	15:00	17:00
2018-12-24	Room 102	15:00	17:00
2018-12-25	Room 101	08:00	10:00
2018-12-25	Ensemble Room A	08:00	10:00
2018-12-25	Ensemble Room A	10:00	12:00
2018-12-25	Ensemble Room B	10:00	12:00
2018-12-25	Ensemble Room A	13:00	15:00
2018-12-25	Room 101	13:00	15:00
2018-12-25	Room 102	13:00	15:00
2018-12-25	Ensemble Room A	15:00	17:00
2018-12-25	Room 101	15:00	17:00
2018-12-25	Room 102	15:00	17:00
2018-12-26	Ensemble Room A	08:00	10:00
2018-12-26	Room 101	08:00	10:00
2018-12-26	Room 101	10:00	12:00
2018-12-26	Room 101	13:00	15:00
2018-12-26	Room 102	13:00	15:00
2018-12-27	Ensemble Room A	08:00	10:00
2018-12-27	Room 101	08:00	10:00
2018-12-27	Room 102	08:00	10:00
2018-12-27	Ensemble Room A	10:00	12:00
2018-12-27	Room 101	13:00	15:00
2018-12-27	Ensemble Room A	15:00	17:00
2018-12-27	Ensemble Room B	15:00	17:00
2018-12-27	Ensemble Room C	15:00	17:00
2018-12-28	Room 101	08:00	10:00
2018-12-28	Room 102	08:00	10:00
2018-12-28	Room 101	13:00	15:00
2018-12-28	Ensemble Room A	13:00	15:00
2018-12-28	Room 101	15:00	17:00
2018-12-28	Room 102	15:00	17:00
2018-12-29	Ensemble Room A	08:00	10:00
2018-12-29	Room 101	08:00	10:00
2018-12-29	Ensemble Room A	13:00	15:00
2018-12-29	Room 101	13:00	15:00
2018-12-29	Room 101	15:00	17:00
2018-12-29	Ensemble Room A	15:00	17:00
2018-12-30	Room 101	10:00	12:00
2018-12-30	Room 101	13:00	15:00
2018-12-30	Ensemble Room A	15:00	17:00
2018-12-31	Ensemble Room A	08:00	10:00
2018-12-31	Ensemble Room B	08:00	10:00
2018-12-31	Room 101	08:00	10:00
2018-12-31	Room 101	10:00	12:00
2018-12-31	Ensemble Room A	10:00	12:00
2018-12-31	Room 101	13:00	15:00
2018-12-31	Ensemble Room A	13:00	15:00
2018-12-31	Ensemble Room A	15:00	17:00
2019-01-01	Ensemble Room A	08:00	10:00
2019-01-01	Ensemble Room B	08:00	10:00
2019-01-01	Ensemble Room A	13:00	15:00
2019-01-01	Room 101	13:00	15:00
2019-01-01	Ensemble Room A	15:00	17:00
2019-01-01	Room 101	15:00	17:00
2019-01-01	Ensemble Room B	15:00	17:00
2019-01-02	Room 101	08:00	10:00
2019-01-02	Room 102	08:00	10:00
2019-01-02	Room 101	10:00	12:00
2019-01-02	Room 102	10:00	12:00
2019-01-02	Room 101	13:00	15:00
2019-01-02	Room 101	15:00	17:00
2019-01-03	Ensemble Room A	08:00	10:00
2019-01-03	Ensemble Room B	08:00	10:00
2019-01-03	Room 101	10:00	12:00
2019-01-03	Room 102	10:00	12:00
2019-01-03	Ensemble Room A	13:00	15:00
2019-01-03	Room 101	13:00	15:00
2019-01-03	Ensemble Room A	15:00	17:00
2019-01-04	Ensemble Room A	13:00	15:00
2019-01-05	Ensemble Room A	08:00	10:00
2019-01-05	Room 101	10:00	12:00
2019-01-05	Ensemble Room A	13:00	15:00
2019-01-05	Ensemble Room A	15:00	17:00
2019-01-05	Ensemble Room B	15:00	17:00
2019-01-06	Room 101	08:00	10:00
2019-01-06	Ensemble Room A	08:00	10:00
2019-01-06	Ensemble Room A	13:00	15:00
2019-01-07	Room 101	08:00	10:00
2019-01-07	Room 102	08:00	10:00
2019-01-07	Room 103	08:00	10:00
2019-01-07	Room 101	10:00	12:00
2019-01-07	Ensemble Room A	10:00	12:00
2019-01-07	Room 101	15:00	17:00
2019-01-08	Room 101	10:00	12:00
2019-01-08	Ensemble Room A	15:00	17:00
2019-01-10	Ensemble Room A	08:00	10:00
2019-01-10	Ensemble Room A	10:00	12:00
2019-01-10	Room 101	10:00	12:00
2019-01-10	Room 101	13:00	15:00
2019-01-11	Ensemble Room A	10:00	12:00
2019-01-11	Ensemble Room B	10:00	12:00
2019-01-11	Ensemble Room A	13:00	15:00
2019-01-11	Ensemble Room B	13:00	15:00
2019-01-12	Room 101	10:00	12:00
2019-01-12	Room 102	10:00	12:00
2019-01-12	Room 101	13:00	15:00
2019-01-13	Ensemble Room A	08:00	10:00
2019-01-13	Room 101	13:00	15:00
2019-01-13	Ensemble Room A	13:00	15:00
2019-01-13	Room 101	15:00	17:00
2019-01-13	Room 102	15:00	17:00
2019-01-14	Ensemble Room A	08:00	10:00
2019-01-14	Ensemble Room B	08:00	10:00
2019-01-14	Ensemble Room A	13:00	15:00
2019-01-14	Ensemble Room B	13:00	15:00
2019-01-14	Ensemble Room A	15:00	17:00
2019-01-14	Room 101	15:00	17:00
2019-01-14	Room 102	15:00	17:00
2019-01-15	Room 101	08:00	10:00
2019-01-15	Room 101	10:00	12:00
2019-01-15	Room 101	15:00	17:00
2019-01-16	Ensemble Room A	10:00	12:00
2019-01-16	Room 101	13:00	15:00
2019-01-16	Room 102	13:00	15:00
2019-01-17	Ensemble Room A	08:00	10:00
2019-01-17	Ensemble Room A	10:00	12:00
2019-01-17	Room 101	13:00	15:00
2019-01-17	Ensemble Room A	15:00	17:00
2019-01-17	Room 101	15:00	17:00
2019-01-18	Room 101	08:00	10:00
2019-01-18	Room 102	08:00	10:00
2019-01-18	Ensemble Room A	10:00	12:00
2019-01-18	Ensemble Room B	10:00	12:00
2019-01-18	Ensemble Room C	10:00	12:00
2019-01-18	Room 101	13:00	15:00
2019-01-18	Room 101	15:00	17:00
2019-01-18	Ensemble Room A	15:00	17:00
2019-01-19	Ensemble Room A	08:00	10:00
2019-01-19	Ensemble Room B	08:00	10:00
2019-01-19	Room 101	10:00	12:00
2019-01-19	Ensemble Room A	13:00	15:00
2019-01-19	Ensemble Room B	13:00	15:00
2019-01-19	Ensemble Room C	13:00	15:00
2019-01-19	Ensemble Room A	15:00	17:00
2019-01-19	Ensemble Room B	15:00	17:00
2019-01-20	Ensemble Room A	08:00	10:00
2019-01-20	Room 101	08:00	10:00
2019-01-20	Room 102	08:00	10:00
2019-01-20	Room 101	10:00	12:00
2019-01-20	Room 101	15:00	17:00
2019-01-20	Ensemble Room A	15:00	17:00
2019-01-21	Room 101	08:00	10:00
2019-01-21	Room 101	15:00	17:00
2019-01-21	Room 102	15:00	17:00
2019-01-22	Ensemble Room A	08:00	10:00
2019-01-22	Ensemble Room A	10:00	12:00
2019-01-22	Room 101	10:00	12:00
2019-01-22	Ensemble Room A	15:00	17:00
2019-01-23	Ensemble Room A	15:00	17:00
2019-01-24	Room 101	08:00	10:00
2019-01-24	Ensemble Room A	10:00	12:00
2019-01-24	Ensemble Room A	13:00	15:00
2019-01-24	Room 101	15:00	17:00
2019-01-25	Room 101	10:00	12:00
2019-01-25	Ensemble Room A	10:00	12:00
2019-01-25	Room 101	13:00	15:00
2019-01-25	Ensemble Room A	13:00	15:00
2019-01-25	Room 102	13:00	15:00
2019-01-26	Room 101	10:00	12:00
2019-01-26	Room 101	13:00	15:00
2019-01-26	Room 101	15:00	17:00
2019-01-26	Room 102	15:00	17:00
2019-01-27	Room 101	08:00	10:00
2019-01-27	Ensemble Room A	10:00	12:00
2019-01-27	Ensemble Room A	13:00	15:00
2019-01-27	Ensemble Room A	15:00	17:00
2019-01-28	Ensemble Room A	13:00	15:00
2019-01-28	Room 101	15:00	17:00
2019-01-29	Room 101	08:00	10:00
2019-01-29	Room 101	10:00	12:00
2019-01-29	Ensemble Room A	15:00	17:00
2019-01-29	Room 101	15:00	17:00
2019-01-29	Room 102	15:00	17:00
2019-01-30	Room 101	08:00	10:00
2019-01-30	Ensemble Room A	08:00	10:00
2019-01-30	Room 101	10:00	12:00
2019-01-30	Room 102	10:00	12:00
2019-01-30	Ensemble Room A	13:00	15:00
2019-01-30	Room 101	15:00	17:00
2019-01-31	Ensemble Room A	10:00	12:00
2019-01-31	Ensemble Room A	13:00	15:00
2019-01-31	Room 101	15:00	17:00
2019-01-31	Room 102	15:00	17:00
2019-02-01	Ensemble Room A	08:00	10:00
2019-02-01	Room 101	10:00	12:00
2019-02-01	Ensemble Room A	10:00	12:00
2019-02-01	Ensemble Room A	13:00	15:00
2019-02-01	Room 101	15:00	17:00
2019-02-02	Room 101	08:00	10:00
2019-02-02	Room 101	10:00	12:00
2019-02-02	Room 101	15:00	17:00
2019-02-03	Room 101	08:00	10:00
2019-02-03	Ensemble Room A	10:00	12:00
2019-02-03	Room 101	10:00	12:00
2019-02-03	Ensemble Room B	10:00	12:00
2019-02-03	Room 101	15:00	17:00
2019-02-04	Ensemble Room A	08:00	10:00
2019-02-04	Ensemble Room A	10:00	12:00
2019-02-04	Ensemble Room B	10:00	12:00
2019-02-04	Room 101	13:00	15:00
2019-02-05	Ensemble Room A	08:00	10:00
2019-02-05	Ensemble Room A	13:00	15:00
2019-02-05	Room 101	15:00	17:00
2019-02-06	Room 101	08:00	10:00
2019-02-06	Room 101	10:00	12:00
2019-02-06	Room 101	13:00	15:00
2019-02-06	Room 101	15:00	17:00
2019-02-06	Ensemble Room A	15:00	17:00
2019-02-07	Room 101	08:00	10:00
2019-02-07	Ensemble Room A	10:00	12:00
2019-02-07	Room 101	13:00	15:00
2019-02-07	Ensemble Room A	13:00	15:00
2019-02-07	Room 101	15:00	17:00
2019-02-07	Room 102	15:00	17:00
2019-02-08	Room 101	08:00	10:00
2019-02-08	Room 101	10:00	12:00
2019-02-08	Ensemble Room A	13:00	15:00
2019-02-09	Ensemble Room A	08:00	10:00
2019-02-09	Ensemble Room A	10:00	12:00
2019-02-09	Ensemble Room B	10:00	12:00
2019-02-09	Ensemble Room A	13:00	15:00
2019-02-09	Ensemble Room A	15:00	17:00
2019-02-10	Ensemble Room A	08:00	10:00
2019-02-10	Room 101	08:00	10:00
2019-02-10	Ensemble Room B	08:00	10:00
2019-02-10	Ensemble Room A	10:00	12:00
2019-02-10	Room 101	13:00	15:00
2019-02-11	Room 101	10:00	12:00
2019-02-11	Room 102	10:00	12:00
2019-02-11	Ensemble Room A	13:00	15:00
2019-02-12	Ensemble Room A	08:00	10:00
2019-02-12	Ensemble Room A	15:00	17:00
2019-02-13	Room 101	08:00	10:00
2019-02-13	Room 101	10:00	12:00
2019-02-13	Ensemble Room A	13:00	15:00
2019-02-13	Room 101	13:00	15:00
2019-02-14	Ensemble Room A	08:00	10:00
2019-02-14	Room 101	08:00	10:00
2019-02-14	Room 101	10:00	12:00
2019-02-14	Ensemble Room A	10:00	12:00
2019-02-14	Room 101	13:00	15:00
2019-02-14	Room 102	13:00	15:00
2019-02-14	Ensemble Room A	13:00	15:00
2019-02-15	Room 101	08:00	10:00
2019-02-15	Ensemble Room A	08:00	10:00
2019-02-15	Ensemble Room A	10:00	12:00
2019-02-15	Ensemble Room B	10:00	12:00
2019-02-15	Ensemble Room A	13:00	15:00
2019-02-15	Ensemble Room B	13:00	15:00
2019-02-15	Room 101	15:00	17:00
2019-02-15	Room 102	15:00	17:00
2019-02-15	Room 103	15:00	17:00
2019-02-16	Ensemble Room A	08:00	10:00
2019-02-16	Room 101	10:00	12:00
2019-02-16	Ensemble Room A	10:00	12:00
2019-02-16	Ensemble Room A	15:00	17:00
2019-02-16	Room 101	15:00	17:00
2019-02-17	Room 101	08:00	10:00
2019-02-17	Ensemble Room A	10:00	12:00
2019-02-17	Ensemble Room B	10:00	12:00
2019-02-17	Room 101	13:00	15:00
2019-02-17	Ensemble Room A	13:00	15:00
2019-02-17	Ensemble Room A	15:00	17:00
2019-02-17	Room 101	15:00	17:00
2019-02-18	Room 101	08:00	10:00
2019-02-18	Room 102	08:00	10:00
2019-02-18	Room 101	10:00	12:00
2019-02-18	Ensemble Room A	15:00	17:00
2019-02-18	Ensemble Room B	15:00	17:00
2019-02-19	Room 101	08:00	10:00
2019-02-19	Room 102	08:00	10:00
2019-02-19	Ensemble Room A	08:00	10:00
2019-02-19	Ensemble Room A	10:00	12:00
2019-02-19	Room 101	10:00	12:00
2019-02-19	Ensemble Room A	13:00	15:00
2019-02-19	Ensemble Room B	13:00	15:00
2019-02-19	Room 101	15:00	17:00
2019-02-20	Room 101	08:00	10:00
2019-02-20	Room 102	08:00	10:00
2019-02-20	Ensemble Room A	10:00	12:00
2019-02-20	Room 101	10:00	12:00
2019-02-20	Ensemble Room B	10:00	12:00
2019-02-20	Ensemble Room A	15:00	17:00
2019-02-21	Ensemble Room A	10:00	12:00
2019-02-21	Room 101	10:00	12:00
2019-02-21	Room 101	13:00	15:00
2019-02-21	Room 102	13:00	15:00
2019-02-21	Room 103	13:00	15:00
2019-02-22	Room 101	13:00	15:00
2019-02-22	Ensemble Room A	15:00	17:00
2019-02-23	Room 101	10:00	12:00
2019-02-23	Ensemble Room A	15:00	17:00
2019-02-23	Ensemble Room B	15:00	17:00
2019-02-24	Room 101	10:00	12:00
2019-02-24	Ensemble Room A	13:00	15:00
2019-02-24	Ensemble Room A	15:00	17:00
2019-02-25	Ensemble Room A	08:00	10:00
2019-02-25	Ensemble Room A	10:00	12:00
2019-02-25	Ensemble Room B	10:00	12:00
2019-02-25	Ensemble Room C	10:00	12:00
2019-02-25	Room 101	15:00	17:00
2019-02-25	Ensemble Room A	15:00	17:00
2019-02-25	Ensemble Room B	15:00	17:00
2019-02-26	Room 101	08:00	10:00
2019-02-26	Room 101	10:00	12:00
2019-02-26	Ensemble Room A	10:00	12:00
2019-02-26	Room 101	13:00	15:00
2019-02-26	Ensemble Room A	15:00	17:00
2019-02-26	Room 101	15:00	17:00
2019-02-26	Room 102	15:00	17:00
2019-02-27	Room 101	08:00	10:00
2019-02-27	Room 101	10:00	12:00
2019-02-28	Ensemble Room A	08:00	10:00
2019-02-28	Room 101	10:00	12:00
2019-02-28	Room 102	10:00	12:00
2019-02-28	Ensemble Room A	10:00	12:00
2019-02-28	Ensemble Room A	13:00	15:00
2019-02-28	Room 101	13:00	15:00
2019-02-28	Ensemble Room A	15:00	17:00
2019-03-01	Room 101	08:00	10:00
2019-03-01	Ensemble Room A	08:00	10:00
2019-03-01	Room 101	10:00	12:00
2019-03-01	Room 102	10:00	12:00
2019-03-01	Ensemble Room A	15:00	17:00
2019-03-01	Ensemble Room B	15:00	17:00
2019-03-02	Ensemble Room A	08:00	10:00
2019-03-02	Room 101	08:00	10:00
2019-03-02	Room 101	10:00	12:00
2019-03-02	Room 102	10:00	12:00
2019-03-02	Room 101	15:00	17:00
2019-03-03	Ensemble Room A	10:00	12:00
2019-03-03	Room 101	15:00	17:00
2019-03-03	Room 102	15:00	17:00
2019-03-04	Room 101	10:00	12:00
2019-03-04	Ensemble Room A	10:00	12:00
2019-03-04	Room 101	13:00	15:00
2019-03-05	Ensemble Room A	13:00	15:00
2019-03-05	Room 101	13:00	15:00
2019-03-05	Ensemble Room A	15:00	17:00
2019-03-06	Ensemble Room A	13:00	15:00
2019-03-06	Room 101	13:00	15:00
2019-03-06	Ensemble Room A	15:00	17:00
2019-03-06	Room 101	15:00	17:00
2019-03-06	Room 102	15:00	17:00
2019-03-07	Ensemble Room A	08:00	10:00
2019-03-07	Room 101	10:00	12:00
2019-03-07	Room 101	13:00	15:00
2019-03-08	Ensemble Room A	08:00	10:00
2019-03-08	Ensemble Room B	08:00	10:00
2019-03-08	Ensemble Room C	08:00	10:00
2019-03-08	Room 101	10:00	12:00
2019-03-08	Room 102	10:00	12:00
2019-03-08	Room 103	10:00	12:00
2019-03-08	Ensemble Room A	13:00	15:00
2019-03-08	Ensemble Room B	13:00	15:00
2019-03-08	Room 101	13:00	15:00
2019-03-08	Room 101	15:00	17:00
2019-03-09	Ensemble Room A	10:00	12:00
2019-03-09	Ensemble Room B	10:00	12:00
2019-03-09	Room 101	10:00	12:00
2019-03-09	Ensemble Room A	15:00	17:00
2019-03-09	Ensemble Room B	15:00	17:00
2019-03-10	Room 101	08:00	10:00
2019-03-10	Ensemble Room A	08:00	10:00
2019-03-10	Room 101	13:00	15:00
2019-03-10	Room 101	15:00	17:00
2019-03-10	Room 102	15:00	17:00
2019-03-10	Ensemble Room A	15:00	17:00
2019-03-11	Room 101	08:00	10:00
2019-03-11	Room 102	08:00	10:00
2019-03-11	Room 101	10:00	12:00
2019-03-11	Room 101	13:00	15:00
2019-03-12	Ensemble Room A	08:00	10:00
2019-03-12	Ensemble Room B	08:00	10:00
2019-03-12	Ensemble Room A	13:00	15:00
2019-03-12	Ensemble Room B	13:00	15:00
2019-03-13	Room 101	08:00	10:00
2019-03-13	Room 101	13:00	15:00
2019-03-13	Ensemble Room A	13:00	15:00
2019-03-13	Ensemble Room A	15:00	17:00
2019-03-15	Ensemble Room A	08:00	10:00
2019-03-15	Ensemble Room A	10:00	12:00
2019-03-15	Room 101	13:00	15:00
2019-03-15	Room 102	13:00	15:00
2019-03-15	Room 101	15:00	17:00
2019-03-16	Room 101	08:00	10:00
2019-03-16	Room 102	08:00	10:00
2019-03-16	Room 101	10:00	12:00
2019-03-16	Ensemble Room A	10:00	12:00
2019-03-17	Ensemble Room A	08:00	10:00
2019-03-18	Ensemble Room A	08:00	10:00
2019-03-18	Ensemble Room A	10:00	12:00
2019-03-18	Room 101	10:00	12:00
2019-03-18	Room 101	13:00	15:00
2019-03-18	Ensemble Room A	15:00	17:00
2019-03-19	Ensemble Room A	08:00	10:00
2019-03-19	Room 101	10:00	12:00
2019-03-19	Ensemble Room A	13:00	15:00
2019-03-19	Room 101	15:00	17:00
2019-03-19	Ensemble Room A	15:00	17:00
2019-03-19	Ensemble Room B	15:00	17:00
2019-03-20	Room 101	08:00	10:00
2019-03-20	Room 102	08:00	10:00
2019-03-20	Ensemble Room A	08:00	10:00
2019-03-20	Ensemble Room A	10:00	12:00
2019-03-20	Ensemble Room A	13:00	15:00
2019-03-20	Room 101	15:00	17:00
2019-03-20	Room 102	15:00	17:00
2019-03-21	Room 101	08:00	10:00
2019-03-21	Ensemble Room A	10:00	12:00
2019-03-22	Room 101	10:00	12:00
2019-03-22	Room 102	10:00	12:00
2019-03-22	Ensemble Room A	13:00	15:00
2019-03-22	Ensemble Room B	13:00	15:00
2019-03-22	Room 101	15:00	17:00
2019-03-23	Room 101	08:00	10:00
2019-03-23	Ensemble Room A	13:00	15:00
2019-03-23	Ensemble Room A	15:00	17:00
2019-03-24	Ensemble Room A	10:00	12:00
2019-03-24	Room 101	10:00	12:00
2019-03-24	Ensemble Room A	15:00	17:00
2019-03-24	Room 101	15:00	17:00
2019-03-25	Ensemble Room A	08:00	10:00
2019-03-25	Ensemble Room A	10:00	12:00
2019-03-25	Ensemble Room B	10:00	12:00
2019-03-25	Ensemble Room A	15:00	17:00
2019-03-26	Ensemble Room A	08:00	10:00
2019-03-26	Ensemble Room B	08:00	10:00
2019-03-26	Ensemble Room A	15:00	17:00
2019-03-26	Ensemble Room B	15:00	17:00
2019-03-27	Ensemble Room A	08:00	10:00
2019-03-27	Room 101	08:00	10:00
2019-03-27	Ensemble Room A	10:00	12:00
2019-03-27	Room 101	10:00	12:00
2019-03-27	Ensemble Room A	13:00	15:00
2019-03-27	Room 101	15:00	17:00
2019-03-28	Ensemble Room A	08:00	10:00
2019-03-28	Ensemble Room B	08:00	10:00
2019-03-28	Room 101	13:00	15:00
2019-03-28	Room 102	13:00	15:00
2019-03-29	Ensemble Room A	10:00	12:00
2019-03-29	Ensemble Room A	13:00	15:00
2019-03-29	Ensemble Room B	13:00	15:00
2019-03-29	Room 101	15:00	17:00
2019-03-30	Room 101	08:00	10:00
2019-03-30	Room 101	10:00	12:00
2019-03-30	Room 101	13:00	15:00
2019-03-30	Room 101	15:00	17:00
2019-03-30	Ensemble Room A	15:00	17:00
2019-03-31	Room 101	08:00	10:00
2019-03-31	Ensemble Room A	10:00	12:00
2019-04-01	Room 101	08:00	10:00
2019-04-01	Room 102	08:00	10:00
2019-04-01	Ensemble Room A	10:00	12:00
2019-04-01	Ensemble Room B	10:00	12:00
2019-04-01	Ensemble Room A	13:00	15:00
2019-04-02	Ensemble Room A	08:00	10:00
2019-04-02	Ensemble Room A	13:00	15:00
2019-04-02	Ensemble Room A	15:00	17:00
2019-04-03	Room 101	10:00	12:00
2019-04-03	Room 101	13:00	15:00
2019-04-03	Ensemble Room A	13:00	15:00
2019-04-04	Ensemble Room A	08:00	10:00
2019-04-04	Room 101	08:00	10:00
2019-04-04	Room 101	10:00	12:00
2019-04-04	Room 102	10:00	12:00
2019-04-04	Ensemble Room A	13:00	15:00
2019-04-04	Ensemble Room B	13:00	15:00
2019-04-04	Ensemble Room C	13:00	15:00
2019-04-04	Room 101	15:00	17:00
2019-04-04	Room 102	15:00	17:00
2019-04-05	Ensemble Room A	08:00	10:00
2019-04-05	Ensemble Room B	08:00	10:00
2019-04-05	Ensemble Room C	08:00	10:00
2019-04-05	Room 101	10:00	12:00
2019-04-05	Room 102	10:00	12:00
2019-04-06	Room 101	08:00	10:00
2019-04-06	Ensemble Room A	08:00	10:00
2019-04-06	Ensemble Room A	10:00	12:00
2019-04-06	Room 101	13:00	15:00
2019-04-06	Ensemble Room A	13:00	15:00
2019-04-06	Ensemble Room B	13:00	15:00
2019-04-07	Ensemble Room A	10:00	12:00
2019-04-07	Ensemble Room B	10:00	12:00
2019-04-07	Room 101	15:00	17:00
2019-04-08	Ensemble Room A	08:00	10:00
2019-04-08	Room 101	08:00	10:00
2019-04-08	Room 101	13:00	15:00
2019-04-08	Ensemble Room A	13:00	15:00
2019-04-08	Ensemble Room A	15:00	17:00
2019-04-09	Ensemble Room A	08:00	10:00
2019-04-09	Ensemble Room B	08:00	10:00
2019-04-09	Ensemble Room A	10:00	12:00
2019-04-09	Ensemble Room B	10:00	12:00
2019-04-09	Ensemble Room A	13:00	15:00
2019-04-10	Ensemble Room A	08:00	10:00
2019-04-10	Ensemble Room B	08:00	10:00
2019-04-10	Room 101	10:00	12:00
2019-04-10	Ensemble Room A	10:00	12:00
2019-04-10	Ensemble Room B	10:00	12:00
2019-04-10	Room 101	13:00	15:00
2019-04-10	Room 102	13:00	15:00
2019-04-10	Ensemble Room A	15:00	17:00
2019-04-11	Ensemble Room A	08:00	10:00
2019-04-11	Ensemble Room B	08:00	10:00
2019-04-11	Room 101	08:00	10:00
2019-04-11	Ensemble Room A	10:00	12:00
2019-04-11	Ensemble Room A	13:00	15:00
2019-04-12	Ensemble Room A	10:00	12:00
2019-04-12	Ensemble Room A	15:00	17:00
2019-04-13	Room 101	08:00	10:00
2019-04-13	Ensemble Room A	08:00	10:00
2019-04-13	Ensemble Room A	10:00	12:00
2019-04-13	Room 101	13:00	15:00
2019-04-13	Ensemble Room A	13:00	15:00
2019-04-13	Room 101	15:00	17:00
2019-04-13	Ensemble Room A	15:00	17:00
2019-04-14	Room 101	08:00	10:00
2019-04-14	Ensemble Room A	10:00	12:00
2019-04-14	Room 101	13:00	15:00
2019-04-14	Room 102	13:00	15:00
2019-04-15	Ensemble Room A	13:00	15:00
2019-04-15	Ensemble Room A	15:00	17:00
2019-04-15	Room 101	15:00	17:00
2019-04-16	Ensemble Room A	10:00	12:00
2019-04-16	Room 101	13:00	15:00
2019-04-16	Ensemble Room A	13:00	15:00
2019-04-16	Room 101	15:00	17:00
2019-04-17	Ensemble Room A	10:00	12:00
2019-04-17	Ensemble Room B	10:00	12:00
2019-04-17	Ensemble Room A	13:00	15:00
2019-04-17	Ensemble Room A	15:00	17:00
2019-04-18	Room 101	08:00	10:00
2019-04-18	Ensemble Room A	13:00	15:00
2019-04-18	Ensemble Room B	13:00	15:00
2019-04-18	Room 101	15:00	17:00
2019-04-18	Room 102	15:00	17:00
2019-04-19	Ensemble Room A	08:00	10:00
2019-04-19	Ensemble Room A	15:00	17:00
2019-04-20	Room 101	10:00	12:00
2019-04-20	Ensemble Room A	10:00	12:00
2019-04-20	Room 102	10:00	12:00
2019-04-20	Ensemble Room A	13:00	15:00
2019-04-20	Ensemble Room A	15:00	17:00
2019-04-21	Ensemble Room A	08:00	10:00
2019-04-21	Ensemble Room A	10:00	12:00
2019-04-21	Room 101	10:00	12:00
2019-04-21	Ensemble Room A	13:00	15:00
2019-04-21	Room 101	15:00	17:00
2019-04-21	Ensemble Room A	15:00	17:00
2019-04-22	Room 101	10:00	12:00
2019-04-22	Room 102	10:00	12:00
2019-04-22	Room 103	10:00	12:00
2019-04-22	Ensemble Room A	13:00	15:00
2019-04-22	Ensemble Room A	15:00	17:00
2019-04-22	Room 101	15:00	17:00
2019-04-23	Ensemble Room A	08:00	10:00
2019-04-23	Room 101	08:00	10:00
2019-04-23	Room 101	10:00	12:00
2019-04-23	Room 101	13:00	15:00
2019-04-23	Ensemble Room A	13:00	15:00
2019-04-23	Room 102	13:00	15:00
2019-04-23	Room 101	15:00	17:00
2019-04-23	Room 102	15:00	17:00
2019-04-24	Room 101	08:00	10:00
2019-04-24	Room 102	08:00	10:00
2019-04-24	Room 101	10:00	12:00
2019-04-24	Ensemble Room A	10:00	12:00
2019-04-24	Room 102	10:00	12:00
2019-04-24	Ensemble Room A	13:00	15:00
2019-04-24	Room 101	15:00	17:00
2019-04-25	Ensemble Room A	08:00	10:00
2019-04-25	Room 101	13:00	15:00
2019-04-25	Room 101	15:00	17:00
2019-04-25	Room 102	15:00	17:00
2019-04-26	Ensemble Room A	08:00	10:00
2019-04-26	Ensemble Room A	13:00	15:00
2019-04-26	Room 101	15:00	17:00
2019-04-27	Ensemble Room A	08:00	10:00
2019-04-27	Ensemble Room B	08:00	10:00
2019-04-27	Ensemble Room C	08:00	10:00
2019-04-27	Ensemble Room A	10:00	12:00
2019-04-27	Room 101	13:00	15:00
2019-04-27	Ensemble Room A	13:00	15:00
2019-04-27	Ensemble Room A	15:00	17:00
2019-04-28	Room 101	08:00	10:00
2019-04-28	Ensemble Room A	10:00	12:00
2019-04-28	Ensemble Room B	10:00	12:00
2019-04-28	Room 101	15:00	17:00
2019-04-29	Room 101	08:00	10:00
2019-04-29	Ensemble Room A	08:00	10:00
2019-04-29	Room 101	10:00	12:00
2019-04-29	Room 102	10:00	12:00
2019-04-29	Room 101	15:00	17:00
2019-04-30	Ensemble Room A	08:00	10:00
2019-04-30	Room 101	08:00	10:00
2019-04-30	Room 101	10:00	12:00
2019-04-30	Room 102	10:00	12:00
2019-04-30	Ensemble Room A	10:00	12:00
2019-04-30	Ensemble Room A	13:00	15:00
2019-04-30	Room 101	15:00	17:00
2019-05-01	Ensemble Room A	08:00	10:00
2019-05-01	Ensemble Room A	10:00	12:00
2019-05-01	Room 101	13:00	15:00
2019-05-01	Ensemble Room A	15:00	17:00
2019-05-02	Ensemble Room A	08:00	10:00
2019-05-02	Room 101	08:00	10:00
2019-05-02	Room 101	10:00	12:00
2019-05-02	Ensemble Room A	10:00	12:00
2019-05-02	Ensemble Room A	13:00	15:00
2019-05-02	Room 101	13:00	15:00
2019-05-02	Room 102	13:00	15:00
2019-05-02	Ensemble Room A	15:00	17:00
2019-05-02	Ensemble Room B	15:00	17:00
2019-05-02	Ensemble Room C	15:00	17:00
2019-05-03	Room 101	13:00	15:00
2019-05-04	Ensemble Room A	08:00	10:00
2019-05-04	Ensemble Room A	10:00	12:00
2019-05-04	Ensemble Room B	10:00	12:00
2019-05-04	Ensemble Room A	13:00	15:00
2019-05-04	Room 101	15:00	17:00
2019-05-04	Ensemble Room A	15:00	17:00
2019-05-05	Room 101	08:00	10:00
2019-05-05	Room 101	10:00	12:00
2019-05-05	Ensemble Room A	10:00	12:00
2019-05-05	Room 102	10:00	12:00
2019-05-05	Room 101	13:00	15:00
2019-05-05	Ensemble Room A	15:00	17:00
2019-05-06	Room 101	08:00	10:00
2019-05-06	Ensemble Room A	08:00	10:00
2019-05-06	Room 101	13:00	15:00
2019-05-06	Room 102	13:00	15:00
2019-05-06	Room 103	13:00	15:00
2019-05-06	Room 101	15:00	17:00
2019-05-06	Room 102	15:00	17:00
2019-05-07	Room 101	08:00	10:00
2019-05-07	Room 102	08:00	10:00
2019-05-07	Room 101	10:00	12:00
2019-05-07	Room 102	10:00	12:00
2019-05-07	Ensemble Room A	13:00	15:00
2019-05-07	Ensemble Room B	13:00	15:00
2019-05-07	Room 101	15:00	17:00
2019-05-07	Ensemble Room A	15:00	17:00
2019-05-08	Ensemble Room A	08:00	10:00
2019-05-08	Room 101	10:00	12:00
2019-05-08	Room 102	10:00	12:00
2019-05-09	Ensemble Room A	10:00	12:00
2019-05-09	Room 101	13:00	15:00
2019-05-09	Room 101	15:00	17:00
2019-05-09	Room 102	15:00	17:00
2019-05-10	Room 101	08:00	10:00
2019-05-10	Room 101	15:00	17:00
2019-05-11	Room 101	08:00	10:00
2019-05-11	Room 102	08:00	10:00
2019-05-11	Room 101	10:00	12:00
2019-05-11	Room 102	10:00	12:00
2019-05-11	Room 101	15:00	17:00
2019-05-12	Ensemble Room A	08:00	10:00
2019-05-12	Room 101	08:00	10:00
2019-05-12	Ensemble Room B	08:00	10:00
2019-05-12	Room 101	10:00	12:00
2019-05-12	Ensemble Room A	13:00	15:00
2019-05-12	Ensemble Room A	15:00	17:00
2019-05-13	Room 101	10:00	12:00
2019-05-13	Ensemble Room A	13:00	15:00
2019-05-13	Ensemble Room A	15:00	17:00
2019-05-13	Room 101	15:00	17:00
2019-05-14	Room 101	08:00	10:00
2019-05-14	Room 101	10:00	12:00
2019-05-14	Ensemble Room A	13:00	15:00
2019-05-14	Ensemble Room B	13:00	15:00
2019-05-15	Room 101	10:00	12:00
2019-05-15	Room 102	10:00	12:00
2019-05-15	Room 101	13:00	15:00
2019-05-15	Ensemble Room A	15:00	17:00
2019-05-15	Room 101	15:00	17:00
2019-05-16	Room 101	08:00	10:00
2019-05-16	Ensemble Room A	08:00	10:00
2019-05-16	Room 101	13:00	15:00
2019-05-17	Room 101	10:00	12:00
2019-05-17	Ensemble Room A	10:00	12:00
2019-05-17	Ensemble Room A	13:00	15:00
2019-05-17	Ensemble Room B	13:00	15:00
2019-05-17	Room 101	15:00	17:00
2019-05-18	Room 101	08:00	10:00
2019-05-18	Ensemble Room A	08:00	10:00
2019-05-18	Ensemble Room A	10:00	12:00
2019-05-18	Room 101	15:00	17:00
2019-05-19	Ensemble Room A	10:00	12:00
2019-05-19	Ensemble Room A	13:00	15:00
2019-05-19	Room 101	15:00	17:00
2019-05-20	Ensemble Room A	08:00	10:00
2019-05-20	Ensemble Room B	08:00	10:00
2019-05-20	Ensemble Room A	10:00	12:00
2019-05-20	Room 101	10:00	12:00
2019-05-20	Room 102	10:00	12:00
2019-05-20	Room 101	15:00	17:00
2019-05-21	Ensemble Room A	08:00	10:00
2019-05-21	Ensemble Room A	10:00	12:00
2019-05-21	Ensemble Room A	13:00	15:00
2019-05-21	Ensemble Room B	13:00	15:00
2019-05-21	Ensemble Room A	15:00	17:00
2019-05-21	Ensemble Room B	15:00	17:00
2019-05-21	Ensemble Room C	15:00	17:00
2019-05-22	Room 101	10:00	12:00
2019-05-22	Ensemble Room A	10:00	12:00
2019-05-22	Room 101	15:00	17:00
2019-05-23	Room 101	10:00	12:00
2019-05-23	Ensemble Room A	10:00	12:00
2019-05-24	Room 101	08:00	10:00
2019-05-24	Ensemble Room A	10:00	12:00
2019-05-24	Ensemble Room A	13:00	15:00
2019-05-24	Room 101	13:00	15:00
2019-05-24	Room 101	15:00	17:00
2019-05-25	Ensemble Room A	08:00	10:00
2019-05-25	Room 101	10:00	12:00
2019-05-25	Room 102	10:00	12:00
2019-05-25	Room 103	10:00	12:00
2019-05-25	Ensemble Room A	13:00	15:00
2019-05-25	Ensemble Room B	13:00	15:00
2019-05-25	Ensemble Room A	15:00	17:00
2019-05-25	Room 101	15:00	17:00
2019-05-26	Room 101	13:00	15:00
2019-05-26	Ensemble Room A	13:00	15:00
2019-05-26	Room 102	13:00	15:00
2019-05-26	Room 101	15:00	17:00
2019-05-26	Ensemble Room A	15:00	17:00
2019-05-26	Ensemble Room B	15:00	17:00
2019-05-27	Room 101	08:00	10:00
2019-05-27	Ensemble Room A	13:00	15:00
2019-05-27	Ensemble Room A	15:00	17:00
2019-05-27	Ensemble Room B	15:00	17:00
2019-05-28	Ensemble Room A	08:00	10:00
2019-05-28	Room 101	08:00	10:00
2019-05-28	Ensemble Room B	08:00	10:00
2019-05-28	Ensemble Room A	10:00	12:00
2019-05-29	Room 101	08:00	10:00
2019-05-29	Ensemble Room A	08:00	10:00
2019-05-29	Ensemble Room A	10:00	12:00
2019-05-29	Room 101	10:00	12:00
2019-05-29	Ensemble Room A	13:00	15:00
2019-05-29	Ensemble Room A	15:00	17:00
2019-05-30	Ensemble Room A	08:00	10:00
2019-05-30	Ensemble Room B	08:00	10:00
2019-05-30	Room 101	10:00	12:00
2019-05-30	Ensemble Room A	13:00	15:00
2019-05-30	Ensemble Room A	15:00	17:00
2019-05-31	Ensemble Room A	08:00	10:00
2019-05-31	Room 101	10:00	12:00
2019-05-31	Room 102	10:00	12:00
2019-05-31	Room 101	13:00	15:00
2019-06-01	Room 101	08:00	10:00
2019-06-01	Room 102	08:00	10:00
2019-06-01	Room 103	08:00	10:00
2019-06-01	Room 101	10:00	12:00
2019-06-01	Ensemble Room A	13:00	15:00
2019-06-01	Ensemble Room A	15:00	17:00
2019-06-01	Room 101	15:00	17:00
2019-06-02	Ensemble Room A	08:00	10:00
2019-06-02	Room 101	08:00	10:00
2019-06-02	Room 101	10:00	12:00
2019-06-02	Room 101	13:00	15:00
2019-06-02	Ensemble Room A	15:00	17:00
2019-06-02	Room 101	15:00	17:00
2019-06-02	Ensemble Room B	15:00	17:00
2019-06-03	Ensemble Room A	08:00	10:00
2019-06-03	Ensemble Room B	08:00	10:00
2019-06-03	Ensemble Room A	10:00	12:00
2019-06-03	Room 101	13:00	15:00
2019-06-03	Room 102	13:00	15:00
2019-06-03	Ensemble Room A	15:00	17:00
2019-06-04	Room 101	08:00	10:00
2019-06-04	Ensemble Room A	10:00	12:00
2019-06-04	Room 101	10:00	12:00
2019-06-04	Ensemble Room A	15:00	17:00
2019-06-04	Room 101	15:00	17:00
2019-06-05	Room 101	08:00	10:00
2019-06-05	Room 101	10:00	12:00
2019-06-05	Ensemble Room A	10:00	12:00
2019-06-05	Ensemble Room A	13:00	15:00
2019-06-05	Room 101	13:00	15:00
2019-06-06	Room 101	08:00	10:00
2019-06-06	Ensemble Room A	10:00	12:00
2019-06-06	Room 101	10:00	12:00
2019-06-06	Ensemble Room A	13:00	15:00
2019-06-06	Ensemble Room B	13:00	15:00
2019-06-06	Ensemble Room A	15:00	17:00
2019-06-07	Ensemble Room A	08:00	10:00
2019-06-07	Room 101	10:00	12:00
2019-06-07	Ensemble Room A	10:00	12:00
2019-06-07	Room 101	13:00	15:00
2019-06-07	Room 102	13:00	15:00
2019-06-07	Ensemble Room A	15:00	17:00
2019-06-08	Room 101	08:00	10:00
2019-06-08	Room 102	08:00	10:00
2019-06-08	Ensemble Room A	08:00	10:00
2019-06-08	Ensemble Room A	10:00	12:00
2019-06-08	Room 101	13:00	15:00
2019-06-08	Ensemble Room A	13:00	15:00
2019-06-08	Room 101	15:00	17:00
2019-06-08	Room 102	15:00	17:00
2019-06-09	Ensemble Room A	08:00	10:00
2019-06-09	Room 101	08:00	10:00
2019-06-09	Room 101	10:00	12:00
2019-06-09	Ensemble Room A	13:00	15:00
2019-06-09	Room 101	15:00	17:00
2019-06-10	Ensemble Room A	08:00	10:00
2019-06-10	Ensemble Room B	08:00	10:00
2019-06-10	Ensemble Room C	08:00	10:00
2019-06-10	Ensemble Room A	10:00	12:00
2019-06-10	Ensemble Room A	13:00	15:00
2019-06-10	Ensemble Room A	15:00	17:00
2019-06-10	Room 101	15:00	17:00
2019-06-11	Room 101	10:00	12:00
2019-06-11	Room 101	13:00	15:00
2019-06-11	Ensemble Room A	13:00	15:00
2019-06-12	Ensemble Room A	08:00	10:00
2019-06-12	Ensemble Room A	15:00	17:00
2019-06-13	Room 101	08:00	10:00
2019-06-13	Room 102	08:00	10:00
2019-06-13	Ensemble Room A	15:00	17:00
2019-06-13	Ensemble Room B	15:00	17:00
2019-06-13	Ensemble Room C	15:00	17:00
2019-06-14	Room 101	08:00	10:00
2019-06-14	Ensemble Room A	13:00	15:00
2019-06-14	Ensemble Room B	13:00	15:00
2019-06-14	Room 101	13:00	15:00
2019-06-14	Ensemble Room A	15:00	17:00
2019-06-14	Ensemble Room B	15:00	17:00
2019-06-15	Ensemble Room A	08:00	10:00
2019-06-15	Room 101	13:00	15:00
2019-06-15	Room 101	15:00	17:00
2019-06-16	Room 101	08:00	10:00
2019-06-16	Ensemble Room A	10:00	12:00
2019-06-16	Room 101	13:00	15:00
2019-06-17	Ensemble Room A	08:00	10:00
2019-06-17	Ensemble Room A	13:00	15:00
2019-06-17	Ensemble Room A	15:00	17:00
2019-06-17	Ensemble Room B	15:00	17:00
2019-06-18	Ensemble Room A	08:00	10:00
2019-06-18	Ensemble Room B	08:00	10:00
2019-06-18	Ensemble Room A	10:00	12:00
2019-06-18	Ensemble Room B	10:00	12:00
2019-06-18	Room 101	13:00	15:00
2019-06-18	Room 101	15:00	17:00
2019-06-19	Room 101	08:00	10:00
2019-06-19	Ensemble Room A	08:00	10:00
2019-06-19	Room 101	10:00	12:00
2019-06-19	Ensemble Room A	10:00	12:00
2019-06-19	Room 101	13:00	15:00
2019-06-19	Room 102	13:00	15:00
2019-06-19	Ensemble Room A	13:00	15:00
2019-06-19	Room 101	15:00	17:00
2019-06-19	Room 102	15:00	17:00
2019-06-20	Ensemble Room A	10:00	12:00
2019-06-20	Room 101	10:00	12:00
2019-06-21	Room 101	10:00	12:00
2019-06-21	Ensemble Room A	15:00	17:00
2019-06-22	Room 101	08:00	10:00
2019-06-22	Room 101	10:00	12:00
2019-06-22	Ensemble Room A	10:00	12:00
2019-06-22	Ensemble Room A	13:00	15:00
2019-06-22	Ensemble Room B	13:00	15:00
2019-06-23	Room 101	08:00	10:00
2019-06-23	Room 102	08:00	10:00
2019-06-23	Ensemble Room A	10:00	12:00
2019-06-23	Room 101	10:00	12:00
2019-06-23	Ensemble Room B	10:00	12:00
2019-06-23	Room 101	13:00	15:00
2019-06-23	Room 102	13:00	15:00
2019-06-24	Room 101	10:00	12:00
2019-06-24	Ensemble Room A	13:00	15:00
2019-06-24	Room 101	13:00	15:00
2019-06-24	Room 101	15:00	17:00
2019-06-24	Ensemble Room A	15:00	17:00
2019-06-25	Room 101	08:00	10:00
2019-06-25	Ensemble Room A	08:00	10:00
2019-06-25	Ensemble Room B	08:00	10:00
2019-06-25	Ensemble Room A	10:00	12:00
2019-06-25	Ensemble Room A	13:00	15:00
2019-06-25	Ensemble Room A	15:00	17:00
2019-06-25	Room 101	15:00	17:00
2019-06-25	Ensemble Room B	15:00	17:00
2019-06-26	Ensemble Room A	10:00	12:00
2019-06-26	Ensemble Room A	15:00	17:00
2019-06-26	Ensemble Room B	15:00	17:00
2019-06-27	Room 101	08:00	10:00
2019-06-27	Ensemble Room A	10:00	12:00
2019-06-27	Room 101	10:00	12:00
2019-06-27	Room 102	10:00	12:00
2019-06-27	Ensemble Room A	13:00	15:00
2019-06-27	Ensemble Room B	13:00	15:00
2019-06-27	Ensemble Room A	15:00	17:00
2019-06-27	Ensemble Room B	15:00	17:00
2019-06-27	Ensemble Room C	15:00	17:00
2019-06-28	Ensemble Room A	08:00	10:00
2019-06-28	Room 101	08:00	10:00
2019-06-28	Ensemble Room A	10:00	12:00
2019-06-28	Ensemble Room A	13:00	15:00
2019-06-28	Ensemble Room B	13:00	15:00
2019-06-28	Room 101	15:00	17:00
2019-06-29	Room 101	08:00	10:00
2019-06-29	Room 101	10:00	12:00
2019-06-29	Ensemble Room A	10:00	12:00
2019-06-29	Room 101	13:00	15:00
2019-06-29	Room 102	13:00	15:00
2019-06-29	Ensemble Room A	15:00	17:00
2019-06-30	Room 101	10:00	12:00
2019-06-30	Room 102	10:00	12:00
2019-06-30	Room 103	10:00	12:00
2019-06-30	Ensemble Room A	13:00	15:00
2019-06-30	Room 101	13:00	15:00
2019-06-30	Room 102	13:00	15:00
2019-06-30	Ensemble Room A	15:00	17:00
2019-07-01	Room 101	08:00	10:00
2019-07-01	Room 102	08:00	10:00
2019-07-01	Room 101	10:00	12:00
2019-07-01	Room 102	10:00	12:00
2019-07-01	Room 101	13:00	15:00
2019-07-01	Ensemble Room A	15:00	17:00
2019-07-01	Ensemble Room B	15:00	17:00
2019-07-02	Room 101	08:00	10:00
2019-07-02	Room 102	08:00	10:00
2019-07-02	Ensemble Room A	08:00	10:00
2019-07-02	Ensemble Room A	10:00	12:00
2019-07-02	Ensemble Room A	13:00	15:00
2019-07-02	Ensemble Room A	15:00	17:00
2019-07-03	Room 101	08:00	10:00
2019-07-03	Room 102	08:00	10:00
2019-07-03	Room 101	15:00	17:00
2019-07-04	Ensemble Room A	10:00	12:00
2019-07-04	Ensemble Room B	10:00	12:00
2019-07-04	Ensemble Room A	15:00	17:00
2019-07-05	Room 101	08:00	10:00
2019-07-05	Room 102	08:00	10:00
2019-07-05	Room 101	10:00	12:00
2019-07-05	Ensemble Room A	13:00	15:00
2019-07-06	Room 101	08:00	10:00
2019-07-06	Ensemble Room A	08:00	10:00
2019-07-06	Room 101	10:00	12:00
2019-07-06	Ensemble Room A	10:00	12:00
2019-07-06	Room 101	13:00	15:00
2019-07-06	Room 101	15:00	17:00
2019-07-06	Room 102	15:00	17:00
2019-07-07	Room 101	13:00	15:00
2019-07-07	Room 101	15:00	17:00
2019-07-08	Room 101	08:00	10:00
2019-07-08	Ensemble Room A	08:00	10:00
2019-07-08	Room 101	15:00	17:00
2019-07-09	Ensemble Room A	10:00	12:00
2019-07-09	Room 101	10:00	12:00
2019-07-09	Room 102	10:00	12:00
2019-07-09	Room 101	13:00	15:00
2019-07-09	Ensemble Room A	15:00	17:00
2019-07-09	Room 101	15:00	17:00
2019-07-09	Room 102	15:00	17:00
2019-07-10	Room 101	08:00	10:00
2019-07-10	Ensemble Room A	08:00	10:00
2019-07-10	Room 101	13:00	15:00
2019-07-10	Ensemble Room A	13:00	15:00
2019-07-10	Ensemble Room B	13:00	15:00
2019-07-10	Ensemble Room A	15:00	17:00
2019-07-10	Room 101	15:00	17:00
2019-07-11	Ensemble Room A	08:00	10:00
2019-07-11	Room 101	10:00	12:00
2019-07-11	Ensemble Room A	13:00	15:00
2019-07-11	Room 101	15:00	17:00
2019-07-12	Ensemble Room A	08:00	10:00
2019-07-12	Ensemble Room B	08:00	10:00
2019-07-12	Ensemble Room A	15:00	17:00
2019-07-12	Ensemble Room B	15:00	17:00
2019-07-13	Ensemble Room A	08:00	10:00
2019-07-13	Room 101	10:00	12:00
2019-07-13	Ensemble Room A	13:00	15:00
2019-07-13	Room 101	13:00	15:00
2019-07-13	Room 101	15:00	17:00
2019-07-14	Room 101	08:00	10:00
2019-07-14	Ensemble Room A	10:00	12:00
2019-07-14	Room 101	10:00	12:00
2019-07-14	Ensemble Room A	13:00	15:00
2019-07-15	Ensemble Room A	10:00	12:00
2019-07-15	Room 101	10:00	12:00
2019-07-15	Room 101	13:00	15:00
2019-07-15	Room 102	13:00	15:00
2019-07-15	Ensemble Room A	15:00	17:00
2019-07-15	Ensemble Room B	15:00	17:00
2019-07-16	Room 101	08:00	10:00
2019-07-16	Ensemble Room A	08:00	10:00
2019-07-16	Room 101	10:00	12:00
2019-07-16	Room 101	15:00	17:00
2019-07-17	Ensemble Room A	08:00	10:00
2019-07-17	Room 101	15:00	17:00
2019-07-18	Room 101	08:00	10:00
2019-07-18	Room 102	08:00	10:00
2019-07-18	Room 101	10:00	12:00
2019-07-18	Ensemble Room A	13:00	15:00
2019-07-18	Ensemble Room A	15:00	17:00
2019-07-19	Ensemble Room A	13:00	15:00
2019-07-19	Room 101	15:00	17:00
2019-07-20	Room 101	08:00	10:00
2019-07-20	Room 101	10:00	12:00
2019-07-20	Room 102	10:00	12:00
2019-07-20	Ensemble Room A	10:00	12:00
2019-07-20	Ensemble Room A	13:00	15:00
2019-07-20	Room 101	13:00	15:00
2019-07-20	Ensemble Room A	15:00	17:00
2019-07-20	Room 101	15:00	17:00
2019-07-20	Room 102	15:00	17:00
2019-07-21	Ensemble Room A	08:00	10:00
2019-07-21	Room 101	08:00	10:00
2019-07-21	Room 101	15:00	17:00
2019-07-21	Room 102	15:00	17:00
2019-07-22	Ensemble Room A	08:00	10:00
2019-07-22	Ensemble Room A	10:00	12:00
2019-07-22	Room 101	10:00	12:00
2019-07-22	Room 101	13:00	15:00
2019-07-22	Room 102	13:00	15:00
2019-07-22	Ensemble Room A	15:00	17:00
2019-07-22	Room 101	15:00	17:00
2019-07-23	Room 101	08:00	10:00
2019-07-23	Room 102	08:00	10:00
2019-07-23	Room 101	10:00	12:00
2019-07-23	Room 101	13:00	15:00
2019-07-23	Ensemble Room A	13:00	15:00
2019-07-24	Room 101	08:00	10:00
2019-07-24	Room 102	08:00	10:00
2019-07-24	Ensemble Room A	13:00	15:00
2019-07-24	Ensemble Room B	13:00	15:00
2019-07-24	Ensemble Room A	15:00	17:00
2019-07-24	Room 101	15:00	17:00
2019-07-24	Room 102	15:00	17:00
2019-07-25	Ensemble Room A	08:00	10:00
2019-07-25	Room 101	08:00	10:00
2019-07-25	Room 101	10:00	12:00
2019-07-25	Ensemble Room A	13:00	15:00
2019-07-25	Room 101	13:00	15:00
2019-07-25	Ensemble Room A	15:00	17:00
2019-07-25	Ensemble Room B	15:00	17:00
2019-07-26	Room 101	10:00	12:00
2019-07-26	Room 102	10:00	12:00
2019-07-26	Room 101	13:00	15:00
2019-07-26	Room 101	15:00	17:00
2019-07-26	Ensemble Room A	15:00	17:00
2019-07-27	Room 101	08:00	10:00
2019-07-27	Ensemble Room A	08:00	10:00
2019-07-27	Room 102	08:00	10:00
2019-07-27	Ensemble Room A	10:00	12:00
2019-07-27	Ensemble Room B	10:00	12:00
2019-07-27	Room 101	13:00	15:00
2019-07-27	Ensemble Room A	15:00	17:00
2019-07-28	Room 101	10:00	12:00
2019-07-28	Room 102	10:00	12:00
2019-07-28	Ensemble Room A	13:00	15:00
2019-07-28	Ensemble Room B	13:00	15:00
2019-07-28	Room 101	15:00	17:00
2019-07-28	Ensemble Room A	15:00	17:00
2019-07-28	Ensemble Room B	15:00	17:00
2019-07-29	Ensemble Room A	08:00	10:00
2019-07-29	Ensemble Room B	08:00	10:00
2019-07-29	Ensemble Room A	10:00	12:00
2019-07-29	Ensemble Room A	13:00	15:00
2019-07-30	Room 101	08:00	10:00
2019-07-30	Ensemble Room A	08:00	10:00
2019-07-30	Room 102	08:00	10:00
2019-07-30	Room 101	10:00	12:00
2019-07-30	Room 101	13:00	15:00
2019-07-31	Room 101	08:00	10:00
2019-07-31	Room 101	10:00	12:00
2019-07-31	Room 101	13:00	15:00
2019-07-31	Ensemble Room A	15:00	17:00
2019-07-31	Ensemble Room B	15:00	17:00
2019-07-31	Ensemble Room C	15:00	17:00
2019-08-01	Ensemble Room A	08:00	10:00
2019-08-01	Ensemble Room A	13:00	15:00
2019-08-01	Room 101	13:00	15:00
2019-08-01	Room 101	15:00	17:00
2019-08-01	Room 102	15:00	17:00
2019-08-02	Ensemble Room A	08:00	10:00
2019-08-02	Room 101	10:00	12:00
2019-08-02	Room 102	10:00	12:00
2019-08-02	Room 103	10:00	12:00
2019-08-02	Room 101	13:00	15:00
2019-08-02	Ensemble Room A	13:00	15:00
2019-08-02	Room 101	15:00	17:00
2019-08-02	Room 102	15:00	17:00
2019-08-03	Ensemble Room A	08:00	10:00
2019-08-03	Ensemble Room A	10:00	12:00
2019-08-03	Room 101	13:00	15:00
2019-08-03	Ensemble Room A	13:00	15:00
2019-08-03	Room 101	15:00	17:00
2019-08-04	Room 101	08:00	10:00
2019-08-04	Room 101	10:00	12:00
2019-08-04	Room 102	10:00	12:00
2019-08-04	Ensemble Room A	13:00	15:00
2019-08-04	Ensemble Room A	15:00	17:00
2019-08-05	Room 101	10:00	12:00
2019-08-05	Ensemble Room A	10:00	12:00
2019-08-05	Room 102	10:00	12:00
2019-08-06	Ensemble Room A	10:00	12:00
2019-08-06	Room 101	15:00	17:00
2019-08-07	Room 101	13:00	15:00
2019-08-07	Ensemble Room A	13:00	15:00
2019-08-07	Room 101	15:00	17:00
2019-08-07	Room 102	15:00	17:00
2019-08-08	Ensemble Room A	08:00	10:00
2019-08-08	Room 101	13:00	15:00
2019-08-08	Room 101	15:00	17:00
2019-08-08	Ensemble Room A	15:00	17:00
2019-08-08	Room 102	15:00	17:00
2019-08-09	Room 101	08:00	10:00
2019-08-09	Ensemble Room A	08:00	10:00
2019-08-09	Room 101	10:00	12:00
2019-08-09	Room 101	13:00	15:00
2019-08-09	Room 101	15:00	17:00
2019-08-10	Room 101	08:00	10:00
2019-08-10	Ensemble Room A	10:00	12:00
2019-08-10	Room 101	10:00	12:00
2019-08-10	Ensemble Room A	15:00	17:00
2019-08-10	Ensemble Room B	15:00	17:00
2019-08-11	Ensemble Room A	10:00	12:00
2019-08-12	Room 101	08:00	10:00
2019-08-12	Ensemble Room A	10:00	12:00
2019-08-12	Ensemble Room B	10:00	12:00
2019-08-12	Room 101	13:00	15:00
2019-08-12	Ensemble Room A	13:00	15:00
2019-08-12	Room 101	15:00	17:00
2019-08-12	Room 102	15:00	17:00
2019-08-13	Ensemble Room A	08:00	10:00
2019-08-13	Room 101	08:00	10:00
2019-08-13	Ensemble Room A	10:00	12:00
2019-08-13	Ensemble Room B	10:00	12:00
2019-08-13	Ensemble Room A	15:00	17:00
2019-08-13	Ensemble Room B	15:00	17:00
2019-08-14	Room 101	08:00	10:00
2019-08-14	Room 102	08:00	10:00
2019-08-14	Ensemble Room A	08:00	10:00
2019-08-14	Room 101	10:00	12:00
2019-08-14	Ensemble Room A	10:00	12:00
2019-08-14	Room 102	10:00	12:00
2019-08-14	Room 101	13:00	15:00
2019-08-14	Ensemble Room A	13:00	15:00
2019-08-14	Room 101	15:00	17:00
2019-08-14	Ensemble Room A	15:00	17:00
2019-08-15	Ensemble Room A	08:00	10:00
2019-08-15	Ensemble Room B	08:00	10:00
2019-08-15	Room 101	08:00	10:00
2019-08-15	Ensemble Room A	10:00	12:00
2019-08-15	Ensemble Room A	13:00	15:00
2019-08-15	Ensemble Room A	15:00	17:00
2019-08-16	Ensemble Room A	13:00	15:00
2019-08-16	Ensemble Room B	13:00	15:00
2019-08-16	Ensemble Room A	15:00	17:00
2019-08-16	Room 101	15:00	17:00
2019-08-17	Ensemble Room A	08:00	10:00
2019-08-17	Ensemble Room B	08:00	10:00
2019-08-17	Room 101	10:00	12:00
2019-08-17	Room 101	13:00	15:00
2019-08-17	Ensemble Room A	15:00	17:00
2019-08-17	Room 101	15:00	17:00
2019-08-18	Room 101	10:00	12:00
2019-08-18	Room 101	13:00	15:00
2019-08-18	Ensemble Room A	15:00	17:00
2019-08-18	Ensemble Room B	15:00	17:00
2019-08-19	Ensemble Room A	10:00	12:00
2019-08-19	Room 101	10:00	12:00
2019-08-19	Room 102	10:00	12:00
2019-08-19	Room 101	13:00	15:00
2019-08-19	Room 102	13:00	15:00
2019-08-19	Ensemble Room A	15:00	17:00
2019-08-20	Room 101	08:00	10:00
2019-08-20	Room 102	08:00	10:00
2019-08-20	Room 101	10:00	12:00
2019-08-20	Room 101	15:00	17:00
2019-08-20	Room 102	15:00	17:00
2019-08-20	Ensemble Room A	15:00	17:00
2019-08-21	Ensemble Room A	08:00	10:00
2019-08-21	Ensemble Room A	10:00	12:00
2019-08-21	Ensemble Room B	10:00	12:00
2019-08-21	Ensemble Room A	13:00	15:00
2019-08-21	Room 101	13:00	15:00
2019-08-21	Room 101	15:00	17:00
2019-08-22	Room 101	10:00	12:00
2019-08-22	Room 101	13:00	15:00
2019-08-23	Room 101	08:00	10:00
2019-08-23	Room 101	10:00	12:00
2019-08-23	Room 102	10:00	12:00
2019-08-23	Ensemble Room A	13:00	15:00
2019-08-23	Room 101	15:00	17:00
2019-08-24	Room 101	08:00	10:00
2019-08-24	Room 102	08:00	10:00
2019-08-24	Ensemble Room A	13:00	15:00
2019-08-25	Room 101	08:00	10:00
2019-08-25	Room 102	08:00	10:00
2019-08-25	Room 101	10:00	12:00
2019-08-25	Room 102	10:00	12:00
2019-08-25	Room 103	10:00	12:00
2019-08-25	Room 101	13:00	15:00
2019-08-25	Room 102	13:00	15:00
2019-08-25	Ensemble Room A	15:00	17:00
2019-08-25	Room 101	15:00	17:00
2019-08-25	Room 102	15:00	17:00
2019-08-26	Ensemble Room A	08:00	10:00
2019-08-26	Ensemble Room A	13:00	15:00
2019-08-26	Ensemble Room B	13:00	15:00
2019-08-26	Room 101	13:00	15:00
2019-08-26	Room 101	15:00	17:00
2019-08-26	Ensemble Room A	15:00	17:00
2019-08-27	Room 101	08:00	10:00
2019-08-27	Room 102	08:00	10:00
2019-08-27	Room 101	13:00	15:00
2019-08-27	Ensemble Room A	13:00	15:00
2019-08-27	Ensemble Room A	15:00	17:00
2019-08-27	Ensemble Room B	15:00	17:00
2019-08-27	Ensemble Room C	15:00	17:00
2019-08-28	Room 101	08:00	10:00
2019-08-28	Room 101	13:00	15:00
2019-08-28	Ensemble Room A	13:00	15:00
2019-08-29	Ensemble Room A	08:00	10:00
2019-08-29	Ensemble Room A	10:00	12:00
2019-08-29	Ensemble Room A	13:00	15:00
2019-08-29	Ensemble Room A	15:00	17:00
2019-08-29	Room 101	15:00	17:00
2019-08-29	Ensemble Room B	15:00	17:00
2019-08-30	Room 101	08:00	10:00
2019-08-30	Room 101	10:00	12:00
2019-08-30	Ensemble Room A	10:00	12:00
2019-08-30	Room 101	13:00	15:00
2019-08-31	Ensemble Room A	08:00	10:00
2019-08-31	Room 101	13:00	15:00
2019-08-31	Room 102	13:00	15:00
2019-08-31	Ensemble Room A	13:00	15:00
2019-08-31	Room 101	15:00	17:00
2019-08-31	Room 102	15:00	17:00
2019-09-01	Room 101	13:00	15:00
2019-09-01	Room 101	15:00	17:00
2019-09-01	Ensemble Room A	15:00	17:00
2019-09-02	Room 101	08:00	10:00
2019-09-02	Ensemble Room A	08:00	10:00
2019-09-02	Room 101	10:00	12:00
2019-09-02	Room 101	13:00	15:00
2019-09-02	Ensemble Room A	15:00	17:00
2019-09-02	Ensemble Room B	15:00	17:00
2019-09-03	Ensemble Room A	08:00	10:00
2019-09-03	Room 101	08:00	10:00
2019-09-03	Room 101	10:00	12:00
2019-09-03	Ensemble Room A	10:00	12:00
2019-09-03	Room 102	10:00	12:00
2019-09-03	Ensemble Room A	13:00	15:00
2019-09-03	Ensemble Room A	15:00	17:00
2019-09-03	Ensemble Room B	15:00	17:00
2019-09-03	Ensemble Room C	15:00	17:00
2019-09-04	Room 101	08:00	10:00
2019-09-04	Ensemble Room A	08:00	10:00
2019-09-04	Room 101	10:00	12:00
2019-09-04	Room 101	15:00	17:00
2019-09-05	Room 101	08:00	10:00
2019-09-05	Ensemble Room A	10:00	12:00
2019-09-05	Ensemble Room B	10:00	12:00
2019-09-05	Room 101	13:00	15:00
2019-09-05	Room 101	15:00	17:00
2019-09-06	Ensemble Room A	08:00	10:00
2019-09-06	Ensemble Room B	08:00	10:00
2019-09-06	Ensemble Room A	10:00	12:00
2019-09-06	Room 101	13:00	15:00
2019-09-06	Room 102	13:00	15:00
2019-09-06	Ensemble Room A	15:00	17:00
2019-09-06	Room 101	15:00	17:00
2019-09-06	Room 102	15:00	17:00
2019-09-07	Room 101	08:00	10:00
2019-09-07	Ensemble Room A	10:00	12:00
2019-09-07	Ensemble Room B	10:00	12:00
2019-09-07	Ensemble Room A	13:00	15:00
2019-09-07	Room 101	15:00	17:00
2019-09-08	Room 101	08:00	10:00
2019-09-08	Ensemble Room A	10:00	12:00
2019-09-08	Ensemble Room A	13:00	15:00
2019-09-08	Room 101	13:00	15:00
2019-09-08	Ensemble Room A	15:00	17:00
2019-09-09	Ensemble Room A	08:00	10:00
2019-09-09	Ensemble Room A	10:00	12:00
2019-09-09	Room 101	13:00	15:00
2019-09-09	Room 101	15:00	17:00
2019-09-10	Room 101	10:00	12:00
2019-09-10	Room 102	10:00	12:00
2019-09-10	Room 101	15:00	17:00
2019-09-11	Ensemble Room A	10:00	12:00
2019-09-11	Ensemble Room A	13:00	15:00
2019-09-11	Room 101	13:00	15:00
2019-09-12	Ensemble Room A	10:00	12:00
2019-09-12	Ensemble Room A	13:00	15:00
2019-09-12	Ensemble Room B	13:00	15:00
2019-09-12	Room 101	15:00	17:00
2019-09-13	Ensemble Room A	13:00	15:00
2019-09-13	Ensemble Room A	15:00	17:00
2019-09-13	Room 101	15:00	17:00
2019-09-14	Ensemble Room A	13:00	15:00
2019-09-14	Ensemble Room B	13:00	15:00
2019-09-15	Ensemble Room A	08:00	10:00
2019-09-15	Ensemble Room B	08:00	10:00
2019-09-15	Room 101	10:00	12:00
2019-09-15	Ensemble Room A	10:00	12:00
2019-09-15	Room 101	15:00	17:00
2019-09-15	Ensemble Room A	15:00	17:00
2019-09-16	Ensemble Room A	08:00	10:00
2019-09-16	Ensemble Room B	08:00	10:00
2019-09-16	Room 101	08:00	10:00
2019-09-16	Room 101	15:00	17:00
2019-09-17	Room 101	08:00	10:00
2019-09-17	Ensemble Room A	10:00	12:00
2019-09-17	Room 101	10:00	12:00
2019-09-17	Ensemble Room A	13:00	15:00
2019-09-17	Room 101	15:00	17:00
2019-09-17	Ensemble Room A	15:00	17:00
2019-09-17	Room 102	15:00	17:00
2019-09-18	Room 101	08:00	10:00
2019-09-18	Ensemble Room A	13:00	15:00
2019-09-18	Ensemble Room A	15:00	17:00
2019-09-19	Ensemble Room A	08:00	10:00
2019-09-19	Room 101	08:00	10:00
2019-09-19	Ensemble Room B	08:00	10:00
2019-09-19	Ensemble Room A	15:00	17:00
2019-09-19	Ensemble Room B	15:00	17:00
2019-09-20	Room 101	13:00	15:00
2019-09-21	Ensemble Room A	08:00	10:00
2019-09-21	Ensemble Room A	13:00	15:00
2019-09-21	Room 101	13:00	15:00
2019-09-21	Ensemble Room B	13:00	15:00
2019-09-21	Ensemble Room A	15:00	17:00
2019-09-21	Ensemble Room B	15:00	17:00
2019-09-22	Room 101	08:00	10:00
2019-09-22	Room 102	08:00	10:00
2019-09-22	Room 101	13:00	15:00
2019-09-22	Room 102	13:00	15:00
2019-09-23	Room 101	08:00	10:00
2019-09-23	Ensemble Room A	10:00	12:00
2019-09-23	Ensemble Room B	10:00	12:00
2019-09-23	Ensemble Room A	13:00	15:00
2019-09-23	Ensemble Room A	15:00	17:00
2019-09-23	Ensemble Room B	15:00	17:00
2019-09-24	Room 101	08:00	10:00
2019-09-24	Ensemble Room A	08:00	10:00
2019-09-24	Room 102	08:00	10:00
2019-09-24	Ensemble Room A	10:00	12:00
2019-09-24	Ensemble Room B	10:00	12:00
2019-09-24	Room 101	15:00	17:00
2019-09-25	Ensemble Room A	08:00	10:00
2019-09-25	Ensemble Room A	10:00	12:00
2019-09-25	Room 101	10:00	12:00
2019-09-25	Room 102	10:00	12:00
2019-09-25	Ensemble Room A	13:00	15:00
2019-09-26	Ensemble Room A	08:00	10:00
2019-09-26	Ensemble Room B	08:00	10:00
2019-09-26	Ensemble Room A	10:00	12:00
2019-09-26	Ensemble Room B	10:00	12:00
2019-09-26	Ensemble Room A	13:00	15:00
2019-09-26	Ensemble Room A	15:00	17:00
2019-09-26	Room 101	15:00	17:00
2019-09-27	Ensemble Room A	08:00	10:00
2019-09-27	Ensemble Room B	08:00	10:00
2019-09-27	Room 101	10:00	12:00
2019-09-27	Ensemble Room A	10:00	12:00
2019-09-27	Ensemble Room B	10:00	12:00
2019-09-27	Ensemble Room A	13:00	15:00
2019-09-27	Room 101	13:00	15:00
2019-09-28	Room 101	08:00	10:00
2019-09-28	Ensemble Room A	10:00	12:00
2019-09-28	Room 101	10:00	12:00
2019-09-28	Room 101	13:00	15:00
2019-09-28	Room 102	13:00	15:00
2019-09-28	Ensemble Room A	15:00	17:00
2019-09-29	Room 101	10:00	12:00
2019-09-29	Ensemble Room A	15:00	17:00
2019-09-29	Ensemble Room B	15:00	17:00
2019-09-30	Ensemble Room A	08:00	10:00
2019-09-30	Room 101	10:00	12:00
2019-09-30	Ensemble Room A	10:00	12:00
2019-09-30	Ensemble Room A	13:00	15:00
2019-09-30	Room 101	15:00	17:00
2019-10-01	Ensemble Room A	08:00	10:00
2019-10-01	Room 101	10:00	12:00
2019-10-01	Room 102	10:00	12:00
2019-10-01	Ensemble Room A	10:00	12:00
2019-10-01	Room 101	13:00	15:00
2019-10-01	Room 102	13:00	15:00
2019-10-01	Room 103	13:00	15:00
2019-10-01	Room 101	15:00	17:00
2019-10-01	Room 102	15:00	17:00
2019-10-02	Room 101	08:00	10:00
2019-10-02	Room 102	08:00	10:00
2019-10-02	Room 103	08:00	10:00
2019-10-02	Ensemble Room A	10:00	12:00
2019-10-02	Ensemble Room A	13:00	15:00
2019-10-03	Ensemble Room A	08:00	10:00
2019-10-03	Ensemble Room A	10:00	12:00
2019-10-03	Room 101	10:00	12:00
2019-10-03	Room 102	10:00	12:00
2019-10-03	Ensemble Room A	13:00	15:00
2019-10-03	Room 101	13:00	15:00
2019-10-04	Room 101	13:00	15:00
2019-10-04	Room 101	15:00	17:00
2019-10-05	Room 101	08:00	10:00
2019-10-05	Ensemble Room A	08:00	10:00
2019-10-05	Room 101	13:00	15:00
2019-10-05	Room 101	15:00	17:00
2019-10-05	Room 102	15:00	17:00
2019-10-06	Ensemble Room A	10:00	12:00
2019-10-06	Ensemble Room B	10:00	12:00
2019-10-06	Ensemble Room A	13:00	15:00
2019-10-06	Ensemble Room B	13:00	15:00
2019-10-06	Room 101	15:00	17:00
2019-10-06	Ensemble Room A	15:00	17:00
2019-10-07	Room 101	08:00	10:00
2019-10-07	Room 101	10:00	12:00
2019-10-08	Room 101	08:00	10:00
2019-10-08	Room 101	10:00	12:00
2019-10-08	Ensemble Room A	15:00	17:00
2019-10-09	Ensemble Room A	08:00	10:00
2019-10-09	Room 101	13:00	15:00
2019-10-09	Room 102	13:00	15:00
2019-10-09	Ensemble Room A	15:00	17:00
2019-10-09	Ensemble Room B	15:00	17:00
2019-10-10	Ensemble Room A	08:00	10:00
2019-10-10	Ensemble Room B	08:00	10:00
2019-10-10	Room 101	13:00	15:00
2019-10-10	Room 101	15:00	17:00
2019-10-11	Room 101	08:00	10:00
2019-10-11	Room 102	08:00	10:00
2019-10-11	Ensemble Room A	10:00	12:00
2019-10-11	Room 101	10:00	12:00
2019-10-11	Ensemble Room A	15:00	17:00
2019-10-12	Ensemble Room A	08:00	10:00
2019-10-12	Ensemble Room A	10:00	12:00
2019-10-12	Ensemble Room A	13:00	15:00
2019-10-12	Ensemble Room B	13:00	15:00
2019-10-12	Room 101	15:00	17:00
2019-10-13	Room 101	08:00	10:00
2019-10-13	Room 102	08:00	10:00
2019-10-13	Room 103	08:00	10:00
2019-10-13	Ensemble Room A	10:00	12:00
2019-10-13	Ensemble Room A	13:00	15:00
2019-10-13	Ensemble Room B	13:00	15:00
2019-10-13	Room 101	15:00	17:00
2019-10-14	Room 101	08:00	10:00
2019-10-14	Ensemble Room A	08:00	10:00
2019-10-14	Room 101	10:00	12:00
2019-10-14	Room 101	13:00	15:00
2019-10-14	Ensemble Room A	13:00	15:00
2019-10-14	Room 101	15:00	17:00
2019-10-15	Ensemble Room A	08:00	10:00
2019-10-15	Ensemble Room B	08:00	10:00
2019-10-15	Room 101	10:00	12:00
2019-10-15	Room 101	13:00	15:00
2019-10-15	Room 102	13:00	15:00
2019-10-15	Ensemble Room A	15:00	17:00
2019-10-16	Room 101	10:00	12:00
2019-10-16	Room 101	13:00	15:00
2019-10-16	Room 101	15:00	17:00
2019-10-17	Ensemble Room A	08:00	10:00
2019-10-17	Ensemble Room A	10:00	12:00
2019-10-17	Ensemble Room B	10:00	12:00
2019-10-17	Room 101	13:00	15:00
2019-10-17	Room 101	15:00	17:00
2019-10-18	Ensemble Room A	10:00	12:00
2019-10-18	Ensemble Room A	13:00	15:00
2019-10-18	Ensemble Room B	13:00	15:00
2019-10-18	Room 101	15:00	17:00
2019-10-18	Room 102	15:00	17:00
2019-10-19	Room 101	10:00	12:00
2019-10-20	Room 101	08:00	10:00
2019-10-20	Ensemble Room A	08:00	10:00
2019-10-20	Room 102	08:00	10:00
2019-10-20	Ensemble Room A	10:00	12:00
2019-10-20	Ensemble Room B	10:00	12:00
2019-10-20	Room 101	15:00	17:00
2019-10-21	Ensemble Room A	08:00	10:00
2019-10-21	Ensemble Room A	13:00	15:00
2019-10-21	Ensemble Room A	15:00	17:00
2019-10-21	Ensemble Room B	15:00	17:00
2019-10-22	Ensemble Room A	08:00	10:00
2019-10-22	Room 101	08:00	10:00
2019-10-22	Ensemble Room A	10:00	12:00
2019-10-22	Room 101	10:00	12:00
2019-10-22	Room 101	13:00	15:00
2019-10-22	Ensemble Room A	13:00	15:00
2019-10-22	Room 101	15:00	17:00
2019-10-23	Ensemble Room A	10:00	12:00
2019-10-23	Ensemble Room B	10:00	12:00
2019-10-23	Ensemble Room A	13:00	15:00
2019-10-24	Ensemble Room A	10:00	12:00
2019-10-24	Ensemble Room B	10:00	12:00
2019-10-24	Ensemble Room A	13:00	15:00
2019-10-24	Ensemble Room B	13:00	15:00
2019-10-24	Room 101	15:00	17:00
2019-10-24	Room 102	15:00	17:00
2019-10-25	Ensemble Room A	08:00	10:00
2019-10-25	Room 101	10:00	12:00
2019-10-25	Ensemble Room A	13:00	15:00
2019-10-25	Ensemble Room A	15:00	17:00
2019-10-26	Ensemble Room A	13:00	15:00
2019-10-27	Room 101	08:00	10:00
2019-10-27	Ensemble Room A	15:00	17:00
2019-10-27	Ensemble Room B	15:00	17:00
2019-10-28	Room 101	08:00	10:00
2019-10-28	Ensemble Room A	08:00	10:00
2019-10-28	Ensemble Room A	13:00	15:00
2019-10-28	Room 101	13:00	15:00
2019-10-29	Room 101	10:00	12:00
2019-10-29	Room 102	10:00	12:00
2019-10-29	Ensemble Room A	13:00	15:00
2019-10-29	Ensemble Room B	13:00	15:00
2019-10-29	Ensemble Room A	15:00	17:00
2019-10-29	Room 101	15:00	17:00
2019-10-30	Ensemble Room A	08:00	10:00
2019-10-30	Room 101	08:00	10:00
2019-10-30	Ensemble Room A	10:00	12:00
2019-10-30	Ensemble Room A	13:00	15:00
2019-10-30	Room 101	15:00	17:00
2019-10-31	Room 101	08:00	10:00
2019-10-31	Ensemble Room A	10:00	12:00
2019-10-31	Ensemble Room A	13:00	15:00
2019-10-31	Ensemble Room B	13:00	15:00
2019-10-31	Ensemble Room C	13:00	15:00
2019-10-31	Ensemble Room A	15:00	17:00
2019-10-31	Ensemble Room B	15:00	17:00
2019-11-01	Ensemble Room A	08:00	10:00
2019-11-01	Ensemble Room A	10:00	12:00
2019-11-01	Room 101	10:00	12:00
2019-11-01	Room 102	10:00	12:00
2019-11-01	Room 101	13:00	15:00
2019-11-01	Room 101	15:00	17:00
2019-11-02	Room 101	08:00	10:00
2019-11-02	Room 102	08:00	10:00
2019-11-02	Room 101	10:00	12:00
2019-11-02	Ensemble Room A	13:00	15:00
2019-11-02	Room 101	15:00	17:00
2019-11-03	Room 101	10:00	12:00
2019-11-03	Ensemble Room A	10:00	12:00
2019-11-03	Ensemble Room A	13:00	15:00
2019-11-04	Ensemble Room A	08:00	10:00
2019-11-04	Ensemble Room B	08:00	10:00
2019-11-04	Ensemble Room A	10:00	12:00
2019-11-04	Ensemble Room A	13:00	15:00
2019-11-04	Ensemble Room B	13:00	15:00
2019-11-04	Room 101	15:00	17:00
2019-11-05	Room 101	08:00	10:00
2019-11-05	Room 102	08:00	10:00
2019-11-05	Ensemble Room A	10:00	12:00
2019-11-05	Room 101	10:00	12:00
2019-11-05	Room 101	13:00	15:00
2019-11-05	Room 102	13:00	15:00
2019-11-05	Ensemble Room A	15:00	17:00
2019-11-05	Room 101	15:00	17:00
2019-11-06	Ensemble Room A	10:00	12:00
2019-11-06	Room 101	13:00	15:00
2019-11-06	Ensemble Room A	13:00	15:00
2019-11-06	Ensemble Room A	15:00	17:00
2019-11-06	Room 101	15:00	17:00
2019-11-07	Ensemble Room A	08:00	10:00
2019-11-07	Ensemble Room A	10:00	12:00
2019-11-07	Room 101	10:00	12:00
2019-11-07	Room 102	10:00	12:00
2019-11-07	Ensemble Room A	13:00	15:00
2019-11-07	Ensemble Room B	13:00	15:00
2019-11-07	Ensemble Room A	15:00	17:00
2019-11-08	Room 101	08:00	10:00
2019-11-08	Room 102	08:00	10:00
2019-11-08	Room 101	10:00	12:00
2019-11-08	Ensemble Room A	13:00	15:00
2019-11-08	Ensemble Room B	13:00	15:00
2019-11-08	Room 101	13:00	15:00
2019-11-08	Ensemble Room A	15:00	17:00
2019-11-08	Room 101	15:00	17:00
2019-11-08	Room 102	15:00	17:00
2019-11-09	Ensemble Room A	08:00	10:00
2019-11-09	Room 101	15:00	17:00
2019-11-10	Room 101	08:00	10:00
2019-11-10	Ensemble Room A	08:00	10:00
2019-11-10	Ensemble Room A	10:00	12:00
2019-11-10	Ensemble Room B	10:00	12:00
2019-11-10	Ensemble Room A	13:00	15:00
2019-11-10	Ensemble Room A	15:00	17:00
2019-11-10	Ensemble Room B	15:00	17:00
2019-11-11	Ensemble Room A	08:00	10:00
2019-11-11	Ensemble Room B	08:00	10:00
2019-11-11	Ensemble Room A	13:00	15:00
2019-11-11	Room 101	13:00	15:00
2019-11-11	Ensemble Room B	13:00	15:00
2019-11-12	Ensemble Room A	08:00	10:00
2019-11-12	Ensemble Room B	08:00	10:00
2019-11-12	Room 101	13:00	15:00
2019-11-12	Ensemble Room A	13:00	15:00
2019-11-13	Room 101	08:00	10:00
2019-11-13	Ensemble Room A	08:00	10:00
2019-11-13	Room 102	08:00	10:00
2019-11-13	Room 101	10:00	12:00
2019-11-13	Room 101	13:00	15:00
2019-11-13	Room 101	15:00	17:00
2019-11-13	Room 102	15:00	17:00
2019-11-13	Ensemble Room A	15:00	17:00
2019-11-14	Room 101	08:00	10:00
2019-11-14	Ensemble Room A	08:00	10:00
2019-11-14	Ensemble Room A	10:00	12:00
2019-11-14	Room 101	10:00	12:00
2019-11-14	Ensemble Room A	13:00	15:00
2019-11-14	Ensemble Room A	15:00	17:00
2019-11-15	Room 101	08:00	10:00
2019-11-15	Room 101	10:00	12:00
2019-11-15	Room 102	10:00	12:00
2019-11-15	Ensemble Room A	13:00	15:00
2019-11-15	Ensemble Room B	13:00	15:00
2019-11-15	Room 101	13:00	15:00
2019-11-15	Room 101	15:00	17:00
2019-11-15	Ensemble Room A	15:00	17:00
2019-11-15	Ensemble Room B	15:00	17:00
2019-11-16	Ensemble Room A	08:00	10:00
2019-11-16	Ensemble Room B	08:00	10:00
2019-11-16	Ensemble Room C	08:00	10:00
2019-11-16	Ensemble Room A	10:00	12:00
2019-11-16	Room 101	10:00	12:00
2019-11-16	Ensemble Room A	13:00	15:00
2019-11-16	Room 101	13:00	15:00
2019-11-17	Room 101	10:00	12:00
2019-11-17	Room 101	13:00	15:00
2019-11-18	Ensemble Room A	13:00	15:00
2019-11-18	Room 101	13:00	15:00
2019-11-18	Ensemble Room A	15:00	17:00
2019-11-19	Room 101	08:00	10:00
2019-11-19	Room 102	08:00	10:00
2019-11-19	Room 101	10:00	12:00
2019-11-19	Room 102	10:00	12:00
2019-11-19	Ensemble Room A	13:00	15:00
2019-11-19	Room 101	15:00	17:00
2019-11-20	Room 101	08:00	10:00
2019-11-20	Room 102	08:00	10:00
2019-11-20	Room 101	13:00	15:00
2019-11-20	Ensemble Room A	15:00	17:00
2019-11-21	Ensemble Room A	08:00	10:00
2019-11-21	Room 101	08:00	10:00
2019-11-21	Room 101	10:00	12:00
2019-11-21	Room 102	10:00	12:00
2019-11-21	Room 103	10:00	12:00
2019-11-21	Room 101	13:00	15:00
2019-11-21	Room 101	15:00	17:00
2019-11-22	Ensemble Room A	08:00	10:00
2019-11-22	Ensemble Room B	08:00	10:00
2019-11-22	Ensemble Room A	13:00	15:00
2019-11-22	Room 101	15:00	17:00
2019-11-22	Ensemble Room A	15:00	17:00
2019-11-23	Ensemble Room A	08:00	10:00
2019-11-23	Ensemble Room A	10:00	12:00
2019-11-23	Room 101	10:00	12:00
2019-11-23	Ensemble Room B	10:00	12:00
2019-11-23	Room 101	13:00	15:00
2019-11-23	Ensemble Room A	13:00	15:00
2019-11-24	Ensemble Room A	08:00	10:00
2019-11-24	Room 101	08:00	10:00
2019-11-24	Room 101	10:00	12:00
2019-11-24	Room 101	13:00	15:00
2019-11-24	Room 102	13:00	15:00
2019-11-25	Room 101	08:00	10:00
2019-11-25	Room 101	10:00	12:00
2019-11-25	Room 102	10:00	12:00
2019-11-25	Ensemble Room A	13:00	15:00
2019-11-25	Ensemble Room B	13:00	15:00
2019-11-25	Room 101	13:00	15:00
2019-11-25	Room 101	15:00	17:00
2019-11-25	Ensemble Room A	15:00	17:00
2019-11-26	Room 101	10:00	12:00
2019-11-26	Room 101	13:00	15:00
2019-11-26	Room 102	13:00	15:00
2019-11-26	Ensemble Room A	15:00	17:00
2019-11-26	Room 101	15:00	17:00
2019-11-27	Room 101	08:00	10:00
2019-11-27	Room 102	08:00	10:00
2019-11-27	Ensemble Room A	10:00	12:00
2019-11-27	Ensemble Room A	13:00	15:00
2019-11-27	Ensemble Room A	15:00	17:00
2019-11-27	Room 101	15:00	17:00
2019-11-28	Room 101	08:00	10:00
2019-11-28	Room 102	08:00	10:00
2019-11-28	Room 101	10:00	12:00
2019-11-28	Room 101	13:00	15:00
2019-11-28	Room 102	13:00	15:00
2019-11-28	Room 101	15:00	17:00
2019-11-28	Ensemble Room A	15:00	17:00
2019-11-28	Room 102	15:00	17:00
2019-11-29	Room 101	13:00	15:00
2019-11-30	Ensemble Room A	08:00	10:00
2019-11-30	Ensemble Room A	10:00	12:00
2019-11-30	Ensemble Room A	15:00	17:00
2019-12-01	Ensemble Room A	08:00	10:00
2019-12-01	Room 101	13:00	15:00
2019-12-01	Ensemble Room A	13:00	15:00
2019-12-01	Room 101	15:00	17:00
2019-12-02	Room 101	08:00	10:00
2019-12-02	Ensemble Room A	08:00	10:00
2019-12-02	Room 101	10:00	12:00
2019-12-02	Ensemble Room A	13:00	15:00
2019-12-02	Ensemble Room B	13:00	15:00
2019-12-02	Room 101	13:00	15:00
2019-12-02	Room 101	15:00	17:00
2019-12-03	Ensemble Room A	10:00	12:00
2019-12-03	Ensemble Room A	13:00	15:00
2019-12-04	Ensemble Room A	08:00	10:00
2019-12-04	Room 101	08:00	10:00
2019-12-04	Ensemble Room A	15:00	17:00
2019-12-04	Ensemble Room B	15:00	17:00
2019-12-05	Room 101	08:00	10:00
2019-12-05	Ensemble Room A	10:00	12:00
2019-12-05	Ensemble Room A	13:00	15:00
2019-12-05	Room 101	13:00	15:00
2019-12-06	Ensemble Room A	08:00	10:00
2019-12-06	Ensemble Room B	08:00	10:00
2019-12-06	Room 101	10:00	12:00
2019-12-06	Room 102	10:00	12:00
2019-12-06	Ensemble Room A	13:00	15:00
2019-12-06	Ensemble Room B	13:00	15:00
2019-12-06	Room 101	15:00	17:00
2019-12-07	Room 101	08:00	10:00
2019-12-07	Room 101	10:00	12:00
2019-12-07	Ensemble Room A	10:00	12:00
2019-12-07	Ensemble Room B	10:00	12:00
2019-12-07	Room 101	13:00	15:00
2019-12-07	Room 102	13:00	15:00
2019-12-07	Ensemble Room A	15:00	17:00
2019-12-08	Room 101	10:00	12:00
2019-12-08	Ensemble Room A	13:00	15:00
2019-12-08	Ensemble Room B	13:00	15:00
2019-12-08	Room 101	15:00	17:00
2019-12-08	Ensemble Room A	15:00	17:00
2019-12-09	Ensemble Room A	08:00	10:00
2019-12-09	Ensemble Room A	10:00	12:00
2019-12-09	Ensemble Room A	13:00	15:00
2019-12-09	Ensemble Room B	13:00	15:00
2019-12-09	Room 101	15:00	17:00
2019-12-10	Room 101	08:00	10:00
2019-12-10	Room 102	08:00	10:00
2019-12-10	Ensemble Room A	10:00	12:00
2019-12-10	Ensemble Room A	13:00	15:00
2019-12-10	Room 101	13:00	15:00
2019-12-10	Room 101	15:00	17:00
2019-12-11	Ensemble Room A	10:00	12:00
2019-12-11	Room 101	10:00	12:00
2019-12-11	Room 102	10:00	12:00
2019-12-11	Ensemble Room A	13:00	15:00
2019-12-11	Ensemble Room B	13:00	15:00
2019-12-11	Room 101	15:00	17:00
2019-12-11	Room 102	15:00	17:00
2019-12-11	Ensemble Room A	15:00	17:00
2019-12-12	Room 101	08:00	10:00
2019-12-13	Room 101	10:00	12:00
2019-12-13	Room 101	13:00	15:00
2019-12-13	Ensemble Room A	13:00	15:00
2019-12-14	Room 101	08:00	10:00
2019-12-14	Ensemble Room A	10:00	12:00
2019-12-14	Room 101	13:00	15:00
2019-12-14	Ensemble Room A	13:00	15:00
2019-12-14	Ensemble Room A	15:00	17:00
2019-12-14	Room 101	15:00	17:00
2019-12-15	Room 101	13:00	15:00
2019-12-15	Ensemble Room A	15:00	17:00
2019-12-15	Room 101	15:00	17:00
2019-12-16	Room 101	08:00	10:00
2019-12-16	Ensemble Room A	15:00	17:00
2019-12-17	Room 101	08:00	10:00
2019-12-17	Room 102	08:00	10:00
2019-12-17	Ensemble Room A	10:00	12:00
2019-12-17	Room 101	10:00	12:00
2019-12-17	Room 101	13:00	15:00
2019-12-17	Room 102	13:00	15:00
2019-12-17	Room 103	13:00	15:00
2019-12-18	Room 101	08:00	10:00
2019-12-18	Ensemble Room A	10:00	12:00
2019-12-18	Room 101	10:00	12:00
2019-12-18	Ensemble Room A	13:00	15:00
2019-12-18	Ensemble Room A	15:00	17:00
2019-12-19	Room 101	08:00	10:00
2019-12-19	Ensemble Room A	10:00	12:00
2019-12-19	Ensemble Room A	13:00	15:00
2019-12-19	Ensemble Room A	15:00	17:00
2019-12-19	Room 101	15:00	17:00
2019-12-20	Ensemble Room A	08:00	10:00
2019-12-20	Room 101	08:00	10:00
2019-12-20	Ensemble Room A	13:00	15:00
2019-12-21	Room 101	08:00	10:00
2019-12-21	Ensemble Room A	08:00	10:00
2019-12-21	Ensemble Room A	13:00	15:00
2019-12-21	Room 101	15:00	17:00
2019-12-21	Room 102	15:00	17:00
2019-12-22	Ensemble Room A	13:00	15:00
2019-12-22	Ensemble Room B	13:00	15:00
2019-12-23	Room 101	08:00	10:00
2019-12-23	Room 102	08:00	10:00
2019-12-23	Room 101	10:00	12:00
2019-12-23	Ensemble Room A	13:00	15:00
2019-12-23	Room 101	13:00	15:00
2019-12-23	Room 101	15:00	17:00
2019-12-24	Room 101	08:00	10:00
2019-12-24	Room 101	10:00	12:00
2019-12-24	Ensemble Room A	13:00	15:00
2019-12-25	Ensemble Room A	15:00	17:00
2019-12-25	Ensemble Room B	15:00	17:00
2019-12-26	Ensemble Room A	10:00	12:00
2019-12-26	Ensemble Room B	10:00	12:00
2019-12-26	Room 101	13:00	15:00
2019-12-26	Ensemble Room A	15:00	17:00
2019-12-26	Ensemble Room B	15:00	17:00
2019-12-26	Room 101	15:00	17:00
2019-12-27	Room 101	08:00	10:00
2019-12-27	Ensemble Room A	10:00	12:00
2019-12-27	Ensemble Room B	10:00	12:00
2019-12-27	Room 101	10:00	12:00
2019-12-27	Room 101	13:00	15:00
2019-12-27	Ensemble Room A	13:00	15:00
2019-12-28	Room 101	10:00	12:00
2019-12-28	Ensemble Room A	13:00	15:00
2019-12-28	Ensemble Room A	15:00	17:00
2019-12-29	Ensemble Room A	08:00	10:00
2019-12-29	Ensemble Room A	10:00	12:00
2019-12-29	Room 101	15:00	17:00
2019-12-30	Room 101	08:00	10:00
2019-12-30	Room 101	10:00	12:00
2019-12-30	Ensemble Room A	10:00	12:00
2019-12-30	Room 102	10:00	12:00
2019-12-30	Ensemble Room A	13:00	15:00
2019-12-30	Ensemble Room A	15:00	17:00
2019-12-31	Room 101	08:00	10:00
2019-12-31	Room 102	08:00	10:00
2019-12-31	Ensemble Room A	13:00	15:00
2019-12-31	Ensemble Room B	13:00	15:00
2019-12-31	Ensemble Room A	15:00	17:00
2019-12-31	Ensemble Room B	15:00	17:00
2020-01-01	Room 101	13:00	15:00
2020-01-01	Room 101	15:00	17:00
2020-01-02	Room 101	08:00	10:00
2020-01-02	Room 101	10:00	12:00
2020-01-02	Room 101	15:00	17:00
2020-01-02	Ensemble Room A	15:00	17:00
2020-01-02	Ensemble Room B	15:00	17:00
2020-01-03	Room 101	08:00	10:00
2020-01-03	Room 101	13:00	15:00
2020-01-03	Room 102	13:00	15:00
2020-01-03	Ensemble Room A	13:00	15:00
2020-01-03	Ensemble Room A	15:00	17:00
2020-01-04	Ensemble Room A	08:00	10:00
2020-01-04	Ensemble Room B	08:00	10:00
2020-01-04	Ensemble Room A	15:00	17:00
2020-01-05	Ensemble Room A	08:00	10:00
2020-01-05	Room 101	08:00	10:00
2020-01-05	Room 101	10:00	12:00
2020-01-05	Ensemble Room A	13:00	15:00
2020-01-05	Room 101	15:00	17:00
2020-01-05	Room 102	15:00	17:00
2020-01-05	Room 103	15:00	17:00
2020-01-06	Ensemble Room A	08:00	10:00
2020-01-06	Ensemble Room A	10:00	12:00
2020-01-06	Room 101	13:00	15:00
2020-01-06	Ensemble Room A	13:00	15:00
2020-01-06	Room 101	15:00	17:00
2020-01-06	Ensemble Room A	15:00	17:00
2020-01-07	Ensemble Room A	08:00	10:00
2020-01-07	Room 101	10:00	12:00
2020-01-07	Ensemble Room A	13:00	15:00
2020-01-07	Room 101	13:00	15:00
2020-01-07	Room 101	15:00	17:00
2020-01-08	Room 101	10:00	12:00
2020-01-08	Room 101	13:00	15:00
2020-01-08	Room 102	13:00	15:00
2020-01-08	Ensemble Room A	13:00	15:00
2020-01-08	Room 101	15:00	17:00
2020-01-09	Ensemble Room A	08:00	10:00
2020-01-09	Room 101	08:00	10:00
2020-01-09	Room 101	10:00	12:00
2020-01-09	Room 102	10:00	12:00
2020-01-09	Room 103	10:00	12:00
2020-01-10	Room 101	08:00	10:00
2020-01-10	Ensemble Room A	10:00	12:00
2020-01-10	Room 101	13:00	15:00
2020-01-10	Ensemble Room A	15:00	17:00
2020-01-10	Ensemble Room B	15:00	17:00
2020-01-11	Ensemble Room A	10:00	12:00
2020-01-11	Ensemble Room A	13:00	15:00
2020-01-11	Ensemble Room A	15:00	17:00
2020-01-11	Room 101	15:00	17:00
2020-01-12	Ensemble Room A	10:00	12:00
2020-01-12	Room 101	13:00	15:00
2020-01-12	Room 101	15:00	17:00
2020-01-12	Ensemble Room A	15:00	17:00
2020-01-13	Ensemble Room A	08:00	10:00
2020-01-13	Room 101	10:00	12:00
2020-01-13	Room 102	10:00	12:00
2020-01-13	Ensemble Room A	10:00	12:00
2020-01-13	Ensemble Room A	13:00	15:00
2020-01-13	Room 101	13:00	15:00
2020-01-13	Room 101	15:00	17:00
2020-01-13	Room 102	15:00	17:00
2020-01-13	Ensemble Room A	15:00	17:00
2020-01-14	Ensemble Room A	08:00	10:00
2020-01-14	Room 101	08:00	10:00
2020-01-14	Room 101	10:00	12:00
2020-01-14	Ensemble Room A	10:00	12:00
2020-01-14	Ensemble Room A	15:00	17:00
2020-01-14	Ensemble Room B	15:00	17:00
2020-01-15	Room 101	08:00	10:00
2020-01-15	Room 101	13:00	15:00
2020-01-15	Ensemble Room A	15:00	17:00
2020-01-15	Room 101	15:00	17:00
2020-01-16	Ensemble Room A	13:00	15:00
2020-01-16	Ensemble Room A	15:00	17:00
2020-01-17	Room 101	08:00	10:00
2020-01-17	Ensemble Room A	10:00	12:00
2020-01-17	Room 101	13:00	15:00
2020-01-17	Ensemble Room A	13:00	15:00
2020-01-17	Room 102	13:00	15:00
2020-01-17	Room 101	15:00	17:00
2020-01-18	Ensemble Room A	08:00	10:00
2020-01-18	Room 101	08:00	10:00
2020-01-18	Room 102	08:00	10:00
2020-01-18	Room 101	10:00	12:00
2020-01-18	Room 101	13:00	15:00
2020-01-18	Ensemble Room A	13:00	15:00
2020-01-18	Ensemble Room B	13:00	15:00
2020-01-19	Room 101	08:00	10:00
2020-01-19	Room 101	10:00	12:00
2020-01-19	Room 101	13:00	15:00
2020-01-19	Ensemble Room A	13:00	15:00
2020-01-20	Room 101	08:00	10:00
2020-01-20	Ensemble Room A	08:00	10:00
2020-01-20	Ensemble Room A	10:00	12:00
2020-01-20	Ensemble Room A	13:00	15:00
2020-01-20	Room 101	15:00	17:00
2020-01-21	Room 101	08:00	10:00
2020-01-21	Room 101	10:00	12:00
2020-01-21	Room 102	10:00	12:00
2020-01-21	Ensemble Room A	15:00	17:00
2020-01-21	Room 101	15:00	17:00
2020-01-22	Ensemble Room A	08:00	10:00
2020-01-22	Room 101	08:00	10:00
2020-01-22	Ensemble Room B	08:00	10:00
2020-01-22	Ensemble Room A	10:00	12:00
2020-01-22	Ensemble Room A	13:00	15:00
2020-01-22	Ensemble Room B	13:00	15:00
2020-01-22	Room 101	13:00	15:00
2020-01-22	Room 101	15:00	17:00
2020-01-23	Room 101	08:00	10:00
2020-01-23	Ensemble Room A	10:00	12:00
2020-01-23	Room 101	13:00	15:00
2020-01-23	Room 101	15:00	17:00
2020-01-23	Ensemble Room A	15:00	17:00
2020-01-23	Ensemble Room B	15:00	17:00
2020-01-24	Ensemble Room A	10:00	12:00
2020-01-24	Room 101	13:00	15:00
2020-01-25	Ensemble Room A	08:00	10:00
2020-01-25	Room 101	10:00	12:00
2020-01-25	Room 102	10:00	12:00
2020-01-25	Ensemble Room A	10:00	12:00
2020-01-25	Ensemble Room A	13:00	15:00
2020-01-25	Ensemble Room B	13:00	15:00
2020-01-25	Ensemble Room A	15:00	17:00
2020-01-26	Room 101	08:00	10:00
2020-01-26	Room 102	08:00	10:00
2020-01-26	Ensemble Room A	10:00	12:00
2020-01-26	Ensemble Room B	10:00	12:00
2020-01-26	Room 101	15:00	17:00
2020-01-26	Room 102	15:00	17:00
2020-01-27	Ensemble Room A	13:00	15:00
2020-01-27	Ensemble Room A	15:00	17:00
2020-01-28	Room 101	08:00	10:00
2020-01-28	Ensemble Room A	10:00	12:00
2020-01-28	Ensemble Room A	13:00	15:00
2020-01-28	Ensemble Room B	13:00	15:00
2020-01-28	Room 101	15:00	17:00
2020-01-28	Ensemble Room A	15:00	17:00
2020-01-29	Room 101	08:00	10:00
2020-01-29	Ensemble Room A	10:00	12:00
2020-01-29	Ensemble Room B	10:00	12:00
2020-01-29	Ensemble Room A	13:00	15:00
2020-01-29	Room 101	13:00	15:00
2020-01-29	Room 101	15:00	17:00
2020-01-29	Room 102	15:00	17:00
2020-01-29	Room 103	15:00	17:00
2020-01-30	Ensemble Room A	08:00	10:00
2020-01-30	Ensemble Room A	13:00	15:00
2020-01-30	Room 101	15:00	17:00
2020-01-30	Ensemble Room A	15:00	17:00
2020-01-30	Ensemble Room B	15:00	17:00
2020-01-31	Room 101	08:00	10:00
2020-01-31	Room 102	08:00	10:00
2020-01-31	Ensemble Room A	10:00	12:00
2020-01-31	Room 101	10:00	12:00
2020-01-31	Ensemble Room A	13:00	15:00
2020-01-31	Room 101	15:00	17:00
2020-02-01	Room 101	08:00	10:00
2020-02-01	Room 102	08:00	10:00
2020-02-01	Room 103	08:00	10:00
2020-02-01	Ensemble Room A	10:00	12:00
2020-02-01	Ensemble Room A	13:00	15:00
2020-02-01	Room 101	13:00	15:00
2020-02-01	Room 101	15:00	17:00
2020-02-02	Ensemble Room A	13:00	15:00
2020-02-02	Room 101	13:00	15:00
2020-02-02	Room 102	13:00	15:00
2020-02-02	Room 101	15:00	17:00
2020-02-02	Ensemble Room A	15:00	17:00
2020-02-03	Ensemble Room A	08:00	10:00
2020-02-03	Ensemble Room A	10:00	12:00
2020-02-03	Room 101	13:00	15:00
2020-02-03	Room 101	15:00	17:00
2020-02-04	Room 101	08:00	10:00
2020-02-04	Room 102	08:00	10:00
2020-02-04	Ensemble Room A	08:00	10:00
2020-02-04	Ensemble Room A	13:00	15:00
2020-02-04	Room 101	15:00	17:00
2020-02-04	Room 102	15:00	17:00
2020-02-05	Room 101	10:00	12:00
2020-02-05	Room 102	10:00	12:00
2020-02-05	Ensemble Room A	15:00	17:00
2020-02-05	Room 101	15:00	17:00
2020-02-06	Room 101	10:00	12:00
2020-02-06	Ensemble Room A	10:00	12:00
2020-02-06	Room 102	10:00	12:00
2020-02-06	Ensemble Room A	13:00	15:00
2020-02-06	Room 101	15:00	17:00
2020-02-06	Ensemble Room A	15:00	17:00
2020-02-07	Room 101	08:00	10:00
2020-02-07	Room 101	10:00	12:00
2020-02-08	Room 101	08:00	10:00
2020-02-08	Ensemble Room A	08:00	10:00
2020-02-08	Room 101	10:00	12:00
2020-02-08	Room 102	10:00	12:00
2020-02-08	Room 101	13:00	15:00
2020-02-08	Ensemble Room A	13:00	15:00
2020-02-08	Ensemble Room A	15:00	17:00
2020-02-09	Room 101	08:00	10:00
2020-02-09	Ensemble Room A	10:00	12:00
2020-02-09	Ensemble Room A	13:00	15:00
2020-02-09	Room 101	15:00	17:00
2020-02-09	Ensemble Room A	15:00	17:00
2020-02-09	Room 102	15:00	17:00
2020-02-10	Room 101	08:00	10:00
2020-02-10	Room 102	08:00	10:00
2020-02-10	Ensemble Room A	10:00	12:00
2020-02-10	Room 101	10:00	12:00
2020-02-10	Ensemble Room A	15:00	17:00
2020-02-10	Ensemble Room B	15:00	17:00
2020-02-11	Room 101	13:00	15:00
2020-02-11	Room 101	15:00	17:00
2020-02-12	Room 101	08:00	10:00
2020-02-12	Room 102	08:00	10:00
2020-02-12	Ensemble Room A	10:00	12:00
2020-02-12	Room 101	13:00	15:00
2020-02-12	Ensemble Room A	15:00	17:00
2020-02-12	Ensemble Room B	15:00	17:00
2020-02-12	Room 101	15:00	17:00
2020-02-13	Room 101	08:00	10:00
2020-02-13	Room 101	10:00	12:00
2020-02-13	Ensemble Room A	10:00	12:00
2020-02-13	Ensemble Room A	13:00	15:00
2020-02-13	Room 101	15:00	17:00
2020-02-13	Room 102	15:00	17:00
2020-02-13	Ensemble Room A	15:00	17:00
2020-02-14	Room 101	08:00	10:00
2020-02-14	Ensemble Room A	08:00	10:00
2020-02-14	Room 101	13:00	15:00
2020-02-14	Room 102	13:00	15:00
2020-02-14	Ensemble Room A	13:00	15:00
2020-02-14	Ensemble Room A	15:00	17:00
2020-02-15	Room 101	08:00	10:00
2020-02-15	Ensemble Room A	15:00	17:00
2020-02-16	Room 101	08:00	10:00
2020-02-16	Ensemble Room A	08:00	10:00
2020-02-16	Ensemble Room B	08:00	10:00
2020-02-16	Room 101	10:00	12:00
2020-02-16	Ensemble Room A	10:00	12:00
2020-02-16	Room 101	13:00	15:00
2020-02-16	Room 102	13:00	15:00
2020-02-16	Room 101	15:00	17:00
2020-02-16	Ensemble Room A	15:00	17:00
2020-02-17	Room 101	08:00	10:00
2020-02-17	Ensemble Room A	08:00	10:00
2020-02-17	Ensemble Room B	08:00	10:00
2020-02-17	Room 101	10:00	12:00
2020-02-17	Ensemble Room A	10:00	12:00
2020-02-17	Room 101	15:00	17:00
2020-02-18	Ensemble Room A	08:00	10:00
2020-02-18	Ensemble Room B	08:00	10:00
2020-02-18	Ensemble Room C	08:00	10:00
2020-02-18	Ensemble Room A	10:00	12:00
2020-02-18	Ensemble Room B	10:00	12:00
2020-02-18	Room 101	13:00	15:00
2020-02-18	Room 102	13:00	15:00
2020-02-18	Room 101	15:00	17:00
2020-02-19	Ensemble Room A	08:00	10:00
2020-02-19	Room 101	10:00	12:00
2020-02-19	Room 102	10:00	12:00
2020-02-19	Ensemble Room A	15:00	17:00
2020-02-20	Ensemble Room A	08:00	10:00
2020-02-20	Ensemble Room A	13:00	15:00
2020-02-20	Room 101	13:00	15:00
2020-02-21	Room 101	08:00	10:00
2020-02-21	Room 101	10:00	12:00
2020-02-21	Room 101	15:00	17:00
2020-02-22	Room 101	10:00	12:00
2020-02-22	Ensemble Room A	10:00	12:00
2020-02-22	Room 101	13:00	15:00
2020-02-22	Room 102	13:00	15:00
2020-02-22	Ensemble Room A	15:00	17:00
2020-02-22	Ensemble Room B	15:00	17:00
2020-02-22	Ensemble Room C	15:00	17:00
2020-02-23	Ensemble Room A	08:00	10:00
2020-02-23	Ensemble Room B	08:00	10:00
2020-02-23	Room 101	10:00	12:00
2020-02-23	Ensemble Room A	13:00	15:00
2020-02-24	Ensemble Room A	08:00	10:00
2020-02-24	Room 101	08:00	10:00
2020-02-24	Room 101	15:00	17:00
2020-02-25	Ensemble Room A	08:00	10:00
2020-02-25	Ensemble Room B	08:00	10:00
2020-02-25	Ensemble Room A	13:00	15:00
2020-02-25	Ensemble Room A	15:00	17:00
2020-02-25	Room 101	15:00	17:00
2020-02-25	Ensemble Room B	15:00	17:00
2020-02-26	Ensemble Room A	08:00	10:00
2020-02-26	Room 101	08:00	10:00
2020-02-26	Ensemble Room A	13:00	15:00
2020-02-26	Room 101	15:00	17:00
2020-02-27	Ensemble Room A	08:00	10:00
2020-02-27	Room 101	08:00	10:00
2020-02-27	Room 101	15:00	17:00
2020-02-27	Room 102	15:00	17:00
2020-02-27	Room 103	15:00	17:00
2020-02-28	Ensemble Room A	10:00	12:00
2020-02-28	Room 101	13:00	15:00
2020-02-28	Room 102	13:00	15:00
2020-02-28	Ensemble Room A	13:00	15:00
2020-02-29	Room 101	08:00	10:00
2020-02-29	Ensemble Room A	08:00	10:00
2020-02-29	Ensemble Room B	08:00	10:00
2020-02-29	Room 101	15:00	17:00
2020-02-29	Ensemble Room A	15:00	17:00
2020-03-01	Ensemble Room A	08:00	10:00
2020-03-01	Ensemble Room B	08:00	10:00
2020-03-01	Ensemble Room C	08:00	10:00
2020-03-01	Room 101	10:00	12:00
2020-03-01	Room 101	13:00	15:00
2020-03-01	Ensemble Room A	15:00	17:00
2020-03-01	Room 101	15:00	17:00
2020-03-02	Ensemble Room A	10:00	12:00
2020-03-02	Room 101	10:00	12:00
2020-03-02	Ensemble Room B	10:00	12:00
2020-03-02	Room 101	13:00	15:00
2020-03-02	Room 101	15:00	17:00
2020-03-03	Room 101	08:00	10:00
2020-03-03	Ensemble Room A	10:00	12:00
2020-03-03	Ensemble Room B	10:00	12:00
2020-03-03	Ensemble Room A	13:00	15:00
2020-03-03	Room 101	13:00	15:00
2020-03-04	Room 101	08:00	10:00
2020-03-04	Room 101	10:00	12:00
2020-03-04	Room 102	10:00	12:00
2020-03-04	Room 101	13:00	15:00
2020-03-04	Room 101	15:00	17:00
2020-03-04	Ensemble Room A	15:00	17:00
2020-03-05	Room 101	08:00	10:00
2020-03-05	Ensemble Room A	08:00	10:00
2020-03-05	Ensemble Room B	08:00	10:00
2020-03-05	Room 101	10:00	12:00
2020-03-05	Ensemble Room A	10:00	12:00
2020-03-05	Room 101	13:00	15:00
2020-03-05	Room 102	13:00	15:00
2020-03-05	Room 101	15:00	17:00
2020-03-05	Room 102	15:00	17:00
2020-03-06	Ensemble Room A	08:00	10:00
2020-03-06	Room 101	08:00	10:00
2020-03-06	Room 102	08:00	10:00
2020-03-06	Ensemble Room A	10:00	12:00
2020-03-06	Ensemble Room B	10:00	12:00
2020-03-06	Ensemble Room C	10:00	12:00
2020-03-06	Ensemble Room A	15:00	17:00
2020-03-07	Room 101	08:00	10:00
2020-03-07	Room 101	10:00	12:00
2020-03-07	Ensemble Room A	10:00	12:00
2020-03-07	Room 101	13:00	15:00
2020-03-08	Room 101	08:00	10:00
2020-03-08	Room 102	08:00	10:00
2020-03-08	Room 101	10:00	12:00
2020-03-08	Ensemble Room A	13:00	15:00
2020-03-08	Room 101	13:00	15:00
2020-03-09	Ensemble Room A	08:00	10:00
2020-03-09	Room 101	08:00	10:00
2020-03-09	Ensemble Room A	13:00	15:00
2020-03-09	Room 101	15:00	17:00
2020-03-10	Room 101	08:00	10:00
2020-03-10	Ensemble Room A	08:00	10:00
2020-03-10	Room 101	10:00	12:00
2020-03-10	Ensemble Room A	10:00	12:00
2020-03-10	Room 101	13:00	15:00
2020-03-10	Ensemble Room A	15:00	17:00
2020-03-10	Room 101	15:00	17:00
2020-03-10	Ensemble Room B	15:00	17:00
2020-03-11	Ensemble Room A	08:00	10:00
2020-03-11	Ensemble Room A	13:00	15:00
2020-03-11	Room 101	13:00	15:00
2020-03-11	Room 101	15:00	17:00
2020-03-11	Room 102	15:00	17:00
2020-03-12	Room 101	08:00	10:00
2020-03-12	Room 102	08:00	10:00
2020-03-12	Ensemble Room A	10:00	12:00
2020-03-12	Ensemble Room A	13:00	15:00
2020-03-12	Ensemble Room B	13:00	15:00
2020-03-12	Ensemble Room C	13:00	15:00
2020-03-12	Ensemble Room A	15:00	17:00
2020-03-13	Ensemble Room A	08:00	10:00
2020-03-13	Room 101	10:00	12:00
2020-03-13	Ensemble Room A	10:00	12:00
2020-03-13	Ensemble Room A	13:00	15:00
2020-03-13	Room 101	13:00	15:00
2020-03-14	Ensemble Room A	08:00	10:00
2020-03-14	Ensemble Room B	08:00	10:00
2020-03-14	Ensemble Room A	10:00	12:00
2020-03-14	Ensemble Room A	13:00	15:00
2020-03-14	Room 101	15:00	17:00
2020-03-14	Ensemble Room A	15:00	17:00
2020-03-15	Room 101	08:00	10:00
2020-03-15	Ensemble Room A	08:00	10:00
2020-03-15	Room 101	10:00	12:00
2020-03-15	Room 101	13:00	15:00
2020-03-16	Ensemble Room A	08:00	10:00
2020-03-16	Room 101	10:00	12:00
2020-03-16	Ensemble Room A	10:00	12:00
2020-03-16	Room 101	13:00	15:00
2020-03-16	Ensemble Room A	13:00	15:00
2020-03-16	Ensemble Room A	15:00	17:00
2020-03-16	Ensemble Room B	15:00	17:00
2020-03-17	Ensemble Room A	10:00	12:00
2020-03-17	Ensemble Room A	13:00	15:00
2020-03-17	Room 101	13:00	15:00
2020-03-18	Ensemble Room A	08:00	10:00
2020-03-18	Room 101	10:00	12:00
2020-03-18	Ensemble Room A	10:00	12:00
2020-03-18	Ensemble Room B	10:00	12:00
2020-03-18	Ensemble Room A	13:00	15:00
2020-03-19	Room 101	10:00	12:00
2020-03-19	Ensemble Room A	13:00	15:00
2020-03-19	Room 101	13:00	15:00
2020-03-19	Room 101	15:00	17:00
2020-03-19	Room 102	15:00	17:00
2020-03-19	Ensemble Room A	15:00	17:00
2020-03-20	Room 101	10:00	12:00
2020-03-21	Room 101	08:00	10:00
2020-03-21	Room 101	10:00	12:00
2020-03-21	Ensemble Room A	10:00	12:00
2020-03-21	Ensemble Room B	10:00	12:00
2020-03-21	Ensemble Room A	13:00	15:00
2020-03-21	Ensemble Room B	13:00	15:00
2020-03-21	Ensemble Room C	13:00	15:00
2020-03-22	Ensemble Room A	08:00	10:00
2020-03-22	Room 101	08:00	10:00
2020-03-22	Room 101	10:00	12:00
2020-03-22	Ensemble Room A	13:00	15:00
2020-03-22	Room 101	13:00	15:00
2020-03-22	Room 101	15:00	17:00
2020-03-23	Room 101	08:00	10:00
2020-03-23	Ensemble Room A	13:00	15:00
2020-03-23	Room 101	13:00	15:00
2020-03-24	Ensemble Room A	08:00	10:00
2020-03-24	Ensemble Room B	08:00	10:00
2020-03-24	Ensemble Room A	13:00	15:00
2020-03-25	Ensemble Room A	08:00	10:00
2020-03-25	Ensemble Room B	08:00	10:00
2020-03-25	Room 101	10:00	12:00
2020-03-25	Room 102	10:00	12:00
2020-03-25	Ensemble Room A	15:00	17:00
2020-03-26	Room 101	08:00	10:00
2020-03-26	Room 101	10:00	12:00
2020-03-26	Room 101	15:00	17:00
2020-03-27	Ensemble Room A	08:00	10:00
2020-03-27	Ensemble Room B	08:00	10:00
2020-03-27	Ensemble Room A	10:00	12:00
2020-03-27	Room 101	13:00	15:00
2020-03-27	Room 102	13:00	15:00
2020-03-27	Ensemble Room A	13:00	15:00
2020-03-28	Room 101	08:00	10:00
2020-03-28	Room 101	13:00	15:00
2020-03-28	Room 102	13:00	15:00
2020-03-28	Room 101	15:00	17:00
2020-03-29	Room 101	08:00	10:00
2020-03-29	Room 101	10:00	12:00
2020-03-29	Room 102	10:00	12:00
2020-03-29	Ensemble Room A	13:00	15:00
2020-03-29	Ensemble Room A	15:00	17:00
2020-03-30	Room 101	08:00	10:00
2020-03-30	Ensemble Room A	10:00	12:00
2020-03-30	Room 101	13:00	15:00
2020-03-31	Room 101	08:00	10:00
2020-03-31	Ensemble Room A	08:00	10:00
2020-03-31	Ensemble Room A	10:00	12:00
2020-03-31	Room 101	13:00	15:00
2020-03-31	Room 101	15:00	17:00
2020-03-31	Room 102	15:00	17:00
2020-04-01	Ensemble Room A	15:00	17:00
2020-04-02	Ensemble Room A	08:00	10:00
2020-04-02	Room 101	10:00	12:00
2020-04-02	Room 102	10:00	12:00
2020-04-02	Ensemble Room A	10:00	12:00
2020-04-02	Room 101	15:00	17:00
2020-04-02	Room 102	15:00	17:00
2020-04-03	Room 101	08:00	10:00
2020-04-03	Ensemble Room A	10:00	12:00
2020-04-03	Ensemble Room B	10:00	12:00
2020-04-03	Ensemble Room A	13:00	15:00
2020-04-04	Room 101	08:00	10:00
2020-04-04	Room 101	13:00	15:00
2020-04-04	Ensemble Room A	13:00	15:00
2020-04-04	Room 101	15:00	17:00
2020-04-05	Room 101	08:00	10:00
2020-04-05	Ensemble Room A	08:00	10:00
2020-04-05	Ensemble Room A	10:00	12:00
2020-04-05	Room 101	13:00	15:00
2020-04-05	Room 102	13:00	15:00
2020-04-05	Ensemble Room A	15:00	17:00
2020-04-06	Room 101	10:00	12:00
2020-04-06	Room 101	13:00	15:00
2020-04-06	Room 102	13:00	15:00
2020-04-06	Ensemble Room A	15:00	17:00
2020-04-07	Ensemble Room A	10:00	12:00
2020-04-07	Room 101	15:00	17:00
2020-04-08	Ensemble Room A	08:00	10:00
2020-04-08	Ensemble Room A	10:00	12:00
2020-04-08	Room 101	10:00	12:00
2020-04-08	Ensemble Room A	13:00	15:00
2020-04-08	Ensemble Room A	15:00	17:00
2020-04-08	Room 101	15:00	17:00
2020-04-09	Ensemble Room A	08:00	10:00
2020-04-09	Room 101	10:00	12:00
2020-04-09	Room 102	10:00	12:00
2020-04-09	Ensemble Room A	10:00	12:00
2020-04-09	Ensemble Room A	13:00	15:00
2020-04-09	Ensemble Room A	15:00	17:00
2020-04-10	Ensemble Room A	08:00	10:00
2020-04-10	Ensemble Room A	10:00	12:00
2020-04-10	Ensemble Room A	13:00	15:00
2020-04-10	Room 101	13:00	15:00
2020-04-11	Ensemble Room A	10:00	12:00
2020-04-11	Room 101	10:00	12:00
2020-04-11	Ensemble Room A	15:00	17:00
2020-04-12	Room 101	08:00	10:00
2020-04-12	Room 102	08:00	10:00
2020-04-12	Ensemble Room A	10:00	12:00
2020-04-12	Room 101	10:00	12:00
2020-04-12	Ensemble Room B	10:00	12:00
2020-04-12	Room 101	13:00	15:00
2020-04-12	Room 102	13:00	15:00
2020-04-13	Room 101	08:00	10:00
2020-04-13	Room 101	10:00	12:00
2020-04-13	Ensemble Room A	13:00	15:00
2020-04-13	Ensemble Room B	13:00	15:00
2020-04-13	Room 101	13:00	15:00
2020-04-13	Room 101	15:00	17:00
2020-04-13	Ensemble Room A	15:00	17:00
2020-04-13	Room 102	15:00	17:00
2020-04-14	Room 101	08:00	10:00
2020-04-14	Room 102	08:00	10:00
2020-04-14	Room 101	10:00	12:00
2020-04-14	Ensemble Room A	15:00	17:00
2020-04-14	Ensemble Room B	15:00	17:00
2020-04-15	Ensemble Room A	08:00	10:00
2020-04-15	Room 101	10:00	12:00
2020-04-15	Ensemble Room A	10:00	12:00
2020-04-15	Ensemble Room B	10:00	12:00
2020-04-15	Ensemble Room A	13:00	15:00
2020-04-15	Ensemble Room A	15:00	17:00
2020-04-15	Ensemble Room B	15:00	17:00
2020-04-16	Ensemble Room A	10:00	12:00
2020-04-16	Ensemble Room A	15:00	17:00
2020-04-17	Ensemble Room A	08:00	10:00
2020-04-17	Ensemble Room B	08:00	10:00
2020-04-17	Room 101	10:00	12:00
2020-04-17	Ensemble Room A	13:00	15:00
2020-04-17	Ensemble Room B	13:00	15:00
2020-04-17	Room 101	13:00	15:00
2020-04-18	Ensemble Room A	10:00	12:00
2020-04-18	Room 101	10:00	12:00
2020-04-18	Room 101	13:00	15:00
2020-04-18	Ensemble Room A	15:00	17:00
2020-04-18	Room 101	15:00	17:00
2020-04-19	Room 101	10:00	12:00
2020-04-19	Ensemble Room A	13:00	15:00
2020-04-19	Room 101	13:00	15:00
2020-04-19	Room 102	13:00	15:00
2020-04-20	Ensemble Room A	08:00	10:00
2020-04-20	Room 101	08:00	10:00
2020-04-20	Ensemble Room A	10:00	12:00
2020-04-20	Ensemble Room B	10:00	12:00
2020-04-20	Ensemble Room A	13:00	15:00
2020-04-20	Room 101	15:00	17:00
2020-04-21	Room 101	08:00	10:00
2020-04-21	Ensemble Room A	10:00	12:00
2020-04-21	Ensemble Room A	13:00	15:00
2020-04-21	Room 101	13:00	15:00
2020-04-21	Room 101	15:00	17:00
2020-04-22	Room 101	08:00	10:00
2020-04-22	Ensemble Room A	13:00	15:00
2020-04-22	Ensemble Room B	13:00	15:00
2020-04-23	Room 101	08:00	10:00
2020-04-23	Ensemble Room A	08:00	10:00
2020-04-23	Room 101	10:00	12:00
2020-04-23	Ensemble Room A	10:00	12:00
2020-04-23	Ensemble Room A	13:00	15:00
2020-04-23	Ensemble Room B	13:00	15:00
2020-04-23	Room 101	15:00	17:00
2020-04-23	Room 102	15:00	17:00
2020-04-24	Ensemble Room A	08:00	10:00
2020-04-24	Room 101	08:00	10:00
2020-04-24	Room 102	08:00	10:00
2020-04-24	Ensemble Room A	13:00	15:00
2020-04-24	Room 101	15:00	17:00
2020-04-25	Room 101	08:00	10:00
2020-04-25	Ensemble Room A	08:00	10:00
2020-04-25	Room 101	10:00	12:00
2020-04-25	Ensemble Room A	13:00	15:00
2020-04-25	Ensemble Room B	13:00	15:00
2020-04-25	Ensemble Room A	15:00	17:00
2020-04-26	Ensemble Room A	10:00	12:00
2020-04-26	Ensemble Room A	15:00	17:00
2020-04-26	Ensemble Room B	15:00	17:00
2020-04-26	Ensemble Room C	15:00	17:00
2020-04-27	Room 101	08:00	10:00
2020-04-27	Room 102	08:00	10:00
2020-04-27	Room 101	10:00	12:00
2020-04-27	Room 101	13:00	15:00
2020-04-27	Room 102	13:00	15:00
2020-04-27	Ensemble Room A	15:00	17:00
2020-04-27	Ensemble Room B	15:00	17:00
2020-04-28	Room 101	08:00	10:00
2020-04-28	Ensemble Room A	08:00	10:00
2020-04-28	Room 101	13:00	15:00
2020-04-28	Ensemble Room A	15:00	17:00
2020-04-28	Ensemble Room B	15:00	17:00
2020-04-29	Room 101	08:00	10:00
2020-04-29	Room 102	08:00	10:00
2020-04-29	Room 101	10:00	12:00
2020-04-29	Room 102	10:00	12:00
2020-04-29	Room 101	13:00	15:00
2020-04-30	Room 101	08:00	10:00
2020-04-30	Room 102	08:00	10:00
2020-04-30	Ensemble Room A	13:00	15:00
2020-04-30	Ensemble Room B	13:00	15:00
2020-04-30	Ensemble Room C	13:00	15:00
2020-05-01	Room 101	10:00	12:00
2020-05-01	Room 102	10:00	12:00
2020-05-01	Ensemble Room A	13:00	15:00
2020-05-01	Room 101	13:00	15:00
2020-05-01	Ensemble Room A	15:00	17:00
2020-05-02	Room 101	10:00	12:00
2020-05-03	Ensemble Room A	10:00	12:00
2020-05-03	Ensemble Room B	10:00	12:00
2020-05-04	Room 101	08:00	10:00
2020-05-04	Room 102	08:00	10:00
2020-05-04	Room 101	10:00	12:00
2020-05-04	Room 101	13:00	15:00
2020-05-04	Room 101	15:00	17:00
2020-05-05	Room 101	15:00	17:00
2020-05-05	Room 102	15:00	17:00
2020-05-06	Room 101	08:00	10:00
2020-05-06	Ensemble Room A	08:00	10:00
2020-05-06	Room 101	13:00	15:00
2020-05-07	Ensemble Room A	08:00	10:00
2020-05-07	Room 101	13:00	15:00
2020-05-07	Ensemble Room A	15:00	17:00
2020-05-07	Room 101	15:00	17:00
2020-05-08	Ensemble Room A	13:00	15:00
2020-05-08	Room 101	15:00	17:00
2020-05-08	Ensemble Room A	15:00	17:00
2020-05-09	Ensemble Room A	10:00	12:00
2020-05-09	Room 101	10:00	12:00
2020-05-09	Ensemble Room A	13:00	15:00
2020-05-09	Room 101	15:00	17:00
2020-05-10	Room 101	08:00	10:00
2020-05-10	Room 101	13:00	15:00
2020-05-10	Room 101	15:00	17:00
2020-05-11	Ensemble Room A	08:00	10:00
2020-05-11	Room 101	10:00	12:00
2020-05-11	Room 102	10:00	12:00
2020-05-11	Room 101	15:00	17:00
2020-05-11	Room 102	15:00	17:00
2020-05-12	Room 101	10:00	12:00
2020-05-12	Room 101	13:00	15:00
2020-05-13	Room 101	08:00	10:00
2020-05-13	Room 101	10:00	12:00
2020-05-13	Ensemble Room A	10:00	12:00
2020-05-13	Ensemble Room A	13:00	15:00
2020-05-13	Ensemble Room A	15:00	17:00
2020-05-14	Ensemble Room A	08:00	10:00
2020-05-14	Room 101	13:00	15:00
2020-05-14	Room 101	15:00	17:00
2020-05-15	Room 101	08:00	10:00
2020-05-15	Room 101	13:00	15:00
2020-05-15	Room 102	13:00	15:00
2020-05-15	Room 101	15:00	17:00
2020-05-15	Ensemble Room A	15:00	17:00
2020-05-16	Ensemble Room A	08:00	10:00
2020-05-16	Ensemble Room B	08:00	10:00
2020-05-16	Ensemble Room A	10:00	12:00
2020-05-16	Room 101	10:00	12:00
2020-05-16	Room 101	13:00	15:00
2020-05-17	Ensemble Room A	08:00	10:00
2020-05-17	Ensemble Room A	13:00	15:00
2020-05-17	Room 101	15:00	17:00
2020-05-17	Ensemble Room A	15:00	17:00
2020-05-17	Ensemble Room B	15:00	17:00
2020-05-18	Ensemble Room A	10:00	12:00
2020-05-18	Room 101	13:00	15:00
2020-05-18	Room 101	15:00	17:00
2020-05-18	Ensemble Room A	15:00	17:00
2020-05-19	Room 101	08:00	10:00
2020-05-19	Room 101	10:00	12:00
2020-05-19	Room 102	10:00	12:00
2020-05-19	Room 101	13:00	15:00
2020-05-19	Room 101	15:00	17:00
2020-05-20	Room 101	08:00	10:00
2020-05-20	Room 101	10:00	12:00
2020-05-20	Ensemble Room A	15:00	17:00
2020-05-20	Room 101	15:00	17:00
2020-05-21	Room 101	08:00	10:00
2020-05-21	Room 101	10:00	12:00
2020-05-21	Room 101	13:00	15:00
2020-05-21	Room 101	15:00	17:00
2020-05-21	Room 102	15:00	17:00
2020-05-22	Room 101	08:00	10:00
2020-05-22	Ensemble Room A	08:00	10:00
2020-05-22	Room 102	08:00	10:00
2020-05-22	Ensemble Room A	13:00	15:00
2020-05-23	Ensemble Room A	08:00	10:00
2020-05-23	Room 101	08:00	10:00
2020-05-23	Room 101	10:00	12:00
2020-05-23	Ensemble Room A	10:00	12:00
2020-05-23	Room 101	13:00	15:00
2020-05-23	Ensemble Room A	13:00	15:00
2020-05-23	Ensemble Room A	15:00	17:00
2020-05-24	Room 101	10:00	12:00
2020-05-24	Ensemble Room A	13:00	15:00
2020-05-24	Room 101	13:00	15:00
2020-05-24	Room 101	15:00	17:00
2020-05-24	Room 102	15:00	17:00
2020-05-25	Ensemble Room A	08:00	10:00
2020-05-25	Room 101	10:00	12:00
2020-05-25	Ensemble Room A	13:00	15:00
2020-05-25	Room 101	15:00	17:00
2020-05-26	Ensemble Room A	08:00	10:00
2020-05-26	Room 101	08:00	10:00
2020-05-26	Room 102	08:00	10:00
2020-05-26	Room 101	10:00	12:00
2020-05-26	Room 102	10:00	12:00
2020-05-26	Ensemble Room A	13:00	15:00
2020-05-26	Ensemble Room A	15:00	17:00
2020-05-26	Ensemble Room B	15:00	17:00
2020-05-26	Room 101	15:00	17:00
2020-05-27	Ensemble Room A	08:00	10:00
2020-05-27	Room 101	10:00	12:00
2020-05-27	Room 101	13:00	15:00
2020-05-27	Room 102	13:00	15:00
2020-05-27	Ensemble Room A	13:00	15:00
2020-05-27	Room 101	15:00	17:00
2020-05-27	Ensemble Room A	15:00	17:00
2020-05-27	Ensemble Room B	15:00	17:00
2020-05-28	Ensemble Room A	13:00	15:00
2020-05-29	Ensemble Room A	08:00	10:00
2020-05-29	Ensemble Room A	10:00	12:00
2020-05-29	Room 101	10:00	12:00
2020-05-29	Room 102	10:00	12:00
2020-05-29	Room 101	15:00	17:00
2020-05-30	Room 101	08:00	10:00
2020-05-30	Ensemble Room A	08:00	10:00
2020-05-30	Ensemble Room B	08:00	10:00
2020-05-30	Room 101	10:00	12:00
2020-05-30	Room 101	15:00	17:00
2020-05-30	Room 102	15:00	17:00
2020-05-31	Ensemble Room A	10:00	12:00
2020-05-31	Room 101	13:00	15:00
2020-05-31	Ensemble Room A	13:00	15:00
2020-06-01	Room 101	10:00	12:00
2020-06-01	Room 102	10:00	12:00
2020-06-01	Ensemble Room A	13:00	15:00
2020-06-01	Ensemble Room B	13:00	15:00
2020-06-01	Room 101	15:00	17:00
2020-06-02	Room 101	08:00	10:00
2020-06-02	Room 101	10:00	12:00
2020-06-02	Ensemble Room A	10:00	12:00
2020-06-02	Ensemble Room A	13:00	15:00
2020-06-02	Ensemble Room A	15:00	17:00
2020-06-02	Room 101	15:00	17:00
2020-06-03	Ensemble Room A	08:00	10:00
2020-06-03	Room 101	08:00	10:00
2020-06-03	Room 101	10:00	12:00
2020-06-03	Ensemble Room A	13:00	15:00
2020-06-03	Room 101	13:00	15:00
2020-06-03	Room 101	15:00	17:00
2020-06-03	Ensemble Room A	15:00	17:00
2020-06-04	Room 101	08:00	10:00
2020-06-04	Ensemble Room A	08:00	10:00
2020-06-04	Ensemble Room A	10:00	12:00
2020-06-04	Ensemble Room B	10:00	12:00
2020-06-04	Room 101	13:00	15:00
2020-06-04	Ensemble Room A	13:00	15:00
2020-06-04	Room 101	15:00	17:00
2020-06-04	Ensemble Room A	15:00	17:00
2020-06-05	Room 101	08:00	10:00
2020-06-05	Ensemble Room A	08:00	10:00
2020-06-05	Room 102	08:00	10:00
2020-06-05	Room 101	10:00	12:00
2020-06-05	Ensemble Room A	13:00	15:00
2020-06-05	Ensemble Room B	13:00	15:00
2020-06-05	Room 101	15:00	17:00
2020-06-06	Ensemble Room A	10:00	12:00
2020-06-06	Room 101	10:00	12:00
2020-06-07	Ensemble Room A	10:00	12:00
2020-06-07	Ensemble Room B	10:00	12:00
2020-06-07	Room 101	10:00	12:00
2020-06-07	Ensemble Room A	13:00	15:00
2020-06-07	Room 101	15:00	17:00
2020-06-07	Ensemble Room A	15:00	17:00
2020-06-07	Ensemble Room B	15:00	17:00
2020-06-08	Ensemble Room A	10:00	12:00
2020-06-08	Ensemble Room B	10:00	12:00
2020-06-08	Room 101	13:00	15:00
2020-06-08	Ensemble Room A	13:00	15:00
2020-06-08	Room 101	15:00	17:00
2020-06-09	Room 101	10:00	12:00
2020-06-09	Ensemble Room A	13:00	15:00
2020-06-09	Ensemble Room B	13:00	15:00
2020-06-09	Room 101	13:00	15:00
2020-06-09	Room 101	15:00	17:00
2020-06-09	Room 102	15:00	17:00
2020-06-10	Room 101	10:00	12:00
2020-06-10	Ensemble Room A	10:00	12:00
2020-06-10	Ensemble Room A	13:00	15:00
2020-06-10	Room 101	13:00	15:00
2020-06-10	Room 101	15:00	17:00
2020-06-11	Room 101	08:00	10:00
2020-06-11	Room 101	10:00	12:00
2020-06-11	Room 101	15:00	17:00
2020-06-12	Room 101	08:00	10:00
2020-06-12	Room 102	08:00	10:00
2020-06-12	Room 101	13:00	15:00
2020-06-12	Ensemble Room A	15:00	17:00
2020-06-12	Ensemble Room B	15:00	17:00
2020-06-13	Ensemble Room A	08:00	10:00
2020-06-13	Room 101	08:00	10:00
2020-06-13	Room 101	10:00	12:00
2020-06-13	Room 101	13:00	15:00
2020-06-13	Ensemble Room A	15:00	17:00
2020-06-14	Room 101	08:00	10:00
2020-06-14	Ensemble Room A	08:00	10:00
2020-06-14	Room 101	15:00	17:00
2020-06-15	Ensemble Room A	13:00	15:00
2020-06-15	Ensemble Room B	13:00	15:00
2020-06-15	Room 101	13:00	15:00
2020-06-15	Room 101	15:00	17:00
2020-06-15	Ensemble Room A	15:00	17:00
2020-06-16	Ensemble Room A	10:00	12:00
2020-06-16	Room 101	10:00	12:00
2020-06-16	Room 102	10:00	12:00
2020-06-16	Ensemble Room A	13:00	15:00
2020-06-16	Room 101	13:00	15:00
2020-06-16	Ensemble Room A	15:00	17:00
2020-06-16	Room 101	15:00	17:00
2020-06-17	Ensemble Room A	08:00	10:00
2020-06-17	Ensemble Room A	10:00	12:00
2020-06-17	Room 101	10:00	12:00
2020-06-17	Ensemble Room A	13:00	15:00
2020-06-17	Room 101	15:00	17:00
2020-06-18	Room 101	08:00	10:00
2020-06-18	Ensemble Room A	08:00	10:00
2020-06-18	Room 102	08:00	10:00
2020-06-18	Room 101	10:00	12:00
2020-06-18	Room 101	13:00	15:00
2020-06-18	Room 101	15:00	17:00
2020-06-18	Ensemble Room A	15:00	17:00
2020-06-19	Ensemble Room A	08:00	10:00
2020-06-19	Ensemble Room B	08:00	10:00
2020-06-19	Room 101	13:00	15:00
2020-06-20	Ensemble Room A	08:00	10:00
2020-06-20	Ensemble Room A	10:00	12:00
2020-06-20	Ensemble Room A	13:00	15:00
2020-06-20	Room 101	13:00	15:00
2020-06-21	Ensemble Room A	08:00	10:00
2020-06-21	Room 101	10:00	12:00
2020-06-21	Ensemble Room A	10:00	12:00
2020-06-21	Ensemble Room B	10:00	12:00
2020-06-21	Ensemble Room A	15:00	17:00
2020-06-21	Ensemble Room B	15:00	17:00
2020-06-22	Ensemble Room A	08:00	10:00
2020-06-22	Ensemble Room B	08:00	10:00
2020-06-22	Room 101	08:00	10:00
2020-06-22	Room 101	10:00	12:00
2020-06-22	Ensemble Room A	10:00	12:00
2020-06-22	Ensemble Room A	13:00	15:00
2020-06-22	Room 101	13:00	15:00
2020-06-22	Ensemble Room B	13:00	15:00
2020-06-22	Room 101	15:00	17:00
2020-06-22	Ensemble Room A	15:00	17:00
2020-06-23	Ensemble Room A	10:00	12:00
2020-06-23	Ensemble Room B	10:00	12:00
2020-06-23	Ensemble Room A	15:00	17:00
2020-06-24	Ensemble Room A	08:00	10:00
2020-06-24	Ensemble Room A	10:00	12:00
2020-06-24	Room 101	10:00	12:00
2020-06-24	Ensemble Room A	13:00	15:00
2020-06-24	Ensemble Room B	13:00	15:00
2020-06-24	Room 101	15:00	17:00
2020-06-24	Room 102	15:00	17:00
2020-06-25	Ensemble Room A	08:00	10:00
2020-06-25	Room 101	10:00	12:00
2020-06-25	Room 102	10:00	12:00
2020-06-25	Room 101	13:00	15:00
2020-06-26	Ensemble Room A	08:00	10:00
2020-06-26	Room 101	10:00	12:00
2020-06-26	Ensemble Room A	13:00	15:00
2020-06-26	Ensemble Room B	13:00	15:00
2020-06-26	Room 101	13:00	15:00
2020-06-26	Room 101	15:00	17:00
2020-06-26	Ensemble Room A	15:00	17:00
2020-06-27	Ensemble Room A	08:00	10:00
2020-06-27	Ensemble Room B	08:00	10:00
2020-06-27	Ensemble Room A	10:00	12:00
2020-06-27	Room 101	13:00	15:00
2020-06-27	Ensemble Room A	15:00	17:00
2020-06-27	Room 101	15:00	17:00
2020-06-28	Ensemble Room A	08:00	10:00
2020-06-28	Ensemble Room B	08:00	10:00
2020-06-28	Ensemble Room A	10:00	12:00
2020-06-28	Ensemble Room B	10:00	12:00
2020-06-28	Room 101	10:00	12:00
2020-06-28	Ensemble Room A	13:00	15:00
2020-06-28	Ensemble Room B	13:00	15:00
2020-06-28	Ensemble Room C	13:00	15:00
2020-06-29	Ensemble Room A	08:00	10:00
2020-06-29	Ensemble Room B	08:00	10:00
2020-06-29	Room 101	10:00	12:00
2020-06-29	Room 102	10:00	12:00
2020-06-29	Ensemble Room A	15:00	17:00
2020-06-30	Room 101	08:00	10:00
2020-06-30	Ensemble Room A	08:00	10:00
2020-06-30	Ensemble Room A	10:00	12:00
2020-06-30	Ensemble Room A	13:00	15:00
2020-06-30	Room 101	15:00	17:00
2020-07-01	Room 101	10:00	12:00
2020-07-01	Room 102	10:00	12:00
2020-07-01	Ensemble Room A	13:00	15:00
2020-07-01	Ensemble Room B	13:00	15:00
2020-07-01	Ensemble Room A	15:00	17:00
2020-07-01	Room 101	15:00	17:00
2020-07-02	Room 101	08:00	10:00
2020-07-02	Ensemble Room A	08:00	10:00
2020-07-02	Ensemble Room B	08:00	10:00
2020-07-02	Room 101	15:00	17:00
2020-07-03	Room 101	08:00	10:00
2020-07-03	Ensemble Room A	10:00	12:00
2020-07-03	Room 101	13:00	15:00
2020-07-03	Room 102	13:00	15:00
2020-07-03	Room 101	15:00	17:00
2020-07-03	Room 102	15:00	17:00
2020-07-03	Room 103	15:00	17:00
2020-07-04	Ensemble Room A	08:00	10:00
2020-07-04	Ensemble Room B	08:00	10:00
2020-07-04	Ensemble Room C	08:00	10:00
2020-07-04	Room 101	10:00	12:00
2020-07-04	Room 101	13:00	15:00
2020-07-04	Room 102	13:00	15:00
2020-07-04	Room 101	15:00	17:00
2020-07-04	Room 102	15:00	17:00
2020-07-05	Ensemble Room A	08:00	10:00
2020-07-05	Room 101	08:00	10:00
2020-07-05	Ensemble Room A	13:00	15:00
2020-07-05	Room 101	13:00	15:00
2020-07-05	Room 102	13:00	15:00
2020-07-05	Ensemble Room A	15:00	17:00
2020-07-06	Ensemble Room A	10:00	12:00
2020-07-06	Room 101	13:00	15:00
2020-07-06	Ensemble Room A	13:00	15:00
2020-07-06	Ensemble Room A	15:00	17:00
2020-07-06	Room 101	15:00	17:00
2020-07-07	Ensemble Room A	08:00	10:00
2020-07-07	Room 101	08:00	10:00
2020-07-07	Room 101	10:00	12:00
2020-07-07	Ensemble Room A	10:00	12:00
2020-07-07	Room 101	13:00	15:00
2020-07-07	Ensemble Room A	15:00	17:00
2020-07-08	Ensemble Room A	08:00	10:00
2020-07-08	Ensemble Room B	08:00	10:00
2020-07-08	Room 101	10:00	12:00
2020-07-08	Ensemble Room A	10:00	12:00
2020-07-08	Ensemble Room A	15:00	17:00
2020-07-09	Room 101	08:00	10:00
2020-07-09	Ensemble Room A	10:00	12:00
2020-07-09	Room 101	10:00	12:00
2020-07-09	Ensemble Room B	10:00	12:00
2020-07-09	Ensemble Room A	13:00	15:00
2020-07-09	Ensemble Room A	15:00	17:00
2020-07-09	Room 101	15:00	17:00
2020-07-10	Room 101	08:00	10:00
2020-07-10	Ensemble Room A	08:00	10:00
2020-07-10	Ensemble Room A	15:00	17:00
2020-07-10	Room 101	15:00	17:00
2020-07-11	Room 101	10:00	12:00
2020-07-11	Room 101	15:00	17:00
2020-07-11	Room 102	15:00	17:00
2020-07-12	Ensemble Room A	08:00	10:00
2020-07-12	Room 101	15:00	17:00
2020-07-13	Ensemble Room A	13:00	15:00
2020-07-14	Room 101	13:00	15:00
2020-07-14	Ensemble Room A	13:00	15:00
2020-07-14	Room 101	15:00	17:00
2020-07-15	Room 101	08:00	10:00
2020-07-15	Room 102	08:00	10:00
2020-07-15	Ensemble Room A	13:00	15:00
2020-07-15	Room 101	15:00	17:00
2020-07-16	Ensemble Room A	08:00	10:00
2020-07-16	Ensemble Room A	10:00	12:00
2020-07-16	Room 101	13:00	15:00
2020-07-16	Ensemble Room A	13:00	15:00
2020-07-16	Room 101	15:00	17:00
2020-07-17	Room 101	10:00	12:00
2020-07-17	Ensemble Room A	10:00	12:00
2020-07-17	Ensemble Room B	10:00	12:00
2020-07-17	Ensemble Room A	13:00	15:00
2020-07-17	Room 101	13:00	15:00
2020-07-17	Ensemble Room A	15:00	17:00
2020-07-18	Ensemble Room A	08:00	10:00
2020-07-18	Room 101	10:00	12:00
2020-07-18	Ensemble Room A	10:00	12:00
2020-07-18	Ensemble Room B	10:00	12:00
2020-07-18	Ensemble Room A	13:00	15:00
2020-07-18	Ensemble Room B	13:00	15:00
2020-07-18	Room 101	15:00	17:00
2020-07-18	Room 102	15:00	17:00
2020-07-19	Room 101	08:00	10:00
2020-07-19	Room 102	08:00	10:00
2020-07-19	Ensemble Room A	13:00	15:00
2020-07-19	Room 101	15:00	17:00
2020-07-19	Room 102	15:00	17:00
2020-07-20	Ensemble Room A	10:00	12:00
2020-07-20	Room 101	10:00	12:00
2020-07-20	Room 101	13:00	15:00
2020-07-20	Ensemble Room A	15:00	17:00
2020-07-20	Ensemble Room B	15:00	17:00
2020-07-21	Room 101	08:00	10:00
2020-07-21	Room 102	08:00	10:00
2020-07-21	Ensemble Room A	08:00	10:00
2020-07-21	Ensemble Room A	10:00	12:00
2020-07-21	Ensemble Room B	10:00	12:00
2020-07-21	Room 101	13:00	15:00
2020-07-21	Room 102	13:00	15:00
2020-07-21	Ensemble Room A	15:00	17:00
2020-07-22	Room 101	08:00	10:00
2020-07-22	Room 102	08:00	10:00
2020-07-22	Room 101	10:00	12:00
2020-07-22	Ensemble Room A	10:00	12:00
2020-07-22	Ensemble Room A	13:00	15:00
2020-07-22	Room 101	13:00	15:00
2020-07-22	Room 102	13:00	15:00
2020-07-22	Ensemble Room A	15:00	17:00
2020-07-23	Room 101	08:00	10:00
2020-07-23	Ensemble Room A	10:00	12:00
2020-07-23	Room 101	10:00	12:00
2020-07-23	Ensemble Room A	15:00	17:00
2020-07-24	Room 101	08:00	10:00
2020-07-24	Room 102	08:00	10:00
2020-07-24	Room 103	08:00	10:00
2020-07-24	Ensemble Room A	13:00	15:00
2020-07-24	Ensemble Room B	13:00	15:00
2020-07-24	Room 101	15:00	17:00
2020-07-24	Room 102	15:00	17:00
2020-07-24	Ensemble Room A	15:00	17:00
2020-07-25	Room 101	10:00	12:00
2020-07-25	Ensemble Room A	13:00	15:00
2020-07-25	Room 101	13:00	15:00
2020-07-25	Ensemble Room A	15:00	17:00
2020-07-25	Ensemble Room B	15:00	17:00
2020-07-26	Room 101	08:00	10:00
2020-07-26	Room 102	08:00	10:00
2020-07-26	Room 101	10:00	12:00
2020-07-26	Room 101	13:00	15:00
2020-07-26	Room 101	15:00	17:00
2020-07-26	Room 102	15:00	17:00
2020-07-27	Ensemble Room A	08:00	10:00
2020-07-27	Room 101	08:00	10:00
2020-07-27	Ensemble Room B	08:00	10:00
2020-07-27	Ensemble Room A	10:00	12:00
2020-07-27	Room 101	10:00	12:00
2020-07-27	Ensemble Room A	13:00	15:00
2020-07-27	Ensemble Room A	15:00	17:00
2020-07-27	Room 101	15:00	17:00
2020-07-27	Ensemble Room B	15:00	17:00
2020-07-28	Room 101	08:00	10:00
2020-07-28	Ensemble Room A	08:00	10:00
2020-07-28	Ensemble Room B	08:00	10:00
2020-07-29	Ensemble Room A	08:00	10:00
2020-07-29	Ensemble Room B	08:00	10:00
2020-07-29	Room 101	13:00	15:00
2020-07-29	Room 101	15:00	17:00
2020-07-29	Ensemble Room A	15:00	17:00
2020-07-29	Room 102	15:00	17:00
2020-07-30	Room 101	08:00	10:00
2020-07-30	Room 101	10:00	12:00
2020-07-30	Ensemble Room A	10:00	12:00
2020-07-30	Room 101	13:00	15:00
2020-07-30	Ensemble Room A	13:00	15:00
2020-07-31	Room 101	10:00	12:00
2020-07-31	Ensemble Room A	10:00	12:00
2020-07-31	Room 102	10:00	12:00
2020-07-31	Room 101	13:00	15:00
2020-07-31	Ensemble Room A	15:00	17:00
2020-07-31	Room 101	15:00	17:00
2020-07-31	Ensemble Room B	15:00	17:00
2020-08-01	Ensemble Room A	08:00	10:00
2020-08-01	Room 101	13:00	15:00
2020-08-01	Room 101	15:00	17:00
2020-08-01	Ensemble Room A	15:00	17:00
2020-08-02	Ensemble Room A	08:00	10:00
2020-08-02	Ensemble Room B	08:00	10:00
2020-08-02	Room 101	10:00	12:00
2020-08-02	Ensemble Room A	10:00	12:00
2020-08-02	Ensemble Room B	10:00	12:00
2020-08-02	Room 101	13:00	15:00
2020-08-02	Ensemble Room A	15:00	17:00
2020-08-02	Ensemble Room B	15:00	17:00
2020-08-02	Ensemble Room C	15:00	17:00
2020-08-03	Room 101	08:00	10:00
2020-08-03	Room 101	10:00	12:00
2020-08-03	Ensemble Room A	10:00	12:00
2020-08-03	Room 102	10:00	12:00
2020-08-03	Ensemble Room A	13:00	15:00
2020-08-03	Ensemble Room A	15:00	17:00
2020-08-04	Ensemble Room A	08:00	10:00
2020-08-04	Room 101	08:00	10:00
2020-08-04	Room 101	10:00	12:00
2020-08-04	Ensemble Room A	10:00	12:00
2020-08-04	Ensemble Room B	10:00	12:00
2020-08-04	Ensemble Room A	15:00	17:00
2020-08-04	Ensemble Room B	15:00	17:00
2020-08-04	Ensemble Room C	15:00	17:00
2020-08-05	Ensemble Room A	08:00	10:00
2020-08-05	Room 101	10:00	12:00
2020-08-05	Room 102	10:00	12:00
2020-08-05	Ensemble Room A	15:00	17:00
2020-08-05	Ensemble Room B	15:00	17:00
2020-08-05	Ensemble Room C	15:00	17:00
2020-08-06	Room 101	08:00	10:00
2020-08-06	Ensemble Room A	08:00	10:00
2020-08-06	Ensemble Room A	10:00	12:00
2020-08-06	Ensemble Room A	13:00	15:00
2020-08-07	Ensemble Room A	13:00	15:00
2020-08-07	Ensemble Room A	15:00	17:00
2020-08-08	Room 101	13:00	15:00
2020-08-08	Room 102	13:00	15:00
2020-08-08	Room 103	13:00	15:00
2020-08-08	Room 101	15:00	17:00
2020-08-09	Ensemble Room A	08:00	10:00
2020-08-09	Ensemble Room A	15:00	17:00
2020-08-10	Room 101	13:00	15:00
2020-08-10	Ensemble Room A	13:00	15:00
2020-08-11	Room 101	08:00	10:00
2020-08-11	Ensemble Room A	08:00	10:00
2020-08-11	Room 101	10:00	12:00
2020-08-11	Ensemble Room A	13:00	15:00
2020-08-12	Room 101	13:00	15:00
2020-08-12	Ensemble Room A	15:00	17:00
2020-08-12	Room 101	15:00	17:00
2020-08-13	Ensemble Room A	08:00	10:00
2020-08-13	Room 101	08:00	10:00
2020-08-13	Ensemble Room A	15:00	17:00
2020-08-13	Ensemble Room B	15:00	17:00
2020-08-13	Room 101	15:00	17:00
2020-08-14	Room 101	08:00	10:00
2020-08-14	Ensemble Room A	08:00	10:00
2020-08-14	Ensemble Room A	10:00	12:00
2020-08-14	Room 101	13:00	15:00
2020-08-14	Ensemble Room A	15:00	17:00
2020-08-14	Room 101	15:00	17:00
2020-08-15	Ensemble Room A	08:00	10:00
2020-08-15	Room 101	10:00	12:00
2020-08-15	Ensemble Room A	10:00	12:00
2020-08-15	Ensemble Room A	13:00	15:00
2020-08-16	Ensemble Room A	10:00	12:00
2020-08-16	Ensemble Room B	10:00	12:00
2020-08-16	Ensemble Room A	13:00	15:00
2020-08-16	Room 101	13:00	15:00
2020-08-16	Room 102	13:00	15:00
2020-08-17	Ensemble Room A	08:00	10:00
2020-08-17	Ensemble Room B	08:00	10:00
2020-08-17	Ensemble Room A	15:00	17:00
2020-08-17	Ensemble Room B	15:00	17:00
2020-08-18	Room 101	08:00	10:00
2020-08-18	Room 101	10:00	12:00
2020-08-18	Ensemble Room A	15:00	17:00
2020-08-19	Room 101	08:00	10:00
2020-08-19	Room 102	08:00	10:00
2020-08-19	Ensemble Room A	08:00	10:00
2020-08-19	Room 101	10:00	12:00
2020-08-19	Ensemble Room A	10:00	12:00
2020-08-19	Ensemble Room A	13:00	15:00
2020-08-19	Room 101	13:00	15:00
2020-08-19	Ensemble Room A	15:00	17:00
2020-08-19	Ensemble Room B	15:00	17:00
2020-08-19	Ensemble Room C	15:00	17:00
2020-08-20	Ensemble Room A	08:00	10:00
2020-08-20	Ensemble Room A	10:00	12:00
2020-08-20	Room 101	13:00	15:00
2020-08-20	Room 101	15:00	17:00
2020-08-20	Ensemble Room A	15:00	17:00
2020-08-21	Room 101	08:00	10:00
2020-08-21	Ensemble Room A	10:00	12:00
2020-08-21	Room 101	10:00	12:00
2020-08-21	Room 101	15:00	17:00
2020-08-21	Ensemble Room A	15:00	17:00
2020-08-22	Ensemble Room A	08:00	10:00
2020-08-22	Room 101	10:00	12:00
2020-08-22	Room 101	15:00	17:00
2020-08-23	Room 101	13:00	15:00
2020-08-23	Ensemble Room A	15:00	17:00
2020-08-24	Ensemble Room A	08:00	10:00
2020-08-24	Room 101	10:00	12:00
2020-08-24	Ensemble Room A	10:00	12:00
2020-08-24	Ensemble Room A	13:00	15:00
2020-08-24	Room 101	13:00	15:00
2020-08-24	Ensemble Room B	13:00	15:00
2020-08-24	Room 101	15:00	17:00
2020-08-25	Room 101	08:00	10:00
2020-08-25	Room 102	08:00	10:00
2020-08-25	Room 101	10:00	12:00
2020-08-25	Ensemble Room A	10:00	12:00
2020-08-25	Room 101	13:00	15:00
2020-08-25	Room 102	13:00	15:00
2020-08-25	Room 101	15:00	17:00
2020-08-26	Room 101	10:00	12:00
2020-08-27	Ensemble Room A	08:00	10:00
2020-08-27	Room 101	08:00	10:00
2020-08-27	Room 102	08:00	10:00
2020-08-27	Ensemble Room A	10:00	12:00
2020-08-27	Room 101	13:00	15:00
2020-08-27	Ensemble Room A	15:00	17:00
2020-08-27	Room 101	15:00	17:00
2020-08-27	Ensemble Room B	15:00	17:00
2020-08-28	Room 101	08:00	10:00
2020-08-28	Room 102	08:00	10:00
2020-08-28	Room 103	08:00	10:00
2020-08-28	Ensemble Room A	10:00	12:00
2020-08-28	Ensemble Room A	15:00	17:00
2020-08-29	Room 101	08:00	10:00
2020-08-29	Room 102	08:00	10:00
2020-08-29	Ensemble Room A	15:00	17:00
2020-08-30	Room 101	08:00	10:00
2020-08-30	Room 102	08:00	10:00
2020-08-30	Room 101	10:00	12:00
2020-08-30	Ensemble Room A	10:00	12:00
2020-08-30	Room 101	13:00	15:00
2020-08-30	Ensemble Room A	15:00	17:00
2020-08-31	Ensemble Room A	08:00	10:00
2020-08-31	Ensemble Room A	10:00	12:00
2020-08-31	Room 101	13:00	15:00
2020-08-31	Room 101	15:00	17:00
2020-09-01	Room 101	08:00	10:00
2020-09-01	Ensemble Room A	08:00	10:00
2020-09-01	Room 101	10:00	12:00
2020-09-01	Ensemble Room A	10:00	12:00
2020-09-02	Ensemble Room A	08:00	10:00
2020-09-02	Room 101	10:00	12:00
2020-09-02	Ensemble Room A	15:00	17:00
2020-09-03	Room 101	15:00	17:00
2020-09-03	Ensemble Room A	15:00	17:00
2020-09-04	Ensemble Room A	08:00	10:00
2020-09-04	Room 101	10:00	12:00
2020-09-04	Ensemble Room A	10:00	12:00
2020-09-04	Room 101	13:00	15:00
2020-09-04	Ensemble Room A	15:00	17:00
2020-09-05	Room 101	08:00	10:00
2020-09-05	Ensemble Room A	08:00	10:00
2020-09-05	Ensemble Room B	08:00	10:00
2020-09-05	Ensemble Room A	10:00	12:00
2020-09-05	Room 101	10:00	12:00
2020-09-05	Room 101	13:00	15:00
2020-09-05	Room 101	15:00	17:00
2020-09-06	Ensemble Room A	08:00	10:00
2020-09-06	Ensemble Room B	08:00	10:00
2020-09-06	Ensemble Room A	10:00	12:00
2020-09-06	Room 101	13:00	15:00
2020-09-06	Room 102	13:00	15:00
2020-09-07	Room 101	10:00	12:00
2020-09-07	Ensemble Room A	13:00	15:00
2020-09-07	Ensemble Room A	15:00	17:00
2020-09-07	Room 101	15:00	17:00
2020-09-08	Room 101	10:00	12:00
2020-09-08	Room 102	10:00	12:00
2020-09-08	Ensemble Room A	13:00	15:00
2020-09-08	Ensemble Room B	13:00	15:00
2020-09-08	Room 101	15:00	17:00
2020-09-08	Ensemble Room A	15:00	17:00
2020-09-09	Ensemble Room A	08:00	10:00
2020-09-09	Room 101	10:00	12:00
2020-09-09	Room 102	10:00	12:00
2020-09-09	Room 101	13:00	15:00
2020-09-09	Room 101	15:00	17:00
2020-09-10	Room 101	08:00	10:00
2020-09-10	Ensemble Room A	08:00	10:00
2020-09-10	Ensemble Room A	10:00	12:00
2020-09-10	Ensemble Room A	13:00	15:00
2020-09-10	Ensemble Room A	15:00	17:00
2020-09-10	Ensemble Room B	15:00	17:00
2020-09-11	Room 101	08:00	10:00
2020-09-11	Ensemble Room A	08:00	10:00
2020-09-11	Room 101	10:00	12:00
2020-09-11	Ensemble Room A	10:00	12:00
2020-09-11	Ensemble Room B	10:00	12:00
2020-09-12	Ensemble Room A	10:00	12:00
2020-09-12	Room 101	10:00	12:00
2020-09-12	Room 101	13:00	15:00
2020-09-12	Room 102	13:00	15:00
2020-09-12	Room 101	15:00	17:00
2020-09-13	Room 101	08:00	10:00
2020-09-13	Ensemble Room A	10:00	12:00
2020-09-13	Ensemble Room B	10:00	12:00
2020-09-13	Ensemble Room A	13:00	15:00
2020-09-13	Ensemble Room B	13:00	15:00
2020-09-14	Ensemble Room A	08:00	10:00
2020-09-14	Ensemble Room A	10:00	12:00
2020-09-14	Ensemble Room B	10:00	12:00
2020-09-14	Ensemble Room A	13:00	15:00
2020-09-14	Room 101	13:00	15:00
2020-09-14	Ensemble Room A	15:00	17:00
2020-09-15	Room 101	10:00	12:00
2020-09-15	Room 101	13:00	15:00
2020-09-15	Room 102	13:00	15:00
2020-09-15	Room 101	15:00	17:00
2020-09-16	Ensemble Room A	08:00	10:00
2020-09-16	Ensemble Room A	10:00	12:00
2020-09-17	Ensemble Room A	08:00	10:00
2020-09-17	Ensemble Room B	08:00	10:00
2020-09-17	Room 101	08:00	10:00
2020-09-17	Room 101	13:00	15:00
2020-09-17	Ensemble Room A	13:00	15:00
2020-09-17	Ensemble Room A	15:00	17:00
2020-09-17	Ensemble Room B	15:00	17:00
2020-09-17	Room 101	15:00	17:00
2020-09-18	Room 101	08:00	10:00
2020-09-18	Room 101	13:00	15:00
2020-09-18	Ensemble Room A	13:00	15:00
2020-09-18	Ensemble Room A	15:00	17:00
2020-09-18	Ensemble Room B	15:00	17:00
2020-09-18	Ensemble Room C	15:00	17:00
2020-09-19	Room 101	08:00	10:00
2020-09-19	Ensemble Room A	08:00	10:00
2020-09-19	Ensemble Room A	10:00	12:00
2020-09-19	Ensemble Room A	13:00	15:00
2020-09-19	Ensemble Room A	15:00	17:00
2020-09-20	Room 101	08:00	10:00
2020-09-20	Room 101	13:00	15:00
2020-09-20	Room 101	15:00	17:00
2020-09-20	Room 102	15:00	17:00
2020-09-21	Room 101	10:00	12:00
2020-09-21	Room 101	13:00	15:00
2020-09-21	Room 102	13:00	15:00
2020-09-21	Room 101	15:00	17:00
2020-09-21	Room 102	15:00	17:00
2020-09-22	Room 101	10:00	12:00
2020-09-22	Room 102	10:00	12:00
2020-09-22	Ensemble Room A	13:00	15:00
2020-09-22	Room 101	13:00	15:00
2020-09-22	Ensemble Room B	13:00	15:00
2020-09-22	Ensemble Room A	15:00	17:00
2020-09-23	Ensemble Room A	08:00	10:00
2020-09-23	Room 101	08:00	10:00
2020-09-23	Ensemble Room A	10:00	12:00
2020-09-23	Room 101	13:00	15:00
2020-09-23	Room 101	15:00	17:00
2020-09-23	Room 102	15:00	17:00
2020-09-24	Room 101	08:00	10:00
2020-09-24	Ensemble Room A	08:00	10:00
2020-09-24	Ensemble Room B	08:00	10:00
2020-09-24	Ensemble Room A	13:00	15:00
2020-09-24	Room 101	15:00	17:00
2020-09-25	Room 101	13:00	15:00
2020-09-25	Room 101	15:00	17:00
2020-09-25	Room 102	15:00	17:00
2020-09-26	Ensemble Room A	08:00	10:00
2020-09-26	Ensemble Room A	10:00	12:00
2020-09-26	Room 101	10:00	12:00
2020-09-26	Ensemble Room A	13:00	15:00
2020-09-27	Ensemble Room A	08:00	10:00
2020-09-27	Ensemble Room A	10:00	12:00
2020-09-27	Room 101	13:00	15:00
2020-09-27	Room 101	15:00	17:00
2020-09-28	Room 101	10:00	12:00
2020-09-28	Room 101	13:00	15:00
2020-09-28	Room 101	15:00	17:00
2020-09-29	Ensemble Room A	10:00	12:00
2020-09-29	Room 101	10:00	12:00
2020-09-29	Ensemble Room B	10:00	12:00
2020-09-29	Room 101	13:00	15:00
2020-09-29	Room 101	15:00	17:00
2020-09-30	Ensemble Room A	08:00	10:00
2020-09-30	Room 101	10:00	12:00
2020-09-30	Ensemble Room A	10:00	12:00
2020-09-30	Ensemble Room A	13:00	15:00
2020-09-30	Ensemble Room B	13:00	15:00
2020-09-30	Room 101	15:00	17:00
2020-09-30	Room 102	15:00	17:00
2020-10-01	Ensemble Room A	13:00	15:00
2020-10-01	Ensemble Room B	13:00	15:00
2020-10-01	Ensemble Room A	15:00	17:00
2020-10-02	Ensemble Room A	08:00	10:00
2020-10-02	Room 101	10:00	12:00
2020-10-02	Ensemble Room A	13:00	15:00
2020-10-02	Ensemble Room B	13:00	15:00
2020-10-02	Ensemble Room C	13:00	15:00
2020-10-02	Ensemble Room A	15:00	17:00
2020-10-02	Room 101	15:00	17:00
2020-10-03	Ensemble Room A	08:00	10:00
2020-10-03	Ensemble Room A	10:00	12:00
2020-10-03	Ensemble Room A	13:00	15:00
2020-10-03	Room 101	13:00	15:00
2020-10-04	Ensemble Room A	08:00	10:00
2020-10-04	Room 101	10:00	12:00
2020-10-04	Room 101	13:00	15:00
2020-10-04	Ensemble Room A	15:00	17:00
2020-10-05	Ensemble Room A	10:00	12:00
2020-10-05	Ensemble Room A	15:00	17:00
2020-10-06	Ensemble Room A	08:00	10:00
2020-10-06	Room 101	13:00	15:00
2020-10-06	Ensemble Room A	13:00	15:00
2020-10-06	Ensemble Room A	15:00	17:00
2020-10-07	Room 101	08:00	10:00
2020-10-07	Ensemble Room A	10:00	12:00
2020-10-07	Ensemble Room B	10:00	12:00
2020-10-07	Room 101	13:00	15:00
2020-10-07	Ensemble Room A	15:00	17:00
2020-10-07	Room 101	15:00	17:00
2020-10-08	Room 101	10:00	12:00
2020-10-08	Room 102	10:00	12:00
2020-10-08	Ensemble Room A	10:00	12:00
2020-10-08	Ensemble Room A	13:00	15:00
2020-10-08	Room 101	13:00	15:00
2020-10-08	Room 101	15:00	17:00
2020-10-08	Room 102	15:00	17:00
2020-10-08	Ensemble Room A	15:00	17:00
2020-10-09	Room 101	08:00	10:00
2020-10-09	Ensemble Room A	15:00	17:00
2020-10-10	Ensemble Room A	10:00	12:00
2020-10-10	Ensemble Room B	10:00	12:00
2020-10-10	Room 101	15:00	17:00
2020-10-11	Room 101	08:00	10:00
2020-10-12	Ensemble Room A	08:00	10:00
2020-10-12	Ensemble Room B	08:00	10:00
2020-10-12	Ensemble Room A	15:00	17:00
2020-10-12	Room 101	15:00	17:00
2020-10-13	Room 101	08:00	10:00
2020-10-13	Ensemble Room A	10:00	12:00
2020-10-13	Room 101	13:00	15:00
2020-10-13	Room 102	13:00	15:00
2020-10-13	Room 101	15:00	17:00
2020-10-13	Ensemble Room A	15:00	17:00
2020-10-14	Ensemble Room A	08:00	10:00
2020-10-14	Ensemble Room B	08:00	10:00
2020-10-14	Ensemble Room C	08:00	10:00
2020-10-14	Ensemble Room A	10:00	12:00
2020-10-14	Room 101	10:00	12:00
2020-10-14	Room 101	13:00	15:00
2020-10-14	Room 102	13:00	15:00
2020-10-14	Room 101	15:00	17:00
2020-10-14	Room 102	15:00	17:00
2020-10-15	Room 101	10:00	12:00
2020-10-15	Room 101	13:00	15:00
2020-10-15	Room 102	13:00	15:00
2020-10-15	Room 101	15:00	17:00
2020-10-15	Ensemble Room A	15:00	17:00
2020-10-15	Ensemble Room B	15:00	17:00
2020-10-16	Ensemble Room A	08:00	10:00
2020-10-16	Room 101	10:00	12:00
2020-10-16	Room 102	10:00	12:00
2020-10-16	Ensemble Room A	13:00	15:00
2020-10-16	Ensemble Room B	13:00	15:00
2020-10-16	Ensemble Room C	13:00	15:00
2020-10-17	Ensemble Room A	10:00	12:00
2020-10-17	Ensemble Room A	13:00	15:00
2020-10-17	Ensemble Room A	15:00	17:00
2020-10-18	Room 101	08:00	10:00
2020-10-18	Ensemble Room A	10:00	12:00
2020-10-18	Ensemble Room B	10:00	12:00
2020-10-18	Room 101	13:00	15:00
2020-10-19	Ensemble Room A	08:00	10:00
2020-10-19	Room 101	08:00	10:00
2020-10-19	Ensemble Room B	08:00	10:00
2020-10-19	Room 101	10:00	12:00
2020-10-19	Ensemble Room A	13:00	15:00
2020-10-19	Room 101	13:00	15:00
2020-10-19	Room 101	15:00	17:00
2020-10-19	Room 102	15:00	17:00
2020-10-20	Ensemble Room A	08:00	10:00
2020-10-20	Ensemble Room A	13:00	15:00
2020-10-21	Ensemble Room A	08:00	10:00
2020-10-21	Ensemble Room A	10:00	12:00
2020-10-21	Ensemble Room B	10:00	12:00
2020-10-21	Ensemble Room A	13:00	15:00
2020-10-21	Ensemble Room B	13:00	15:00
2020-10-21	Ensemble Room A	15:00	17:00
2020-10-21	Room 101	15:00	17:00
2020-10-21	Ensemble Room B	15:00	17:00
2020-10-22	Room 101	10:00	12:00
2020-10-22	Room 102	10:00	12:00
2020-10-22	Ensemble Room A	10:00	12:00
2020-10-22	Ensemble Room A	13:00	15:00
2020-10-22	Room 101	15:00	17:00
2020-10-23	Ensemble Room A	08:00	10:00
2020-10-23	Ensemble Room A	10:00	12:00
2020-10-23	Ensemble Room A	13:00	15:00
2020-10-23	Room 101	13:00	15:00
2020-10-23	Ensemble Room B	13:00	15:00
2020-10-23	Room 101	15:00	17:00
2020-10-23	Ensemble Room A	15:00	17:00
2020-10-23	Room 102	15:00	17:00
2020-10-24	Room 101	08:00	10:00
2020-10-24	Ensemble Room A	10:00	12:00
2020-10-24	Room 101	10:00	12:00
2020-10-25	Room 101	08:00	10:00
2020-10-25	Ensemble Room A	08:00	10:00
2020-10-25	Ensemble Room A	10:00	12:00
2020-10-25	Ensemble Room A	13:00	15:00
2020-10-26	Room 101	10:00	12:00
2020-10-26	Ensemble Room A	13:00	15:00
2020-10-26	Room 101	13:00	15:00
2020-10-26	Ensemble Room A	15:00	17:00
2020-10-27	Room 101	08:00	10:00
2020-10-27	Ensemble Room A	08:00	10:00
2020-10-27	Ensemble Room A	10:00	12:00
2020-10-27	Room 101	13:00	15:00
2020-10-27	Ensemble Room A	15:00	17:00
2020-10-28	Room 101	08:00	10:00
2020-10-28	Ensemble Room A	08:00	10:00
2020-10-28	Ensemble Room A	13:00	15:00
2020-10-28	Room 101	13:00	15:00
2020-10-28	Ensemble Room B	13:00	15:00
2020-10-28	Ensemble Room A	15:00	17:00
2020-10-28	Ensemble Room B	15:00	17:00
2020-10-28	Ensemble Room C	15:00	17:00
2020-10-29	Ensemble Room A	08:00	10:00
2020-10-29	Room 101	10:00	12:00
2020-10-29	Room 101	13:00	15:00
2020-10-29	Room 102	13:00	15:00
2020-10-29	Ensemble Room A	15:00	17:00
2020-10-29	Ensemble Room B	15:00	17:00
2020-10-30	Room 101	08:00	10:00
2020-10-30	Ensemble Room A	10:00	12:00
2020-10-30	Room 101	13:00	15:00
2020-10-30	Room 101	15:00	17:00
2020-10-31	Ensemble Room A	08:00	10:00
2020-10-31	Ensemble Room B	08:00	10:00
2020-10-31	Ensemble Room A	13:00	15:00
2020-10-31	Ensemble Room B	13:00	15:00
2020-11-01	Room 101	08:00	10:00
2020-11-01	Room 102	08:00	10:00
2020-11-01	Ensemble Room A	10:00	12:00
2020-11-01	Ensemble Room A	13:00	15:00
2020-11-01	Ensemble Room B	13:00	15:00
2020-11-01	Room 101	13:00	15:00
2020-11-01	Room 101	15:00	17:00
2020-11-01	Room 102	15:00	17:00
2020-11-01	Ensemble Room A	15:00	17:00
2020-11-02	Ensemble Room A	08:00	10:00
2020-11-02	Room 101	08:00	10:00
2020-11-02	Ensemble Room A	15:00	17:00
2020-11-03	Ensemble Room A	10:00	12:00
2020-11-03	Ensemble Room A	15:00	17:00
2020-11-03	Room 101	15:00	17:00
2020-11-04	Ensemble Room A	08:00	10:00
2020-11-04	Room 101	08:00	10:00
2020-11-04	Room 101	10:00	12:00
2020-11-04	Ensemble Room A	10:00	12:00
2020-11-05	Room 101	10:00	12:00
2020-11-05	Ensemble Room A	10:00	12:00
2020-11-05	Ensemble Room A	13:00	15:00
2020-11-05	Ensemble Room A	15:00	17:00
2020-11-05	Room 101	15:00	17:00
2020-11-06	Ensemble Room A	08:00	10:00
2020-11-06	Ensemble Room B	08:00	10:00
2020-11-06	Ensemble Room A	10:00	12:00
2020-11-06	Ensemble Room B	10:00	12:00
2020-11-06	Room 101	15:00	17:00
2020-11-06	Ensemble Room A	15:00	17:00
2020-11-07	Room 101	08:00	10:00
2020-11-07	Ensemble Room A	08:00	10:00
2020-11-07	Room 101	10:00	12:00
2020-11-07	Room 102	10:00	12:00
2020-11-07	Room 103	10:00	12:00
2020-11-07	Ensemble Room A	13:00	15:00
2020-11-07	Ensemble Room B	13:00	15:00
2020-11-07	Room 101	15:00	17:00
2020-11-07	Room 102	15:00	17:00
2020-11-08	Room 101	08:00	10:00
2020-11-08	Room 101	10:00	12:00
2020-11-08	Ensemble Room A	10:00	12:00
2020-11-08	Room 101	13:00	15:00
2020-11-08	Room 101	15:00	17:00
2020-11-08	Room 102	15:00	17:00
2020-11-08	Room 103	15:00	17:00
2020-11-09	Ensemble Room A	08:00	10:00
2020-11-09	Ensemble Room A	10:00	12:00
2020-11-09	Room 101	10:00	12:00
2020-11-09	Room 101	13:00	15:00
2020-11-10	Ensemble Room A	10:00	12:00
2020-11-10	Ensemble Room B	10:00	12:00
2020-11-11	Room 101	10:00	12:00
2020-11-11	Room 101	13:00	15:00
2020-11-11	Room 101	15:00	17:00
2020-11-12	Room 101	08:00	10:00
2020-11-12	Room 101	10:00	12:00
2020-11-12	Room 101	13:00	15:00
2020-11-12	Ensemble Room A	13:00	15:00
2020-11-12	Room 102	13:00	15:00
2020-11-12	Ensemble Room A	15:00	17:00
2020-11-13	Ensemble Room A	08:00	10:00
2020-11-13	Ensemble Room B	08:00	10:00
2020-11-13	Ensemble Room A	10:00	12:00
2020-11-13	Ensemble Room B	10:00	12:00
2020-11-13	Room 101	13:00	15:00
2020-11-13	Ensemble Room A	15:00	17:00
2020-11-13	Room 101	15:00	17:00
2020-11-14	Room 101	08:00	10:00
2020-11-14	Ensemble Room A	08:00	10:00
2020-11-14	Ensemble Room B	08:00	10:00
2020-11-14	Ensemble Room A	10:00	12:00
2020-11-14	Room 101	15:00	17:00
2020-11-15	Ensemble Room A	15:00	17:00
2020-11-15	Ensemble Room B	15:00	17:00
2020-11-16	Ensemble Room A	08:00	10:00
2020-11-16	Room 101	13:00	15:00
2020-11-16	Ensemble Room A	13:00	15:00
2020-11-16	Room 101	15:00	17:00
2020-11-16	Ensemble Room A	15:00	17:00
2020-11-17	Room 101	08:00	10:00
2020-11-17	Room 102	08:00	10:00
2020-11-17	Ensemble Room A	10:00	12:00
2020-11-17	Ensemble Room B	10:00	12:00
2020-11-17	Room 101	10:00	12:00
2020-11-17	Room 101	13:00	15:00
2020-11-17	Room 101	15:00	17:00
2020-11-17	Room 102	15:00	17:00
2020-11-18	Room 101	08:00	10:00
2020-11-18	Room 101	10:00	12:00
2020-11-18	Ensemble Room A	13:00	15:00
2020-11-18	Room 101	15:00	17:00
2020-11-19	Room 101	10:00	12:00
2020-11-19	Ensemble Room A	10:00	12:00
2020-11-19	Ensemble Room B	10:00	12:00
2020-11-19	Room 101	13:00	15:00
2020-11-19	Ensemble Room A	13:00	15:00
2020-11-20	Ensemble Room A	08:00	10:00
2020-11-20	Ensemble Room B	08:00	10:00
2020-11-20	Ensemble Room A	10:00	12:00
2020-11-20	Ensemble Room A	13:00	15:00
2020-11-20	Room 101	13:00	15:00
2020-11-20	Ensemble Room A	15:00	17:00
2020-11-21	Room 101	08:00	10:00
2020-11-21	Ensemble Room A	10:00	12:00
2020-11-21	Ensemble Room B	10:00	12:00
2020-11-21	Ensemble Room A	15:00	17:00
2020-11-22	Room 101	08:00	10:00
2020-11-22	Room 101	13:00	15:00
2020-11-22	Room 102	13:00	15:00
2020-11-22	Room 101	15:00	17:00
2020-11-23	Ensemble Room A	10:00	12:00
2020-11-23	Room 101	10:00	12:00
2020-11-23	Room 101	13:00	15:00
2020-11-23	Ensemble Room A	13:00	15:00
2020-11-23	Ensemble Room B	13:00	15:00
2020-11-23	Ensemble Room A	15:00	17:00
2020-11-24	Room 101	10:00	12:00
2020-11-24	Ensemble Room A	13:00	15:00
2020-11-24	Ensemble Room B	13:00	15:00
2020-11-25	Room 101	08:00	10:00
2020-11-25	Ensemble Room A	08:00	10:00
2020-11-25	Ensemble Room A	13:00	15:00
2020-11-25	Ensemble Room A	15:00	17:00
2020-11-25	Ensemble Room B	15:00	17:00
2020-11-26	Room 101	10:00	12:00
2020-11-26	Room 101	13:00	15:00
2020-11-26	Room 102	13:00	15:00
2020-11-26	Room 101	15:00	17:00
2020-11-26	Ensemble Room A	15:00	17:00
2020-11-27	Ensemble Room A	10:00	12:00
2020-11-27	Ensemble Room B	10:00	12:00
2020-11-27	Room 101	10:00	12:00
2020-11-27	Room 101	15:00	17:00
2020-11-28	Ensemble Room A	08:00	10:00
2020-11-28	Room 101	10:00	12:00
2020-11-28	Room 101	13:00	15:00
2020-11-28	Ensemble Room A	13:00	15:00
2020-11-29	Room 101	10:00	12:00
2020-11-29	Ensemble Room A	13:00	15:00
2020-11-29	Room 101	15:00	17:00
2020-11-29	Room 102	15:00	17:00
2020-11-30	Room 101	08:00	10:00
2020-11-30	Room 101	10:00	12:00
2020-11-30	Room 101	13:00	15:00
2020-11-30	Ensemble Room A	15:00	17:00
2020-12-01	Room 101	10:00	12:00
2020-12-01	Ensemble Room A	10:00	12:00
2020-12-01	Ensemble Room B	10:00	12:00
2020-12-01	Ensemble Room A	13:00	15:00
2020-12-01	Ensemble Room B	13:00	15:00
2020-12-01	Ensemble Room A	15:00	17:00
2020-12-02	Ensemble Room A	08:00	10:00
2020-12-02	Ensemble Room A	13:00	15:00
2020-12-03	Room 101	08:00	10:00
2020-12-03	Ensemble Room A	08:00	10:00
2020-12-03	Room 101	10:00	12:00
2020-12-03	Room 101	13:00	15:00
2020-12-04	Room 101	10:00	12:00
2020-12-04	Ensemble Room A	13:00	15:00
2020-12-04	Ensemble Room B	13:00	15:00
2020-12-04	Ensemble Room C	13:00	15:00
2020-12-04	Ensemble Room A	15:00	17:00
2020-12-04	Ensemble Room B	15:00	17:00
2020-12-05	Ensemble Room A	08:00	10:00
2020-12-05	Room 101	13:00	15:00
2020-12-05	Room 102	13:00	15:00
2020-12-05	Ensemble Room A	15:00	17:00
2020-12-06	Room 101	08:00	10:00
2020-12-06	Ensemble Room A	08:00	10:00
2020-12-06	Ensemble Room A	10:00	12:00
2020-12-06	Ensemble Room B	10:00	12:00
2020-12-06	Room 101	10:00	12:00
2020-12-06	Ensemble Room A	13:00	15:00
2020-12-06	Ensemble Room A	15:00	17:00
2020-12-07	Ensemble Room A	08:00	10:00
2020-12-07	Room 101	08:00	10:00
2020-12-07	Ensemble Room A	10:00	12:00
2020-12-07	Room 101	13:00	15:00
2020-12-07	Room 101	15:00	17:00
2020-12-08	Room 101	13:00	15:00
2020-12-08	Room 102	13:00	15:00
2020-12-08	Room 101	15:00	17:00
2020-12-08	Ensemble Room A	15:00	17:00
2020-12-09	Room 101	10:00	12:00
2020-12-09	Room 101	13:00	15:00
2020-12-09	Room 101	15:00	17:00
2020-12-10	Ensemble Room A	08:00	10:00
2020-12-10	Room 101	10:00	12:00
2020-12-10	Ensemble Room A	15:00	17:00
2020-12-10	Ensemble Room B	15:00	17:00
2020-12-11	Room 101	08:00	10:00
2020-12-11	Ensemble Room A	15:00	17:00
2020-12-12	Room 101	10:00	12:00
2020-12-12	Room 102	10:00	12:00
2020-12-12	Ensemble Room A	13:00	15:00
2020-12-12	Ensemble Room B	13:00	15:00
2020-12-12	Ensemble Room A	15:00	17:00
2020-12-12	Ensemble Room B	15:00	17:00
2020-12-12	Room 101	15:00	17:00
2020-12-13	Ensemble Room A	08:00	10:00
2020-12-13	Room 101	10:00	12:00
2020-12-13	Room 101	13:00	15:00
2020-12-13	Ensemble Room A	13:00	15:00
2020-12-13	Room 101	15:00	17:00
2020-12-13	Room 102	15:00	17:00
2020-12-14	Room 101	08:00	10:00
2020-12-14	Ensemble Room A	08:00	10:00
2020-12-14	Ensemble Room A	10:00	12:00
2020-12-14	Room 101	13:00	15:00
2020-12-14	Room 102	13:00	15:00
2020-12-14	Ensemble Room A	15:00	17:00
2020-12-14	Room 101	15:00	17:00
2020-12-14	Room 102	15:00	17:00
2020-12-15	Room 101	13:00	15:00
2020-12-16	Ensemble Room A	08:00	10:00
2020-12-16	Room 101	15:00	17:00
2020-12-17	Room 101	08:00	10:00
2020-12-17	Ensemble Room A	08:00	10:00
2020-12-17	Ensemble Room A	10:00	12:00
2020-12-17	Room 101	10:00	12:00
2020-12-17	Ensemble Room A	15:00	17:00
2020-12-18	Room 101	08:00	10:00
2020-12-18	Room 101	10:00	12:00
2020-12-18	Ensemble Room A	10:00	12:00
2020-12-18	Room 101	13:00	15:00
2020-12-18	Room 101	15:00	17:00
2020-12-18	Room 102	15:00	17:00
2020-12-19	Ensemble Room A	08:00	10:00
2020-12-19	Room 101	13:00	15:00
2020-12-19	Ensemble Room A	13:00	15:00
2020-12-19	Room 102	13:00	15:00
2020-12-19	Room 101	15:00	17:00
2020-12-20	Room 101	08:00	10:00
2020-12-20	Room 102	08:00	10:00
2020-12-20	Room 103	08:00	10:00
2020-12-20	Room 101	10:00	12:00
2020-12-20	Room 102	10:00	12:00
2020-12-20	Room 101	13:00	15:00
2020-12-20	Room 102	13:00	15:00
2020-12-20	Room 101	15:00	17:00
2020-12-20	Room 102	15:00	17:00
2020-12-21	Room 101	10:00	12:00
2020-12-21	Ensemble Room A	10:00	12:00
2020-12-21	Ensemble Room B	10:00	12:00
2020-12-21	Ensemble Room A	13:00	15:00
2020-12-21	Ensemble Room A	15:00	17:00
2020-12-21	Ensemble Room B	15:00	17:00
2020-12-22	Room 101	10:00	12:00
2020-12-22	Ensemble Room A	10:00	12:00
2020-12-22	Ensemble Room A	13:00	15:00
2020-12-22	Ensemble Room B	13:00	15:00
2020-12-22	Ensemble Room A	15:00	17:00
2020-12-23	Room 101	08:00	10:00
2020-12-23	Room 102	08:00	10:00
2020-12-23	Ensemble Room A	08:00	10:00
2020-12-23	Room 101	10:00	12:00
2020-12-23	Ensemble Room A	10:00	12:00
2020-12-23	Ensemble Room A	13:00	15:00
2020-12-23	Ensemble Room A	15:00	17:00
2020-12-23	Ensemble Room B	15:00	17:00
2020-12-24	Ensemble Room A	08:00	10:00
2020-12-24	Ensemble Room A	10:00	12:00
2020-12-24	Ensemble Room A	13:00	15:00
2020-12-24	Ensemble Room B	13:00	15:00
2020-12-24	Ensemble Room A	15:00	17:00
2020-12-24	Ensemble Room B	15:00	17:00
2020-12-25	Ensemble Room A	10:00	12:00
2020-12-25	Room 101	15:00	17:00
2020-12-26	Room 101	08:00	10:00
2020-12-26	Ensemble Room A	10:00	12:00
2020-12-26	Ensemble Room B	10:00	12:00
2020-12-26	Room 101	13:00	15:00
2020-12-26	Ensemble Room A	13:00	15:00
2020-12-26	Room 101	15:00	17:00
2020-12-27	Room 101	08:00	10:00
2020-12-27	Room 101	10:00	12:00
2020-12-27	Room 102	10:00	12:00
2020-12-27	Room 103	10:00	12:00
2020-12-27	Ensemble Room A	13:00	15:00
2020-12-27	Room 101	13:00	15:00
2020-12-28	Ensemble Room A	13:00	15:00
2020-12-28	Room 101	13:00	15:00
2020-12-28	Room 101	15:00	17:00
2020-12-29	Room 101	08:00	10:00
2020-12-29	Ensemble Room A	08:00	10:00
2020-12-29	Ensemble Room A	10:00	12:00
2020-12-29	Room 101	10:00	12:00
2020-12-29	Room 101	13:00	15:00
2020-12-30	Ensemble Room A	08:00	10:00
2020-12-30	Room 101	08:00	10:00
2020-12-30	Ensemble Room B	08:00	10:00
2020-12-30	Ensemble Room A	10:00	12:00
2020-12-30	Room 101	13:00	15:00
2020-12-30	Room 102	13:00	15:00
2020-12-30	Ensemble Room A	15:00	17:00
2020-12-30	Room 101	15:00	17:00
2020-12-30	Room 102	15:00	17:00
2020-12-31	Room 101	08:00	10:00
2020-12-31	Room 101	10:00	12:00
2020-12-31	Ensemble Room A	10:00	12:00
2020-12-31	Ensemble Room A	13:00	15:00
2020-12-31	Ensemble Room A	15:00	17:00
2020-12-31	Ensemble Room B	15:00	17:00
2021-01-01	Room 101	08:00	10:00
2021-01-01	Ensemble Room A	08:00	10:00
2021-01-01	Ensemble Room A	10:00	12:00
2021-01-01	Room 101	10:00	12:00
2021-01-01	Ensemble Room A	13:00	15:00
2021-01-01	Room 101	15:00	17:00
2021-01-02	Ensemble Room A	08:00	10:00
2021-01-02	Ensemble Room A	10:00	12:00
2021-01-02	Ensemble Room B	10:00	12:00
2021-01-02	Ensemble Room A	15:00	17:00
2021-01-02	Ensemble Room B	15:00	17:00
2021-01-02	Ensemble Room C	15:00	17:00
2021-01-03	Room 101	08:00	10:00
2021-01-03	Ensemble Room A	08:00	10:00
2021-01-03	Room 101	10:00	12:00
2021-01-03	Room 102	10:00	12:00
2021-01-03	Room 101	13:00	15:00
2021-01-03	Room 102	13:00	15:00
2021-01-03	Ensemble Room A	15:00	17:00
2021-01-03	Ensemble Room B	15:00	17:00
2021-01-03	Room 101	15:00	17:00
2021-01-04	Room 101	08:00	10:00
2021-01-04	Room 102	08:00	10:00
2021-01-04	Room 101	10:00	12:00
2021-01-04	Ensemble Room A	10:00	12:00
2021-01-04	Ensemble Room A	15:00	17:00
2021-01-05	Room 101	08:00	10:00
2021-01-05	Ensemble Room A	08:00	10:00
2021-01-05	Room 101	10:00	12:00
2021-01-05	Room 101	13:00	15:00
2021-01-05	Room 101	15:00	17:00
2021-01-05	Room 102	15:00	17:00
2021-01-06	Ensemble Room A	08:00	10:00
2021-01-06	Ensemble Room B	08:00	10:00
2021-01-06	Room 101	10:00	12:00
2021-01-06	Room 101	13:00	15:00
2021-01-06	Room 101	15:00	17:00
2021-01-07	Room 101	10:00	12:00
2021-01-07	Ensemble Room A	13:00	15:00
2021-01-07	Ensemble Room A	15:00	17:00
2021-01-08	Ensemble Room A	10:00	12:00
2021-01-08	Ensemble Room B	10:00	12:00
2021-01-08	Room 101	15:00	17:00
2021-01-08	Ensemble Room A	15:00	17:00
2021-01-08	Room 102	15:00	17:00
2021-01-09	Ensemble Room A	10:00	12:00
2021-01-09	Ensemble Room A	13:00	15:00
2021-01-09	Room 101	15:00	17:00
2021-01-10	Ensemble Room A	08:00	10:00
2021-01-10	Room 101	08:00	10:00
2021-01-10	Ensemble Room A	10:00	12:00
2021-01-10	Room 101	13:00	15:00
2021-01-10	Room 102	13:00	15:00
2021-01-10	Ensemble Room A	15:00	17:00
2021-01-10	Room 101	15:00	17:00
2021-01-10	Ensemble Room B	15:00	17:00
2021-01-11	Ensemble Room A	08:00	10:00
2021-01-11	Room 101	10:00	12:00
2021-01-11	Room 102	10:00	12:00
2021-01-11	Ensemble Room A	13:00	15:00
2021-01-11	Ensemble Room B	13:00	15:00
2021-01-11	Room 101	13:00	15:00
2021-01-12	Room 101	10:00	12:00
2021-01-12	Ensemble Room A	10:00	12:00
2021-01-12	Room 102	10:00	12:00
2021-01-12	Room 101	13:00	15:00
2021-01-13	Ensemble Room A	10:00	12:00
2021-01-13	Ensemble Room A	15:00	17:00
2021-01-13	Ensemble Room B	15:00	17:00
2021-01-13	Room 101	15:00	17:00
2021-01-14	Room 101	08:00	10:00
2021-01-14	Room 102	08:00	10:00
2021-01-14	Ensemble Room A	10:00	12:00
2021-01-14	Room 101	10:00	12:00
2021-01-14	Ensemble Room B	10:00	12:00
2021-01-14	Room 101	13:00	15:00
2021-01-14	Ensemble Room A	13:00	15:00
2021-01-14	Ensemble Room A	15:00	17:00
2021-01-14	Ensemble Room B	15:00	17:00
2021-01-15	Ensemble Room A	08:00	10:00
2021-01-15	Ensemble Room A	10:00	12:00
2021-01-15	Ensemble Room B	10:00	12:00
2021-01-15	Ensemble Room A	15:00	17:00
2021-01-16	Ensemble Room A	08:00	10:00
2021-01-16	Ensemble Room A	10:00	12:00
2021-01-16	Ensemble Room B	10:00	12:00
2021-01-16	Ensemble Room A	13:00	15:00
2021-01-16	Room 101	15:00	17:00
2021-01-16	Room 102	15:00	17:00
2021-01-17	Room 101	10:00	12:00
2021-01-17	Room 102	10:00	12:00
2021-01-17	Ensemble Room A	13:00	15:00
2021-01-17	Room 101	13:00	15:00
2021-01-17	Room 101	15:00	17:00
2021-01-17	Room 102	15:00	17:00
2021-01-18	Room 101	10:00	12:00
2021-01-18	Room 102	10:00	12:00
2021-01-18	Ensemble Room A	13:00	15:00
2021-01-18	Ensemble Room B	13:00	15:00
2021-01-18	Ensemble Room C	13:00	15:00
2021-01-18	Room 101	15:00	17:00
2021-01-19	Room 101	08:00	10:00
2021-01-19	Room 101	10:00	12:00
2021-01-19	Room 102	10:00	12:00
2021-01-19	Ensemble Room A	13:00	15:00
2021-01-20	Room 101	10:00	12:00
2021-01-20	Ensemble Room A	13:00	15:00
2021-01-20	Room 101	15:00	17:00
2021-01-21	Room 101	08:00	10:00
2021-01-21	Ensemble Room A	08:00	10:00
2021-01-21	Ensemble Room B	08:00	10:00
2021-01-21	Room 101	10:00	12:00
2021-01-21	Room 102	10:00	12:00
2021-01-21	Ensemble Room A	13:00	15:00
2021-01-21	Room 101	13:00	15:00
2021-01-21	Ensemble Room B	13:00	15:00
2021-01-21	Room 101	15:00	17:00
2021-01-21	Room 102	15:00	17:00
2021-01-22	Ensemble Room A	08:00	10:00
2021-01-22	Room 101	10:00	12:00
2021-01-22	Ensemble Room A	10:00	12:00
2021-01-22	Room 101	15:00	17:00
2021-01-22	Room 102	15:00	17:00
2021-01-23	Room 101	08:00	10:00
2021-01-23	Room 101	10:00	12:00
2021-01-23	Room 102	10:00	12:00
2021-01-23	Room 103	10:00	12:00
2021-01-23	Ensemble Room A	13:00	15:00
2021-01-23	Ensemble Room B	13:00	15:00
2021-01-23	Room 101	13:00	15:00
2021-01-23	Room 101	15:00	17:00
2021-01-24	Ensemble Room A	08:00	10:00
2021-01-24	Ensemble Room B	08:00	10:00
2021-01-24	Ensemble Room A	13:00	15:00
2021-01-25	Room 101	08:00	10:00
2021-01-25	Room 102	08:00	10:00
2021-01-25	Ensemble Room A	10:00	12:00
2021-01-25	Ensemble Room A	13:00	15:00
2021-01-25	Ensemble Room B	13:00	15:00
2021-01-25	Ensemble Room A	15:00	17:00
2021-01-26	Ensemble Room A	08:00	10:00
2021-01-26	Room 101	08:00	10:00
2021-01-26	Ensemble Room A	13:00	15:00
2021-01-27	Ensemble Room A	08:00	10:00
2021-01-27	Ensemble Room A	10:00	12:00
2021-01-27	Room 101	13:00	15:00
2021-01-27	Room 102	13:00	15:00
2021-01-27	Ensemble Room A	15:00	17:00
2021-01-27	Room 101	15:00	17:00
2021-01-28	Ensemble Room A	08:00	10:00
2021-01-28	Room 101	08:00	10:00
2021-01-28	Room 101	10:00	12:00
2021-01-28	Room 102	10:00	12:00
2021-01-28	Ensemble Room A	13:00	15:00
2021-01-28	Room 101	15:00	17:00
2021-01-28	Room 102	15:00	17:00
2021-01-29	Ensemble Room A	10:00	12:00
2021-01-29	Room 101	13:00	15:00
2021-01-29	Room 101	15:00	17:00
2021-01-29	Ensemble Room A	15:00	17:00
2021-01-30	Ensemble Room A	08:00	10:00
2021-01-30	Room 101	13:00	15:00
2021-01-30	Ensemble Room A	15:00	17:00
2021-01-30	Ensemble Room B	15:00	17:00
2021-01-31	Room 101	10:00	12:00
2021-01-31	Room 102	10:00	12:00
2021-01-31	Ensemble Room A	15:00	17:00
2021-01-31	Ensemble Room B	15:00	17:00
2021-02-01	Ensemble Room A	10:00	12:00
2021-02-01	Room 101	10:00	12:00
2021-02-01	Ensemble Room A	13:00	15:00
2021-02-01	Ensemble Room B	13:00	15:00
2021-02-01	Room 101	15:00	17:00
2021-02-02	Ensemble Room A	13:00	15:00
2021-02-02	Ensemble Room A	15:00	17:00
2021-02-02	Room 101	15:00	17:00
2021-02-02	Room 102	15:00	17:00
2021-02-03	Ensemble Room A	08:00	10:00
2021-02-03	Room 101	10:00	12:00
2021-02-03	Room 102	10:00	12:00
2021-02-03	Room 103	10:00	12:00
2021-02-03	Room 101	13:00	15:00
2021-02-03	Room 101	15:00	17:00
2021-02-04	Ensemble Room A	08:00	10:00
2021-02-04	Room 101	10:00	12:00
2021-02-04	Ensemble Room A	13:00	15:00
2021-02-04	Room 101	15:00	17:00
2021-02-04	Room 102	15:00	17:00
2021-02-05	Ensemble Room A	08:00	10:00
2021-02-05	Room 101	08:00	10:00
2021-02-05	Room 101	10:00	12:00
2021-02-05	Room 102	10:00	12:00
2021-02-05	Ensemble Room A	13:00	15:00
2021-02-06	Ensemble Room A	08:00	10:00
2021-02-06	Room 101	10:00	12:00
2021-02-06	Ensemble Room A	10:00	12:00
2021-02-06	Ensemble Room A	15:00	17:00
2021-02-06	Ensemble Room B	15:00	17:00
2021-02-07	Room 101	08:00	10:00
2021-02-07	Ensemble Room A	10:00	12:00
2021-02-07	Ensemble Room B	10:00	12:00
2021-02-07	Room 101	13:00	15:00
2021-02-07	Room 101	15:00	17:00
2021-02-07	Ensemble Room A	15:00	17:00
2021-02-07	Room 102	15:00	17:00
2021-02-08	Ensemble Room A	08:00	10:00
2021-02-08	Ensemble Room B	08:00	10:00
2021-02-08	Ensemble Room A	10:00	12:00
2021-02-08	Room 101	10:00	12:00
2021-02-08	Room 101	13:00	15:00
2021-02-08	Room 102	13:00	15:00
2021-02-09	Room 101	08:00	10:00
2021-02-09	Ensemble Room A	08:00	10:00
2021-02-09	Ensemble Room A	10:00	12:00
2021-02-09	Room 101	13:00	15:00
2021-02-09	Ensemble Room A	13:00	15:00
2021-02-09	Room 101	15:00	17:00
2021-02-09	Ensemble Room A	15:00	17:00
2021-02-10	Room 101	08:00	10:00
2021-02-10	Ensemble Room A	10:00	12:00
2021-02-10	Room 101	13:00	15:00
2021-02-10	Room 102	13:00	15:00
2021-02-10	Room 101	15:00	17:00
2021-02-11	Room 101	08:00	10:00
2021-02-11	Ensemble Room A	08:00	10:00
2021-02-11	Ensemble Room A	13:00	15:00
2021-02-11	Ensemble Room A	15:00	17:00
2021-02-12	Ensemble Room A	08:00	10:00
2021-02-12	Ensemble Room B	08:00	10:00
2021-02-12	Room 101	10:00	12:00
2021-02-12	Room 102	10:00	12:00
2021-02-12	Ensemble Room A	10:00	12:00
2021-02-12	Ensemble Room A	13:00	15:00
2021-02-12	Room 101	15:00	17:00
2021-02-13	Ensemble Room A	08:00	10:00
2021-02-13	Room 101	08:00	10:00
2021-02-13	Ensemble Room A	10:00	12:00
2021-02-13	Room 101	10:00	12:00
2021-02-13	Ensemble Room A	13:00	15:00
2021-02-13	Ensemble Room B	13:00	15:00
2021-02-13	Room 101	13:00	15:00
2021-02-13	Ensemble Room A	15:00	17:00
2021-02-14	Room 101	08:00	10:00
2021-02-14	Room 101	10:00	12:00
2021-02-14	Ensemble Room A	10:00	12:00
2021-02-15	Ensemble Room A	08:00	10:00
2021-02-15	Room 101	13:00	15:00
2021-02-15	Room 102	13:00	15:00
2021-02-15	Ensemble Room A	15:00	17:00
2021-02-16	Room 101	10:00	12:00
2021-02-16	Room 101	13:00	15:00
2021-02-16	Ensemble Room A	13:00	15:00
2021-02-17	Room 101	08:00	10:00
2021-02-17	Room 101	10:00	12:00
2021-02-17	Room 101	15:00	17:00
2021-02-17	Ensemble Room A	15:00	17:00
2021-02-18	Room 101	08:00	10:00
2021-02-19	Room 101	08:00	10:00
2021-02-19	Ensemble Room A	08:00	10:00
2021-02-19	Ensemble Room A	10:00	12:00
2021-02-19	Room 101	10:00	12:00
2021-02-20	Room 101	08:00	10:00
2021-02-20	Ensemble Room A	08:00	10:00
2021-02-20	Ensemble Room A	13:00	15:00
2021-02-21	Room 101	08:00	10:00
2021-02-21	Room 102	08:00	10:00
2021-02-21	Ensemble Room A	13:00	15:00
2021-02-21	Ensemble Room A	15:00	17:00
2021-02-21	Room 101	15:00	17:00
2021-02-22	Room 101	08:00	10:00
2021-02-22	Ensemble Room A	10:00	12:00
2021-02-22	Ensemble Room B	10:00	12:00
2021-02-22	Ensemble Room A	13:00	15:00
2021-02-22	Ensemble Room B	13:00	15:00
2021-02-22	Ensemble Room C	13:00	15:00
2021-02-22	Room 101	15:00	17:00
2021-02-22	Room 102	15:00	17:00
2021-02-23	Room 101	08:00	10:00
2021-02-23	Room 101	10:00	12:00
2021-02-23	Ensemble Room A	13:00	15:00
2021-02-23	Room 101	15:00	17:00
2021-02-23	Ensemble Room A	15:00	17:00
2021-02-23	Ensemble Room B	15:00	17:00
2021-02-24	Ensemble Room A	10:00	12:00
2021-02-24	Room 101	13:00	15:00
2021-02-24	Ensemble Room A	15:00	17:00
2021-02-24	Room 101	15:00	17:00
2021-02-25	Ensemble Room A	08:00	10:00
2021-02-25	Room 101	08:00	10:00
2021-02-25	Ensemble Room A	10:00	12:00
2021-02-25	Room 101	13:00	15:00
2021-02-25	Room 102	13:00	15:00
2021-02-25	Room 101	15:00	17:00
2021-02-25	Room 102	15:00	17:00
2021-02-26	Room 101	08:00	10:00
2021-02-26	Room 102	08:00	10:00
2021-02-26	Ensemble Room A	15:00	17:00
2021-02-26	Room 101	15:00	17:00
2021-02-27	Ensemble Room A	10:00	12:00
2021-02-27	Ensemble Room A	15:00	17:00
2021-02-28	Room 101	08:00	10:00
2021-02-28	Room 101	10:00	12:00
2021-02-28	Room 102	10:00	12:00
2021-02-28	Ensemble Room A	13:00	15:00
2021-02-28	Ensemble Room A	15:00	17:00
2021-02-28	Room 101	15:00	17:00
2021-03-01	Room 101	08:00	10:00
2021-03-01	Room 101	10:00	12:00
2021-03-01	Ensemble Room A	10:00	12:00
2021-03-01	Room 101	13:00	15:00
2021-03-01	Room 101	15:00	17:00
2021-03-01	Ensemble Room A	15:00	17:00
2021-03-02	Ensemble Room A	08:00	10:00
2021-03-02	Room 101	10:00	12:00
2021-03-02	Ensemble Room A	10:00	12:00
2021-03-02	Room 101	13:00	15:00
2021-03-02	Room 101	15:00	17:00
2021-03-03	Ensemble Room A	08:00	10:00
2021-03-03	Ensemble Room B	08:00	10:00
2021-03-03	Ensemble Room A	10:00	12:00
2021-03-03	Ensemble Room B	10:00	12:00
2021-03-04	Room 101	08:00	10:00
2021-03-04	Ensemble Room A	10:00	12:00
2021-03-04	Ensemble Room A	15:00	17:00
2021-03-04	Ensemble Room B	15:00	17:00
2021-03-05	Room 101	08:00	10:00
2021-03-05	Ensemble Room A	08:00	10:00
2021-03-05	Room 102	08:00	10:00
2021-03-05	Ensemble Room A	10:00	12:00
2021-03-05	Room 101	10:00	12:00
2021-03-05	Ensemble Room A	13:00	15:00
2021-03-05	Ensemble Room B	13:00	15:00
2021-03-05	Room 101	15:00	17:00
2021-03-06	Ensemble Room A	08:00	10:00
2021-03-06	Room 101	08:00	10:00
2021-03-06	Ensemble Room A	13:00	15:00
2021-03-06	Ensemble Room B	13:00	15:00
2021-03-06	Ensemble Room A	15:00	17:00
2021-03-06	Room 101	15:00	17:00
2021-03-07	Ensemble Room A	08:00	10:00
2021-03-07	Room 101	08:00	10:00
2021-03-07	Ensemble Room A	10:00	12:00
2021-03-07	Ensemble Room B	10:00	12:00
2021-03-07	Ensemble Room A	13:00	15:00
2021-03-07	Ensemble Room A	15:00	17:00
2021-03-08	Ensemble Room A	10:00	12:00
2021-03-08	Ensemble Room B	10:00	12:00
2021-03-08	Room 101	10:00	12:00
2021-03-08	Room 101	15:00	17:00
2021-03-09	Ensemble Room A	08:00	10:00
2021-03-09	Room 101	10:00	12:00
2021-03-09	Room 102	10:00	12:00
2021-03-09	Room 101	13:00	15:00
2021-03-09	Room 101	15:00	17:00
2021-03-10	Room 101	08:00	10:00
2021-03-10	Ensemble Room A	08:00	10:00
2021-03-10	Room 101	10:00	12:00
2021-03-10	Room 102	10:00	12:00
2021-03-10	Room 101	13:00	15:00
2021-03-10	Ensemble Room A	15:00	17:00
2021-03-11	Room 101	08:00	10:00
2021-03-11	Ensemble Room A	08:00	10:00
2021-03-11	Room 102	08:00	10:00
2021-03-11	Ensemble Room A	10:00	12:00
2021-03-11	Room 101	10:00	12:00
2021-03-11	Room 101	13:00	15:00
2021-03-11	Room 102	13:00	15:00
2021-03-11	Ensemble Room A	15:00	17:00
2021-03-11	Room 101	15:00	17:00
2021-03-12	Ensemble Room A	10:00	12:00
2021-03-12	Ensemble Room B	10:00	12:00
2021-03-12	Ensemble Room A	13:00	15:00
2021-03-12	Ensemble Room B	13:00	15:00
2021-03-12	Room 101	15:00	17:00
2021-03-13	Room 101	08:00	10:00
2021-03-13	Ensemble Room A	13:00	15:00
2021-03-13	Ensemble Room A	15:00	17:00
2021-03-13	Room 101	15:00	17:00
2021-03-14	Ensemble Room A	13:00	15:00
2021-03-14	Room 101	15:00	17:00
2021-03-14	Room 102	15:00	17:00
2021-03-15	Room 101	08:00	10:00
2021-03-15	Room 102	08:00	10:00
2021-03-15	Ensemble Room A	08:00	10:00
2021-03-16	Room 101	08:00	10:00
2021-03-16	Room 102	08:00	10:00
2021-03-16	Room 101	15:00	17:00
2021-03-16	Ensemble Room A	15:00	17:00
2021-03-16	Room 102	15:00	17:00
2021-03-17	Room 101	10:00	12:00
2021-03-17	Room 102	10:00	12:00
2021-03-17	Room 103	10:00	12:00
2021-03-17	Ensemble Room A	13:00	15:00
2021-03-17	Room 101	13:00	15:00
2021-03-17	Ensemble Room A	15:00	17:00
2021-03-18	Ensemble Room A	08:00	10:00
2021-03-18	Ensemble Room A	10:00	12:00
2021-03-18	Ensemble Room A	15:00	17:00
2021-03-18	Room 101	15:00	17:00
2021-03-19	Ensemble Room A	13:00	15:00
2021-03-19	Room 101	13:00	15:00
2021-03-19	Ensemble Room A	15:00	17:00
2021-03-19	Ensemble Room B	15:00	17:00
2021-03-20	Ensemble Room A	10:00	12:00
2021-03-21	Ensemble Room A	10:00	12:00
2021-03-21	Room 101	10:00	12:00
2021-03-21	Ensemble Room A	13:00	15:00
2021-03-21	Ensemble Room A	15:00	17:00
2021-03-21	Room 101	15:00	17:00
2021-03-22	Ensemble Room A	08:00	10:00
2021-03-22	Room 101	08:00	10:00
2021-03-22	Room 101	10:00	12:00
2021-03-22	Ensemble Room A	13:00	15:00
2021-03-22	Room 101	15:00	17:00
2021-03-22	Room 102	15:00	17:00
2021-03-23	Ensemble Room A	08:00	10:00
2021-03-23	Ensemble Room A	10:00	12:00
2021-03-23	Ensemble Room A	13:00	15:00
2021-03-23	Room 101	15:00	17:00
2021-03-23	Ensemble Room A	15:00	17:00
2021-03-23	Ensemble Room B	15:00	17:00
2021-03-24	Room 101	08:00	10:00
2021-03-24	Room 101	13:00	15:00
2021-03-24	Room 101	15:00	17:00
2021-03-24	Ensemble Room A	15:00	17:00
2021-03-25	Room 101	08:00	10:00
2021-03-25	Ensemble Room A	08:00	10:00
2021-03-25	Ensemble Room A	10:00	12:00
2021-03-25	Room 101	10:00	12:00
2021-03-25	Room 101	13:00	15:00
2021-03-25	Ensemble Room A	13:00	15:00
2021-03-25	Room 101	15:00	17:00
2021-03-26	Ensemble Room A	08:00	10:00
2021-03-26	Ensemble Room A	15:00	17:00
2021-03-26	Room 101	15:00	17:00
2021-03-27	Ensemble Room A	08:00	10:00
2021-03-27	Ensemble Room B	08:00	10:00
2021-03-27	Room 101	10:00	12:00
2021-03-27	Ensemble Room A	13:00	15:00
2021-03-27	Room 101	15:00	17:00
2021-03-28	Room 101	08:00	10:00
2021-03-28	Ensemble Room A	08:00	10:00
2021-03-28	Ensemble Room B	08:00	10:00
2021-03-28	Ensemble Room A	10:00	12:00
2021-03-28	Room 101	13:00	15:00
2021-03-28	Room 102	13:00	15:00
2021-03-28	Ensemble Room A	15:00	17:00
2021-03-28	Room 101	15:00	17:00
2021-03-29	Ensemble Room A	08:00	10:00
2021-03-29	Ensemble Room B	08:00	10:00
2021-03-29	Ensemble Room A	10:00	12:00
2021-03-29	Ensemble Room B	10:00	12:00
2021-03-29	Ensemble Room A	15:00	17:00
2021-03-30	Ensemble Room A	08:00	10:00
2021-03-30	Room 101	08:00	10:00
2021-03-30	Ensemble Room A	10:00	12:00
2021-03-30	Room 101	10:00	12:00
2021-03-30	Room 101	13:00	15:00
2021-03-30	Room 102	13:00	15:00
2021-03-30	Ensemble Room A	15:00	17:00
2021-03-31	Ensemble Room A	08:00	10:00
2021-03-31	Ensemble Room B	08:00	10:00
2021-03-31	Ensemble Room A	10:00	12:00
2021-03-31	Ensemble Room A	13:00	15:00
2021-03-31	Ensemble Room B	13:00	15:00
2021-04-01	Room 101	08:00	10:00
2021-04-01	Ensemble Room A	08:00	10:00
2021-04-01	Room 101	10:00	12:00
2021-04-01	Ensemble Room A	13:00	15:00
2021-04-01	Room 101	13:00	15:00
2021-04-01	Room 101	15:00	17:00
2021-04-01	Room 102	15:00	17:00
2021-04-01	Ensemble Room A	15:00	17:00
2021-04-02	Room 101	10:00	12:00
2021-04-02	Ensemble Room A	10:00	12:00
2021-04-02	Ensemble Room A	15:00	17:00
2021-04-02	Room 101	15:00	17:00
2021-04-03	Ensemble Room A	08:00	10:00
2021-04-03	Room 101	08:00	10:00
2021-04-03	Room 101	13:00	15:00
2021-04-03	Room 101	15:00	17:00
2021-04-03	Room 102	15:00	17:00
2021-04-04	Ensemble Room A	08:00	10:00
2021-04-04	Room 101	08:00	10:00
2021-04-04	Ensemble Room A	10:00	12:00
2021-04-04	Room 101	10:00	12:00
2021-04-04	Ensemble Room A	15:00	17:00
2021-04-05	Ensemble Room A	10:00	12:00
2021-04-05	Room 101	10:00	12:00
2021-04-05	Room 101	13:00	15:00
2021-04-05	Ensemble Room A	13:00	15:00
2021-04-05	Room 101	15:00	17:00
2021-04-06	Ensemble Room A	08:00	10:00
2021-04-06	Ensemble Room A	13:00	15:00
2021-04-06	Room 101	13:00	15:00
2021-04-06	Room 101	15:00	17:00
2021-04-07	Ensemble Room A	08:00	10:00
2021-04-07	Room 101	10:00	12:00
2021-04-07	Room 102	10:00	12:00
2021-04-07	Room 101	13:00	15:00
2021-04-07	Ensemble Room A	15:00	17:00
2021-04-08	Room 101	08:00	10:00
2021-04-08	Room 101	15:00	17:00
2021-04-08	Ensemble Room A	15:00	17:00
2021-04-09	Ensemble Room A	08:00	10:00
2021-04-09	Ensemble Room A	10:00	12:00
2021-04-09	Room 101	10:00	12:00
2021-04-09	Ensemble Room B	10:00	12:00
2021-04-09	Room 101	13:00	15:00
2021-04-09	Ensemble Room A	15:00	17:00
2021-04-10	Ensemble Room A	08:00	10:00
2021-04-10	Ensemble Room A	10:00	12:00
2021-04-10	Room 101	13:00	15:00
2021-04-10	Room 102	13:00	15:00
2021-04-10	Room 101	15:00	17:00
2021-04-10	Ensemble Room A	15:00	17:00
2021-04-11	Room 101	08:00	10:00
2021-04-11	Ensemble Room A	08:00	10:00
2021-04-11	Ensemble Room A	10:00	12:00
2021-04-12	Ensemble Room A	08:00	10:00
2021-04-12	Room 101	10:00	12:00
2021-04-12	Room 102	10:00	12:00
2021-04-12	Room 103	10:00	12:00
2021-04-12	Ensemble Room A	13:00	15:00
2021-04-12	Ensemble Room B	13:00	15:00
2021-04-13	Room 101	08:00	10:00
2021-04-13	Room 101	10:00	12:00
2021-04-13	Room 102	10:00	12:00
2021-04-13	Ensemble Room A	13:00	15:00
2021-04-13	Ensemble Room A	15:00	17:00
2021-04-14	Room 101	08:00	10:00
2021-04-14	Room 102	08:00	10:00
2021-04-14	Ensemble Room A	10:00	12:00
2021-04-14	Room 101	13:00	15:00
2021-04-14	Room 101	15:00	17:00
2021-04-14	Room 102	15:00	17:00
2021-04-15	Room 101	08:00	10:00
2021-04-15	Ensemble Room A	13:00	15:00
2021-04-15	Ensemble Room B	13:00	15:00
2021-04-16	Room 101	08:00	10:00
2021-04-16	Ensemble Room A	08:00	10:00
2021-04-16	Room 102	08:00	10:00
2021-04-16	Ensemble Room A	10:00	12:00
2021-04-16	Room 101	13:00	15:00
2021-04-16	Ensemble Room A	13:00	15:00
2021-04-16	Room 102	13:00	15:00
2021-04-16	Room 101	15:00	17:00
2021-04-17	Ensemble Room A	10:00	12:00
2021-04-17	Ensemble Room A	15:00	17:00
2021-04-18	Ensemble Room A	08:00	10:00
2021-04-18	Ensemble Room B	08:00	10:00
2021-04-18	Room 101	08:00	10:00
2021-04-18	Ensemble Room A	13:00	15:00
2021-04-18	Ensemble Room A	15:00	17:00
2021-04-19	Room 101	08:00	10:00
2021-04-19	Ensemble Room A	08:00	10:00
2021-04-19	Room 101	10:00	12:00
2021-04-19	Ensemble Room A	10:00	12:00
2021-04-19	Ensemble Room A	13:00	15:00
2021-04-19	Ensemble Room A	15:00	17:00
2021-04-19	Ensemble Room B	15:00	17:00
2021-04-19	Room 101	15:00	17:00
2021-04-20	Room 101	08:00	10:00
2021-04-20	Room 101	10:00	12:00
2021-04-20	Room 102	10:00	12:00
2021-04-20	Ensemble Room A	13:00	15:00
2021-04-20	Ensemble Room A	15:00	17:00
2021-04-20	Ensemble Room B	15:00	17:00
2021-04-21	Ensemble Room A	08:00	10:00
2021-04-21	Room 101	08:00	10:00
2021-04-21	Ensemble Room A	10:00	12:00
2021-04-21	Room 101	13:00	15:00
2021-04-22	Room 101	08:00	10:00
2021-04-22	Ensemble Room A	08:00	10:00
2021-04-22	Room 101	10:00	12:00
2021-04-22	Ensemble Room A	13:00	15:00
2021-04-23	Room 101	10:00	12:00
2021-04-23	Ensemble Room A	10:00	12:00
2021-04-23	Room 101	13:00	15:00
2021-04-23	Room 101	15:00	17:00
2021-04-24	Ensemble Room A	08:00	10:00
2021-04-24	Ensemble Room A	10:00	12:00
2021-04-24	Room 101	15:00	17:00
2021-04-25	Room 101	08:00	10:00
2021-04-25	Ensemble Room A	10:00	12:00
2021-04-25	Ensemble Room B	10:00	12:00
2021-04-26	Ensemble Room A	13:00	15:00
2021-04-26	Room 101	13:00	15:00
2021-04-26	Room 101	15:00	17:00
2021-04-26	Room 102	15:00	17:00
2021-04-26	Room 103	15:00	17:00
2021-04-27	Room 101	10:00	12:00
2021-04-27	Ensemble Room A	10:00	12:00
2021-04-27	Ensemble Room A	13:00	15:00
2021-04-27	Ensemble Room A	15:00	17:00
2021-04-28	Room 101	13:00	15:00
2021-04-29	Room 101	08:00	10:00
2021-04-29	Room 101	13:00	15:00
2021-04-29	Ensemble Room A	15:00	17:00
2021-04-30	Room 101	08:00	10:00
2021-04-30	Ensemble Room A	08:00	10:00
2021-04-30	Ensemble Room B	08:00	10:00
2021-04-30	Ensemble Room A	10:00	12:00
2021-04-30	Room 101	10:00	12:00
2021-04-30	Ensemble Room B	10:00	12:00
2021-04-30	Room 101	13:00	15:00
2021-04-30	Ensemble Room A	15:00	17:00
2021-04-30	Room 101	15:00	17:00
2021-04-30	Room 102	15:00	17:00
2021-05-01	Room 101	08:00	10:00
2021-05-01	Ensemble Room A	10:00	12:00
2021-05-01	Ensemble Room A	15:00	17:00
2021-05-02	Room 101	08:00	10:00
2021-05-02	Ensemble Room A	13:00	15:00
2021-05-03	Ensemble Room A	08:00	10:00
2021-05-03	Ensemble Room B	08:00	10:00
2021-05-03	Room 101	10:00	12:00
2021-05-03	Ensemble Room A	15:00	17:00
2021-05-03	Ensemble Room B	15:00	17:00
2021-05-03	Ensemble Room C	15:00	17:00
2021-05-04	Room 101	08:00	10:00
2021-05-04	Ensemble Room A	10:00	12:00
2021-05-04	Ensemble Room A	15:00	17:00
2021-05-05	Ensemble Room A	08:00	10:00
2021-05-05	Ensemble Room B	08:00	10:00
2021-05-05	Room 101	10:00	12:00
2021-05-05	Room 101	15:00	17:00
2021-05-06	Room 101	10:00	12:00
2021-05-06	Room 101	13:00	15:00
2021-05-06	Room 102	13:00	15:00
2021-05-06	Ensemble Room A	15:00	17:00
2021-05-07	Room 101	10:00	12:00
2021-05-07	Room 101	13:00	15:00
2021-05-07	Ensemble Room A	15:00	17:00
2021-05-08	Room 101	08:00	10:00
2021-05-08	Room 101	13:00	15:00
2021-05-08	Room 102	13:00	15:00
2021-05-09	Ensemble Room A	08:00	10:00
2021-05-09	Ensemble Room A	10:00	12:00
2021-05-09	Room 101	13:00	15:00
2021-05-09	Room 102	13:00	15:00
2021-05-09	Room 101	15:00	17:00
2021-05-10	Room 101	08:00	10:00
2021-05-10	Room 102	08:00	10:00
2021-05-10	Room 101	15:00	17:00
2021-05-11	Room 101	08:00	10:00
2021-05-11	Ensemble Room A	10:00	12:00
2021-05-11	Ensemble Room A	15:00	17:00
2021-05-11	Room 101	15:00	17:00
2021-05-12	Room 101	08:00	10:00
2021-05-12	Ensemble Room A	10:00	12:00
2021-05-12	Ensemble Room B	10:00	12:00
2021-05-12	Ensemble Room A	15:00	17:00
2021-05-13	Room 101	10:00	12:00
2021-05-13	Room 101	13:00	15:00
2021-05-13	Ensemble Room A	15:00	17:00
2021-05-13	Ensemble Room B	15:00	17:00
2021-05-14	Room 101	10:00	12:00
2021-05-14	Room 102	10:00	12:00
2021-05-14	Ensemble Room A	10:00	12:00
2021-05-14	Room 101	13:00	15:00
2021-05-14	Ensemble Room A	13:00	15:00
2021-05-14	Room 101	15:00	17:00
2021-05-14	Room 102	15:00	17:00
2021-05-15	Room 101	10:00	12:00
2021-05-15	Ensemble Room A	10:00	12:00
2021-05-16	Room 101	08:00	10:00
2021-05-16	Ensemble Room A	08:00	10:00
2021-05-16	Room 101	10:00	12:00
2021-05-16	Ensemble Room A	15:00	17:00
2021-05-17	Room 101	08:00	10:00
2021-05-17	Ensemble Room A	10:00	12:00
2021-05-17	Room 101	10:00	12:00
2021-05-18	Room 101	08:00	10:00
2021-05-18	Ensemble Room A	08:00	10:00
2021-05-18	Ensemble Room B	08:00	10:00
2021-05-18	Ensemble Room A	10:00	12:00
2021-05-18	Room 101	15:00	17:00
2021-05-19	Ensemble Room A	10:00	12:00
2021-05-19	Room 101	13:00	15:00
2021-05-19	Ensemble Room A	13:00	15:00
2021-05-19	Room 102	13:00	15:00
2021-05-19	Ensemble Room A	15:00	17:00
2021-05-19	Room 101	15:00	17:00
2021-05-20	Ensemble Room A	08:00	10:00
2021-05-20	Room 101	08:00	10:00
2021-05-20	Room 101	10:00	12:00
2021-05-20	Ensemble Room A	13:00	15:00
2021-05-20	Room 101	13:00	15:00
2021-05-21	Ensemble Room A	10:00	12:00
2021-05-21	Ensemble Room B	10:00	12:00
2021-05-21	Room 101	10:00	12:00
2021-05-21	Ensemble Room A	15:00	17:00
2021-05-22	Room 101	08:00	10:00
2021-05-22	Room 102	08:00	10:00
2021-05-22	Ensemble Room A	15:00	17:00
2021-05-22	Room 101	15:00	17:00
2021-05-23	Room 101	10:00	12:00
2021-05-23	Ensemble Room A	10:00	12:00
2021-05-23	Room 102	10:00	12:00
2021-05-23	Ensemble Room A	13:00	15:00
2021-05-23	Ensemble Room B	13:00	15:00
2021-05-24	Room 101	08:00	10:00
2021-05-24	Room 102	08:00	10:00
2021-05-24	Room 103	08:00	10:00
2021-05-24	Ensemble Room A	10:00	12:00
2021-05-24	Ensemble Room A	13:00	15:00
2021-05-24	Room 101	15:00	17:00
2021-05-25	Room 101	10:00	12:00
2021-05-25	Ensemble Room A	13:00	15:00
2021-05-25	Ensemble Room A	15:00	17:00
2021-05-25	Room 101	15:00	17:00
2021-05-25	Ensemble Room B	15:00	17:00
2021-05-26	Room 101	08:00	10:00
2021-05-26	Ensemble Room A	08:00	10:00
2021-05-26	Room 101	15:00	17:00
2021-05-26	Ensemble Room A	15:00	17:00
2021-05-26	Ensemble Room B	15:00	17:00
2021-05-27	Ensemble Room A	08:00	10:00
2021-05-27	Room 101	08:00	10:00
2021-05-27	Room 101	10:00	12:00
2021-05-27	Room 101	13:00	15:00
2021-05-27	Ensemble Room A	15:00	17:00
2021-05-28	Ensemble Room A	08:00	10:00
2021-05-28	Ensemble Room A	10:00	12:00
2021-05-28	Ensemble Room A	13:00	15:00
2021-05-28	Room 101	13:00	15:00
2021-05-28	Room 102	13:00	15:00
2021-05-28	Ensemble Room A	15:00	17:00
2021-05-28	Room 101	15:00	17:00
2021-05-29	Room 101	08:00	10:00
2021-05-29	Room 101	10:00	12:00
2021-05-29	Ensemble Room A	15:00	17:00
2021-05-29	Ensemble Room B	15:00	17:00
2021-05-30	Room 101	08:00	10:00
2021-05-30	Room 101	10:00	12:00
2021-05-30	Ensemble Room A	10:00	12:00
2021-05-30	Ensemble Room B	10:00	12:00
2021-05-30	Room 101	13:00	15:00
2021-05-30	Ensemble Room A	13:00	15:00
2021-05-30	Room 101	15:00	17:00
2021-05-31	Room 101	08:00	10:00
2021-05-31	Room 101	10:00	12:00
2021-05-31	Room 102	10:00	12:00
2021-05-31	Ensemble Room A	13:00	15:00
2021-05-31	Ensemble Room B	13:00	15:00
2021-05-31	Ensemble Room A	15:00	17:00
2021-06-01	Ensemble Room A	10:00	12:00
2021-06-01	Room 101	10:00	12:00
2021-06-01	Room 101	13:00	15:00
2021-06-01	Room 101	15:00	17:00
2021-06-01	Room 102	15:00	17:00
2021-06-01	Room 103	15:00	17:00
2021-06-02	Ensemble Room A	13:00	15:00
2021-06-02	Ensemble Room B	13:00	15:00
2021-06-02	Room 101	13:00	15:00
2021-06-02	Room 101	15:00	17:00
2021-06-03	Room 101	08:00	10:00
2021-06-03	Ensemble Room A	10:00	12:00
2021-06-03	Ensemble Room A	15:00	17:00
2021-06-03	Room 101	15:00	17:00
2021-06-04	Room 101	13:00	15:00
2021-06-04	Ensemble Room A	15:00	17:00
2021-06-05	Ensemble Room A	10:00	12:00
2021-06-05	Ensemble Room A	13:00	15:00
2021-06-05	Ensemble Room A	15:00	17:00
2021-06-05	Room 101	15:00	17:00
2021-06-06	Ensemble Room A	08:00	10:00
2021-06-06	Ensemble Room A	10:00	12:00
2021-06-06	Ensemble Room B	10:00	12:00
2021-06-06	Room 101	13:00	15:00
2021-06-07	Room 101	08:00	10:00
2021-06-07	Room 101	10:00	12:00
2021-06-07	Room 101	15:00	17:00
2021-06-07	Room 102	15:00	17:00
2021-06-07	Room 103	15:00	17:00
2021-06-08	Room 101	08:00	10:00
2021-06-08	Room 102	08:00	10:00
2021-06-08	Room 101	10:00	12:00
2021-06-08	Ensemble Room A	10:00	12:00
2021-06-08	Ensemble Room B	10:00	12:00
2021-06-08	Room 101	13:00	15:00
2021-06-08	Room 102	13:00	15:00
2021-06-09	Room 101	08:00	10:00
2021-06-09	Ensemble Room A	08:00	10:00
2021-06-09	Room 101	10:00	12:00
2021-06-09	Ensemble Room A	10:00	12:00
2021-06-09	Room 101	13:00	15:00
2021-06-09	Ensemble Room A	13:00	15:00
2021-06-10	Room 101	13:00	15:00
2021-06-10	Ensemble Room A	15:00	17:00
2021-06-10	Room 101	15:00	17:00
2021-06-10	Room 102	15:00	17:00
2021-06-11	Ensemble Room A	08:00	10:00
2021-06-11	Ensemble Room B	08:00	10:00
2021-06-11	Ensemble Room A	13:00	15:00
2021-06-11	Room 101	15:00	17:00
2021-06-11	Ensemble Room A	15:00	17:00
2021-06-12	Room 101	08:00	10:00
2021-06-12	Ensemble Room A	08:00	10:00
2021-06-12	Ensemble Room B	08:00	10:00
2021-06-12	Ensemble Room A	13:00	15:00
2021-06-12	Room 101	15:00	17:00
2021-06-13	Ensemble Room A	08:00	10:00
2021-06-13	Ensemble Room B	08:00	10:00
2021-06-13	Room 101	10:00	12:00
2021-06-13	Ensemble Room A	10:00	12:00
2021-06-13	Room 101	13:00	15:00
2021-06-13	Ensemble Room A	13:00	15:00
2021-06-14	Ensemble Room A	08:00	10:00
2021-06-14	Ensemble Room B	08:00	10:00
2021-06-14	Room 101	15:00	17:00
2021-06-14	Room 102	15:00	17:00
2021-06-15	Room 101	08:00	10:00
2021-06-15	Ensemble Room A	08:00	10:00
2021-06-15	Room 101	10:00	12:00
2021-06-15	Room 102	10:00	12:00
2021-06-15	Ensemble Room A	13:00	15:00
2021-06-15	Room 101	13:00	15:00
2021-06-15	Room 101	15:00	17:00
2021-06-16	Ensemble Room A	08:00	10:00
2021-06-16	Ensemble Room B	08:00	10:00
2021-06-16	Room 101	10:00	12:00
2021-06-16	Room 102	10:00	12:00
2021-06-16	Ensemble Room A	13:00	15:00
2021-06-16	Room 101	13:00	15:00
2021-06-16	Ensemble Room A	15:00	17:00
2021-06-16	Ensemble Room B	15:00	17:00
2021-06-17	Room 101	08:00	10:00
2021-06-17	Room 102	08:00	10:00
2021-06-17	Room 101	10:00	12:00
2021-06-17	Room 102	10:00	12:00
2021-06-17	Room 103	10:00	12:00
2021-06-17	Ensemble Room A	13:00	15:00
2021-06-17	Ensemble Room B	13:00	15:00
2021-06-17	Room 101	15:00	17:00
2021-06-18	Room 101	08:00	10:00
2021-06-18	Ensemble Room A	13:00	15:00
2021-06-18	Ensemble Room A	15:00	17:00
2021-06-19	Ensemble Room A	13:00	15:00
2021-06-19	Room 101	13:00	15:00
2021-06-19	Room 101	15:00	17:00
2021-06-20	Ensemble Room A	10:00	12:00
2021-06-20	Ensemble Room A	13:00	15:00
2021-06-20	Room 101	13:00	15:00
2021-06-20	Room 101	15:00	17:00
2021-06-20	Room 102	15:00	17:00
2021-06-22	Room 101	08:00	10:00
2021-06-22	Ensemble Room A	08:00	10:00
2021-06-22	Room 101	10:00	12:00
2021-06-22	Ensemble Room A	13:00	15:00
2021-06-22	Room 101	13:00	15:00
2021-06-22	Room 102	13:00	15:00
2021-06-22	Ensemble Room A	15:00	17:00
2021-06-22	Room 101	15:00	17:00
2021-06-23	Room 101	08:00	10:00
2021-06-23	Room 102	08:00	10:00
2021-06-23	Room 101	10:00	12:00
2021-06-23	Ensemble Room A	13:00	15:00
2021-06-23	Ensemble Room B	13:00	15:00
2021-06-23	Ensemble Room A	15:00	17:00
2021-06-24	Ensemble Room A	08:00	10:00
2021-06-24	Room 101	08:00	10:00
2021-06-24	Room 101	10:00	12:00
2021-06-24	Ensemble Room A	13:00	15:00
2021-06-24	Ensemble Room B	13:00	15:00
2021-06-24	Room 101	13:00	15:00
2021-06-24	Room 101	15:00	17:00
2021-06-25	Room 101	08:00	10:00
2021-06-25	Room 101	10:00	12:00
2021-06-25	Room 101	13:00	15:00
2021-06-26	Room 101	08:00	10:00
2021-06-26	Room 101	10:00	12:00
2021-06-27	Ensemble Room A	08:00	10:00
2021-06-27	Ensemble Room B	08:00	10:00
2021-06-27	Ensemble Room C	08:00	10:00
2021-06-27	Room 101	13:00	15:00
2021-06-27	Room 101	15:00	17:00
2021-06-28	Room 101	08:00	10:00
2021-06-28	Ensemble Room A	10:00	12:00
2021-06-28	Ensemble Room B	10:00	12:00
2021-06-28	Ensemble Room A	15:00	17:00
2021-06-29	Room 101	13:00	15:00
2021-06-29	Room 101	15:00	17:00
2021-06-29	Ensemble Room A	15:00	17:00
2021-06-30	Room 101	13:00	15:00
2021-06-30	Room 102	13:00	15:00
2021-07-01	Room 101	10:00	12:00
2021-07-01	Ensemble Room A	15:00	17:00
2021-07-01	Room 101	15:00	17:00
2021-07-02	Room 101	08:00	10:00
2021-07-02	Ensemble Room A	08:00	10:00
2021-07-02	Room 101	10:00	12:00
2021-07-02	Ensemble Room A	10:00	12:00
2021-07-02	Room 101	13:00	15:00
2021-07-02	Ensemble Room A	13:00	15:00
2021-07-02	Room 101	15:00	17:00
2021-07-02	Room 102	15:00	17:00
2021-07-03	Ensemble Room A	08:00	10:00
2021-07-03	Room 101	08:00	10:00
2021-07-03	Ensemble Room A	10:00	12:00
2021-07-03	Ensemble Room A	13:00	15:00
2021-07-04	Ensemble Room A	10:00	12:00
2021-07-04	Room 101	13:00	15:00
2021-07-05	Ensemble Room A	15:00	17:00
2021-07-06	Room 101	08:00	10:00
2021-07-06	Ensemble Room A	08:00	10:00
2021-07-06	Ensemble Room A	13:00	15:00
2021-07-06	Ensemble Room B	13:00	15:00
2021-07-06	Room 101	15:00	17:00
2021-07-06	Room 102	15:00	17:00
2021-07-07	Ensemble Room A	10:00	12:00
2021-07-07	Ensemble Room A	15:00	17:00
2021-07-08	Room 101	08:00	10:00
2021-07-08	Room 101	10:00	12:00
2021-07-08	Room 101	13:00	15:00
2021-07-08	Ensemble Room A	13:00	15:00
2021-07-08	Room 101	15:00	17:00
2021-07-08	Room 102	15:00	17:00
2021-07-09	Room 101	08:00	10:00
2021-07-09	Ensemble Room A	10:00	12:00
2021-07-09	Ensemble Room B	10:00	12:00
2021-07-10	Room 101	08:00	10:00
2021-07-10	Room 101	10:00	12:00
2021-07-10	Ensemble Room A	10:00	12:00
2021-07-10	Room 101	13:00	15:00
2021-07-10	Room 102	13:00	15:00
2021-07-10	Ensemble Room A	15:00	17:00
2021-07-11	Room 101	08:00	10:00
2021-07-11	Ensemble Room A	10:00	12:00
2021-07-11	Ensemble Room B	10:00	12:00
2021-07-11	Room 101	13:00	15:00
2021-07-11	Room 101	15:00	17:00
2021-07-12	Room 101	08:00	10:00
2021-07-12	Room 101	10:00	12:00
2021-07-12	Ensemble Room A	10:00	12:00
2021-07-12	Room 101	13:00	15:00
2021-07-12	Ensemble Room A	13:00	15:00
2021-07-12	Ensemble Room A	15:00	17:00
2021-07-13	Ensemble Room A	08:00	10:00
2021-07-13	Room 101	10:00	12:00
2021-07-13	Ensemble Room A	15:00	17:00
2021-07-14	Ensemble Room A	08:00	10:00
2021-07-14	Room 101	10:00	12:00
2021-07-14	Room 102	10:00	12:00
2021-07-14	Ensemble Room A	13:00	15:00
2021-07-15	Ensemble Room A	08:00	10:00
2021-07-15	Ensemble Room A	10:00	12:00
2021-07-15	Room 101	15:00	17:00
2021-07-16	Ensemble Room A	10:00	12:00
2021-07-16	Ensemble Room B	10:00	12:00
2021-07-16	Room 101	10:00	12:00
2021-07-16	Room 101	13:00	15:00
2021-07-17	Room 101	08:00	10:00
2021-07-17	Room 102	08:00	10:00
2021-07-17	Ensemble Room A	10:00	12:00
2021-07-17	Ensemble Room B	10:00	12:00
2021-07-17	Room 101	10:00	12:00
2021-07-17	Ensemble Room A	13:00	15:00
2021-07-17	Ensemble Room B	13:00	15:00
2021-07-17	Ensemble Room A	15:00	17:00
2021-07-18	Ensemble Room A	10:00	12:00
2021-07-18	Room 101	10:00	12:00
2021-07-18	Ensemble Room A	13:00	15:00
2021-07-18	Room 101	15:00	17:00
2021-07-18	Room 102	15:00	17:00
2021-07-18	Ensemble Room A	15:00	17:00
2021-07-19	Ensemble Room A	08:00	10:00
2021-07-19	Ensemble Room A	10:00	12:00
2021-07-19	Ensemble Room B	10:00	12:00
2021-07-20	Room 101	08:00	10:00
2021-07-20	Ensemble Room A	10:00	12:00
2021-07-20	Room 101	10:00	12:00
2021-07-20	Ensemble Room B	10:00	12:00
2021-07-20	Room 101	13:00	15:00
2021-07-20	Ensemble Room A	13:00	15:00
2021-07-20	Room 101	15:00	17:00
2021-07-20	Ensemble Room A	15:00	17:00
2021-07-21	Room 101	13:00	15:00
2021-07-21	Ensemble Room A	13:00	15:00
2021-07-21	Room 102	13:00	15:00
2021-07-21	Room 101	15:00	17:00
2021-07-22	Ensemble Room A	08:00	10:00
2021-07-22	Ensemble Room A	10:00	12:00
2021-07-22	Room 101	10:00	12:00
2021-07-22	Ensemble Room A	15:00	17:00
2021-07-23	Ensemble Room A	13:00	15:00
2021-07-23	Ensemble Room A	15:00	17:00
2021-07-24	Room 101	10:00	12:00
2021-07-24	Ensemble Room A	13:00	15:00
2021-07-24	Ensemble Room A	15:00	17:00
2021-07-24	Ensemble Room B	15:00	17:00
2021-07-24	Ensemble Room C	15:00	17:00
2021-07-25	Room 101	08:00	10:00
2021-07-25	Room 102	08:00	10:00
2021-07-25	Room 103	08:00	10:00
2021-07-25	Ensemble Room A	10:00	12:00
2021-07-25	Room 101	10:00	12:00
2021-07-25	Ensemble Room A	13:00	15:00
2021-07-25	Room 101	13:00	15:00
2021-07-25	Room 101	15:00	17:00
2021-07-25	Room 102	15:00	17:00
2021-07-26	Room 101	08:00	10:00
2021-07-26	Room 101	10:00	12:00
2021-07-26	Ensemble Room A	13:00	15:00
2021-07-26	Room 101	15:00	17:00
2021-07-26	Room 102	15:00	17:00
2021-07-27	Ensemble Room A	13:00	15:00
2021-07-27	Room 101	13:00	15:00
2021-07-28	Room 101	08:00	10:00
2021-07-28	Ensemble Room A	08:00	10:00
2021-07-28	Ensemble Room A	10:00	12:00
2021-07-28	Room 101	10:00	12:00
2021-07-28	Ensemble Room B	10:00	12:00
2021-07-28	Room 101	13:00	15:00
2021-07-28	Ensemble Room A	15:00	17:00
2021-07-28	Ensemble Room B	15:00	17:00
2021-07-28	Room 101	15:00	17:00
2021-07-29	Room 101	08:00	10:00
2021-07-29	Ensemble Room A	10:00	12:00
2021-07-30	Ensemble Room A	08:00	10:00
2021-07-30	Ensemble Room B	08:00	10:00
2021-07-30	Ensemble Room C	08:00	10:00
2021-07-30	Ensemble Room A	10:00	12:00
2021-07-30	Room 101	13:00	15:00
2021-07-30	Ensemble Room A	13:00	15:00
2021-07-30	Ensemble Room A	15:00	17:00
2021-07-31	Room 101	10:00	12:00
2021-07-31	Ensemble Room A	10:00	12:00
2021-07-31	Room 101	15:00	17:00
2021-08-01	Ensemble Room A	08:00	10:00
2021-08-01	Room 101	10:00	12:00
2021-08-01	Room 102	10:00	12:00
2021-08-01	Room 103	10:00	12:00
2021-08-02	Room 101	08:00	10:00
2021-08-02	Ensemble Room A	08:00	10:00
2021-08-02	Ensemble Room A	10:00	12:00
2021-08-02	Ensemble Room A	15:00	17:00
2021-08-03	Ensemble Room A	10:00	12:00
2021-08-03	Ensemble Room B	10:00	12:00
2021-08-03	Room 101	10:00	12:00
2021-08-03	Ensemble Room A	13:00	15:00
2021-08-03	Room 101	15:00	17:00
2021-08-03	Room 102	15:00	17:00
2021-08-04	Room 101	10:00	12:00
2021-08-04	Room 102	10:00	12:00
2021-08-04	Room 101	13:00	15:00
2021-08-04	Ensemble Room A	13:00	15:00
2021-08-04	Ensemble Room A	15:00	17:00
2021-08-05	Ensemble Room A	13:00	15:00
2021-08-05	Ensemble Room B	13:00	15:00
2021-08-05	Room 101	15:00	17:00
2021-08-05	Room 102	15:00	17:00
2021-08-05	Ensemble Room A	15:00	17:00
2021-08-06	Ensemble Room A	08:00	10:00
2021-08-06	Room 101	10:00	12:00
2021-08-07	Ensemble Room A	08:00	10:00
2021-08-07	Ensemble Room B	08:00	10:00
2021-08-07	Ensemble Room A	10:00	12:00
2021-08-07	Room 101	10:00	12:00
2021-08-07	Ensemble Room A	13:00	15:00
2021-08-08	Ensemble Room A	08:00	10:00
2021-08-08	Room 101	08:00	10:00
2021-08-08	Room 101	10:00	12:00
2021-08-08	Ensemble Room A	13:00	15:00
2021-08-08	Ensemble Room B	13:00	15:00
2021-08-08	Ensemble Room A	15:00	17:00
2021-08-09	Ensemble Room A	10:00	12:00
2021-08-09	Ensemble Room B	10:00	12:00
2021-08-09	Ensemble Room A	15:00	17:00
2021-08-09	Ensemble Room B	15:00	17:00
2021-08-10	Ensemble Room A	08:00	10:00
2021-08-10	Ensemble Room A	13:00	15:00
2021-08-10	Ensemble Room A	15:00	17:00
2021-08-11	Room 101	10:00	12:00
2021-08-11	Room 101	13:00	15:00
2021-08-11	Room 101	15:00	17:00
2021-08-11	Room 102	15:00	17:00
2021-08-12	Room 101	13:00	15:00
2021-08-13	Room 101	08:00	10:00
2021-08-13	Room 101	13:00	15:00
2021-08-13	Room 102	13:00	15:00
2021-08-13	Room 101	15:00	17:00
2021-08-14	Ensemble Room A	08:00	10:00
2021-08-14	Room 101	08:00	10:00
2021-08-14	Ensemble Room A	10:00	12:00
2021-08-14	Ensemble Room B	10:00	12:00
2021-08-14	Ensemble Room A	13:00	15:00
2021-08-14	Ensemble Room A	15:00	17:00
2021-08-14	Room 101	15:00	17:00
2021-08-14	Room 102	15:00	17:00
2021-08-15	Room 101	08:00	10:00
2021-08-15	Room 101	10:00	12:00
2021-08-15	Room 102	10:00	12:00
2021-08-15	Ensemble Room A	13:00	15:00
2021-08-15	Ensemble Room A	15:00	17:00
2021-08-16	Ensemble Room A	08:00	10:00
2021-08-16	Ensemble Room B	08:00	10:00
2021-08-16	Ensemble Room A	13:00	15:00
2021-08-16	Ensemble Room A	15:00	17:00
2021-08-16	Ensemble Room B	15:00	17:00
2021-08-16	Ensemble Room C	15:00	17:00
2021-08-17	Room 101	08:00	10:00
2021-08-17	Room 101	10:00	12:00
2021-08-17	Room 101	13:00	15:00
2021-08-17	Ensemble Room A	15:00	17:00
2021-08-17	Ensemble Room B	15:00	17:00
2021-08-18	Ensemble Room A	10:00	12:00
2021-08-18	Ensemble Room A	13:00	15:00
2021-08-19	Ensemble Room A	15:00	17:00
2021-08-19	Ensemble Room B	15:00	17:00
2021-08-20	Room 101	08:00	10:00
2021-08-20	Ensemble Room A	10:00	12:00
2021-08-20	Ensemble Room B	10:00	12:00
2021-08-20	Ensemble Room A	15:00	17:00
2021-08-20	Room 101	15:00	17:00
2021-08-21	Room 101	08:00	10:00
2021-08-21	Ensemble Room A	10:00	12:00
2021-08-21	Ensemble Room B	10:00	12:00
2021-08-21	Ensemble Room A	15:00	17:00
2021-08-22	Room 101	08:00	10:00
2021-08-22	Ensemble Room A	10:00	12:00
2021-08-22	Room 101	10:00	12:00
2021-08-22	Ensemble Room A	13:00	15:00
2021-08-22	Room 101	13:00	15:00
2021-08-22	Room 101	15:00	17:00
2021-08-22	Room 102	15:00	17:00
2021-08-22	Ensemble Room A	15:00	17:00
2021-08-23	Room 101	13:00	15:00
2021-08-23	Room 102	13:00	15:00
2021-08-23	Room 103	13:00	15:00
2021-08-23	Room 101	15:00	17:00
2021-08-24	Ensemble Room A	08:00	10:00
2021-08-24	Room 101	13:00	15:00
2021-08-24	Ensemble Room A	15:00	17:00
2021-08-24	Room 101	15:00	17:00
2021-08-24	Room 102	15:00	17:00
2021-08-25	Room 101	08:00	10:00
2021-08-25	Room 102	08:00	10:00
2021-08-25	Room 101	13:00	15:00
2021-08-25	Ensemble Room A	13:00	15:00
2021-08-25	Ensemble Room A	15:00	17:00
2021-08-25	Room 101	15:00	17:00
2021-08-25	Ensemble Room B	15:00	17:00
2021-08-26	Room 101	10:00	12:00
2021-08-27	Room 101	08:00	10:00
2021-08-27	Room 102	08:00	10:00
2021-08-27	Ensemble Room A	13:00	15:00
2021-08-27	Room 101	13:00	15:00
2021-08-28	Ensemble Room A	08:00	10:00
2021-08-28	Ensemble Room A	10:00	12:00
2021-08-28	Ensemble Room A	13:00	15:00
2021-08-28	Ensemble Room A	15:00	17:00
2021-08-28	Room 101	15:00	17:00
2021-08-29	Room 101	08:00	10:00
2021-08-29	Room 101	10:00	12:00
2021-08-29	Room 102	10:00	12:00
2021-08-29	Room 101	13:00	15:00
2021-08-29	Ensemble Room A	13:00	15:00
2021-08-29	Ensemble Room B	13:00	15:00
2021-08-30	Room 101	08:00	10:00
2021-08-30	Room 101	15:00	17:00
2021-08-31	Room 101	08:00	10:00
2021-08-31	Room 101	10:00	12:00
2021-08-31	Room 102	10:00	12:00
2021-08-31	Room 103	10:00	12:00
2021-08-31	Ensemble Room A	15:00	17:00
2021-09-01	Ensemble Room A	08:00	10:00
2021-09-01	Ensemble Room B	08:00	10:00
2021-09-01	Room 101	10:00	12:00
2021-09-01	Ensemble Room A	10:00	12:00
2021-09-01	Ensemble Room A	13:00	15:00
2021-09-01	Ensemble Room A	15:00	17:00
2021-09-02	Ensemble Room A	08:00	10:00
2021-09-02	Ensemble Room B	08:00	10:00
2021-09-02	Ensemble Room A	10:00	12:00
2021-09-02	Ensemble Room B	10:00	12:00
2021-09-02	Room 101	10:00	12:00
2021-09-02	Ensemble Room A	13:00	15:00
2021-09-02	Room 101	13:00	15:00
2021-09-02	Room 102	13:00	15:00
2021-09-03	Room 101	08:00	10:00
2021-09-03	Ensemble Room A	10:00	12:00
2021-09-03	Room 101	10:00	12:00
2021-09-03	Ensemble Room B	10:00	12:00
2021-09-03	Room 101	13:00	15:00
2021-09-03	Ensemble Room A	13:00	15:00
2021-09-03	Room 101	15:00	17:00
2021-09-03	Ensemble Room A	15:00	17:00
2021-09-04	Room 101	08:00	10:00
2021-09-04	Ensemble Room A	13:00	15:00
2021-09-04	Room 101	15:00	17:00
2021-09-04	Room 102	15:00	17:00
2021-09-05	Room 101	08:00	10:00
2021-09-05	Ensemble Room A	13:00	15:00
2021-09-05	Ensemble Room A	15:00	17:00
2021-09-05	Ensemble Room B	15:00	17:00
2021-09-06	Room 101	08:00	10:00
2021-09-06	Ensemble Room A	08:00	10:00
2021-09-06	Room 101	10:00	12:00
2021-09-06	Room 101	13:00	15:00
2021-09-06	Room 102	13:00	15:00
2021-09-06	Ensemble Room A	13:00	15:00
2021-09-06	Room 101	15:00	17:00
2021-09-06	Room 102	15:00	17:00
2021-09-07	Ensemble Room A	10:00	12:00
2021-09-07	Ensemble Room B	10:00	12:00
2021-09-07	Ensemble Room C	10:00	12:00
2021-09-08	Ensemble Room A	08:00	10:00
2021-09-08	Ensemble Room A	10:00	12:00
2021-09-08	Ensemble Room A	13:00	15:00
2021-09-08	Ensemble Room A	15:00	17:00
2021-09-09	Room 101	10:00	12:00
2021-09-09	Ensemble Room A	10:00	12:00
2021-09-09	Ensemble Room B	10:00	12:00
2021-09-09	Ensemble Room A	13:00	15:00
2021-09-09	Ensemble Room A	15:00	17:00
2021-09-09	Ensemble Room B	15:00	17:00
2021-09-10	Ensemble Room A	08:00	10:00
2021-09-10	Room 101	08:00	10:00
2021-09-10	Room 101	10:00	12:00
2021-09-10	Ensemble Room A	10:00	12:00
2021-09-10	Ensemble Room B	10:00	12:00
2021-09-10	Room 101	13:00	15:00
2021-09-10	Ensemble Room A	15:00	17:00
2021-09-11	Ensemble Room A	08:00	10:00
2021-09-11	Room 101	08:00	10:00
2021-09-11	Room 101	10:00	12:00
2021-09-11	Ensemble Room A	13:00	15:00
2021-09-11	Room 101	13:00	15:00
2021-09-11	Room 101	15:00	17:00
2021-09-11	Room 102	15:00	17:00
2021-09-11	Ensemble Room A	15:00	17:00
2021-09-12	Ensemble Room A	10:00	12:00
2021-09-12	Ensemble Room A	13:00	15:00
2021-09-13	Room 101	08:00	10:00
2021-09-13	Ensemble Room A	08:00	10:00
2021-09-13	Room 102	08:00	10:00
2021-09-13	Ensemble Room A	10:00	12:00
2021-09-13	Room 101	10:00	12:00
2021-09-13	Room 101	13:00	15:00
2021-09-13	Ensemble Room A	13:00	15:00
2021-09-13	Room 101	15:00	17:00
2021-09-14	Room 101	08:00	10:00
2021-09-14	Ensemble Room A	08:00	10:00
2021-09-14	Room 101	13:00	15:00
2021-09-14	Room 101	15:00	17:00
2021-09-14	Ensemble Room A	15:00	17:00
2021-09-15	Room 101	08:00	10:00
2021-09-15	Ensemble Room A	08:00	10:00
2021-09-15	Ensemble Room A	10:00	12:00
2021-09-15	Room 101	10:00	12:00
2021-09-15	Ensemble Room A	15:00	17:00
2021-09-15	Room 101	15:00	17:00
2021-09-16	Room 101	08:00	10:00
2021-09-16	Ensemble Room A	10:00	12:00
2021-09-16	Room 101	10:00	12:00
2021-09-16	Ensemble Room A	15:00	17:00
2021-09-17	Ensemble Room A	08:00	10:00
2021-09-17	Room 101	08:00	10:00
2021-09-17	Ensemble Room A	10:00	12:00
2021-09-17	Ensemble Room B	10:00	12:00
2021-09-17	Ensemble Room A	13:00	15:00
2021-09-18	Room 101	15:00	17:00
2021-09-18	Room 102	15:00	17:00
2021-09-19	Ensemble Room A	08:00	10:00
2021-09-19	Ensemble Room A	13:00	15:00
2021-09-19	Room 101	15:00	17:00
2021-09-20	Ensemble Room A	08:00	10:00
2021-09-20	Room 101	08:00	10:00
2021-09-20	Ensemble Room A	13:00	15:00
2021-09-20	Room 101	13:00	15:00
2021-09-21	Room 101	10:00	12:00
2021-09-21	Room 101	13:00	15:00
2021-09-21	Room 102	13:00	15:00
2021-09-21	Room 101	15:00	17:00
2021-09-21	Room 102	15:00	17:00
2021-09-22	Ensemble Room A	08:00	10:00
2021-09-22	Ensemble Room A	10:00	12:00
2021-09-22	Room 101	10:00	12:00
2021-09-22	Ensemble Room A	13:00	15:00
2021-09-22	Room 101	13:00	15:00
2021-09-22	Ensemble Room B	13:00	15:00
2021-09-23	Ensemble Room A	08:00	10:00
2021-09-23	Room 101	08:00	10:00
2021-09-23	Ensemble Room A	10:00	12:00
2021-09-23	Room 101	10:00	12:00
2021-09-23	Ensemble Room A	15:00	17:00
2021-09-24	Ensemble Room A	08:00	10:00
2021-09-24	Room 101	08:00	10:00
2021-09-25	Room 101	10:00	12:00
2021-09-25	Ensemble Room A	10:00	12:00
2021-09-25	Ensemble Room A	13:00	15:00
2021-09-25	Ensemble Room A	15:00	17:00
2021-09-26	Room 101	10:00	12:00
2021-09-26	Room 102	10:00	12:00
2021-09-26	Room 101	13:00	15:00
2021-09-26	Room 101	15:00	17:00
2021-09-26	Room 102	15:00	17:00
2021-09-27	Room 101	10:00	12:00
2021-09-27	Room 102	10:00	12:00
2021-09-27	Ensemble Room A	13:00	15:00
2021-09-27	Room 101	13:00	15:00
2021-09-27	Ensemble Room A	15:00	17:00
2021-09-28	Ensemble Room A	08:00	10:00
2021-09-28	Room 101	08:00	10:00
2021-09-28	Ensemble Room A	15:00	17:00
2021-09-29	Room 101	08:00	10:00
2021-09-29	Ensemble Room A	08:00	10:00
2021-09-29	Room 101	13:00	15:00
2021-09-29	Ensemble Room A	15:00	17:00
2021-09-30	Room 101	08:00	10:00
2021-09-30	Room 102	08:00	10:00
2021-09-30	Ensemble Room A	10:00	12:00
2021-09-30	Room 101	13:00	15:00
2021-09-30	Room 101	15:00	17:00
2021-10-01	Ensemble Room A	08:00	10:00
2021-10-01	Room 101	08:00	10:00
2021-10-01	Room 101	10:00	12:00
2021-10-01	Room 101	13:00	15:00
2021-10-01	Ensemble Room A	13:00	15:00
2021-10-01	Ensemble Room A	15:00	17:00
2021-10-02	Room 101	08:00	10:00
2021-10-02	Room 102	08:00	10:00
2021-10-02	Ensemble Room A	08:00	10:00
2021-10-02	Ensemble Room A	13:00	15:00
2021-10-02	Room 101	15:00	17:00
2021-10-02	Ensemble Room A	15:00	17:00
2021-10-03	Room 101	08:00	10:00
2021-10-03	Room 101	13:00	15:00
2021-10-03	Ensemble Room A	13:00	15:00
2021-10-03	Ensemble Room A	15:00	17:00
2021-10-04	Room 101	08:00	10:00
2021-10-04	Ensemble Room A	10:00	12:00
2021-10-04	Ensemble Room B	10:00	12:00
2021-10-04	Room 101	13:00	15:00
2021-10-04	Room 101	15:00	17:00
2021-10-05	Ensemble Room A	08:00	10:00
2021-10-05	Ensemble Room A	10:00	12:00
2021-10-05	Ensemble Room B	10:00	12:00
2021-10-05	Room 101	13:00	15:00
2021-10-05	Ensemble Room A	13:00	15:00
2021-10-05	Room 101	15:00	17:00
2021-10-05	Room 102	15:00	17:00
2021-10-06	Room 101	08:00	10:00
2021-10-06	Ensemble Room A	08:00	10:00
2021-10-06	Ensemble Room B	08:00	10:00
2021-10-06	Ensemble Room A	10:00	12:00
2021-10-06	Room 101	13:00	15:00
2021-10-06	Ensemble Room A	13:00	15:00
2021-10-06	Room 101	15:00	17:00
2021-10-06	Room 102	15:00	17:00
2021-10-07	Ensemble Room A	08:00	10:00
2021-10-07	Ensemble Room A	10:00	12:00
2021-10-07	Ensemble Room A	13:00	15:00
2021-10-07	Ensemble Room B	13:00	15:00
2021-10-08	Ensemble Room A	08:00	10:00
2021-10-08	Room 101	08:00	10:00
2021-10-08	Room 102	08:00	10:00
2021-10-08	Room 101	10:00	12:00
2021-10-08	Ensemble Room A	10:00	12:00
2021-10-08	Ensemble Room A	13:00	15:00
2021-10-08	Room 101	13:00	15:00
2021-10-08	Ensemble Room B	13:00	15:00
2021-10-09	Room 101	08:00	10:00
2021-10-09	Room 102	08:00	10:00
2021-10-09	Room 103	08:00	10:00
2021-10-09	Ensemble Room A	13:00	15:00
2021-10-09	Room 101	13:00	15:00
2021-10-09	Ensemble Room A	15:00	17:00
2021-10-09	Ensemble Room B	15:00	17:00
2021-10-10	Room 101	08:00	10:00
2021-10-10	Room 101	10:00	12:00
2021-10-10	Room 102	10:00	12:00
2021-10-10	Ensemble Room A	10:00	12:00
2021-10-10	Room 101	13:00	15:00
2021-10-10	Room 102	13:00	15:00
2021-10-10	Ensemble Room A	15:00	17:00
2021-10-11	Ensemble Room A	08:00	10:00
2021-10-11	Ensemble Room B	08:00	10:00
2021-10-11	Ensemble Room A	10:00	12:00
2021-10-11	Ensemble Room A	13:00	15:00
2021-10-11	Ensemble Room B	13:00	15:00
2021-10-12	Ensemble Room A	08:00	10:00
2021-10-13	Room 101	08:00	10:00
2021-10-13	Ensemble Room A	10:00	12:00
2021-10-13	Room 101	10:00	12:00
2021-10-13	Ensemble Room A	15:00	17:00
2021-10-13	Ensemble Room B	15:00	17:00
2021-10-14	Room 101	10:00	12:00
2021-10-14	Room 101	13:00	15:00
2021-10-14	Room 101	15:00	17:00
2021-10-14	Ensemble Room A	15:00	17:00
2021-10-15	Ensemble Room A	08:00	10:00
2021-10-15	Room 101	10:00	12:00
2021-10-15	Ensemble Room A	10:00	12:00
2021-10-15	Room 101	13:00	15:00
2021-10-15	Ensemble Room A	15:00	17:00
2021-10-16	Room 101	08:00	10:00
2021-10-16	Room 102	08:00	10:00
2021-10-16	Ensemble Room A	10:00	12:00
2021-10-16	Ensemble Room B	10:00	12:00
2021-10-16	Ensemble Room A	13:00	15:00
2021-10-16	Ensemble Room A	15:00	17:00
2021-10-17	Ensemble Room A	08:00	10:00
2021-10-17	Room 101	10:00	12:00
2021-10-17	Room 102	10:00	12:00
2021-10-17	Room 101	13:00	15:00
2021-10-17	Room 101	15:00	17:00
2021-10-17	Room 102	15:00	17:00
2021-10-18	Room 101	08:00	10:00
2021-10-18	Room 101	10:00	12:00
2021-10-18	Ensemble Room A	10:00	12:00
2021-10-18	Ensemble Room A	15:00	17:00
2021-10-19	Room 101	08:00	10:00
2021-10-19	Ensemble Room A	08:00	10:00
2021-10-19	Room 101	10:00	12:00
2021-10-19	Room 102	10:00	12:00
2021-10-19	Room 101	13:00	15:00
2021-10-19	Ensemble Room A	15:00	17:00
2021-10-19	Room 101	15:00	17:00
2021-10-20	Ensemble Room A	10:00	12:00
2021-10-20	Ensemble Room B	10:00	12:00
2021-10-21	Room 101	08:00	10:00
2021-10-21	Room 102	08:00	10:00
2021-10-21	Ensemble Room A	10:00	12:00
2021-10-21	Room 101	10:00	12:00
2021-10-21	Ensemble Room A	13:00	15:00
2021-10-21	Ensemble Room B	13:00	15:00
2021-10-21	Ensemble Room A	15:00	17:00
2021-10-21	Ensemble Room B	15:00	17:00
2021-10-21	Ensemble Room C	15:00	17:00
2021-10-22	Room 101	08:00	10:00
2021-10-22	Ensemble Room A	08:00	10:00
2021-10-22	Room 101	10:00	12:00
2021-10-22	Room 102	10:00	12:00
2021-10-22	Room 101	15:00	17:00
2021-10-22	Room 102	15:00	17:00
2021-10-23	Room 101	08:00	10:00
2021-10-23	Ensemble Room A	13:00	15:00
2021-10-23	Ensemble Room B	13:00	15:00
2021-10-23	Ensemble Room A	15:00	17:00
2021-10-24	Room 101	08:00	10:00
2021-10-24	Room 101	10:00	12:00
2021-10-24	Room 102	10:00	12:00
2021-10-24	Room 101	13:00	15:00
2021-10-24	Room 101	15:00	17:00
2021-10-24	Room 102	15:00	17:00
2021-10-25	Room 101	13:00	15:00
2021-10-25	Room 101	15:00	17:00
2021-10-26	Room 101	08:00	10:00
2021-10-26	Room 101	10:00	12:00
2021-10-26	Ensemble Room A	13:00	15:00
2021-10-26	Room 101	13:00	15:00
2021-10-26	Room 102	13:00	15:00
2021-10-26	Room 101	15:00	17:00
2021-10-26	Room 102	15:00	17:00
2021-10-26	Ensemble Room A	15:00	17:00
2021-10-27	Ensemble Room A	10:00	12:00
2021-10-27	Room 101	10:00	12:00
2021-10-27	Ensemble Room A	13:00	15:00
2021-10-27	Room 101	15:00	17:00
2021-10-27	Ensemble Room A	15:00	17:00
2021-10-28	Ensemble Room A	08:00	10:00
2021-10-28	Room 101	08:00	10:00
2021-10-28	Room 101	10:00	12:00
2021-10-28	Room 102	10:00	12:00
2021-10-28	Ensemble Room A	15:00	17:00
2021-10-29	Room 101	08:00	10:00
2021-10-29	Ensemble Room A	08:00	10:00
2021-10-29	Room 101	10:00	12:00
2021-10-29	Room 101	13:00	15:00
2021-10-29	Room 102	13:00	15:00
2021-10-29	Ensemble Room A	15:00	17:00
2021-10-29	Room 101	15:00	17:00
2021-10-29	Ensemble Room B	15:00	17:00
2021-10-30	Room 101	08:00	10:00
2021-10-30	Room 102	08:00	10:00
2021-10-30	Ensemble Room A	10:00	12:00
2021-10-30	Ensemble Room A	13:00	15:00
2021-10-30	Room 101	13:00	15:00
2021-10-30	Room 101	15:00	17:00
2021-10-31	Room 101	08:00	10:00
2021-10-31	Ensemble Room A	08:00	10:00
2021-10-31	Ensemble Room A	10:00	12:00
2021-10-31	Room 101	10:00	12:00
2021-10-31	Ensemble Room B	10:00	12:00
2021-11-01	Ensemble Room A	08:00	10:00
2021-11-01	Ensemble Room B	08:00	10:00
2021-11-01	Ensemble Room C	08:00	10:00
2021-11-01	Room 101	10:00	12:00
2021-11-01	Ensemble Room A	10:00	12:00
2021-11-01	Ensemble Room A	13:00	15:00
2021-11-01	Room 101	15:00	17:00
2021-11-01	Room 102	15:00	17:00
2021-11-02	Ensemble Room A	08:00	10:00
2021-11-02	Room 101	13:00	15:00
2021-11-02	Room 102	13:00	15:00
2021-11-02	Room 101	15:00	17:00
2021-11-02	Ensemble Room A	15:00	17:00
2021-11-03	Room 101	08:00	10:00
2021-11-03	Ensemble Room A	08:00	10:00
2021-11-03	Ensemble Room A	10:00	12:00
2021-11-03	Ensemble Room B	10:00	12:00
2021-11-03	Room 101	15:00	17:00
2021-11-03	Ensemble Room A	15:00	17:00
2021-11-04	Room 101	08:00	10:00
2021-11-04	Room 102	08:00	10:00
2021-11-04	Room 101	13:00	15:00
2021-11-04	Room 102	13:00	15:00
2021-11-04	Room 101	15:00	17:00
2021-11-04	Room 102	15:00	17:00
2021-11-05	Room 101	15:00	17:00
2021-11-06	Ensemble Room A	08:00	10:00
2021-11-06	Room 101	08:00	10:00
2021-11-06	Room 101	10:00	12:00
2021-11-06	Room 101	13:00	15:00
2021-11-06	Ensemble Room A	15:00	17:00
2021-11-06	Ensemble Room B	15:00	17:00
2021-11-07	Room 101	08:00	10:00
2021-11-07	Ensemble Room A	08:00	10:00
2021-11-07	Ensemble Room A	13:00	15:00
2021-11-07	Ensemble Room A	15:00	17:00
2021-11-07	Room 101	15:00	17:00
2021-11-08	Room 101	08:00	10:00
2021-11-08	Room 101	10:00	12:00
2021-11-08	Room 102	10:00	12:00
2021-11-08	Ensemble Room A	15:00	17:00
2021-11-09	Ensemble Room A	08:00	10:00
2021-11-09	Ensemble Room B	08:00	10:00
2021-11-09	Room 101	08:00	10:00
2021-11-09	Ensemble Room A	10:00	12:00
2021-11-09	Room 101	13:00	15:00
2021-11-09	Room 101	15:00	17:00
2021-11-10	Room 101	08:00	10:00
2021-11-10	Ensemble Room A	08:00	10:00
2021-11-10	Ensemble Room A	10:00	12:00
2021-11-10	Ensemble Room A	13:00	15:00
2021-11-11	Room 101	08:00	10:00
2021-11-11	Room 102	08:00	10:00
2021-11-11	Ensemble Room A	13:00	15:00
2021-11-11	Room 101	13:00	15:00
2021-11-12	Ensemble Room A	08:00	10:00
2021-11-12	Ensemble Room B	08:00	10:00
2021-11-12	Room 101	13:00	15:00
2021-11-12	Ensemble Room A	13:00	15:00
2021-11-12	Ensemble Room A	15:00	17:00
2021-11-12	Room 101	15:00	17:00
2021-11-13	Room 101	08:00	10:00
2021-11-13	Room 102	08:00	10:00
2021-11-13	Room 101	10:00	12:00
2021-11-14	Room 101	08:00	10:00
2021-11-14	Room 101	13:00	15:00
2021-11-14	Room 102	13:00	15:00
2021-11-14	Ensemble Room A	15:00	17:00
2021-11-15	Room 101	08:00	10:00
2021-11-15	Ensemble Room A	10:00	12:00
2021-11-15	Room 101	15:00	17:00
2021-11-16	Room 101	08:00	10:00
2021-11-16	Room 101	10:00	12:00
2021-11-16	Room 102	10:00	12:00
2021-11-16	Room 103	10:00	12:00
2021-11-16	Room 101	13:00	15:00
2021-11-16	Ensemble Room A	13:00	15:00
2021-11-16	Ensemble Room A	15:00	17:00
2021-11-17	Ensemble Room A	08:00	10:00
2021-11-17	Ensemble Room B	08:00	10:00
2021-11-17	Ensemble Room C	08:00	10:00
2021-11-17	Room 101	13:00	15:00
2021-11-17	Ensemble Room A	13:00	15:00
2021-11-17	Room 101	15:00	17:00
2021-11-18	Ensemble Room A	08:00	10:00
2021-11-18	Ensemble Room A	10:00	12:00
2021-11-18	Room 101	13:00	15:00
2021-11-18	Room 102	13:00	15:00
2021-11-19	Room 101	08:00	10:00
2021-11-19	Room 102	08:00	10:00
2021-11-19	Ensemble Room A	08:00	10:00
2021-11-19	Room 101	10:00	12:00
2021-11-19	Room 102	10:00	12:00
2021-11-19	Room 101	13:00	15:00
2021-11-19	Ensemble Room A	13:00	15:00
2021-11-19	Ensemble Room B	13:00	15:00
2021-11-19	Room 101	15:00	17:00
2021-11-20	Ensemble Room A	08:00	10:00
2021-11-20	Room 101	08:00	10:00
2021-11-20	Room 101	13:00	15:00
2021-11-20	Ensemble Room A	13:00	15:00
2021-11-20	Room 102	13:00	15:00
2021-11-20	Room 101	15:00	17:00
2021-11-21	Room 101	08:00	10:00
2021-11-21	Ensemble Room A	10:00	12:00
2021-11-21	Room 101	13:00	15:00
2021-11-21	Room 102	13:00	15:00
2021-11-21	Room 101	15:00	17:00
2021-11-22	Room 101	10:00	12:00
2021-11-22	Ensemble Room A	10:00	12:00
2021-11-22	Room 101	13:00	15:00
2021-11-22	Room 102	13:00	15:00
2021-11-23	Room 101	08:00	10:00
2021-11-23	Ensemble Room A	13:00	15:00
2021-11-24	Room 101	08:00	10:00
2021-11-24	Room 102	08:00	10:00
2021-11-24	Ensemble Room A	10:00	12:00
2021-11-24	Ensemble Room B	10:00	12:00
2021-11-24	Room 101	13:00	15:00
2021-11-24	Ensemble Room A	13:00	15:00
2021-11-24	Room 101	15:00	17:00
2021-11-24	Ensemble Room A	15:00	17:00
2021-11-25	Ensemble Room A	10:00	12:00
2021-11-25	Ensemble Room A	15:00	17:00
2021-11-25	Ensemble Room B	15:00	17:00
2021-11-25	Ensemble Room C	15:00	17:00
2021-11-26	Room 101	10:00	12:00
2021-11-26	Room 102	10:00	12:00
2021-11-26	Room 101	13:00	15:00
2021-11-27	Room 101	10:00	12:00
2021-11-27	Ensemble Room A	15:00	17:00
2021-11-28	Room 101	08:00	10:00
2021-11-28	Ensemble Room A	13:00	15:00
2021-11-28	Ensemble Room B	13:00	15:00
2021-11-28	Ensemble Room C	13:00	15:00
2021-11-29	Ensemble Room A	08:00	10:00
2021-11-29	Room 101	08:00	10:00
2021-11-29	Ensemble Room A	13:00	15:00
2021-11-29	Ensemble Room B	13:00	15:00
2021-11-29	Ensemble Room A	15:00	17:00
2021-11-29	Room 101	15:00	17:00
2021-11-30	Room 101	10:00	12:00
2021-11-30	Room 101	15:00	17:00
2021-12-01	Ensemble Room A	10:00	12:00
2021-12-01	Ensemble Room B	10:00	12:00
2021-12-01	Ensemble Room A	13:00	15:00
2021-12-01	Ensemble Room A	15:00	17:00
2021-12-02	Ensemble Room A	13:00	15:00
2021-12-02	Room 101	13:00	15:00
2021-12-02	Room 101	15:00	17:00
2021-12-02	Room 102	15:00	17:00
2021-12-03	Room 101	08:00	10:00
2021-12-03	Ensemble Room A	10:00	12:00
2021-12-03	Ensemble Room A	13:00	15:00
2021-12-03	Ensemble Room B	13:00	15:00
2021-12-04	Room 101	08:00	10:00
2021-12-04	Ensemble Room A	13:00	15:00
2021-12-04	Room 101	15:00	17:00
2021-12-05	Ensemble Room A	08:00	10:00
2021-12-05	Room 101	10:00	12:00
2021-12-05	Ensemble Room A	10:00	12:00
2021-12-05	Room 101	15:00	17:00
2021-12-05	Ensemble Room A	15:00	17:00
2021-12-05	Room 102	15:00	17:00
2021-12-06	Ensemble Room A	10:00	12:00
2021-12-06	Ensemble Room B	10:00	12:00
2021-12-06	Room 101	10:00	12:00
2021-12-06	Room 101	15:00	17:00
2021-12-06	Ensemble Room A	15:00	17:00
2021-12-07	Ensemble Room A	08:00	10:00
2021-12-07	Room 101	10:00	12:00
2021-12-08	Ensemble Room A	08:00	10:00
2021-12-08	Room 101	10:00	12:00
2021-12-08	Ensemble Room A	10:00	12:00
2021-12-08	Room 101	13:00	15:00
2021-12-08	Room 102	13:00	15:00
2021-12-08	Ensemble Room A	15:00	17:00
2021-12-09	Ensemble Room A	08:00	10:00
2021-12-09	Room 101	10:00	12:00
2021-12-09	Ensemble Room A	10:00	12:00
2021-12-09	Room 101	13:00	15:00
2021-12-09	Ensemble Room A	15:00	17:00
2021-12-10	Room 101	10:00	12:00
2021-12-10	Ensemble Room A	15:00	17:00
2021-12-11	Ensemble Room A	08:00	10:00
2021-12-11	Room 101	08:00	10:00
2021-12-11	Room 101	10:00	12:00
2021-12-11	Ensemble Room A	13:00	15:00
2021-12-11	Room 101	13:00	15:00
2021-12-11	Ensemble Room A	15:00	17:00
2021-12-11	Room 101	15:00	17:00
2021-12-12	Ensemble Room A	08:00	10:00
2021-12-12	Room 101	08:00	10:00
2021-12-12	Room 102	08:00	10:00
2021-12-12	Room 101	10:00	12:00
2021-12-12	Ensemble Room A	10:00	12:00
2021-12-12	Room 101	13:00	15:00
2021-12-12	Ensemble Room A	13:00	15:00
2021-12-12	Ensemble Room A	15:00	17:00
2021-12-12	Room 101	15:00	17:00
2021-12-13	Room 101	10:00	12:00
2021-12-13	Room 101	13:00	15:00
2021-12-13	Room 102	13:00	15:00
2021-12-13	Ensemble Room A	15:00	17:00
2021-12-13	Room 101	15:00	17:00
2021-12-14	Ensemble Room A	08:00	10:00
2021-12-14	Ensemble Room A	10:00	12:00
2021-12-14	Ensemble Room A	15:00	17:00
2021-12-15	Room 101	08:00	10:00
2021-12-15	Ensemble Room A	08:00	10:00
2021-12-15	Ensemble Room A	15:00	17:00
2021-12-15	Room 101	15:00	17:00
2021-12-16	Ensemble Room A	08:00	10:00
2021-12-16	Ensemble Room A	10:00	12:00
2021-12-16	Ensemble Room B	10:00	12:00
2021-12-16	Room 101	13:00	15:00
2021-12-16	Room 102	13:00	15:00
2021-12-17	Room 101	13:00	15:00
2021-12-17	Ensemble Room A	13:00	15:00
2021-12-17	Ensemble Room A	15:00	17:00
2021-12-17	Ensemble Room B	15:00	17:00
2021-12-18	Room 101	08:00	10:00
2021-12-18	Ensemble Room A	08:00	10:00
2021-12-18	Room 102	08:00	10:00
2021-12-18	Room 101	10:00	12:00
2021-12-19	Room 101	08:00	10:00
2021-12-19	Room 102	08:00	10:00
2021-12-19	Ensemble Room A	13:00	15:00
2021-12-19	Ensemble Room A	15:00	17:00
2021-12-20	Room 101	10:00	12:00
2021-12-20	Room 102	10:00	12:00
2021-12-20	Room 101	13:00	15:00
2021-12-20	Room 101	15:00	17:00
2021-12-21	Room 101	10:00	12:00
2021-12-21	Ensemble Room A	10:00	12:00
2021-12-21	Room 101	13:00	15:00
2021-12-22	Ensemble Room A	08:00	10:00
2021-12-22	Room 101	13:00	15:00
2021-12-23	Room 101	08:00	10:00
2021-12-23	Room 102	08:00	10:00
2021-12-23	Ensemble Room A	10:00	12:00
2021-12-23	Room 101	13:00	15:00
2021-12-23	Room 102	13:00	15:00
2021-12-23	Room 101	15:00	17:00
2021-12-23	Ensemble Room A	15:00	17:00
2021-12-23	Ensemble Room B	15:00	17:00
2021-12-24	Ensemble Room A	08:00	10:00
2021-12-24	Ensemble Room B	08:00	10:00
2021-12-24	Room 101	10:00	12:00
2021-12-24	Room 102	10:00	12:00
2021-12-24	Ensemble Room A	13:00	15:00
2021-12-24	Room 101	15:00	17:00
2021-12-25	Room 101	08:00	10:00
2021-12-25	Room 101	10:00	12:00
2021-12-25	Room 102	10:00	12:00
2021-12-25	Room 101	13:00	15:00
2021-12-25	Room 101	15:00	17:00
2021-12-26	Ensemble Room A	08:00	10:00
2021-12-26	Ensemble Room A	10:00	12:00
2021-12-26	Ensemble Room B	10:00	12:00
2021-12-26	Room 101	13:00	15:00
2021-12-26	Room 102	13:00	15:00
2021-12-26	Room 103	13:00	15:00
2021-12-27	Ensemble Room A	08:00	10:00
2021-12-27	Room 101	08:00	10:00
2021-12-27	Room 101	10:00	12:00
2021-12-27	Room 102	10:00	12:00
2021-12-27	Room 101	13:00	15:00
2021-12-27	Ensemble Room A	15:00	17:00
2021-12-28	Ensemble Room A	08:00	10:00
2021-12-28	Ensemble Room B	08:00	10:00
2021-12-28	Room 101	10:00	12:00
2021-12-28	Ensemble Room A	10:00	12:00
2021-12-28	Room 102	10:00	12:00
2021-12-28	Room 101	15:00	17:00
2021-12-29	Ensemble Room A	08:00	10:00
2021-12-29	Room 101	08:00	10:00
2021-12-29	Room 102	08:00	10:00
2021-12-29	Room 101	10:00	12:00
2021-12-29	Room 101	13:00	15:00
2021-12-29	Room 101	15:00	17:00
2021-12-30	Room 101	08:00	10:00
2021-12-30	Room 101	13:00	15:00
2021-12-30	Room 102	13:00	15:00
2021-12-30	Ensemble Room A	15:00	17:00
2021-12-31	Ensemble Room A	08:00	10:00
2021-12-31	Ensemble Room B	08:00	10:00
2021-12-31	Ensemble Room A	10:00	12:00
2021-12-31	Room 101	13:00	15:00
2021-12-31	Ensemble Room A	15:00	17:00
\.

-- scheduled_lesson
\! echo 'Insert into Scheduled Lesson..';
COPY scheduled_lesson (group_lesson_slot_id, available_places, min_enrolled_students, instructor_person_id) FROM stdin;
1	9	2	6
2	7	4	17
3	7	3	41
4	8	2	29
5	6	4	30
6	8	3	7
7	10	2	20
8	8	3	3
9	6	2	44
10	10	2	10
11	7	3	37
12	8	3	30
13	7	2	35
14	7	4	18
15	8	3	19
16	10	2	7
17	7	2	13
18	9	2	35
19	8	4	24
20	7	2	43
21	8	3	10
22	8	2	1
23	9	4	5
24	8	3	41
25	9	2	38
26	9	4	18
27	9	2	39
28	8	3	39
29	9	4	15
30	6	3	23
31	8	2	42
32	7	2	24
33	6	3	42
34	6	3	8
35	6	4	32
36	9	4	19
37	9	3	9
38	7	2	2
39	6	4	28
40	7	2	33
41	8	2	34
42	8	2	31
43	9	3	45
44	6	2	28
45	6	4	37
46	7	4	39
47	6	3	27
48	6	2	7
49	10	2	46
50	9	4	43
51	6	3	41
52	8	3	37
53	9	4	20
54	8	3	35
55	10	4	19
56	10	2	40
57	7	3	17
58	7	4	10
59	7	2	42
60	10	2	35
61	6	4	31
62	10	4	44
63	7	2	35
64	10	2	30
65	7	4	3
66	10	3	28
67	6	3	9
68	7	4	15
69	6	3	15
70	7	4	7
71	6	4	7
72	10	2	39
73	6	3	34
74	8	4	44
75	10	4	39
76	10	2	28
77	6	3	37
78	9	4	34
79	10	2	46
80	7	2	24
81	6	3	50
82	10	2	12
83	7	2	6
84	10	2	5
85	9	4	41
86	8	4	16
87	8	4	7
88	7	2	44
89	6	4	21
90	9	3	36
91	6	2	14
92	10	4	29
93	10	2	23
94	10	3	33
95	6	2	35
96	6	2	27
97	8	2	49
98	8	3	23
99	6	2	32
100	7	4	24
101	10	2	2
102	8	4	20
103	6	3	41
104	10	3	38
105	9	2	11
106	9	3	21
107	10	3	15
108	8	2	1
109	7	4	43
110	9	3	1
111	6	3	32
112	10	2	34
113	9	4	5
114	9	2	49
115	7	3	7
116	10	4	28
117	7	2	50
118	6	3	34
119	9	3	7
120	10	3	42
121	6	2	44
122	10	4	45
123	7	2	34
124	6	3	34
125	9	2	40
126	7	4	36
127	10	3	30
128	8	3	42
129	6	2	35
130	6	4	21
131	10	2	49
132	7	2	21
133	8	3	2
134	6	4	31
135	8	4	28
136	7	2	17
137	8	2	24
138	7	2	17
139	9	4	31
140	8	3	42
141	9	2	10
142	6	3	6
143	8	2	6
144	9	3	3
145	10	3	7
146	10	2	22
147	10	2	34
148	10	4	20
149	9	3	30
150	9	4	49
151	9	3	37
152	7	3	40
153	6	4	21
154	8	4	3
155	10	2	2
156	6	4	35
157	6	3	43
158	10	3	29
159	6	3	36
160	8	3	44
161	10	3	37
162	9	4	16
163	10	3	25
164	8	2	42
165	10	2	6
166	7	4	44
167	6	2	5
168	10	4	17
169	7	2	20
170	10	4	15
171	8	3	26
172	7	2	46
173	9	2	7
174	8	4	1
175	6	3	34
176	8	3	12
177	8	4	46
178	7	4	44
179	10	3	21
180	10	4	12
181	7	4	28
182	8	2	2
183	9	2	28
184	9	4	48
185	7	4	21
186	6	2	34
187	7	2	8
188	9	2	47
189	10	3	44
190	8	3	47
191	9	2	9
192	10	2	37
193	8	2	20
194	8	3	28
195	8	3	39
196	8	2	5
197	8	2	8
198	9	4	24
199	6	2	34
200	8	2	7
201	10	2	20
202	6	3	19
203	7	3	47
204	6	4	34
205	6	4	20
206	9	2	6
207	10	4	42
208	10	2	12
209	7	3	36
210	6	3	22
211	8	2	12
212	9	2	49
213	8	3	28
214	6	2	35
215	7	2	24
216	8	3	7
217	7	4	7
218	8	4	21
219	6	4	32
220	7	2	2
221	9	2	42
222	10	3	31
223	6	4	35
224	8	4	48
225	8	2	39
226	8	3	6
227	7	3	49
228	6	2	42
229	7	2	43
230	7	4	23
231	10	3	3
232	9	4	30
233	10	3	28
234	9	3	30
235	7	3	16
236	10	2	40
237	8	3	19
238	6	2	44
239	6	2	37
240	10	4	12
241	9	2	38
242	10	4	10
243	7	2	23
244	6	3	31
245	7	3	35
246	9	3	48
247	7	4	38
248	10	2	30
249	7	2	36
250	10	4	5
251	8	4	36
252	8	4	7
253	10	2	1
254	7	3	36
255	6	3	43
256	6	4	10
257	9	4	10
258	9	3	40
259	9	4	7
260	9	2	47
261	8	4	30
262	7	4	39
263	10	3	16
264	9	2	16
265	7	4	31
266	7	2	13
267	7	4	17
268	8	2	49
269	10	4	50
270	9	4	15
271	10	4	37
272	7	3	22
273	8	2	8
274	6	4	48
275	10	3	42
276	8	3	34
277	6	4	44
278	10	2	2
279	6	3	10
280	10	3	10
281	8	3	45
282	10	3	40
283	6	3	17
284	7	3	36
285	6	2	38
286	8	2	1
287	7	4	6
288	10	2	35
289	10	3	34
290	8	4	2
291	10	4	44
292	7	4	44
293	8	2	10
294	9	4	17
295	10	4	15
296	9	3	43
297	6	2	15
298	8	4	34
299	6	4	15
300	6	3	39
301	6	3	7
302	8	4	5
303	9	2	17
304	9	3	42
305	8	2	44
306	8	4	42
307	7	2	29
308	10	3	44
309	6	4	46
310	9	4	41
311	7	2	21
312	9	2	46
313	9	2	15
314	7	4	8
315	6	4	47
316	9	2	24
317	6	3	39
318	8	2	38
319	10	4	10
320	8	3	3
321	10	4	32
322	10	3	34
323	10	2	43
324	10	3	44
325	10	3	26
326	10	4	36
327	8	2	28
328	6	2	6
329	8	3	17
330	9	4	29
331	6	4	36
332	6	2	6
333	9	3	38
334	6	3	5
335	8	2	45
336	8	3	47
337	8	4	49
338	9	3	33
339	9	4	50
340	9	2	10
341	6	3	33
342	10	3	37
343	6	2	31
344	10	2	45
345	9	2	10
346	10	3	47
347	7	4	28
348	9	3	35
349	7	2	2
350	8	4	39
351	8	2	5
352	9	2	49
353	7	3	28
354	9	3	4
355	9	2	48
356	9	3	24
357	6	3	1
358	6	4	19
359	6	3	7
360	9	4	37
361	7	2	48
362	6	3	40
363	9	3	21
364	7	2	6
365	10	2	50
366	7	2	1
367	10	2	39
368	10	4	29
369	6	2	37
370	9	3	6
371	6	4	35
372	7	4	5
373	7	4	48
374	9	4	6
375	8	3	44
376	10	3	15
377	8	4	32
378	10	3	2
379	9	2	25
380	8	4	28
381	7	3	45
382	6	4	36
383	10	3	46
384	9	3	38
385	6	3	2
386	6	4	13
387	7	4	5
388	8	3	32
389	9	4	30
390	9	2	1
391	9	2	37
392	8	2	43
393	9	3	8
394	8	2	13
395	8	2	29
396	10	2	15
397	6	2	45
398	9	4	31
399	7	2	44
400	10	4	12
401	6	4	36
402	7	2	38
403	9	2	9
404	8	2	26
405	9	4	50
406	10	2	34
407	7	2	34
408	8	3	9
409	6	2	49
410	7	4	7
411	7	4	20
412	7	4	19
413	6	2	40
414	7	3	9
415	7	4	48
416	9	4	42
417	9	4	36
418	6	2	20
419	8	3	7
420	10	4	16
421	7	2	23
422	7	3	30
423	6	4	23
424	6	4	22
425	10	4	44
426	7	2	14
427	10	3	43
428	8	3	39
429	9	4	35
430	7	4	26
431	9	2	49
432	6	2	20
433	9	2	31
434	8	4	46
435	8	3	47
436	6	2	7
437	6	3	38
438	6	2	7
439	9	4	43
440	8	3	40
441	8	2	49
442	6	4	8
443	6	2	7
444	9	4	19
445	10	2	28
446	7	3	49
447	7	3	21
448	7	2	32
449	7	4	41
450	10	3	41
451	6	3	32
452	7	2	36
453	8	4	5
454	9	2	40
455	8	4	50
456	6	3	49
457	9	3	7
458	7	3	49
459	6	3	34
460	8	3	5
461	9	4	32
462	9	3	25
463	10	2	32
464	7	4	42
465	7	3	50
466	10	3	21
467	8	2	15
468	10	2	42
469	6	2	42
470	10	2	35
471	6	3	10
472	8	4	5
473	10	3	10
474	8	3	31
475	8	4	3
476	9	3	2
477	10	2	2
478	8	2	35
479	9	4	16
480	8	2	32
481	10	4	10
482	9	4	24
483	8	3	36
484	7	2	46
485	8	4	27
486	9	4	38
487	7	3	24
488	9	2	2
489	9	2	1
490	9	4	40
491	7	3	40
492	6	4	10
493	7	4	41
494	9	4	1
495	6	2	2
496	9	4	35
497	6	2	34
498	9	4	28
499	10	4	14
500	8	4	38
501	7	3	15
502	7	4	37
503	6	3	32
504	8	4	37
505	10	2	5
506	9	3	19
507	8	4	33
508	6	4	45
509	9	3	21
510	10	4	46
511	10	3	39
512	6	4	35
513	8	3	20
514	8	3	49
515	6	2	36
516	9	4	28
517	10	4	38
518	6	2	24
519	8	2	7
520	8	3	40
521	9	2	36
522	9	4	37
523	6	2	39
524	6	4	46
525	8	3	49
526	9	4	12
527	9	3	1
528	8	2	36
529	10	3	46
530	10	4	32
531	7	3	31
532	7	2	15
533	9	2	34
534	9	4	21
535	10	4	36
536	10	3	6
537	7	2	4
538	6	4	23
539	9	2	7
540	8	2	2
541	8	3	14
542	7	4	39
543	7	4	46
544	7	2	13
545	8	3	48
546	7	2	2
547	10	2	44
548	10	4	49
549	9	2	10
550	6	4	30
551	9	3	27
552	10	2	34
553	8	3	4
554	7	2	15
555	9	4	32
556	9	3	15
557	7	3	29
558	10	4	12
559	6	3	31
560	9	4	30
561	8	4	24
562	8	3	46
563	7	4	35
564	6	3	32
565	6	2	36
566	10	3	15
567	10	4	5
568	8	2	39
569	8	3	14
570	8	4	7
571	9	3	7
572	9	4	29
573	8	3	43
574	7	3	49
575	9	2	16
576	8	3	34
577	9	3	42
578	6	3	43
579	10	4	19
580	7	2	31
581	9	2	41
582	8	3	31
583	8	2	30
584	6	4	32
585	8	3	39
586	10	2	28
587	8	2	44
588	8	2	26
589	6	2	8
590	10	4	31
591	7	4	31
592	9	2	28
593	8	3	36
594	10	4	38
595	9	3	46
596	7	4	30
597	10	2	48
598	9	2	27
599	7	2	6
600	7	4	12
601	6	2	49
602	8	3	46
603	7	2	2
604	8	3	46
605	8	2	18
606	6	4	42
607	7	3	41
608	9	2	31
609	10	4	41
610	9	2	40
611	6	2	32
612	8	3	30
613	10	3	34
614	10	2	48
615	6	3	34
616	7	2	26
617	9	3	27
618	8	3	46
619	6	4	2
620	7	3	39
621	6	2	21
622	7	2	16
623	7	2	24
624	7	4	5
625	10	4	28
626	9	3	41
627	6	4	38
628	10	2	35
629	9	2	41
630	6	2	28
631	9	4	42
632	6	4	42
633	10	2	37
634	9	2	34
635	9	4	18
636	9	3	2
637	7	2	13
638	9	4	21
639	9	3	24
640	7	3	35
641	6	4	38
642	9	3	28
643	9	3	34
644	8	2	14
645	8	3	30
646	6	2	17
647	9	2	39
648	7	3	44
649	10	3	43
650	9	2	43
651	6	4	29
652	7	4	36
653	8	3	39
654	10	3	2
655	7	3	39
656	6	4	41
657	8	3	22
658	8	2	49
659	6	3	8
660	8	4	42
661	8	2	3
662	9	2	46
663	8	3	50
664	8	2	24
665	6	2	31
666	6	3	44
667	7	3	15
668	7	4	7
669	8	3	22
670	10	4	22
671	6	3	15
672	7	4	15
673	9	2	36
674	7	3	10
675	10	2	45
676	8	2	20
677	9	2	38
678	9	4	34
679	10	3	38
680	9	2	37
681	10	2	29
682	6	4	13
683	7	3	31
684	8	2	17
685	8	4	49
686	10	2	12
687	10	3	30
688	9	3	44
689	10	3	47
690	7	3	1
691	9	2	1
692	6	4	49
693	7	2	35
694	7	2	42
695	9	3	6
696	8	2	10
697	7	2	39
698	6	4	19
699	7	4	28
700	9	3	28
701	8	2	30
702	9	2	4
703	9	4	10
704	7	2	26
705	10	3	5
706	6	4	42
707	8	3	23
708	6	2	44
709	7	4	29
710	10	3	45
711	7	3	1
712	10	3	20
713	10	2	29
714	8	4	39
715	8	3	7
716	10	3	49
717	9	2	28
718	8	4	2
719	8	3	34
720	8	3	36
721	10	3	36
722	9	3	21
723	8	4	37
724	6	2	37
725	10	4	35
726	10	4	4
727	6	4	28
728	9	3	43
729	9	3	31
730	6	3	11
731	10	2	37
732	7	2	39
733	6	4	40
734	9	4	16
735	9	3	42
736	6	3	5
737	8	2	37
738	6	2	20
739	7	2	35
740	7	2	39
741	9	2	15
742	6	4	35
743	7	2	1
744	9	2	48
745	6	3	39
746	6	4	46
747	8	4	20
748	10	4	49
749	9	3	38
750	8	3	10
751	8	2	44
752	9	4	2
753	9	3	6
754	8	3	28
755	9	3	30
756	6	2	5
757	6	3	19
758	10	3	33
759	8	2	11
760	7	2	41
761	9	2	30
762	9	2	30
763	10	3	32
764	7	2	20
765	6	2	47
766	8	2	5
767	8	3	9
768	6	2	30
769	9	4	17
770	9	4	36
771	9	2	39
772	10	4	20
773	6	3	46
774	9	4	2
775	7	2	21
776	8	4	7
777	6	4	38
778	7	4	29
779	8	2	34
780	6	4	21
781	10	4	43
782	6	4	41
783	8	4	40
784	8	4	48
785	7	2	14
786	10	2	35
787	6	2	22
788	10	3	46
789	10	3	9
790	6	4	14
791	7	2	7
792	8	2	13
793	7	2	38
794	10	4	8
795	9	3	49
796	9	4	50
797	7	2	48
798	8	4	30
799	8	2	46
800	10	3	10
801	10	2	39
802	9	2	30
803	10	4	10
804	8	4	21
805	6	4	41
806	8	2	5
807	9	4	2
808	6	4	31
809	9	4	20
810	7	4	41
811	6	2	1
812	10	3	34
813	10	4	10
814	10	4	22
815	10	3	6
816	6	3	17
817	10	4	37
818	6	3	37
819	9	3	6
820	8	3	19
821	8	4	5
822	8	3	48
823	8	2	19
824	9	4	6
825	10	3	5
826	6	3	45
827	8	2	42
828	6	2	31
829	9	2	21
830	8	3	20
831	6	2	48
832	7	2	2
833	6	3	38
834	7	2	37
835	10	4	20
836	6	2	24
837	6	4	8
838	10	2	35
839	10	4	47
840	10	3	28
841	10	4	20
842	8	2	43
843	9	3	4
844	10	4	43
845	9	3	1
846	8	3	40
847	10	2	30
848	7	4	10
849	6	3	46
850	7	3	25
851	8	2	36
852	7	4	26
853	10	4	30
854	7	2	46
855	10	4	1
856	7	2	41
857	10	3	2
858	10	4	15
859	8	2	49
860	9	2	6
861	9	3	48
862	8	4	23
863	10	3	15
864	8	4	35
865	10	2	15
866	6	2	40
867	7	3	26
868	8	2	25
869	10	2	35
870	10	2	15
871	7	4	8
872	7	3	7
873	10	3	48
874	9	4	19
875	7	3	31
876	6	3	39
877	6	4	29
878	6	4	41
879	9	4	35
880	7	3	36
881	10	3	7
882	7	3	10
883	10	2	32
884	10	2	29
885	10	4	13
886	10	4	25
887	9	4	26
888	7	4	10
889	7	4	5
890	7	4	44
891	8	3	46
892	9	3	10
893	8	4	39
894	10	2	21
895	8	3	34
896	9	2	32
897	8	2	45
898	9	2	38
899	8	4	40
900	6	4	35
901	6	2	42
902	9	2	15
903	8	3	42
904	6	2	24
905	10	4	37
906	7	3	2
907	6	4	36
908	8	2	5
909	6	2	45
910	6	2	13
911	7	2	32
912	7	3	43
913	6	2	37
914	10	2	41
915	9	3	5
916	7	2	20
917	7	2	49
918	8	4	6
919	6	2	10
920	10	4	7
921	7	3	31
922	8	2	36
923	10	3	32
924	8	4	48
925	9	2	50
926	8	4	43
927	6	2	44
928	8	4	24
929	6	2	41
930	10	3	43
931	10	4	1
932	7	3	42
933	7	3	8
934	6	3	8
935	10	2	17
936	9	2	38
937	8	2	44
938	7	4	35
939	6	2	5
940	8	2	24
941	9	3	31
942	7	4	22
943	8	3	2
944	7	3	45
945	9	2	6
946	9	2	40
947	6	3	2
948	8	2	21
949	6	3	1
950	7	2	46
951	6	4	47
952	10	2	7
953	8	3	1
954	6	2	35
955	9	2	18
956	8	2	44
957	9	2	35
958	10	4	48
959	6	2	38
960	9	2	21
961	6	2	42
962	10	3	6
963	9	3	15
964	6	2	25
965	6	4	49
966	7	4	6
967	8	3	5
968	9	3	48
969	8	2	28
970	7	4	7
971	9	2	6
972	10	4	32
973	7	3	40
974	9	2	28
975	6	3	2
976	9	2	46
977	9	4	28
978	6	3	19
979	10	3	1
980	6	4	28
981	10	3	38
982	6	4	33
983	9	3	6
984	10	3	1
985	6	2	11
986	8	2	4
987	6	3	23
988	8	2	45
989	7	4	36
990	8	4	37
991	10	4	22
992	9	4	36
993	9	4	38
994	10	3	5
995	6	3	35
996	8	4	50
997	7	4	28
998	6	4	28
999	8	2	48
1000	6	4	31
1001	7	2	10
1002	7	3	44
1003	8	2	41
1004	6	2	42
1005	10	2	37
1006	10	2	31
1007	6	4	21
1008	7	4	44
1009	9	4	30
1010	10	4	9
1011	7	3	35
1012	8	3	27
1013	9	3	40
1014	9	4	27
1015	6	3	35
1016	8	3	19
1017	8	2	46
1018	10	2	32
1019	8	3	14
1020	6	4	40
1021	10	4	36
1022	6	4	14
1023	7	4	23
1024	9	3	24
1025	9	3	27
1026	6	2	7
1027	8	4	32
1028	7	3	50
1029	10	4	33
1030	7	3	32
1031	7	2	1
1032	6	3	32
1033	9	2	38
1034	7	3	37
1035	9	3	42
1036	6	2	43
1037	6	2	34
1038	9	3	6
1039	9	2	44
1040	10	4	5
1041	7	4	18
1042	6	2	15
1043	10	4	10
1044	7	4	35
1045	7	2	7
1046	9	4	31
1047	9	4	35
1048	8	2	32
1049	6	2	21
1050	7	3	29
1051	10	2	43
1052	10	2	24
1053	8	4	13
1054	7	4	46
1055	7	4	35
1056	10	4	37
1057	8	3	27
1058	8	3	28
1059	9	3	34
1060	8	3	7
1061	9	2	15
1062	9	4	49
1063	8	3	38
1064	9	3	12
1065	10	3	41
1066	8	3	6
1067	7	3	21
1068	6	3	38
1069	8	4	3
1070	8	2	5
1071	10	4	44
1072	7	4	5
1073	7	4	24
1074	6	3	30
1075	6	4	31
1076	10	2	8
1077	10	4	7
1078	6	4	15
1079	10	2	15
1080	8	4	49
1081	8	3	43
1082	7	2	12
1083	8	4	22
1084	7	4	28
1085	6	3	31
1086	6	4	5
1087	9	3	37
1088	6	3	44
1089	7	4	41
1090	10	4	22
1091	10	2	23
1092	8	3	26
1093	7	2	31
1094	9	4	2
1095	7	2	5
1096	6	4	45
1097	9	2	4
1098	10	2	36
1099	10	3	36
1100	7	2	26
1101	8	4	28
1102	7	4	50
1103	8	4	6
1104	8	3	24
1105	8	4	40
1106	10	3	24
1107	10	4	41
1108	6	3	36
1109	7	4	18
1110	7	4	28
1111	10	4	48
1112	9	2	49
1113	6	4	20
1114	6	2	29
1115	9	3	27
1116	6	3	41
1117	10	4	36
1118	10	2	43
1119	7	2	32
1120	8	2	36
1121	6	3	20
1122	9	4	48
1123	9	2	38
1124	7	4	7
1125	8	4	39
1126	9	3	46
1127	7	4	49
1128	10	2	27
1129	7	4	24
1130	10	4	36
1131	6	2	32
1132	6	2	46
1133	9	3	40
1134	9	4	32
1135	6	4	7
1136	8	3	24
1137	7	4	2
1138	8	4	28
1139	7	3	22
1140	8	2	36
1141	10	2	7
1142	7	2	23
1143	7	4	46
1144	10	3	40
1145	6	4	48
1146	6	2	4
1147	9	4	34
1148	9	3	2
1149	8	3	38
1150	6	4	21
1151	9	3	15
1152	6	3	39
1153	7	4	5
1154	7	2	35
1155	10	2	30
1156	10	4	29
1157	6	2	47
1158	7	4	38
1159	8	4	39
1160	6	3	43
1161	7	4	18
1162	9	3	20
1163	8	4	21
1164	9	3	2
1165	6	4	49
1166	8	3	42
1167	9	3	7
1168	9	4	48
1169	10	3	12
1170	9	3	22
1171	9	2	5
1172	9	4	15
1173	8	2	35
1174	8	4	5
1175	10	3	41
1176	10	3	43
1177	6	2	29
1178	9	4	38
1179	7	2	41
1180	7	2	42
1181	6	2	23
1182	6	4	37
1183	10	4	4
1184	9	4	14
1185	10	3	32
1186	6	2	20
1187	9	2	36
1188	10	2	35
1189	10	3	42
1190	9	3	35
1191	7	2	7
1192	7	4	46
1193	8	2	10
1194	7	2	13
1195	9	2	15
1196	8	3	5
1197	7	4	34
1198	8	4	28
1199	8	3	37
1200	9	4	4
1201	9	2	37
1202	7	3	1
1203	9	4	35
1204	10	3	10
1205	7	4	13
1206	6	3	1
1207	9	3	41
1208	10	3	6
1209	8	4	41
1210	10	3	14
1211	9	2	33
1212	6	4	23
1213	7	2	31
1214	7	2	35
1215	9	3	20
1216	7	2	46
1217	6	4	46
1218	9	2	49
1219	10	2	34
1220	6	4	44
1221	7	4	15
1222	6	2	48
1223	10	4	15
1224	8	2	32
1225	9	2	6
1226	6	3	37
1227	9	3	29
1228	8	4	23
1229	6	2	18
1230	7	2	28
1231	10	4	6
1232	8	3	31
1233	9	2	45
1234	6	2	30
1235	9	3	14
1236	10	3	36
1237	9	3	44
1238	8	4	28
1239	10	2	39
1240	7	4	48
1241	7	3	48
1242	8	3	49
1243	8	3	20
1244	9	4	37
1245	8	3	7
1246	10	4	49
1247	9	3	48
1248	10	3	10
1249	6	3	9
1250	8	4	15
1251	9	2	46
1252	6	3	36
1253	7	3	43
1254	6	3	20
1255	7	2	1
1256	10	3	38
1257	10	4	5
1258	8	3	7
1259	6	4	35
1260	7	3	41
1261	7	3	49
1262	9	2	39
1263	7	2	2
1264	8	3	38
1265	7	4	40
1266	6	3	45
1267	6	3	2
1268	8	3	38
1269	6	3	46
1270	7	3	39
1271	9	2	43
1272	9	2	15
1273	7	3	38
1274	10	4	34
1275	9	2	38
1276	6	2	24
1277	10	2	36
1278	7	4	25
1279	8	4	34
1280	7	3	40
1281	8	4	42
1282	8	3	37
1283	7	2	8
1284	8	2	17
1285	7	2	26
1286	8	4	44
1287	6	4	40
1288	9	2	29
1289	7	2	41
1290	6	4	49
1291	6	2	5
1292	10	4	44
1293	6	3	17
1294	10	3	30
1295	10	3	44
1296	10	2	44
1297	7	2	11
1298	9	2	39
1299	6	3	9
1300	9	3	7
1301	7	3	8
1302	9	4	39
1303	10	4	32
1304	10	4	20
1305	7	4	38
1306	10	2	47
1307	7	4	28
1308	7	2	12
1309	6	4	36
1310	8	4	42
1311	8	3	34
1312	9	2	13
1313	10	4	44
1314	9	4	38
1315	7	2	30
1316	8	2	46
1317	9	2	28
1318	9	2	31
1319	10	3	31
1320	10	3	35
1321	8	3	13
1322	9	2	30
1323	8	2	23
1324	6	2	5
1325	6	4	38
1326	8	4	10
1327	6	2	5
1328	8	4	16
1329	7	3	48
1330	9	4	49
1331	9	3	41
1332	10	4	40
1333	6	2	18
1334	10	4	22
1335	7	4	49
1336	10	3	30
1337	10	4	28
1338	10	4	14
1339	10	2	32
1340	10	2	37
1341	6	4	16
1342	7	2	5
1343	8	3	36
1344	7	3	47
1345	7	2	14
1346	6	4	44
1347	8	4	41
1348	6	2	13
1349	7	4	30
1350	9	4	44
1351	6	2	28
1352	8	4	17
1353	6	2	49
1354	7	2	7
1355	7	4	1
1356	8	3	10
1357	7	4	29
1358	8	3	7
1359	7	3	5
1360	8	4	15
1361	8	3	37
1362	7	2	35
1363	6	2	38
1364	10	2	41
1365	7	4	28
1366	8	3	5
1367	6	4	37
1368	7	2	7
1369	7	2	20
1370	9	3	9
1371	10	2	29
1372	9	4	37
1373	10	2	11
1374	6	2	41
1375	9	3	32
1376	9	4	34
1377	10	4	2
1378	8	3	21
1379	10	2	7
1380	7	4	33
1381	10	2	31
1382	10	3	1
1383	8	2	28
1384	6	4	46
1385	10	3	4
1386	9	4	24
1387	10	3	24
1388	8	4	39
1389	9	3	30
1390	10	4	48
1391	8	3	22
1392	6	2	48
1393	8	3	6
1394	7	4	31
1395	9	3	38
1396	9	4	7
1397	8	2	34
1398	7	2	34
1399	7	2	48
1400	7	2	12
1401	8	3	41
1402	10	2	6
1403	6	3	47
1404	6	3	41
1405	10	3	17
1406	9	3	44
1407	6	4	10
1408	7	3	30
1409	8	2	41
1410	9	3	19
1411	9	2	18
1412	10	2	2
1413	7	4	40
1414	8	4	47
1415	10	4	21
1416	6	4	37
1417	8	3	43
1418	7	3	43
1419	7	4	21
1420	8	4	34
1421	6	2	11
1422	8	2	27
1423	10	2	23
1424	7	2	24
1425	8	3	19
1426	9	4	48
1427	8	4	18
1428	6	4	34
1429	7	2	28
1430	10	4	41
1431	7	2	8
1432	10	4	30
1433	8	3	20
1434	10	3	46
1435	6	3	48
1436	8	2	43
1437	10	3	34
1438	7	4	10
1439	10	4	49
1440	9	3	47
1441	6	2	34
1442	9	2	43
1443	8	2	31
1444	8	3	44
1445	8	2	12
1446	10	3	24
1447	6	3	49
1448	10	2	34
1449	9	4	43
1450	6	2	44
1451	8	4	6
1452	10	3	32
1453	8	2	17
1454	10	2	27
1455	7	4	32
1456	9	3	16
1457	9	3	6
1458	8	2	45
1459	8	2	2
1460	9	3	50
1461	6	4	49
1462	9	3	32
1463	7	3	6
1464	8	2	35
1465	8	2	39
1466	7	2	46
1467	9	4	11
1468	6	3	5
1469	9	2	30
1470	6	4	49
1471	9	2	46
1472	8	3	40
1473	7	3	29
1474	8	3	36
1475	8	4	35
1476	6	2	13
1477	10	4	41
1478	8	2	37
1479	8	2	12
1480	8	3	15
1481	8	4	6
1482	8	2	39
1483	7	4	43
1484	8	4	39
1485	8	2	20
1486	8	2	24
1487	6	2	33
1488	7	3	40
1489	10	3	12
1490	10	3	35
1491	9	2	44
1492	7	4	40
1493	7	3	35
1494	8	2	24
1495	8	4	33
1496	9	3	21
1497	6	3	30
1498	7	3	37
1499	9	2	43
1500	9	2	10
1501	8	3	44
1502	9	3	13
1503	8	4	43
1504	8	2	37
1505	7	4	5
1506	10	3	6
1507	10	2	24
1508	6	3	34
1509	9	3	18
1510	8	2	24
1511	7	3	42
1512	8	3	8
1513	7	2	1
1514	8	3	24
1515	8	2	6
1516	10	3	21
1517	8	4	23
1518	6	4	41
1519	10	4	10
1520	8	4	30
1521	8	2	25
1522	8	4	22
1523	8	2	2
1524	6	3	43
1525	7	4	41
1526	9	3	43
1527	8	3	11
1528	9	3	40
1529	9	4	15
1530	7	4	10
1531	10	3	22
1532	7	2	25
1533	9	2	34
1534	10	4	39
1535	6	2	6
1536	9	3	11
1537	6	3	38
1538	10	3	43
1539	6	4	15
1540	9	4	9
1541	8	2	21
1542	8	3	10
1543	8	4	24
1544	7	4	34
1545	9	4	46
1546	6	2	39
1547	6	2	34
1548	10	2	37
1549	7	3	8
1550	7	2	41
1551	9	2	16
1552	8	2	32
1553	8	2	35
1554	8	2	27
1555	7	4	15
1556	6	2	10
1557	10	3	50
1558	6	2	49
1559	10	2	7
1560	10	3	43
1561	8	4	28
1562	8	2	23
1563	10	2	43
1564	8	2	24
1565	7	4	44
1566	10	3	37
1567	8	3	16
1568	6	2	34
1569	7	3	17
1570	8	3	37
1571	6	2	18
1572	9	3	23
1573	7	2	37
1574	6	4	18
1575	9	4	49
1576	6	4	5
1577	9	4	40
1578	8	3	47
1579	10	2	36
1580	8	2	28
1581	10	2	7
1582	9	2	32
1583	6	3	13
1584	6	4	30
1585	10	4	11
1586	10	4	20
1587	7	3	14
1588	8	2	41
1589	6	3	7
1590	10	4	28
1591	10	3	41
1592	10	4	2
1593	9	3	15
1594	8	4	11
1595	9	3	38
1596	9	4	38
1597	10	3	29
1598	8	4	46
1599	10	4	49
1600	8	3	30
1601	10	4	41
1602	9	4	35
1603	9	4	5
1604	6	4	18
1605	8	2	39
1606	8	2	44
1607	7	3	15
1608	9	2	5
1609	8	4	30
1610	8	4	11
1611	8	4	46
1612	9	4	30
1613	10	4	49
1614	8	3	37
1615	8	2	32
1616	9	3	6
1617	7	2	21
1618	8	3	41
1619	9	4	24
1620	8	4	24
1621	10	4	12
1622	7	4	29
1623	9	2	7
1624	9	3	33
1625	7	2	30
1626	7	4	24
1627	10	4	14
1628	9	4	41
1629	10	3	10
1630	9	4	24
1631	7	3	28
1632	9	2	2
1633	6	3	29
1634	9	2	43
1635	7	4	7
1636	6	4	8
1637	9	3	17
1638	10	3	7
1639	8	3	43
1640	7	4	25
1641	10	3	46
1642	10	4	6
1643	8	4	14
1644	6	4	12
1645	7	2	36
1646	7	4	39
1647	10	3	28
1648	6	2	10
1649	8	3	5
1650	6	4	1
1651	7	2	44
1652	7	2	10
1653	9	2	23
1654	6	3	24
1655	8	4	42
1656	6	3	16
1657	8	4	10
1658	6	4	9
1659	6	4	44
1660	6	3	48
1661	7	4	39
1662	7	2	48
1663	9	3	24
1664	6	2	4
1665	9	3	16
1666	7	4	39
1667	8	4	9
1668	7	4	39
1669	8	2	5
1670	8	4	28
1671	9	4	40
1672	6	3	29
1673	6	3	39
1674	8	2	33
1675	7	3	10
1676	8	4	24
1677	9	3	49
1678	8	2	3
1679	10	3	47
1680	9	4	3
1681	8	3	7
1682	9	4	1
1683	10	4	15
1684	9	3	34
1685	6	2	32
1686	8	4	15
1687	6	3	44
1688	8	3	10
1689	7	3	2
1690	10	2	16
1691	8	4	48
1692	9	3	26
1693	6	2	31
1694	10	2	23
1695	10	4	45
1696	10	3	31
1697	6	2	34
1698	8	4	7
1699	6	4	31
1700	10	4	14
1701	7	2	5
1702	10	3	20
1703	8	4	35
1704	7	3	5
1705	10	3	38
1706	6	4	6
1707	10	3	15
1708	6	2	43
1709	8	4	48
1710	6	2	35
1711	10	3	5
1712	9	4	39
1713	7	2	10
1714	10	3	6
1715	7	2	5
1716	8	2	6
1717	7	2	10
1718	9	4	44
1719	8	4	4
1720	8	4	37
1721	6	4	39
1722	9	3	38
1723	10	2	12
1724	6	3	34
1725	7	3	30
1726	6	3	32
1727	6	4	49
1728	8	4	46
1729	7	2	47
1730	10	3	14
1731	10	2	7
1732	10	4	34
1733	8	3	19
1734	7	4	24
1735	7	2	32
1736	9	2	41
1737	8	4	42
1738	8	3	25
1739	8	2	38
1740	7	4	48
1741	7	4	30
1742	9	3	29
1743	7	3	35
1744	8	2	26
1745	7	3	29
1746	10	2	1
1747	10	4	6
1748	8	4	2
1749	10	2	28
1750	8	4	48
1751	9	3	13
1752	9	2	8
1753	10	4	12
1754	9	3	9
1755	8	3	39
1756	10	3	5
1757	10	2	10
1758	8	4	16
1759	7	3	32
1760	9	3	36
1761	7	4	22
1762	9	4	41
1763	7	4	5
1764	9	4	10
1765	9	2	37
1766	6	2	42
1767	7	2	4
1768	10	4	45
1769	6	2	14
1770	7	4	20
1771	7	2	43
1772	7	4	48
1773	6	4	11
1774	6	4	43
1775	10	4	1
1776	8	2	38
1777	8	3	37
1778	8	3	3
1779	10	4	20
1780	7	3	29
1781	7	3	2
1782	9	2	2
1783	8	3	41
1784	7	3	47
1785	8	3	27
1786	8	2	10
1787	8	4	24
1788	10	2	26
1789	8	3	35
1790	8	4	34
1791	8	2	39
1792	7	2	37
1793	9	2	39
1794	10	4	37
1795	6	4	16
1796	8	2	48
1797	8	3	19
1798	8	3	12
1799	6	3	24
1800	9	2	7
1801	7	4	43
1802	10	2	1
1803	7	2	1
1804	9	3	39
1805	8	4	22
1806	9	2	24
1807	8	2	10
1808	10	2	48
1809	9	3	20
1810	7	2	29
1811	9	2	48
1812	6	3	5
1813	6	3	30
1814	9	3	10
1815	7	3	30
1816	8	2	9
1817	9	4	49
1818	10	4	34
1819	8	3	48
1820	10	3	45
1821	9	4	43
1822	7	3	48
1823	7	2	30
1824	6	3	36
1825	9	2	5
1826	9	2	41
1827	7	2	15
1828	9	4	19
1829	9	3	30
1830	8	3	35
1831	10	2	42
1832	9	3	20
1833	6	4	29
1834	8	3	22
1835	7	2	14
1836	7	4	5
1837	7	2	19
1838	9	4	50
1839	9	3	35
1840	7	3	9
1841	8	2	30
1842	7	4	7
1843	8	2	32
1844	7	2	33
1845	9	3	44
1846	7	2	1
1847	7	4	19
1848	8	3	47
1849	6	3	20
1850	8	2	29
1851	10	4	25
1852	7	3	13
1853	7	3	36
1854	9	4	15
1855	6	2	41
1856	6	3	47
1857	7	2	35
1858	9	2	37
1859	10	4	25
1860	9	4	6
1861	7	2	39
1862	6	4	33
1863	10	3	26
1864	6	2	41
1865	9	3	32
1866	10	2	33
1867	8	3	21
1868	8	2	14
1869	8	3	29
1870	6	4	37
1871	6	3	41
1872	7	3	35
1873	10	4	50
1874	10	3	30
1875	9	2	1
1876	6	4	46
1877	9	4	5
1878	8	3	45
1879	10	4	26
1880	7	4	31
1881	9	4	43
1882	8	2	24
1883	7	2	43
1884	8	2	33
1885	9	3	36
1886	10	4	38
1887	10	2	33
1888	7	4	38
1889	8	3	49
1890	9	4	5
1891	6	4	15
1892	6	2	34
1893	7	3	41
1894	6	3	28
1895	9	2	5
1896	9	4	37
1897	8	3	41
1898	9	2	21
1899	9	4	43
1900	10	2	46
1901	6	3	39
1902	7	2	41
1903	8	4	7
1904	9	2	40
1905	8	3	35
1906	8	3	40
1907	9	3	34
1908	6	3	5
1909	7	4	34
1910	10	3	46
1911	8	4	2
1912	9	3	30
1913	6	2	21
1914	10	3	33
1915	7	4	14
1916	8	2	7
1917	9	3	10
1918	6	3	46
1919	6	3	28
1920	10	3	40
1921	10	3	21
1922	8	3	48
1923	7	4	8
1924	7	2	49
1925	8	2	5
1926	7	3	4
1927	6	3	24
1928	10	4	28
1929	9	2	29
1930	8	2	22
1931	9	3	40
1932	10	2	48
1933	8	2	42
1934	6	4	43
1935	6	4	12
1936	7	2	29
1937	6	2	42
1938	7	3	5
1939	8	4	38
1940	7	2	31
1941	9	2	34
1942	10	3	40
1943	8	4	39
1944	9	2	49
1945	9	3	12
1946	6	2	8
1947	8	3	28
1948	6	3	36
1949	10	4	35
1950	8	2	35
1951	6	3	41
1952	8	4	48
1953	9	4	42
1954	6	3	48
1955	6	4	49
1956	7	4	38
1957	6	2	49
1958	6	3	31
1959	8	3	7
1960	9	2	24
1961	9	2	7
1962	6	3	31
1963	9	2	6
1964	7	2	7
1965	9	3	22
1966	8	3	44
1967	7	2	49
1968	7	3	29
1969	6	4	34
1970	10	3	29
1971	7	2	2
1972	8	4	8
1973	8	2	18
1974	9	3	40
1975	7	4	6
1976	9	3	6
1977	6	4	2
1978	9	2	19
1979	10	4	34
1980	7	2	36
1981	6	2	1
1982	9	2	28
1983	8	3	32
1984	9	3	34
1985	8	2	30
1986	9	4	34
1987	8	2	1
1988	9	2	29
1989	9	2	32
1990	6	2	41
1991	9	2	30
1992	10	4	34
1993	9	2	41
1994	10	4	24
1995	8	3	41
1996	6	3	37
1997	9	3	15
1998	10	4	31
1999	8	2	7
2000	8	2	39
2001	6	4	49
2002	10	2	18
2003	9	2	30
2004	8	2	28
2005	6	4	41
2006	6	3	12
2007	10	3	31
2008	8	2	20
2009	8	2	38
2010	9	3	46
2011	7	2	1
2012	10	2	30
2013	6	4	33
2014	7	4	48
2015	8	3	41
2016	6	4	12
2017	8	4	23
2018	6	2	10
2019	8	2	9
2020	10	2	29
2021	6	4	24
2022	6	3	12
2023	8	3	30
2024	6	4	25
2025	7	2	31
2026	10	3	34
2027	8	3	28
2028	6	4	35
2029	7	4	42
2030	9	2	20
2031	7	4	21
2032	10	3	5
2033	7	2	40
2034	6	4	6
2035	7	4	1
2036	10	2	37
2037	6	3	41
2038	8	2	39
2039	8	4	37
2040	9	4	4
2041	6	2	22
2042	10	4	25
2043	10	4	30
2044	7	3	42
2045	8	3	36
2046	6	2	43
2047	8	2	35
2048	6	4	13
2049	7	4	43
2050	6	2	26
2051	10	4	37
2052	9	4	48
2053	10	2	42
2054	7	2	40
2055	9	3	31
2056	8	4	48
2057	7	3	10
2058	10	4	5
2059	10	2	26
2060	9	3	16
2061	9	4	21
2062	10	4	21
2063	10	4	46
2064	6	2	46
2065	9	4	32
2066	9	3	7
2067	9	4	19
2068	6	2	31
2069	10	4	18
2070	7	4	21
2071	9	2	35
2072	7	3	24
2073	9	3	32
2074	7	4	38
2075	6	4	35
2076	9	2	42
2077	9	3	31
2078	7	4	21
2079	7	2	10
2080	10	3	26
2081	9	4	1
2082	9	2	41
2083	6	3	5
2084	9	2	5
2085	9	3	42
2086	7	2	28
2087	10	2	14
2088	6	3	6
2089	9	4	35
2090	10	4	29
2091	7	3	18
2092	8	4	20
2093	6	4	27
2094	9	3	28
2095	8	3	43
2096	6	4	32
2097	7	3	18
2098	9	3	31
2099	9	4	10
2100	7	2	36
2101	8	4	37
2102	9	2	10
2103	8	2	8
2104	9	2	22
2105	7	4	29
2106	10	2	35
2107	8	2	24
2108	9	3	27
2109	8	3	26
2110	6	4	31
2111	7	4	41
2112	6	4	32
2113	8	2	41
2114	8	2	48
2115	10	3	4
2116	8	2	30
2117	10	4	40
2118	9	4	46
2119	6	4	8
2120	8	2	32
2121	8	3	27
2122	7	4	15
2123	8	4	27
2124	9	4	6
2125	9	3	36
2126	10	3	48
2127	8	4	1
2128	9	3	39
2129	10	3	36
2130	8	2	43
2131	8	2	4
2132	6	2	29
2133	7	4	23
2134	9	4	37
2135	8	4	49
2136	10	3	13
2137	6	2	2
2138	10	2	15
2139	7	3	41
2140	6	3	15
2141	6	4	40
2142	8	4	25
2143	7	2	37
2144	9	4	34
2145	10	2	24
2146	6	3	11
2147	9	4	42
2148	6	3	40
2149	8	2	39
2150	8	2	50
2151	8	3	48
2152	9	2	39
2153	10	4	46
2154	10	2	35
2155	7	4	44
2156	10	2	17
2157	6	4	1
2158	9	2	30
2159	6	3	1
2160	10	3	2
2161	9	4	35
2162	8	3	34
2163	6	3	48
2164	7	3	39
2165	6	2	34
2166	9	2	50
2167	9	4	41
2168	8	4	48
2169	8	3	19
2170	7	2	48
2171	7	3	27
2172	10	2	36
2173	10	4	14
2174	9	3	1
2175	10	4	5
2176	8	4	8
2177	6	3	38
2178	8	3	1
2179	9	3	40
2180	9	2	31
2181	7	2	6
2182	10	3	38
2183	7	4	2
2184	7	3	6
2185	6	3	9
2186	9	4	2
2187	7	2	49
2188	8	3	46
2189	9	4	49
2190	6	2	35
2191	6	3	24
2192	10	4	41
2193	10	3	10
2194	9	4	2
2195	6	4	40
2196	6	3	20
2197	6	3	5
2198	7	4	40
2199	6	2	35
2200	7	4	28
2201	10	4	40
2202	6	3	15
2203	10	2	19
2204	7	4	42
2205	9	3	24
2206	10	4	49
2207	10	2	15
2208	7	4	37
2209	8	4	20
2210	7	4	29
2211	10	4	41
2212	8	3	6
2213	7	2	42
2214	8	3	49
2215	8	4	31
2216	9	2	5
2217	9	3	2
2218	9	3	11
2219	6	4	44
2220	7	2	49
2221	8	3	10
2222	9	2	34
2223	9	3	29
2224	7	4	25
2225	8	3	1
2226	10	4	41
2227	10	4	35
2228	7	2	38
2229	9	4	21
2230	7	3	37
2231	6	2	19
2232	10	4	31
2233	7	3	46
2234	7	3	16
2235	9	4	21
2236	7	4	12
2237	9	3	31
2238	6	4	49
2239	9	3	41
2240	8	2	21
2241	8	4	31
2242	8	3	24
2243	6	4	37
2244	7	3	27
2245	8	2	10
2246	7	2	1
2247	10	2	24
2248	8	4	28
2249	6	4	49
2250	8	3	8
2251	8	2	41
2252	7	2	20
2253	8	4	38
2254	9	2	19
2255	7	2	35
2256	7	3	9
2257	6	3	35
2258	7	3	5
2259	9	3	45
2260	10	3	16
2261	7	2	37
2262	8	3	34
2263	7	4	46
2264	7	4	25
2265	7	3	12
2266	7	3	3
2267	9	4	49
2268	6	4	50
2269	6	4	14
2270	10	3	2
2271	6	4	3
2272	7	4	13
2273	7	2	43
2274	8	3	34
2275	9	4	7
2276	6	3	2
2277	6	2	46
2278	7	2	28
2279	6	2	16
2280	7	2	40
2281	8	3	16
2282	7	4	49
2283	6	2	10
2284	6	2	32
2285	7	4	14
2286	7	2	41
2287	7	3	49
2288	10	2	47
2289	9	2	12
2290	8	2	35
2291	6	2	44
2292	8	2	41
2293	7	3	47
2294	6	4	48
2295	9	2	45
2296	9	3	10
2297	6	3	46
2298	6	2	10
2299	9	3	29
2300	7	2	48
2301	6	2	21
2302	10	2	13
2303	8	4	41
2304	6	3	10
2305	9	2	36
2306	8	3	43
2307	7	3	10
2308	7	2	39
2309	7	3	38
2310	9	4	39
2311	6	2	43
2312	8	4	1
2313	8	2	23
2314	9	2	20
2315	7	4	14
2316	9	4	19
2317	6	3	39
2318	9	2	12
2319	10	4	6
2320	8	2	5
2321	6	2	46
2322	10	3	7
2323	9	2	32
2324	8	2	21
2325	8	3	14
2326	9	3	33
2327	8	4	38
2328	10	4	49
2329	10	2	31
2330	6	3	43
2331	9	4	43
2332	9	3	21
2333	8	2	29
2334	6	3	49
2335	6	4	34
2336	9	2	5
2337	9	2	34
2338	6	2	34
2339	6	2	20
2340	9	4	9
2341	7	4	33
2342	9	3	26
2343	8	2	36
2344	8	4	32
2345	8	2	31
2346	10	2	10
2347	8	4	38
2348	9	2	10
2349	10	4	21
2350	10	2	46
2351	7	4	1
2352	7	4	20
2353	6	2	49
2354	10	4	30
2355	9	3	27
2356	6	2	20
2357	7	2	38
2358	9	3	35
2359	7	3	40
2360	9	4	38
2361	10	3	50
2362	7	3	2
2363	7	4	5
2364	10	3	29
2365	8	3	40
2366	6	3	40
2367	10	2	19
2368	9	2	7
2369	7	3	38
2370	9	4	31
2371	8	4	47
2372	9	3	36
2373	8	2	4
2374	9	2	21
2375	9	2	9
2376	8	4	16
2377	8	2	48
2378	10	3	11
2379	7	4	7
2380	10	3	42
2381	6	2	10
2382	7	3	28
2383	8	3	7
2384	6	3	34
2385	9	4	21
2386	6	2	5
2387	8	2	24
2388	9	4	30
2389	10	2	48
2390	10	4	48
2391	10	2	1
2392	6	2	39
2393	10	2	5
2394	10	3	28
2395	6	3	20
2396	8	4	1
2397	7	3	12
2398	7	2	31
2399	8	2	24
2400	8	2	11
2401	9	3	43
2402	6	3	6
2403	7	3	28
2404	8	3	48
2405	6	2	21
2406	8	4	1
2407	8	4	44
2408	7	2	7
2409	10	4	41
2410	7	4	32
2411	10	2	28
2412	9	4	5
2413	10	3	5
2414	9	2	7
2415	8	4	28
2416	8	3	46
2417	7	2	15
2418	7	3	7
2419	7	4	39
2420	10	2	32
2421	8	2	15
2422	6	3	41
2423	8	4	24
2424	9	4	25
2425	10	4	28
2426	7	3	37
2427	7	2	50
2428	10	4	6
2429	9	4	17
2430	9	4	29
2431	8	2	35
2432	6	4	7
2433	9	4	2
2434	6	3	5
2435	9	3	14
2436	7	2	37
2437	7	3	36
2438	7	2	7
2439	8	3	10
2440	9	3	21
2441	8	2	24
2442	10	2	19
2443	10	3	5
2444	9	2	21
2445	7	2	43
2446	8	2	1
2447	7	3	50
2448	9	2	49
2449	10	2	24
2450	6	2	48
2451	8	4	44
2452	8	2	38
2453	8	4	5
2454	7	2	15
2455	10	3	2
2456	9	4	34
2457	6	4	42
2458	8	2	34
2459	7	2	33
2460	7	3	34
2461	7	3	45
2462	6	4	31
2463	7	4	32
2464	10	2	8
2465	7	2	37
2466	7	2	36
2467	8	2	47
2468	9	3	18
2469	7	4	36
2470	9	2	18
2471	9	3	3
2472	6	3	30
2473	6	2	41
2474	6	3	2
2475	8	3	1
2476	8	2	1
2477	6	3	15
2478	7	3	41
2479	10	2	20
2480	10	3	35
2481	8	2	20
2482	9	3	15
2483	10	2	8
2484	8	2	1
2485	10	4	42
2486	7	2	15
2487	8	2	25
2488	9	2	24
2489	6	3	1
2490	6	4	44
2491	9	2	7
2492	10	3	32
2493	7	3	32
2494	6	3	20
2495	6	3	36
2496	6	3	30
2497	6	3	15
2498	6	4	49
2499	7	3	42
2500	8	3	37
2501	6	4	10
2502	10	3	32
2503	6	4	3
2504	10	3	45
2505	8	2	13
2506	10	4	45
2507	8	3	30
2508	9	4	28
2509	8	4	15
2510	8	4	32
2511	6	2	28
2512	7	4	42
2513	8	2	5
2514	6	4	13
2515	8	4	20
2516	6	3	29
2517	7	3	35
2518	10	2	18
2519	9	3	28
2520	10	2	44
2521	10	4	1
2522	8	2	19
2523	6	3	35
2524	6	4	17
2525	6	3	20
2526	7	2	8
2527	6	3	38
2528	7	2	6
2529	10	3	50
2530	8	3	29
2531	10	2	30
2532	10	2	36
2533	10	3	6
2534	9	4	3
2535	10	4	10
2536	10	4	1
2537	7	2	37
2538	8	2	44
2539	8	3	38
2540	10	4	10
2541	9	4	7
2542	8	3	10
2543	6	4	34
2544	8	3	21
2545	7	4	6
2546	8	4	39
2547	8	2	36
2548	8	4	15
2549	7	4	38
2550	9	2	39
2551	7	4	20
2552	10	4	10
2553	7	2	42
2554	10	2	41
2555	9	3	40
2556	6	3	31
2557	10	3	34
2558	9	4	11
2559	10	3	2
2560	9	4	10
2561	6	3	49
2562	8	3	34
2563	10	4	40
2564	9	2	23
2565	9	3	5
2566	8	3	41
2567	9	4	24
2568	6	3	29
2569	10	4	34
2570	8	4	30
2571	7	3	31
2572	10	3	44
2573	8	3	9
2574	9	3	28
2575	10	3	28
2576	7	4	41
2577	7	4	49
2578	8	2	6
2579	6	3	30
2580	10	3	43
2581	10	3	21
2582	10	2	37
2583	10	2	38
2584	8	4	43
2585	6	4	38
2586	9	4	15
2587	6	3	2
2588	8	4	44
2589	9	2	37
2590	9	4	42
2591	7	2	29
2592	7	3	5
2593	7	4	32
2594	9	2	22
2595	7	4	17
2596	7	4	2
2597	8	4	41
2598	10	4	48
2599	10	3	41
2600	9	3	42
2601	7	3	30
2602	8	2	30
2603	6	2	46
2604	6	3	43
2605	10	4	7
2606	6	3	37
2607	9	2	10
2608	6	2	11
2609	6	3	44
2610	10	2	31
2611	6	2	42
2612	6	3	10
2613	10	2	18
2614	7	2	44
2615	8	2	30
2616	7	4	24
2617	9	3	35
2618	10	2	39
2619	9	4	21
2620	8	3	46
2621	8	3	39
2622	6	4	43
2623	6	4	24
2624	7	4	41
2625	6	4	49
2626	9	3	43
2627	8	2	27
2628	9	2	9
2629	9	3	35
2630	7	2	4
2631	10	3	32
2632	8	2	42
2633	8	3	14
2634	8	2	33
2635	10	4	43
2636	6	3	18
2637	8	4	38
2638	10	3	49
2639	7	4	47
2640	10	2	31
2641	7	4	46
2642	8	2	29
2643	10	4	36
2644	6	3	39
2645	8	4	49
2646	7	4	42
2647	9	4	32
2648	9	3	20
2649	7	2	5
2650	8	2	5
2651	6	4	2
2652	8	3	41
2653	8	3	41
2654	6	3	6
2655	8	2	41
2656	10	2	44
2657	7	3	7
2658	8	2	6
2659	8	4	3
2660	10	4	24
2661	6	4	22
2662	7	4	40
2663	9	4	49
2664	6	2	28
2665	7	2	22
2666	9	4	48
2667	9	3	21
2668	7	4	31
2669	6	2	45
2670	8	3	28
2671	10	3	28
2672	6	2	43
2673	7	4	40
2674	8	2	10
2675	9	3	31
2676	6	2	48
2677	6	2	28
2678	6	4	32
2679	8	4	16
2680	8	2	46
2681	6	4	43
2682	9	3	2
2683	7	2	41
2684	8	2	29
2685	10	3	28
2686	8	3	13
2687	10	3	38
2688	8	2	44
2689	6	2	10
2690	10	3	40
2691	9	2	48
2692	9	4	37
2693	8	4	24
2694	10	2	39
2695	8	4	22
2696	6	3	34
2697	8	4	5
2698	6	2	46
2699	6	4	1
2700	10	4	42
2701	7	3	24
2702	7	3	42
2703	7	4	48
2704	7	2	29
2705	7	3	36
2706	7	3	44
2707	8	4	26
2708	9	4	41
2709	9	2	43
2710	10	4	14
2711	10	4	40
2712	10	2	46
2713	7	4	47
2714	6	4	11
2715	9	3	7
2716	10	3	11
2717	9	4	19
2718	9	3	32
2719	7	4	10
2720	10	3	6
2721	7	4	24
2722	7	4	20
2723	10	2	40
2724	7	3	14
2725	9	3	27
2726	9	3	44
2727	7	3	50
2728	10	2	35
2729	7	4	49
2730	8	3	44
2731	6	4	3
2732	7	4	41
2733	8	4	24
2734	8	3	12
2735	9	2	32
2736	10	3	37
2737	6	3	7
2738	8	4	33
2739	6	2	31
2740	7	3	5
2741	6	2	45
2742	8	3	34
2743	9	4	11
2744	8	2	31
2745	10	3	10
2746	10	2	35
2747	9	4	28
2748	6	4	6
2749	8	2	20
2750	6	4	6
2751	9	4	5
2752	9	3	21
2753	9	4	44
2754	6	3	28
2755	10	4	24
2756	8	2	21
2757	6	2	18
2758	9	4	12
2759	9	3	40
2760	7	3	37
2761	10	2	36
2762	7	3	48
2763	7	4	41
2764	10	3	43
2765	8	3	16
2766	7	3	20
2767	8	2	8
2768	6	2	1
2769	6	3	27
2770	7	3	49
2771	10	4	20
2772	9	4	20
2773	8	2	35
2774	9	2	42
2775	10	2	21
2776	9	4	43
2777	10	4	7
2778	8	2	30
2779	6	3	32
2780	9	2	20
2781	10	4	32
2782	9	3	34
2783	9	2	28
2784	9	2	7
2785	7	4	42
2786	7	2	50
2787	9	3	24
2788	9	4	12
2789	7	2	35
2790	6	3	21
2791	6	2	32
2792	10	4	20
2793	6	3	48
2794	9	4	35
2795	7	4	49
2796	6	4	43
2797	8	3	35
2798	9	2	29
2799	10	4	24
2800	9	4	1
2801	10	4	13
2802	8	2	26
2803	7	4	41
2804	6	2	20
2805	9	2	48
2806	6	2	1
2807	10	2	16
2808	10	4	28
2809	9	2	32
2810	6	4	48
2811	7	4	47
2812	7	4	39
2813	10	2	42
2814	10	3	41
2815	6	4	48
2816	10	4	43
2817	9	3	40
2818	6	2	49
2819	9	4	2
2820	10	4	22
2821	9	3	29
2822	9	3	32
2823	10	4	36
2824	6	3	41
2825	10	3	42
2826	9	4	43
2827	10	4	29
2828	10	4	3
2829	7	2	41
2830	10	2	21
2831	9	3	5
2832	6	4	33
2833	7	2	28
2834	10	2	37
2835	6	2	7
2836	10	4	28
2837	10	3	37
2838	9	2	44
2839	6	2	33
2840	6	4	43
2841	9	4	44
2842	10	3	26
2843	7	3	21
2844	9	3	41
2845	8	2	6
2846	6	2	15
2847	7	4	45
2848	7	3	46
2849	10	4	7
2850	6	3	2
2851	7	2	1
2852	8	3	15
2853	6	4	27
2854	10	2	5
2855	6	3	10
2856	6	2	18
2857	8	3	7
2858	10	2	40
2859	9	2	24
2860	10	3	9
2861	10	2	16
2862	7	4	40
2863	10	4	48
2864	9	2	29
2865	8	2	14
2866	7	2	7
2867	10	4	41
2868	6	4	49
2869	7	4	24
2870	9	2	34
2871	7	2	49
2872	10	2	36
2873	10	2	32
2874	7	4	36
2875	10	3	7
2876	6	4	26
2877	10	4	44
2878	6	3	21
2879	6	4	37
2880	8	2	35
2881	8	2	7
2882	10	2	2
2883	10	3	11
2884	9	4	46
2885	6	4	26
2886	9	3	5
2887	10	3	32
2888	8	3	20
2889	6	2	40
2890	6	3	38
2891	6	2	28
2892	6	4	41
2893	10	4	49
2894	6	3	20
2895	9	4	6
2896	10	3	41
2897	9	2	22
2898	10	4	31
2899	7	2	39
2900	6	3	8
2901	6	2	6
2902	10	2	20
2903	9	2	27
2904	9	2	46
2905	8	4	15
2906	9	3	36
2907	7	4	36
2908	9	4	38
2909	9	4	49
2910	9	4	7
2911	9	4	7
2912	6	2	21
2913	6	2	48
2914	6	2	14
2915	8	4	3
2916	10	4	48
2917	10	2	28
2918	8	4	32
2919	7	2	46
2920	6	2	49
2921	8	3	41
2922	7	2	27
2923	10	2	24
2924	9	4	37
2925	10	4	7
2926	9	2	43
2927	10	4	5
2928	7	3	8
2929	10	4	46
2930	8	2	1
2931	10	4	49
2932	9	4	27
2933	6	2	38
2934	7	4	27
2935	8	2	39
2936	9	3	42
2937	9	3	18
2938	6	2	46
2939	8	3	42
2940	8	3	10
2941	9	4	10
2942	6	4	37
2943	10	2	46
2944	7	2	46
2945	7	2	33
2946	8	3	2
2947	7	3	30
2948	7	3	34
2949	10	2	24
2950	8	4	43
2951	8	2	1
2952	9	3	39
2953	9	3	22
2954	8	4	1
2955	8	3	42
2956	9	2	39
2957	8	3	31
2958	9	2	46
2959	9	3	6
2960	8	3	46
2961	6	3	35
2962	7	4	10
2963	8	2	42
2964	10	3	26
2965	10	4	7
2966	6	3	23
2967	9	3	6
2968	7	3	31
2969	9	4	33
2970	9	4	13
2971	9	3	6
2972	7	3	38
2973	10	3	42
2974	10	3	30
2975	7	3	40
2976	6	2	44
2977	6	2	3
2978	6	2	16
2979	7	3	13
2980	10	4	48
2981	8	3	24
2982	7	2	23
2983	7	3	43
2984	7	3	49
2985	6	3	20
2986	9	3	35
2987	8	4	30
2988	8	2	2
2989	7	3	40
2990	7	4	10
2991	8	2	46
2992	10	3	28
2993	7	2	50
2994	6	4	15
2995	9	4	36
2996	7	2	23
2997	10	2	18
2998	10	4	33
2999	9	2	7
3000	6	2	49
3001	7	3	19
3002	6	3	32
3003	9	4	24
3004	7	4	45
3005	10	4	18
3006	10	3	6
3007	6	3	49
3008	7	3	28
3009	6	3	36
3010	7	4	20
3011	6	4	7
3012	6	3	2
3013	9	4	4
3014	7	4	44
3015	7	3	21
3016	8	2	48
3017	10	4	44
3018	6	2	6
3019	7	4	12
3020	9	4	21
3021	6	4	20
3022	9	4	44
3023	10	3	29
3024	9	3	31
3025	9	2	34
3026	8	4	20
3027	9	2	21
3028	7	3	9
3029	10	4	18
3030	8	3	44
3031	9	2	39
3032	10	3	5
3033	7	4	10
3034	9	4	22
3035	10	4	41
3036	6	4	6
3037	7	3	39
3038	6	3	32
3039	8	2	14
3040	10	4	7
3041	8	4	10
3042	10	2	29
3043	9	4	19
3044	8	4	37
3045	6	4	29
3046	9	3	11
3047	7	4	10
3048	6	2	46
3049	9	3	15
3050	7	4	46
3051	9	3	36
3052	9	4	43
3053	9	4	36
3054	10	3	20
3055	6	4	41
3056	10	3	43
3057	6	3	27
3058	7	2	36
3059	10	2	47
3060	7	3	36
3061	10	3	48
3062	9	2	24
3063	7	4	9
3064	8	2	8
3065	7	2	1
3066	10	4	29
3067	9	4	44
3068	7	4	44
3069	7	2	4
3070	7	3	46
3071	10	4	10
3072	9	3	16
3073	8	4	24
3074	8	4	9
3075	10	4	42
3076	8	2	21
3077	6	2	28
3078	8	4	15
3079	7	2	41
3080	8	4	18
3081	10	2	41
3082	8	4	16
3083	8	4	12
3084	8	4	2
3085	9	3	44
3086	8	3	46
3087	9	2	5
3088	9	3	19
3089	10	3	6
3090	7	3	20
3091	9	2	1
3092	6	4	25
3093	9	2	48
3094	6	4	36
3095	10	3	8
3096	9	2	31
3097	9	3	28
3098	9	3	3
3099	7	4	50
3100	9	4	34
3101	6	2	1
3102	8	4	38
3103	9	3	6
3104	9	4	36
3105	6	4	31
3106	8	2	48
3107	9	4	19
3108	7	4	32
3109	6	2	48
3110	6	3	32
3111	8	3	20
3112	7	2	14
3113	8	4	25
3114	9	4	32
3115	7	3	20
3116	8	2	6
3117	9	3	35
3118	7	4	21
3119	8	3	25
3120	10	4	48
3121	9	3	37
3122	8	3	7
3123	8	2	38
3124	10	3	34
3125	9	4	15
3126	8	4	29
3127	10	3	34
3128	10	2	15
3129	9	2	36
3130	10	3	15
3131	6	2	45
3132	6	4	2
3133	10	4	1
3134	8	2	7
3135	6	4	15
3136	8	3	16
3137	6	2	40
3138	9	4	20
3139	6	2	2
3140	10	3	4
3141	6	4	41
3142	9	2	21
3143	7	4	6
3144	10	3	10
3145	9	3	2
3146	10	3	7
3147	7	4	35
3148	10	2	1
3149	6	4	49
3150	9	4	4
3151	10	4	1
3152	9	2	11
3153	7	3	5
3154	8	4	48
3155	6	4	32
3156	6	3	32
3157	10	4	31
3158	10	4	24
3159	7	3	2
3160	6	2	38
3161	9	2	21
3162	10	3	41
3163	9	4	37
3164	8	4	40
3165	8	4	5
3166	7	2	39
3167	7	2	1
3168	6	4	38
3169	8	2	41
3170	6	3	4
3171	8	3	43
3172	6	3	31
3173	6	3	40
3174	6	3	6
3175	7	4	35
3176	7	3	42
3177	10	4	38
3178	7	3	41
3179	9	4	46
3180	6	3	21
3181	8	3	45
3182	9	2	33
3183	6	2	40
3184	6	3	14
3185	10	4	33
3186	7	2	29
3187	7	3	24
3188	8	3	42
3189	6	3	44
3190	7	2	24
3191	7	4	39
3192	10	4	14
3193	8	2	50
3194	6	3	28
3195	7	4	37
3196	8	2	20
3197	9	2	48
3198	8	4	43
3199	6	4	44
3200	6	4	25
3201	10	2	37
3202	9	2	6
3203	9	2	10
3204	9	2	49
3205	9	3	10
3206	8	4	23
3207	7	4	16
3208	7	3	32
3209	8	4	42
3210	10	4	19
3211	7	4	49
3212	7	2	43
3213	9	2	29
3214	6	4	20
3215	9	4	37
3216	10	4	47
3217	8	4	28
3218	9	4	36
3219	9	3	31
3220	8	4	49
3221	10	4	47
3222	9	2	33
3223	7	2	44
3224	10	3	31
3225	10	3	18
3226	8	3	35
3227	9	3	1
3228	9	4	35
3229	9	4	6
3230	8	2	34
3231	7	4	12
3232	7	3	29
3233	8	4	24
3234	7	3	16
3235	7	3	44
3236	8	2	38
3237	6	2	39
3238	8	3	38
3239	9	3	27
3240	10	4	6
3241	6	4	14
3242	9	4	36
3243	9	2	46
3244	6	4	7
3245	10	4	32
3246	7	3	10
3247	7	2	11
3248	7	2	46
3249	10	2	35
3250	6	4	26
3251	7	3	36
3252	9	4	12
3253	7	3	29
3254	6	3	20
3255	8	3	6
3256	10	3	24
3257	10	4	42
3258	9	4	13
3259	7	3	21
3260	9	2	23
3261	10	3	9
3262	10	2	33
3263	7	2	36
3264	8	4	15
3265	10	4	41
3266	7	2	5
3267	9	3	2
3268	10	4	40
3269	8	2	37
3270	10	4	14
3271	7	3	15
3272	6	2	46
3273	6	4	22
3274	9	3	40
3275	10	2	2
3276	10	3	11
3277	6	2	1
3278	6	3	38
3279	6	4	21
3280	9	3	31
3281	7	3	39
3282	7	2	40
3283	10	2	24
3284	8	3	23
3285	6	3	41
3286	6	3	31
3287	8	2	40
3288	9	4	48
3289	9	2	33
3290	7	3	15
3291	6	4	21
3292	6	2	18
3293	8	3	38
3294	7	4	2
3295	10	2	37
3296	9	4	7
3297	8	4	8
3298	8	3	6
3299	9	3	14
3300	10	3	32
3301	9	3	37
3302	10	3	44
3303	10	4	37
3304	10	4	35
3305	6	2	20
3306	6	4	6
3307	8	3	21
3308	10	4	3
3309	10	3	36
3310	8	4	49
3311	10	2	34
3312	10	3	47
3313	8	4	46
3314	6	2	46
3315	9	2	7
3316	10	2	34
3317	6	2	2
3318	7	2	43
3319	8	4	46
3320	10	2	46
3321	10	4	38
3322	9	2	41
3323	10	2	40
3324	7	4	6
3325	10	4	1
3326	9	3	1
3327	10	4	13
3328	6	3	41
3329	8	2	20
3330	8	4	37
3331	6	3	35
3332	7	4	32
3333	8	3	31
3334	6	4	2
3335	8	4	29
3336	6	4	48
3337	9	4	27
3338	9	4	20
3339	8	2	15
3340	7	3	30
3341	6	4	5
3342	8	2	40
3343	8	2	29
3344	10	2	41
3345	7	4	45
3346	9	3	15
3347	6	2	7
3348	7	4	21
3349	10	2	44
3350	10	4	43
3351	10	4	11
3352	8	3	12
3353	9	3	7
3354	8	2	39
3355	9	3	13
3356	6	3	5
3357	6	3	6
3358	7	4	10
3359	9	3	38
3360	6	3	1
3361	9	2	5
3362	7	4	5
3363	10	2	44
3364	6	3	12
3365	8	3	1
3366	9	2	6
3367	6	4	34
3368	7	4	45
3369	10	3	6
3370	9	3	22
3371	6	2	48
3372	9	3	30
3373	7	4	44
3374	10	4	50
3375	8	4	42
3376	10	4	4
3377	6	4	28
3378	9	4	7
3379	7	2	38
3380	10	2	20
3381	9	3	19
3382	7	2	28
3383	9	4	6
3384	9	4	38
3385	9	2	44
3386	7	2	7
3387	7	4	48
3388	10	3	36
3389	9	2	46
3390	7	3	24
3391	9	3	35
3392	6	3	20
3393	8	4	41
3394	8	4	12
3395	6	4	41
3396	7	4	14
3397	9	2	20
3398	6	2	1
3399	7	2	40
3400	8	3	50
3401	9	2	42
3402	6	4	49
3403	6	4	18
3404	9	2	14
3405	6	4	36
3406	8	4	30
3407	7	3	26
3408	10	4	43
3409	7	2	15
3410	10	3	30
3411	8	2	29
3412	6	4	46
3413	9	3	31
3414	6	2	41
3415	7	3	40
3416	7	2	24
3417	10	2	8
3418	9	2	42
3419	6	2	29
3420	10	3	3
3421	7	4	20
3422	6	3	30
3423	6	3	25
3424	9	2	32
3425	9	4	15
3426	9	3	14
3427	10	2	46
3428	8	4	38
3429	6	4	36
3430	10	4	16
3431	6	4	31
3432	9	3	37
3433	7	2	21
3434	8	4	2
3435	7	4	10
3436	7	2	2
3437	10	3	44
3438	6	3	41
3439	8	2	20
3440	7	2	44
3441	10	3	6
3442	10	4	10
3443	6	4	18
3444	6	4	37
3445	8	4	31
3446	10	2	49
3447	10	3	28
3448	10	4	32
3449	10	3	40
3450	7	2	7
3451	8	4	31
3452	7	3	24
3453	9	2	37
3454	9	4	39
3455	8	3	3
3456	9	4	7
3457	7	3	37
3458	6	4	21
3459	7	2	40
3460	7	4	36
3461	10	3	32
3462	8	4	43
3463	8	4	10
3464	8	2	13
3465	7	3	30
3466	8	4	39
3467	8	2	39
3468	7	2	43
3469	10	4	10
3470	9	2	6
3471	8	3	16
3472	8	2	28
3473	10	2	11
3474	6	4	32
3475	8	4	47
3476	8	3	46
3477	8	3	2
3478	10	3	42
3479	9	2	39
3480	8	4	41
3481	8	2	24
3482	10	2	21
3483	8	4	23
3484	9	3	20
3485	8	4	11
3486	9	4	49
3487	6	2	5
3488	7	3	30
3489	10	4	24
3490	10	4	39
3491	6	4	8
3492	6	4	5
3493	9	2	21
3494	10	4	44
3495	9	4	28
3496	9	2	46
3497	9	4	29
3498	7	2	43
3499	9	2	32
3500	7	3	17
3501	8	2	11
3502	9	3	14
3503	10	3	32
3504	9	2	1
3505	9	3	1
3506	6	4	21
3507	6	3	43
3508	7	3	40
3509	7	2	35
3510	10	3	41
3511	9	4	5
3512	6	2	2
3513	10	4	12
3514	7	3	39
3515	10	4	12
3516	9	4	41
3517	9	3	49
3518	8	2	41
3519	9	3	15
3520	10	4	42
3521	10	2	1
3522	10	4	1
3523	10	3	28
3524	7	2	24
3525	9	3	30
3526	9	2	47
3527	10	4	35
3528	9	2	1
3529	10	2	27
3530	9	2	50
3531	6	4	32
3532	8	2	46
3533	10	2	2
3534	10	4	12
3535	6	4	45
3536	6	2	34
3537	7	4	23
3538	6	4	15
3539	10	3	49
3540	10	2	37
3541	9	3	32
3542	10	2	18
3543	9	4	2
3544	7	3	5
3545	8	3	35
3546	6	2	48
3547	9	2	40
3548	8	4	1
3549	8	3	31
3550	6	4	49
3551	9	4	46
3552	8	4	6
3553	7	3	18
3554	8	3	10
3555	8	2	12
3556	6	2	47
3557	7	3	5
3558	6	2	41
3559	10	4	1
3560	6	4	49
3561	10	2	2
3562	6	3	49
3563	9	3	47
3564	10	2	49
3565	10	4	15
3566	9	3	48
3567	10	3	46
3568	6	2	34
3569	8	3	40
3570	8	3	27
3571	8	4	43
3572	7	4	29
3573	6	4	20
3574	7	3	6
3575	7	2	20
3576	6	2	46
3577	6	3	34
3578	10	3	37
3579	7	3	31
3580	9	2	45
3581	10	3	39
3582	8	3	25
3583	6	2	23
3584	6	2	6
3585	9	4	21
3586	7	4	29
3587	8	4	13
3588	7	3	8
3589	7	3	36
3590	9	3	29
3591	6	3	36
3592	7	2	15
3593	9	3	41
3594	10	4	22
3595	8	3	5
3596	6	2	46
3597	7	2	49
3598	7	4	38
3599	8	4	45
3600	10	4	38
3601	9	4	20
3602	8	2	44
3603	8	4	44
3604	9	2	41
3605	7	3	10
3606	9	2	37
3607	6	4	18
3608	10	3	7
3609	8	2	2
3610	10	4	4
3611	9	3	2
3612	8	2	28
3613	7	2	1
3614	9	3	43
3615	10	2	5
3616	8	4	49
3617	9	3	36
3618	7	4	45
3619	9	3	32
3620	6	2	47
3621	9	4	32
3622	8	2	43
3623	7	4	32
3624	10	3	5
3625	8	2	39
3626	7	4	49
3627	7	4	10
3628	8	3	6
3629	8	3	16
3630	8	2	21
3631	6	3	48
3632	6	3	40
3633	6	3	30
3634	10	3	37
3635	9	3	44
3636	8	2	33
3637	7	4	35
3638	8	3	2
3639	9	2	50
3640	7	3	1
3641	8	3	48
3642	9	3	29
3643	10	3	16
3644	9	3	39
3645	6	2	7
3646	9	3	31
3647	7	4	30
3648	7	4	29
3649	6	4	16
3650	9	2	28
3651	9	4	30
3652	9	3	29
3653	9	4	29
3654	9	4	39
3655	6	2	17
3656	9	3	38
3657	9	4	12
3658	6	3	28
3659	8	4	47
3660	7	4	43
3661	6	4	29
3662	9	2	14
3663	9	4	35
3664	8	4	49
3665	9	4	30
3666	10	2	38
3667	7	3	43
3668	10	2	19
3669	10	3	8
3670	9	2	15
3671	8	2	26
3672	9	3	30
3673	10	2	6
3674	6	2	46
3675	7	2	15
3676	7	2	10
3677	8	3	21
3678	10	2	9
3679	9	4	49
3680	10	2	6
3681	8	2	49
3682	8	2	27
3683	9	3	5
3684	6	3	36
3685	7	3	49
3686	8	4	24
3687	8	3	1
3688	10	3	32
3689	6	2	34
3690	9	3	13
3691	9	2	49
3692	10	4	15
3693	7	2	14
3694	6	4	34
3695	10	2	17
3696	8	4	43
3697	8	4	31
3698	10	2	28
3699	9	4	6
3700	10	4	30
3701	6	2	43
3702	6	3	9
3703	6	2	7
3704	9	2	43
3705	7	3	48
3706	9	4	21
3707	6	3	31
3708	9	4	1
3709	6	2	41
3710	6	3	12
3711	9	2	39
3712	6	4	21
3713	10	3	36
3714	9	2	36
3715	7	3	13
3716	9	4	20
3717	9	2	37
3718	10	2	36
3719	10	3	20
3720	10	2	20
3721	6	4	24
3722	10	3	10
3723	7	3	11
3724	10	4	29
3725	10	3	31
3726	9	4	20
3727	10	2	46
3728	10	4	2
3729	7	4	40
3730	9	4	10
3731	6	3	24
3732	10	2	49
3733	9	3	3
3734	6	4	41
3735	6	2	45
3736	10	3	40
3737	7	2	35
3738	8	3	24
3739	6	3	42
3740	7	3	6
3741	10	2	12
3742	10	4	40
3743	9	2	8
3744	9	2	10
3745	8	2	15
3746	6	4	10
3747	10	4	10
3748	9	3	35
3749	9	3	42
3750	10	2	4
3751	10	3	1
3752	10	2	35
3753	10	3	10
3754	8	4	5
3755	7	4	10
3756	7	3	46
3757	10	4	20
3758	10	2	43
3759	9	4	20
3760	7	4	12
3761	8	2	10
3762	9	3	34
3763	9	4	37
3764	9	2	45
3765	9	4	15
3766	6	3	24
3767	10	4	20
3768	6	4	32
3769	6	2	18
3770	6	3	38
3771	6	4	5
3772	9	2	7
3773	7	2	35
3774	10	2	39
3775	9	2	5
3776	7	2	41
3777	6	3	27
3778	6	4	37
3779	8	2	1
3780	6	2	39
3781	8	3	36
3782	7	3	31
3783	8	4	5
3784	7	3	46
3785	7	4	30
3786	8	3	25
3787	6	3	12
3788	7	4	11
3789	10	4	40
3790	8	3	17
3791	6	4	21
3792	6	2	31
3793	10	4	17
3794	9	2	20
3795	9	3	24
3796	6	3	5
3797	7	2	5
3798	7	2	21
3799	9	2	37
3800	10	4	18
3801	8	2	6
3802	10	4	38
3803	9	3	14
3804	9	4	24
3805	6	4	2
3806	10	3	20
3807	8	3	39
3808	6	4	13
3809	9	3	18
3810	8	4	24
3811	9	3	30
3812	6	4	49
3813	6	3	38
3814	8	4	27
3815	6	3	41
3816	9	2	1
3817	9	4	30
3818	6	2	48
3819	6	4	20
3820	9	4	15
3821	10	2	47
3822	8	3	17
3823	6	4	32
3824	7	2	49
3825	9	3	5
3826	6	4	43
3827	9	2	38
3828	7	4	25
3829	7	2	9
3830	7	2	43
3831	6	4	37
3832	7	4	4
3833	10	4	44
3834	9	4	6
3835	8	3	8
3836	8	4	38
3837	8	3	14
3838	10	4	48
3839	10	2	44
3840	8	2	41
3841	9	4	46
3842	6	3	8
3843	8	4	24
3844	8	2	29
3845	8	2	24
3846	7	3	12
3847	10	4	28
3848	8	2	37
3849	6	2	49
3850	8	3	18
3851	10	2	39
3852	9	4	21
3853	8	4	2
3854	7	3	6
3855	9	3	42
3856	9	4	21
3857	9	3	42
3858	7	2	36
3859	8	3	7
3860	10	2	29
3861	8	4	32
3862	10	3	28
3863	9	2	48
3864	9	3	10
3865	6	2	41
3866	6	2	23
3867	8	3	29
3868	10	4	21
3869	7	3	23
3870	9	3	10
3871	7	3	27
3872	10	2	40
3873	7	4	29
3874	7	3	31
3875	7	3	40
3876	7	4	49
3877	10	2	2
3878	7	3	30
3879	9	4	35
3880	7	2	39
3881	8	3	28
3882	6	4	36
3883	10	2	15
3884	8	2	31
3885	9	4	29
3886	8	3	16
3887	6	4	18
3888	7	4	6
3889	6	2	1
3890	9	2	37
3891	8	2	40
3892	7	3	14
3893	9	3	18
3894	10	2	37
3895	7	4	21
3896	8	3	4
3897	7	3	28
3898	6	4	21
3899	7	2	15
3900	8	2	6
3901	6	3	45
3902	7	4	37
3903	7	2	15
3904	9	2	44
3905	9	3	31
3906	7	4	7
3907	6	4	40
3908	10	4	21
3909	10	4	1
3910	8	3	27
3911	9	2	40
3912	9	4	32
3913	8	3	21
3914	9	2	25
3915	10	2	50
3916	6	4	46
3917	6	4	44
3918	7	3	31
3919	7	2	26
3920	10	2	49
3921	10	2	32
3922	8	2	28
3923	10	4	2
3924	8	3	37
3925	8	4	30
3926	9	2	21
3927	9	3	29
3928	8	3	24
3929	8	4	40
3930	10	3	38
3931	9	2	15
3932	9	2	37
3933	10	2	8
3934	7	2	30
3935	8	4	16
3936	8	2	21
3937	10	3	30
3938	7	4	27
3939	7	4	28
3940	6	4	2
3941	7	3	37
3942	9	4	39
3943	10	3	11
3944	6	2	22
3945	7	3	39
3946	9	2	14
3947	6	2	16
3948	6	3	2
3949	10	2	31
3950	8	3	15
3951	9	4	10
3952	6	2	45
3953	9	4	48
3954	9	3	38
3955	9	2	42
3956	7	2	6
3957	9	2	48
3958	7	4	10
3959	8	4	46
3960	8	2	25
3961	10	4	21
3962	8	2	31
3963	10	3	36
3964	6	4	10
3965	7	3	16
3966	9	2	36
3967	8	4	24
3968	9	3	24
3969	6	4	15
3970	9	4	6
3971	9	2	46
3972	8	3	20
3973	9	3	6
3974	9	3	11
3975	6	3	44
3976	10	2	6
3977	6	4	46
3978	8	2	46
3979	6	4	42
3980	9	2	10
3981	8	3	36
3982	6	4	15
3983	10	2	36
3984	9	4	21
3985	9	2	2
3986	7	3	21
3987	9	4	30
3988	8	4	6
3989	7	2	44
3990	7	2	42
3991	7	2	37
3992	9	3	2
3993	6	2	2
3994	9	2	24
3995	7	3	15
3996	9	2	1
3997	9	3	30
3998	9	2	21
3999	10	3	30
4000	7	2	9
4001	10	3	20
4002	9	2	39
4003	9	3	24
4004	10	3	49
4005	6	3	28
4006	8	2	2
4007	8	3	40
4008	9	3	39
4009	8	4	38
4010	6	3	42
4011	6	4	2
4012	8	4	49
4013	8	2	38
4014	6	2	35
4015	10	2	10
4016	7	3	44
4017	6	4	29
4018	10	3	35
4019	9	4	23
4020	7	3	12
4021	8	3	36
4022	7	2	41
4023	7	4	33
4024	10	3	30
4025	8	2	18
4026	6	2	40
4027	7	2	19
4028	7	3	32
4029	8	4	30
4030	8	2	41
4031	8	3	41
4032	7	2	38
4033	7	2	42
4034	8	3	39
4035	8	4	8
4036	9	2	20
4037	10	3	10
4038	10	3	5
4039	6	4	1
4040	10	4	39
4041	6	4	48
4042	7	2	10
4043	10	2	5
4044	7	3	29
4045	6	2	43
4046	6	4	26
4047	8	2	7
4048	6	4	20
4049	6	4	46
4050	6	4	38
4051	6	4	41
4052	7	3	16
4053	10	3	21
4054	10	2	5
4055	8	3	40
4056	10	4	46
4057	9	4	13
4058	10	2	17
4059	10	3	44
4060	7	3	32
4061	10	2	48
4062	6	2	32
4063	6	3	41
4064	6	3	5
4065	9	3	45
4066	6	2	49
4067	8	3	41
4068	7	3	20
4069	7	3	29
4070	7	3	36
4071	6	2	5
4072	6	4	1
4073	6	2	20
4074	10	3	15
4075	8	3	20
4076	7	3	35
4077	8	2	30
4078	8	2	20
4079	8	3	44
4080	10	3	49
4081	10	4	36
4082	6	3	45
4083	6	2	35
4084	8	4	41
4085	7	4	4
4086	8	3	34
4087	8	4	32
4088	7	2	26
4089	6	3	2
4090	7	3	7
4091	8	3	45
4092	8	2	42
4093	10	3	24
4094	10	4	21
4095	9	2	19
4096	7	2	4
4097	8	4	16
4098	7	4	37
4099	9	2	34
4100	6	3	48
4101	7	4	43
4102	9	4	37
4103	10	3	7
4104	6	4	43
4105	10	2	20
4106	8	3	12
4107	10	3	5
4108	9	2	2
4109	8	2	44
4110	6	3	1
4111	9	3	10
4112	9	3	20
4113	10	3	5
4114	10	3	40
4115	10	2	37
4116	10	2	40
4117	9	4	48
4118	7	3	36
4119	10	4	28
4120	7	3	17
4121	6	2	2
4122	8	4	8
4123	7	2	26
4124	8	3	29
4125	6	2	43
4126	8	2	35
4127	9	3	35
4128	6	2	41
4129	6	2	34
4130	10	4	45
4131	10	4	26
4132	8	4	49
4133	9	2	30
4134	9	4	22
4135	6	3	23
4136	9	2	12
4137	6	3	1
4138	10	4	33
4139	6	2	32
4140	7	2	21
4141	8	3	46
4142	8	2	48
4143	8	2	48
4144	9	2	39
4145	10	3	20
4146	7	3	7
4147	10	3	13
4148	6	2	47
4149	10	4	16
4150	7	2	20
4151	7	3	48
4152	8	3	13
4153	6	2	7
4154	6	3	8
4155	9	4	17
4156	6	3	21
4157	8	3	30
4158	9	4	12
4159	9	2	48
4160	8	3	1
4161	8	3	21
4162	7	4	41
4163	10	3	6
4164	6	3	30
4165	6	3	5
4166	9	4	48
4167	7	4	46
4168	7	3	48
4169	8	4	40
4170	9	3	44
4171	8	2	12
4172	10	4	28
4173	6	2	16
4174	9	2	5
4175	8	3	37
4176	7	4	41
4177	7	3	2
4178	7	3	19
4179	9	3	1
4180	7	2	48
4181	6	4	28
4182	7	2	21
4183	9	2	48
4184	9	2	43
4185	9	3	34
4186	6	3	29
4187	10	3	35
4188	10	4	2
4189	9	4	39
4190	10	4	11
4191	6	4	42
4192	6	3	42
4193	6	3	1
4194	7	4	41
4195	9	3	10
4196	6	2	4
4197	9	3	5
4198	10	3	15
4199	6	3	6
4200	9	3	5
4201	8	4	24
4202	6	3	41
4203	6	2	7
4204	7	4	4
4205	9	4	29
4206	10	3	38
4207	9	3	3
4208	9	4	15
4209	9	2	19
4210	6	3	28
4211	6	4	49
4212	7	2	24
4213	6	3	25
4214	9	4	37
4215	7	2	36
4216	10	3	21
4217	7	2	43
4218	6	4	15
4219	8	4	37
4220	9	2	42
4221	8	4	10
4222	10	3	10
4223	10	3	34
4224	6	4	22
4225	7	2	18
4226	8	2	31
4227	7	3	7
4228	6	2	34
4229	9	4	39
4230	6	2	39
4231	8	3	28
4232	7	3	32
4233	8	4	7
4234	8	3	34
4235	9	3	39
4236	6	2	35
4237	8	3	35
4238	10	4	49
4239	7	4	25
4240	10	4	39
4241	6	3	32
4242	9	4	36
4243	8	2	38
4244	7	2	47
4245	7	3	28
4246	10	2	10
4247	6	4	31
4248	6	2	30
4249	8	3	41
4250	10	4	24
4251	9	2	13
4252	7	2	17
4253	10	3	38
4254	6	2	12
4255	10	3	42
4256	6	2	49
4257	6	3	5
4258	8	3	24
4259	6	4	27
4260	7	3	21
4261	10	2	39
4262	6	3	42
4263	7	4	41
4264	6	3	44
4265	8	2	2
4266	9	3	29
4267	7	4	42
4268	7	4	37
4269	8	4	46
4270	10	4	39
4271	10	2	4
4272	10	3	46
4273	9	2	7
4274	7	3	39
4275	10	3	22
4276	7	4	23
4277	8	2	10
4278	9	3	32
4279	9	3	1
4280	9	4	4
4281	9	4	17
4282	10	4	48
4283	6	4	9
4284	9	2	41
4285	9	2	21
4286	7	4	43
4287	7	3	15
4288	7	4	26
4289	10	2	2
4290	9	2	3
4291	9	2	6
4292	10	2	6
4293	9	4	2
4294	9	3	34
4295	9	2	40
4296	10	2	46
4297	7	4	47
4298	8	3	31
4299	7	3	47
4300	10	2	45
4301	6	4	5
4302	10	2	2
4303	6	2	6
4304	6	3	7
4305	9	2	43
4306	7	3	41
4307	6	2	49
4308	8	2	35
4309	7	4	39
4310	7	3	10
4311	8	2	44
4312	10	2	2
4313	8	4	7
4314	8	2	19
4315	6	3	10
4316	8	4	39
4317	7	4	7
4318	8	2	11
4319	6	3	50
4320	10	4	37
4321	9	2	30
4322	6	4	7
4323	7	3	39
4324	6	3	28
4325	8	3	40
4326	9	4	24
4327	8	2	44
4328	10	4	1
4329	10	4	37
4330	8	4	9
4331	7	2	20
4332	8	2	18
4333	10	3	38
4334	6	2	18
4335	10	2	49
4336	7	2	35
4337	9	3	30
4338	9	3	34
4339	6	4	40
4340	10	2	43
4341	6	3	15
4342	7	3	38
4343	10	4	12
4344	10	2	9
4345	9	4	10
4346	6	2	43
4347	8	3	28
4348	8	2	30
4349	8	4	4
4350	10	3	23
4351	8	4	34
4352	6	3	10
4353	6	3	36
4354	7	2	37
4355	7	3	25
4356	8	2	37
4357	6	4	34
4358	8	3	38
4359	8	3	36
4360	8	2	7
4361	8	3	5
4362	6	2	37
4363	7	2	46
4364	7	2	14
4365	8	2	7
4366	10	4	17
4367	6	2	46
4368	6	2	9
4369	8	4	31
4370	6	3	42
4371	7	4	37
4372	8	3	46
4373	7	3	10
4374	7	3	5
4375	8	3	8
4376	6	3	20
4377	9	4	30
4378	8	3	34
4379	7	4	37
4380	7	2	34
4381	9	4	17
4382	7	3	42
4383	10	3	44
4384	6	2	38
4385	9	2	35
4386	10	2	21
4387	6	4	49
4388	7	3	32
4389	7	3	11
4390	6	4	5
4391	7	4	29
4392	7	3	46
4393	6	2	31
4394	6	4	44
4395	6	4	49
4396	10	2	24
4397	6	3	1
4398	9	3	46
4399	6	3	35
4400	8	4	5
4401	8	4	5
4402	9	3	28
4403	6	3	5
4404	9	3	31
4405	8	3	28
4406	6	2	28
4407	10	3	6
4408	8	4	2
4409	9	4	34
4410	6	4	29
4411	10	3	6
4412	8	2	17
4413	10	2	30
4414	6	4	39
4415	9	3	18
4416	8	3	30
4417	7	2	43
4418	7	3	34
4419	8	3	7
4420	10	2	6
4421	7	4	40
4422	7	4	20
4423	9	3	7
4424	6	3	5
4425	7	3	10
4426	8	4	10
4427	10	3	41
4428	7	2	49
4429	6	2	48
4430	6	2	40
4431	7	3	32
4432	9	2	35
4433	8	3	32
4434	9	3	27
4435	8	2	26
4436	6	4	24
4437	7	3	3
4438	6	3	37
4439	9	2	4
4440	9	4	44
4441	7	3	41
4442	9	4	33
4443	9	3	44
4444	7	2	1
4445	9	3	40
4446	10	4	25
4447	8	3	24
4448	10	2	18
4449	7	2	40
4450	6	4	12
4451	8	4	22
4452	7	2	33
4453	8	2	10
4454	9	2	11
4455	9	2	12
4456	10	4	50
4457	7	3	42
4458	10	4	37
4459	6	4	31
4460	6	4	7
4461	8	2	31
4462	9	2	10
4463	8	4	48
4464	9	4	7
4465	6	3	44
4466	6	4	28
4467	8	3	49
4468	10	4	24
4469	9	4	28
4470	7	2	32
4471	7	2	34
4472	7	4	45
4473	8	2	32
4474	6	4	25
4475	7	3	26
4476	9	2	6
4477	7	4	37
4478	8	4	31
4479	8	4	7
4480	6	2	35
4481	9	4	6
4482	10	2	12
4483	8	4	6
4484	6	3	39
4485	7	4	7
4486	9	2	38
4487	9	4	6
4488	10	2	4
4489	7	4	2
4490	7	2	41
4491	10	4	23
4492	6	4	1
4493	10	4	26
4494	6	3	26
4495	9	2	6
4496	8	2	32
4497	9	3	36
4498	9	3	25
4499	9	3	3
4500	7	4	46
4501	10	4	19
4502	10	4	31
4503	7	3	29
4504	7	2	4
4505	6	4	36
4506	8	3	1
4507	10	2	8
4508	6	4	35
4509	8	2	36
4510	10	4	27
4511	9	3	17
4512	10	3	36
4513	8	3	37
4514	8	4	7
4515	9	2	32
4516	7	3	37
4517	7	2	42
4518	6	3	8
4519	8	3	22
4520	10	3	18
4521	7	4	39
4522	10	3	24
4523	6	4	35
4524	7	3	35
4525	10	3	46
4526	10	3	30
4527	8	3	1
4528	9	2	24
4529	10	2	10
4530	8	3	42
4531	6	4	36
4532	7	2	12
4533	10	4	37
4534	10	3	49
4535	7	3	37
4536	8	4	32
4537	8	3	35
4538	8	4	25
4539	9	3	14
4540	8	2	21
4541	10	4	8
4542	8	2	31
4543	8	4	34
4544	6	2	44
4545	6	2	2
4546	6	2	1
4547	7	3	28
4548	7	2	6
4549	9	2	32
4550	6	3	4
4551	10	4	19
4552	10	3	30
4553	8	3	32
4554	7	4	10
4555	8	4	49
4556	6	3	15
4557	7	2	30
4558	10	4	7
4559	6	4	24
4560	9	2	43
4561	6	3	47
4562	6	4	42
4563	8	3	36
4564	6	3	46
4565	8	2	32
4566	9	3	29
4567	7	4	37
4568	9	4	42
4569	8	2	36
4570	8	2	1
4571	8	4	46
4572	8	2	41
4573	8	4	39
4574	7	2	27
4575	6	3	48
4576	8	2	5
4577	6	3	10
4578	7	4	14
4579	9	4	46
4580	9	3	49
4581	7	2	30
4582	9	3	24
4583	10	2	41
4584	6	4	40
4585	6	2	42
4586	10	3	1
4587	10	4	36
4588	8	2	41
4589	10	2	37
4590	6	2	37
4591	8	2	48
4592	6	4	13
4593	9	2	24
4594	6	4	42
4595	10	4	5
4596	9	4	29
4597	7	2	6
4598	10	4	6
4599	9	4	7
4600	7	4	29
4601	10	4	36
4602	10	2	30
4603	7	2	25
4604	9	4	48
4605	8	2	18
4606	6	2	9
4607	10	3	10
4608	9	2	28
4609	8	4	19
4610	8	3	2
4611	8	4	48
4612	7	3	48
4613	6	2	40
4614	7	3	34
4615	7	4	10
4616	10	2	34
4617	10	4	48
4618	8	4	46
4619	6	2	24
4620	9	4	39
4621	7	4	29
4622	6	2	2
4623	6	2	7
4624	6	3	29
4625	8	4	22
4626	9	3	48
4627	7	4	32
4628	6	4	48
4629	10	4	29
4630	10	3	42
4631	8	2	6
4632	8	3	24
4633	7	2	33
4634	8	4	14
4635	10	2	35
4636	8	3	45
4637	10	3	35
4638	8	3	32
4639	9	2	47
4640	9	2	42
4641	10	4	29
4642	7	2	42
4643	8	4	7
4644	7	4	37
4645	9	4	19
4646	8	2	41
4647	10	3	30
4648	10	3	31
4649	8	4	40
4650	10	3	28
4651	8	4	29
4652	8	4	10
4653	9	4	43
4654	8	4	15
4655	6	3	48
4656	9	4	50
4657	6	3	29
4658	7	3	12
4659	10	3	13
4660	10	4	8
4661	10	3	1
4662	10	2	29
4663	10	2	41
4664	7	2	26
4665	10	4	28
4666	10	2	44
4667	8	2	19
4668	10	4	21
4669	9	2	9
4670	8	4	41
4671	8	2	2
4672	7	3	5
4673	7	4	26
4674	7	3	34
4675	6	3	2
4676	8	3	31
4677	10	2	37
4678	10	2	49
4679	9	4	50
4680	7	4	47
4681	9	3	47
4682	6	4	13
4683	8	4	37
4684	7	3	25
4685	6	3	22
4686	8	4	40
4687	7	4	35
4688	10	3	47
4689	8	4	10
4690	7	4	2
4691	10	4	33
4692	7	3	30
4693	10	3	45
4694	10	4	36
4695	10	2	35
4696	7	3	41
4697	9	3	36
4698	9	2	28
4699	7	2	23
4700	6	2	3
4701	9	3	37
4702	9	4	46
4703	7	2	41
4704	6	3	35
4705	9	2	34
4706	7	2	24
4707	6	4	30
4708	7	4	21
4709	7	2	16
4710	9	3	34
4711	9	2	38
4712	9	3	10
4713	8	4	5
4714	8	4	38
4715	6	4	2
4716	7	4	43
4717	8	2	46
4718	10	4	2
4719	10	2	40
4720	7	2	5
4721	10	3	24
4722	8	3	43
4723	6	2	3
4724	7	3	14
4725	6	3	32
4726	7	2	3
4727	9	3	39
4728	9	4	31
4729	7	4	23
4730	8	3	10
4731	7	3	10
4732	10	2	45
4733	10	2	13
4734	6	3	15
4735	10	4	35
4736	6	3	1
4737	6	3	24
4738	7	3	44
4739	9	4	21
4740	8	4	40
4741	10	2	15
4742	7	4	38
4743	7	4	43
4744	9	3	14
4745	7	4	10
4746	9	3	29
4747	8	2	46
4748	10	4	48
4749	9	2	24
4750	8	4	10
4751	7	2	27
4752	10	3	44
4753	6	3	39
4754	8	2	20
4755	7	2	13
4756	7	3	15
4757	8	2	38
4758	9	3	5
4759	8	3	39
4760	6	3	10
4761	10	4	28
4762	6	3	29
4763	7	3	6
4764	10	2	28
4765	9	3	30
4766	7	2	11
4767	6	4	19
4768	10	2	16
4769	10	4	36
4770	6	3	21
4771	10	4	37
4772	8	4	40
4773	9	4	19
4774	8	4	20
4775	6	2	24
4776	7	4	7
4777	6	4	35
4778	10	4	49
4779	7	2	32
4780	10	3	41
4781	6	3	10
4782	10	2	18
4783	9	4	7
4784	9	3	39
4785	8	4	31
4786	8	4	24
4787	9	4	18
4788	9	2	15
4789	7	3	24
4790	10	3	42
4791	10	2	44
4792	6	4	48
4793	7	3	29
4794	7	4	4
4795	9	4	34
4796	6	4	44
4797	8	3	48
4798	10	3	30
4799	7	4	3
4800	7	2	28
4801	6	3	40
4802	8	2	43
4803	8	2	28
4804	9	4	6
4805	6	2	37
4806	9	2	45
4807	10	3	10
4808	10	4	30
4809	7	3	19
4810	7	4	44
4811	6	2	47
4812	9	2	41
4813	10	4	26
4814	8	3	38
4815	8	3	32
4816	8	4	7
4817	10	4	15
4818	7	2	7
4819	8	3	21
4820	10	3	24
4821	10	4	7
4822	6	4	42
4823	8	3	2
4824	8	4	10
4825	7	4	30
4826	9	4	7
4827	6	3	28
4828	6	4	43
4829	8	3	18
4830	9	4	2
4831	7	3	44
4832	10	4	12
4833	9	4	9
4834	9	3	7
4835	8	2	29
4836	7	2	37
4837	7	4	7
4838	10	2	32
4839	8	2	42
4840	6	2	6
4841	10	4	33
4842	8	4	48
4843	9	4	41
4844	6	2	22
4845	7	2	35
4846	9	2	40
4847	6	2	36
4848	8	4	39
4849	6	4	2
4850	8	3	44
4851	10	4	15
4852	8	4	41
4853	6	2	20
4854	6	3	15
4855	6	3	49
4856	10	3	5
4857	9	4	2
4858	10	2	36
4859	6	4	33
4860	8	3	32
4861	8	3	1
4862	10	2	34
4863	10	4	23
4864	8	4	7
4865	7	4	32
4866	9	3	43
4867	7	4	21
4868	10	4	36
4869	6	3	35
4870	6	4	29
4871	8	3	40
4872	6	2	37
4873	9	2	29
4874	8	3	19
4875	6	2	42
4876	9	3	43
4877	10	2	27
4878	7	4	15
4879	6	4	21
4880	7	2	7
4881	9	3	6
4882	8	2	25
4883	8	3	36
4884	7	4	37
4885	7	3	50
4886	7	2	3
4887	9	2	36
4888	8	3	41
4889	10	4	25
4890	7	4	7
4891	10	2	44
4892	8	3	48
4893	10	3	32
4894	7	3	27
4895	9	2	5
4896	10	3	10
4897	7	3	15
4898	8	3	12
4899	6	2	41
4900	8	3	9
4901	6	2	34
4902	8	4	34
4903	10	3	47
4904	7	3	46
4905	9	4	2
4906	6	4	15
4907	6	2	43
4908	6	4	7
4909	9	3	36
4910	10	2	36
4911	8	2	42
4912	7	3	35
4913	8	3	25
4914	10	3	17
4915	9	2	43
4916	10	3	20
4917	7	2	28
4918	8	4	29
4919	10	4	48
4920	10	4	24
4921	6	4	10
4922	8	4	38
4923	6	2	13
4924	10	2	49
4925	6	2	38
4926	6	3	14
4927	10	4	24
4928	6	4	14
4929	10	3	28
4930	6	4	2
4931	7	3	43
4932	7	2	39
4933	6	4	29
4934	6	3	12
4935	7	4	20
4936	9	2	27
4937	9	4	13
4938	6	3	49
4939	7	3	20
4940	10	2	48
4941	7	2	39
4942	9	4	45
4943	6	2	34
4944	8	2	47
4945	10	4	40
4946	7	2	40
4947	10	4	20
4948	8	3	5
4949	9	4	31
4950	8	2	11
4951	6	3	46
4952	10	2	6
4953	10	2	38
4954	6	4	43
4955	7	3	42
4956	7	4	4
4957	6	4	29
4958	10	4	34
4959	8	4	48
4960	8	3	25
4961	8	4	37
4962	8	3	43
4963	9	2	29
4964	8	3	24
4965	8	4	7
4966	9	4	20
4967	7	3	41
4968	6	4	13
4969	8	4	38
4970	10	2	21
4971	8	2	10
4972	7	4	44
4973	9	4	47
4974	9	3	49
4975	6	3	41
4976	8	4	40
4977	10	4	10
4978	9	3	1
4979	8	2	38
4980	9	2	37
4981	8	2	2
4982	10	2	41
4983	6	3	34
4984	10	4	11
4985	6	2	24
4986	8	3	31
4987	10	3	20
4988	7	2	42
4989	9	3	35
4990	9	2	42
4991	10	2	34
4992	9	2	31
4993	6	4	17
4994	10	2	10
4995	9	3	32
4996	6	4	29
4997	9	2	34
4998	9	2	44
4999	10	4	37
5000	6	2	48
5001	7	2	28
5002	7	2	25
5003	7	2	28
5004	7	3	10
5005	10	3	40
5006	7	4	8
5007	8	2	4
5008	7	3	41
5009	10	4	31
5010	6	4	7
5011	6	4	47
5012	8	4	37
5013	8	2	39
5014	7	2	21
5015	7	3	1
5016	7	4	27
5017	7	4	37
5018	9	4	32
5019	6	3	7
5020	8	2	24
5021	6	2	10
5022	10	3	48
5023	10	2	49
5024	6	2	48
5025	7	2	10
5026	9	3	8
5027	9	2	9
5028	6	2	43
5029	9	2	6
5030	10	4	29
5031	10	3	31
5032	10	4	47
5033	10	4	10
5034	8	4	25
5035	10	3	31
5036	7	4	6
5037	7	3	10
5038	10	4	28
5039	7	2	38
5040	7	4	42
5041	10	2	10
5042	6	2	36
5043	8	4	48
5044	6	2	38
5045	9	4	37
5046	7	3	49
5047	6	3	50
5048	9	4	14
5049	7	4	22
5050	9	4	42
5051	9	3	34
5052	10	4	30
5053	6	2	11
5054	10	4	28
5055	9	3	24
5056	8	4	14
5057	8	2	35
5058	6	3	7
5059	7	4	22
5060	10	3	20
5061	9	4	39
5062	8	2	37
5063	10	3	15
5064	9	4	9
5065	10	2	46
5066	7	2	7
5067	9	2	36
5068	9	4	42
5069	8	4	4
5070	6	4	31
5071	10	2	4
5072	9	4	26
5073	9	3	34
5074	8	2	39
5075	7	4	10
5076	8	2	43
5077	6	2	7
5078	6	2	48
5079	6	3	40
5080	8	2	41
5081	9	2	1
5082	7	2	39
5083	8	4	43
5084	9	4	31
5085	9	2	1
5086	9	2	7
5087	8	3	29
5088	6	3	24
5089	10	3	31
5090	10	2	44
5091	7	3	18
5092	7	3	40
5093	6	3	44
5094	7	2	41
5095	7	4	5
5096	9	2	3
5097	8	4	29
5098	8	4	39
5099	7	3	19
5100	10	3	7
5101	7	2	28
5102	6	3	45
5103	6	4	32
5104	6	3	5
5105	9	4	30
5106	6	2	2
5107	6	2	12
5108	9	4	28
5109	6	4	42
5110	10	4	34
5111	9	2	39
5112	9	3	40
5113	6	4	36
5114	7	2	7
5115	7	2	15
5116	10	2	42
5117	7	4	5
5118	9	2	31
5119	7	4	39
5120	10	4	38
5121	9	2	5
5122	9	2	12
5123	8	3	34
5124	8	3	20
5125	8	4	39
5126	9	2	42
5127	8	3	29
5128	10	2	30
5129	7	4	17
5130	6	4	2
5131	8	4	18
5132	10	4	30
5133	6	2	1
5134	9	3	29
5135	9	2	5
5136	6	2	39
5137	10	3	37
5138	8	4	34
5139	7	2	43
5140	7	2	8
5141	7	2	21
5142	10	2	10
5143	8	4	37
5144	9	2	30
5145	6	3	48
5146	10	4	13
5147	9	3	38
5148	6	4	24
5149	9	3	28
5150	6	4	49
5151	9	3	20
5152	10	4	7
5153	8	3	32
5154	6	2	35
5155	9	4	49
5156	6	2	20
5157	7	3	28
5158	8	3	27
5159	9	2	6
5160	8	4	44
5161	7	2	43
5162	10	2	43
5163	10	3	46
5164	10	3	5
5165	9	2	28
5166	8	2	34
5167	8	2	26
5168	9	3	40
5169	9	3	23
5170	7	2	7
5171	6	3	17
5172	6	2	28
5173	9	2	42
5174	9	4	34
5175	6	3	2
5176	9	4	6
5177	6	3	22
5178	10	4	1
5179	8	4	9
5180	10	3	20
5181	7	4	22
5182	6	3	12
5183	9	2	35
5184	9	4	34
5185	8	2	32
5186	9	3	36
5187	6	2	38
5188	9	3	6
5189	10	2	46
5190	9	2	2
5191	8	2	17
5192	10	3	30
5193	6	3	29
5194	6	3	45
5195	9	4	7
5196	6	4	34
5197	10	3	21
5198	9	4	37
5199	8	2	48
5200	7	2	30
5201	6	3	29
5202	8	3	46
5203	6	4	39
5204	6	4	16
5205	9	4	46
5206	8	4	36
5207	6	2	1
5208	10	4	29
5209	8	3	1
5210	8	3	29
5211	10	3	31
5212	8	2	41
5213	6	3	38
5214	9	3	44
5215	9	4	34
5216	10	4	38
5217	7	3	5
5218	6	4	34
5219	6	4	15
5220	7	3	38
5221	10	4	46
5222	8	4	38
5223	10	2	33
5224	7	3	37
5225	7	4	20
5226	8	3	41
5227	6	4	10
5228	8	3	23
5229	9	4	41
5230	6	3	41
5231	8	3	36
5232	8	3	6
5233	9	3	28
5234	10	4	24
5235	6	3	29
5236	9	2	13
5237	7	4	24
5238	6	3	6
5239	6	2	23
5240	9	4	25
5241	10	2	28
5242	8	4	42
5243	10	3	3
5244	7	3	34
5245	6	4	40
5246	7	4	19
5247	10	4	25
5248	6	3	34
5249	7	2	19
5250	9	4	9
5251	9	2	14
5252	8	2	10
5253	6	2	44
5254	7	2	6
5255	6	2	41
5256	7	2	2
5257	7	2	36
5258	8	2	27
5259	8	4	21
5260	7	4	39
5261	6	3	32
5262	7	2	3
5263	6	4	40
5264	8	3	1
5265	10	3	15
5266	8	4	41
5267	6	3	46
5268	9	2	33
5269	6	2	31
5270	9	2	8
5271	8	4	2
5272	7	4	46
5273	9	4	9
5274	6	3	37
5275	8	3	34
5276	6	4	27
5277	9	3	7
5278	9	3	38
5279	7	2	39
5280	9	3	49
5281	9	4	35
5282	6	3	43
5283	8	3	39
5284	10	4	48
5285	10	3	30
5286	8	2	7
5287	10	2	7
5288	10	3	46
5289	9	2	34
5290	10	4	30
5291	10	4	33
5292	9	4	10
5293	9	2	20
5294	6	2	5
5295	10	3	33
5296	8	3	27
5297	7	3	2
5298	10	3	48
5299	10	2	29
5300	9	3	46
5301	10	3	29
5302	8	2	29
5303	7	4	41
5304	7	2	41
5305	10	3	37
5306	9	3	28
5307	9	4	19
5308	6	4	12
5309	6	2	10
5310	7	3	28
5311	10	4	44
5312	7	4	28
5313	7	2	2
5314	8	3	46
5315	8	2	35
5316	7	2	37
5317	10	2	7
5318	6	3	48
5319	6	4	38
5320	8	3	19
5321	6	2	7
5322	7	2	7
5323	9	2	10
5324	7	2	31
5325	9	3	48
5326	6	3	35
5327	10	3	4
5328	7	4	30
5329	9	3	37
5330	6	3	28
5331	9	4	2
5332	7	3	14
5333	8	4	12
5334	7	4	46
5335	6	4	48
5336	10	4	37
5337	10	4	21
5338	6	4	37
5339	8	2	15
5340	7	4	39
5341	10	3	3
5342	8	4	39
5343	6	2	28
5344	7	2	6
5345	7	4	28
5346	8	2	1
5347	10	3	29
5348	9	2	33
5349	10	4	28
5350	6	4	46
5351	10	4	13
5352	9	2	41
5353	9	3	18
5354	9	4	36
5355	8	4	2
5356	10	3	42
5357	10	2	35
5358	6	4	26
5359	9	2	32
5360	9	2	37
5361	10	4	38
5362	10	3	38
5363	9	4	34
5364	8	4	8
5365	7	4	24
5366	6	2	13
5367	8	3	6
5368	6	3	15
5369	10	3	23
5370	8	4	10
5371	9	3	40
5372	8	4	48
5373	10	4	14
5374	9	2	47
5375	7	3	24
5376	10	4	46
5377	9	2	7
5378	8	2	2
5379	6	3	31
5380	6	2	40
5381	8	4	32
5382	9	3	10
5383	7	2	9
5384	10	3	5
5385	8	3	13
5386	8	4	22
5387	6	3	29
5388	9	3	48
5389	6	3	33
5390	6	2	29
5391	9	3	29
5392	10	4	42
5393	9	3	43
5394	7	4	4
5395	7	2	29
5396	7	4	34
5397	7	4	2
5398	9	2	36
5399	7	4	16
5400	9	2	5
5401	10	2	39
5402	9	2	39
5403	7	2	1
5404	10	4	24
5405	7	4	48
5406	7	4	9
5407	9	4	35
5408	8	4	32
5409	9	2	21
5410	6	2	49
5411	9	3	27
5412	8	3	31
5413	10	2	48
5414	7	2	11
5415	9	2	39
5416	9	2	12
5417	9	3	41
5418	6	2	31
5419	6	4	9
5420	9	2	15
5421	10	4	35
5422	7	2	3
5423	6	4	46
5424	9	2	33
5425	7	2	35
5426	7	3	6
5427	7	2	1
5428	8	4	42
5429	9	2	49
5430	9	3	46
5431	6	4	21
5432	6	3	46
5433	7	4	18
5434	6	4	42
5435	8	4	45
5436	7	3	15
5437	6	4	27
5438	7	4	42
5439	6	3	29
5440	8	2	28
5441	8	4	48
5442	9	3	4
5443	6	4	19
5444	8	4	24
5445	6	2	49
5446	9	2	31
5447	10	2	32
5448	7	2	21
5449	7	4	35
5450	6	3	28
5451	8	2	36
5452	6	3	39
5453	9	2	30
5454	9	3	20
5455	6	2	30
5456	6	3	2
5457	7	2	21
5458	7	4	6
5459	10	4	26
5460	10	4	45
5461	7	3	43
5462	7	2	43
5463	9	4	9
5464	10	4	31
5465	10	4	36
5466	8	4	28
5467	10	2	7
5468	9	4	29
5469	9	4	39
5470	9	3	44
5471	8	4	24
5472	6	4	41
5473	10	3	43
5474	10	3	32
5475	7	2	28
5476	8	4	5
5477	10	4	28
5478	10	3	23
5479	8	2	27
5480	10	4	33
5481	6	4	7
5482	10	3	21
5483	8	2	33
5484	7	2	15
5485	6	2	21
5486	7	3	42
5487	6	4	8
5488	6	3	6
5489	7	4	44
5490	7	2	49
5491	7	3	7
5492	8	2	3
5493	7	3	44
5494	10	2	30
5495	8	4	43
5496	9	2	10
5497	7	3	13
5498	10	2	13
5499	7	3	49
5500	9	3	38
5501	10	3	36
5502	6	4	16
5503	6	3	2
5504	8	4	28
5505	8	2	1
5506	7	3	33
5507	6	4	9
5508	9	4	37
5509	9	4	23
5510	10	2	46
5511	9	4	38
5512	10	4	4
5513	8	3	38
5514	8	2	23
5515	10	2	31
5516	8	3	24
5517	10	3	7
5518	6	2	44
5519	10	3	5
5520	9	3	32
5521	10	2	46
5522	8	2	1
5523	9	2	49
5524	7	3	36
5525	10	4	33
5526	6	3	16
5527	6	3	34
5528	9	4	5
5529	10	2	24
5530	6	3	28
5531	10	2	32
5532	7	3	42
5533	10	3	42
5534	6	3	29
5535	9	4	32
5536	8	2	32
5537	7	2	7
5538	10	3	10
5539	8	4	30
5540	6	4	13
5541	6	2	20
5542	7	3	27
5543	9	4	49
5544	7	3	37
5545	9	2	18
5546	7	2	3
5547	7	3	23
5548	8	2	43
5549	8	2	40
5550	7	2	30
5551	8	3	43
5552	7	3	40
5553	7	3	35
5554	10	3	24
5555	8	3	14
5556	10	2	46
5557	10	3	1
5558	10	2	31
5559	9	4	5
5560	7	3	49
5561	9	3	36
5562	6	2	32
5563	9	4	18
5564	10	2	21
5565	8	2	49
5566	6	3	7
5567	8	2	3
5568	9	3	44
5569	9	2	4
5570	9	2	48
5571	10	3	43
5572	7	3	35
5573	10	4	2
5574	9	2	22
5575	6	3	23
5576	8	3	11
5577	10	3	6
5578	6	2	41
5579	9	2	5
5580	9	2	36
5581	6	3	16
5582	7	3	42
5583	6	3	18
5584	9	3	39
5585	8	2	21
5586	10	2	30
5587	7	4	1
5588	9	4	2
5589	7	4	11
5590	6	4	17
5591	10	4	46
5592	6	4	49
5593	10	2	19
5594	8	4	46
5595	10	4	2
5596	9	2	34
5597	7	2	2
5598	10	4	13
5599	10	3	49
5600	7	3	21
5601	8	2	16
5602	7	2	3
5603	8	4	5
5604	8	2	21
5605	9	3	25
5606	7	2	32
5607	8	3	36
5608	9	2	1
5609	9	4	24
5610	8	4	43
5611	10	4	40
5612	6	3	24
5613	6	2	15
5614	10	4	50
5615	10	3	14
5616	9	2	49
5617	8	4	7
5618	10	3	20
5619	10	3	28
5620	9	2	21
5621	7	2	37
5622	9	2	37
5623	7	4	14
5624	8	3	31
5625	6	3	18
5626	10	4	34
5627	9	4	10
5628	10	4	13
5629	6	3	49
5630	10	2	2
5631	6	4	30
5632	9	4	9
5633	6	4	42
5634	6	2	41
5635	9	4	19
5636	10	2	1
5637	10	3	6
5638	7	2	1
5639	8	4	20
5640	8	3	21
5641	6	3	1
5642	10	2	40
5643	7	4	5
5644	10	4	5
5645	9	2	49
5646	8	2	22
5647	7	3	44
5648	9	3	27
5649	6	4	2
5650	10	2	21
5651	9	3	23
5652	9	4	16
5653	6	4	5
5654	6	2	7
5655	9	3	1
5656	8	3	32
5657	9	2	34
5658	6	4	19
5659	10	2	49
5660	8	3	39
5661	6	4	4
5662	9	4	2
5663	9	2	45
5664	9	3	37
5665	9	2	5
5666	7	2	1
5667	6	2	42
5668	8	4	5
5669	10	4	13
5670	9	3	46
5671	8	2	48
5672	9	2	2
5673	7	2	16
5674	8	3	35
5675	10	3	48
5676	8	3	35
5677	6	2	35
5678	8	4	7
5679	7	4	25
5680	9	3	7
5681	7	3	41
5682	6	4	48
5683	7	4	28
5684	8	3	17
5685	8	4	16
5686	10	3	2
5687	8	2	25
5688	6	4	42
5689	9	4	7
5690	10	2	36
5691	9	2	40
5692	8	2	21
5693	6	4	36
5694	10	4	20
5695	10	3	43
5696	8	2	41
5697	10	2	35
5698	7	3	38
5699	8	3	42
5700	9	2	24
5701	8	4	48
5702	9	2	30
5703	9	3	12
5704	7	3	18
5705	8	2	46
5706	10	4	20
5707	8	2	49
5708	7	4	1
5709	8	4	5
5710	8	3	29
5711	7	2	48
5712	8	3	46
5713	7	3	30
5714	9	2	36
5715	8	4	44
5716	10	2	30
5717	6	2	7
5718	7	3	15
5719	9	4	1
5720	9	2	10
5721	8	2	11
5722	9	3	2
5723	10	3	22
5724	7	3	5
5725	10	2	30
5726	8	2	30
5727	10	3	38
5728	10	3	50
5729	6	3	29
5730	10	2	45
5731	6	4	34
5732	10	4	37
5733	7	3	34
5734	7	3	43
5735	6	2	46
5736	7	3	34
5737	9	2	30
5738	7	3	16
5739	9	4	28
5740	8	2	36
5741	10	3	42
5742	10	3	12
5743	6	3	40
5744	9	3	49
5745	7	3	45
5746	9	4	6
5747	7	2	49
5748	10	4	35
5749	6	3	18
5750	6	3	24
5751	6	2	37
5752	8	2	43
5753	6	4	39
5754	8	4	44
5755	6	4	5
5756	10	4	34
5757	8	4	41
5758	8	2	21
5759	8	2	28
5760	10	3	17
5761	6	3	28
5762	6	3	42
5763	8	4	46
5764	7	3	36
5765	9	4	49
5766	7	2	2
5767	6	4	6
5768	8	3	1
5769	7	4	39
5770	6	2	50
5771	9	4	23
5772	7	3	20
5773	9	3	37
5774	6	2	22
5775	10	4	24
5776	7	2	30
5777	10	2	30
5778	10	2	43
5779	10	4	46
5780	6	4	13
5781	10	4	31
5782	10	3	38
5783	8	3	48
5784	6	3	31
5785	9	4	13
5786	8	2	40
5787	8	4	14
5788	7	3	26
5789	6	4	35
5790	6	2	32
5791	7	2	46
5792	7	2	6
5793	9	3	42
5794	8	3	38
5795	8	2	10
5796	7	2	30
5797	8	4	40
5798	6	2	37
5799	7	4	39
5800	8	3	21
5801	7	4	1
5802	8	2	15
5803	10	4	9
5804	10	2	6
5805	8	3	22
5806	10	4	34
5807	9	3	14
5808	10	2	6
5809	9	4	28
5810	9	3	31
5811	9	2	9
5812	6	3	13
5813	9	3	35
5814	10	2	24
5815	7	4	36
5816	10	3	35
5817	6	3	48
5818	9	2	23
5819	8	4	36
5820	10	2	5
5821	8	4	19
5822	9	2	43
5823	7	2	20
5824	7	3	6
5825	9	2	48
5826	10	2	27
5827	7	2	10
5828	6	2	48
5829	9	3	1
5830	9	3	36
5831	9	3	39
5832	6	4	8
5833	9	4	1
5834	8	4	18
5835	6	3	10
5836	8	2	41
5837	7	2	40
5838	7	3	29
5839	10	2	36
5840	10	4	2
5841	6	4	43
5842	7	4	31
5843	7	4	39
5844	8	2	48
5845	6	4	10
5846	10	3	8
5847	6	4	7
5848	7	4	41
5849	7	4	13
5850	9	3	44
5851	8	3	6
5852	10	3	22
5853	9	2	20
5854	9	2	3
5855	8	4	5
5856	7	2	49
5857	9	4	10
5858	6	3	33
5859	9	2	49
5860	9	3	14
5861	9	2	45
5862	6	4	34
5863	9	4	36
5864	8	3	34
5865	7	3	32
5866	8	3	46
5867	9	2	25
5868	6	2	21
5869	9	2	1
5870	10	3	46
5871	10	2	30
5872	7	3	10
5873	7	4	48
5874	10	2	44
5875	10	3	38
5876	8	4	15
5877	6	4	28
5878	7	4	31
5879	10	3	39
5880	8	2	36
5881	7	2	48
5882	8	2	24
5883	7	2	5
5884	7	3	15
5885	8	3	17
5886	10	2	37
5887	6	2	32
5888	6	4	2
5889	9	3	5
5890	7	2	34
5891	9	4	36
5892	10	4	32
5893	10	2	46
5894	9	2	43
5895	7	4	47
5896	10	4	34
5897	7	2	20
5898	10	4	10
5899	7	3	14
5900	6	2	9
5901	9	4	38
5902	9	4	37
5903	9	4	40
5904	9	2	10
5905	8	4	1
5906	6	2	44
5907	8	4	43
5908	10	4	34
5909	9	3	20
5910	8	2	25
5911	9	3	10
5912	7	3	1
5913	10	2	37
5914	7	3	6
5915	9	2	40
5916	8	3	37
5917	6	2	15
5918	9	4	46
5919	7	3	41
5920	8	2	39
5921	6	4	34
5922	7	2	42
5923	10	3	31
5924	8	3	44
5925	7	4	28
5926	6	4	44
5927	9	4	32
5928	6	3	43
5929	7	3	46
5930	8	4	7
5931	10	4	23
5932	9	2	38
5933	7	4	38
5934	10	3	17
5935	9	4	15
5936	6	4	21
5937	9	4	7
5938	8	4	32
5939	10	4	8
5940	9	2	10
5941	10	4	35
5942	8	4	40
5943	7	2	29
5944	10	3	49
5945	10	4	13
5946	7	2	38
5947	8	4	31
5948	7	3	32
5949	8	3	35
5950	7	4	27
5951	9	2	24
5952	6	4	10
5953	6	3	6
5954	8	4	26
5955	9	4	15
5956	9	4	31
5957	6	2	15
5958	8	2	37
5959	10	2	21
5960	6	4	13
5961	9	3	21
5962	8	2	18
5963	7	2	14
5964	8	4	25
5965	7	3	24
5966	10	3	24
5967	10	4	10
5968	10	4	7
5969	10	3	28
5970	10	4	41
5971	8	2	43
5972	10	4	50
5973	10	2	43
5974	6	2	40
5975	7	3	17
5976	10	2	39
5977	7	3	45
5978	6	3	35
5979	7	4	42
5980	8	4	48
5981	6	4	10
5982	8	4	6
5983	9	2	37
5984	7	3	24
5985	7	2	12
5986	8	3	36
5987	9	2	5
5988	8	3	18
5989	9	4	33
5990	8	4	43
5991	8	2	5
5992	7	2	30
5993	10	3	7
5994	6	2	12
5995	8	3	18
5996	6	4	40
5997	10	2	42
5998	7	2	15
5999	8	3	28
6000	6	4	36
6001	8	3	36
6002	8	3	20
6003	6	3	37
6004	9	2	42
6005	7	3	20
6006	9	4	42
6007	8	4	36
6008	6	3	38
6009	6	4	44
6010	10	4	37
6011	8	4	43
6012	8	2	17
6013	9	4	33
6014	6	4	7
6015	9	2	22
6016	10	2	30
6017	8	4	27
6018	6	2	30
6019	9	2	44
6020	8	3	5
6021	10	2	41
6022	10	2	29
6023	10	4	13
6024	7	3	23
6025	9	4	44
6026	9	4	17
6027	10	3	49
6028	9	4	18
6029	8	2	10
6030	8	4	48
6031	8	2	15
6032	7	2	34
6033	10	3	15
6034	10	2	32
6035	9	3	47
6036	9	3	1
6037	7	4	30
6038	7	3	24
6039	9	3	7
6040	9	3	49
6041	10	3	42
6042	7	3	13
6043	9	3	8
6044	7	4	3
6045	6	3	38
6046	7	2	37
6047	8	3	37
6048	10	2	27
6049	9	2	28
6050	6	3	46
6051	6	3	26
6052	8	3	21
6053	6	3	8
6054	6	4	43
6055	8	3	31
6056	8	4	41
6057	9	4	27
6058	8	3	2
6059	7	4	6
6060	9	4	42
6061	9	4	15
6062	9	4	44
6063	10	2	22
6064	8	3	30
6065	9	4	30
6066	6	2	29
6067	6	3	46
6068	9	4	36
6069	10	3	28
6070	6	4	44
6071	8	4	45
6072	9	2	42
6073	6	3	2
6074	7	4	24
6075	8	3	39
6076	7	3	13
6077	9	3	31
6078	10	3	30
6079	9	3	22
6080	7	2	41
6081	7	4	45
6082	9	3	16
6083	8	3	38
6084	8	4	39
6085	8	2	47
6086	10	3	34
6087	8	4	26
6088	8	3	35
6089	9	3	20
6090	8	4	2
6091	9	3	15
6092	10	2	40
6093	6	4	10
6094	9	4	12
6095	10	2	10
6096	10	2	19
6097	9	3	18
6098	8	4	38
6099	10	4	34
6100	7	2	49
6101	9	3	40
6102	9	2	1
6103	8	2	11
6104	7	2	5
6105	9	3	38
6106	6	4	20
6107	8	4	42
6108	7	4	46
6109	8	2	18
6110	8	2	26
6111	10	2	6
6112	9	4	40
6113	10	3	1
6114	7	3	10
6115	10	3	41
6116	9	3	15
6117	8	2	2
6118	7	2	46
6119	8	3	29
6120	10	4	41
6121	9	3	30
6122	6	3	5
6123	10	2	32
6124	8	2	44
6125	8	3	35
6126	6	3	1
6127	8	3	22
6128	8	3	37
6129	9	2	36
6130	7	4	7
6131	8	4	48
6132	8	4	25
6133	10	4	40
6134	8	3	16
6135	8	2	42
6136	7	2	21
6137	6	4	47
6138	10	4	36
6139	7	2	40
6140	9	3	10
6141	7	4	26
6142	10	4	29
6143	6	2	13
6144	7	3	9
6145	7	2	10
6146	9	3	28
6147	7	2	41
6148	9	2	1
6149	6	3	42
6150	10	2	31
6151	6	3	35
6152	6	2	23
6153	6	3	7
6154	7	3	45
6155	9	2	34
6156	6	2	38
6157	7	3	24
6158	6	2	23
6159	7	2	21
6160	8	4	34
6161	9	4	13
6162	6	2	37
6163	10	4	29
6164	7	3	1
6165	9	3	2
6166	6	2	12
6167	8	3	40
6168	8	2	34
6169	7	2	22
6170	10	4	32
6171	8	4	10
6172	6	2	45
6173	10	2	31
6174	10	4	5
6175	10	2	18
6176	10	2	16
6177	10	4	49
6178	6	3	28
6179	7	2	21
6180	7	2	28
6181	10	2	35
6182	9	2	21
6183	6	4	10
6184	8	4	2
6185	7	4	26
6186	9	3	46
6187	8	4	14
6188	6	2	15
6189	9	4	40
6190	8	3	44
6191	6	4	28
6192	6	4	6
6193	9	4	28
6194	10	3	48
6195	6	4	27
6196	6	4	28
6197	7	3	7
6198	9	2	36
6199	8	4	43
6200	6	2	41
6201	8	2	31
6202	8	3	43
6203	8	3	24
6204	7	3	29
6205	9	4	34
6206	9	4	28
6207	7	4	46
6208	9	4	49
6209	7	4	10
6210	6	4	32
6211	7	4	46
6212	10	2	2
6213	6	3	1
6214	10	4	37
6215	10	2	38
6216	9	3	41
6217	10	3	37
6218	8	3	24
6219	9	4	28
6220	10	2	22
6221	9	3	15
6222	6	3	36
6223	9	2	37
6224	7	2	44
6225	6	2	42
6226	10	4	9
6227	9	3	20
6228	6	2	14
6229	7	2	10
6230	8	2	29
6231	10	4	7
6232	8	4	40
6233	7	2	32
6234	8	2	7
6235	6	2	43
6236	6	4	7
6237	8	4	41
6238	9	4	37
6239	6	4	48
6240	6	4	47
6241	10	2	7
6242	6	2	11
6243	8	4	36
6244	7	3	6
6245	9	2	41
6246	9	2	5
6247	8	4	44
6248	8	2	22
6249	9	4	44
6250	7	4	35
6251	8	4	44
6252	7	3	4
6253	7	3	22
6254	9	4	30
6255	9	4	7
6256	9	4	25
6257	7	4	39
6258	7	4	15
6259	6	2	42
6260	9	4	5
6261	6	3	41
6262	6	3	23
6263	7	3	30
6264	7	4	40
6265	9	3	44
6266	10	2	15
6267	10	4	6
6268	9	4	32
6269	10	3	39
6270	9	3	24
6271	9	3	30
6272	8	4	24
6273	10	2	50
6274	10	3	7
6275	8	2	39
6276	6	3	2
6277	6	3	31
6278	10	2	34
6279	10	4	43
6280	8	3	36
6281	8	3	15
6282	7	3	41
6283	7	4	5
6284	9	3	2
6285	8	4	44
6286	6	4	38
6287	7	2	35
6288	7	4	7
6289	8	2	28
6290	9	3	29
6291	6	4	48
6292	7	2	6
6293	9	3	42
6294	7	4	15
6295	9	3	41
6296	7	2	33
6297	9	4	41
6298	9	2	21
6299	6	3	2
6300	6	3	29
6301	10	2	33
6302	7	3	32
6303	8	3	40
6304	10	2	25
6305	7	4	45
6306	7	3	4
6307	8	2	47
6308	6	2	42
6309	8	3	29
6310	8	2	49
6311	6	2	20
6312	8	4	34
6313	7	4	34
6314	8	3	23
6315	10	2	19
6316	6	4	42
6317	6	2	7
6318	7	3	5
6319	9	3	42
6320	8	3	30
6321	8	3	30
6322	9	4	17
6323	7	3	30
6324	10	2	42
6325	9	3	35
6326	9	2	43
6327	9	2	8
6328	10	4	1
6329	6	4	36
6330	6	2	32
6331	9	4	35
6332	8	3	20
6333	8	3	35
6334	8	2	46
6335	10	2	23
6336	10	4	40
6337	9	3	24
6338	7	2	43
6339	9	2	32
6340	7	4	15
6341	7	3	40
6342	6	2	43
6343	10	2	12
6344	6	2	26
6345	10	4	28
6346	8	4	37
6347	7	4	6
6348	10	2	5
6349	8	3	38
6350	6	2	34
6351	9	2	30
6352	9	2	21
6353	9	3	10
6354	9	4	30
6355	9	2	49
6356	6	2	14
6357	6	3	45
6358	6	2	7
6359	9	3	28
6360	9	2	6
6361	9	2	40
6362	10	2	32
6363	8	3	45
6364	6	4	44
6365	9	2	13
6366	6	2	34
6367	8	4	12
6368	9	3	13
6369	6	2	17
6370	6	4	42
6371	8	2	2
6372	10	2	23
6373	8	2	30
6374	7	4	46
6375	7	2	39
6376	8	2	35
6377	9	4	29
6378	10	3	43
6379	8	3	46
6380	9	4	33
6381	7	4	23
6382	9	3	19
6383	9	2	35
6384	6	3	7
6385	7	4	42
6386	6	2	39
6387	7	3	29
6388	10	2	44
6389	6	2	46
6390	7	4	27
6391	6	3	29
6392	10	4	44
6393	9	3	50
6394	9	4	1
6395	6	3	45
6396	6	4	5
6397	6	3	30
6398	10	2	34
6399	8	4	40
6400	8	4	33
6401	8	2	18
6402	9	3	43
6403	6	4	8
6404	7	4	5
6405	7	4	6
6406	6	3	46
6407	6	4	4
6408	10	4	2
6409	7	4	44
6410	10	2	20
6411	8	3	15
6412	10	4	7
6413	6	4	36
6414	10	2	30
6415	6	3	34
6416	7	4	35
6417	6	3	36
6418	8	3	38
6419	10	2	2
6420	8	2	36
6421	8	2	24
6422	6	2	5
6423	10	2	32
6424	10	4	48
6425	8	3	49
6426	7	2	29
6427	10	3	1
6428	9	4	7
6429	8	2	10
6430	10	2	23
6431	9	3	35
6432	8	2	21
6433	9	3	28
6434	6	2	39
6435	10	4	38
6436	9	2	34
6437	9	2	47
6438	7	3	37
6439	10	3	41
6440	7	2	37
6441	9	4	20
6442	6	2	43
6443	7	3	28
6444	10	2	12
6445	6	2	15
6446	7	2	30
6447	6	2	40
6448	7	2	15
6449	9	2	18
6450	9	4	46
6451	9	3	44
6452	8	3	49
6453	8	3	28
6454	10	3	46
6455	7	4	10
6456	8	4	31
6457	10	2	14
6458	8	4	9
6459	6	4	34
6460	6	4	41
6461	7	4	36
6462	8	3	37
6463	7	3	17
6464	9	4	29
6465	6	2	23
6466	7	2	44
6467	7	4	8
6468	8	2	10
6469	8	2	30
6470	8	3	15
6471	9	3	48
6472	6	3	30
6473	8	3	49
6474	10	3	9
6475	9	2	21
6476	10	2	42
6477	10	3	37
6478	7	3	2
6479	6	2	35
6480	9	4	41
6481	8	3	2
6482	10	4	26
6483	10	4	36
6484	10	2	37
6485	7	4	7
6486	6	3	37
6487	10	3	37
6488	6	3	18
6489	7	3	10
6490	9	2	10
6491	10	3	24
6492	8	3	41
6493	6	2	43
6494	7	4	49
6495	7	2	38
6496	9	3	6
6497	6	4	14
6498	10	2	1
6499	7	4	21
6500	7	2	7
6501	9	2	6
6502	7	2	43
6503	7	4	21
6504	9	4	46
6505	6	3	34
6506	7	2	46
6507	7	3	42
6508	9	4	5
6509	8	3	26
6510	8	2	46
6511	9	3	24
6512	8	3	24
6513	6	2	2
6514	7	4	13
6515	6	3	8
6516	6	2	48
6517	9	4	39
6518	7	4	15
6519	9	4	7
6520	6	2	16
6521	9	2	42
6522	6	4	31
6523	10	2	30
6524	10	3	36
6525	9	2	28
6526	9	4	47
6527	9	3	5
6528	7	4	7
6529	7	2	9
6530	10	3	4
6531	6	2	7
6532	6	2	7
6533	10	4	28
6534	9	4	25
6535	8	2	23
6536	7	4	11
6537	9	3	29
6538	9	3	25
6539	10	3	42
6540	9	4	35
6541	8	2	24
6542	6	2	32
6543	8	2	25
6544	10	2	30
6545	6	3	42
6546	6	2	14
6547	10	2	19
6548	8	3	49
6549	6	2	42
6550	10	4	10
6551	8	4	42
6552	8	4	28
6553	6	4	16
6554	7	4	39
6555	10	4	33
6556	7	4	28
6557	10	4	44
6558	7	4	24
6559	8	3	40
6560	7	2	48
6561	8	2	40
6562	8	3	30
6563	10	4	14
6564	7	2	32
6565	7	4	43
6566	7	4	21
6567	10	2	20
6568	10	2	12
6569	6	2	38
6570	9	2	7
6571	8	2	31
6572	6	2	5
6573	8	2	18
6574	9	3	10
6575	10	3	6
6576	10	4	15
6577	8	3	25
6578	9	2	36
6579	9	2	6
6580	10	4	35
6581	9	3	42
6582	6	2	50
6583	6	2	34
6584	10	4	35
6585	9	3	32
6586	6	2	39
6587	10	4	41
6588	7	3	45
6589	6	2	25
6590	9	3	2
6591	8	4	30
6592	9	3	39
6593	10	3	43
6594	6	3	42
6595	10	3	43
6596	9	4	7
6597	9	3	17
6598	10	2	29
6599	9	3	43
6600	7	2	13
6601	8	4	8
6602	7	2	48
6603	6	2	23
6604	6	3	15
6605	6	2	39
6606	8	3	37
6607	10	3	20
6608	6	2	10
6609	6	2	20
6610	9	2	2
6611	10	4	24
6612	9	4	34
6613	8	2	20
6614	7	2	49
6615	7	4	36
6616	8	3	15
6617	10	3	16
6618	6	2	39
6619	8	4	15
6620	8	4	47
6621	6	4	32
6622	9	2	36
6623	6	3	6
6624	6	4	43
6625	10	4	37
6626	8	4	34
6627	9	3	37
6628	7	4	24
6629	9	2	40
6630	9	4	6
6631	9	2	24
6632	8	2	31
6633	6	2	13
6634	7	3	16
6635	8	4	40
6636	9	4	5
6637	8	4	28
6638	8	2	1
6639	7	3	6
6640	8	2	8
6641	6	2	48
6642	7	3	31
6643	9	3	44
6644	10	3	17
6645	8	4	43
6646	8	3	34
6647	6	4	5
6648	8	4	10
6649	7	3	46
6650	6	4	31
6651	9	4	7
6652	10	2	7
6653	9	4	40
6654	9	2	29
6655	8	3	29
6656	7	4	30
6657	6	3	23
6658	6	2	21
6659	6	4	6
6660	8	3	44
6661	10	3	17
6662	7	2	41
6663	10	4	49
6664	9	2	10
6665	9	3	43
6666	10	3	17
6667	10	3	2
6668	6	2	12
6669	9	3	28
6670	8	2	42
6671	6	3	21
6672	10	3	39
6673	10	3	44
6674	7	2	10
6675	9	3	29
6676	6	4	43
6677	8	3	10
6678	9	4	21
6679	9	3	28
6680	7	4	28
6681	6	3	4
6682	7	3	35
6683	8	4	12
6684	9	2	47
6685	8	2	48
6686	6	3	29
6687	9	4	34
6688	7	3	46
6689	10	4	30
6690	7	4	31
6691	7	2	19
6692	7	4	6
6693	9	3	25
6694	6	3	45
6695	8	3	44
6696	6	4	40
6697	7	3	21
6698	7	3	49
6699	9	2	1
6700	6	2	26
6701	7	3	20
6702	7	3	37
6703	8	2	2
6704	8	4	21
6705	10	4	36
6706	8	2	28
6707	6	2	18
6708	9	4	21
6709	8	2	37
6710	6	2	35
6711	10	2	1
6712	8	4	46
6713	6	3	48
6714	9	3	7
6715	9	2	1
6716	6	2	15
6717	10	2	23
6718	7	3	20
6719	9	4	2
6720	7	2	7
6721	10	2	41
6722	8	2	41
6723	7	3	42
6724	10	3	7
6725	9	3	29
6726	8	3	15
6727	10	4	40
6728	7	3	41
6729	8	4	23
6730	10	4	42
6731	6	3	39
6732	9	2	19
6733	6	2	41
6734	8	4	28
6735	9	3	15
6736	7	3	28
6737	10	2	34
6738	10	3	20
6739	8	3	43
6740	9	2	7
6741	6	3	2
6742	10	4	29
6743	8	3	39
6744	7	2	49
6745	9	3	1
6746	7	4	3
6747	9	4	29
6748	6	2	38
6749	7	4	30
6750	6	4	45
6751	9	2	42
6752	10	2	37
6753	6	3	44
6754	9	2	48
6755	7	3	11
6756	7	2	10
6757	7	4	2
6758	6	2	12
6759	8	4	22
6760	8	4	4
6761	8	2	6
6762	10	3	1
6763	7	2	24
6764	9	2	10
6765	8	2	20
6766	7	4	3
6767	6	2	25
6768	9	3	5
6769	10	3	50
6770	7	3	28
6771	7	3	27
6772	7	2	33
6773	6	3	22
6774	10	2	20
6775	9	3	20
6776	9	4	42
6777	9	4	1
6778	6	4	46
6779	10	3	38
6780	6	2	24
6781	8	4	30
6782	7	2	21
6783	9	2	34
6784	10	2	7
6785	7	2	31
6786	8	4	13
6787	6	2	32
6788	7	2	15
6789	7	2	39
6790	7	4	6
6791	8	2	11
6792	10	4	39
6793	7	3	12
6794	10	4	30
6795	8	2	42
6796	8	4	50
6797	8	4	5
6798	9	3	43
6799	7	3	49
6800	7	3	28
6801	10	4	38
6802	7	2	2
6803	10	4	29
6804	6	4	48
6805	6	2	10
6806	10	3	39
6807	6	2	7
6808	6	4	2
6809	9	3	27
6810	10	3	29
6811	9	3	39
6812	9	2	45
6813	6	3	42
6814	6	2	46
6815	6	2	49
6816	9	2	43
6817	8	4	29
6818	8	3	20
6819	6	4	37
6820	9	2	9
6821	6	3	31
6822	6	2	20
6823	10	3	43
6824	8	2	30
6825	10	2	38
6826	9	4	41
6827	7	2	42
6828	7	2	8
6829	8	4	32
6830	8	4	21
6831	6	3	43
6832	9	2	11
6833	9	2	10
6834	6	2	7
6835	10	4	36
6836	7	2	43
6837	8	2	5
6838	10	4	28
6839	9	4	32
6840	8	4	34
6841	8	3	2
6842	10	2	24
6843	9	2	1
6844	6	3	37
6845	7	2	2
6846	8	3	47
6847	10	4	41
6848	7	3	4
6849	6	2	37
6850	10	3	34
6851	10	3	29
6852	8	3	48
6853	7	4	12
6854	7	4	10
6855	8	4	7
6856	6	2	21
6857	10	3	42
6858	10	3	48
6859	8	4	32
6860	8	4	14
6861	8	2	15
6862	6	3	35
6863	7	3	39
6864	10	4	23
6865	10	4	40
6866	7	2	30
6867	8	2	48
6868	8	3	29
6869	10	3	28
6870	10	4	39
6871	7	4	43
6872	10	4	5
6873	7	2	7
6874	8	2	41
6875	6	3	8
6876	7	3	15
6877	7	3	48
6878	9	2	35
6879	6	2	44
6880	10	3	43
6881	6	3	37
6882	9	4	30
6883	8	3	35
6884	9	4	41
6885	10	4	1
6886	7	2	48
6887	7	4	23
6888	10	3	40
6889	9	3	38
6890	10	3	20
6891	8	3	22
6892	8	4	10
6893	9	4	13
6894	6	4	24
6895	9	3	29
6896	6	3	39
6897	6	4	5
6898	10	4	19
6899	9	4	29
6900	7	4	15
6901	10	4	26
6902	8	3	19
6903	10	3	34
6904	8	4	14
6905	8	4	41
6906	8	2	31
6907	10	3	32
6908	10	3	41
6909	10	2	43
6910	8	4	34
6911	9	3	45
6912	9	2	22
6913	9	2	46
6914	7	2	43
6915	6	4	7
6916	7	3	48
6917	6	4	39
6918	9	4	18
6919	8	3	2
6920	10	4	42
6921	10	4	48
6922	9	4	30
6923	9	4	35
6924	6	3	1
6925	8	2	43
6926	9	4	9
6927	8	3	14
6928	9	4	21
6929	9	3	49
6930	9	2	43
6931	8	2	32
6932	10	3	41
6933	10	3	41
6934	6	4	32
6935	10	2	5
6936	6	2	32
6937	7	2	2
6938	10	3	10
6939	6	3	19
6940	9	2	8
6941	7	2	44
6942	7	2	46
6943	8	3	23
6944	7	3	50
6945	6	4	50
6946	9	3	40
6947	7	2	10
6948	7	4	36
6949	8	2	1
6950	7	3	38
6951	8	4	14
6952	9	2	35
6953	9	3	1
6954	7	3	45
6955	6	3	44
6956	7	4	5
6957	6	4	34
6958	8	3	37
6959	9	4	39
6960	6	2	18
6961	9	3	48
6962	6	4	27
6963	10	4	41
6964	6	3	38
6965	7	2	48
6966	9	4	12
6967	10	2	32
6968	9	3	23
6969	6	2	1
6970	6	3	20
6971	7	4	27
6972	10	4	34
6973	10	2	24
6974	7	4	43
6975	9	4	28
6976	10	2	10
6977	10	4	7
6978	8	3	48
6979	7	3	17
6980	10	2	21
6981	6	4	48
6982	6	4	5
6983	10	2	44
6984	6	2	41
6985	9	4	49
6986	8	3	16
6987	10	2	47
6988	9	2	10
6989	10	2	5
6990	7	4	2
6991	7	2	47
6992	6	3	48
6993	7	3	37
6994	7	3	32
6995	7	4	14
6996	7	4	24
6997	7	4	33
6998	6	2	35
6999	6	3	10
7000	6	2	42
7001	9	2	37
7002	7	4	33
7003	6	2	16
7004	8	4	1
7005	10	2	6
7006	7	4	42
7007	9	4	7
7008	8	3	30
7009	8	2	40
7010	6	4	29
7011	6	4	20
7012	7	3	21
7013	7	2	18
7014	6	2	43
7015	8	3	47
7016	6	2	11
7017	9	3	41
7018	6	2	30
7019	6	2	44
7020	10	3	38
7021	6	3	28
7022	6	3	2
7023	6	3	43
7024	8	3	35
7025	7	3	4
7026	9	4	1
7027	6	3	42
7028	9	2	2
7029	9	3	20
7030	8	4	46
7031	9	3	35
7032	6	2	46
7033	8	2	40
7034	6	2	2
7035	9	3	15
7036	7	2	2
7037	10	3	7
7038	6	2	47
7039	7	2	35
7040	8	3	24
7041	6	2	29
7042	9	3	40
7043	7	3	6
7044	8	3	25
7045	6	3	5
7046	9	3	32
7047	6	2	49
7048	10	4	44
7049	9	3	5
7050	6	4	32
7051	6	3	6
7052	9	2	21
7053	10	3	19
7054	7	4	30
7055	9	2	32
7056	7	3	34
7057	6	2	29
7058	8	2	36
7059	8	4	49
7060	10	4	39
7061	6	2	49
7062	6	3	6
7063	10	2	36
7064	8	3	11
7065	9	2	2
7066	9	2	37
7067	10	3	10
7068	8	4	13
7069	8	4	15
7070	6	3	24
7071	8	3	20
7072	10	3	19
7073	7	4	37
7074	10	2	44
7075	8	4	4
7076	10	4	23
7077	10	2	42
7078	7	2	24
7079	10	3	44
7080	9	2	40
7081	6	3	22
7082	6	4	27
7083	9	2	2
7084	6	2	22
7085	10	2	9
7086	10	2	34
7087	7	2	34
7088	9	4	17
7089	8	3	38
7090	8	3	6
7091	10	4	31
7092	8	2	38
7093	10	3	42
7094	9	3	34
7095	9	3	44
7096	7	3	5
7097	7	2	43
7098	9	3	19
7099	8	3	40
7100	7	3	41
7101	10	4	46
7102	10	2	35
7103	8	4	46
7104	6	4	36
7105	10	2	46
7106	10	3	24
7107	8	4	17
7108	10	3	1
7109	10	4	36
7110	8	2	21
7111	6	4	34
7112	10	3	46
7113	8	4	16
7114	8	4	44
7115	10	3	17
7116	9	4	10
7117	8	3	41
7118	6	4	28
7119	7	4	10
7120	8	3	7
7121	9	4	44
7122	6	2	38
7123	9	4	29
7124	7	2	32
7125	10	3	10
7126	9	2	21
7127	6	2	30
7128	7	2	25
7129	10	3	48
7130	6	3	43
7131	6	4	21
7132	7	3	21
7133	8	4	10
7134	6	2	43
7135	9	4	22
7136	9	4	49
7137	6	4	35
7138	7	3	10
7139	9	2	36
7140	8	3	28
7141	8	3	38
7142	7	4	50
7143	9	3	27
7144	7	2	38
7145	7	4	38
7146	8	4	2
7147	9	3	13
7148	7	3	32
7149	7	3	17
7150	6	2	39
7151	7	4	49
7152	10	3	2
7153	9	4	50
7154	8	2	46
7155	7	4	17
7156	10	3	25
7157	6	2	9
7158	9	3	3
7159	10	2	35
7160	10	2	6
7161	7	2	1
7162	9	2	10
7163	6	2	16
7164	9	2	32
7165	7	3	35
7166	7	2	34
7167	8	3	31
7168	8	3	42
7169	8	4	15
7170	6	3	20
7171	8	4	46
7172	8	2	5
7173	6	2	41
7174	10	4	20
7175	10	2	38
7176	6	4	43
7177	7	3	18
7178	9	3	30
7179	8	4	6
7180	8	3	33
7181	9	2	49
7182	7	3	34
7183	9	4	25
7184	9	3	37
7185	10	4	36
7186	8	4	4
7187	7	2	28
7188	6	4	24
7189	7	3	5
7190	7	3	43
7191	8	3	48
7192	8	3	49
7193	8	4	13
7194	9	3	47
7195	7	4	41
7196	6	4	2
7197	7	2	49
7198	7	3	22
7199	8	2	17
7200	10	2	46
7201	6	2	48
7202	8	3	41
7203	6	4	43
7204	7	3	30
7205	8	2	18
7206	7	4	37
7207	7	2	42
7208	8	2	30
7209	6	3	36
7210	9	2	27
7211	6	3	46
7212	10	2	13
7213	8	3	43
7214	10	4	7
7215	6	2	43
7216	8	3	34
7217	9	4	18
7218	9	2	48
7219	10	3	28
7220	6	4	43
7221	9	2	7
7222	10	3	49
7223	6	2	35
7224	6	2	7
7225	7	4	39
7226	10	3	2
7227	8	2	33
7228	10	3	10
7229	8	2	5
7230	7	4	48
7231	8	3	42
7232	10	3	23
7233	10	2	44
7234	9	2	2
7235	9	4	2
7236	6	3	17
7237	10	4	43
7238	8	3	1
7239	10	2	39
7240	7	4	35
7241	6	2	46
7242	10	4	49
7243	10	3	36
7244	9	4	29
7245	10	4	49
7246	9	3	21
7247	6	3	6
7248	8	4	34
7249	6	4	43
7250	6	3	3
7251	6	2	6
7252	9	3	48
7253	10	3	38
7254	7	3	5
7255	7	2	16
7256	7	3	21
7257	6	4	16
7258	8	4	24
7259	8	2	16
7260	10	4	2
7261	10	2	37
7262	8	2	21
7263	10	2	42
7264	7	2	15
7265	10	2	41
7266	6	4	6
7267	6	2	37
7268	9	3	27
7269	9	4	21
7270	7	2	30
7271	7	3	36
7272	9	2	24
7273	8	3	10
7274	9	4	26
7275	6	4	20
7276	8	2	7
7277	6	4	12
7278	8	4	43
7279	7	4	42
7280	10	2	22
7281	9	2	34
7282	8	3	9
7283	10	2	5
7284	10	4	28
7285	10	4	13
7286	6	3	42
7287	7	2	30
7288	10	2	10
7289	9	2	33
7290	7	4	32
7291	8	2	36
7292	7	4	43
7293	7	3	18
7294	8	2	15
7295	6	3	42
7296	6	4	44
7297	8	2	36
7298	6	2	33
7299	10	4	42
7300	7	3	43
7301	10	4	30
7302	10	4	46
7303	7	2	38
7304	8	3	35
7305	8	3	41
7306	9	2	10
7307	10	4	2
7308	7	4	41
7309	7	2	1
7310	9	4	44
7311	10	4	4
7312	7	4	49
7313	7	4	35
7314	6	2	46
7315	10	2	48
7316	10	3	24
7317	7	2	5
7318	8	2	23
7319	6	4	49
7320	10	3	13
7321	7	2	2
7322	9	4	15
7323	10	3	28
7324	8	4	25
7325	7	2	30
7326	10	4	1
7327	7	3	20
7328	8	2	34
7329	7	3	5
7330	10	2	2
7331	8	4	34
7332	9	3	16
7333	10	4	49
7334	7	4	36
7335	10	4	27
7336	8	2	6
7337	9	4	44
7338	8	2	25
7339	7	2	10
7340	7	3	39
7341	10	3	20
7342	9	2	45
7343	6	2	16
7344	7	3	18
7345	10	2	45
7346	10	4	15
7347	7	3	4
7348	8	2	5
7349	6	2	37
7350	7	2	21
7351	10	2	37
7352	6	2	24
7353	10	3	48
7354	9	4	7
7355	8	4	35
7356	6	4	37
7357	8	3	23
7358	9	4	10
7359	7	3	34
7360	7	3	29
7361	8	2	50
7362	7	2	48
7363	10	4	30
7364	7	4	1
7365	9	4	47
7366	8	2	28
7367	7	3	2
7368	9	3	31
7369	7	3	46
7370	6	3	21
7371	7	2	49
7372	10	3	29
7373	9	3	12
7374	10	2	36
7375	6	2	28
7376	6	4	41
7377	6	2	1
7378	6	4	6
7379	10	2	43
7380	7	3	35
7381	7	2	31
7382	9	3	15
7383	6	3	24
7384	9	3	49
7385	7	3	28
7386	9	3	49
7387	9	3	28
7388	9	3	48
7389	9	4	21
7390	10	4	39
7391	9	3	29
7392	8	3	10
7393	8	4	6
7394	8	3	42
7395	9	2	15
7396	8	4	33
7397	7	2	34
7398	9	2	21
7399	6	2	31
7400	10	3	29
7401	8	4	6
7402	6	3	31
7403	10	2	37
7404	8	3	48
7405	9	3	32
7406	9	3	37
7407	6	2	24
7408	9	4	7
7409	9	4	7
7410	6	4	34
7411	10	2	39
7412	6	3	45
7413	8	2	32
7414	10	4	35
7415	8	2	35
7416	6	4	50
7417	8	4	18
7418	7	4	36
7419	10	2	19
7420	6	3	50
7421	7	3	43
7422	7	3	6
7423	7	3	25
7424	6	2	23
7425	7	3	20
7426	6	3	32
7427	7	2	14
7428	8	2	7
7429	8	3	20
7430	8	3	5
7431	6	3	2
7432	8	2	43
7433	10	3	28
7434	9	2	37
7435	9	3	24
7436	7	4	30
7437	7	2	31
7438	6	3	24
7439	7	2	11
7440	9	4	2
7441	7	3	33
7442	9	2	41
7443	8	2	30
7444	6	4	1
7445	10	4	1
7446	6	4	38
7447	7	3	34
7448	8	3	48
7449	9	2	2
7450	7	2	2
7451	6	4	18
7452	7	4	31
7453	6	2	40
7454	6	2	13
7455	10	3	7
7456	6	2	3
7457	10	2	30
7458	6	3	11
7459	6	3	21
7460	10	3	7
7461	8	2	46
7462	6	3	32
7463	9	3	39
7464	7	2	33
7465	9	2	10
7466	6	4	49
7467	7	2	46
7468	8	3	5
7469	7	3	37
7470	6	4	38
7471	8	3	49
7472	6	3	23
7473	8	2	50
7474	7	2	36
7475	8	4	46
7476	8	4	9
7477	10	4	32
7478	10	3	48
7479	8	4	14
7480	10	2	40
7481	10	2	37
7482	7	2	21
7483	6	4	31
7484	9	3	23
7485	10	2	2
7486	9	4	46
7487	10	4	29
7488	8	3	37
7489	6	2	21
7490	6	2	2
7491	10	3	40
7492	10	2	35
7493	6	3	32
7494	9	4	31
7495	7	3	44
7496	7	2	5
7497	10	4	16
7498	8	2	42
7499	8	4	28
7500	8	4	41
7501	8	3	9
7502	8	3	48
7503	8	4	25
7504	9	2	28
7505	10	3	48
7506	6	3	35
7507	6	2	38
7508	6	2	41
7509	9	4	46
7510	9	3	9
7511	10	3	40
7512	9	4	2
7513	6	2	29
7514	6	2	39
7515	10	2	33
7516	10	3	43
7517	7	3	29
7518	6	3	48
7519	6	3	20
7520	8	3	24
7521	6	2	43
7522	9	2	21
7523	9	2	48
7524	7	4	41
7525	9	2	36
7526	10	4	38
7527	7	2	5
7528	8	2	42
7529	7	4	46
7530	10	3	40
7531	9	2	37
7532	9	2	48
7533	8	3	31
7534	6	3	40
7535	8	3	37
7536	6	2	20
7537	7	3	22
7538	8	2	15
7539	10	2	41
7540	9	2	3
7541	7	4	2
7542	6	4	39
7543	8	4	22
7544	6	3	5
7545	7	3	32
7546	6	3	46
7547	7	2	2
7548	8	2	11
7549	6	2	22
7550	6	3	35
7551	7	4	7
7552	6	4	47
7553	9	3	43
7554	10	4	6
7555	8	2	24
7556	8	2	9
7557	7	4	34
7558	9	2	29
7559	6	4	10
7560	8	4	29
7561	8	3	43
7562	7	2	5
7563	9	2	16
7564	9	2	32
7565	6	2	48
7566	8	3	46
7567	9	4	43
7568	6	4	28
7569	10	3	29
7570	6	4	44
7571	8	3	31
7572	8	2	37
7573	10	4	5
7574	9	3	49
7575	9	4	21
7576	6	2	22
7577	7	2	28
7578	9	4	10
7579	6	2	29
7580	10	3	1
7581	7	4	21
7582	6	3	34
7583	7	3	15
7584	6	4	27
7585	9	4	5
7586	8	2	31
7587	7	4	43
7588	9	3	7
7589	6	2	1
7590	6	4	35
7591	6	4	11
7592	6	4	30
7593	10	3	36
7594	7	4	13
7595	6	3	31
7596	9	3	20
7597	6	3	18
7598	9	2	20
7599	8	3	32
7600	6	4	16
7601	7	4	32
7602	7	4	12
7603	7	3	43
7604	8	2	15
7605	8	4	37
7606	6	2	40
7607	10	3	19
7608	10	2	15
7609	6	2	42
7610	7	2	15
7611	7	2	42
7612	7	3	15
7613	9	4	49
7614	8	2	24
7615	7	2	35
7616	7	3	21
7617	6	4	1
7618	6	2	10
7619	10	4	27
7620	10	2	3
7621	7	4	1
7622	8	4	7
7623	10	3	37
7624	9	2	49
7625	8	4	43
7626	9	2	49
7627	8	4	6
7628	8	4	2
7629	9	2	7
7630	8	3	28
7631	7	4	30
7632	8	2	11
7633	6	3	28
7634	9	2	21
7635	10	2	30
7636	7	3	31
7637	9	4	35
7638	7	3	46
7639	9	2	45
7640	10	4	7
7641	6	3	8
7642	9	3	42
7643	8	3	36
7644	8	3	27
7645	8	4	15
7646	10	2	39
7647	7	3	10
7648	10	4	44
7649	10	3	36
7650	9	3	49
7651	7	4	32
7652	8	2	45
7653	8	3	40
7654	6	4	31
7655	6	4	44
7656	9	3	34
7657	9	2	10
7658	9	4	13
7659	8	2	10
7660	10	2	41
7661	6	3	44
7662	9	4	47
7663	6	3	42
7664	10	4	15
7665	10	2	36
7666	6	4	38
7667	6	3	10
7668	6	2	20
7669	6	4	29
7670	10	4	21
7671	10	4	44
7672	8	2	38
7673	10	3	15
7674	8	2	49
7675	8	3	15
7676	7	2	20
7677	9	4	10
7678	10	4	15
7679	8	2	29
7680	7	2	15
7681	8	3	30
7682	7	2	28
7683	6	2	23
7684	9	2	12
7685	6	4	16
7686	10	3	21
7687	6	2	30
7688	9	3	13
7689	6	3	1
7690	6	3	49
7691	10	2	34
7692	6	4	24
7693	9	2	33
7694	8	3	50
7695	7	3	41
7696	6	4	20
7697	6	2	14
7698	6	3	16
7699	9	2	20
7700	9	3	21
7701	8	2	6
7702	7	2	24
7703	6	4	49
7704	8	4	2
7705	6	2	20
7706	10	2	18
7707	10	3	39
7708	8	2	33
7709	6	4	24
7710	9	3	32
7711	6	4	31
7712	6	2	2
7713	6	3	31
7714	8	4	38
7715	7	3	44
7716	8	4	48
7717	8	4	46
7718	9	3	10
7719	8	4	44
7720	10	4	42
7721	9	2	46
7722	6	3	34
7723	8	4	28
7724	6	4	16
7725	10	2	42
7726	8	4	26
7727	6	4	37
7728	10	2	24
7729	6	3	38
7730	9	4	46
7731	7	3	32
7732	10	2	40
7733	8	4	1
7734	9	2	1
7735	7	4	44
7736	8	2	38
7737	7	2	47
7738	7	4	24
7739	6	3	46
7740	8	3	31
7741	7	2	21
7742	9	3	40
7743	7	4	28
7744	6	3	34
7745	10	3	10
7746	10	2	37
7747	9	2	28
7748	6	4	21
7749	6	3	2
7750	8	3	33
7751	9	2	20
7752	8	4	2
7753	10	2	7
7754	6	3	42
7755	6	4	44
7756	9	2	1
7757	7	4	46
7758	10	3	28
7759	6	4	9
7760	8	2	19
7761	10	3	46
7762	10	3	16
7763	8	4	15
7764	9	4	10
7765	10	2	31
7766	8	4	11
7767	6	4	35
7768	6	4	28
7769	9	2	41
7770	6	2	34
7771	6	3	1
7772	6	3	10
7773	7	2	46
7774	9	4	42
7775	7	3	17
7776	9	4	5
7777	10	3	42
7778	7	3	15
7779	6	2	47
7780	9	2	5
7781	10	3	49
7782	8	2	40
7783	9	2	39
7784	10	4	48
7785	10	2	1
7786	6	3	30
7787	10	4	1
7788	9	4	29
7789	7	4	5
7790	6	2	47
7791	9	4	47
7792	10	3	27
7793	8	2	32
7794	7	2	19
7795	10	4	6
7796	7	2	43
7797	8	2	10
7798	7	3	31
7799	7	3	29
7800	10	2	7
7801	6	2	35
7802	9	3	26
7803	6	2	16
7804	8	3	39
7805	9	4	7
7806	9	2	18
7807	10	3	13
7808	10	2	2
7809	7	4	44
7810	10	3	34
7811	6	2	25
7812	10	3	23
7813	9	4	48
7814	7	3	30
7815	8	2	39
7816	6	3	29
7817	8	3	48
7818	6	2	48
7819	6	2	46
7820	8	4	39
7821	9	4	2
7822	6	3	43
7823	10	4	10
7824	8	2	41
7825	9	3	13
7826	9	2	40
7827	6	3	45
7828	6	4	39
7829	9	3	40
7830	6	2	48
7831	8	4	5
7832	8	4	24
7833	10	2	19
7834	8	3	32
7835	6	3	24
7836	9	3	49
7837	6	4	32
7838	9	2	37
7839	7	2	15
7840	6	3	43
7841	6	2	24
7842	9	2	22
7843	8	4	44
7844	10	4	27
7845	10	2	7
7846	7	2	40
7847	8	2	28
7848	6	4	30
7849	8	2	2
7850	6	2	5
7851	8	3	48
7852	7	2	40
7853	6	2	49
7854	9	4	3
7855	10	2	48
7856	6	2	49
7857	9	2	5
7858	7	3	38
7859	7	2	45
7860	8	3	26
7861	9	4	24
7862	7	4	50
7863	10	4	41
7864	7	3	28
7865	7	4	14
7866	7	4	37
7867	7	4	32
7868	9	2	39
7869	10	3	41
7870	9	2	1
7871	6	2	35
7872	10	3	7
7873	7	3	1
7874	8	4	16
7875	6	3	24
7876	8	2	9
7877	8	3	37
7878	8	4	6
7879	8	2	2
7880	9	4	24
7881	8	3	2
7882	8	2	11
7883	10	2	25
7884	6	4	12
7885	10	4	36
7886	9	2	42
7887	7	4	20
7888	10	2	37
7889	7	4	23
7890	9	2	30
7891	9	4	41
7892	9	3	2
7893	9	4	27
7894	10	3	5
7895	6	3	36
7896	8	3	7
7897	8	4	18
7898	8	3	30
7899	7	4	37
7900	6	4	35
7901	6	3	42
7902	8	3	35
7903	6	3	28
7904	8	4	29
7905	7	3	46
7906	10	2	18
7907	9	3	21
7908	7	3	31
7909	8	2	38
7910	7	3	40
7911	8	2	22
7912	6	2	28
7913	6	2	7
7914	6	3	31
7915	9	4	10
7916	7	4	39
7917	7	2	48
7918	10	4	5
7919	8	3	26
7920	6	3	9
7921	9	4	24
7922	7	4	49
7923	9	4	40
7924	10	4	45
7925	10	2	44
7926	9	2	29
7927	9	4	7
7928	9	3	49
7929	9	4	38
7930	9	2	40
7931	7	3	49
7932	6	3	34
7933	6	3	5
7934	9	4	24
7935	7	4	43
7936	7	2	29
7937	10	4	37
7938	9	2	21
7939	9	3	26
7940	8	2	1
7941	10	4	22
7942	9	4	1
7943	7	4	49
7944	6	3	8
7945	6	3	30
7946	7	3	4
7947	10	4	38
7948	9	3	29
7949	9	3	46
7950	7	3	4
7951	6	2	43
7952	8	3	1
7953	10	4	38
7954	10	3	7
7955	9	2	21
7956	7	3	32
7957	10	4	1
7958	10	2	46
7959	8	4	36
7960	8	2	10
7961	10	2	27
7962	10	4	49
7963	10	4	35
7964	9	4	42
7965	6	4	50
7966	8	3	21
7967	9	3	5
7968	6	3	14
7969	10	2	2
7970	10	4	17
7971	6	4	24
7972	7	2	48
7973	10	4	15
7974	8	3	27
7975	7	4	3
7976	8	2	14
7977	10	3	39
7978	8	4	43
7979	7	3	39
7980	9	2	49
7981	10	2	25
7982	6	4	10
7983	7	3	6
7984	7	4	42
7985	8	4	11
7986	9	4	16
7987	8	3	7
7988	7	4	34
7989	6	2	10
7990	9	3	5
7991	8	4	25
7992	6	3	35
7993	6	4	10
7994	6	3	22
7995	8	2	24
7996	7	4	31
7997	10	4	36
7998	7	4	44
7999	9	2	40
8000	8	3	10
8001	6	4	43
8002	7	3	43
8003	10	3	20
8004	9	2	26
8005	9	4	34
8006	9	3	21
8007	6	4	19
8008	7	3	17
8009	8	4	50
8010	7	2	26
8011	7	4	20
8012	7	3	38
8013	9	3	39
8014	8	3	22
8015	10	2	45
8016	9	4	21
8017	8	3	39
8018	6	2	47
8019	8	4	42
8020	9	3	21
8021	10	2	7
8022	8	3	42
8023	9	2	40
8024	10	3	32
8025	6	3	15
8026	10	3	2
8027	6	4	2
8028	8	2	5
8029	6	2	47
8030	6	4	49
8031	7	4	32
8032	9	3	33
8033	10	3	29
8034	10	3	28
8035	7	4	3
8036	8	4	37
8037	7	2	1
8038	7	4	1
8039	6	3	15
8040	8	4	35
8041	6	4	6
8042	6	2	36
8043	6	3	48
8044	9	3	6
8045	7	4	3
8046	8	4	4
8047	7	3	35
8048	6	2	6
8049	9	3	23
8050	6	3	20
8051	7	2	10
8052	9	4	30
8053	8	4	11
8054	9	3	43
8055	9	4	14
8056	7	3	41
8057	9	2	37
8058	9	3	15
8059	8	3	25
8060	8	3	24
8061	10	4	1
8062	7	3	12
8063	10	3	30
8064	8	4	39
8065	8	4	43
8066	10	3	1
8067	6	4	7
8068	10	2	32
8069	7	3	37
8070	6	2	10
8071	10	3	1
8072	7	2	45
8073	6	2	7
8074	10	3	34
8075	7	2	37
8076	8	4	26
8077	6	2	40
8078	8	3	15
8079	7	4	20
8080	8	4	32
8081	6	2	47
8082	8	2	5
8083	8	3	42
8084	9	4	39
8085	6	4	25
8086	10	3	6
8087	10	4	43
8088	7	2	36
8089	8	3	11
8090	9	2	20
8091	6	4	29
8092	6	2	6
8093	10	3	6
8094	10	4	9
8095	7	3	14
8096	9	3	23
8097	7	3	1
8098	6	4	28
8099	7	4	22
8100	6	4	1
8101	7	3	39
8102	10	4	2
8103	8	4	35
8104	10	3	44
8105	10	4	10
8106	9	2	42
8107	8	2	7
8108	8	4	21
8109	10	2	38
8110	6	4	6
8111	7	4	42
8112	6	4	38
8113	7	2	36
8114	9	2	16
8115	7	4	37
8116	6	4	13
8117	10	2	49
8118	6	3	48
8119	9	3	1
8120	8	3	45
8121	6	3	10
8122	7	4	6
8123	10	2	21
8124	7	3	29
8125	7	3	31
8126	10	4	35
8127	6	2	10
8128	8	3	50
8129	6	3	24
8130	10	2	39
8131	6	4	48
8132	7	3	32
8133	9	4	40
8134	7	3	7
8135	9	2	10
8136	10	3	20
8137	10	4	33
8138	8	3	35
8139	6	3	3
8140	10	4	1
8141	10	3	6
8142	6	4	48
8143	7	2	44
8144	8	2	42
8145	8	4	10
8146	9	4	32
8147	10	2	20
8148	10	4	1
8149	7	2	31
8150	8	3	43
8151	7	4	42
8152	9	3	34
8153	10	4	32
8154	10	3	15
8155	8	3	30
8156	9	2	40
8157	8	4	12
8158	10	4	27
8159	6	2	29
8160	7	4	40
8161	10	3	6
8162	6	3	2
8163	6	2	20
8164	7	3	40
8165	7	2	16
8166	7	4	13
8167	10	4	35
8168	10	2	12
8169	6	3	18
8170	8	4	5
8171	10	4	28
8172	8	3	28
8173	6	4	34
8174	6	4	35
8175	9	2	32
8176	7	4	34
8177	10	3	6
8178	10	4	5
8179	7	4	40
8180	9	2	36
8181	7	3	28
8182	9	3	48
8183	9	3	36
8184	6	4	43
8185	7	4	21
8186	9	4	21
8187	8	4	34
8188	6	2	46
8189	10	2	42
8190	6	3	42
8191	7	3	46
8192	8	4	31
8193	6	4	41
8194	10	4	20
8195	7	4	27
8196	6	4	36
8197	10	3	40
8198	10	3	40
8199	8	4	15
8200	9	2	43
8201	8	3	40
8202	8	2	35
8203	10	3	49
8204	7	2	49
8205	10	4	16
8206	6	3	9
8207	10	4	41
8208	8	2	48
8209	6	3	39
8210	8	3	49
8211	9	4	24
8212	10	3	35
8213	6	3	40
8214	9	3	11
8215	9	4	16
8216	7	4	37
8217	8	2	40
8218	10	4	43
8219	9	2	10
8220	9	4	41
8221	7	4	2
8222	8	4	13
8223	8	4	34
8224	10	2	32
8225	8	4	30
8226	6	4	20
8227	7	4	44
8228	7	4	48
8229	7	4	20
8230	7	3	28
8231	6	4	39
8232	7	2	43
8233	10	3	5
8234	9	4	21
8235	6	3	10
8236	8	3	10
8237	6	4	22
8238	7	2	48
8239	8	4	42
8240	7	2	18
8241	7	4	25
8242	7	4	34
8243	6	3	36
8244	7	3	4
8245	9	3	41
8246	9	3	5
8247	7	3	32
8248	10	2	15
8249	6	2	5
8250	8	2	32
8251	9	2	44
8252	7	2	4
8253	7	4	38
8254	8	3	41
8255	8	2	10
8256	6	3	16
8257	10	3	7
8258	10	2	37
8259	6	2	43
8260	7	2	41
8261	9	3	24
8262	9	3	2
8263	6	4	48
8264	6	3	32
8265	9	3	21
8266	6	3	12
8267	9	2	36
8268	6	3	21
8269	9	4	43
8270	10	2	40
8271	6	3	42
8272	10	4	15
8273	10	2	1
8274	7	3	26
8275	7	4	46
8276	7	3	30
8277	8	2	7
8278	10	2	28
8279	8	2	48
8280	8	2	2
8281	10	3	32
8282	10	2	48
8283	7	4	28
8284	6	2	46
8285	10	2	32
8286	9	3	10
8287	7	4	12
8288	10	2	50
8289	9	3	6
8290	6	4	38
8291	9	2	24
8292	10	4	49
8293	7	3	28
8294	9	2	2
8295	10	4	42
8296	6	3	12
8297	9	2	37
8298	6	3	41
8299	7	3	25
8300	6	2	5
8301	10	3	43
8302	9	3	22
8303	7	2	6
8304	8	2	29
8305	8	2	42
8306	10	2	43
8307	6	4	3
8308	10	3	43
8309	6	4	5
8310	7	4	38
8311	9	2	4
8312	6	4	20
8313	6	3	41
8314	6	2	35
8315	10	3	30
8316	6	4	2
8317	10	4	15
8318	8	4	35
8319	7	3	1
8320	7	4	33
8321	9	2	30
8322	7	2	42
8323	10	2	10
8324	6	4	41
8325	8	3	12
8326	10	3	44
8327	7	2	36
8328	6	4	42
8329	6	3	1
8330	10	3	15
8331	9	4	30
8332	8	4	1
8333	6	2	2
8334	8	2	15
8335	6	2	41
8336	8	2	40
8337	7	2	21
8338	8	2	7
8339	7	2	36
8340	8	3	8
8341	10	4	30
8342	10	4	37
8343	6	3	28
8344	6	4	22
8345	8	3	44
8346	9	3	37
8347	6	3	44
8348	6	4	20
8349	8	4	6
8350	7	2	11
8351	9	4	37
8352	10	2	12
8353	9	3	37
8354	6	3	6
8355	7	3	31
8356	8	2	40
8357	7	4	7
8358	10	2	31
8359	7	2	39
8360	8	4	43
8361	10	4	32
8362	8	4	34
8363	6	3	19
8364	6	2	18
8365	8	4	5
8366	6	3	7
8367	7	3	13
8368	6	3	6
8369	9	4	44
8370	7	3	44
8371	8	2	46
8372	8	2	44
8373	9	2	6
8374	10	4	38
8375	7	2	45
8376	9	2	41
8377	7	4	39
8378	6	4	20
8379	6	2	48
8380	6	2	40
8381	9	2	42
8382	10	2	10
8383	10	3	25
8384	10	2	35
8385	10	4	44
8386	10	4	45
8387	7	2	41
8388	9	2	35
8389	7	4	17
8390	8	4	37
8391	7	3	43
8392	10	4	28
8393	10	3	1
8394	10	4	38
8395	6	4	7
8396	7	3	1
8397	7	4	36
8398	9	2	43
8399	7	4	38
8400	8	3	30
8401	9	4	34
8402	7	3	26
8403	9	4	36
8404	8	2	2
8405	8	2	3
8406	9	4	41
8407	7	4	37
8408	8	3	47
8409	9	2	32
8410	9	2	43
8411	9	2	15
8412	10	3	36
8413	6	2	21
8414	6	3	27
8415	6	4	41
8416	8	3	7
8417	9	3	44
8418	8	4	43
8419	6	4	18
8420	7	2	31
8421	10	4	7
8422	8	4	6
8423	10	2	44
8424	6	3	10
8425	8	2	2
8426	10	2	44
8427	9	2	1
8428	8	3	34
8429	9	3	29
8430	8	3	3
8431	7	3	28
8432	10	3	9
8433	9	2	7
8434	7	2	47
8435	6	3	11
8436	9	4	31
8437	7	4	1
8438	9	3	12
8439	8	3	39
8440	8	2	20
8441	10	3	41
8442	6	2	15
8443	7	2	15
8444	10	3	20
8445	8	3	31
8446	7	3	37
8447	8	4	36
8448	9	3	2
8449	9	2	48
8450	6	3	15
8451	7	3	39
8452	6	3	43
8453	10	3	47
8454	10	4	29
8455	8	4	34
8456	10	2	15
8457	6	3	3
8458	8	3	40
8459	8	4	23
8460	10	4	36
8461	7	3	21
8462	7	4	26
8463	6	4	8
8464	7	2	34
8465	9	4	41
8466	8	3	35
8467	8	4	38
8468	8	2	18
8469	6	4	1
8470	8	2	46
8471	9	2	30
8472	9	2	45
8473	8	3	34
8474	10	2	33
8475	8	2	41
8476	9	3	43
8477	10	4	34
8478	6	4	41
8479	7	4	42
8480	6	4	22
8481	8	2	18
8482	8	4	17
8483	7	2	21
8484	7	2	20
8485	10	4	30
8486	9	4	17
8487	8	3	36
8488	6	4	28
8489	6	4	48
8490	9	3	34
8491	9	2	48
8492	6	2	44
8493	7	2	40
8494	6	4	35
8495	7	4	5
8496	6	2	24
8497	9	2	7
8498	8	3	17
8499	7	2	28
8500	9	2	6
8501	7	2	36
8502	10	3	21
8503	6	2	46
8504	10	3	31
8505	9	3	34
8506	7	3	49
8507	8	4	1
8508	10	3	10
8509	7	4	48
8510	10	3	28
8511	6	3	17
8512	10	3	40
8513	10	3	2
8514	8	2	1
8515	7	4	37
8516	8	3	21
8517	6	3	15
8518	6	4	7
8519	7	2	24
8520	9	4	8
8521	10	3	48
8522	9	4	5
8523	9	2	39
8524	6	2	38
8525	8	2	19
8526	6	2	32
8527	6	3	14
8528	8	3	37
8529	10	3	31
8530	9	4	2
8531	6	3	37
8532	6	3	20
8533	7	2	34
8534	6	2	16
8535	7	2	39
8536	8	2	22
8537	10	2	31
8538	8	3	41
8539	8	2	45
8540	6	3	36
8541	6	4	31
8542	7	4	10
8543	9	2	31
8544	10	4	20
8545	6	3	20
8546	7	4	39
8547	7	4	44
8548	10	2	40
8549	8	3	39
8550	7	2	43
8551	9	3	49
8552	10	3	37
8553	7	4	36
8554	8	2	48
8555	6	3	46
8556	8	2	37
8557	9	4	50
8558	9	4	38
8559	10	3	14
8560	6	3	36
8561	6	4	7
8562	6	3	30
8563	7	3	43
8564	10	2	43
8565	9	2	39
8566	9	4	24
8567	10	4	32
8568	10	2	35
8569	9	4	39
8570	7	4	39
8571	10	4	27
8572	8	2	39
8573	7	2	26
8574	6	2	2
8575	9	3	6
8576	10	2	40
8577	8	4	41
8578	6	3	29
8579	7	4	43
8580	10	3	19
8581	6	2	6
8582	10	3	28
8583	8	2	27
8584	6	2	30
8585	6	3	30
8586	9	3	50
8587	8	2	17
8588	6	3	44
8589	9	2	20
8590	9	2	36
8591	7	3	34
8592	10	2	41
8593	9	2	1
8594	6	4	24
8595	7	2	14
8596	7	3	30
8597	7	2	12
8598	6	2	2
8599	8	4	23
8600	8	3	6
8601	8	2	28
8602	8	4	32
8603	6	3	39
8604	9	4	38
8605	7	2	30
8606	10	2	37
8607	9	2	49
8608	6	2	22
8609	6	4	23
8610	9	4	30
8611	6	3	5
8612	9	3	50
8613	7	4	18
8614	8	3	8
8615	7	2	24
8616	9	4	12
8617	10	4	3
8618	6	3	12
8619	6	4	18
8620	6	4	48
8621	10	2	30
8622	8	4	46
8623	9	4	21
8624	8	3	13
8625	7	3	44
8626	9	3	34
8627	9	4	31
8628	7	2	49
8629	8	2	12
8630	10	2	29
8631	6	2	21
8632	7	3	37
8633	7	4	39
8634	6	2	12
8635	7	3	34
8636	9	3	48
8637	6	4	40
8638	9	3	15
8639	10	3	28
8640	7	2	8
8641	9	2	36
8642	10	3	5
8643	8	2	31
8644	6	4	48
8645	10	3	50
8646	8	2	15
8647	9	4	38
8648	8	2	46
8649	8	3	30
8650	6	2	32
8651	8	4	40
8652	8	3	1
8653	10	2	44
8654	8	2	39
8655	9	3	43
8656	9	3	35
8657	9	4	34
8658	6	2	6
8659	9	4	15
8660	6	3	27
8661	9	3	3
8662	9	3	20
8663	9	3	4
8664	8	4	44
8665	7	4	48
8666	6	4	37
8667	7	2	50
8668	9	4	29
8669	8	2	25
8670	8	2	3
8671	9	3	28
8672	8	3	36
8673	6	2	1
8674	8	4	37
8675	7	4	26
8676	6	2	7
8677	10	4	12
8678	8	2	11
8679	10	3	30
8680	10	4	32
8681	10	3	28
8682	9	2	10
8683	10	3	29
8684	10	4	31
8685	6	2	34
8686	7	2	40
8687	7	2	10
8688	9	2	11
8689	9	4	44
8690	7	2	15
8691	7	3	42
8692	6	4	43
8693	9	4	48
8694	7	3	42
8695	8	2	19
8696	7	3	5
8697	6	4	3
8698	7	4	31
8699	10	4	34
8700	9	3	15
8701	10	3	28
8702	7	3	24
8703	8	3	42
8704	9	3	26
8705	9	2	7
8706	7	4	31
8707	8	4	44
8708	9	4	5
8709	7	3	42
8710	10	3	23
8711	7	2	10
8712	7	2	17
8713	9	2	24
8714	6	2	42
8715	10	4	11
8716	9	3	30
8717	8	3	37
8718	6	2	48
8719	6	2	39
8720	8	2	47
8721	9	3	6
8722	9	2	50
8723	10	3	46
8724	10	4	25
8725	7	3	48
8726	7	3	15
8727	7	3	40
8728	7	3	1
8729	9	3	15
8730	9	3	46
8731	9	4	32
8732	10	3	32
8733	6	4	26
8734	7	2	1
8735	9	2	48
8736	9	2	5
8737	6	2	22
8738	8	2	24
8739	8	2	42
8740	9	4	5
8741	10	2	44
8742	6	3	6
8743	8	2	38
8744	7	3	43
8745	9	3	15
8746	10	4	33
8747	8	4	49
8748	10	3	3
8749	6	2	8
8750	7	3	7
8751	7	2	43
8752	9	4	48
8753	7	4	19
8754	6	2	39
8755	7	2	31
8756	6	4	43
8757	7	2	15
8758	9	2	25
8759	9	2	2
8760	9	2	13
8761	8	2	1
8762	9	3	20
8763	10	2	46
8764	9	3	12
8765	7	2	35
8766	9	3	36
8767	6	3	44
8768	10	3	47
8769	8	4	42
8770	6	2	49
8771	7	4	40
8772	10	2	10
8773	8	2	7
8774	9	4	20
8775	7	2	41
8776	7	3	6
8777	8	4	42
8778	10	2	2
8779	10	3	25
8780	10	2	43
8781	9	2	45
8782	6	4	28
8783	8	2	6
8784	10	3	36
8785	7	4	5
8786	10	3	19
8787	10	4	43
8788	6	2	44
8789	7	3	38
8790	7	2	46
8791	9	4	38
8792	8	4	8
8793	6	3	43
8794	9	3	37
8795	10	2	49
8796	9	2	40
8797	8	3	49
8798	9	4	13
8799	9	2	23
8800	6	3	16
8801	8	3	8
8802	7	2	41
8803	7	3	32
8804	8	4	15
8805	9	4	25
8806	6	2	7
8807	8	2	6
8808	9	3	41
8809	8	2	29
8810	6	3	29
8811	9	2	33
8812	8	2	43
8813	7	4	40
8814	6	3	42
8815	7	4	36
8816	9	2	37
8817	9	3	20
8818	7	2	32
8819	10	3	32
8820	10	2	29
8821	7	2	36
8822	8	4	43
8823	6	3	31
8824	7	3	23
8825	8	3	50
8826	7	3	39
8827	6	3	34
8828	6	3	8
8829	10	3	31
8830	7	4	7
8831	10	3	31
8832	7	3	8
8833	6	2	10
8834	9	4	32
8835	8	4	4
8836	6	3	37
8837	8	2	28
8838	8	4	29
8839	6	3	10
8840	6	2	33
8841	10	4	29
8842	10	4	12
8843	7	4	15
8844	9	2	42
8845	9	4	41
8846	6	2	46
8847	10	4	38
8848	10	4	41
8849	9	3	45
8850	10	2	37
8851	8	2	47
8852	8	4	25
8853	6	4	49
8854	8	2	9
8855	9	3	15
8856	10	2	40
8857	8	3	35
8858	9	4	46
8859	7	2	37
8860	8	4	5
8861	8	3	13
8862	8	3	36
8863	8	4	24
8864	9	2	21
8865	7	3	17
8866	8	3	22
8867	6	4	34
8868	10	4	28
8869	8	4	48
8870	9	2	44
8871	7	2	10
8872	6	2	15
8873	6	4	2
8874	8	3	5
8875	10	3	30
8876	9	4	25
8877	6	4	31
8878	8	4	20
8879	9	4	22
8880	6	4	17
8881	8	2	26
8882	9	4	10
8883	6	2	21
8884	6	2	15
8885	7	3	48
8886	7	2	39
8887	8	4	48
8888	6	4	43
8889	8	2	3
8890	9	2	36
8891	10	4	48
8892	10	3	7
8893	7	3	26
8894	10	3	28
8895	9	3	34
8896	6	2	36
8897	7	3	21
8898	10	3	10
8899	7	3	13
8900	8	3	29
8901	8	2	18
8902	10	2	32
8903	10	3	16
8904	6	2	27
8905	7	2	35
8906	10	4	6
8907	10	2	40
8908	10	3	38
8909	6	3	34
8910	6	3	28
8911	9	4	16
8912	8	3	18
8913	7	2	20
8914	6	2	34
8915	7	2	47
8916	6	3	23
8917	9	4	44
8918	6	4	42
8919	10	3	37
8920	7	4	31
8921	9	3	7
8922	8	2	48
8923	8	2	17
8924	7	4	27
8925	10	3	46
8926	6	2	30
8927	10	2	15
8928	10	3	33
8929	8	2	17
8930	8	3	28
8931	6	3	45
8932	6	3	7
8933	8	4	50
8934	6	2	42
8935	8	3	1
8936	9	2	40
8937	6	4	31
8938	10	4	28
8939	10	3	32
\.

-- group_lesson
\! echo 'Insert into Group Lesson..';
COPY group_lesson (group_lesson_slot_id, instrument_id, skill_level) FROM stdin;
1	5	advanced
2	7	advanced
4	4	beginner
6	10	advanced
7	5	intermediate
8	1	advanced
9	10	intermediate
12	1	beginner
14	9	intermediate
15	2	intermediate
17	7	advanced
24	5	beginner
26	12	advanced
27	12	beginner
28	10	advanced
30	7	intermediate
31	10	advanced
33	12	advanced
34	10	advanced
35	2	advanced
36	1	advanced
37	2	intermediate
38	8	beginner
40	9	advanced
43	3	intermediate
44	8	beginner
47	2	beginner
51	9	beginner
54	5	beginner
55	10	intermediate
56	7	intermediate
57	11	beginner
59	1	beginner
65	5	advanced
67	3	beginner
68	2	intermediate
75	5	advanced
77	7	intermediate
79	7	advanced
81	6	advanced
82	5	advanced
83	5	beginner
84	10	beginner
86	12	beginner
87	4	intermediate
88	9	intermediate
91	1	advanced
92	8	beginner
93	12	intermediate
94	3	advanced
95	5	beginner
96	2	intermediate
98	9	intermediate
100	5	beginner
105	1	advanced
107	1	advanced
109	12	advanced
111	11	advanced
113	1	advanced
114	7	beginner
115	7	advanced
117	7	advanced
120	2	intermediate
122	11	intermediate
123	2	intermediate
125	3	beginner
127	8	beginner
128	2	advanced
133	11	beginner
134	4	advanced
136	9	beginner
137	2	intermediate
138	3	beginner
140	1	advanced
142	10	beginner
144	12	advanced
146	12	intermediate
147	1	beginner
150	5	advanced
154	11	beginner
155	1	intermediate
156	9	advanced
159	1	advanced
162	5	intermediate
163	5	intermediate
165	12	intermediate
166	11	beginner
168	5	advanced
171	3	beginner
173	9	intermediate
175	6	intermediate
176	4	intermediate
178	4	beginner
180	10	beginner
181	11	intermediate
182	9	advanced
183	11	beginner
187	3	beginner
188	12	advanced
189	6	advanced
190	11	intermediate
191	10	advanced
195	8	advanced
197	7	beginner
200	5	intermediate
201	9	advanced
202	3	intermediate
203	3	intermediate
204	11	beginner
206	8	beginner
207	9	intermediate
208	10	advanced
210	2	advanced
211	10	advanced
212	8	intermediate
214	11	intermediate
218	10	advanced
219	1	intermediate
223	5	advanced
224	9	beginner
230	4	beginner
231	4	beginner
235	2	intermediate
237	3	advanced
239	11	advanced
240	12	beginner
243	7	beginner
246	3	intermediate
250	5	intermediate
254	9	advanced
259	9	beginner
260	4	advanced
263	1	advanced
264	1	intermediate
265	1	intermediate
266	2	beginner
267	8	intermediate
268	4	advanced
269	2	beginner
272	5	advanced
273	4	beginner
275	12	intermediate
280	12	intermediate
281	9	intermediate
283	7	intermediate
290	6	beginner
294	4	beginner
295	5	beginner
296	3	beginner
297	6	beginner
298	7	beginner
303	2	beginner
309	2	beginner
314	8	advanced
315	10	beginner
318	10	beginner
320	7	advanced
321	5	advanced
324	2	beginner
325	10	advanced
329	9	advanced
330	6	advanced
332	6	intermediate
333	8	beginner
335	4	advanced
336	12	beginner
337	6	intermediate
338	2	intermediate
339	3	beginner
341	2	advanced
344	12	intermediate
345	3	advanced
346	9	beginner
349	9	intermediate
351	2	advanced
352	5	beginner
354	8	beginner
356	7	intermediate
358	4	beginner
361	8	intermediate
365	10	beginner
366	5	advanced
368	4	intermediate
369	7	beginner
370	2	intermediate
374	12	beginner
375	3	advanced
376	10	advanced
377	1	advanced
378	5	advanced
379	11	beginner
380	6	advanced
381	4	intermediate
382	2	beginner
384	9	beginner
385	11	intermediate
386	4	beginner
387	1	intermediate
388	8	advanced
393	11	beginner
394	12	intermediate
397	11	beginner
400	12	beginner
403	8	advanced
404	10	beginner
405	5	advanced
408	6	advanced
412	8	intermediate
413	9	beginner
414	6	advanced
417	9	intermediate
418	8	beginner
420	1	intermediate
421	4	intermediate
422	12	beginner
423	5	intermediate
424	7	beginner
426	3	advanced
430	5	intermediate
431	5	advanced
434	2	intermediate
435	6	beginner
436	6	intermediate
440	11	intermediate
441	4	intermediate
442	7	beginner
443	6	beginner
444	1	advanced
446	7	advanced
447	3	intermediate
448	3	beginner
453	9	advanced
454	6	beginner
455	2	intermediate
457	9	beginner
460	8	intermediate
462	2	advanced
463	9	intermediate
465	2	intermediate
474	8	advanced
475	2	intermediate
479	4	beginner
485	9	intermediate
487	5	intermediate
491	6	intermediate
493	5	beginner
495	9	beginner
498	4	intermediate
499	3	beginner
501	5	beginner
506	10	beginner
507	5	intermediate
508	12	beginner
510	9	beginner
511	4	beginner
514	10	beginner
515	2	beginner
523	1	intermediate
524	5	advanced
525	5	intermediate
526	3	beginner
528	1	intermediate
530	12	beginner
535	9	intermediate
537	9	intermediate
538	6	intermediate
540	4	beginner
541	8	intermediate
542	6	beginner
543	2	beginner
544	4	beginner
546	11	beginner
547	3	beginner
550	5	beginner
551	1	intermediate
553	7	beginner
556	10	beginner
558	2	advanced
562	11	intermediate
565	2	beginner
568	4	intermediate
569	8	beginner
573	9	intermediate
575	5	intermediate
578	5	beginner
579	2	advanced
582	9	advanced
583	9	beginner
585	10	intermediate
588	11	advanced
589	6	advanced
590	8	advanced
595	6	advanced
598	5	advanced
599	6	beginner
600	12	advanced
601	2	beginner
604	8	intermediate
605	8	advanced
606	12	advanced
611	6	beginner
613	8	advanced
616	11	beginner
617	10	advanced
618	1	intermediate
620	6	beginner
622	6	intermediate
623	10	beginner
630	9	advanced
631	6	beginner
635	5	beginner
636	8	intermediate
637	11	intermediate
638	7	advanced
641	8	intermediate
642	3	beginner
644	7	beginner
646	3	advanced
648	5	intermediate
657	2	intermediate
658	3	advanced
659	2	intermediate
660	11	advanced
661	11	advanced
662	4	beginner
663	1	advanced
667	9	intermediate
669	7	intermediate
670	2	advanced
671	12	advanced
674	1	advanced
675	11	advanced
676	7	advanced
678	8	intermediate
682	4	intermediate
684	10	intermediate
686	7	advanced
689	6	advanced
696	9	intermediate
698	12	intermediate
702	8	beginner
703	3	intermediate
704	1	intermediate
707	8	intermediate
708	4	intermediate
709	6	intermediate
710	10	intermediate
713	12	advanced
715	2	beginner
717	4	beginner
718	4	advanced
726	9	beginner
728	9	advanced
730	7	intermediate
731	4	advanced
734	3	beginner
735	8	advanced
737	7	advanced
741	10	beginner
750	12	beginner
752	9	advanced
755	3	beginner
757	10	beginner
758	1	advanced
759	11	advanced
765	7	intermediate
767	5	beginner
769	5	advanced
770	7	advanced
772	4	beginner
773	8	advanced
776	5	intermediate
781	7	intermediate
785	7	beginner
787	5	intermediate
788	11	advanced
789	1	advanced
790	5	advanced
791	11	advanced
792	4	beginner
793	9	advanced
794	9	beginner
796	7	beginner
797	1	intermediate
799	12	intermediate
800	2	beginner
804	6	advanced
806	6	beginner
807	5	intermediate
812	1	beginner
814	12	beginner
816	8	beginner
817	10	advanced
819	9	advanced
820	8	beginner
823	12	intermediate
824	2	advanced
826	9	intermediate
828	6	beginner
831	3	beginner
832	4	advanced
834	5	intermediate
837	9	advanced
839	3	advanced
841	8	advanced
843	3	intermediate
844	4	beginner
846	3	intermediate
849	1	beginner
850	2	intermediate
852	6	intermediate
858	2	beginner
859	6	advanced
862	6	advanced
865	3	intermediate
866	3	intermediate
867	7	intermediate
868	5	beginner
869	9	beginner
870	10	advanced
871	10	beginner
872	5	advanced
874	9	intermediate
875	11	advanced
879	8	beginner
882	2	beginner
885	8	beginner
886	4	intermediate
887	12	intermediate
888	9	advanced
893	1	advanced
894	11	intermediate
897	12	advanced
900	2	intermediate
901	7	advanced
905	12	intermediate
906	11	beginner
909	11	beginner
910	8	advanced
911	7	advanced
912	6	intermediate
913	1	intermediate
914	9	intermediate
915	10	intermediate
917	9	advanced
918	10	intermediate
920	6	advanced
921	8	intermediate
923	11	advanced
925	5	advanced
928	2	beginner
932	11	beginner
933	12	beginner
934	5	beginner
935	7	advanced
936	6	intermediate
941	12	intermediate
942	5	beginner
944	8	beginner
946	2	beginner
949	6	advanced
951	9	beginner
952	4	beginner
955	10	beginner
964	11	beginner
971	7	advanced
975	10	advanced
977	2	beginner
978	6	beginner
979	3	intermediate
980	12	advanced
982	9	advanced
985	10	advanced
986	5	beginner
987	1	intermediate
988	1	advanced
991	9	beginner
993	1	advanced
996	7	intermediate
997	9	beginner
999	7	intermediate
1000	5	beginner
1001	4	advanced
1002	9	intermediate
1003	7	intermediate
1005	6	advanced
1007	10	intermediate
1008	11	intermediate
1010	6	beginner
1012	3	beginner
1014	4	advanced
1015	2	beginner
1016	6	beginner
1018	10	beginner
1019	9	intermediate
1020	3	beginner
1021	10	intermediate
1022	4	intermediate
1023	7	advanced
1025	6	intermediate
1026	3	intermediate
1028	2	advanced
1029	4	intermediate
1032	7	beginner
1033	8	beginner
1035	6	intermediate
1036	3	advanced
1037	12	advanced
1040	8	advanced
1041	11	intermediate
1044	5	advanced
1046	11	intermediate
1047	7	beginner
1051	8	beginner
1052	12	beginner
1053	12	advanced
1054	6	intermediate
1055	5	beginner
1057	2	advanced
1058	2	beginner
1060	10	beginner
1064	6	intermediate
1065	7	intermediate
1069	11	advanced
1071	3	beginner
1075	4	beginner
1076	2	advanced
1077	9	intermediate
1078	6	beginner
1079	11	intermediate
1082	4	intermediate
1083	10	advanced
1085	12	advanced
1086	1	intermediate
1087	12	intermediate
1089	12	beginner
1090	6	intermediate
1091	12	beginner
1092	6	intermediate
1093	3	beginner
1095	7	beginner
1096	12	beginner
1097	10	beginner
1098	5	intermediate
1099	11	advanced
1100	8	advanced
1102	7	advanced
1106	8	advanced
1109	10	intermediate
1110	4	advanced
1111	6	advanced
1114	6	advanced
1115	2	advanced
1116	9	advanced
1117	10	intermediate
1118	10	advanced
1119	12	beginner
1121	7	intermediate
1124	4	intermediate
1128	2	advanced
1131	6	advanced
1135	1	advanced
1136	3	beginner
1138	2	advanced
1139	2	intermediate
1140	12	intermediate
1141	12	intermediate
1142	8	beginner
1144	11	intermediate
1146	10	intermediate
1149	5	advanced
1152	3	beginner
1154	10	intermediate
1155	2	advanced
1157	6	beginner
1158	11	advanced
1161	3	beginner
1165	1	intermediate
1166	2	advanced
1168	11	intermediate
1169	3	intermediate
1170	1	beginner
1173	1	intermediate
1174	6	intermediate
1175	10	advanced
1177	7	beginner
1179	1	intermediate
1180	3	advanced
1181	8	beginner
1182	3	beginner
1183	9	intermediate
1184	10	beginner
1186	10	advanced
1190	1	beginner
1193	1	beginner
1194	7	advanced
1195	2	intermediate
1198	6	advanced
1199	1	advanced
1200	5	intermediate
1201	8	advanced
1204	4	beginner
1205	9	intermediate
1206	3	intermediate
1207	5	advanced
1209	10	intermediate
1210	9	beginner
1211	5	advanced
1212	8	advanced
1213	3	intermediate
1215	5	advanced
1219	4	intermediate
1226	6	beginner
1228	3	advanced
1229	11	beginner
1230	3	intermediate
1231	1	intermediate
1233	2	beginner
1235	2	beginner
1249	9	advanced
1250	7	intermediate
1253	11	advanced
1257	8	advanced
1263	12	intermediate
1264	5	advanced
1266	9	advanced
1267	7	intermediate
1269	1	advanced
1271	3	intermediate
1275	5	advanced
1277	1	intermediate
1278	4	beginner
1281	9	intermediate
1283	2	advanced
1284	2	advanced
1285	7	beginner
1287	12	beginner
1291	3	beginner
1293	11	advanced
1296	5	intermediate
1297	9	beginner
1299	1	advanced
1301	1	intermediate
1302	3	beginner
1304	8	advanced
1306	10	intermediate
1307	5	intermediate
1308	10	advanced
1311	11	intermediate
1312	6	intermediate
1315	3	advanced
1321	2	intermediate
1322	11	beginner
1323	6	advanced
1326	7	intermediate
1328	6	intermediate
1330	12	advanced
1331	3	advanced
1333	7	intermediate
1334	8	advanced
1338	9	advanced
1339	7	beginner
1340	6	advanced
1341	8	intermediate
1342	3	advanced
1343	5	beginner
1344	12	beginner
1345	5	advanced
1347	6	advanced
1348	10	advanced
1350	3	intermediate
1352	3	advanced
1353	9	beginner
1354	10	advanced
1357	5	beginner
1358	8	advanced
1359	1	intermediate
1360	6	intermediate
1361	8	beginner
1366	3	beginner
1367	6	beginner
1368	11	intermediate
1370	6	beginner
1373	11	advanced
1380	5	intermediate
1381	4	intermediate
1383	5	beginner
1385	12	intermediate
1389	3	advanced
1390	6	beginner
1391	9	advanced
1392	3	beginner
1395	10	advanced
1400	2	beginner
1401	1	intermediate
1402	7	advanced
1403	2	advanced
1405	9	advanced
1407	6	advanced
1410	8	beginner
1411	9	intermediate
1412	12	beginner
1414	1	advanced
1415	2	advanced
1417	4	beginner
1420	11	beginner
1421	2	advanced
1422	5	intermediate
1423	8	advanced
1425	6	advanced
1426	4	advanced
1427	5	beginner
1428	1	beginner
1431	3	intermediate
1432	9	intermediate
1435	11	intermediate
1440	4	beginner
1442	1	advanced
1443	8	beginner
1444	12	intermediate
1445	3	intermediate
1446	4	advanced
1453	4	intermediate
1454	4	intermediate
1456	5	beginner
1458	2	intermediate
1459	10	intermediate
1460	10	advanced
1461	7	beginner
1462	12	beginner
1467	1	intermediate
1468	1	beginner
1476	8	beginner
1479	4	intermediate
1487	6	beginner
1489	11	beginner
1491	12	beginner
1493	12	beginner
1495	1	advanced
1497	3	beginner
1499	8	advanced
1500	4	beginner
1501	9	intermediate
1502	10	advanced
1504	10	intermediate
1509	10	intermediate
1512	4	intermediate
1517	11	advanced
1521	11	beginner
1522	6	advanced
1524	4	advanced
1525	3	intermediate
1527	3	intermediate
1529	7	advanced
1531	3	intermediate
1532	10	beginner
1534	8	beginner
1536	7	advanced
1540	2	advanced
1541	3	advanced
1546	9	advanced
1549	4	intermediate
1551	10	advanced
1554	1	advanced
1557	11	advanced
1562	10	intermediate
1563	7	intermediate
1567	6	intermediate
1569	5	advanced
1571	4	beginner
1572	5	advanced
1573	1	advanced
1574	1	beginner
1575	12	advanced
1576	12	advanced
1578	5	intermediate
1579	3	beginner
1580	11	advanced
1581	9	advanced
1583	3	intermediate
1585	5	advanced
1586	5	beginner
1587	10	beginner
1589	8	intermediate
1590	9	beginner
1591	8	intermediate
1594	3	advanced
1596	8	beginner
1598	6	intermediate
1599	5	intermediate
1602	7	intermediate
1604	6	intermediate
1605	3	advanced
1606	9	advanced
1607	6	advanced
1610	2	beginner
1611	7	advanced
1612	8	beginner
1613	10	beginner
1615	2	beginner
1618	10	advanced
1621	8	beginner
1624	8	beginner
1626	9	intermediate
1627	5	intermediate
1632	8	intermediate
1634	10	beginner
1636	12	intermediate
1637	7	beginner
1638	9	intermediate
1640	10	beginner
1643	1	intermediate
1644	10	advanced
1650	4	beginner
1652	9	advanced
1653	5	advanced
1654	3	advanced
1656	10	intermediate
1658	7	advanced
1662	4	intermediate
1663	4	beginner
1664	2	advanced
1665	12	intermediate
1667	5	beginner
1668	10	intermediate
1671	4	advanced
1674	5	advanced
1675	12	advanced
1678	7	beginner
1679	5	advanced
1680	3	intermediate
1683	1	beginner
1687	12	advanced
1689	10	intermediate
1690	8	beginner
1692	7	beginner
1694	11	advanced
1695	7	advanced
1698	5	intermediate
1700	7	advanced
1701	9	intermediate
1702	3	beginner
1704	3	advanced
1705	10	intermediate
1706	5	intermediate
1707	1	beginner
1712	7	beginner
1713	5	beginner
1717	11	advanced
1719	2	advanced
1723	2	advanced
1724	8	intermediate
1726	5	beginner
1727	5	intermediate
1728	6	advanced
1729	9	beginner
1730	12	beginner
1733	11	advanced
1735	11	advanced
1736	8	intermediate
1737	5	beginner
1738	10	beginner
1743	7	beginner
1744	1	intermediate
1746	11	advanced
1747	10	beginner
1750	9	beginner
1751	12	beginner
1752	11	advanced
1753	6	beginner
1754	7	beginner
1757	5	intermediate
1758	8	intermediate
1760	2	intermediate
1761	7	advanced
1762	1	intermediate
1765	7	intermediate
1767	12	intermediate
1768	1	advanced
1769	2	advanced
1773	4	beginner
1775	8	beginner
1778	3	intermediate
1782	12	advanced
1784	9	beginner
1785	11	advanced
1786	11	intermediate
1787	5	advanced
1788	6	intermediate
1789	8	advanced
1790	10	intermediate
1791	9	beginner
1792	10	advanced
1793	1	advanced
1795	3	intermediate
1797	3	advanced
1798	11	advanced
1799	1	advanced
1801	1	intermediate
1805	5	advanced
1806	8	advanced
1811	8	intermediate
1815	3	advanced
1816	7	advanced
1819	5	beginner
1820	8	beginner
1821	10	advanced
1822	1	advanced
1824	5	advanced
1826	11	advanced
1828	12	beginner
1831	11	intermediate
1834	7	intermediate
1835	8	advanced
1837	8	advanced
1838	12	beginner
1840	4	intermediate
1842	7	beginner
1843	7	intermediate
1844	4	intermediate
1845	12	beginner
1846	3	beginner
1847	1	beginner
1848	4	intermediate
1851	12	beginner
1852	6	beginner
1853	5	beginner
1856	7	advanced
1859	1	intermediate
1862	1	beginner
1863	3	intermediate
1864	11	beginner
1866	9	beginner
1868	4	beginner
1869	8	intermediate
1870	1	intermediate
1871	11	advanced
1873	11	intermediate
1874	11	beginner
1877	7	advanced
1878	4	advanced
1879	7	beginner
1881	12	advanced
1884	5	beginner
1887	5	beginner
1892	9	advanced
1895	4	beginner
1898	7	beginner
1899	8	advanced
1903	11	advanced
1904	4	beginner
1906	12	intermediate
1908	1	beginner
1909	4	advanced
1913	1	beginner
1914	8	intermediate
1915	5	intermediate
1916	9	beginner
1917	12	beginner
1918	10	intermediate
1921	9	intermediate
1923	4	beginner
1926	3	intermediate
1929	6	advanced
1930	6	beginner
1931	1	advanced
1933	11	intermediate
1935	11	advanced
1936	4	beginner
1937	7	advanced
1938	9	intermediate
1942	6	intermediate
1943	3	advanced
1945	3	advanced
1946	5	advanced
1947	3	intermediate
1949	2	beginner
1953	9	advanced
1957	7	intermediate
1962	3	advanced
1965	12	beginner
1970	8	beginner
1972	6	beginner
1973	1	intermediate
1975	2	beginner
1978	9	advanced
1980	11	beginner
1984	1	advanced
1991	2	advanced
1992	9	beginner
1993	11	intermediate
1995	10	advanced
2002	12	intermediate
2003	8	intermediate
2005	12	beginner
2006	12	advanced
2008	8	advanced
2009	3	beginner
2011	2	advanced
2012	1	advanced
2013	11	advanced
2014	1	intermediate
2015	11	intermediate
2016	2	advanced
2017	10	intermediate
2019	7	intermediate
2020	2	intermediate
2022	2	intermediate
2024	3	beginner
2026	6	advanced
2027	6	beginner
2031	12	beginner
2036	3	advanced
2040	6	advanced
2041	8	intermediate
2042	6	intermediate
2043	1	beginner
2045	12	advanced
2046	9	beginner
2047	7	advanced
2048	12	beginner
2050	2	beginner
2051	8	beginner
2054	4	beginner
2055	12	advanced
2056	12	beginner
2059	1	advanced
2060	10	beginner
2063	1	beginner
2064	3	beginner
2067	10	intermediate
2069	9	advanced
2076	10	advanced
2078	6	advanced
2079	5	advanced
2080	7	beginner
2082	6	intermediate
2083	9	intermediate
2084	3	advanced
2085	6	advanced
2086	12	beginner
2087	2	beginner
2090	10	beginner
2091	12	intermediate
2093	7	advanced
2094	10	intermediate
2097	6	beginner
2098	2	intermediate
2101	2	intermediate
2103	12	beginner
2104	12	advanced
2108	9	beginner
2109	6	advanced
2111	6	beginner
2112	1	intermediate
2113	11	intermediate
2114	8	beginner
2115	6	advanced
2116	9	intermediate
2118	1	intermediate
2119	6	intermediate
2120	6	intermediate
2121	12	advanced
2122	3	advanced
2123	11	advanced
2124	4	intermediate
2125	4	intermediate
2126	7	advanced
2128	10	intermediate
2129	5	advanced
2131	1	intermediate
2133	7	advanced
2135	6	intermediate
2136	6	intermediate
2137	8	beginner
2139	7	intermediate
2142	10	advanced
2146	3	advanced
2149	6	intermediate
2150	4	advanced
2152	7	advanced
2153	6	intermediate
2156	8	advanced
2160	10	beginner
2162	7	intermediate
2166	4	advanced
2167	1	intermediate
2169	10	intermediate
2171	11	advanced
2173	2	intermediate
2176	10	intermediate
2178	10	beginner
2180	1	beginner
2181	5	beginner
2184	6	advanced
2185	10	advanced
2189	7	advanced
2200	3	advanced
2202	8	advanced
2203	12	beginner
2206	9	intermediate
2207	5	intermediate
2209	8	beginner
2218	11	beginner
2224	8	advanced
2227	3	intermediate
2228	5	advanced
2231	4	intermediate
2234	2	intermediate
2236	10	beginner
2237	10	advanced
2243	9	intermediate
2244	12	advanced
2247	2	intermediate
2248	5	beginner
2249	2	intermediate
2250	1	intermediate
2252	9	intermediate
2254	1	beginner
2255	10	beginner
2256	12	advanced
2259	3	intermediate
2260	12	intermediate
2261	6	beginner
2263	4	advanced
2264	4	beginner
2265	6	beginner
2266	11	beginner
2267	4	beginner
2268	8	advanced
2269	4	advanced
2271	11	intermediate
2272	7	beginner
2273	11	beginner
2275	11	intermediate
2276	9	advanced
2279	3	beginner
2281	9	intermediate
2285	6	beginner
2288	7	intermediate
2289	2	beginner
2291	4	intermediate
2293	4	beginner
2294	9	intermediate
2295	3	beginner
2300	9	advanced
2301	10	beginner
2302	4	intermediate
2307	12	intermediate
2311	8	intermediate
2312	4	intermediate
2313	2	beginner
2315	11	advanced
2316	4	intermediate
2317	4	beginner
2318	11	intermediate
2320	4	beginner
2321	7	beginner
2324	8	beginner
2325	12	beginner
2326	3	intermediate
2329	3	intermediate
2330	3	intermediate
2331	3	intermediate
2340	11	beginner
2341	11	beginner
2342	8	advanced
2344	2	beginner
2353	5	intermediate
2354	3	beginner
2355	4	intermediate
2358	9	beginner
2361	8	intermediate
2363	7	advanced
2364	5	beginner
2366	12	intermediate
2367	8	beginner
2368	10	advanced
2369	11	advanced
2371	7	beginner
2373	5	beginner
2375	8	beginner
2376	3	intermediate
2378	10	advanced
2379	8	advanced
2381	11	intermediate
2383	7	beginner
2384	3	advanced
2385	5	intermediate
2392	2	beginner
2393	3	intermediate
2396	3	advanced
2397	9	intermediate
2398	1	beginner
2400	4	beginner
2401	1	intermediate
2403	6	intermediate
2406	6	intermediate
2407	4	intermediate
2409	9	beginner
2417	5	advanced
2421	5	beginner
2424	11	intermediate
2425	1	intermediate
2427	8	beginner
2429	11	beginner
2430	9	beginner
2431	9	advanced
2435	5	intermediate
2437	1	beginner
2438	10	beginner
2440	9	intermediate
2442	1	beginner
2444	6	beginner
2446	6	beginner
2447	1	beginner
2448	4	intermediate
2449	9	advanced
2453	9	intermediate
2458	7	intermediate
2459	7	intermediate
2460	10	intermediate
2461	2	beginner
2463	6	intermediate
2464	6	intermediate
2467	4	intermediate
2468	10	intermediate
2470	4	advanced
2471	7	beginner
2475	3	beginner
2476	10	beginner
2478	12	intermediate
2479	12	advanced
2483	3	intermediate
2484	3	beginner
2487	1	advanced
2488	5	intermediate
2490	5	advanced
2498	4	intermediate
2500	9	intermediate
2501	4	beginner
2503	1	intermediate
2504	2	intermediate
2505	2	advanced
2506	10	advanced
2510	9	advanced
2512	12	advanced
2513	2	beginner
2514	5	beginner
2518	3	intermediate
2521	10	beginner
2522	4	advanced
2524	1	beginner
2526	11	intermediate
2527	8	advanced
2529	8	beginner
2534	3	beginner
2540	6	beginner
2541	11	advanced
2542	11	advanced
2545	7	beginner
2549	9	advanced
2550	4	beginner
2555	7	intermediate
2556	11	beginner
2558	12	beginner
2564	1	beginner
2571	5	advanced
2572	11	intermediate
2573	2	beginner
2576	2	intermediate
2578	11	advanced
2591	8	beginner
2592	1	beginner
2594	4	beginner
2595	3	beginner
2598	10	intermediate
2599	9	beginner
2603	5	advanced
2604	5	advanced
2608	3	beginner
2610	3	advanced
2613	2	advanced
2614	5	beginner
2617	1	advanced
2619	10	advanced
2620	2	advanced
2621	11	intermediate
2622	11	beginner
2625	10	advanced
2627	8	advanced
2628	8	advanced
2629	4	intermediate
2630	11	intermediate
2633	12	beginner
2634	10	beginner
2635	5	intermediate
2636	12	advanced
2637	3	beginner
2639	4	intermediate
2640	11	intermediate
2641	12	intermediate
2643	5	advanced
2644	6	beginner
2646	3	beginner
2649	8	beginner
2652	4	advanced
2659	6	beginner
2661	10	advanced
2664	9	advanced
2665	7	advanced
2668	6	intermediate
2669	6	intermediate
2670	9	intermediate
2674	8	advanced
2679	4	advanced
2686	1	advanced
2689	8	advanced
2691	7	beginner
2695	1	advanced
2697	4	intermediate
2698	5	advanced
2703	8	beginner
2705	6	advanced
2706	2	intermediate
2707	5	beginner
2709	11	advanced
2710	12	beginner
2713	2	advanced
2714	3	advanced
2716	9	intermediate
2717	2	advanced
2718	8	advanced
2723	3	intermediate
2724	11	advanced
2725	8	advanced
2727	9	intermediate
2731	4	advanced
2734	11	intermediate
2737	3	intermediate
2738	5	advanced
2741	2	intermediate
2743	8	advanced
2745	7	intermediate
2746	9	beginner
2752	3	beginner
2757	12	beginner
2758	12	intermediate
2765	9	advanced
2766	4	advanced
2767	5	advanced
2769	3	beginner
2771	5	intermediate
2777	2	advanced
2780	6	advanced
2783	5	beginner
2784	3	intermediate
2785	12	beginner
2786	12	intermediate
2787	12	beginner
2788	1	beginner
2792	1	beginner
2801	5	advanced
2802	10	advanced
2803	9	intermediate
2807	1	beginner
2811	11	intermediate
2812	6	advanced
2815	2	beginner
2817	5	beginner
2820	11	beginner
2821	1	advanced
2823	3	beginner
2827	9	beginner
2828	10	advanced
2832	11	advanced
2835	5	advanced
2836	5	advanced
2839	1	advanced
2840	5	intermediate
2842	8	advanced
2843	3	intermediate
2846	6	intermediate
2847	3	beginner
2850	7	advanced
2852	6	intermediate
2853	6	beginner
2856	8	intermediate
2859	5	intermediate
2860	7	intermediate
2861	7	advanced
2862	1	intermediate
2865	2	beginner
2867	10	beginner
2868	1	intermediate
2869	10	beginner
2870	7	beginner
2876	7	beginner
2879	1	advanced
2880	11	advanced
2881	4	intermediate
2882	6	beginner
2883	9	beginner
2885	10	advanced
2893	9	beginner
2895	6	beginner
2896	12	beginner
2897	9	advanced
2900	3	beginner
2902	10	beginner
2903	12	advanced
2914	11	intermediate
2915	11	intermediate
2917	12	intermediate
2918	6	advanced
2922	2	intermediate
2924	3	advanced
2928	4	intermediate
2930	3	intermediate
2932	12	beginner
2934	11	advanced
2937	10	advanced
2938	8	beginner
2940	10	intermediate
2941	12	intermediate
2942	1	advanced
2943	1	advanced
2944	3	advanced
2945	6	intermediate
2947	11	intermediate
2948	6	beginner
2949	1	beginner
2950	4	advanced
2951	2	beginner
2952	9	intermediate
2953	8	advanced
2954	12	advanced
2955	2	intermediate
2957	10	beginner
2958	1	advanced
2961	1	beginner
2962	3	beginner
2963	10	intermediate
2964	6	intermediate
2965	12	beginner
2966	10	beginner
2967	7	advanced
2968	9	advanced
2969	5	intermediate
2970	10	beginner
2974	5	intermediate
2977	6	beginner
2978	4	intermediate
2979	8	advanced
2981	1	advanced
2982	2	beginner
2988	8	intermediate
2990	4	intermediate
2991	11	intermediate
2992	6	intermediate
2993	6	beginner
2994	11	advanced
2996	7	intermediate
2997	1	advanced
2998	10	advanced
2999	7	advanced
3001	11	intermediate
3004	11	intermediate
3005	9	intermediate
3013	5	advanced
3016	6	advanced
3018	3	advanced
3019	6	intermediate
3024	4	advanced
3027	8	advanced
3028	10	beginner
3029	6	beginner
3031	12	intermediate
3034	6	intermediate
3038	3	intermediate
3039	8	intermediate
3040	8	advanced
3041	6	advanced
3042	5	beginner
3043	5	advanced
3046	5	beginner
3052	7	advanced
3056	6	advanced
3057	1	beginner
3058	12	intermediate
3059	7	advanced
3061	6	beginner
3063	8	beginner
3064	4	beginner
3066	9	intermediate
3067	10	advanced
3069	2	advanced
3071	5	intermediate
3072	5	advanced
3074	9	intermediate
3075	2	advanced
3076	5	advanced
3078	6	advanced
3080	12	beginner
3082	8	advanced
3083	8	intermediate
3085	10	intermediate
3088	10	intermediate
3089	4	beginner
3091	8	advanced
3092	4	intermediate
3095	11	advanced
3096	1	beginner
3098	3	beginner
3099	4	beginner
3100	3	advanced
3103	5	intermediate
3104	12	intermediate
3107	2	advanced
3109	1	beginner
3111	7	beginner
3112	12	beginner
3113	1	advanced
3114	8	intermediate
3115	6	advanced
3117	10	intermediate
3118	5	beginner
3119	11	advanced
3121	4	advanced
3124	7	beginner
3126	1	advanced
3127	9	intermediate
3128	3	advanced
3129	6	intermediate
3131	6	intermediate
3134	8	advanced
3135	5	intermediate
3136	2	intermediate
3140	3	advanced
3147	6	advanced
3150	12	intermediate
3151	6	beginner
3152	12	beginner
3155	1	intermediate
3159	5	intermediate
3163	6	beginner
3170	1	intermediate
3172	2	intermediate
3178	7	beginner
3179	11	advanced
3180	8	beginner
3181	9	intermediate
3182	11	intermediate
3184	12	advanced
3185	10	intermediate
3186	8	beginner
3187	5	advanced
3189	8	beginner
3191	5	advanced
3192	11	advanced
3193	3	intermediate
3200	3	advanced
3202	12	intermediate
3203	12	beginner
3205	1	advanced
3206	10	beginner
3207	12	intermediate
3208	4	intermediate
3210	5	advanced
3211	7	beginner
3212	1	advanced
3216	12	beginner
3217	1	intermediate
3220	8	beginner
3221	8	intermediate
3222	10	beginner
3225	3	advanced
3228	9	advanced
3231	4	intermediate
3234	6	intermediate
3235	9	beginner
3236	5	advanced
3239	3	advanced
3241	11	beginner
3242	4	intermediate
3247	6	intermediate
3248	6	intermediate
3250	12	intermediate
3252	2	advanced
3253	11	beginner
3254	5	advanced
3255	11	beginner
3257	12	beginner
3258	11	intermediate
3259	8	beginner
3260	6	advanced
3261	10	intermediate
3262	6	intermediate
3263	1	beginner
3265	12	intermediate
3270	8	advanced
3271	10	advanced
3273	11	beginner
3276	11	advanced
3279	8	advanced
3283	4	advanced
3284	2	beginner
3285	10	intermediate
3286	6	advanced
3287	11	beginner
3289	11	beginner
3292	8	advanced
3293	2	advanced
3296	11	beginner
3297	4	advanced
3298	4	beginner
3299	6	advanced
3308	4	intermediate
3310	3	advanced
3312	4	advanced
3315	8	advanced
3316	11	advanced
3317	9	intermediate
3320	1	intermediate
3321	2	beginner
3322	2	advanced
3327	3	intermediate
3333	7	beginner
3336	9	intermediate
3337	7	intermediate
3340	4	beginner
3343	5	advanced
3345	4	intermediate
3351	8	beginner
3352	11	advanced
3353	12	beginner
3354	2	intermediate
3355	3	advanced
3358	7	beginner
3360	11	advanced
3361	5	beginner
3364	5	beginner
3365	4	beginner
3366	2	advanced
3367	11	beginner
3368	7	intermediate
3370	2	advanced
3371	2	beginner
3374	6	beginner
3376	11	intermediate
3378	4	advanced
3379	6	intermediate
3380	6	beginner
3381	1	beginner
3388	1	intermediate
3391	10	advanced
3393	3	beginner
3394	1	intermediate
3396	12	intermediate
3397	3	beginner
3400	6	intermediate
3402	11	beginner
3403	2	beginner
3404	8	intermediate
3405	11	advanced
3407	2	intermediate
3410	11	advanced
3411	2	beginner
3412	11	advanced
3417	4	advanced
3418	6	advanced
3420	3	intermediate
3422	3	beginner
3423	2	advanced
3424	8	advanced
3426	10	beginner
3427	11	advanced
3430	12	beginner
3431	3	advanced
3433	12	beginner
3435	6	beginner
3437	11	beginner
3438	7	beginner
3443	4	beginner
3446	2	intermediate
3449	1	advanced
3450	12	beginner
3455	4	intermediate
3456	4	advanced
3457	7	advanced
3459	9	beginner
3461	6	intermediate
3463	3	intermediate
3464	7	beginner
3468	12	beginner
3471	7	intermediate
3472	5	advanced
3473	6	advanced
3474	4	intermediate
3475	10	beginner
3476	8	advanced
3481	5	intermediate
3483	5	beginner
3484	8	intermediate
3485	10	intermediate
3490	9	advanced
3491	6	advanced
3492	7	advanced
3500	7	beginner
3501	6	beginner
3502	2	beginner
3507	8	advanced
3508	6	intermediate
3510	6	beginner
3511	3	beginner
3513	7	beginner
3514	2	intermediate
3515	10	intermediate
3516	1	intermediate
3518	3	intermediate
3519	12	beginner
3521	6	beginner
3525	3	advanced
3526	6	beginner
3527	6	beginner
3529	4	beginner
3530	12	beginner
3532	3	intermediate
3534	12	advanced
3535	4	advanced
3537	5	advanced
3538	3	intermediate
3542	12	intermediate
3543	2	advanced
3545	4	advanced
3551	1	advanced
3553	2	advanced
3555	10	intermediate
3556	9	intermediate
3557	2	advanced
3558	1	advanced
3559	5	beginner
3560	5	advanced
3563	8	advanced
3564	4	beginner
3566	4	advanced
3570	11	advanced
3574	6	beginner
3577	11	intermediate
3578	11	intermediate
3579	5	advanced
3580	10	beginner
3582	2	advanced
3583	3	beginner
3587	4	intermediate
3588	1	intermediate
3593	5	intermediate
3594	9	advanced
3595	2	beginner
3597	12	advanced
3599	8	beginner
3600	11	advanced
3606	7	beginner
3607	11	advanced
3608	1	advanced
3609	10	beginner
3610	1	intermediate
3612	5	intermediate
3613	3	intermediate
3616	4	beginner
3618	2	advanced
3619	4	beginner
3620	11	intermediate
3624	2	beginner
3625	3	beginner
3629	12	intermediate
3636	11	intermediate
3637	9	advanced
3638	7	beginner
3639	4	beginner
3641	10	intermediate
3642	5	advanced
3643	8	advanced
3646	12	intermediate
3649	11	intermediate
3652	4	beginner
3653	4	intermediate
3655	11	intermediate
3657	3	beginner
3658	3	advanced
3659	7	advanced
3660	9	advanced
3661	6	beginner
3662	4	beginner
3667	8	beginner
3668	3	advanced
3669	2	advanced
3671	2	intermediate
3672	9	beginner
3673	5	beginner
3675	8	intermediate
3676	12	advanced
3678	11	advanced
3681	12	beginner
3682	5	intermediate
3684	3	intermediate
3687	7	advanced
3688	5	intermediate
3689	5	advanced
3690	4	intermediate
3691	6	advanced
3693	3	advanced
3695	1	beginner
3699	12	intermediate
3702	11	intermediate
3703	2	advanced
3704	5	beginner
3705	4	beginner
3706	11	intermediate
3708	6	advanced
3710	8	beginner
3712	7	beginner
3713	9	advanced
3714	3	intermediate
3715	12	intermediate
3723	10	beginner
3726	12	advanced
3727	1	advanced
3728	12	intermediate
3732	11	beginner
3733	9	advanced
3735	11	beginner
3737	2	intermediate
3738	6	intermediate
3740	10	intermediate
3741	9	advanced
3743	7	advanced
3749	1	beginner
3750	2	intermediate
3751	8	beginner
3753	5	intermediate
3756	5	intermediate
3757	8	intermediate
3760	10	advanced
3763	8	advanced
3764	8	intermediate
3765	11	advanced
3766	3	beginner
3769	5	advanced
3770	3	beginner
3773	6	beginner
3776	7	intermediate
3777	9	intermediate
3778	2	intermediate
3780	4	intermediate
3784	7	intermediate
3785	6	intermediate
3786	10	intermediate
3787	1	intermediate
3788	6	beginner
3790	5	advanced
3793	5	beginner
3800	11	advanced
3803	7	advanced
3804	6	intermediate
3806	1	advanced
3808	7	intermediate
3809	3	beginner
3810	2	advanced
3811	6	intermediate
3813	2	intermediate
3814	2	intermediate
3817	8	intermediate
3819	6	beginner
3821	1	beginner
3822	7	beginner
3826	2	beginner
3827	8	beginner
3828	6	advanced
3829	12	intermediate
3831	2	beginner
3832	4	intermediate
3833	5	intermediate
3835	3	intermediate
3837	7	advanced
3840	5	beginner
3842	11	intermediate
3843	12	advanced
3845	8	beginner
3846	8	beginner
3850	10	advanced
3851	1	advanced
3852	2	intermediate
3855	2	advanced
3856	11	advanced
3859	7	beginner
3862	12	beginner
3864	9	intermediate
3865	6	advanced
3866	3	advanced
3868	3	beginner
3869	9	advanced
3870	7	beginner
3871	12	intermediate
3876	6	beginner
3877	4	intermediate
3882	11	intermediate
3883	6	advanced
3884	11	advanced
3885	12	intermediate
3886	1	advanced
3887	4	advanced
3892	2	beginner
3893	6	beginner
3896	4	beginner
3898	11	advanced
3901	5	beginner
3902	5	beginner
3906	4	intermediate
3907	12	intermediate
3908	4	beginner
3910	6	advanced
3911	7	intermediate
3914	5	advanced
3915	1	beginner
3919	5	intermediate
3921	1	intermediate
3931	3	beginner
3933	8	intermediate
3935	10	advanced
3938	12	advanced
3939	12	beginner
3943	7	advanced
3944	10	advanced
3945	10	beginner
3946	1	advanced
3947	12	advanced
3949	1	advanced
3951	9	intermediate
3952	10	intermediate
3959	6	intermediate
3960	6	intermediate
3963	12	beginner
3964	2	beginner
3965	4	intermediate
3969	3	intermediate
3970	9	advanced
3974	3	intermediate
3975	11	advanced
3976	10	intermediate
3979	2	advanced
3984	4	beginner
3986	7	intermediate
3987	6	beginner
3997	8	intermediate
4000	5	intermediate
4001	6	intermediate
4005	7	advanced
4010	7	advanced
4013	11	beginner
4015	11	advanced
4017	11	advanced
4019	11	beginner
4020	11	advanced
4023	5	intermediate
4025	6	intermediate
4027	8	beginner
4032	9	beginner
4035	7	advanced
4036	8	advanced
4039	5	advanced
4041	7	advanced
4046	10	beginner
4048	2	intermediate
4050	12	advanced
4051	8	beginner
4052	9	beginner
4055	11	intermediate
4057	3	advanced
4058	2	intermediate
4059	5	beginner
4061	3	intermediate
4062	1	intermediate
4063	11	intermediate
4064	1	intermediate
4065	8	beginner
4066	4	beginner
4068	6	beginner
4070	10	advanced
4072	10	intermediate
4073	11	beginner
4074	6	beginner
4077	12	intermediate
4082	9	beginner
4085	10	beginner
4088	8	beginner
4089	11	intermediate
4091	7	advanced
4092	9	beginner
4093	2	beginner
4095	8	advanced
4096	11	beginner
4097	8	intermediate
4100	8	intermediate
4103	5	intermediate
4106	2	advanced
4107	3	advanced
4110	5	intermediate
4111	9	intermediate
4115	9	beginner
4120	11	beginner
4122	3	advanced
4123	3	intermediate
4125	10	beginner
4126	10	advanced
4128	1	advanced
4130	11	intermediate
4131	4	beginner
4132	5	beginner
4133	8	advanced
4134	9	intermediate
4135	7	intermediate
4136	1	intermediate
4137	1	beginner
4138	12	beginner
4141	6	intermediate
4144	6	advanced
4145	10	beginner
4147	3	intermediate
4148	12	advanced
4149	4	advanced
4150	1	beginner
4151	5	intermediate
4152	10	intermediate
4153	9	beginner
4154	2	advanced
4155	5	beginner
4156	7	intermediate
4158	5	beginner
4160	4	advanced
4163	9	beginner
4166	9	intermediate
4167	1	intermediate
4168	5	advanced
4171	11	beginner
4172	7	intermediate
4173	12	intermediate
4175	5	advanced
4176	1	advanced
4178	1	intermediate
4179	7	beginner
4183	9	beginner
4184	5	beginner
4187	5	advanced
4190	8	intermediate
4194	3	intermediate
4195	7	advanced
4196	4	advanced
4204	5	advanced
4206	6	intermediate
4207	2	advanced
4209	7	advanced
4212	4	intermediate
4213	12	intermediate
4215	9	beginner
4216	8	intermediate
4217	1	advanced
4221	12	advanced
4222	12	beginner
4224	11	intermediate
4225	1	intermediate
4228	4	advanced
4233	7	advanced
4236	3	advanced
4239	2	beginner
4244	5	advanced
4248	12	advanced
4249	10	beginner
4250	11	advanced
4251	2	advanced
4252	7	advanced
4253	4	beginner
4254	9	beginner
4257	9	intermediate
4259	5	advanced
4260	5	intermediate
4261	11	advanced
4263	10	intermediate
4268	3	advanced
4269	2	advanced
4271	12	intermediate
4273	2	beginner
4275	3	advanced
4276	9	advanced
4277	12	intermediate
4280	11	beginner
4281	6	beginner
4283	8	intermediate
4288	1	beginner
4290	12	intermediate
4291	1	intermediate
4293	8	advanced
4294	11	beginner
4297	3	advanced
4299	4	intermediate
4300	12	advanced
4302	5	advanced
4303	4	advanced
4305	5	intermediate
4312	8	intermediate
4313	9	beginner
4314	4	beginner
4318	3	intermediate
4319	1	advanced
4323	8	intermediate
4326	5	advanced
4330	2	intermediate
4331	9	intermediate
4332	4	beginner
4334	11	advanced
4343	5	advanced
4344	4	advanced
4345	3	beginner
4347	11	intermediate
4349	5	advanced
4350	5	beginner
4352	3	beginner
4353	2	beginner
4355	3	advanced
4356	2	intermediate
4358	3	advanced
4359	5	beginner
4363	8	advanced
4364	6	intermediate
4366	6	advanced
4368	4	beginner
4369	1	beginner
4370	3	intermediate
4372	6	beginner
4373	8	intermediate
4375	7	intermediate
4381	1	intermediate
4386	3	beginner
4388	1	advanced
4389	8	beginner
4396	4	beginner
4400	9	intermediate
4401	1	beginner
4402	12	advanced
4404	9	beginner
4405	9	beginner
4407	8	beginner
4408	11	beginner
4409	4	intermediate
4411	3	advanced
4412	4	intermediate
4414	12	intermediate
4415	5	beginner
4416	5	beginner
4417	12	advanced
4418	3	intermediate
4421	4	beginner
4422	11	intermediate
4427	7	advanced
4428	3	intermediate
4429	3	beginner
4433	8	intermediate
4434	6	advanced
4435	8	intermediate
4437	12	advanced
4439	9	advanced
4441	12	intermediate
4442	8	beginner
4443	4	advanced
4444	4	beginner
4445	8	beginner
4446	10	advanced
4448	4	beginner
4450	4	beginner
4451	6	advanced
4452	10	intermediate
4454	10	intermediate
4455	6	intermediate
4456	1	intermediate
4458	8	intermediate
4462	6	intermediate
4464	7	advanced
4466	11	advanced
4472	7	advanced
4474	10	beginner
4475	5	intermediate
4476	6	advanced
4478	1	intermediate
4481	5	advanced
4482	9	intermediate
4483	12	beginner
4486	8	beginner
4488	12	beginner
4489	5	advanced
4491	2	intermediate
4492	4	beginner
4493	7	beginner
4494	8	advanced
4498	10	beginner
4499	9	intermediate
4500	10	advanced
4501	4	intermediate
4504	12	beginner
4506	5	beginner
4507	1	beginner
4509	5	advanced
4510	7	advanced
4511	11	intermediate
4514	11	intermediate
4515	7	beginner
4516	11	intermediate
4518	11	beginner
4519	5	advanced
4520	12	intermediate
4521	7	advanced
4522	1	advanced
4524	5	beginner
4525	4	beginner
4529	8	advanced
4530	5	advanced
4532	2	intermediate
4533	11	advanced
4535	4	advanced
4538	9	intermediate
4539	3	advanced
4540	1	beginner
4541	11	intermediate
4543	8	advanced
4545	10	beginner
4548	1	intermediate
4550	9	beginner
4551	11	beginner
4554	8	intermediate
4561	9	beginner
4563	2	beginner
4564	7	beginner
4565	2	advanced
4566	7	intermediate
4567	3	intermediate
4568	7	intermediate
4574	8	advanced
4575	8	advanced
4576	5	intermediate
4578	4	intermediate
4579	4	advanced
4580	9	advanced
4581	11	advanced
4583	8	advanced
4584	6	advanced
4587	7	advanced
4589	3	intermediate
4590	10	advanced
4591	8	advanced
4592	12	intermediate
4595	1	intermediate
4597	1	advanced
4599	12	beginner
4600	9	beginner
4602	3	intermediate
4603	8	advanced
4605	4	beginner
4606	2	beginner
4608	7	intermediate
4609	4	advanced
4611	2	advanced
4612	3	intermediate
4613	12	beginner
4614	3	intermediate
4616	10	advanced
4620	6	advanced
4623	2	beginner
4625	6	advanced
4626	10	intermediate
4628	5	intermediate
4633	1	advanced
4634	11	advanced
4636	7	intermediate
4638	12	beginner
4639	11	advanced
4641	1	advanced
4645	10	beginner
4652	4	intermediate
4655	12	advanced
4656	5	beginner
4658	3	advanced
4659	10	advanced
4660	1	advanced
4664	12	intermediate
4665	3	intermediate
4666	6	intermediate
4667	6	intermediate
4669	11	intermediate
4670	9	intermediate
4671	7	intermediate
4672	11	advanced
4673	12	intermediate
4679	4	intermediate
4680	4	intermediate
4681	10	advanced
4682	6	intermediate
4683	3	advanced
4684	7	beginner
4685	5	intermediate
4687	6	beginner
4688	11	advanced
4689	8	beginner
4691	6	advanced
4692	2	beginner
4693	1	intermediate
4694	2	intermediate
4695	8	advanced
4696	7	intermediate
4697	3	intermediate
4699	1	beginner
4700	3	beginner
4704	10	beginner
4705	8	beginner
4707	10	beginner
4708	4	intermediate
4709	5	advanced
4714	9	beginner
4715	10	intermediate
4721	4	advanced
4723	3	advanced
4724	12	advanced
4726	1	beginner
4728	7	intermediate
4729	10	beginner
4731	4	advanced
4732	11	intermediate
4733	3	advanced
4734	3	intermediate
4736	10	advanced
4738	7	beginner
4739	7	beginner
4743	5	advanced
4744	4	intermediate
4746	2	intermediate
4751	2	intermediate
4753	12	intermediate
4754	1	advanced
4755	3	intermediate
4758	11	intermediate
4759	6	intermediate
4763	5	beginner
4764	8	intermediate
4766	7	beginner
4767	7	beginner
4768	10	advanced
4772	1	beginner
4773	8	beginner
4776	9	advanced
4780	4	advanced
4781	5	advanced
4782	6	beginner
4783	8	intermediate
4784	4	intermediate
4787	11	intermediate
4791	6	intermediate
4794	8	beginner
4799	12	intermediate
4801	1	advanced
4805	7	beginner
4806	3	advanced
4807	12	beginner
4809	9	beginner
4811	2	beginner
4813	11	advanced
4814	8	intermediate
4818	11	beginner
4822	10	beginner
4825	2	advanced
4829	8	advanced
4830	2	intermediate
4831	6	beginner
4832	12	intermediate
4833	2	beginner
4839	3	beginner
4841	5	beginner
4844	8	advanced
4847	12	advanced
4848	3	intermediate
4856	6	beginner
4859	3	beginner
4863	7	intermediate
4864	12	beginner
4866	3	intermediate
4867	3	intermediate
4868	8	beginner
4870	5	beginner
4874	6	intermediate
4877	10	advanced
4879	7	beginner
4880	3	intermediate
4882	7	advanced
4883	11	intermediate
4884	5	intermediate
4885	11	intermediate
4886	7	intermediate
4887	9	beginner
4888	5	advanced
4889	3	intermediate
4894	6	intermediate
4895	8	beginner
4897	8	advanced
4898	1	advanced
4899	11	advanced
4900	12	advanced
4902	12	intermediate
4903	3	advanced
4904	11	advanced
4909	6	advanced
4911	7	beginner
4912	7	advanced
4913	11	beginner
4914	9	beginner
4917	1	advanced
4918	3	advanced
4923	2	advanced
4924	9	intermediate
4925	2	beginner
4926	7	advanced
4928	1	intermediate
4934	10	advanced
4935	10	beginner
4936	1	beginner
4937	1	beginner
4941	6	intermediate
4942	12	beginner
4944	1	beginner
4945	6	advanced
4947	3	intermediate
4950	10	advanced
4951	10	advanced
4952	3	advanced
4954	7	beginner
4955	11	advanced
4956	3	intermediate
4960	12	intermediate
4961	10	intermediate
4965	1	beginner
4966	1	intermediate
4967	5	advanced
4968	8	beginner
4970	10	beginner
4973	9	advanced
4979	2	beginner
4981	5	intermediate
4982	4	beginner
4984	8	beginner
4992	1	beginner
4993	4	beginner
4995	5	intermediate
4999	1	beginner
5002	12	intermediate
5005	11	beginner
5006	11	advanced
5007	6	intermediate
5011	3	intermediate
5013	3	intermediate
5016	5	advanced
5017	7	advanced
5026	9	beginner
5027	10	beginner
5028	12	beginner
5029	5	advanced
5030	7	beginner
5031	11	beginner
5032	1	advanced
5034	11	beginner
5035	5	intermediate
5043	7	intermediate
5044	1	advanced
5045	8	advanced
5047	3	beginner
5048	11	intermediate
5049	9	intermediate
5051	7	advanced
5053	3	beginner
5056	1	beginner
5059	6	beginner
5060	9	intermediate
5064	9	intermediate
5065	12	intermediate
5066	7	beginner
5069	1	beginner
5071	7	advanced
5072	10	advanced
5074	1	advanced
5075	11	beginner
5085	2	beginner
5089	12	intermediate
5091	5	advanced
5093	4	beginner
5094	12	advanced
5095	9	beginner
5096	11	beginner
5097	3	intermediate
5099	10	advanced
5102	2	beginner
5105	12	beginner
5106	8	intermediate
5107	6	intermediate
5110	6	beginner
5111	11	advanced
5118	12	beginner
5120	4	advanced
5121	12	advanced
5122	11	advanced
5124	7	advanced
5126	8	intermediate
5127	1	advanced
5128	5	intermediate
5129	1	intermediate
5131	8	beginner
5132	10	advanced
5133	6	intermediate
5134	6	beginner
5137	10	beginner
5138	6	intermediate
5139	7	intermediate
5140	4	advanced
5141	2	intermediate
5142	5	intermediate
5146	6	intermediate
5150	3	advanced
5152	6	beginner
5155	1	intermediate
5156	11	beginner
5157	4	beginner
5158	5	beginner
5159	6	advanced
5160	4	beginner
5161	5	intermediate
5164	4	intermediate
5165	8	intermediate
5167	1	advanced
5168	4	advanced
5169	12	beginner
5171	1	beginner
5172	10	beginner
5173	1	advanced
5177	7	intermediate
5178	12	intermediate
5179	10	beginner
5180	8	advanced
5181	10	beginner
5182	1	intermediate
5183	8	advanced
5185	3	intermediate
5186	2	intermediate
5191	3	beginner
5193	4	advanced
5194	8	beginner
5196	11	advanced
5199	6	advanced
5200	10	intermediate
5204	4	beginner
5207	10	intermediate
5210	5	advanced
5213	7	intermediate
5214	1	beginner
5217	1	beginner
5218	9	intermediate
5219	8	advanced
5222	1	advanced
5223	8	beginner
5225	9	advanced
5228	10	beginner
5234	11	beginner
5235	4	beginner
5236	3	intermediate
5239	6	intermediate
5240	12	advanced
5242	3	intermediate
5243	6	advanced
5246	1	intermediate
5247	10	beginner
5249	2	beginner
5250	4	advanced
5251	3	beginner
5253	2	intermediate
5255	8	intermediate
5258	3	beginner
5259	10	beginner
5261	9	advanced
5262	4	beginner
5264	6	beginner
5265	5	beginner
5267	5	intermediate
5268	8	beginner
5269	8	advanced
5270	8	intermediate
5271	9	advanced
5273	11	intermediate
5276	9	beginner
5280	2	beginner
5282	4	intermediate
5284	12	beginner
5287	2	beginner
5288	10	advanced
5291	9	beginner
5292	8	intermediate
5293	10	intermediate
5295	9	advanced
5296	4	intermediate
5297	8	advanced
5298	8	advanced
5304	3	beginner
5307	8	intermediate
5308	11	intermediate
5311	6	advanced
5312	8	advanced
5314	5	intermediate
5319	6	advanced
5320	9	beginner
5321	3	beginner
5323	12	intermediate
5326	4	advanced
5327	8	intermediate
5332	3	beginner
5333	6	beginner
5334	1	beginner
5335	8	beginner
5336	11	intermediate
5339	3	advanced
5340	3	intermediate
5341	1	intermediate
5348	10	beginner
5349	12	advanced
5351	1	intermediate
5352	8	beginner
5353	9	intermediate
5356	10	beginner
5358	7	beginner
5361	5	beginner
5363	9	intermediate
5364	6	advanced
5365	5	beginner
5366	2	beginner
5367	7	intermediate
5369	3	beginner
5371	9	intermediate
5372	3	beginner
5373	12	intermediate
5374	3	intermediate
5375	6	intermediate
5377	7	beginner
5383	3	beginner
5385	7	advanced
5386	3	beginner
5389	8	beginner
5390	4	advanced
5393	8	beginner
5394	9	intermediate
5395	8	beginner
5398	7	intermediate
5399	11	beginner
5403	10	intermediate
5404	11	advanced
5406	3	intermediate
5409	1	advanced
5411	11	advanced
5413	10	beginner
5414	12	intermediate
5416	12	intermediate
5417	10	beginner
5418	5	beginner
5419	10	advanced
5422	9	advanced
5423	6	intermediate
5424	4	beginner
5426	8	intermediate
5430	11	advanced
5431	6	beginner
5432	6	advanced
5433	9	beginner
5435	7	intermediate
5437	10	beginner
5442	1	advanced
5443	1	beginner
5444	9	intermediate
5446	4	intermediate
5447	1	advanced
5451	12	beginner
5453	4	beginner
5454	3	advanced
5459	6	beginner
5460	9	advanced
5463	9	advanced
5464	7	intermediate
5467	12	advanced
5471	10	beginner
5473	1	intermediate
5477	5	advanced
5478	4	advanced
5479	4	beginner
5480	3	intermediate
5483	3	beginner
5486	2	beginner
5487	10	beginner
5489	2	advanced
5491	9	beginner
5492	10	beginner
5493	5	advanced
5494	12	intermediate
5497	12	beginner
5498	11	intermediate
5500	8	advanced
5501	12	beginner
5502	8	beginner
5506	3	beginner
5507	9	advanced
5508	2	advanced
5509	8	beginner
5512	1	advanced
5513	5	intermediate
5514	3	advanced
5515	7	advanced
5517	3	intermediate
5518	1	beginner
5520	3	beginner
5522	9	beginner
5524	4	intermediate
5525	4	beginner
5526	12	advanced
5528	8	intermediate
5529	7	advanced
5530	10	intermediate
5533	7	intermediate
5536	10	intermediate
5538	9	advanced
5539	4	intermediate
5540	7	beginner
5542	3	intermediate
5545	12	beginner
5546	3	intermediate
5547	11	advanced
5548	12	intermediate
5550	4	beginner
5553	7	advanced
5554	4	intermediate
5555	6	intermediate
5558	1	intermediate
5559	10	intermediate
5561	6	beginner
5563	9	beginner
5564	10	advanced
5567	5	beginner
5569	4	intermediate
5572	11	advanced
5574	11	beginner
5575	9	advanced
5576	1	intermediate
5578	4	advanced
5581	1	intermediate
5583	6	intermediate
5589	7	beginner
5590	1	advanced
5591	12	beginner
5593	10	advanced
5594	6	advanced
5598	1	advanced
5599	9	intermediate
5600	10	intermediate
5601	1	intermediate
5602	2	intermediate
5604	11	intermediate
5605	1	intermediate
5611	6	intermediate
5614	8	intermediate
5615	4	beginner
5620	3	beginner
5623	11	intermediate
5625	7	beginner
5627	6	advanced
5628	3	intermediate
5629	3	beginner
5630	3	intermediate
5632	7	advanced
5633	10	advanced
5635	9	advanced
5638	6	beginner
5643	12	advanced
5644	10	advanced
5646	8	intermediate
5648	11	beginner
5650	8	beginner
5651	2	intermediate
5652	6	beginner
5656	9	beginner
5657	3	intermediate
5658	12	intermediate
5659	8	beginner
5660	6	advanced
5661	3	beginner
5663	10	advanced
5666	10	beginner
5668	6	intermediate
5669	1	beginner
5670	9	advanced
5671	8	beginner
5673	8	intermediate
5674	8	intermediate
5679	7	beginner
5680	2	intermediate
5682	2	advanced
5683	2	advanced
5684	10	beginner
5685	12	beginner
5687	9	beginner
5689	6	intermediate
5691	7	beginner
5692	3	intermediate
5694	6	advanced
5696	9	beginner
5698	2	advanced
5702	11	advanced
5703	1	advanced
5704	5	intermediate
5705	11	beginner
5706	8	intermediate
5713	2	advanced
5716	10	intermediate
5721	7	advanced
5723	12	advanced
5725	5	intermediate
5726	8	beginner
5728	11	beginner
5730	12	beginner
5736	2	intermediate
5738	9	beginner
5742	10	advanced
5744	1	advanced
5745	6	advanced
5746	2	intermediate
5748	3	advanced
5749	1	intermediate
5750	6	advanced
5757	10	advanced
5758	4	beginner
5760	8	beginner
5761	3	beginner
5762	12	beginner
5764	12	beginner
5770	10	beginner
5771	3	beginner
5773	12	advanced
5774	3	beginner
5775	3	intermediate
5779	11	beginner
5780	6	intermediate
5782	8	beginner
5783	11	advanced
5784	10	intermediate
5785	10	beginner
5786	2	beginner
5787	10	intermediate
5788	3	intermediate
5791	4	beginner
5793	12	advanced
5794	7	beginner
5797	3	advanced
5798	7	beginner
5799	10	beginner
5802	10	intermediate
5803	7	advanced
5805	3	advanced
5806	2	advanced
5807	12	beginner
5811	5	advanced
5812	10	advanced
5814	8	intermediate
5815	12	beginner
5818	11	advanced
5819	1	intermediate
5821	7	beginner
5822	12	intermediate
5823	6	beginner
5826	3	beginner
5829	9	advanced
5832	7	beginner
5834	7	beginner
5835	3	intermediate
5842	2	beginner
5844	8	beginner
5846	8	advanced
5847	2	intermediate
5849	7	beginner
5851	5	intermediate
5852	9	advanced
5853	2	beginner
5854	3	beginner
5857	4	advanced
5858	5	advanced
5860	7	advanced
5861	8	advanced
5862	3	advanced
5863	5	intermediate
5867	1	advanced
5877	7	intermediate
5880	10	beginner
5882	1	advanced
5883	3	intermediate
5885	6	intermediate
5886	5	beginner
5888	2	intermediate
5889	10	advanced
5891	6	intermediate
5895	7	beginner
5896	7	advanced
5899	3	intermediate
5900	10	intermediate
5901	6	intermediate
5904	8	beginner
5906	5	advanced
5910	12	beginner
5911	2	advanced
5913	1	advanced
5914	5	beginner
5916	9	beginner
5917	1	advanced
5919	12	beginner
5927	5	advanced
5928	8	intermediate
5929	8	intermediate
5930	9	intermediate
5931	4	advanced
5934	10	advanced
5936	5	advanced
5939	3	beginner
5940	1	advanced
5941	6	intermediate
5942	6	advanced
5943	6	intermediate
5944	11	beginner
5945	4	intermediate
5949	1	advanced
5950	1	beginner
5952	12	advanced
5954	9	beginner
5957	8	advanced
5958	12	intermediate
5959	12	beginner
5960	10	beginner
5961	3	intermediate
5962	11	intermediate
5963	11	intermediate
5964	10	advanced
5966	9	intermediate
5968	6	beginner
5970	12	intermediate
5972	10	intermediate
5975	6	beginner
5977	6	beginner
5978	7	advanced
5979	12	beginner
5980	5	beginner
5982	10	intermediate
5983	12	intermediate
5984	8	advanced
5985	4	beginner
5986	12	intermediate
5987	12	intermediate
5988	12	advanced
5989	7	advanced
5994	7	intermediate
5995	6	beginner
5996	10	intermediate
5997	6	advanced
5998	10	beginner
5999	10	intermediate
6004	9	intermediate
6005	3	intermediate
6008	4	beginner
6012	12	beginner
6013	8	advanced
6015	10	intermediate
6016	8	beginner
6017	3	intermediate
6018	6	advanced
6019	10	intermediate
6020	6	advanced
6021	2	beginner
6023	1	intermediate
6024	5	intermediate
6025	10	beginner
6026	1	intermediate
6027	6	advanced
6028	3	intermediate
6029	10	intermediate
6031	11	advanced
6034	3	advanced
6035	6	intermediate
6037	5	intermediate
6040	8	intermediate
6042	12	advanced
6043	3	advanced
6044	10	beginner
6046	11	intermediate
6048	4	beginner
6050	9	advanced
6051	2	advanced
6052	6	beginner
6053	6	beginner
6057	2	intermediate
6059	5	advanced
6060	9	advanced
6061	3	advanced
6063	10	intermediate
6069	2	beginner
6070	3	beginner
6071	7	intermediate
6072	6	beginner
6075	7	advanced
6076	12	beginner
6077	5	beginner
6079	11	beginner
6081	3	intermediate
6082	3	intermediate
6085	11	intermediate
6086	9	advanced
6087	1	intermediate
6091	10	intermediate
6093	12	intermediate
6094	2	advanced
6096	12	advanced
6097	6	beginner
6099	9	beginner
6103	9	beginner
6105	3	advanced
6107	4	intermediate
6109	2	advanced
6110	12	advanced
6113	10	advanced
6115	5	intermediate
6118	1	advanced
6120	12	intermediate
6125	2	beginner
6127	11	beginner
6128	8	intermediate
6131	7	beginner
6132	1	beginner
6133	2	intermediate
6134	4	intermediate
6137	10	intermediate
6138	2	advanced
6139	9	beginner
6140	2	advanced
6141	1	beginner
6142	7	beginner
6143	10	advanced
6144	10	beginner
6148	6	advanced
6149	7	beginner
6150	6	intermediate
6152	3	advanced
6154	10	intermediate
6157	7	beginner
6158	8	beginner
6161	6	intermediate
6162	12	intermediate
6164	3	intermediate
6166	12	beginner
6169	10	advanced
6171	7	advanced
6172	10	beginner
6174	12	advanced
6175	8	beginner
6176	11	intermediate
6177	6	intermediate
6181	10	advanced
6185	5	advanced
6187	1	advanced
6194	9	beginner
6195	10	advanced
6198	9	advanced
6200	2	advanced
6207	9	intermediate
6210	2	advanced
6211	1	beginner
6213	9	intermediate
6214	10	advanced
6215	5	beginner
6217	7	advanced
6220	6	beginner
6221	7	beginner
6226	8	intermediate
6228	6	beginner
6233	7	intermediate
6239	5	intermediate
6240	9	beginner
6242	4	intermediate
6246	9	beginner
6247	8	intermediate
6248	5	intermediate
6252	2	beginner
6253	12	intermediate
6256	1	advanced
6257	3	beginner
6259	5	beginner
6260	6	beginner
6261	7	beginner
6262	1	beginner
6263	3	advanced
6267	9	beginner
6268	3	beginner
6269	1	intermediate
6270	5	beginner
6271	5	beginner
6273	3	beginner
6275	3	intermediate
6276	12	advanced
6279	11	intermediate
6282	7	advanced
6284	8	intermediate
6285	9	intermediate
6287	11	advanced
6291	6	intermediate
6294	6	advanced
6296	8	advanced
6300	2	advanced
6301	8	beginner
6304	6	beginner
6305	9	intermediate
6306	9	advanced
6307	2	beginner
6309	7	intermediate
6311	5	advanced
6313	6	intermediate
6314	8	beginner
6315	12	beginner
6317	7	advanced
6320	12	beginner
6322	4	intermediate
6323	7	advanced
6327	11	intermediate
6330	2	advanced
6335	12	intermediate
6336	8	beginner
6337	5	intermediate
6338	7	intermediate
6340	11	beginner
6341	5	beginner
6343	9	intermediate
6344	1	intermediate
6347	7	beginner
6348	10	intermediate
6352	4	beginner
6353	4	advanced
6355	5	intermediate
6356	8	beginner
6357	8	advanced
6360	5	intermediate
6361	3	advanced
6363	9	beginner
6365	9	advanced
6367	7	advanced
6368	8	beginner
6369	10	beginner
6372	7	advanced
6373	2	advanced
6375	3	advanced
6377	2	beginner
6380	12	advanced
6381	7	advanced
6382	8	advanced
6383	7	intermediate
6384	6	advanced
6385	3	advanced
6387	9	advanced
6390	7	advanced
6393	10	intermediate
6395	5	intermediate
6400	5	advanced
6401	11	advanced
6403	9	advanced
6404	1	beginner
6405	8	advanced
6407	3	intermediate
6409	6	intermediate
6411	11	beginner
6412	7	beginner
6414	11	beginner
6417	3	intermediate
6418	12	advanced
6422	10	advanced
6425	8	beginner
6429	7	intermediate
6430	11	beginner
6432	3	beginner
6436	5	intermediate
6437	10	beginner
6444	2	intermediate
6445	1	intermediate
6449	5	intermediate
6455	11	advanced
6456	7	beginner
6457	8	intermediate
6458	11	advanced
6461	3	advanced
6463	12	advanced
6465	1	beginner
6467	12	intermediate
6469	10	advanced
6471	11	intermediate
6474	1	intermediate
6475	2	advanced
6478	3	advanced
6480	2	intermediate
6482	3	beginner
6488	9	beginner
6489	11	intermediate
6494	7	intermediate
6495	1	advanced
6497	12	intermediate
6498	3	beginner
6500	1	intermediate
6503	1	beginner
6509	12	intermediate
6510	4	intermediate
6512	2	intermediate
6514	10	intermediate
6515	4	intermediate
6518	9	advanced
6519	1	beginner
6520	2	advanced
6523	10	intermediate
6526	1	advanced
6528	1	advanced
6529	11	intermediate
6530	3	intermediate
6531	7	beginner
6533	9	intermediate
6534	11	advanced
6535	10	intermediate
6536	10	advanced
6538	8	advanced
6539	12	intermediate
6541	1	advanced
6543	2	intermediate
6545	1	advanced
6546	3	intermediate
6547	2	intermediate
6550	1	beginner
6551	7	intermediate
6553	6	advanced
6554	9	beginner
6555	12	advanced
6557	4	advanced
6561	1	intermediate
6562	7	advanced
6563	2	intermediate
6565	12	intermediate
6568	5	beginner
6570	8	advanced
6573	3	intermediate
6575	3	beginner
6577	1	intermediate
6581	1	intermediate
6582	12	advanced
6583	1	beginner
6587	11	beginner
6588	5	advanced
6589	8	advanced
6592	6	intermediate
6593	7	intermediate
6594	1	intermediate
6597	4	intermediate
6600	10	intermediate
6601	7	intermediate
6602	1	advanced
6603	4	intermediate
6604	1	intermediate
6610	5	beginner
6612	12	advanced
6616	5	advanced
6617	7	advanced
6618	10	advanced
6619	8	intermediate
6620	11	beginner
6629	7	advanced
6631	12	intermediate
6632	12	advanced
6633	7	intermediate
6634	2	beginner
6639	3	advanced
6640	7	beginner
6644	12	beginner
6645	5	intermediate
6646	1	beginner
6651	2	advanced
6656	1	intermediate
6657	5	advanced
6658	7	intermediate
6659	6	advanced
6660	4	advanced
6661	10	intermediate
6662	10	intermediate
6663	11	advanced
6664	10	beginner
6665	7	intermediate
6666	7	intermediate
6668	8	beginner
6672	6	intermediate
6674	5	advanced
6675	1	advanced
6676	5	advanced
6677	8	advanced
6681	11	advanced
6682	11	intermediate
6683	1	beginner
6684	8	advanced
6687	1	advanced
6691	4	advanced
6692	6	intermediate
6693	8	intermediate
6694	9	advanced
6695	1	advanced
6697	2	intermediate
6699	4	advanced
6700	8	advanced
6702	9	advanced
6706	7	intermediate
6707	4	advanced
6712	7	advanced
6717	1	beginner
6721	12	advanced
6723	3	intermediate
6724	4	beginner
6729	6	beginner
6732	4	beginner
6735	10	advanced
6737	11	advanced
6738	4	beginner
6739	1	intermediate
6742	7	advanced
6743	7	intermediate
6744	12	intermediate
6746	6	advanced
6750	9	intermediate
6751	9	intermediate
6755	12	intermediate
6756	6	beginner
6758	4	intermediate
6759	5	beginner
6760	6	beginner
6766	1	intermediate
6767	9	advanced
6768	12	beginner
6769	3	advanced
6770	4	intermediate
6771	11	intermediate
6772	2	intermediate
6773	3	beginner
6774	2	intermediate
6778	10	advanced
6779	3	beginner
6786	10	beginner
6789	1	intermediate
6791	7	beginner
6793	6	advanced
6795	10	beginner
6796	5	advanced
6797	4	intermediate
6806	1	beginner
6808	8	beginner
6809	9	beginner
6812	10	beginner
6816	8	advanced
6818	8	intermediate
6820	9	beginner
6821	6	advanced
6823	12	beginner
6824	10	intermediate
6828	7	advanced
6830	2	advanced
6832	8	intermediate
6835	6	intermediate
6837	8	advanced
6840	8	intermediate
6846	6	intermediate
6847	12	intermediate
6848	3	intermediate
6851	1	advanced
6853	4	advanced
6854	1	intermediate
6859	7	advanced
6860	6	beginner
6864	9	intermediate
6865	5	advanced
6866	11	intermediate
6869	11	intermediate
6873	4	intermediate
6875	8	intermediate
6876	1	intermediate
6878	10	intermediate
6882	10	beginner
6887	4	advanced
6889	8	advanced
6891	1	beginner
6892	6	advanced
6893	11	advanced
6896	1	intermediate
6897	1	beginner
6898	4	beginner
6899	5	advanced
6901	10	beginner
6902	1	advanced
6903	10	beginner
6904	5	advanced
6907	2	beginner
6908	10	advanced
6911	10	advanced
6912	12	intermediate
6913	6	intermediate
6914	3	beginner
6915	11	advanced
6916	12	intermediate
6918	5	beginner
6924	7	advanced
6926	5	advanced
6927	2	advanced
6931	12	beginner
6935	11	intermediate
6937	5	intermediate
6939	5	beginner
6940	4	beginner
6943	9	intermediate
6944	10	beginner
6945	11	advanced
6946	1	beginner
6947	9	beginner
6948	7	beginner
6950	7	intermediate
6951	5	beginner
6954	2	intermediate
6960	3	beginner
6962	5	beginner
6966	8	beginner
6967	1	intermediate
6968	8	intermediate
6969	7	intermediate
6971	1	advanced
6972	2	intermediate
6976	6	beginner
6979	2	intermediate
6984	4	beginner
6985	4	intermediate
6986	3	intermediate
6987	10	intermediate
6991	11	advanced
6992	11	beginner
6994	11	beginner
6995	6	advanced
6997	9	beginner
6999	6	beginner
7000	11	intermediate
7001	9	beginner
7002	2	advanced
7003	8	beginner
7005	8	beginner
7013	9	beginner
7015	10	advanced
7016	8	intermediate
7017	7	intermediate
7024	3	advanced
7025	7	advanced
7027	10	beginner
7031	12	intermediate
7035	4	beginner
7037	2	intermediate
7038	10	beginner
7039	1	intermediate
7040	7	intermediate
7041	4	intermediate
7043	9	intermediate
7044	6	advanced
7045	6	intermediate
7047	12	intermediate
7050	12	intermediate
7052	9	intermediate
7053	3	advanced
7058	4	beginner
7060	9	advanced
7061	12	advanced
7063	5	intermediate
7064	12	intermediate
7065	9	advanced
7068	11	beginner
7069	12	beginner
7071	6	advanced
7072	12	intermediate
7073	6	advanced
7075	1	beginner
7076	10	advanced
7079	4	advanced
7081	8	intermediate
7082	9	beginner
7084	4	intermediate
7085	6	advanced
7086	7	advanced
7088	2	advanced
7090	8	beginner
7091	12	intermediate
7092	7	advanced
7093	12	advanced
7094	6	beginner
7095	1	advanced
7096	1	beginner
7097	1	intermediate
7098	9	beginner
7099	9	beginner
7100	5	beginner
7101	3	beginner
7107	8	beginner
7112	3	beginner
7113	12	intermediate
7115	11	advanced
7127	11	beginner
7128	8	intermediate
7131	12	beginner
7133	8	advanced
7134	6	beginner
7135	4	advanced
7136	11	intermediate
7137	10	beginner
7139	4	beginner
7141	7	advanced
7142	4	advanced
7143	6	advanced
7146	4	advanced
7147	2	intermediate
7149	6	beginner
7152	8	beginner
7153	3	beginner
7155	11	advanced
7156	12	advanced
7157	12	intermediate
7158	6	beginner
7163	9	advanced
7166	1	advanced
7168	2	intermediate
7175	5	intermediate
7177	2	intermediate
7178	4	beginner
7179	3	intermediate
7180	1	advanced
7183	6	intermediate
7184	9	intermediate
7185	5	intermediate
7186	12	beginner
7189	9	beginner
7191	9	advanced
7192	6	beginner
7193	3	intermediate
7194	10	beginner
7197	12	advanced
7198	5	advanced
7199	8	intermediate
7200	2	advanced
7205	12	beginner
7207	7	intermediate
7210	10	advanced
7212	11	advanced
7214	2	advanced
7215	7	beginner
7217	12	advanced
7220	9	intermediate
7221	11	advanced
7224	1	advanced
7225	9	intermediate
7227	6	intermediate
7228	11	advanced
7232	7	intermediate
7233	5	advanced
7234	8	beginner
7236	8	advanced
7238	12	intermediate
7250	1	beginner
7251	9	beginner
7252	1	intermediate
7253	6	beginner
7255	12	beginner
7256	9	beginner
7257	1	intermediate
7258	3	intermediate
7259	3	advanced
7263	12	beginner
7264	10	beginner
7265	8	beginner
7266	10	beginner
7268	9	intermediate
7270	11	intermediate
7271	7	advanced
7274	8	intermediate
7275	5	intermediate
7277	7	intermediate
7279	1	intermediate
7280	4	beginner
7282	1	intermediate
7284	9	advanced
7285	6	intermediate
7286	8	beginner
7287	11	beginner
7288	6	beginner
7289	12	intermediate
7292	11	intermediate
7293	10	intermediate
7297	9	beginner
7298	5	advanced
7304	12	beginner
7308	12	advanced
7309	7	intermediate
7311	1	beginner
7313	9	advanced
7314	12	beginner
7315	2	beginner
7317	2	intermediate
7318	1	intermediate
7320	9	advanced
7321	10	beginner
7324	7	intermediate
7327	12	advanced
7328	10	beginner
7332	4	advanced
7335	7	beginner
7338	7	advanced
7339	9	beginner
7341	6	advanced
7342	2	advanced
7343	8	beginner
7344	1	intermediate
7345	4	intermediate
7347	8	advanced
7349	9	beginner
7350	5	beginner
7352	5	beginner
7353	11	advanced
7354	9	advanced
7357	2	intermediate
7361	10	beginner
7364	1	intermediate
7365	8	intermediate
7367	10	advanced
7371	11	beginner
7372	8	intermediate
7373	2	beginner
7374	9	advanced
7377	6	advanced
7379	4	intermediate
7381	2	intermediate
7383	12	intermediate
7384	8	intermediate
7385	2	beginner
7386	10	advanced
7392	2	advanced
7393	8	beginner
7396	5	intermediate
7398	5	advanced
7400	12	advanced
7403	5	beginner
7405	7	intermediate
7406	2	beginner
7409	12	advanced
7410	5	advanced
7412	8	intermediate
7413	5	beginner
7415	6	intermediate
7416	3	intermediate
7417	11	beginner
7419	2	beginner
7420	6	beginner
7423	9	beginner
7424	12	beginner
7427	6	intermediate
7428	10	advanced
7431	1	beginner
7432	6	advanced
7438	11	intermediate
7439	1	intermediate
7440	10	beginner
7441	2	beginner
7443	7	intermediate
7447	9	advanced
7449	11	intermediate
7451	9	beginner
7453	4	intermediate
7454	9	intermediate
7455	12	beginner
7456	12	beginner
7457	1	advanced
7458	7	advanced
7460	2	advanced
7463	5	beginner
7464	3	advanced
7465	11	advanced
7468	1	intermediate
7469	10	beginner
7470	3	advanced
7472	3	intermediate
7473	12	intermediate
7476	3	intermediate
7478	9	intermediate
7479	5	advanced
7484	5	beginner
7488	4	beginner
7490	2	beginner
7492	1	beginner
7495	4	advanced
7497	7	intermediate
7501	9	beginner
7503	11	advanced
7510	7	advanced
7511	4	beginner
7513	10	beginner
7514	4	beginner
7515	12	intermediate
7516	11	intermediate
7517	1	intermediate
7519	10	beginner
7520	6	intermediate
7521	4	advanced
7523	10	beginner
7525	8	advanced
7527	10	beginner
7528	9	intermediate
7529	9	advanced
7531	4	intermediate
7536	1	beginner
7537	6	advanced
7540	4	intermediate
7542	8	intermediate
7543	11	intermediate
7544	5	advanced
7545	9	intermediate
7547	7	intermediate
7548	2	intermediate
7549	2	intermediate
7551	9	intermediate
7552	7	advanced
7553	4	advanced
7554	4	intermediate
7556	11	advanced
7561	12	advanced
7563	8	beginner
7568	10	advanced
7571	7	beginner
7573	5	intermediate
7574	2	intermediate
7576	5	intermediate
7577	5	beginner
7581	3	intermediate
7584	11	intermediate
7585	6	advanced
7586	8	intermediate
7588	6	advanced
7591	9	advanced
7592	7	advanced
7594	3	advanced
7597	11	advanced
7600	11	advanced
7602	11	advanced
7603	7	beginner
7607	3	advanced
7608	8	intermediate
7610	12	advanced
7617	6	beginner
7619	12	advanced
7620	7	advanced
7621	11	beginner
7628	9	intermediate
7630	6	intermediate
7632	7	beginner
7633	8	beginner
7634	12	intermediate
7636	3	beginner
7639	1	intermediate
7641	9	intermediate
7642	5	intermediate
7643	11	advanced
7644	5	beginner
7646	7	intermediate
7648	1	beginner
7651	1	intermediate
7652	8	advanced
7654	10	beginner
7657	5	intermediate
7658	3	intermediate
7660	4	advanced
7661	7	intermediate
7662	4	intermediate
7664	10	advanced
7665	5	advanced
7669	1	intermediate
7671	10	intermediate
7675	6	advanced
7676	3	advanced
7677	12	intermediate
7679	5	beginner
7683	6	intermediate
7684	4	intermediate
7685	2	beginner
7688	10	intermediate
7689	1	advanced
7690	7	advanced
7693	6	intermediate
7694	6	advanced
7696	3	beginner
7697	5	beginner
7698	9	beginner
7699	3	advanced
7702	10	intermediate
7704	9	beginner
7706	8	intermediate
7708	8	intermediate
7709	1	advanced
7714	1	beginner
7717	5	beginner
7719	11	intermediate
7724	10	advanced
7725	10	beginner
7726	3	beginner
7727	8	advanced
7732	12	intermediate
7734	5	beginner
7735	1	advanced
7737	8	intermediate
7739	12	advanced
7741	7	advanced
7742	8	beginner
7745	8	intermediate
7746	8	beginner
7750	4	intermediate
7751	2	beginner
7752	3	intermediate
7753	9	advanced
7754	7	beginner
7758	7	intermediate
7759	8	beginner
7760	9	intermediate
7762	8	beginner
7766	8	beginner
7768	4	beginner
7770	7	advanced
7771	4	beginner
7772	5	advanced
7775	1	advanced
7779	5	beginner
7783	7	advanced
7788	5	intermediate
7789	10	beginner
7790	7	advanced
7791	7	beginner
7792	4	intermediate
7794	1	beginner
7795	10	advanced
7797	4	intermediate
7798	12	intermediate
7799	9	advanced
7802	12	beginner
7803	1	intermediate
7804	4	advanced
7805	10	intermediate
7806	1	intermediate
7807	10	beginner
7808	10	intermediate
7811	12	intermediate
7812	9	intermediate
7816	12	beginner
7817	11	beginner
7820	8	beginner
7821	12	advanced
7823	4	beginner
7825	8	intermediate
7826	1	intermediate
7827	12	intermediate
7829	2	advanced
7831	12	advanced
7833	2	intermediate
7835	12	advanced
7836	7	beginner
7840	7	advanced
7842	12	advanced
7844	10	beginner
7846	11	beginner
7848	4	advanced
7849	6	advanced
7851	5	beginner
7854	3	intermediate
7856	1	advanced
7857	2	intermediate
7859	1	advanced
7860	4	intermediate
7862	7	beginner
7865	10	advanced
7866	12	advanced
7867	9	advanced
7870	3	intermediate
7871	4	beginner
7874	10	intermediate
7876	5	intermediate
7878	6	beginner
7882	4	beginner
7883	8	intermediate
7884	5	beginner
7889	8	intermediate
7890	5	intermediate
7892	9	intermediate
7893	6	intermediate
7894	2	beginner
7897	8	beginner
7898	5	advanced
7901	10	advanced
7903	4	beginner
7904	3	advanced
7905	10	beginner
7906	12	beginner
7911	2	intermediate
7912	12	advanced
7913	10	beginner
7914	9	intermediate
7915	5	advanced
7918	11	intermediate
7919	9	advanced
7920	10	beginner
7923	8	intermediate
7924	11	intermediate
7929	11	intermediate
7933	4	beginner
7934	12	beginner
7935	6	beginner
7936	11	intermediate
7937	7	intermediate
7938	4	beginner
7939	8	beginner
7940	3	beginner
7941	11	advanced
7944	2	intermediate
7945	9	beginner
7946	3	advanced
7948	4	beginner
7950	5	advanced
7952	1	beginner
7954	4	advanced
7955	2	advanced
7959	1	beginner
7961	3	beginner
7965	3	beginner
7968	11	advanced
7970	9	advanced
7974	6	beginner
7975	5	intermediate
7976	1	advanced
7978	9	advanced
7979	6	intermediate
7981	3	advanced
7982	4	advanced
7985	11	beginner
7986	7	advanced
7988	1	advanced
7991	4	intermediate
7992	6	intermediate
7993	1	beginner
7994	3	beginner
7995	12	advanced
7998	7	beginner
7999	8	advanced
8003	12	advanced
8004	10	beginner
8007	9	beginner
8008	1	beginner
8009	10	intermediate
8010	3	intermediate
8012	9	advanced
8014	3	intermediate
8015	4	beginner
8017	10	advanced
8018	8	beginner
8019	11	intermediate
8020	5	beginner
8025	6	beginner
8026	6	beginner
8029	8	advanced
8030	3	advanced
8031	11	beginner
8032	11	intermediate
8033	1	advanced
8034	8	advanced
8035	8	advanced
8039	10	advanced
8040	8	advanced
8041	3	beginner
8045	12	advanced
8046	6	beginner
8048	6	beginner
8049	6	advanced
8050	10	advanced
8052	6	beginner
8053	8	beginner
8055	7	beginner
8057	2	intermediate
8059	5	advanced
8060	4	intermediate
8062	7	advanced
8066	2	advanced
8068	9	advanced
8072	7	advanced
8073	4	beginner
8076	2	beginner
8077	3	beginner
8078	4	beginner
8080	4	advanced
8081	9	intermediate
8082	6	intermediate
8085	9	advanced
8086	1	intermediate
8088	1	beginner
8089	1	intermediate
8091	1	beginner
8094	3	intermediate
8095	9	intermediate
8096	12	advanced
8097	10	advanced
8099	9	beginner
8103	11	beginner
8106	11	advanced
8107	6	beginner
8111	9	beginner
8114	1	beginner
8115	11	intermediate
8116	5	beginner
8117	1	advanced
8120	4	beginner
8125	4	beginner
8127	2	beginner
8128	1	intermediate
8133	8	advanced
8135	8	intermediate
8137	10	intermediate
8139	4	beginner
8141	6	intermediate
8143	3	beginner
8144	5	beginner
8147	7	advanced
8151	1	intermediate
8156	6	intermediate
8157	4	beginner
8158	6	advanced
8160	9	intermediate
8162	5	advanced
8163	12	intermediate
8164	2	beginner
8165	9	intermediate
8166	10	advanced
8168	1	beginner
8169	3	advanced
8171	2	beginner
8172	6	intermediate
8175	4	intermediate
8177	4	intermediate
8180	8	advanced
8181	2	intermediate
8187	5	beginner
8190	1	beginner
8192	9	intermediate
8194	8	intermediate
8195	1	intermediate
8196	9	intermediate
8197	2	advanced
8203	5	advanced
8205	2	beginner
8206	5	intermediate
8207	6	beginner
8208	6	intermediate
8209	6	intermediate
8214	4	intermediate
8215	5	intermediate
8218	2	beginner
8222	2	intermediate
8225	9	advanced
8226	12	advanced
8237	8	intermediate
8238	7	intermediate
8239	2	intermediate
8240	9	advanced
8241	4	advanced
8242	11	beginner
8243	8	intermediate
8244	2	intermediate
8245	1	intermediate
8247	5	advanced
8252	4	advanced
8253	5	beginner
8254	10	advanced
8255	7	intermediate
8256	7	advanced
8265	5	intermediate
8266	3	intermediate
8267	2	intermediate
8274	3	intermediate
8278	4	intermediate
8279	4	intermediate
8283	11	beginner
8285	5	advanced
8287	1	beginner
8288	4	intermediate
8289	11	beginner
8291	3	beginner
8292	9	intermediate
8293	7	beginner
8294	11	advanced
8296	5	beginner
8298	8	intermediate
8299	7	beginner
8300	12	intermediate
8301	5	intermediate
8302	2	intermediate
8305	4	intermediate
8307	11	beginner
8308	2	advanced
8309	3	intermediate
8311	10	beginner
8316	8	intermediate
8317	9	intermediate
8318	9	beginner
8319	11	intermediate
8320	10	intermediate
8323	3	beginner
8324	11	beginner
8325	2	advanced
8326	4	beginner
8327	8	beginner
8328	1	intermediate
8332	12	advanced
8340	5	advanced
8342	2	beginner
8343	2	advanced
8344	7	advanced
8346	11	intermediate
8348	7	beginner
8350	8	beginner
8352	12	intermediate
8354	4	advanced
8355	3	advanced
8356	8	beginner
8360	9	advanced
8362	6	intermediate
8363	7	intermediate
8364	4	beginner
8366	5	advanced
8367	4	intermediate
8375	5	advanced
8382	10	intermediate
8383	10	advanced
8386	12	advanced
8389	5	intermediate
8390	4	beginner
8392	8	advanced
8393	4	beginner
8394	6	intermediate
8398	4	advanced
8400	2	intermediate
8402	9	advanced
8403	12	beginner
8405	7	intermediate
8406	2	beginner
8408	2	intermediate
8409	4	beginner
8411	3	advanced
8414	8	advanced
8416	11	intermediate
8417	5	advanced
8419	1	intermediate
8422	7	advanced
8426	11	intermediate
8427	11	intermediate
8430	8	beginner
8432	3	advanced
8434	4	beginner
8435	2	intermediate
8436	1	intermediate
8437	10	beginner
8438	11	intermediate
8439	12	beginner
8442	7	advanced
8444	7	intermediate
8447	5	beginner
8449	8	advanced
8452	11	intermediate
8453	11	advanced
8457	5	beginner
8458	12	beginner
8459	11	intermediate
8460	2	intermediate
8461	8	beginner
8462	12	beginner
8463	10	advanced
8465	7	advanced
8468	1	beginner
8470	7	intermediate
8472	4	advanced
8474	6	intermediate
8475	8	intermediate
8477	8	beginner
8478	3	beginner
8480	4	advanced
8481	1	beginner
8482	3	beginner
8485	10	intermediate
8486	1	intermediate
8489	3	beginner
8491	5	beginner
8492	4	beginner
8495	1	intermediate
8498	7	advanced
8499	11	beginner
8503	10	intermediate
8505	2	intermediate
8506	1	intermediate
8507	5	intermediate
8511	8	intermediate
8513	12	intermediate
8514	11	advanced
8520	7	beginner
8521	3	beginner
8522	4	intermediate
8525	1	advanced
8527	2	beginner
8528	8	intermediate
8529	12	intermediate
8531	8	intermediate
8534	1	beginner
8535	2	intermediate
8536	6	advanced
8538	2	advanced
8539	5	beginner
8547	2	intermediate
8549	7	advanced
8552	7	advanced
8553	11	beginner
8554	5	intermediate
8557	4	advanced
8559	9	beginner
8561	12	intermediate
8562	4	advanced
8568	5	intermediate
8569	6	beginner
8570	2	intermediate
8571	3	intermediate
8572	4	intermediate
8573	6	beginner
8574	7	intermediate
8577	3	advanced
8579	3	advanced
8580	8	beginner
8581	10	intermediate
8583	5	advanced
8586	3	beginner
8587	2	intermediate
8589	4	intermediate
8595	2	beginner
8597	11	advanced
8598	2	intermediate
8599	5	intermediate
8600	12	advanced
8601	4	beginner
8605	4	intermediate
8606	6	beginner
8607	11	advanced
8608	9	beginner
8609	7	intermediate
8610	5	advanced
8611	8	beginner
8612	10	beginner
8613	6	advanced
8614	1	beginner
8616	12	beginner
8617	12	beginner
8618	8	beginner
8619	4	advanced
8622	1	beginner
8624	4	beginner
8627	10	beginner
8628	3	beginner
8629	9	intermediate
8631	7	intermediate
8633	1	beginner
8634	11	intermediate
8635	12	beginner
8637	7	beginner
8639	9	beginner
8640	1	advanced
8643	11	intermediate
8644	10	advanced
8645	3	intermediate
8648	9	beginner
8653	9	beginner
8656	3	beginner
8657	11	advanced
8659	2	intermediate
8660	3	advanced
8661	3	beginner
8663	1	advanced
8667	6	intermediate
8669	3	intermediate
8670	10	advanced
8671	5	advanced
8672	5	beginner
8673	7	intermediate
8674	12	beginner
8675	9	beginner
8677	8	advanced
8678	9	advanced
8679	4	intermediate
8682	3	beginner
8686	10	intermediate
8687	6	intermediate
8688	5	intermediate
8689	7	beginner
8693	5	intermediate
8695	8	intermediate
8696	2	beginner
8697	4	intermediate
8701	10	beginner
8702	11	beginner
8704	3	intermediate
8707	9	advanced
8710	9	intermediate
8711	8	advanced
8712	4	advanced
8713	9	beginner
8714	12	beginner
8715	1	beginner
8716	6	intermediate
8718	1	beginner
8720	5	advanced
8721	4	intermediate
8722	9	beginner
8723	4	beginner
8724	2	intermediate
8725	7	intermediate
8731	12	intermediate
8733	2	advanced
8736	1	beginner
8737	10	intermediate
8738	12	intermediate
8739	3	advanced
8741	9	beginner
8742	4	beginner
8743	9	beginner
8746	1	beginner
8748	3	intermediate
8749	5	intermediate
8751	9	beginner
8752	12	intermediate
8753	9	intermediate
8755	9	intermediate
8756	2	advanced
8757	2	beginner
8758	8	beginner
8760	9	beginner
8761	10	advanced
8762	10	advanced
8764	4	intermediate
8765	6	beginner
8768	8	advanced
8770	7	intermediate
8776	8	beginner
8777	1	advanced
8778	11	beginner
8779	6	intermediate
8781	2	intermediate
8786	8	advanced
8790	10	intermediate
8791	9	beginner
8792	10	beginner
8798	12	advanced
8799	10	beginner
8800	7	advanced
8801	2	intermediate
8805	11	beginner
8807	10	intermediate
8809	2	intermediate
8811	1	advanced
8813	9	advanced
8816	1	advanced
8817	4	intermediate
8820	11	intermediate
8822	1	intermediate
8824	1	advanced
8825	4	intermediate
8828	4	beginner
8830	6	beginner
8832	8	beginner
8835	6	intermediate
8836	2	beginner
8838	7	intermediate
8840	7	beginner
8842	10	advanced
8843	10	beginner
8844	9	intermediate
8846	7	intermediate
8849	8	beginner
8850	8	beginner
8851	7	intermediate
8852	11	beginner
8854	11	advanced
8858	10	beginner
8861	10	intermediate
8865	8	advanced
8866	7	advanced
8867	6	intermediate
8871	2	beginner
8873	10	beginner
8874	9	advanced
8875	12	advanced
8876	4	beginner
8879	10	beginner
8880	10	advanced
8881	9	beginner
8882	6	intermediate
8883	8	beginner
8885	2	beginner
8887	10	advanced
8888	2	beginner
8889	12	intermediate
8891	9	beginner
8892	9	beginner
8893	9	advanced
8898	8	intermediate
8899	5	beginner
8901	7	beginner
8902	12	intermediate
8903	1	intermediate
8904	9	advanced
8905	3	beginner
8906	1	intermediate
8910	6	beginner
8911	3	intermediate
8912	12	advanced
8914	10	intermediate
8915	4	advanced
8916	3	beginner
8917	6	advanced
8921	10	beginner
8923	10	advanced
8924	2	intermediate
8926	2	beginner
8927	10	intermediate
8928	12	intermediate
8929	5	beginner
8930	10	intermediate
8931	3	beginner
8932	6	advanced
8933	7	beginner
8938	9	advanced
\.

-- ensemble
\! echo 'Insert into Ensemble..';
COPY ensemble (group_lesson_slot_id, genre_id) FROM stdin;
3	8
5	2
10	8
11	3
13	4
16	4
18	9
19	7
20	6
21	7
22	5
23	1
25	4
29	7
32	2
39	8
41	2
42	9
45	2
46	3
48	7
49	7
50	5
52	3
53	9
58	9
60	6
61	8
62	3
63	3
64	3
66	9
69	1
70	8
71	7
72	5
73	9
74	6
76	8
78	2
80	1
85	6
89	4
90	8
97	6
99	6
101	1
102	9
103	4
104	9
106	3
108	4
110	5
112	5
116	7
118	9
119	8
121	7
124	4
126	9
129	2
130	9
131	9
132	8
135	1
139	2
141	2
143	3
145	6
148	7
149	6
151	2
152	2
153	6
157	4
158	3
160	9
161	5
164	7
167	4
169	3
170	9
172	3
174	7
177	1
179	3
184	8
185	3
186	4
192	6
193	2
194	5
196	9
198	2
199	3
205	8
209	4
213	4
215	7
216	6
217	7
220	2
221	7
222	3
225	9
226	5
227	3
228	7
229	4
232	2
233	2
234	5
236	6
238	6
241	6
242	7
244	5
245	4
247	2
248	8
249	9
251	5
252	5
253	8
255	6
256	5
257	1
258	9
261	5
262	7
270	2
271	9
274	1
276	8
277	6
278	8
279	4
282	8
284	3
285	3
286	7
287	5
288	4
289	8
291	3
292	9
293	1
299	5
300	7
301	9
302	3
304	7
305	4
306	1
307	3
308	7
310	4
311	3
312	3
313	6
316	5
317	9
319	2
322	3
323	2
326	4
327	8
328	1
331	2
334	3
340	6
342	7
343	5
347	4
348	8
350	4
353	1
355	6
357	8
359	5
360	5
362	5
363	6
364	2
367	9
371	7
372	1
373	8
383	7
389	7
390	7
391	1
392	5
395	2
396	2
398	8
399	5
401	2
402	8
406	2
407	7
409	8
410	9
411	2
415	1
416	9
419	2
425	8
427	7
428	4
429	6
432	7
433	6
437	4
438	4
439	4
445	4
449	3
450	2
451	9
452	1
456	4
458	9
459	9
461	8
464	8
466	2
467	7
468	9
469	3
470	6
471	1
472	9
473	9
476	1
477	5
478	4
480	2
481	5
482	5
483	8
484	3
486	6
488	2
489	6
490	8
492	7
494	7
496	3
497	8
500	1
502	8
503	6
504	5
505	4
509	8
512	2
513	4
516	1
517	6
518	7
519	2
520	8
521	3
522	3
527	3
529	1
531	1
532	4
533	3
534	5
536	8
539	4
545	8
548	1
549	9
552	2
554	2
555	8
557	4
559	4
560	4
561	4
563	3
564	8
566	4
567	9
570	3
571	8
572	5
574	3
576	3
577	4
580	8
581	8
584	2
586	7
587	6
591	4
592	4
593	5
594	8
596	6
597	9
602	8
603	7
607	7
608	8
609	6
610	9
612	6
614	8
615	5
619	6
621	1
624	9
625	6
626	7
627	9
628	8
629	7
632	4
633	3
634	3
639	7
640	4
643	1
645	5
647	2
649	1
650	8
651	4
652	2
653	5
654	6
655	6
656	4
664	5
665	3
666	5
668	5
672	3
673	1
677	7
679	1
680	3
681	7
683	9
685	9
687	2
688	7
690	6
691	5
692	6
693	8
694	1
695	9
697	6
699	7
700	6
701	6
705	2
706	1
711	3
712	7
714	2
716	6
719	6
720	3
721	1
722	6
723	2
724	7
725	8
727	6
729	4
732	7
733	6
736	4
738	8
739	2
740	2
742	1
743	2
744	5
745	5
746	1
747	5
748	4
749	8
751	4
753	5
754	7
756	6
760	2
761	5
762	6
763	2
764	6
766	9
768	9
771	2
774	5
775	2
777	4
778	6
779	5
780	7
782	9
783	4
784	7
786	1
795	3
798	9
801	2
802	3
803	9
805	4
808	8
809	3
810	1
811	2
813	7
815	5
818	3
821	8
822	5
825	8
827	7
829	2
830	9
833	4
835	9
836	3
838	3
840	1
842	6
845	5
847	4
848	1
851	7
853	6
854	1
855	8
856	8
857	6
860	1
861	2
863	8
864	4
873	6
876	6
877	3
878	6
880	6
881	9
883	4
884	1
889	8
890	2
891	1
892	2
895	6
896	5
898	3
899	8
902	8
903	5
904	1
907	4
908	9
916	3
919	9
922	8
924	5
926	8
927	8
929	3
930	6
931	1
937	7
938	1
939	4
940	7
943	4
945	3
947	1
948	1
950	4
953	7
954	7
956	1
957	4
958	6
959	3
960	6
961	6
962	2
963	4
965	2
966	9
967	1
968	7
969	6
970	3
972	8
973	6
974	5
976	5
981	3
983	8
984	4
989	3
990	4
992	6
994	4
995	7
998	6
1004	9
1006	3
1009	8
1011	8
1013	5
1017	4
1024	3
1027	8
1030	4
1031	7
1034	1
1038	8
1039	2
1042	6
1043	4
1045	2
1048	9
1049	5
1050	2
1056	4
1059	5
1061	7
1062	3
1063	3
1066	1
1067	7
1068	3
1070	3
1072	5
1073	9
1074	9
1080	4
1081	8
1084	6
1088	8
1094	3
1101	3
1103	5
1104	4
1105	5
1107	2
1108	4
1112	5
1113	9
1120	1
1122	8
1123	4
1125	2
1126	6
1127	6
1129	3
1130	7
1132	5
1133	9
1134	4
1137	6
1143	1
1145	5
1147	5
1148	7
1150	5
1151	7
1153	7
1156	8
1159	5
1160	9
1162	5
1163	1
1164	3
1167	5
1171	6
1172	2
1176	4
1178	1
1185	2
1187	2
1188	4
1189	3
1191	8
1192	6
1196	1
1197	9
1202	7
1203	9
1208	5
1214	2
1216	1
1217	2
1218	1
1220	3
1221	8
1222	5
1223	3
1224	1
1225	6
1227	2
1232	3
1234	2
1236	8
1237	2
1238	3
1239	8
1240	9
1241	5
1242	1
1243	1
1244	1
1245	2
1246	8
1247	4
1248	7
1251	9
1252	4
1254	5
1255	1
1256	5
1258	3
1259	6
1260	4
1261	1
1262	7
1265	4
1268	4
1270	1
1272	7
1273	5
1274	9
1276	3
1279	1
1280	9
1282	7
1286	1
1288	6
1289	5
1290	5
1292	4
1294	5
1295	5
1298	5
1300	6
1303	1
1305	9
1309	2
1310	7
1313	3
1314	8
1316	6
1317	9
1318	7
1319	1
1320	8
1324	9
1325	9
1327	3
1329	2
1332	8
1335	7
1336	4
1337	3
1346	6
1349	6
1351	9
1355	7
1356	9
1362	4
1363	4
1364	8
1365	9
1369	9
1371	4
1372	7
1374	6
1375	7
1376	6
1377	8
1378	5
1379	7
1382	3
1384	4
1386	2
1387	9
1388	8
1393	4
1394	6
1396	3
1397	2
1398	1
1399	8
1404	4
1406	5
1408	3
1409	7
1413	8
1416	3
1418	3
1419	2
1424	6
1429	9
1430	5
1433	6
1434	3
1436	7
1437	3
1438	5
1439	4
1441	6
1447	2
1448	7
1449	3
1450	2
1451	2
1452	3
1455	9
1457	8
1463	3
1464	5
1465	2
1466	1
1469	8
1470	4
1471	8
1472	9
1473	1
1474	3
1475	2
1477	8
1478	1
1480	7
1481	3
1482	1
1483	1
1484	8
1485	3
1486	7
1488	5
1490	2
1492	1
1494	7
1496	9
1498	2
1503	7
1505	6
1506	7
1507	8
1508	7
1510	7
1511	3
1513	2
1514	1
1515	7
1516	2
1518	3
1519	7
1520	6
1523	2
1526	8
1528	9
1530	1
1533	7
1535	9
1537	4
1538	7
1539	4
1542	3
1543	1
1544	1
1545	1
1547	4
1548	9
1550	5
1552	9
1553	5
1555	6
1556	1
1558	5
1559	8
1560	7
1561	1
1564	7
1565	2
1566	8
1568	9
1570	6
1577	5
1582	8
1584	9
1588	8
1592	8
1593	9
1595	1
1597	4
1600	1
1601	9
1603	9
1608	8
1609	9
1614	1
1616	5
1617	6
1619	6
1620	5
1622	1
1623	8
1625	7
1628	4
1629	3
1630	4
1631	3
1633	2
1635	3
1639	2
1641	2
1642	7
1645	4
1646	6
1647	3
1648	8
1649	5
1651	4
1655	5
1657	3
1659	5
1660	7
1661	3
1666	9
1669	5
1670	3
1672	8
1673	1
1676	2
1677	4
1681	9
1682	6
1684	4
1685	2
1686	6
1688	5
1691	5
1693	9
1696	1
1697	1
1699	9
1703	9
1708	3
1709	7
1710	3
1711	1
1714	5
1715	5
1716	5
1718	4
1720	2
1721	2
1722	2
1725	7
1731	1
1732	2
1734	3
1739	8
1740	8
1741	7
1742	5
1745	4
1748	5
1749	8
1755	3
1756	6
1759	2
1763	3
1764	1
1766	9
1770	6
1771	4
1772	8
1774	3
1776	1
1777	7
1779	7
1780	6
1781	5
1783	5
1794	8
1796	2
1800	7
1802	4
1803	4
1804	3
1807	1
1808	8
1809	5
1810	1
1812	2
1813	7
1814	6
1817	2
1818	7
1823	3
1825	5
1827	8
1829	9
1830	2
1832	2
1833	8
1836	8
1839	7
1841	8
1849	1
1850	7
1854	2
1855	7
1857	5
1858	5
1860	7
1861	8
1865	1
1867	6
1872	7
1875	7
1876	8
1880	6
1882	2
1883	1
1885	9
1886	7
1888	5
1889	1
1890	9
1891	5
1893	9
1894	7
1896	9
1897	8
1900	1
1901	9
1902	9
1905	5
1907	5
1910	9
1911	8
1912	2
1919	2
1920	3
1922	8
1924	2
1925	3
1927	5
1928	4
1932	5
1934	7
1939	8
1940	7
1941	8
1944	2
1948	1
1950	1
1951	4
1952	6
1954	6
1955	1
1956	7
1958	4
1959	4
1960	9
1961	2
1963	3
1964	2
1966	4
1967	6
1968	2
1969	9
1971	9
1974	9
1976	8
1977	6
1979	1
1981	8
1982	8
1983	8
1985	4
1986	8
1987	1
1988	2
1989	2
1990	6
1994	7
1996	2
1997	4
1998	9
1999	4
2000	6
2001	4
2004	3
2007	5
2010	2
2018	3
2021	3
2023	7
2025	3
2028	6
2029	2
2030	9
2032	2
2033	4
2034	9
2035	9
2037	9
2038	4
2039	1
2044	1
2049	5
2052	2
2053	5
2057	6
2058	1
2061	4
2062	3
2065	1
2066	2
2068	6
2070	7
2071	2
2072	6
2073	2
2074	4
2075	6
2077	6
2081	1
2088	7
2089	6
2092	1
2095	9
2096	4
2099	2
2100	7
2102	8
2105	6
2106	8
2107	3
2110	5
2117	4
2127	8
2130	1
2132	3
2134	4
2138	1
2140	1
2141	5
2143	6
2144	1
2145	3
2147	2
2148	2
2151	9
2154	4
2155	9
2157	6
2158	4
2159	8
2161	1
2163	2
2164	5
2165	1
2168	2
2170	2
2172	7
2174	9
2175	9
2177	7
2179	2
2182	8
2183	6
2186	5
2187	1
2188	3
2190	4
2191	4
2192	1
2193	4
2194	6
2195	8
2196	9
2197	6
2198	3
2199	8
2201	8
2204	1
2205	5
2208	2
2210	3
2211	8
2212	5
2213	7
2214	4
2215	1
2216	7
2217	8
2219	7
2220	9
2221	5
2222	3
2223	6
2225	1
2226	2
2229	7
2230	8
2232	6
2233	3
2235	8
2238	1
2239	7
2240	4
2241	6
2242	3
2245	2
2246	4
2251	5
2253	1
2257	5
2258	5
2262	8
2270	9
2274	3
2277	4
2278	7
2280	8
2282	3
2283	5
2284	6
2286	3
2287	2
2290	3
2292	8
2296	4
2297	7
2298	1
2299	8
2303	5
2304	9
2305	1
2306	5
2308	9
2309	8
2310	5
2314	7
2319	5
2322	2
2323	1
2327	7
2328	1
2332	4
2333	4
2334	2
2335	5
2336	7
2337	6
2338	2
2339	7
2343	1
2345	1
2346	5
2347	5
2348	1
2349	8
2350	5
2351	5
2352	2
2356	9
2357	7
2359	5
2360	4
2362	5
2365	7
2370	6
2372	1
2374	1
2377	3
2380	3
2382	3
2386	8
2387	9
2388	6
2389	9
2390	9
2391	9
2394	2
2395	1
2399	5
2402	2
2404	3
2405	3
2408	7
2410	3
2411	6
2412	6
2413	5
2414	5
2415	8
2416	7
2418	4
2419	2
2420	2
2422	6
2423	4
2426	3
2428	3
2432	3
2433	8
2434	4
2436	6
2439	7
2441	1
2443	6
2445	8
2450	8
2451	2
2452	5
2454	1
2455	5
2456	8
2457	3
2462	6
2465	2
2466	3
2469	8
2472	6
2473	2
2474	3
2477	4
2480	1
2481	1
2482	5
2485	2
2486	4
2489	7
2491	5
2492	7
2493	5
2494	4
2495	8
2496	3
2497	9
2499	6
2502	3
2507	5
2508	3
2509	3
2511	8
2515	3
2516	3
2517	1
2519	1
2520	1
2523	3
2525	6
2528	1
2530	2
2531	6
2532	6
2533	6
2535	5
2536	7
2537	1
2538	6
2539	8
2543	3
2544	3
2546	3
2547	2
2548	1
2551	7
2552	8
2553	2
2554	3
2557	7
2559	5
2560	7
2561	4
2562	3
2563	5
2565	1
2566	8
2567	3
2568	7
2569	9
2570	6
2574	1
2575	8
2577	9
2579	6
2580	9
2581	5
2582	8
2583	9
2584	3
2585	5
2586	7
2587	4
2588	1
2589	7
2590	2
2593	7
2596	8
2597	1
2600	3
2601	5
2602	2
2605	2
2606	6
2607	4
2609	6
2611	6
2612	3
2615	2
2616	1
2618	2
2623	8
2624	6
2626	5
2631	6
2632	9
2638	3
2642	8
2645	9
2647	3
2648	9
2650	2
2651	3
2653	1
2654	2
2655	7
2656	4
2657	8
2658	1
2660	7
2662	9
2663	3
2666	7
2667	1
2671	5
2672	9
2673	8
2675	6
2676	4
2677	2
2678	3
2680	5
2681	4
2682	8
2683	7
2684	8
2685	1
2687	4
2688	1
2690	3
2692	7
2693	9
2694	1
2696	3
2699	6
2700	3
2701	7
2702	7
2704	8
2708	1
2711	2
2712	4
2715	8
2719	1
2720	6
2721	3
2722	9
2726	3
2728	7
2729	4
2730	8
2732	9
2733	8
2735	4
2736	1
2739	5
2740	2
2742	9
2744	3
2747	3
2748	6
2749	2
2750	5
2751	1
2753	1
2754	4
2755	4
2756	6
2759	1
2760	5
2761	1
2762	4
2763	3
2764	7
2768	3
2770	1
2772	6
2773	6
2774	2
2775	8
2776	1
2778	6
2779	1
2781	8
2782	3
2789	2
2790	3
2791	2
2793	6
2794	1
2795	8
2796	7
2797	5
2798	7
2799	2
2800	5
2804	1
2805	7
2806	4
2808	1
2809	2
2810	8
2813	1
2814	6
2816	6
2818	5
2819	5
2822	8
2824	6
2825	1
2826	4
2829	2
2830	5
2831	9
2833	9
2834	6
2837	3
2838	7
2841	1
2844	3
2845	5
2848	1
2849	1
2851	2
2854	9
2855	5
2857	1
2858	4
2863	2
2864	1
2866	9
2871	4
2872	9
2873	2
2874	9
2875	9
2877	6
2878	6
2884	1
2886	8
2887	2
2888	3
2889	9
2890	1
2891	5
2892	2
2894	4
2898	5
2899	7
2901	8
2904	6
2905	4
2906	6
2907	1
2908	9
2909	7
2910	7
2911	1
2912	9
2913	7
2916	4
2919	3
2920	4
2921	2
2923	9
2925	5
2926	9
2927	3
2929	1
2931	7
2933	5
2935	1
2936	2
2939	1
2946	2
2956	6
2959	6
2960	9
2971	6
2972	5
2973	8
2975	7
2976	7
2980	3
2983	3
2984	6
2985	9
2986	6
2987	8
2989	3
2995	6
3000	6
3002	1
3003	2
3006	7
3007	8
3008	2
3009	2
3010	2
3011	7
3012	5
3014	1
3015	3
3017	8
3020	4
3021	7
3022	9
3023	6
3025	8
3026	2
3030	1
3032	2
3033	9
3035	6
3036	9
3037	8
3044	8
3045	7
3047	1
3048	3
3049	5
3050	2
3051	8
3053	4
3054	8
3055	6
3060	2
3062	6
3065	6
3068	7
3070	8
3073	9
3077	4
3079	5
3081	3
3084	2
3086	2
3087	7
3090	5
3093	1
3094	2
3097	3
3101	6
3102	7
3105	2
3106	3
3108	3
3110	8
3116	1
3120	9
3122	7
3123	4
3125	1
3130	8
3132	8
3133	8
3137	2
3138	3
3139	6
3141	3
3142	2
3143	5
3144	8
3145	5
3146	1
3148	6
3149	2
3153	5
3154	3
3156	2
3157	9
3158	1
3160	1
3161	9
3162	8
3164	9
3165	3
3166	7
3167	1
3168	2
3169	8
3171	5
3173	3
3174	3
3175	1
3176	6
3177	3
3183	6
3188	3
3190	3
3194	1
3195	2
3196	5
3197	2
3198	7
3199	7
3201	4
3204	1
3209	4
3213	1
3214	9
3215	3
3218	4
3219	3
3223	7
3224	3
3226	6
3227	3
3229	6
3230	9
3232	7
3233	9
3237	6
3238	3
3240	5
3243	1
3244	2
3245	7
3246	3
3249	6
3251	9
3256	3
3264	5
3266	9
3267	7
3268	3
3269	2
3272	5
3274	5
3275	5
3277	5
3278	5
3280	9
3281	8
3282	7
3288	2
3290	4
3291	6
3294	5
3295	9
3300	5
3301	3
3302	5
3303	8
3304	4
3305	6
3306	3
3307	4
3309	6
3311	4
3313	6
3314	4
3318	5
3319	4
3323	3
3324	1
3325	2
3326	5
3328	1
3329	7
3330	5
3331	1
3332	9
3334	1
3335	2
3338	2
3339	3
3341	2
3342	6
3344	9
3346	1
3347	2
3348	6
3349	8
3350	3
3356	4
3357	8
3359	4
3362	8
3363	4
3369	6
3372	3
3373	8
3375	6
3377	7
3382	2
3383	7
3384	8
3385	3
3386	3
3387	8
3389	5
3390	4
3392	7
3395	5
3398	6
3399	3
3401	2
3406	3
3408	3
3409	5
3413	1
3414	3
3415	4
3416	4
3419	3
3421	3
3425	8
3428	1
3429	7
3432	1
3434	5
3436	3
3439	6
3440	3
3441	7
3442	7
3444	4
3445	2
3447	5
3448	4
3451	2
3452	4
3453	2
3454	3
3458	3
3460	4
3462	4
3465	6
3466	9
3467	3
3469	7
3470	7
3477	9
3478	6
3479	3
3480	1
3482	4
3486	3
3487	9
3488	1
3489	2
3493	9
3494	8
3495	6
3496	7
3497	7
3498	8
3499	3
3503	4
3504	6
3505	4
3506	7
3509	9
3512	2
3517	4
3520	8
3522	6
3523	8
3524	1
3528	3
3531	3
3533	3
3536	5
3539	8
3540	3
3541	6
3544	5
3546	8
3547	6
3548	7
3549	3
3550	1
3552	1
3554	3
3561	6
3562	4
3565	8
3567	6
3568	9
3569	4
3571	3
3572	5
3573	4
3575	6
3576	6
3581	9
3584	7
3585	8
3586	4
3589	1
3590	5
3591	8
3592	6
3596	6
3598	2
3601	4
3602	9
3603	1
3604	9
3605	4
3611	5
3614	9
3615	8
3617	6
3621	3
3622	7
3623	5
3626	1
3627	4
3628	3
3630	8
3631	2
3632	2
3633	2
3634	2
3635	7
3640	9
3644	6
3645	5
3647	9
3648	4
3650	4
3651	9
3654	1
3656	5
3663	8
3664	9
3665	8
3666	3
3670	7
3674	8
3677	3
3679	2
3680	1
3683	9
3685	2
3686	3
3692	1
3694	8
3696	7
3697	8
3698	2
3700	4
3701	6
3707	9
3709	2
3711	4
3716	2
3717	9
3718	9
3719	3
3720	7
3721	2
3722	2
3724	5
3725	1
3729	1
3730	4
3731	5
3734	6
3736	3
3739	5
3742	6
3744	5
3745	8
3746	4
3747	2
3748	3
3752	5
3754	9
3755	7
3758	6
3759	7
3761	8
3762	9
3767	6
3768	4
3771	3
3772	9
3774	5
3775	8
3779	3
3781	2
3782	9
3783	5
3789	2
3791	8
3792	2
3794	9
3795	1
3796	2
3797	4
3798	5
3799	1
3801	2
3802	2
3805	9
3807	9
3812	1
3815	5
3816	4
3818	4
3820	2
3823	6
3824	1
3825	9
3830	4
3834	6
3836	1
3838	2
3839	5
3841	9
3844	4
3847	6
3848	3
3849	2
3853	9
3854	8
3857	3
3858	2
3860	2
3861	3
3863	4
3867	6
3872	9
3873	3
3874	1
3875	8
3878	5
3879	9
3880	5
3881	1
3888	4
3889	8
3890	5
3891	2
3894	8
3895	4
3897	8
3899	4
3900	6
3903	7
3904	5
3905	4
3909	3
3912	7
3913	4
3916	8
3917	7
3918	4
3920	7
3922	4
3923	6
3924	4
3925	3
3926	1
3927	6
3928	2
3929	8
3930	4
3932	9
3934	8
3936	1
3937	7
3940	3
3941	9
3942	8
3948	3
3950	5
3953	7
3954	7
3955	9
3956	5
3957	5
3958	9
3961	6
3962	5
3966	4
3967	9
3968	6
3971	7
3972	9
3973	3
3977	6
3978	9
3980	5
3981	2
3982	4
3983	5
3985	7
3988	2
3989	7
3990	4
3991	6
3992	2
3993	9
3994	2
3995	1
3996	2
3998	2
3999	4
4002	4
4003	9
4004	1
4006	3
4007	9
4008	4
4009	9
4011	5
4012	7
4014	4
4016	3
4018	7
4021	7
4022	5
4024	5
4026	3
4028	2
4029	5
4030	8
4031	2
4033	9
4034	4
4037	4
4038	2
4040	3
4042	4
4043	3
4044	2
4045	1
4047	6
4049	9
4053	3
4054	7
4056	9
4060	1
4067	1
4069	6
4071	6
4075	4
4076	3
4078	2
4079	5
4080	6
4081	6
4083	7
4084	6
4086	3
4087	2
4090	3
4094	5
4098	1
4099	1
4101	9
4102	4
4104	5
4105	7
4108	2
4109	8
4112	2
4113	9
4114	3
4116	1
4117	4
4118	5
4119	5
4121	7
4124	2
4127	7
4129	6
4139	9
4140	3
4142	9
4143	7
4146	9
4157	5
4159	6
4161	3
4162	1
4164	4
4165	4
4169	2
4170	8
4174	4
4177	8
4180	5
4181	9
4182	7
4185	5
4186	9
4188	5
4189	6
4191	6
4192	6
4193	3
4197	2
4198	8
4199	7
4200	8
4201	4
4202	7
4203	4
4205	4
4208	1
4210	6
4211	5
4214	5
4218	2
4219	6
4220	5
4223	1
4226	5
4227	4
4229	4
4230	7
4231	6
4232	5
4234	9
4235	5
4237	1
4238	3
4240	4
4241	4
4242	6
4243	2
4245	6
4246	7
4247	4
4255	1
4256	3
4258	8
4262	3
4264	2
4265	9
4266	2
4267	7
4270	2
4272	2
4274	1
4278	4
4279	1
4282	9
4284	9
4285	8
4286	3
4287	5
4289	1
4292	4
4295	4
4296	1
4298	4
4301	6
4304	6
4306	5
4307	8
4308	6
4309	4
4310	2
4311	9
4315	5
4316	3
4317	1
4320	1
4321	8
4322	8
4324	8
4325	5
4327	5
4328	6
4329	8
4333	5
4335	5
4336	7
4337	4
4338	2
4339	4
4340	2
4341	2
4342	7
4346	2
4348	9
4351	3
4354	5
4357	4
4360	3
4361	2
4362	7
4365	3
4367	8
4371	7
4374	6
4376	6
4377	7
4378	1
4379	7
4380	7
4382	1
4383	9
4384	1
4385	6
4387	9
4390	9
4391	3
4392	5
4393	2
4394	7
4395	2
4397	5
4398	1
4399	6
4403	1
4406	5
4410	6
4413	1
4419	2
4420	8
4423	5
4424	5
4425	3
4426	8
4430	3
4431	6
4432	3
4436	6
4438	6
4440	4
4447	4
4449	5
4453	4
4457	5
4459	2
4460	1
4461	5
4463	7
4465	8
4467	5
4468	4
4469	3
4470	8
4471	5
4473	8
4477	1
4479	3
4480	4
4484	3
4485	1
4487	9
4490	2
4495	6
4496	5
4497	4
4502	3
4503	5
4505	5
4508	8
4512	4
4513	7
4517	7
4523	4
4526	9
4527	3
4528	3
4531	8
4534	1
4536	6
4537	7
4542	8
4544	9
4546	6
4547	7
4549	7
4552	2
4553	6
4555	5
4556	4
4557	5
4558	9
4559	1
4560	6
4562	2
4569	6
4570	2
4571	1
4572	7
4573	9
4577	6
4582	1
4585	1
4586	4
4588	6
4593	7
4594	3
4596	7
4598	1
4601	5
4604	5
4607	8
4610	5
4615	4
4617	3
4618	3
4619	3
4621	9
4622	6
4624	5
4627	1
4629	1
4630	1
4631	6
4632	1
4635	6
4637	8
4640	4
4642	5
4643	1
4644	6
4646	5
4647	5
4648	3
4649	4
4650	3
4651	1
4653	5
4654	9
4657	9
4661	2
4662	3
4663	2
4668	2
4674	2
4675	6
4676	5
4677	3
4678	7
4686	2
4690	9
4698	1
4701	9
4702	5
4703	4
4706	4
4710	3
4711	6
4712	6
4713	2
4716	1
4717	4
4718	6
4719	1
4720	8
4722	9
4725	6
4727	7
4730	3
4735	9
4737	9
4740	8
4741	2
4742	8
4745	2
4747	1
4748	7
4749	7
4750	9
4752	8
4756	9
4757	5
4760	1
4761	8
4762	2
4765	1
4769	7
4770	1
4771	2
4774	8
4775	5
4777	7
4778	7
4779	4
4785	6
4786	2
4788	7
4789	3
4790	8
4792	4
4793	5
4795	4
4796	5
4797	5
4798	1
4800	1
4802	5
4803	6
4804	7
4808	8
4810	2
4812	4
4815	1
4816	1
4817	9
4819	6
4820	4
4821	2
4823	9
4824	5
4826	6
4827	7
4828	9
4834	9
4835	8
4836	3
4837	5
4838	2
4840	2
4842	5
4843	8
4845	6
4846	5
4849	5
4850	4
4851	6
4852	1
4853	2
4854	6
4855	8
4857	9
4858	1
4860	7
4861	9
4862	4
4865	2
4869	5
4871	9
4872	1
4873	7
4875	6
4876	6
4878	5
4881	1
4890	1
4891	3
4892	4
4893	3
4896	4
4901	6
4905	2
4906	4
4907	3
4908	7
4910	1
4915	7
4916	9
4919	3
4920	1
4921	7
4922	4
4927	7
4929	2
4930	2
4931	5
4932	5
4933	2
4938	5
4939	3
4940	5
4943	5
4946	5
4948	8
4949	8
4953	5
4957	2
4958	2
4959	2
4962	2
4963	1
4964	7
4969	6
4971	3
4972	8
4974	1
4975	9
4976	5
4977	6
4978	1
4980	3
4983	7
4985	6
4986	2
4987	4
4988	7
4989	4
4990	1
4991	6
4994	9
4996	3
4997	8
4998	4
5000	1
5001	5
5003	3
5004	5
5008	6
5009	7
5010	6
5012	1
5014	7
5015	1
5018	7
5019	9
5020	6
5021	2
5022	8
5023	3
5024	2
5025	3
5033	9
5036	6
5037	2
5038	1
5039	2
5040	8
5041	1
5042	4
5046	7
5050	4
5052	1
5054	4
5055	2
5057	7
5058	7
5061	8
5062	8
5063	5
5067	2
5068	9
5070	7
5073	6
5076	3
5077	5
5078	6
5079	8
5080	7
5081	1
5082	2
5083	2
5084	4
5086	5
5087	8
5088	1
5090	3
5092	8
5098	1
5100	6
5101	1
5103	5
5104	9
5108	6
5109	1
5112	3
5113	2
5114	8
5115	2
5116	6
5117	8
5119	9
5123	5
5125	7
5130	3
5135	2
5136	2
5143	3
5144	7
5145	9
5147	4
5148	4
5149	1
5151	7
5153	2
5154	9
5162	1
5163	4
5166	1
5170	2
5174	4
5175	4
5176	2
5184	7
5187	4
5188	3
5189	5
5190	8
5192	6
5195	5
5197	7
5198	6
5201	1
5202	3
5203	1
5205	5
5206	5
5208	4
5209	1
5211	6
5212	2
5215	7
5216	6
5220	7
5221	4
5224	2
5226	7
5227	5
5229	2
5230	8
5231	3
5232	6
5233	7
5237	5
5238	3
5241	3
5244	2
5245	7
5248	7
5252	8
5254	8
5256	3
5257	9
5260	5
5263	8
5266	6
5272	4
5274	2
5275	1
5277	1
5278	1
5279	7
5281	8
5283	4
5285	4
5286	2
5289	5
5290	4
5294	6
5299	2
5300	4
5301	4
5302	9
5303	5
5305	4
5306	7
5309	2
5310	1
5313	7
5315	8
5316	6
5317	3
5318	4
5322	4
5324	7
5325	3
5328	4
5329	4
5330	4
5331	3
5337	3
5338	9
5342	9
5343	2
5344	1
5345	5
5346	6
5347	1
5350	8
5354	9
5355	7
5357	7
5359	5
5360	5
5362	5
5368	7
5370	1
5376	7
5378	6
5379	4
5380	6
5381	9
5382	2
5384	1
5387	6
5388	8
5391	1
5392	3
5396	4
5397	8
5400	7
5401	3
5402	8
5405	7
5407	6
5408	7
5410	5
5412	7
5415	6
5420	1
5421	1
5425	3
5427	1
5428	1
5429	5
5434	7
5436	7
5438	8
5439	6
5440	3
5441	5
5445	5
5448	5
5449	3
5450	1
5452	8
5455	2
5456	2
5457	7
5458	4
5461	7
5462	2
5465	8
5466	4
5468	6
5469	6
5470	2
5472	4
5474	2
5475	2
5476	2
5481	3
5482	6
5484	9
5485	9
5488	6
5490	6
5495	5
5496	6
5499	9
5503	8
5504	2
5505	9
5510	2
5511	6
5516	1
5519	4
5521	6
5523	7
5527	7
5531	9
5532	4
5534	2
5535	8
5537	1
5541	5
5543	3
5544	3
5549	3
5551	4
5552	3
5556	6
5557	2
5560	2
5562	3
5565	1
5566	5
5568	9
5570	1
5571	8
5573	3
5577	1
5579	6
5580	3
5582	5
5584	4
5585	9
5586	2
5587	1
5588	2
5592	6
5595	5
5596	8
5597	8
5603	5
5606	8
5607	1
5608	4
5609	5
5610	8
5612	1
5613	7
5616	1
5617	4
5618	9
5619	5
5621	7
5622	9
5624	2
5626	2
5631	9
5634	1
5636	5
5637	2
5639	1
5640	4
5641	9
5642	6
5645	7
5647	4
5649	2
5653	7
5654	4
5655	2
5662	8
5664	7
5665	7
5667	1
5672	7
5675	5
5676	1
5677	7
5678	5
5681	9
5686	5
5688	9
5690	9
5693	8
5695	3
5697	9
5699	3
5700	4
5701	7
5707	3
5708	5
5709	9
5710	4
5711	6
5712	1
5714	8
5715	7
5717	4
5718	8
5719	8
5720	2
5722	9
5724	4
5727	9
5729	2
5731	3
5732	8
5733	6
5734	8
5735	6
5737	7
5739	6
5740	1
5741	3
5743	5
5747	8
5751	7
5752	1
5753	8
5754	7
5755	4
5756	4
5759	7
5763	4
5765	1
5766	9
5767	5
5768	3
5769	4
5772	6
5776	4
5777	3
5778	7
5781	3
5789	1
5790	3
5792	5
5795	6
5796	4
5800	1
5801	9
5804	5
5808	6
5809	9
5810	6
5813	9
5816	4
5817	9
5820	5
5824	5
5825	9
5827	5
5828	1
5830	7
5831	5
5833	3
5836	6
5837	6
5838	4
5839	3
5840	3
5841	5
5843	1
5845	4
5848	2
5850	8
5855	7
5856	5
5859	3
5864	4
5865	9
5866	9
5868	2
5869	6
5870	9
5871	6
5872	9
5873	6
5874	2
5875	2
5876	8
5878	3
5879	2
5881	9
5884	2
5887	2
5890	8
5892	6
5893	1
5894	9
5897	5
5898	9
5902	3
5903	6
5905	3
5907	1
5908	6
5909	2
5912	1
5915	6
5918	9
5920	9
5921	9
5922	2
5923	8
5924	3
5925	1
5926	4
5932	1
5933	2
5935	7
5937	2
5938	6
5946	6
5947	9
5948	3
5951	6
5953	9
5955	4
5956	5
5965	6
5967	3
5969	8
5971	8
5973	9
5974	4
5976	2
5981	7
5990	7
5991	4
5992	3
5993	8
6000	4
6001	2
6002	5
6003	7
6006	4
6007	5
6009	7
6010	9
6011	3
6014	7
6022	3
6030	6
6032	8
6033	8
6036	3
6038	1
6039	7
6041	3
6045	5
6047	5
6049	8
6054	7
6055	7
6056	3
6058	8
6062	3
6064	7
6065	7
6066	7
6067	6
6068	1
6073	4
6074	5
6078	2
6080	9
6083	7
6084	5
6088	5
6089	5
6090	4
6092	5
6095	9
6098	1
6100	5
6101	8
6102	9
6104	6
6106	8
6108	2
6111	6
6112	9
6114	6
6116	7
6117	1
6119	9
6121	4
6122	9
6123	4
6124	8
6126	5
6129	8
6130	9
6135	6
6136	2
6145	4
6146	6
6147	3
6151	7
6153	1
6155	1
6156	1
6159	4
6160	5
6163	6
6165	8
6167	9
6168	6
6170	9
6173	5
6178	1
6179	5
6180	3
6182	1
6183	9
6184	9
6186	1
6188	3
6189	8
6190	7
6191	1
6192	6
6193	4
6196	3
6197	7
6199	8
6201	8
6202	5
6203	8
6204	3
6205	7
6206	2
6208	3
6209	8
6212	6
6216	7
6218	7
6219	6
6222	5
6223	2
6224	2
6225	3
6227	9
6229	2
6230	9
6231	8
6232	1
6234	6
6235	9
6236	3
6237	9
6238	7
6241	2
6243	7
6244	1
6245	5
6249	2
6250	4
6251	3
6254	3
6255	4
6258	8
6264	4
6265	3
6266	5
6272	2
6274	9
6277	5
6278	7
6280	8
6281	4
6283	3
6286	2
6288	9
6289	1
6290	6
6292	2
6293	1
6295	1
6297	2
6298	8
6299	1
6302	2
6303	9
6308	1
6310	4
6312	2
6316	7
6318	1
6319	9
6321	1
6324	3
6325	7
6326	6
6328	6
6329	9
6331	5
6332	3
6333	6
6334	3
6339	4
6342	6
6345	4
6346	7
6349	7
6350	7
6351	5
6354	8
6358	9
6359	2
6362	5
6364	8
6366	5
6370	5
6371	5
6374	7
6376	6
6378	4
6379	5
6386	1
6388	5
6389	8
6391	5
6392	7
6394	2
6396	3
6397	5
6398	6
6399	1
6402	3
6406	3
6408	6
6410	6
6413	4
6415	5
6416	8
6419	1
6420	4
6421	5
6423	5
6424	3
6426	9
6427	4
6428	6
6431	8
6433	1
6434	5
6435	8
6438	4
6439	6
6440	8
6441	3
6442	5
6443	5
6446	5
6447	9
6448	1
6450	9
6451	1
6452	3
6453	9
6454	7
6459	4
6460	8
6462	7
6464	1
6466	9
6468	8
6470	3
6472	1
6473	8
6476	5
6477	2
6479	1
6481	2
6483	2
6484	1
6485	9
6486	2
6487	4
6490	4
6491	6
6492	2
6493	7
6496	7
6499	2
6501	5
6502	3
6504	7
6505	7
6506	8
6507	6
6508	5
6511	7
6513	1
6516	9
6517	8
6521	7
6522	9
6524	7
6525	4
6527	1
6532	3
6537	9
6540	5
6542	6
6544	7
6548	5
6549	1
6552	2
6556	1
6558	1
6559	6
6560	7
6564	5
6566	7
6567	1
6569	5
6571	5
6572	4
6574	7
6576	6
6578	4
6579	3
6580	3
6584	9
6585	5
6586	8
6590	4
6591	1
6595	4
6596	7
6598	6
6599	2
6605	5
6606	4
6607	5
6608	3
6609	1
6611	3
6613	8
6614	3
6615	5
6621	8
6622	6
6623	5
6624	3
6625	2
6626	2
6627	4
6628	4
6630	7
6635	1
6636	9
6637	5
6638	5
6641	8
6642	6
6643	7
6647	6
6648	2
6649	6
6650	7
6652	7
6653	5
6654	5
6655	9
6667	6
6669	2
6670	6
6671	3
6673	8
6678	8
6679	8
6680	8
6685	7
6686	1
6688	8
6689	7
6690	5
6696	2
6698	2
6701	2
6703	1
6704	3
6705	1
6708	1
6709	2
6710	5
6711	9
6713	7
6714	1
6715	9
6716	7
6718	3
6719	9
6720	8
6722	3
6725	6
6726	5
6727	5
6728	9
6730	6
6731	9
6733	1
6734	2
6736	3
6740	7
6741	3
6745	1
6747	5
6748	4
6749	1
6752	1
6753	3
6754	1
6757	5
6761	1
6762	4
6763	2
6764	9
6765	5
6775	9
6776	7
6777	1
6780	4
6781	1
6782	9
6783	2
6784	2
6785	3
6787	9
6788	2
6790	4
6792	1
6794	3
6798	1
6799	2
6800	4
6801	6
6802	5
6803	1
6804	4
6805	4
6807	6
6810	4
6811	5
6813	7
6814	3
6815	1
6817	3
6819	5
6822	8
6825	4
6826	3
6827	3
6829	6
6831	5
6833	4
6834	7
6836	6
6838	8
6839	2
6841	7
6842	3
6843	1
6844	8
6845	6
6849	5
6850	6
6852	2
6855	9
6856	9
6857	3
6858	6
6861	8
6862	9
6863	9
6867	1
6868	3
6870	9
6871	1
6872	4
6874	1
6877	7
6879	9
6880	2
6881	1
6883	4
6884	7
6885	1
6886	9
6888	2
6890	3
6894	9
6895	7
6900	2
6905	3
6906	1
6909	9
6910	4
6917	8
6919	3
6920	8
6921	9
6922	1
6923	2
6925	4
6928	7
6929	7
6930	6
6932	2
6933	7
6934	8
6936	8
6938	6
6941	4
6942	9
6949	7
6952	4
6953	6
6955	8
6956	7
6957	9
6958	1
6959	4
6961	7
6963	8
6964	5
6965	9
6970	1
6973	8
6974	5
6975	9
6977	1
6978	3
6980	9
6981	1
6982	4
6983	9
6988	1
6989	3
6990	5
6993	2
6996	6
6998	3
7004	4
7006	8
7007	8
7008	2
7009	8
7010	4
7011	4
7012	9
7014	6
7018	5
7019	5
7020	4
7021	8
7022	8
7023	5
7026	6
7028	2
7029	5
7030	4
7032	5
7033	2
7034	8
7036	3
7042	5
7046	6
7048	4
7049	8
7051	4
7054	5
7055	9
7056	5
7057	3
7059	7
7062	5
7066	1
7067	3
7070	2
7074	2
7077	5
7078	1
7080	4
7083	2
7087	9
7089	3
7102	5
7103	4
7104	4
7105	2
7106	5
7108	5
7109	3
7110	3
7111	6
7114	8
7116	9
7117	5
7118	4
7119	4
7120	5
7121	4
7122	4
7123	6
7124	2
7125	1
7126	7
7129	8
7130	8
7132	4
7138	8
7140	5
7144	2
7145	4
7148	7
7150	3
7151	3
7154	6
7159	9
7160	4
7161	2
7162	7
7164	2
7165	8
7167	2
7169	4
7170	3
7171	5
7172	5
7173	2
7174	1
7176	9
7181	6
7182	9
7187	1
7188	5
7190	4
7195	7
7196	1
7201	7
7202	4
7203	7
7204	7
7206	8
7208	3
7209	4
7211	6
7213	1
7216	3
7218	4
7219	1
7222	5
7223	8
7226	8
7229	7
7230	1
7231	8
7235	8
7237	4
7239	2
7240	4
7241	6
7242	5
7243	5
7244	8
7245	1
7246	2
7247	6
7248	1
7249	8
7254	4
7260	1
7261	8
7262	6
7267	2
7269	4
7272	6
7273	7
7276	2
7278	8
7281	2
7283	7
7290	7
7291	4
7294	4
7295	1
7296	7
7299	9
7300	5
7301	3
7302	8
7303	1
7305	4
7306	2
7307	3
7310	6
7312	8
7316	7
7319	3
7322	6
7323	6
7325	2
7326	8
7329	2
7330	2
7331	5
7333	7
7334	6
7336	6
7337	8
7340	4
7346	6
7348	8
7351	1
7355	1
7356	1
7358	4
7359	8
7360	6
7362	5
7363	2
7366	9
7368	8
7369	4
7370	6
7375	5
7376	3
7378	7
7380	2
7382	4
7387	7
7388	9
7389	7
7390	9
7391	9
7394	6
7395	5
7397	8
7399	4
7401	5
7402	5
7404	1
7407	6
7408	3
7411	5
7414	8
7418	2
7421	3
7422	6
7425	1
7426	9
7429	9
7430	9
7433	6
7434	3
7435	2
7436	6
7437	1
7442	3
7444	6
7445	4
7446	4
7448	1
7450	1
7452	2
7459	5
7461	9
7462	4
7466	5
7467	8
7471	5
7474	9
7475	6
7477	2
7480	1
7481	8
7482	8
7483	2
7485	1
7486	2
7487	9
7489	5
7491	8
7493	8
7494	9
7496	3
7498	9
7499	6
7500	7
7502	4
7504	6
7505	2
7506	7
7507	6
7508	6
7509	1
7512	7
7518	7
7522	5
7524	2
7526	7
7530	3
7532	1
7533	7
7534	9
7535	9
7538	3
7539	9
7541	1
7546	6
7550	1
7555	1
7557	3
7558	1
7559	6
7560	4
7562	7
7564	9
7565	8
7566	4
7567	6
7569	6
7570	9
7572	5
7575	5
7578	4
7579	4
7580	2
7582	6
7583	6
7587	6
7589	7
7590	1
7593	5
7595	4
7596	8
7598	4
7599	4
7601	2
7604	3
7605	9
7606	4
7609	8
7611	3
7612	8
7613	9
7614	9
7615	2
7616	4
7618	5
7622	4
7623	7
7624	2
7625	5
7626	1
7627	7
7629	7
7631	6
7635	4
7637	3
7638	3
7640	3
7645	2
7647	9
7649	7
7650	3
7653	8
7655	9
7656	9
7659	2
7663	4
7666	9
7667	8
7668	7
7670	9
7672	1
7673	2
7674	6
7678	1
7680	1
7681	9
7682	9
7686	3
7687	1
7691	1
7692	2
7695	7
7700	1
7701	2
7703	2
7705	3
7707	5
7710	7
7711	3
7712	2
7713	9
7715	4
7716	8
7718	5
7720	9
7721	1
7722	3
7723	1
7728	1
7729	6
7730	1
7731	5
7733	1
7736	2
7738	6
7740	4
7743	8
7744	8
7747	4
7748	9
7749	3
7755	7
7756	1
7757	1
7761	1
7763	6
7764	5
7765	6
7767	4
7769	4
7773	3
7774	4
7776	8
7777	5
7778	7
7780	3
7781	6
7782	9
7784	1
7785	8
7786	3
7787	9
7793	5
7796	1
7800	6
7801	2
7809	1
7810	2
7813	7
7814	8
7815	8
7818	5
7819	8
7822	4
7824	3
7828	5
7830	2
7832	8
7834	1
7837	3
7838	9
7839	8
7841	6
7843	6
7845	7
7847	6
7850	8
7852	4
7853	4
7855	9
7858	6
7861	1
7863	4
7864	6
7868	4
7869	3
7872	7
7873	9
7875	2
7877	1
7879	8
7880	2
7881	5
7885	4
7886	1
7887	5
7888	3
7891	9
7895	3
7896	2
7899	2
7900	6
7902	8
7907	6
7908	8
7909	4
7910	2
7916	1
7917	8
7921	7
7922	4
7925	4
7926	3
7927	1
7928	2
7930	6
7931	6
7932	1
7942	7
7943	9
7947	9
7949	2
7951	7
7953	6
7956	6
7957	3
7958	8
7960	3
7962	3
7963	4
7964	7
7966	7
7967	3
7969	3
7971	9
7972	2
7973	2
7977	8
7980	7
7983	3
7984	1
7987	8
7989	4
7990	1
7996	8
7997	6
8000	5
8001	4
8002	9
8005	1
8006	6
8011	8
8013	3
8016	7
8021	8
8022	8
8023	2
8024	4
8027	2
8028	5
8036	7
8037	4
8038	4
8042	2
8043	2
8044	5
8047	4
8051	3
8054	9
8056	9
8058	1
8061	3
8063	5
8064	3
8065	6
8067	7
8069	3
8070	1
8071	7
8074	3
8075	2
8079	6
8083	4
8084	2
8087	5
8090	7
8092	6
8093	2
8098	5
8100	2
8101	1
8102	4
8104	1
8105	3
8108	1
8109	3
8110	1
8112	2
8113	7
8118	6
8119	2
8121	3
8122	5
8123	3
8124	7
8126	6
8129	3
8130	8
8131	5
8132	8
8134	6
8136	3
8138	9
8140	4
8142	8
8145	3
8146	9
8148	5
8149	2
8150	9
8152	5
8153	4
8154	7
8155	6
8159	5
8161	9
8167	1
8170	9
8173	1
8174	3
8176	9
8178	3
8179	6
8182	5
8183	1
8184	1
8185	2
8186	5
8188	8
8189	2
8191	2
8193	7
8198	1
8199	4
8200	7
8201	8
8202	9
8204	2
8210	5
8211	5
8212	3
8213	5
8216	8
8217	2
8219	7
8220	7
8221	5
8223	9
8224	5
8227	5
8228	5
8229	5
8230	3
8231	4
8232	5
8233	5
8234	9
8235	6
8236	6
8246	2
8248	4
8249	8
8250	5
8251	1
8257	4
8258	1
8259	9
8260	9
8261	2
8262	8
8263	3
8264	1
8268	8
8269	4
8270	4
8271	2
8272	3
8273	6
8275	5
8276	5
8277	5
8280	1
8281	1
8282	1
8284	4
8286	4
8290	8
8295	6
8297	5
8303	3
8304	3
8306	8
8310	9
8312	7
8313	6
8314	5
8315	5
8321	2
8322	6
8329	6
8330	5
8331	2
8333	7
8334	1
8335	5
8336	4
8337	7
8338	3
8339	1
8341	4
8345	8
8347	9
8349	3
8351	5
8353	4
8357	7
8358	3
8359	8
8361	2
8365	1
8368	9
8369	7
8370	3
8371	6
8372	7
8373	9
8374	6
8376	6
8377	6
8378	9
8379	9
8380	3
8381	9
8384	1
8385	5
8387	8
8388	8
8391	3
8395	2
8396	2
8397	9
8399	9
8401	9
8404	5
8407	3
8410	1
8412	4
8413	6
8415	6
8418	8
8420	9
8421	1
8423	4
8424	9
8425	8
8428	6
8429	7
8431	5
8433	7
8440	6
8441	3
8443	8
8445	4
8446	8
8448	8
8450	5
8451	4
8454	9
8455	1
8456	5
8464	5
8466	2
8467	2
8469	2
8471	7
8473	4
8476	1
8479	6
8483	9
8484	3
8487	8
8488	2
8490	6
8493	8
8494	1
8496	8
8497	7
8500	5
8501	9
8502	9
8504	8
8508	1
8509	3
8510	5
8512	8
8515	8
8516	6
8517	3
8518	2
8519	9
8523	5
8524	2
8526	3
8530	6
8532	1
8533	2
8537	1
8540	4
8541	1
8542	1
8543	7
8544	1
8545	9
8546	1
8548	2
8550	2
8551	4
8555	4
8556	8
8558	5
8560	6
8563	6
8564	5
8565	4
8566	9
8567	9
8575	2
8576	1
8578	7
8582	1
8584	4
8585	9
8588	1
8590	6
8591	7
8592	7
8593	5
8594	6
8596	4
8602	4
8603	7
8604	3
8615	7
8620	1
8621	8
8623	7
8625	4
8626	6
8630	8
8632	6
8636	7
8638	7
8641	8
8642	9
8646	1
8647	1
8649	9
8650	5
8651	4
8652	2
8654	8
8655	6
8658	4
8662	3
8664	2
8665	7
8666	5
8668	8
8676	7
8680	6
8681	3
8683	8
8684	2
8685	8
8690	8
8691	1
8692	2
8694	4
8698	6
8699	1
8700	4
8703	5
8705	1
8706	6
8708	6
8709	8
8717	2
8719	6
8726	5
8727	8
8728	1
8729	3
8730	3
8732	3
8734	2
8735	5
8740	4
8744	4
8745	5
8747	4
8750	5
8754	4
8759	5
8763	6
8766	9
8767	6
8769	8
8771	6
8772	1
8773	7
8774	8
8775	1
8780	5
8782	1
8783	3
8784	6
8785	7
8787	3
8788	7
8789	6
8793	7
8794	8
8795	5
8796	8
8797	8
8802	7
8803	2
8804	8
8806	8
8808	1
8810	6
8812	5
8814	4
8815	3
8818	6
8819	7
8821	5
8823	2
8826	8
8827	5
8829	6
8831	8
8833	9
8834	7
8837	8
8839	4
8841	4
8845	3
8847	4
8848	7
8853	9
8855	9
8856	6
8857	1
8859	6
8860	7
8862	3
8863	7
8864	6
8868	3
8869	5
8870	6
8872	8
8877	1
8878	7
8884	5
8886	4
8890	6
8894	4
8895	5
8896	7
8897	2
8900	4
8907	4
8908	1
8909	5
8913	6
8918	4
8919	8
8920	7
8922	5
8925	2
8934	7
8935	6
8936	6
8937	8
8939	3
\.

-- scheduled_lesson_student
\! echo 'Insert into Scheduled Lesson Student..';
COPY scheduled_lesson_student (group_lesson_slot_id, student_person_id) FROM stdin;
1	177
1	329
1	593
1	663
1	424
1	386
1	560
2	82
2	192
2	639
2	241
2	584
3	622
3	394
3	377
4	275
4	647
4	388
4	541
4	645
5	326
5	458
5	217
5	426
6	592
6	421
6	657
6	205
7	254
7	185
7	64
7	542
7	270
7	339
7	278
7	694
8	205
8	418
8	501
8	631
9	464
9	422
9	93
9	514
9	244
10	345
10	528
10	526
10	325
10	274
10	394
10	377
11	399
11	687
11	294
11	423
11	414
12	225
12	256
12	447
12	251
13	443
13	296
13	693
13	580
13	77
13	116
14	76
14	227
14	235
14	258
15	505
15	66
15	211
15	341
15	496
16	77
16	156
16	362
16	507
16	116
16	443
16	88
17	576
17	55
17	483
18	283
18	322
18	73
18	511
18	627
18	173
18	646
19	348
19	314
19	146
19	450
19	276
20	663
20	124
21	60
21	135
21	543
21	654
22	588
22	162
22	656
22	131
22	140
22	531
23	69
23	648
23	397
23	211
23	100
23	330
23	547
23	630
24	628
24	307
24	691
24	636
25	296
25	363
26	501
26	578
26	622
26	106
26	361
26	412
26	701
26	192
27	167
27	208
27	81
28	592
28	421
28	549
28	256
28	331
29	247
29	441
29	385
29	664
30	487
30	216
30	614
30	220
31	519
31	657
31	126
31	333
32	659
32	344
32	207
33	192
33	271
33	361
34	333
34	57
34	256
34	582
35	336
35	633
35	344
35	353
35	524
36	631
36	234
36	245
36	501
36	267
37	374
37	525
37	341
37	200
38	512
38	433
38	129
38	577
39	581
39	625
39	394
39	622
39	274
40	579
40	402
40	555
40	431
40	378
40	252
41	99
41	386
41	458
41	256
42	478
42	210
42	409
43	612
43	455
43	670
43	201
43	566
43	102
43	191
44	509
44	433
44	624
44	373
45	615
45	344
45	99
45	455
45	448
46	393
46	399
46	435
46	123
47	554
47	130
47	310
47	407
48	385
48	572
48	247
48	543
49	664
49	527
49	62
49	441
49	348
50	162
50	466
50	486
50	651
50	273
50	81
50	306
51	135
51	377
51	223
51	666
51	280
52	522
52	313
52	393
52	212
52	556
52	72
53	478
53	662
53	554
53	322
54	691
54	419
54	400
54	636
54	209
54	438
55	61
55	178
55	536
55	90
55	514
55	179
55	115
55	464
56	608
56	449
57	53
57	497
57	469
57	335
58	73
58	331
58	396
58	338
58	666
59	256
59	672
59	408
60	584
60	111
60	536
60	504
60	429
61	394
61	589
61	528
61	223
62	641
62	313
62	522
62	687
62	598
62	393
62	512
62	115
63	635
63	72
64	550
64	215
64	687
64	641
64	104
64	475
64	78
64	414
64	522
65	183
65	663
65	463
65	406
66	383
66	409
66	396
66	594
67	629
67	550
67	440
67	314
68	200
68	607
68	525
68	88
68	621
68	343
69	280
69	644
69	630
69	381
69	121
70	681
70	345
70	485
70	526
71	441
71	193
71	671
71	664
71	146
72	131
72	372
72	174
72	582
72	81
72	672
72	542
72	624
73	440
73	480
73	620
74	536
74	584
74	237
74	634
74	427
75	386
75	456
75	507
75	630
75	312
75	202
76	420
76	457
76	139
76	528
76	541
76	394
76	581
77	437
77	106
77	435
77	172
78	284
78	99
78	118
78	458
78	92
79	250
79	111
79	241
80	211
80	644
80	138
80	467
81	230
81	161
81	573
82	198
82	538
82	663
82	506
82	507
82	424
82	356
82	157
82	376
83	601
83	355
83	438
84	600
84	99
84	439
84	567
84	674
84	679
84	147
84	462
84	477
85	427
85	79
85	493
85	584
85	370
86	466
86	372
86	70
86	52
87	669
87	60
87	608
87	204
87	395
87	136
87	118
88	227
88	624
88	235
88	678
88	350
89	132
89	296
89	693
89	474
89	400
90	160
90	415
90	581
91	491
91	631
91	205
92	433
92	425
92	373
92	256
92	509
92	324
92	571
92	129
93	292
93	240
93	500
93	567
93	505
93	315
93	346
93	638
94	152
94	249
94	205
94	271
94	226
94	68
95	355
95	400
95	636
95	601
96	66
96	208
96	200
96	293
96	515
97	124
97	490
97	288
98	258
98	678
98	127
98	87
98	510
98	227
98	350
99	591
99	483
99	429
99	632
100	540
100	400
100	696
100	628
100	211
101	397
101	686
101	180
102	73
102	75
102	396
102	484
102	421
102	173
102	597
103	618
103	77
103	599
104	396
104	660
104	312
104	383
104	620
104	480
105	602
105	205
105	403
105	555
105	188
105	245
105	308
106	115
106	670
106	399
106	215
107	529
107	205
107	495
107	259
107	140
108	599
108	514
108	474
108	156
108	277
108	618
108	580
109	624
109	691
109	467
109	271
109	233
110	227
110	405
110	248
110	258
110	272
110	140
111	391
111	218
111	270
111	311
111	342
112	653
112	672
112	81
112	258
112	131
112	486
112	395
113	259
113	243
113	501
113	595
113	189
113	267
114	600
114	654
114	495
114	158
115	639
115	584
115	104
115	111
115	483
116	179
116	614
116	385
116	287
116	53
116	664
117	483
117	207
117	484
117	241
117	55
118	312
118	84
118	478
119	581
119	275
119	325
120	71
120	375
120	361
120	320
120	341
121	60
121	53
121	276
122	660
122	500
122	574
122	247
122	591
122	340
123	66
123	375
124	618
124	151
124	126
124	291
124	243
125	311
125	314
125	228
125	55
126	637
126	484
126	283
126	666
126	383
126	338
127	590
127	509
127	664
127	262
127	684
127	577
128	353
128	524
128	676
128	595
128	345
128	642
128	336
129	694
129	284
130	75
130	511
130	440
130	637
130	265
131	480
131	690
132	345
132	160
132	392
132	625
133	279
133	581
133	411
133	53
134	685
134	366
134	504
134	80
134	165
135	583
135	551
135	424
135	467
136	280
136	339
137	88
137	200
137	341
137	71
137	525
137	607
137	306
138	611
138	471
139	448
139	675
139	344
139	458
140	495
140	267
140	695
141	520
141	99
141	118
141	430
141	448
142	679
142	600
142	76
142	613
142	492
143	414
143	115
143	463
143	633
143	294
143	123
144	361
144	155
144	438
144	213
145	288
145	357
145	632
146	221
146	699
146	346
147	251
147	548
148	193
148	527
148	385
148	654
149	429
149	557
149	536
150	506
150	144
150	406
150	352
150	183
151	99
151	509
151	217
151	266
151	256
151	255
151	458
151	92
152	585
152	568
152	426
152	386
153	155
153	696
153	112
153	129
154	573
154	295
154	411
154	556
154	675
155	668
155	159
155	671
156	592
156	494
156	579
156	92
157	291
157	580
157	519
157	340
158	123
158	522
158	78
158	279
159	495
159	308
159	189
160	84
160	620
160	597
161	466
161	248
161	306
161	93
161	372
162	339
162	542
162	213
162	254
162	55
163	308
163	313
163	420
163	542
163	459
163	69
164	287
164	261
164	614
164	154
165	218
165	114
165	567
165	315
165	304
165	500
165	640
165	346
166	469
166	239
166	565
166	183
166	573
166	424
167	580
167	150
167	628
167	156
167	340
168	183
168	538
168	126
168	329
168	424
169	414
169	556
169	423
169	435
170	421
170	627
170	666
170	265
170	660
170	646
171	449
171	579
171	372
172	641
172	435
173	452
173	678
174	450
174	247
174	154
174	179
174	657
175	461
175	287
175	253
175	257
176	199
176	138
176	288
176	544
176	587
176	269
176	286
177	180
177	352
177	100
177	70
177	321
178	674
178	450
178	402
178	432
178	272
179	463
179	393
179	74
179	313
179	555
179	513
179	104
179	215
180	679
180	567
180	457
180	600
180	574
180	439
180	477
180	555
181	599
181	621
181	194
181	402
181	574
182	592
182	555
182	494
182	538
182	144
182	410
183	686
183	570
184	205
184	202
184	485
184	274
184	392
185	393
185	212
185	215
185	423
185	512
185	670
186	362
186	400
187	568
187	544
187	142
188	368
188	345
188	701
188	155
188	564
189	187
189	609
189	230
189	453
189	124
190	402
190	621
190	194
191	582
191	619
191	224
192	490
192	639
193	266
193	284
193	99
193	386
194	653
194	486
194	174
194	117
195	409
195	447
195	391
195	653
195	484
195	618
196	646
196	421
197	158
197	338
198	659
198	217
198	568
198	266
198	694
198	344
198	426
199	556
199	279
199	555
199	512
200	75
200	313
200	516
201	171
201	477
201	378
201	431
202	612
202	650
202	455
202	102
203	553
203	545
203	566
203	128
204	469
204	570
204	239
204	53
205	581
205	275
205	202
205	226
206	214
206	373
206	684
206	631
206	262
206	267
206	664
207	76
207	258
207	122
207	443
207	127
207	350
208	421
208	619
208	333
208	224
208	205
208	318
209	443
209	628
209	277
209	133
210	382
210	524
210	492
210	595
211	549
211	126
211	657
211	582
212	277
212	294
213	580
213	291
213	362
214	429
214	574
214	182
215	527
215	533
215	667
215	179
215	664
216	155
216	106
216	639
217	654
217	62
217	146
217	154
218	224
218	318
218	77
218	562
218	126
219	76
219	528
219	103
219	574
220	626
220	92
220	568
220	99
221	533
221	62
221	654
221	348
222	463
222	475
222	598
222	212
223	183
223	506
223	424
223	144
224	626
224	229
224	644
224	599
225	617
225	597
225	484
225	594
225	396
225	312
225	75
226	162
226	248
226	350
226	462
226	466
226	306
226	539
227	399
227	463
227	670
228	664
228	208
228	276
229	291
229	156
230	348
230	538
230	697
230	398
230	367
231	658
231	383
231	402
232	326
232	659
232	426
232	192
232	458
232	430
232	520
233	92
233	675
233	255
233	615
234	496
234	672
234	653
234	395
234	651
234	162
234	93
234	258
235	71
235	200
235	525
236	125
236	335
236	564
236	663
236	106
236	219
237	411
237	486
237	69
238	370
238	689
239	273
239	692
239	150
239	285
240	397
240	167
240	465
240	236
240	297
241	536
241	335
241	357
242	276
242	450
242	60
242	657
243	600
243	334
243	359
243	264
244	539
244	656
244	673
244	531
244	653
245	126
245	362
245	243
245	77
245	296
245	291
246	636
246	389
246	553
246	455
247	615
247	207
247	92
247	118
248	625
248	274
248	325
248	581
248	139
248	528
248	226
248	388
248	205
249	75
249	265
249	449
249	383
250	185
250	694
250	232
250	633
250	308
251	539
251	486
251	462
251	653
252	531
252	227
252	395
252	673
253	388
253	226
254	431
254	555
254	119
255	696
255	557
255	216
255	591
255	357
256	653
256	582
256	227
256	624
256	197
257	547
257	381
257	467
257	623
257	583
258	173
258	396
258	662
258	627
258	660
258	421
258	594
259	280
259	377
259	112
259	681
259	339
259	599
259	229
259	693
260	551
260	379
260	332
260	426
260	362
260	696
261	81
261	332
261	496
261	174
261	539
262	450
262	59
262	148
262	135
263	267
263	418
263	259
263	162
263	380
263	188
263	173
264	627
264	510
264	103
264	615
264	159
264	335
264	683
265	374
265	528
265	291
265	399
265	401
266	197
266	666
266	181
266	310
267	83
267	125
267	674
267	218
267	488
268	379
268	504
268	387
269	690
269	552
269	197
269	513
269	130
269	59
270	256
270	615
270	386
270	458
270	520
270	626
270	344
271	409
271	253
271	511
271	554
271	484
271	627
271	265
272	415
272	128
272	424
272	149
272	144
272	406
273	450
273	182
273	538
273	647
274	604
274	390
274	623
274	381
274	252
275	618
275	456
275	295
275	218
275	114
276	223
276	457
276	541
276	625
276	394
277	632
277	237
277	472
277	427
277	155
278	485
278	415
278	226
278	581
278	274
278	622
278	392
278	526
278	345
279	133
279	243
279	618
279	151
279	277
280	283
280	640
280	605
281	443
281	277
281	235
281	258
282	226
282	202
282	541
282	345
282	85
282	526
282	325
282	485
283	81
283	661
283	636
283	614
283	172
284	475
284	635
284	104
285	555
285	435
285	512
285	215
286	107
286	247
286	146
286	667
287	395
287	332
287	131
287	542
287	174
287	624
288	400
288	534
288	307
288	291
288	693
289	345
289	415
289	377
289	485
289	164
290	677
290	531
290	530
290	108
290	349
290	621
291	215
291	104
291	414
291	294
291	513
291	555
291	313
291	475
292	690
292	440
292	409
292	283
292	449
292	617
293	682
293	686
293	644
294	354
294	348
294	383
294	658
294	697
294	247
294	182
295	209
295	298
295	120
295	552
295	419
295	628
296	579
296	230
296	314
296	629
296	196
296	311
296	510
297	446
297	364
298	309
298	495
298	338
298	654
298	632
298	334
298	454
299	81
299	405
299	140
299	588
300	441
300	62
300	657
300	450
300	247
301	529
301	283
301	637
301	597
302	641
302	475
302	556
302	635
302	294
303	690
303	590
303	666
303	130
303	513
304	664
304	441
304	276
304	204
304	208
304	261
304	407
305	693
305	243
306	69
306	644
306	648
306	330
307	78
307	215
307	556
307	555
307	231
307	475
308	367
308	543
308	135
308	527
308	261
308	314
308	53
308	107
309	442
309	389
309	151
309	581
310	340
310	474
310	88
310	693
311	399
311	423
312	633
312	313
312	513
312	212
312	294
313	125
313	561
313	536
313	634
313	98
314	484
314	71
314	274
314	263
314	137
315	633
315	555
315	99
315	457
316	332
316	531
316	227
316	624
316	174
316	273
317	529
317	265
317	210
318	393
318	567
318	399
318	527
319	675
319	118
319	520
319	659
320	347
320	192
320	304
320	483
320	83
321	630
321	663
321	312
321	593
322	642
322	435
322	231
322	687
322	555
322	414
322	74
322	115
322	512
323	92
323	118
323	659
323	509
324	554
324	378
324	590
324	436
324	110
325	370
325	77
325	333
325	592
325	316
325	657
325	519
325	205
325	331
326	400
326	514
326	580
326	116
326	296
326	277
326	340
327	377
327	164
327	457
327	202
327	226
327	160
328	686
328	682
329	119
329	334
329	252
329	555
329	231
330	575
330	436
330	337
330	187
330	569
331	217
331	455
331	458
331	344
332	237
332	253
332	238
332	83
333	590
333	324
333	282
333	414
333	599
334	215
334	104
334	641
334	550
334	513
335	684
335	387
335	315
336	466
336	698
336	208
336	465
336	65
336	121
337	646
337	275
337	688
337	689
338	655
338	580
338	375
338	66
338	515
338	543
338	632
338	200
339	372
339	558
339	311
339	449
339	113
339	440
339	357
339	314
340	125
340	557
340	357
340	564
340	663
340	155
340	216
340	129
341	642
341	353
341	676
341	345
341	166
342	148
342	242
342	107
342	276
342	664
342	385
343	653
343	496
343	672
343	395
344	221
344	283
344	456
344	218
345	396
345	226
345	97
346	599
346	112
346	223
346	85
346	486
346	498
346	666
346	474
347	132
347	277
347	534
347	126
347	296
348	415
348	325
348	274
348	589
348	681
349	452
349	76
350	243
350	599
350	443
350	88
350	126
350	534
351	336
351	642
351	524
351	676
352	636
352	552
352	307
352	419
352	601
352	211
353	69
353	397
353	630
353	285
353	551
353	225
354	154
354	324
354	577
354	684
354	334
354	282
355	490
355	483
355	689
355	632
355	237
355	663
356	216
356	636
356	661
356	210
357	377
357	541
357	622
357	345
357	164
358	432
358	363
358	198
358	398
358	525
359	588
359	656
359	582
360	651
360	673
360	656
360	672
361	350
361	347
361	79
362	588
362	140
362	372
362	197
363	634
363	632
363	663
364	266
364	92
364	284
365	555
365	613
365	99
365	462
365	574
365	633
365	147
365	631
365	76
366	538
366	177
366	202
367	440
367	480
367	605
367	690
367	637
367	84
367	594
368	641
368	269
368	118
368	407
368	138
369	693
369	158
369	547
369	451
369	338
370	320
370	306
370	655
370	343
370	66
370	374
371	60
371	657
371	572
371	107
371	407
372	187
372	547
372	644
372	211
372	551
373	622
373	139
373	388
373	164
373	589
374	208
374	167
374	679
374	698
375	193
375	561
375	305
376	77
376	205
376	316
376	370
377	177
377	602
377	595
377	403
378	415
378	329
378	456
378	202
378	424
378	183
378	593
378	630
379	481
379	497
379	565
379	573
380	274
380	161
380	609
380	316
380	572
380	211
381	535
381	544
381	136
381	120
382	110
382	407
382	450
382	113
383	135
383	208
383	146
383	367
383	664
384	255
384	223
384	377
384	599
385	642
385	402
385	621
385	500
386	182
386	647
386	658
386	354
387	401
387	116
387	528
387	291
387	574
388	391
388	274
388	618
388	491
388	89
388	447
389	135
389	317
389	242
389	441
390	657
390	247
390	276
390	671
390	667
390	59
390	261
391	381
391	352
392	272
392	197
392	258
392	227
392	131
393	335
393	183
393	239
393	328
393	481
393	424
393	361
394	304
394	638
394	315
394	428
394	240
395	192
395	509
395	284
395	675
396	626
396	192
396	256
396	229
396	615
396	509
396	207
396	386
397	295
397	686
397	565
397	469
398	345
398	581
398	139
398	275
398	325
399	248
399	306
399	588
400	121
400	85
400	372
400	660
400	185
400	679
401	430
401	118
401	229
401	304
401	255
402	85
402	275
403	105
403	137
403	71
404	76
404	674
404	527
404	462
404	381
404	574
405	376
405	538
405	356
405	630
405	506
405	126
405	560
406	458
406	192
406	92
406	255
406	118
406	304
406	217
406	326
406	284
407	53
407	179
407	657
407	317
407	148
407	146
408	569
408	427
408	390
409	420
409	528
410	511
410	253
410	338
410	322
410	662
410	617
411	344
411	509
411	326
411	229
411	694
412	148
412	315
412	218
412	143
412	79
413	229
413	175
414	609
414	337
414	588
414	436
415	252
415	583
415	121
415	361
415	321
415	682
416	409
416	440
416	660
416	529
416	322
416	210
417	235
417	258
417	460
417	122
417	452
417	76
418	267
418	590
418	509
419	344
419	694
419	675
419	386
419	217
420	668
420	670
420	159
420	335
420	534
420	615
420	399
420	528
421	115
421	653
421	269
422	208
422	395
422	51
422	65
422	278
422	665
423	313
423	379
423	459
423	94
424	583
424	309
424	338
424	632
425	541
425	457
425	681
425	85
425	223
425	545
425	485
425	275
425	415
426	249
426	441
427	53
427	59
427	208
427	204
427	671
427	314
427	592
427	543
427	148
428	133
428	83
428	580
428	277
429	584
429	112
429	124
429	129
429	155
430	459
430	525
430	55
430	542
431	356
431	386
431	198
431	144
431	507
431	149
431	538
432	242
432	276
432	348
432	60
433	98
433	129
433	429
433	155
433	591
433	493
433	237
434	655
434	375
434	293
434	200
435	596
435	629
435	299
435	543
435	447
435	526
435	284
436	511
436	442
436	269
436	76
437	363
437	474
437	443
437	580
437	116
438	349
438	296
438	507
438	151
439	307
439	150
439	400
439	349
439	302
440	642
440	423
440	429
440	402
440	195
441	653
441	395
441	476
441	60
441	535
441	614
442	654
442	434
442	454
442	632
442	95
443	649
443	405
443	78
443	86
444	177
444	243
444	529
444	173
444	509
444	245
444	555
445	474
445	443
445	599
445	156
446	576
446	347
446	279
446	639
446	483
447	650
447	102
447	652
447	190
447	636
447	670
448	558
448	629
448	142
449	279
449	635
449	687
449	641
449	670
449	642
450	217
450	458
450	192
450	229
450	92
450	426
450	207
450	326
450	568
451	690
451	440
451	529
452	424
452	623
452	225
452	686
452	186
452	685
453	92
453	494
453	410
453	592
453	538
453	334
454	108
454	662
454	530
454	649
454	364
454	349
455	139
455	607
455	543
455	632
455	71
455	521
456	362
456	628
456	534
457	223
457	58
457	644
457	599
458	665
458	662
458	484
459	409
459	665
459	484
459	662
459	396
460	453
460	148
460	222
460	369
460	79
460	394
460	548
461	139
461	485
461	325
461	541
461	491
462	595
462	642
462	344
462	524
463	258
463	557
464	589
464	202
464	388
464	164
465	522
465	200
465	343
465	341
465	195
465	276
466	118
466	675
466	585
466	626
466	99
466	430
466	284
466	694
467	62
467	671
467	204
467	572
467	154
468	662
468	75
468	283
468	511
468	440
468	396
468	409
468	665
468	210
469	641
469	642
469	555
470	124
470	155
471	467
471	608
471	644
471	321
471	630
472	660
472	478
472	637
472	421
472	594
472	312
473	322
473	511
473	75
473	173
473	478
473	253
473	646
474	618
474	653
474	484
475	208
475	343
475	361
475	515
476	321
476	608
476	612
476	648
476	280
476	352
476	381
476	685
477	496
477	653
477	258
478	519
478	126
478	151
478	150
479	363
479	658
479	697
479	525
479	538
479	247
479	107
480	615
480	207
480	694
480	192
481	496
481	651
481	117
481	140
482	588
482	653
482	332
482	197
483	415
483	392
483	223
483	205
483	457
483	581
483	202
484	635
484	435
485	127
485	350
485	557
485	417
486	155
486	639
486	288
486	472
486	357
486	429
487	313
487	232
487	459
487	254
487	615
487	525
488	256
488	659
488	217
488	585
488	626
489	112
489	639
489	429
489	634
490	457
490	545
490	377
490	528
490	394
491	301
491	511
491	654
491	287
492	671
492	146
492	654
492	543
492	450
493	307
493	470
493	211
493	298
493	636
494	671
494	572
494	60
494	614
494	107
495	565
495	626
495	498
495	693
495	58
496	556
496	635
496	555
496	435
497	325
497	345
497	160
497	415
497	581
498	163
498	641
498	608
498	288
499	311
499	323
499	440
499	510
499	485
499	115
499	579
499	314
500	330
500	583
500	381
500	551
500	186
500	187
500	280
501	552
501	600
501	120
501	628
502	420
502	589
502	205
502	392
502	139
503	288
503	689
503	98
504	306
504	651
504	131
504	496
504	405
504	653
505	150
505	618
505	599
505	77
505	534
505	126
506	457
506	555
506	620
506	574
506	674
506	492
506	477
507	232
507	185
507	379
507	547
507	459
507	542
507	516
508	625
508	236
508	168
508	372
509	139
509	274
509	275
510	229
510	175
510	112
510	565
511	450
511	674
511	198
511	697
511	506
511	354
511	645
512	386
512	192
512	430
512	675
513	340
513	302
513	628
513	133
513	291
513	507
514	147
514	492
514	574
515	59
515	552
516	225
516	321
516	583
516	252
516	211
516	424
517	357
517	493
517	557
517	696
517	564
517	288
517	129
517	216
517	124
518	261
518	385
518	592
519	92
519	386
519	430
520	622
520	388
520	420
520	581
520	491
520	164
520	457
521	78
521	72
521	279
521	313
522	74
522	598
522	642
522	104
522	78
522	522
522	294
522	177
523	546
523	574
523	539
523	317
523	616
524	329
524	312
524	356
524	560
525	694
525	232
525	615
525	91
526	55
526	311
526	611
526	228
526	550
526	485
526	568
526	96
527	550
527	513
527	104
527	212
528	539
528	668
528	597
528	546
529	390
529	612
529	321
529	686
529	682
529	186
530	259
530	659
530	70
530	617
530	679
530	236
530	465
530	594
530	248
531	583
531	381
531	686
532	340
532	83
532	307
532	599
532	116
532	618
533	633
533	72
533	231
533	513
533	177
533	399
534	466
534	624
534	582
534	539
535	443
535	277
535	258
535	122
536	681
536	420
536	345
536	223
536	625
537	510
537	122
537	258
537	227
537	624
538	257
538	646
538	238
538	275
539	363
539	83
539	514
539	156
539	534
539	77
539	302
539	150
540	388
540	402
541	344
541	218
541	347
541	670
541	148
541	80
542	530
542	446
542	475
542	662
542	520
543	690
543	581
543	113
543	552
544	272
544	674
544	182
545	394
545	526
545	491
545	545
545	226
545	160
546	581
546	573
546	497
546	570
546	675
547	55
547	485
548	630
548	424
548	648
548	121
548	285
548	686
549	265
549	421
549	478
549	383
549	338
549	173
549	666
550	600
550	298
550	307
550	540
550	470
551	616
551	683
551	615
551	90
552	217
552	626
552	255
552	455
553	600
553	454
553	590
553	274
553	693
554	192
554	520
554	675
554	568
555	526
555	625
555	202
555	377
556	147
556	600
556	679
557	307
557	88
557	243
557	291
557	77
557	116
558	351
558	344
558	633
558	492
559	507
559	618
559	580
559	77
559	150
560	132
560	474
560	519
560	88
560	291
560	83
560	514
560	693
561	243
561	296
561	443
561	580
561	132
561	349
562	574
562	500
562	247
562	423
562	246
562	193
562	591
563	74
563	104
563	635
563	313
563	72
563	687
564	160
564	377
564	164
564	622
565	113
565	436
565	590
566	88
566	307
566	156
566	243
567	73
567	660
567	511
567	322
567	338
567	690
568	163
568	669
568	269
568	535
568	138
568	118
569	571
569	624
569	129
569	73
570	687
570	513
570	670
570	72
570	74
571	388
571	325
571	392
571	581
571	457
572	588
572	197
572	673
572	117
572	405
573	227
573	443
573	87
573	460
574	670
574	550
574	78
574	279
574	123
574	423
575	164
575	254
576	598
576	313
576	231
577	507
577	307
577	243
577	693
577	599
578	470
578	120
578	552
578	636
578	691
579	166
579	336
579	492
579	642
579	345
579	676
579	524
579	344
580	545
580	392
580	589
580	164
581	205
581	345
581	457
581	85
581	202
581	528
582	555
582	119
582	252
582	519
582	410
583	223
583	112
583	666
583	255
583	681
584	256
584	615
584	509
584	386
585	536
585	561
585	61
586	667
586	146
586	671
586	179
586	614
587	632
587	111
587	106
588	145
588	371
588	273
588	150
588	430
589	255
589	493
590	477
590	71
590	89
590	105
590	484
591	618
591	362
591	296
591	77
591	519
591	534
592	534
592	628
592	116
593	588
593	372
593	174
593	466
593	140
593	653
593	496
594	160
594	581
594	545
594	415
594	491
594	589
595	586
595	230
595	161
595	274
595	572
595	569
596	376
596	584
596	632
596	490
597	597
597	383
597	529
597	617
597	620
597	312
597	73
597	478
597	690
598	663
598	144
598	177
599	108
599	364
599	343
600	368
600	517
600	345
600	361
600	192
601	389
601	554
602	545
602	85
602	377
602	394
602	202
602	528
602	457
603	193
603	62
603	242
604	347
604	148
604	643
604	56
604	667
604	277
604	125
605	477
605	484
605	391
605	491
605	274
605	137
605	105
606	361
606	691
606	261
606	213
607	367
607	204
607	657
607	193
607	348
607	671
608	589
608	205
608	160
609	106
609	493
609	490
609	98
610	529
610	338
610	620
610	383
611	677
611	543
611	262
612	357
612	689
612	632
612	288
613	484
613	105
613	71
613	89
613	109
613	447
613	680
613	409
614	625
614	223
615	653
615	673
615	486
615	272
615	405
616	411
616	565
616	328
616	239
616	469
617	126
617	421
617	693
617	77
618	574
618	616
618	668
618	683
618	291
618	116
619	439
619	64
619	376
619	427
620	262
620	579
620	543
620	364
621	467
621	381
621	121
621	630
621	406
622	654
622	537
622	248
622	253
622	269
623	633
623	477
623	99
623	574
623	321
623	620
624	554
624	84
624	511
624	660
625	370
625	439
625	634
625	632
625	493
625	696
625	64
625	584
625	689
626	527
626	450
626	671
627	409
627	511
627	84
627	396
627	627
628	392
628	377
628	528
628	541
628	388
628	625
628	681
628	545
628	223
629	664
629	527
629	667
629	287
629	671
629	62
630	92
630	334
630	538
630	119
631	629
631	475
631	78
631	299
631	405
631	458
631	596
631	662
632	599
632	628
632	132
632	507
632	400
633	399
633	231
633	642
634	74
634	687
634	522
634	115
634	635
634	215
634	598
635	400
635	636
635	298
635	355
635	552
635	438
636	674
636	494
636	347
636	344
636	222
636	56
637	599
637	340
637	591
637	402
637	182
638	279
638	82
638	111
638	250
638	576
638	83
638	192
639	53
639	654
639	664
640	474
640	83
640	514
640	77
640	362
641	674
641	125
641	218
641	453
642	357
642	96
642	230
643	608
643	381
643	685
643	644
643	467
643	547
643	187
644	547
644	533
644	264
644	141
645	651
645	531
645	405
645	624
645	272
645	332
646	249
646	439
646	271
647	92
647	207
648	313
648	547
648	542
649	280
649	321
649	225
649	121
649	547
650	275
650	274
650	160
650	202
650	526
650	420
650	223
650	528
651	307
651	580
651	693
651	77
651	519
652	509
652	659
652	266
652	386
652	192
652	455
653	466
653	131
653	227
653	588
654	564
654	106
654	219
654	237
655	561
655	472
655	112
656	693
656	400
656	580
656	126
657	496
657	515
657	139
657	580
657	522
657	306
658	159
658	661
659	139
659	361
659	195
659	607
659	632
660	285
660	150
660	365
660	272
660	311
660	192
660	503
661	392
661	371
661	448
661	472
661	273
662	432
662	645
662	275
662	697
663	92
663	267
663	188
663	509
663	631
664	531
664	651
664	197
664	306
664	539
664	332
665	212
665	435
665	279
665	642
665	414
666	332
666	539
666	372
666	588
666	273
667	350
667	445
667	460
668	653
668	162
668	624
668	140
669	210
669	176
669	106
669	614
669	608
670	595
670	166
670	676
670	642
671	106
671	438
671	412
672	598
672	74
672	555
672	399
672	550
672	512
673	143
673	285
673	406
673	121
673	280
674	403
674	416
674	92
674	380
675	145
675	430
675	503
675	270
675	448
675	150
675	678
675	117
675	371
676	480
676	82
676	639
676	250
676	563
676	300
677	667
677	671
677	204
678	674
678	80
678	453
678	125
679	361
679	547
679	330
680	115
680	423
680	78
680	555
680	556
680	522
680	512
680	72
681	450
681	242
681	664
681	614
682	544
682	192
682	269
682	669
683	338
683	283
683	605
683	617
683	383
684	115
684	179
685	511
685	421
685	409
685	210
685	478
685	594
685	617
686	563
686	300
686	55
686	82
686	483
686	326
686	111
686	584
686	480
687	430
687	448
687	520
687	99
688	667
688	348
688	614
688	287
688	450
689	572
689	255
689	217
689	124
689	325
690	483
690	663
690	564
690	561
690	129
690	216
691	624
691	197
691	174
691	466
691	651
691	395
691	350
691	140
692	370
692	376
692	105
692	639
692	483
693	139
693	160
693	275
693	541
693	392
693	485
694	138
694	186
695	627
695	75
695	660
695	409
695	665
695	84
695	594
695	421
696	87
696	417
696	127
696	350
696	76
696	445
697	472
697	288
698	330
698	699
698	221
698	456
698	428
699	193
699	261
699	208
699	62
699	657
699	407
700	564
700	591
700	288
701	663
701	632
701	370
701	237
701	557
702	684
702	373
703	636
703	128
703	652
703	545
703	201
703	566
703	191
703	190
704	116
704	615
704	528
705	326
705	675
705	207
705	568
705	118
705	386
705	217
706	70
706	285
706	225
706	630
706	121
707	523
707	674
707	344
707	80
708	286
708	614
709	301
709	248
709	83
709	689
709	461
709	237
710	61
710	94
710	90
711	522
711	177
711	399
712	154
712	592
712	367
712	242
713	482
713	368
714	255
714	344
714	509
714	192
714	568
714	615
715	378
715	590
715	488
716	429
716	216
716	105
717	348
717	538
718	332
718	521
718	362
718	379
719	429
719	504
719	237
719	357
720	555
720	231
720	74
721	623
721	69
721	682
721	381
722	472
722	106
722	439
722	105
722	696
722	504
722	493
722	370
723	207
723	255
723	344
723	426
723	99
724	59
724	53
724	533
724	450
724	592
725	485
725	377
725	526
725	420
725	528
725	415
725	223
726	474
726	498
726	353
726	339
727	106
727	663
727	335
727	429
727	98
728	378
728	658
728	119
728	252
728	555
729	599
729	362
729	693
729	150
729	77
730	216
730	180
730	487
731	382
731	379
732	367
732	667
732	314
732	148
732	657
733	564
733	584
733	106
733	357
733	557
734	449
734	113
734	614
734	228
734	142
734	314
735	653
735	648
735	680
735	89
735	105
735	447
736	156
736	693
736	151
736	580
736	362
737	83
737	462
737	304
737	300
737	82
737	563
738	345
738	377
739	304
739	207
739	326
739	448
739	284
740	344
740	568
741	620
741	574
741	99
741	477
742	252
742	143
742	686
742	321
743	448
743	585
743	229
743	192
743	509
744	273
744	539
744	306
745	462
745	117
745	496
745	197
745	395
746	549
746	487
746	70
746	644
747	539
747	93
747	372
747	582
747	350
748	628
748	400
748	88
748	507
748	150
748	519
749	491
749	139
749	160
749	589
750	259
750	665
750	659
750	660
750	698
751	307
751	291
751	116
751	693
751	474
751	302
751	580
752	579
752	334
752	538
752	402
752	519
753	588
753	653
753	372
753	332
754	53
754	59
754	247
754	348
754	154
754	242
754	208
755	629
755	311
755	314
756	237
756	639
756	557
756	663
756	376
757	633
757	600
757	457
757	620
757	613
758	602
758	509
758	160
758	162
758	189
759	503
759	678
759	392
759	311
759	132
760	284
760	458
760	229
760	255
761	673
761	486
761	653
761	227
761	539
761	496
761	273
762	335
762	591
762	564
762	129
762	125
763	426
763	255
763	118
763	229
764	111
764	129
765	106
765	636
765	673
765	428
765	518
766	449
766	554
766	646
766	409
766	665
767	400
767	120
767	601
767	628
767	211
767	355
768	662
768	75
768	605
769	149
769	376
769	356
769	538
769	560
769	406
769	157
769	386
770	192
770	639
770	268
770	576
770	584
770	83
770	304
770	563
771	675
771	386
771	192
771	615
771	207
771	509
771	118
771	266
772	674
772	610
772	107
772	275
772	647
773	484
773	263
773	89
774	248
774	462
774	624
774	93
774	174
774	395
775	99
775	326
775	284
775	520
775	255
776	379
776	694
776	542
776	185
776	459
777	83
777	116
777	628
777	514
778	155
778	564
778	536
778	105
779	197
779	372
780	614
780	441
780	533
780	146
781	54
781	518
781	176
781	210
782	529
782	421
782	511
782	396
783	474
783	514
783	132
783	291
783	116
784	592
784	135
784	247
784	204
784	59
784	671
784	317
785	600
785	338
785	583
785	454
785	495
786	381
786	682
786	180
786	352
786	321
786	70
786	623
786	608
787	94
787	308
787	339
787	502
788	692
788	132
788	448
789	177
789	380
789	495
789	555
789	173
789	509
789	188
789	140
790	157
790	312
790	352
790	663
791	192
791	365
791	270
791	392
791	273
792	506
792	388
792	538
792	182
793	171
793	431
793	410
794	486
794	421
794	344
794	666
795	635
795	435
795	231
795	74
795	550
795	687
796	146
796	533
796	264
796	158
796	632
797	534
797	510
797	508
797	616
797	627
797	401
798	646
798	662
798	265
798	75
798	338
798	440
798	210
799	186
799	316
799	304
799	295
799	618
799	640
800	450
800	690
800	552
800	590
801	585
801	659
801	430
801	568
801	326
801	217
802	642
802	74
803	331
803	210
803	421
803	84
804	569
804	436
804	187
804	211
804	575
804	484
805	302
805	443
805	628
805	514
806	108
806	649
806	458
806	677
807	69
807	313
807	64
807	308
807	420
808	202
808	325
808	681
808	491
808	85
809	78
809	556
809	687
809	294
809	670
809	633
809	212
809	522
810	225
810	424
810	138
810	608
810	551
811	458
811	386
811	344
811	217
811	694
812	548
812	499
812	225
813	204
813	148
813	450
813	317
814	278
814	490
814	594
814	248
814	236
814	395
814	206
815	539
815	272
815	395
815	197
815	93
816	256
816	414
816	433
816	129
816	267
817	224
817	318
817	57
817	421
817	693
817	205
817	370
817	539
817	316
818	435
818	313
818	294
818	642
819	402
819	579
819	378
819	431
819	315
819	519
820	624
820	664
820	73
820	599
820	324
821	226
821	541
821	160
821	388
821	528
822	588
822	306
822	466
823	292
823	283
823	186
823	330
823	505
824	382
824	595
824	344
824	642
824	351
824	524
824	345
824	166
825	202
825	388
825	622
825	420
825	139
825	160
825	226
825	164
825	85
826	258
826	350
826	87
826	122
826	445
827	204
827	62
828	621
828	108
828	530
828	163
829	585
829	520
829	229
829	304
829	284
830	173
830	511
830	627
831	579
831	142
831	196
831	544
832	366
832	601
832	379
832	684
833	362
833	133
833	628
834	213
834	339
835	409
835	605
835	660
835	331
835	646
835	511
835	594
836	313
836	633
836	212
836	279
836	115
837	410
837	252
837	144
837	119
837	538
838	555
838	556
838	670
838	423
839	271
839	264
839	193
839	561
839	97
839	152
839	441
840	549
840	685
840	547
840	648
840	330
841	447
841	274
841	477
841	618
841	263
842	335
842	237
842	427
842	564
843	201
843	455
843	650
843	668
843	212
843	517
843	566
844	348
844	610
844	388
844	402
844	506
844	198
844	432
844	363
844	444
845	93
845	306
845	542
846	212
846	668
846	566
846	612
846	682
846	67
847	116
847	150
847	83
847	474
847	77
847	618
847	362
847	291
847	151
848	397
848	70
848	330
848	630
848	186
848	551
849	251
849	256
849	432
849	408
850	88
850	66
850	208
850	343
850	632
851	657
851	441
851	276
852	237
852	287
852	654
852	76
852	257
853	493
853	124
853	696
853	105
853	561
853	639
853	504
853	472
854	70
854	467
855	541
855	526
855	394
855	345
855	545
855	223
855	457
856	325
856	457
856	377
856	205
856	415
857	111
857	357
857	632
857	376
857	689
857	490
857	439
857	557
857	64
858	113
858	389
858	181
858	379
858	590
858	110
859	453
859	316
860	186
860	630
860	280
860	138
861	255
861	326
861	229
861	448
861	675
861	344
861	520
861	615
862	337
862	235
862	572
862	453
862	208
863	274
863	205
863	223
863	160
863	275
863	388
863	485
863	681
864	296
864	618
864	599
864	519
864	277
864	156
865	566
865	652
865	201
865	128
865	191
866	650
866	67
866	517
866	455
866	190
867	210
867	673
867	437
867	266
868	438
868	120
869	344
869	377
869	112
869	175
869	85
870	370
870	546
870	592
870	77
871	555
871	99
871	477
871	462
871	613
872	352
872	177
872	183
872	198
873	584
873	564
873	439
873	357
873	427
874	127
874	417
874	235
874	258
874	76
874	678
874	624
874	227
875	350
875	448
875	692
875	150
875	270
876	125
876	557
876	429
877	513
877	78
877	414
877	104
877	641
878	561
878	376
878	237
878	639
879	373
879	154
879	414
879	267
880	129
880	536
880	439
880	124
881	637
881	627
881	331
882	130
882	59
882	590
882	113
882	310
882	666
883	83
883	474
883	628
883	618
883	296
883	243
883	599
883	400
883	514
884	551
884	547
884	121
884	187
885	214
885	571
885	129
885	267
885	154
885	334
885	599
886	653
886	478
886	407
886	669
886	60
886	286
887	346
887	283
887	330
887	221
887	638
887	186
887	640
887	428
888	378
888	538
888	171
888	410
888	494
888	519
889	139
889	485
889	388
889	202
889	394
890	304
890	520
890	207
890	659
890	626
890	99
891	381
891	187
891	686
891	352
891	549
891	100
892	92
892	448
892	255
892	256
892	344
892	217
893	162
893	259
893	555
893	509
894	402
894	423
894	404
894	635
894	500
894	574
894	599
894	621
894	131
895	472
895	561
895	64
895	112
895	564
895	237
895	591
896	486
896	539
896	405
896	174
897	261
897	345
897	385
898	423
898	463
898	598
898	74
898	123
899	377
899	420
899	223
899	528
899	392
899	394
899	202
900	276
900	341
900	200
900	505
900	636
901	360
901	483
902	223
902	420
902	388
902	622
903	372
903	496
903	140
903	651
903	656
903	162
903	405
904	424
904	644
904	685
905	428
905	218
905	186
905	240
905	456
905	567
905	292
905	699
906	53
906	411
906	295
907	126
907	474
907	507
907	340
908	312
908	478
908	480
908	84
908	383
908	210
908	409
909	335
909	424
910	680
910	109
910	89
911	576
911	279
911	326
911	462
911	584
912	287
912	654
912	511
912	207
913	401
913	291
914	350
914	678
914	127
914	624
914	258
915	464
915	90
915	179
916	212
916	687
916	279
917	315
917	334
917	658
918	244
918	468
918	90
918	536
918	61
918	94
918	115
919	662
919	597
920	586
920	325
920	436
920	187
920	374
921	148
921	79
921	218
922	205
922	202
922	622
922	485
922	491
922	415
923	365
923	430
923	117
923	392
923	357
923	503
923	342
923	132
924	656
924	372
924	673
924	272
924	227
924	117
925	126
925	406
925	506
925	198
925	538
926	485
926	681
926	205
926	526
927	85
927	139
927	541
927	223
927	325
928	666
928	59
928	389
928	690
929	423
929	670
930	335
930	125
930	689
930	216
930	79
931	121
931	686
931	69
931	211
931	330
931	390
932	361
932	565
932	295
932	335
932	411
933	52
933	395
933	617
933	167
933	168
933	625
934	696
934	438
934	400
934	470
935	480
935	639
936	511
936	287
937	276
937	667
937	62
938	70
938	225
938	143
938	465
938	186
938	211
939	88
939	474
939	291
939	507
940	527
940	148
940	179
940	657
941	330
941	304
941	640
942	470
942	600
942	211
942	400
942	540
942	355
943	363
943	277
943	126
943	302
943	340
944	684
944	324
944	267
944	664
944	262
945	556
945	279
945	687
945	513
945	635
945	104
946	488
946	151
947	648
947	469
947	467
947	547
947	390
948	644
948	252
948	330
948	551
948	100
949	211
949	217
949	374
949	572
950	132
950	150
950	302
950	126
950	243
951	344
951	135
951	486
951	339
951	112
952	275
952	658
953	314
953	367
953	146
953	533
953	242
953	348
954	614
954	60
954	276
954	664
955	99
955	631
955	574
955	439
956	424
956	469
956	648
956	623
956	583
956	121
956	465
957	580
957	507
957	349
957	126
957	83
957	519
958	237
958	689
958	370
958	557
958	64
958	129
959	475
959	414
959	435
959	687
959	633
960	216
960	376
960	564
961	663
961	125
962	458
962	426
962	344
962	448
962	568
963	514
963	156
963	618
963	349
963	519
963	363
964	53
964	469
964	556
965	304
965	585
965	229
965	426
966	312
966	554
966	449
966	338
966	73
967	648
967	285
967	424
968	261
968	60
968	441
968	385
968	407
968	450
968	664
968	543
969	288
969	64
969	124
970	74
970	72
970	550
970	279
970	115
971	347
971	55
971	82
971	207
971	360
971	584
971	483
971	304
972	139
972	581
972	377
972	545
972	485
972	164
973	634
973	370
973	112
974	462
974	350
974	395
974	673
974	486
975	77
975	592
975	256
976	350
976	81
977	450
977	488
977	666
977	581
977	59
977	590
977	197
977	552
978	364
978	677
978	520
979	212
979	566
979	67
980	271
980	155
980	691
980	192
981	475
981	393
981	74
981	414
981	399
982	119
982	519
982	144
982	658
983	625
983	164
983	392
983	205
983	202
983	415
984	693
984	507
984	88
984	443
984	302
984	618
984	151
985	582
985	657
985	592
985	619
985	318
986	540
986	636
987	508
987	317
987	90
988	173
988	695
989	555
989	72
989	177
989	556
989	279
989	212
990	340
990	400
990	151
990	693
990	116
990	507
991	344
991	384
991	85
991	599
991	486
992	357
992	106
992	216
992	490
992	564
992	219
992	105
993	162
993	495
993	177
993	245
993	189
993	259
993	188
994	628
994	88
994	132
994	243
994	307
994	580
994	519
994	363
994	362
995	287
995	664
995	148
996	428
996	172
996	203
996	608
997	223
997	693
997	135
997	175
997	85
998	129
998	124
998	493
998	357
999	673
999	608
999	106
999	266
999	54
999	220
999	452
1000	307
1000	696
1000	298
1000	211
1000	209
1001	521
1001	165
1002	235
1002	122
1002	678
1002	76
1003	435
1003	210
1003	172
1004	605
1004	480
1005	124
1005	230
1005	337
1005	569
1005	473
1005	274
1006	550
1006	512
1006	72
1007	178
1007	464
1007	62
1007	322
1007	90
1008	242
1008	599
1008	246
1008	182
1009	491
1009	420
1009	226
1009	345
1009	392
1009	85
1009	485
1010	284
1010	662
1010	531
1010	649
1010	526
1010	108
1010	405
1011	325
1011	528
1011	388
1011	160
1011	164
1012	558
1012	579
1012	614
1012	113
1012	323
1012	230
1012	196
1013	332
1013	93
1013	372
1013	624
1013	486
1013	651
1014	521
1014	696
1014	290
1014	134
1014	80
1015	552
1015	407
1015	389
1015	436
1016	649
1016	446
1016	163
1016	629
1016	447
1016	525
1017	628
1017	514
1018	477
1018	613
1018	633
1018	147
1018	620
1018	399
1018	393
1018	574
1019	87
1019	122
1019	678
1019	277
1019	557
1019	235
1019	227
1020	568
1020	311
1020	115
1020	357
1021	244
1021	514
1021	322
1021	94
1021	536
1021	468
1021	90
1022	269
1022	115
1022	163
1022	476
1022	192
1023	576
1023	584
1023	83
1023	347
1023	279
1023	300
1024	598
1024	72
1024	522
1024	475
1024	294
1024	550
1025	646
1025	654
1025	287
1026	174
1026	212
1026	201
1026	612
1027	625
1027	275
1027	415
1027	164
1027	377
1027	388
1027	457
1028	382
1028	633
1028	351
1028	595
1028	353
1028	524
1029	60
1029	608
1029	476
1029	587
1029	163
1029	535
1029	288
1029	204
1029	653
1030	362
1030	88
1030	349
1030	291
1031	60
1031	667
1031	348
1031	527
1032	334
1032	95
1032	158
1033	664
1033	684
1033	571
1033	214
1033	256
1033	433
1033	637
1034	252
1034	644
1034	381
1034	121
1034	138
1034	390
1035	302
1035	301
1035	238
1035	461
1035	269
1035	537
1035	76
1036	152
1036	319
1036	561
1037	578
1037	233
1037	482
1037	501
1037	368
1038	164
1038	377
1038	392
1038	485
1038	625
1038	545
1038	275
1039	326
1039	520
1040	648
1040	109
1040	391
1040	618
1040	263
1040	680
1040	491
1040	484
1041	242
1041	574
1041	423
1041	591
1041	621
1041	195
1042	663
1042	288
1043	116
1043	340
1043	400
1043	628
1043	307
1043	296
1043	243
1043	126
1044	593
1044	126
1044	183
1044	312
1044	538
1044	376
1045	675
1045	255
1045	386
1045	266
1045	585
1046	246
1046	423
1046	621
1046	170
1046	404
1046	500
1046	247
1047	583
1047	632
1047	334
1047	309
1047	264
1047	158
1047	454
1048	620
1048	554
1049	227
1049	486
1049	462
1049	395
1049	656
1050	430
1050	585
1050	615
1050	458
1050	284
1051	637
1051	512
1051	425
1051	571
1051	509
1051	129
1051	373
1051	631
1052	660
1052	65
1052	70
1052	617
1053	233
1053	501
1053	517
1053	482
1053	624
1053	192
1054	302
1054	76
1054	238
1054	237
1054	461
1055	696
1055	636
1055	355
1055	327
1055	552
1055	120
1056	443
1056	618
1056	534
1056	83
1056	400
1056	599
1057	382
1057	169
1057	336
1057	353
1057	633
1057	524
1057	345
1058	130
1058	690
1058	407
1058	181
1059	466
1059	81
1059	248
1059	272
1059	273
1059	395
1060	393
1060	631
1060	620
1060	99
1060	477
1060	613
1061	193
1061	654
1061	287
1061	572
1062	435
1062	393
1062	512
1062	215
1062	423
1063	555
1063	313
1063	556
1064	253
1064	287
1064	238
1065	215
1065	203
1065	428
1065	210
1065	180
1065	437
1065	598
1065	487
1065	518
1066	100
1066	321
1066	180
1066	121
1066	397
1066	623
1066	583
1067	592
1067	242
1067	179
1067	407
1068	78
1068	633
1068	598
1068	104
1069	272
1069	311
1069	692
1069	150
1069	371
1069	117
1070	550
1070	513
1070	399
1070	115
1070	598
1070	177
1071	510
1071	113
1071	357
1071	142
1071	629
1071	372
1071	485
1071	544
1072	651
1072	162
1072	486
1072	542
1072	673
1073	210
1073	662
1073	331
1073	484
1073	627
1074	409
1074	396
1074	511
1074	690
1075	184
1075	402
1075	697
1075	658
1075	647
1076	169
1076	524
1076	351
1076	353
1076	633
1077	417
1077	443
1077	87
1077	235
1077	227
1078	530
1078	525
1078	543
1078	649
1079	621
1079	195
1079	619
1079	429
1079	599
1079	242
1079	247
1079	642
1079	574
1080	693
1080	77
1080	156
1080	132
1081	85
1081	205
1081	622
1082	296
1082	60
1082	614
1083	370
1083	562
1083	224
1083	205
1083	582
1084	111
1084	376
1084	561
1084	632
1085	412
1085	192
1085	261
1085	482
1085	589
1086	374
1086	291
1086	116
1086	627
1087	500
1087	186
1087	316
1087	505
1087	428
1087	567
1087	330
1088	139
1088	625
1088	541
1088	415
1089	490
1089	297
1089	278
1089	248
1089	625
1089	659
1090	269
1090	442
1090	100
1090	275
1090	461
1091	395
1091	278
1091	52
1091	65
1091	206
1091	208
1092	76
1092	287
1092	689
1092	511
1092	248
1092	688
1093	440
1093	228
1094	215
1094	399
1094	231
1094	123
1094	513
1095	334
1095	533
1095	158
1095	547
1096	297
1096	65
1096	85
1096	259
1097	381
1097	527
1097	600
1097	613
1097	492
1097	674
1098	420
1098	547
1099	371
1099	350
1099	117
1099	342
1099	192
1099	270
1099	678
1100	105
1100	89
1101	212
1101	522
1101	104
1101	463
1101	598
1102	55
1102	347
1102	104
1102	576
1103	486
1103	258
1103	582
1103	174
1103	588
1103	131
1104	302
1104	362
1104	349
1104	116
1104	474
1105	350
1105	531
1105	332
1105	197
1106	653
1106	137
1106	274
1106	105
1106	391
1106	680
1106	89
1106	409
1106	109
1107	694
1107	284
1107	455
1107	266
1107	675
1107	615
1107	568
1107	304
1108	514
1108	302
1108	443
1108	519
1109	93
1109	536
1109	422
1109	62
1109	90
1109	514
1110	601
1110	631
1110	684
1110	358
1111	156
1111	453
1111	609
1111	436
1111	573
1111	161
1111	586
1112	258
1112	350
1112	273
1113	637
1113	265
1113	383
1113	73
1114	255
1114	325
1114	588
1114	187
1115	351
1115	336
1115	353
1115	166
1115	633
1115	492
1116	555
1116	315
1116	171
1117	561
1117	115
1117	90
1117	244
1117	536
1118	562
1118	421
1118	318
1118	370
1119	397
1119	168
1119	52
1120	285
1120	604
1120	583
1121	437
1121	172
1121	673
1122	622
1122	223
1122	625
1122	205
1122	164
1122	457
1123	474
1123	580
1123	693
1123	599
1123	362
1123	243
1123	519
1124	587
1124	608
1124	476
1124	544
1124	669
1124	118
1125	458
1125	426
1125	585
1125	255
1125	207
1126	584
1126	125
1126	663
1127	561
1127	536
1127	219
1127	429
1127	216
1127	634
1128	492
1128	382
1128	595
1128	336
1128	676
1128	524
1129	687
1129	414
1129	279
1129	104
1129	550
1129	642
1130	441
1130	614
1130	657
1130	317
1130	247
1130	59
1131	274
1131	572
1131	156
1131	217
1132	405
1132	93
1132	624
1132	651
1133	554
1133	440
1133	283
1133	480
1133	594
1133	75
1133	666
1134	474
1134	296
1134	534
1134	151
1135	92
1135	162
1135	243
1135	403
1135	555
1136	96
1136	550
1136	230
1136	323
1137	129
1137	483
1137	376
1137	237
1137	663
1137	439
1138	166
1138	351
1138	336
1138	642
1138	633
1139	543
1139	374
1139	276
1139	515
1139	76
1139	580
1140	505
1140	456
1141	500
1141	114
1141	295
1141	283
1141	346
1141	428
1141	304
1141	605
1142	590
1142	684
1142	282
1142	373
1142	512
1142	324
1143	406
1143	682
1143	390
1143	321
1143	121
1144	591
1144	246
1144	242
1144	642
1145	673
1145	462
1145	588
1145	539
1145	372
1146	244
1146	178
1146	468
1147	539
1147	582
1147	673
1147	486
1148	193
1148	664
1148	287
1148	441
1148	450
1148	261
1148	62
1149	538
1149	606
1149	560
1149	144
1149	406
1149	506
1149	463
1150	117
1150	405
1150	174
1150	588
1150	582
1151	179
1151	146
1151	671
1151	193
1152	544
1152	550
1152	614
1152	372
1152	311
1153	527
1153	276
1153	385
1153	179
1153	204
1153	242
1154	464
1154	115
1155	166
1155	344
1155	492
1155	353
1155	633
1155	345
1155	382
1155	336
1156	202
1156	457
1156	275
1156	205
1157	262
1157	662
1158	117
1158	150
1158	371
1158	678
1158	273
1158	132
1159	672
1159	651
1159	673
1159	258
1160	594
1160	627
1160	396
1160	312
1160	605
1161	96
1161	510
1161	372
1161	568
1162	539
1162	174
1162	466
1162	248
1163	390
1163	630
1163	424
1163	685
1163	648
1163	225
1164	512
1164	641
1164	635
1164	642
1164	463
1164	78
1165	374
1165	683
1165	291
1165	615
1166	344
1166	166
1166	382
1166	642
1167	405
1167	162
1167	653
1167	306
1167	673
1168	660
1168	500
1168	193
1168	402
1168	585
1168	642
1168	574
1168	591
1169	650
1169	668
1169	553
1169	545
1169	191
1169	67
1169	636
1169	455
1170	219
1170	499
1170	256
1171	689
1171	112
1171	429
1171	335
1171	536
1171	639
1171	370
1171	634
1172	568
1172	118
1172	448
1172	99
1172	694
1172	92
1172	217
1173	116
1173	374
1173	671
1173	574
1173	291
1173	597
1173	528
1174	511
1174	207
1174	123
1174	654
1174	688
1174	689
1174	302
1175	205
1175	562
1175	318
1175	316
1176	156
1176	132
1176	243
1176	302
1176	349
1176	151
1177	297
1177	274
1178	187
1178	406
1178	321
1178	330
1178	143
1178	252
1178	682
1179	615
1179	374
1179	508
1180	274
1180	305
1180	226
1180	661
1180	319
1180	439
1181	73
1181	509
1181	590
1181	154
1181	256
1182	611
1182	228
1182	614
1182	314
1183	127
1183	258
1183	460
1183	350
1183	443
1183	76
1183	235
1183	87
1184	462
1184	76
1184	439
1184	477
1184	492
1184	99
1184	631
1185	256
1185	675
1185	217
1185	520
1185	92
1185	509
1185	344
1185	458
1185	326
1186	57
1186	370
1186	693
1187	99
1187	675
1187	207
1188	618
1188	116
1188	443
1188	307
1188	340
1188	693
1189	435
1189	475
1189	104
1189	78
1189	115
1189	556
1189	279
1189	633
1189	313
1190	499
1190	413
1190	219
1191	622
1191	392
1191	202
1191	274
1192	536
1192	490
1192	439
1192	112
1192	357
1192	125
1193	219
1193	408
1193	251
1193	447
1193	225
1193	260
1193	432
1194	279
1194	83
1194	639
1195	341
1195	543
1195	375
1195	76
1195	632
1195	621
1195	71
1196	100
1196	465
1196	623
1196	469
1196	69
1196	211
1197	396
1197	449
1197	75
1197	84
1198	208
1198	274
1198	217
1198	161
1198	588
1198	453
1198	427
1199	188
1199	418
1199	160
1199	92
1199	403
1199	173
1200	313
1200	633
1200	339
1200	502
1200	587
1200	615
1200	94
1200	547
1201	618
1201	263
1201	137
1201	71
1201	484
1201	477
1202	154
1202	60
1202	53
1203	665
1203	627
1203	338
1203	449
1203	478
1203	265
1204	506
1204	182
1204	184
1205	76
1205	460
1205	258
1205	443
1206	67
1206	102
1206	468
1206	652
1206	670
1207	606
1207	506
1207	202
1207	415
1207	593
1207	126
1207	456
1208	672
1208	496
1208	273
1208	81
1208	372
1208	332
1208	486
1209	422
1209	464
1209	62
1209	94
1210	434
1210	101
1210	693
1210	58
1210	255
1210	175
1211	149
1211	177
1211	606
1211	630
1211	456
1212	477
1212	409
1212	274
1212	71
1213	566
1213	468
1213	102
1213	455
1214	266
1214	430
1215	198
1215	560
1215	356
1216	648
1216	100
1216	70
1216	682
1217	458
1217	229
1217	615
1217	455
1218	608
1218	143
1218	547
1218	648
1219	115
1219	118
1219	608
1219	138
1219	192
1219	587
1219	120
1220	414
1220	687
1220	641
1220	475
1221	625
1221	275
1221	377
1221	85
1222	588
1222	350
1222	174
1222	405
1223	74
1223	598
1223	633
1223	513
1223	423
1223	104
1223	393
1224	467
1224	424
1224	187
1224	630
1224	361
1225	663
1225	124
1225	237
1225	696
1225	483
1226	543
1226	458
1226	405
1226	163
1226	530
1227	207
1227	304
1227	284
1227	99
1227	659
1228	396
1228	152
1228	439
1228	193
1228	411
1228	153
1228	205
1229	686
1229	573
1230	102
1230	72
1230	174
1230	650
1230	668
1230	455
1231	399
1231	597
1231	670
1231	90
1231	508
1231	103
1231	76
1232	393
1232	72
1232	513
1232	414
1232	435
1232	642
1233	590
1233	666
1233	581
1233	488
1233	181
1233	379
1233	442
1233	130
1234	458
1234	304
1234	585
1234	455
1235	407
1235	181
1235	450
1236	388
1236	164
1236	226
1236	223
1236	541
1236	394
1236	85
1236	274
1237	568
1237	344
1237	694
1237	430
1237	284
1237	386
1237	229
1238	512
1238	513
1238	642
1238	423
1238	294
1239	526
1239	202
1239	223
1239	545
1239	377
1239	415
1239	541
1240	383
1240	637
1240	597
1240	312
1240	173
1240	265
1241	673
1241	531
1241	227
1242	682
1242	547
1242	352
1242	180
1242	225
1242	685
1242	406
1243	648
1243	352
1243	623
1243	549
1243	467
1243	686
1244	138
1244	280
1244	465
1244	604
1244	121
1245	509
1245	626
1245	520
1245	217
1246	526
1246	485
1246	388
1246	394
1246	420
1247	534
1247	243
1247	88
1247	133
1247	474
1247	340
1248	385
1248	146
1248	407
1248	533
1248	53
1248	348
1249	592
1249	315
1249	555
1249	231
1249	431
1250	673
1250	180
1250	172
1250	289
1250	518
1251	620
1251	660
1251	478
1252	349
1252	291
1252	534
1252	116
1252	151
1253	272
1253	678
1253	472
1253	392
1254	651
1254	140
1254	672
1254	197
1255	549
1255	225
1255	187
1255	648
1255	644
1255	211
1256	672
1256	395
1256	656
1256	539
1256	350
1256	140
1256	542
1256	93
1257	447
1257	653
1257	274
1257	648
1257	491
1257	71
1257	484
1257	477
1257	105
1258	435
1258	522
1258	423
1258	294
1258	215
1258	598
1259	64
1259	591
1259	155
1259	357
1260	628
1260	88
1260	443
1260	277
1260	291
1261	330
1261	682
1261	467
1262	543
1262	242
1263	330
1263	292
1263	315
1263	346
1264	177
1264	202
1264	376
1265	618
1265	126
1265	151
1265	77
1265	534
1266	555
1266	519
1266	334
1267	54
1267	81
1267	435
1267	216
1267	266
1268	443
1268	349
1268	243
1268	363
1268	296
1268	514
1269	205
1269	173
1269	177
1270	623
1270	685
1270	186
1271	128
1271	468
1271	650
1271	190
1271	455
1271	566
1271	612
1272	276
1272	657
1272	543
1272	53
1272	572
1272	667
1272	314
1273	117
1273	248
1273	542
1273	197
1274	529
1274	662
1274	383
1274	637
1275	198
1275	630
1275	126
1276	115
1276	633
1276	313
1276	399
1276	435
1277	656
1277	401
1277	668
1277	159
1277	615
1277	116
1277	291
1278	506
1278	541
1278	610
1278	383
1278	348
1278	444
1279	465
1279	390
1279	648
1279	424
1279	467
1279	187
1279	285
1280	690
1280	449
1280	75
1281	258
1281	76
1281	443
1281	350
1281	277
1282	533
1282	654
1282	242
1282	148
1282	450
1283	633
1283	351
1283	642
1283	344
1284	351
1284	345
1284	595
1284	353
1284	492
1284	166
1285	654
1285	495
1285	95
1286	138
1286	390
1286	547
1286	397
1286	469
1286	685
1287	52
1287	617
1287	372
1287	679
1288	219
1288	370
1288	591
1288	561
1288	79
1288	98
1288	483
1288	112
1289	372
1289	582
1289	332
1289	306
1289	227
1290	117
1290	542
1290	496
1290	651
1291	550
1291	55
1291	115
1291	471
1292	580
1292	349
1292	618
1292	156
1292	474
1293	272
1293	392
1293	391
1294	372
1294	539
1294	131
1294	306
1294	273
1295	272
1295	197
1295	466
1295	496
1295	588
1295	542
1296	278
1296	213
1296	379
1296	459
1296	232
1296	420
1296	615
1296	69
1296	55
1297	101
1297	421
1297	693
1297	565
1297	344
1297	135
1298	162
1298	466
1299	189
1299	380
1299	595
1299	243
1300	663
1300	632
1300	106
1300	155
1301	90
1301	508
1301	335
1302	544
1302	311
1302	614
1302	228
1302	314
1302	510
1302	629
1302	449
1303	70
1303	604
1303	186
1303	397
1303	143
1303	623
1304	89
1304	618
1304	263
1304	491
1304	477
1304	653
1304	109
1304	648
1305	617
1305	660
1305	662
1305	173
1305	265
1305	637
1306	468
1306	322
1306	244
1306	561
1306	133
1307	232
1307	164
1307	379
1307	278
1307	213
1308	205
1308	316
1308	333
1308	546
1308	549
1308	126
1309	256
1309	568
1309	217
1309	458
1310	533
1310	527
1310	204
1310	367
1311	660
1311	404
1311	246
1312	301
1312	248
1312	123
1312	257
1313	550
1313	556
1313	231
1313	641
1313	633
1313	635
1313	393
1313	687
1313	414
1314	457
1314	625
1314	226
1314	388
1314	491
1314	202
1314	581
1314	160
1315	68
1315	152
1315	159
1315	441
1316	335
1316	663
1316	429
1317	383
1317	484
1317	511
1318	592
1318	654
1318	247
1318	441
1318	59
1318	204
1318	62
1318	135
1319	648
1319	612
1319	100
1319	390
1319	583
1319	487
1319	211
1319	397
1319	465
1320	545
1320	457
1320	325
1320	139
1320	202
1320	223
1320	625
1321	320
1321	374
1321	293
1322	497
1322	295
1322	686
1322	570
1322	573
1323	235
1323	453
1323	484
1323	255
1323	575
1324	662
1324	253
1324	421
1324	73
1324	511
1325	617
1325	322
1325	478
1325	331
1326	203
1326	220
1326	435
1326	106
1326	487
1326	687
1326	598
1327	231
1327	670
1327	104
1327	72
1328	688
1328	287
1328	238
1328	76
1329	659
1329	458
1329	284
1329	344
1329	426
1330	303
1330	564
1330	213
1330	476
1330	361
1330	385
1330	624
1331	305
1331	152
1331	319
1331	193
1332	541
1332	622
1332	681
1332	223
1332	275
1332	202
1333	428
1333	687
1334	447
1334	109
1334	263
1334	274
1334	653
1334	89
1334	137
1334	680
1334	484
1335	572
1335	385
1335	533
1335	367
1335	242
1336	77
1336	340
1336	534
1337	115
1337	556
1337	463
1337	399
1337	423
1337	550
1337	522
1338	144
1338	171
1338	92
1338	579
1338	658
1338	119
1338	538
1338	252
1338	477
1339	693
1339	297
1339	338
1339	654
1339	95
1339	146
1339	274
1340	588
1340	235
1340	156
1340	427
1341	148
1341	315
1341	643
1341	667
1342	205
1342	561
1343	209
1343	600
1343	540
1343	628
1343	307
1344	625
1344	466
1344	168
1344	121
1344	594
1345	149
1345	198
1345	202
1345	312
1345	126
1346	696
1346	335
1346	493
1346	490
1346	557
1347	575
1347	609
1347	473
1347	390
1347	255
1347	217
1347	436
1348	657
1348	546
1349	632
1349	639
1349	376
1349	591
1349	288
1350	389
1350	553
1350	190
1350	489
1351	312
1351	660
1351	478
1352	603
1352	396
1352	69
1352	661
1352	305
1353	135
1353	693
1353	339
1353	229
1354	592
1354	582
1354	657
1354	519
1354	205
1355	367
1355	407
1355	441
1355	247
1356	484
1356	210
1356	662
1356	84
1356	627
1357	696
1357	636
1357	209
1357	298
1357	438
1357	307
1358	391
1358	409
1358	71
1358	263
1358	484
1358	653
1358	648
1359	668
1359	335
1359	656
1359	159
1359	472
1360	275
1360	238
1360	253
1360	123
1360	461
1361	334
1361	373
1361	129
1361	599
1361	324
1361	282
1361	262
1362	296
1362	291
1363	132
1363	126
1363	362
1363	349
1364	392
1364	420
1364	223
1364	226
1365	84
1365	478
1365	511
1365	597
1366	138
1366	372
1366	558
1366	471
1367	364
1367	343
1367	405
1367	677
1367	349
1368	182
1368	194
1369	440
1369	253
1370	284
1370	531
1370	108
1371	628
1371	132
1371	519
1371	693
1371	534
1371	83
1371	507
1371	340
1371	443
1372	317
1372	242
1372	53
1372	314
1373	472
1373	503
1373	117
1374	111
1374	106
1374	370
1374	79
1374	564
1375	441
1375	179
1375	59
1375	135
1375	62
1375	407
1375	107
1375	247
1376	288
1376	370
1376	129
1376	561
1376	490
1377	681
1377	589
1377	528
1377	226
1377	394
1377	202
1377	625
1377	622
1377	581
1378	306
1378	496
1378	673
1379	242
1379	179
1379	107
1379	154
1379	204
1379	527
1379	450
1379	543
1379	146
1380	185
1380	69
1380	213
1380	420
1380	694
1380	55
1381	536
1381	286
1382	279
1382	598
1382	556
1382	399
1382	72
1382	475
1382	555
1382	670
1383	696
1383	298
1383	400
1383	540
1383	552
1384	116
1384	443
1384	307
1384	340
1384	88
1385	240
1385	605
1385	346
1385	292
1385	456
1385	304
1385	315
1386	92
1386	118
1386	284
1386	626
1387	646
1387	478
1387	554
1387	594
1387	666
1387	312
1387	665
1387	690
1388	202
1388	528
1388	394
1388	388
1388	589
1388	377
1389	319
1389	97
1389	305
1390	531
1390	526
1390	520
1390	649
1390	579
1390	447
1390	525
1391	538
1391	592
1391	494
1391	477
1391	402
1392	568
1392	544
1393	296
1393	514
1393	618
1393	132
1394	564
1394	105
1394	490
1394	536
1394	557
1394	584
1395	657
1395	205
1395	421
1395	224
1395	619
1395	316
1395	546
1396	633
1396	294
1396	635
1396	215
1396	475
1397	448
1397	284
1397	430
1398	225
1398	381
1398	465
1399	622
1399	541
1399	589
1399	526
1399	139
1400	488
1400	450
1400	436
1400	590
1401	116
1401	399
1401	615
1401	90
1401	317
1402	207
1402	104
1402	639
1402	82
1402	347
1402	192
1402	576
1402	279
1403	169
1403	336
1403	642
1403	524
1403	633
1404	243
1404	150
1404	133
1404	443
1404	156
1405	410
1405	592
1405	477
1405	231
1405	144
1405	119
1406	227
1406	306
1406	542
1406	624
1407	575
1407	473
1407	493
1407	374
1408	399
1408	555
1408	687
1408	215
1408	294
1409	654
1409	287
1409	53
1409	667
1409	193
1409	664
1409	204
1410	664
1410	631
1410	73
1410	414
1410	599
1410	334
1410	267
1410	433
1411	678
1411	277
1411	76
1411	122
1411	510
1412	167
1412	665
1412	208
1412	206
1412	168
1412	698
1412	395
1412	65
1412	51
1413	526
1413	202
1413	581
1413	681
1413	226
1414	188
1414	267
1414	631
1414	695
1415	351
1415	492
1415	353
1415	336
1415	382
1415	642
1416	279
1416	74
1416	423
1416	550
1416	72
1417	647
1417	444
1417	198
1417	658
1417	651
1417	272
1417	506
1418	393
1418	435
1418	598
1418	313
1418	279
1418	635
1419	458
1419	304
1419	568
1419	448
1419	386
1420	411
1420	183
1420	556
1420	469
1420	295
1421	492
1421	524
1421	633
1421	336
1421	382
1422	94
1422	91
1422	379
1422	55
1423	447
1423	680
1423	89
1423	484
1424	219
1424	357
1424	370
1424	106
1425	325
1425	569
1425	187
1426	80
1426	134
1426	366
1426	362
1426	654
1426	332
1427	696
1427	400
1427	552
1427	691
1427	601
1428	225
1428	251
1428	548
1428	408
1428	479
1429	331
1429	665
1430	350
1430	531
1430	656
1430	395
1430	81
1430	197
1430	486
1430	624
1430	248
1431	545
1431	652
1431	128
1431	212
1432	452
1432	557
1432	460
1432	443
1432	87
1433	429
1433	124
1433	376
1433	288
1433	357
1434	177
1434	212
1434	633
1434	104
1434	115
1434	463
1434	78
1434	642
1435	423
1435	246
1435	195
1436	287
1436	314
1437	423
1437	123
1437	513
1437	177
1437	635
1437	512
1437	279
1437	633
1438	486
1438	332
1438	248
1438	140
1438	162
1439	443
1439	151
1439	307
1439	77
1439	243
1439	474
1439	519
1439	599
1440	107
1440	697
1440	272
1440	658
1440	198
1440	645
1441	439
1441	504
1441	288
1442	501
1442	189
1442	140
1442	695
1443	631
1443	373
1443	577
1443	425
1443	73
1443	590
1443	282
1444	640
1444	186
1444	316
1444	500
1445	468
1445	190
1445	668
1445	682
1445	128
1446	134
1446	379
1446	290
1446	382
1446	521
1446	504
1446	332
1446	650
1447	92
1447	344
1447	284
1448	543
1448	592
1448	664
1448	614
1448	59
1448	193
1449	399
1449	115
1449	393
1449	414
1449	423
1449	633
1449	212
1450	326
1450	694
1451	217
1451	615
1451	509
1451	344
1451	675
1451	458
1452	74
1452	279
1452	633
1452	642
1452	522
1452	641
1453	614
1453	478
1453	136
1454	641
1454	199
1454	587
1455	478
1455	620
1455	322
1455	253
1456	540
1456	636
1456	355
1457	164
1457	275
1457	205
1457	223
1458	341
1458	195
1458	496
1458	76
1459	514
1459	179
1459	94
1460	126
1460	421
1460	693
1460	205
1460	619
1461	95
1461	338
1461	583
1461	454
1462	659
1462	81
1462	397
1463	78
1463	74
1463	641
1463	72
1463	393
1463	670
1464	117
1464	197
1464	405
1464	174
1464	350
1464	258
1465	386
1465	455
1465	615
1465	675
1465	585
1466	361
1466	280
1466	467
1467	671
1467	615
1467	90
1467	401
1467	335
1467	574
1467	539
1468	672
1468	479
1468	256
1468	219
1468	548
1469	275
1469	526
1469	528
1469	85
1469	622
1469	226
1470	618
1470	400
1470	628
1470	534
1471	345
1471	164
1471	622
1472	665
1472	594
1472	690
1472	331
1473	180
1473	390
1473	397
1473	612
1473	143
1474	231
1474	512
1474	670
1474	177
1475	118
1475	386
1475	326
1475	99
1476	214
1476	129
1476	324
1476	414
1477	415
1477	226
1477	545
1477	541
1477	526
1477	485
1478	330
1478	280
1478	397
1478	70
1478	623
1479	265
1479	535
1479	653
1479	204
1479	476
1479	269
1479	163
1480	208
1480	148
1480	614
1480	146
1480	367
1481	115
1481	294
1481	556
1481	598
1481	215
1481	212
1482	280
1482	682
1482	330
1482	186
1483	623
1483	406
1483	180
1483	361
1483	390
1483	100
1484	491
1484	345
1484	85
1484	541
1484	226
1485	123
1485	635
1485	104
1485	399
1485	414
1485	687
1485	231
1486	179
1486	60
1487	649
1487	262
1487	78
1488	197
1488	227
1488	542
1488	248
1488	673
1488	496
1489	295
1489	183
1489	481
1489	53
1489	581
1489	570
1489	565
1490	509
1490	568
1490	626
1491	490
1491	395
1491	185
1491	278
1492	551
1492	69
1492	390
1492	321
1493	397
1493	659
1493	65
1493	167
1493	206
1494	59
1494	348
1494	261
1494	135
1494	179
1494	242
1494	664
1495	695
1495	555
1495	595
1495	173
1496	617
1496	173
1496	620
1496	480
1496	511
1496	594
1496	690
1496	421
1497	614
1497	372
1497	611
1498	659
1498	284
1498	675
1498	92
1498	229
1498	304
1499	89
1499	263
1500	651
1500	107
1500	354
1500	182
1501	557
1501	510
1501	258
1502	657
1502	77
1502	224
1503	543
1503	367
1503	533
1503	107
1503	317
1503	657
1503	62
1504	536
1504	514
1504	178
1504	561
1505	689
1505	493
1505	79
1505	125
1506	59
1506	146
1506	135
1506	348
1506	572
1506	664
1506	287
1507	223
1507	388
1507	394
1507	581
1507	139
1507	160
1507	226
1507	325
1508	204
1508	179
1508	592
1509	62
1509	94
1509	422
1509	93
1509	464
1509	514
1510	208
1510	348
1510	543
1510	107
1511	475
1511	74
1511	313
1512	199
1512	544
1512	407
1512	669
1513	455
1513	344
1513	229
1513	386
1513	118
1513	426
1514	685
1514	644
1514	467
1514	100
1514	630
1514	604
1515	204
1515	543
1516	217
1516	386
1516	99
1516	207
1516	458
1516	568
1516	284
1516	255
1516	430
1517	391
1517	192
1517	472
1517	342
1517	350
1517	150
1518	687
1518	294
1518	123
1518	598
1518	74
1519	179
1519	53
1519	543
1519	204
1520	689
1520	483
1520	584
1520	564
1520	439
1520	490
1521	565
1521	581
1522	217
1522	473
1522	575
1522	374
1522	235
1522	427
1522	573
1523	304
1523	192
1523	207
1523	448
1523	568
1523	509
1523	256
1524	290
1524	684
1524	315
1525	468
1525	174
1525	545
1525	650
1526	139
1526	223
1526	545
1526	202
1526	274
1526	625
1527	612
1527	668
1527	201
1527	566
1527	128
1527	67
1528	73
1528	594
1528	409
1528	660
1528	210
1528	383
1528	338
1528	421
1529	326
1529	480
1529	347
1529	250
1529	55
1529	104
1529	584
1529	192
1530	623
1530	686
1530	469
1530	138
1531	190
1531	517
1531	174
1531	191
1531	489
1532	399
1532	477
1532	457
1532	321
1532	555
1532	679
1533	154
1533	385
1533	242
1533	247
1534	590
1534	664
1534	599
1534	262
1534	509
1534	425
1535	511
1535	409
1535	605
1535	84
1535	646
1536	326
1536	104
1536	279
1537	291
1537	340
1537	126
1537	307
1537	443
1538	276
1538	60
1538	348
1538	135
1539	534
1539	156
1539	83
1539	362
1540	351
1540	344
1540	524
1540	492
1540	169
1540	382
1540	336
1541	98
1541	249
1541	396
1541	264
1541	153
1541	69
1541	159
1542	393
1542	123
1542	399
1542	104
1542	633
1542	74
1542	72
1543	390
1543	406
1543	465
1543	70
1543	685
1543	630
1544	406
1544	487
1544	225
1544	252
1544	424
1545	547
1545	187
1545	406
1545	70
1545	138
1545	186
1546	171
1546	334
1547	507
1547	400
1547	599
1547	534
1547	116
1548	210
1548	409
1548	421
1548	173
1548	554
1549	199
1549	544
1549	440
1549	395
1550	588
1550	542
1550	496
1551	331
1551	333
1552	383
1552	617
1552	665
1552	529
1552	449
1552	84
1552	75
1553	582
1553	272
1553	542
1553	81
1553	162
1554	189
1554	495
1554	501
1554	416
1554	308
1554	380
1554	695
1555	79
1555	111
1555	112
1555	561
1556	381
1556	424
1556	549
1557	192
1557	678
1557	371
1557	430
1557	285
1557	150
1557	218
1558	531
1558	624
1559	420
1559	388
1560	385
1560	657
1560	527
1560	53
1560	614
1560	148
1561	138
1561	682
1561	686
1561	100
1561	648
1561	70
1561	612
1562	536
1562	179
1562	93
1562	561
1562	464
1562	61
1563	210
1563	487
1563	203
1563	608
1564	146
1564	667
1564	572
1564	614
1564	208
1564	385
1564	664
1565	520
1565	585
1565	266
1565	284
1565	426
1566	392
1566	528
1566	325
1566	491
1566	589
1566	275
1566	164
1566	420
1566	345
1567	442
1567	461
1567	646
1568	690
1568	480
1568	529
1569	74
1569	329
1569	356
1569	128
1569	126
1569	593
1570	64
1570	288
1570	335
1570	634
1570	129
1571	383
1571	645
1572	312
1572	593
1572	663
1572	329
1573	595
1573	243
1574	260
1574	219
1574	256
1574	408
1575	501
1575	385
1575	467
1575	624
1575	213
1575	192
1576	233
1576	151
1576	482
1576	476
1577	272
1577	306
1577	466
1577	93
1577	174
1577	588
1577	624
1578	91
1578	615
1578	232
1579	113
1579	471
1579	440
1579	372
1579	510
1580	285
1580	311
1580	692
1580	342
1581	92
1581	579
1581	410
1581	171
1581	658
1581	231
1581	334
1581	555
1581	402
1582	325
1582	223
1582	581
1582	394
1582	622
1582	420
1583	682
1583	389
1583	72
1583	489
1584	605
1584	662
1584	173
1584	620
1584	666
1585	183
1585	149
1585	198
1585	593
1585	663
1585	560
1586	628
1586	355
1586	327
1586	552
1587	492
1587	574
1587	76
1587	555
1588	545
1588	625
1588	415
1588	275
1588	325
1589	148
1589	523
1589	344
1589	83
1590	101
1590	255
1590	175
1590	377
1590	626
1590	486
1590	229
1590	681
1591	277
1591	56
1591	674
1591	670
1591	125
1591	328
1591	148
1592	415
1592	160
1592	275
1592	274
1592	589
1593	646
1593	480
1593	283
1593	312
1593	338
1593	554
1593	449
1594	561
1594	441
1594	271
1594	193
1595	69
1595	487
1595	630
1595	549
1595	685
1595	424
1596	282
1596	637
1596	256
1596	590
1596	214
1596	154
1596	433
1596	373
1597	116
1597	291
1597	88
1597	519
1597	243
1597	400
1597	628
1597	126
1597	474
1598	689
1598	207
1598	100
1598	654
1598	269
1598	257
1598	123
1599	75
1599	339
1599	379
1599	420
1600	469
1600	186
1600	630
1600	549
1601	173
1601	396
1601	449
1601	666
1602	437
1602	636
1602	435
1602	428
1602	673
1603	478
1603	409
1603	84
1603	265
1603	440
1603	484
1603	627
1603	594
1604	688
1604	123
1604	287
1604	238
1604	461
1605	226
1605	68
1606	538
1606	431
1606	402
1606	334
1607	255
1607	325
1607	161
1607	208
1608	541
1608	420
1608	581
1608	205
1608	485
1608	491
1609	265
1609	627
1609	283
1609	637
1609	662
1610	151
1610	113
1610	310
1610	590
1610	407
1610	552
1611	250
1611	360
1611	279
1611	483
1612	590
1612	414
1612	129
1612	425
1612	509
1612	577
1612	637
1613	99
1613	620
1613	574
1613	147
1613	600
1613	631
1613	679
1613	633
1613	381
1614	361
1614	390
1614	143
1614	467
1614	424
1615	181
1615	197
1615	513
1615	581
1615	113
1615	59
1615	436
1616	197
1616	653
1616	93
1616	273
1616	656
1616	588
1616	673
1617	639
1617	591
1617	439
1618	316
1618	205
1618	331
1618	549
1619	639
1619	79
1619	561
1619	98
1619	557
1619	112
1619	483
1620	405
1620	93
1620	272
1620	462
1620	496
1620	258
1620	140
1621	425
1621	414
1621	373
1621	73
1621	324
1621	684
1622	648
1622	330
1622	424
1622	280
1622	397
1623	491
1623	415
1623	457
1623	485
1623	388
1624	599
1624	214
1624	262
1624	631
1625	317
1625	450
1625	527
1625	287
1626	277
1626	460
1626	76
1626	678
1627	232
1627	502
1627	270
1627	94
1628	116
1628	363
1628	628
1628	77
1628	296
1628	400
1628	83
1628	693
1629	399
1629	294
1629	72
1629	642
1629	279
1629	74
1630	628
1630	519
1630	296
1630	133
1630	307
1630	362
1630	443
1631	104
1631	641
1631	177
1631	512
1631	670
1632	315
1632	294
1632	125
1632	56
1632	643
1632	344
1633	426
1633	386
1633	675
1634	567
1634	620
1634	613
1634	555
1634	674
1634	99
1634	633
1634	439
1635	687
1635	212
1635	74
1635	522
1636	283
1636	218
1636	304
1636	699
1637	547
1637	654
1637	434
1637	454
1637	309
1637	495
1638	350
1638	87
1638	557
1638	510
1638	678
1638	443
1638	227
1638	127
1638	235
1639	344
1639	520
1639	386
1639	229
1639	568
1639	284
1640	477
1640	381
1640	633
1640	76
1640	674
1640	321
1641	430
1641	568
1641	386
1641	426
1641	615
1641	266
1641	458
1642	247
1642	193
1642	664
1642	59
1643	546
1643	615
1643	627
1643	401
1643	103
1644	256
1644	316
1644	205
1644	331
1645	362
1645	307
1646	112
1646	483
1646	536
1646	663
1646	155
1647	641
1647	115
1647	313
1647	550
1647	231
1647	212
1647	423
1648	226
1648	415
1648	85
1648	589
1648	392
1649	672
1649	462
1649	582
1649	306
1649	162
1649	272
1650	383
1650	272
1650	182
1650	651
1650	348
1651	693
1651	291
1651	88
1651	599
1651	277
1652	494
1652	119
1653	329
1653	593
1653	177
1653	126
1654	486
1654	264
1654	305
1654	153
1654	97
1655	332
1655	81
1655	539
1655	372
1655	653
1656	90
1656	179
1656	422
1656	561
1657	670
1657	393
1657	104
1657	177
1657	123
1657	414
1657	72
1658	347
1658	111
1658	250
1658	360
1659	582
1659	174
1659	372
1659	272
1659	542
1660	208
1660	135
1660	654
1660	242
1660	148
1661	72
1661	556
1661	423
1661	123
1662	536
1662	60
1662	118
1662	199
1662	204
1662	544
1663	444
1663	182
1663	645
1663	450
1663	363
1663	383
1663	506
1663	184
1664	633
1664	336
1664	166
1664	345
1665	218
1665	618
1665	567
1665	505
1665	638
1666	627
1666	312
1666	480
1666	478
1667	552
1667	540
1667	307
1667	601
1668	94
1668	115
1668	133
1668	468
1668	422
1668	464
1669	332
1669	258
1669	372
1670	641
1670	598
1670	687
1670	633
1671	634
1671	290
1671	358
1671	84
1672	491
1672	589
1672	420
1673	608
1673	138
1673	604
1673	330
1674	144
1674	356
1674	128
1674	386
1674	663
1674	406
1674	157
1675	345
1675	151
1675	622
1675	385
1675	438
1675	482
1676	615
1676	430
1676	118
1676	229
1676	266
1676	426
1677	88
1677	349
1677	126
1677	628
1677	307
1677	443
1677	507
1678	141
1678	654
1678	309
1678	359
1678	590
1678	274
1678	583
1679	606
1679	202
1679	352
1679	538
1679	183
1679	506
1679	386
1679	663
1680	468
1680	650
1680	489
1680	174
1680	102
1681	594
1681	331
1681	253
1681	265
1681	409
1681	484
1682	472
1682	493
1682	634
1682	357
1682	376
1682	335
1683	432
1683	225
1683	256
1683	479
1683	408
1683	219
1683	499
1684	150
1684	83
1684	88
1685	426
1685	92
1685	284
1686	483
1686	591
1686	490
1686	584
1686	427
1686	98
1686	219
1687	155
1687	151
1687	385
1688	395
1688	466
1688	372
1689	468
1689	62
1689	244
1689	561
1690	684
1690	414
1690	599
1690	509
1690	129
1691	582
1691	486
1691	81
1691	372
1691	162
1691	93
1691	672
1692	590
1692	533
1692	158
1692	264
1692	359
1692	632
1692	95
1693	478
1693	253
1693	605
1693	511
1694	218
1694	132
1694	371
1694	350
1694	145
1694	365
1694	150
1695	192
1695	480
1695	104
1695	326
1695	241
1695	576
1695	207
1695	111
1695	82
1696	623
1696	390
1696	352
1696	604
1696	381
1696	187
1696	143
1697	469
1697	352
1697	630
1697	487
1697	644
1698	75
1698	379
1698	339
1698	587
1698	694
1698	547
1698	164
1699	409
1699	265
1699	210
1699	396
1700	304
1700	241
1700	207
1700	484
1700	82
1701	678
1701	76
1701	417
1701	235
1702	579
1702	96
1702	196
1702	323
1702	440
1702	558
1703	478
1703	480
1703	396
1703	511
1704	193
1704	559
1704	661
1705	62
1705	93
1705	90
1706	308
1706	55
1706	254
1706	525
1707	432
1707	672
1707	260
1707	499
1707	623
1707	408
1707	219
1708	641
1708	74
1708	123
1708	513
1709	179
1709	314
1709	154
1709	146
1709	348
1709	407
1709	193
1710	279
1710	642
1710	512
1710	177
1711	361
1711	644
1711	465
1711	551
1711	397
1711	685
1711	686
1711	352
1712	632
1712	495
1712	141
1712	434
1712	583
1713	298
1713	419
1713	540
1713	327
1713	552
1714	462
1714	81
1714	651
1714	405
1714	542
1714	653
1715	542
1715	273
1715	372
1715	651
1716	486
1716	656
1716	588
1716	258
1716	81
1717	448
1717	192
1717	311
1717	117
1717	272
1717	273
1718	151
1718	362
1718	83
1718	693
1719	166
1719	353
1719	344
1719	492
1719	633
1719	524
1719	169
1720	344
1720	118
1720	694
1720	256
1720	455
1721	92
1721	326
1721	659
1721	448
1721	626
1722	92
1722	207
1722	694
1722	455
1723	353
1723	633
1723	345
1723	492
1723	351
1723	382
1723	524
1723	344
1724	643
1724	394
1724	369
1724	294
1725	654
1725	657
1725	450
1725	135
1725	60
1726	600
1726	211
1726	400
1727	547
1727	542
1727	64
1727	633
1727	313
1728	453
1728	235
1728	374
1728	274
1728	390
1728	211
1728	230
1729	421
1729	693
1729	344
1729	474
1730	679
1730	65
1730	660
1730	167
1730	625
1730	121
1730	594
1730	168
1730	372
1731	397
1731	211
1731	180
1731	648
1731	549
1732	266
1732	585
1732	455
1732	568
1733	270
1733	311
1733	342
1734	522
1734	74
1734	598
1734	475
1734	642
1735	448
1735	145
1736	222
1736	79
1736	674
1736	347
1737	307
1737	209
1737	400
1737	470
1737	438
1738	147
1738	393
1738	631
1738	555
1738	613
1739	160
1739	420
1739	164
1739	541
1739	589
1740	325
1740	388
1740	681
1740	526
1741	592
1741	657
1741	348
1741	107
1742	162
1742	539
1742	273
1742	248
1742	462
1742	81
1742	588
1742	131
1743	454
1743	297
1743	274
1743	338
1744	671
1744	317
1745	443
1745	126
1745	133
1746	192
1746	117
1746	678
1746	150
1746	218
1746	503
1746	132
1747	462
1747	439
1747	477
1747	147
1748	162
1748	372
1748	140
1748	117
1748	672
1748	350
1748	131
1749	223
1749	491
1749	415
1749	205
1749	485
1749	420
1749	345
1749	581
1749	160
1750	255
1750	599
1750	681
1750	101
1750	339
1750	498
1751	167
1751	52
1751	490
1751	679
1752	392
1752	270
1752	350
1752	150
1752	503
1752	145
1753	163
1753	525
1753	299
1753	475
1753	596
1753	262
1753	526
1753	78
1754	533
1754	590
1754	359
1754	146
1754	434
1755	212
1755	556
1755	399
1755	687
1755	393
1756	357
1756	557
1756	490
1756	536
1756	634
1756	335
1756	376
1756	129
1757	547
1757	91
1757	232
1757	587
1757	308
1757	339
1757	379
1757	313
1757	75
1758	143
1758	494
1758	369
1758	643
1758	523
1759	458
1759	229
1759	118
1759	675
1760	139
1760	636
1760	293
1761	639
1761	347
1761	462
1761	484
1762	335
1762	401
1762	76
1762	291
1763	513
1763	279
1763	641
1763	522
1763	215
1763	78
1764	644
1764	406
1764	604
1764	630
1764	583
1764	285
1764	121
1765	220
1765	687
1765	437
1765	289
1766	173
1766	627
1767	295
1767	292
1768	491
1768	205
1768	501
1768	555
1768	259
1769	492
1769	595
1770	106
1770	561
1770	427
1770	439
1771	307
1771	77
1771	362
1771	519
1771	628
1772	420
1772	275
1772	164
1772	345
1772	205
1773	388
1773	247
1773	348
1773	450
1774	399
1774	475
1774	313
1774	294
1775	373
1775	631
1775	267
1775	433
1775	637
1775	571
1775	282
1775	214
1776	406
1776	604
1776	143
1776	390
1776	397
1776	252
1777	287
1777	654
1777	204
1778	682
1778	191
1778	670
1778	636
1778	128
1778	566
1779	572
1779	179
1779	287
1779	261
1780	564
1780	584
1780	561
1780	125
1780	427
1781	306
1781	131
1781	162
1782	517
1782	412
1782	192
1782	438
1782	63
1782	155
1782	271
1783	462
1783	656
1783	306
1783	93
1784	693
1784	681
1784	223
1784	344
1784	101
1784	175
1785	218
1785	285
1785	503
1785	192
1786	247
1786	621
1786	195
1786	660
1786	429
1786	574
1786	242
1787	538
1787	177
1787	507
1787	663
1787	329
1788	302
1788	257
1788	100
1788	689
1788	301
1789	618
1789	653
1789	71
1790	94
1790	90
1790	93
1790	133
1790	115
1790	178
1790	464
1791	474
1791	135
1791	353
1791	384
1791	229
1791	421
1792	592
1792	331
1792	224
1792	657
1793	595
1793	631
1794	485
1794	681
1794	164
1794	205
1794	420
1794	85
1794	581
1795	128
1795	201
1795	389
1795	545
1795	652
1796	266
1796	304
1797	152
1797	561
1797	69
1797	98
1798	472
1798	285
1798	150
1798	145
1798	272
1799	188
1799	92
1799	495
1800	60
1800	62
1800	614
1800	543
1801	90
1801	159
1801	103
1801	668
1801	472
1801	546
1802	340
1802	519
1802	362
1802	628
1803	126
1803	349
1804	414
1804	212
1804	399
1804	78
1804	642
1804	633
1805	560
1805	376
1805	506
1805	507
1805	74
1805	456
1806	409
1806	653
1806	447
1806	648
1806	680
1807	69
1807	608
1807	644
1808	205
1808	377
1809	462
1809	350
1809	405
1809	81
1809	588
1810	551
1810	187
1810	211
1810	321
1810	686
1811	494
1811	315
1811	125
1811	83
1811	148
1812	255
1812	520
1812	509
1813	247
1813	441
1813	53
1813	367
1813	62
1814	219
1814	64
1814	376
1814	632
1815	439
1815	69
1815	205
1816	360
1816	82
1816	250
1816	462
1816	584
1816	268
1816	347
1817	344
1817	520
1817	92
1817	386
1817	585
1817	430
1818	204
1818	287
1818	533
1818	317
1818	247
1818	135
1818	261
1818	60
1818	208
1819	307
1819	327
1819	419
1820	599
1820	129
1820	334
1820	684
1820	637
1821	316
1821	562
1821	582
1821	693
1821	256
1821	519
1822	177
1822	631
1822	162
1822	259
1822	173
1822	501
1823	313
1823	633
1823	513
1824	198
1824	128
1824	183
1825	350
1825	162
1826	192
1826	285
1827	457
1827	681
1827	528
1827	420
1827	581
1828	52
1828	167
1828	465
1828	297
1828	259
1829	331
1829	338
1829	529
1829	409
1829	666
1829	620
1829	253
1830	659
1830	99
1830	568
1830	192
1830	92
1830	284
1831	429
1831	246
1831	619
1831	182
1832	266
1832	386
1832	118
1832	694
1832	430
1832	284
1832	207
1832	585
1833	85
1833	457
1833	164
1833	485
1834	216
1834	598
1834	210
1834	54
1834	106
1835	263
1835	137
1835	648
1835	680
1835	653
1836	541
1836	85
1836	589
1836	485
1837	447
1837	618
1837	484
1838	248
1838	52
1838	85
1838	698
1839	148
1839	592
1839	261
1839	314
1839	62
1839	657
1840	641
1840	115
1840	587
1840	440
1840	120
1840	535
1841	420
1841	275
1841	388
1841	345
1841	274
1841	394
1841	85
1842	454
1842	495
1842	654
1842	334
1842	146
1842	264
1843	106
1843	437
1843	210
1843	449
1844	138
1844	478
1844	204
1845	52
1845	397
1845	617
1846	611
1846	138
1847	432
1847	219
1847	548
1847	408
1848	536
1848	478
1848	204
1848	653
1849	381
1849	285
1849	551
1849	138
1850	204
1850	193
1851	168
1851	208
1851	206
1851	698
1851	625
1851	167
1851	85
1852	343
1852	78
1852	662
1852	284
1853	628
1853	355
1853	540
1853	209
1853	419
1854	455
1854	99
1854	615
1854	659
1854	229
1854	92
1854	694
1854	568
1855	592
1855	671
1855	179
1856	483
1856	480
1856	241
1856	563
1856	304
1857	395
1857	542
1857	656
1858	81
1858	117
1858	651
1858	672
1858	486
1858	673
1859	472
1859	668
1859	291
1859	546
1859	528
1859	597
1859	671
1859	159
1859	76
1860	614
1860	148
1860	657
1860	261
1860	367
1861	581
1861	394
1861	139
1861	388
1862	672
1862	225
1862	623
1862	413
1863	190
1863	72
1863	191
1863	517
1864	335
1864	53
1864	497
1864	565
1865	686
1865	682
1865	608
1865	648
1865	381
1866	681
1866	101
1867	561
1867	129
1867	504
1867	98
1867	483
1867	639
1867	106
1868	506
1868	647
1868	184
1869	369
1869	494
1869	218
1869	79
1869	453
1869	56
1870	627
1870	317
1870	597
1870	291
1871	678
1871	117
1871	145
1872	135
1872	527
1872	450
1872	317
1872	179
1873	621
1873	423
1873	194
1873	182
1873	585
1873	195
1873	599
1874	328
1874	335
1874	295
1874	481
1874	556
1875	533
1875	59
1875	261
1875	543
1875	407
1875	247
1875	276
1876	581
1876	164
1876	394
1876	388
1876	681
1877	250
1877	484
1877	82
1877	104
1877	111
1877	576
1877	279
1877	639
1878	362
1878	165
1878	634
1879	264
1879	693
1879	334
1879	533
1879	454
1879	632
1879	141
1880	504
1880	125
1880	472
1880	439
1880	689
1881	501
1881	281
1881	361
1881	438
1881	151
1881	271
1881	385
1881	233
1882	386
1882	217
1882	585
1883	630
1883	70
1884	298
1884	691
1884	540
1885	84
1885	690
1885	484
1885	331
1885	449
1886	572
1886	154
1886	179
1886	667
1886	441
1886	135
1886	208
1887	552
1887	470
1888	350
1888	272
1888	405
1888	332
1889	397
1889	361
1889	285
1889	547
1889	612
1889	121
1889	180
1890	449
1890	554
1890	331
1890	322
1890	665
1890	666
1891	140
1891	531
1891	462
1891	486
1892	171
1892	477
1892	494
1893	396
1893	637
1893	666
1894	664
1894	527
1894	59
1894	572
1894	107
1895	398
1895	107
1895	182
1895	697
1895	541
1896	73
1896	253
1896	84
1896	594
1897	160
1897	274
1897	164
1898	600
1898	309
1898	590
1899	618
1899	447
1899	89
1899	680
1900	583
1900	551
1900	682
1901	449
1901	253
1901	529
1901	554
1901	665
1902	440
1902	637
1902	75
1903	342
1903	273
1903	692
1903	145
1903	392
1903	430
1904	348
1904	363
1905	588
1905	466
1905	542
1905	197
1905	624
1906	315
1906	218
1906	500
1906	428
1907	258
1907	466
1907	395
1907	405
1907	539
1908	413
1908	672
1908	447
1908	225
1908	256
1909	551
1909	358
1909	631
1909	654
1909	504
1910	440
1910	646
1910	617
1910	409
1910	265
1910	594
1911	681
1911	415
1911	85
1911	275
1912	455
1912	256
1912	694
1912	615
1913	251
1913	225
1913	447
1914	670
1914	488
1914	344
1914	453
1914	315
1914	83
1915	254
1915	542
1915	185
1915	91
1916	58
1916	626
1916	565
1916	384
1916	644
1916	229
1916	421
1917	665
1917	52
1917	490
1918	514
1918	90
1918	464
1918	93
1919	568
1919	585
1919	386
1920	687
1920	72
1920	294
1920	177
1920	399
1920	556
1921	460
1921	557
1921	678
1921	624
1921	258
1921	122
1921	452
1921	510
1922	415
1922	394
1922	160
1922	681
1922	377
1922	226
1922	325
1923	414
1923	348
1923	354
1923	247
1923	674
1923	182
1924	615
1924	217
1924	659
1925	74
1925	641
1925	294
1925	215
1925	642
1926	128
1926	201
1926	67
1926	545
1927	140
1927	673
1927	131
1927	93
1928	77
1928	474
1928	599
1928	126
1928	534
1928	277
1928	296
1928	628
1929	316
1929	211
1930	447
1930	86
1930	405
1930	284
1930	649
1930	364
1931	491
1931	259
1931	188
1931	509
1931	501
1931	177
1932	93
1932	273
1932	672
1932	395
1932	117
1932	372
1932	582
1933	402
1933	619
1933	585
1933	182
1933	423
1933	635
1934	276
1934	146
1934	247
1934	533
1935	285
1935	117
1935	678
1935	692
1936	402
1936	348
1936	107
1936	450
1936	645
1936	541
1937	576
1937	207
1937	268
1937	360
1937	250
1938	445
1938	510
1938	678
1938	122
1938	460
1938	452
1939	485
1939	415
1939	541
1939	164
1939	85
1939	394
1940	657
1940	193
1940	247
1941	160
1941	622
1941	223
1942	654
1942	302
1942	301
1942	83
1942	207
1942	237
1942	253
1942	646
1942	238
1943	152
1943	661
1943	226
1943	486
1943	98
1943	68
1944	255
1944	448
1944	615
1945	98
1945	559
1945	319
1945	205
1945	439
1946	128
1946	630
1946	538
1946	157
1947	468
1947	72
1947	191
1948	180
1948	623
1948	280
1948	630
1949	181
1949	59
1949	130
1949	552
1949	151
1949	690
1949	113
1950	583
1950	623
1950	69
1950	186
1951	277
1951	307
1951	126
1952	483
1952	591
1952	584
1952	429
1953	144
1953	402
1953	92
1953	477
1953	431
1953	658
1953	519
1953	410
1954	219
1954	639
1954	125
1954	112
1954	129
1955	604
1955	648
1955	630
1955	69
1956	654
1956	261
1956	204
1956	367
1956	247
1956	664
1957	266
1957	452
1957	106
1957	81
1957	210
1958	88
1958	340
1958	443
1958	514
1959	534
1959	340
1959	618
1959	363
1959	349
1960	480
1960	554
1960	690
1960	605
1961	426
1961	344
1961	284
1961	255
1962	98
1962	159
1962	274
1962	205
1963	641
1963	670
1964	92
1964	284
1964	386
1965	52
1965	466
1965	594
1965	679
1965	397
1965	236
1965	168
1966	340
1966	116
1966	474
1966	349
1966	507
1967	79
1967	105
1967	429
1967	125
1967	219
1967	564
1968	585
1968	568
1968	458
1968	344
1969	421
1969	449
1969	690
1969	396
1970	624
1970	282
1970	256
1970	129
1970	262
1970	324
1971	529
1971	210
1971	665
1971	73
1971	511
1971	666
1972	526
1972	475
1972	579
1972	525
1972	621
1972	405
1972	447
1973	528
1973	616
1973	116
1974	253
1974	665
1974	440
1974	409
1975	59
1975	181
1975	666
1975	552
1976	274
1976	345
1976	581
1976	622
1977	429
1977	557
1977	219
1977	493
1977	237
1978	119
1978	579
1978	431
1979	547
1979	143
1979	549
1979	121
1979	623
1980	295
1980	565
1981	223
1981	139
1981	205
1982	526
1982	160
1982	485
1982	377
1982	681
1982	420
1982	589
1982	457
1983	681
1983	457
1983	541
1984	418
1984	602
1984	595
1984	495
1985	618
1985	151
1985	628
1986	415
1986	325
1986	85
1986	394
1986	164
1986	226
1986	528
1986	491
1987	644
1987	100
1987	467
1987	685
1987	143
1987	180
1988	344
1988	326
1988	426
1988	229
1988	255
1988	192
1988	659
1988	458
1989	118
1989	694
1989	304
1989	626
1989	207
1989	520
1990	288
1990	557
1990	493
1991	492
1991	676
1991	345
1991	344
1991	595
1991	633
1991	353
1992	377
1992	421
1992	85
1992	135
1992	223
1992	474
1992	384
1992	255
1993	194
1993	246
1993	585
1993	193
1993	242
1993	404
1993	599
1994	60
1994	527
1994	657
1994	53
1994	441
1995	693
1995	546
1995	256
1995	370
1996	430
1996	675
1996	344
1996	118
1997	519
1997	277
1997	307
1997	580
1997	340
1998	449
1998	597
1998	396
1998	283
1998	617
1999	150
1999	618
1999	340
1999	77
1999	507
1999	302
2000	493
2000	689
2000	79
2000	429
2001	474
2001	349
2001	88
2001	156
2001	296
2002	500
2002	292
2002	186
2002	218
2002	505
2002	346
2003	548
2003	83
2003	315
2003	670
2003	643
2004	294
2004	279
2004	177
2004	104
2004	393
2004	642
2004	74
2005	51
2005	679
2005	545
2005	121
2005	208
2006	281
2006	271
2006	63
2007	174
2007	350
2007	140
2008	391
2008	648
2009	314
2009	440
2009	230
2009	471
2009	55
2010	448
2010	92
2010	615
2011	166
2011	676
2011	344
2011	595
2012	495
2012	243
2012	308
2013	342
2013	285
2013	270
2013	391
2013	392
2014	401
2014	116
2014	656
2014	597
2015	423
2015	585
2015	574
2015	247
2015	170
2016	353
2016	336
2016	169
2016	633
2017	468
2017	561
2017	322
2017	536
2017	94
2017	244
2017	62
2018	78
2018	641
2019	687
2019	428
2019	661
2019	608
2019	266
2019	203
2019	673
2020	293
2020	71
2020	505
2021	78
2021	231
2021	294
2021	687
2022	361
2022	320
2022	71
2022	208
2022	521
2023	664
2023	367
2023	657
2023	527
2023	261
2023	667
2024	357
2024	550
2024	544
2024	314
2024	568
2025	687
2025	513
2025	435
2025	522
2026	187
2026	427
2026	124
2026	217
2026	337
2026	316
2026	572
2027	579
2027	530
2027	525
2028	634
2028	335
2028	689
2028	557
2028	483
2029	326
2029	430
2029	509
2029	99
2029	386
2030	440
2030	312
2030	421
2030	338
2030	690
2030	662
2030	84
2031	206
2031	278
2031	679
2031	297
2031	395
2031	51
2032	458
2032	256
2032	92
2032	659
2032	509
2033	307
2033	243
2033	83
2033	580
2033	514
2034	620
2034	84
2034	478
2034	75
2035	529
2035	440
2035	312
2035	480
2035	666
2036	411
2036	396
2036	486
2036	439
2036	559
2037	173
2037	690
2037	210
2038	519
2038	133
2038	443
2038	507
2038	580
2039	381
2039	225
2039	100
2039	70
2039	285
2039	608
2039	551
2040	569
2040	575
2040	573
2040	98
2040	436
2040	187
2040	374
2040	124
2041	344
2041	143
2041	83
2041	80
2042	511
2042	207
2042	537
2042	269
2042	248
2042	275
2042	238
2042	302
2043	548
2043	413
2043	251
2043	479
2043	219
2043	225
2043	408
2043	256
2044	143
2044	186
2044	69
2044	608
2045	482
2045	691
2045	151
2045	261
2045	412
2045	501
2046	58
2046	681
2046	339
2046	434
2046	101
2047	563
2047	576
2048	65
2048	372
2048	208
2048	259
2049	248
2049	653
2049	162
2049	117
2049	531
2049	466
2050	130
2050	110
2050	436
2050	590
2051	324
2051	267
2051	509
2051	624
2051	73
2051	129
2051	590
2051	425
2052	626
2052	229
2052	217
2052	192
2052	568
2052	520
2052	118
2053	531
2053	227
2053	372
2053	332
2053	131
2053	140
2053	466
2054	348
2054	275
2054	184
2055	303
2055	476
2055	622
2055	151
2055	63
2055	345
2055	106
2055	517
2056	185
2056	167
2056	236
2056	594
2057	557
2057	237
2057	689
2057	429
2057	155
2057	490
2058	321
2058	138
2058	361
2058	211
2058	406
2058	424
2058	280
2058	121
2059	631
2059	308
2059	205
2059	595
2059	555
2059	529
2060	674
2060	393
2060	620
2061	296
2061	599
2061	362
2061	400
2061	307
2061	514
2062	555
2062	414
2062	635
2062	522
2062	550
2062	513
2062	72
2062	687
2063	548
2063	260
2063	447
2063	408
2063	499
2063	413
2064	228
2064	323
2064	579
2065	686
2065	549
2065	608
2065	604
2066	255
2066	458
2066	304
2066	659
2066	426
2066	217
2067	115
2067	93
2067	94
2067	536
2068	98
2068	472
2068	557
2069	144
2069	171
2069	231
2069	334
2069	494
2069	592
2070	407
2070	62
2070	276
2070	527
2070	60
2071	99
2071	284
2071	455
2071	675
2071	585
2071	92
2071	426
2072	584
2072	536
2072	493
2073	255
2073	509
2073	284
2073	326
2073	256
2073	344
2074	599
2074	126
2074	362
2074	291
2074	400
2075	112
2075	237
2075	155
2075	493
2076	126
2076	205
2077	696
2077	490
2077	504
2077	429
2078	235
2078	337
2078	124
2078	217
2079	149
2079	507
2079	126
2079	593
2080	274
2080	583
2080	693
2080	533
2080	338
2080	359
2081	225
2081	465
2081	321
2081	467
2082	302
2082	83
2083	87
2083	277
2083	76
2083	258
2083	557
2084	396
2084	68
2084	98
2085	453
2085	124
2085	208
2085	484
2085	572
2085	274
2085	374
2086	698
2086	278
2086	397
2086	168
2087	151
2087	666
2087	554
2087	690
2087	378
2087	436
2087	488
2087	590
2087	310
2088	664
2088	314
2088	533
2088	441
2088	348
2089	632
2089	216
2089	584
2089	106
2089	634
2089	493
2090	633
2090	555
2090	462
2090	457
2090	567
2090	574
2090	99
2091	295
2091	456
2091	221
2091	500
2092	397
2092	612
2092	211
2092	604
2092	285
2092	121
2093	480
2093	639
2093	268
2093	300
2093	576
2094	115
2094	62
2094	322
2095	338
2095	605
2095	690
2095	396
2096	693
2096	296
2096	519
2096	307
2097	520
2097	262
2097	446
2097	526
2097	621
2098	306
2098	621
2098	522
2098	276
2098	543
2098	320
2099	284
2099	455
2099	92
2099	694
2099	585
2099	615
2099	675
2099	626
2100	62
2100	667
2101	76
2101	525
2101	195
2101	374
2101	543
2101	211
2102	457
2102	388
2102	622
2102	392
2102	274
2103	545
2103	698
2103	372
2103	51
2103	52
2104	482
2104	361
2104	467
2104	345
2105	591
2105	490
2105	689
2105	105
2105	376
2105	536
2106	325
2106	202
2106	457
2106	85
2106	345
2106	589
2107	177
2107	294
2107	74
2107	231
2108	112
2108	135
2108	421
2109	235
2109	569
2109	316
2109	572
2109	274
2109	124
2110	273
2110	93
2110	624
2110	227
2110	673
2111	108
2111	530
2111	343
2111	596
2111	163
2111	447
2112	546
2112	534
2112	90
2112	615
2113	500
2113	340
2113	194
2113	621
2114	129
2114	334
2114	664
2114	624
2114	214
2115	609
2115	211
2115	586
2115	569
2116	624
2116	258
2116	443
2116	452
2116	557
2117	599
2117	77
2117	83
2117	277
2117	307
2117	133
2117	156
2118	528
2118	683
2118	159
2118	627
2118	508
2119	537
2119	287
2119	646
2119	511
2120	257
2120	100
2120	654
2120	442
2120	237
2120	301
2120	248
2121	385
2121	438
2121	345
2121	701
2121	476
2121	213
2122	264
2122	319
2122	226
2122	561
2122	661
2122	305
2123	132
2123	117
2123	357
2123	371
2123	311
2124	199
2124	641
2124	544
2124	269
2124	60
2125	669
2125	288
2125	608
2125	614
2125	407
2125	535
2126	347
2126	584
2126	279
2126	104
2126	304
2126	268
2126	55
2126	300
2126	83
2127	485
2127	160
2127	377
2127	491
2127	274
2127	622
2128	115
2128	93
2128	468
2128	178
2128	464
2129	352
2129	183
2129	198
2129	177
2130	280
2130	187
2130	252
2130	686
2131	317
2131	528
2131	103
2132	642
2132	104
2132	313
2133	483
2133	480
2133	326
2133	241
2133	82
2134	291
2134	519
2134	132
2134	400
2134	618
2134	126
2135	269
2135	442
2135	689
2135	302
2136	275
2136	76
2136	248
2137	599
2137	414
2137	73
2137	373
2137	262
2138	390
2138	225
2139	172
2139	106
2139	215
2139	687
2139	220
2139	81
2140	644
2140	583
2140	70
2140	547
2141	248
2141	656
2141	395
2141	624
2142	316
2142	693
2142	549
2142	582
2143	663
2143	564
2143	111
2143	634
2143	632
2143	155
2144	549
2144	381
2144	487
2144	100
2144	583
2144	551
2145	104
2145	687
2145	123
2145	555
2145	423
2145	72
2145	78
2145	512
2146	159
2146	305
2146	396
2147	455
2147	585
2147	256
2147	229
2147	217
2147	304
2148	192
2148	255
2148	207
2149	301
2149	461
2149	646
2149	689
2149	100
2149	269
2150	696
2150	626
2150	426
2150	551
2150	362
2150	650
2151	627
2151	690
2151	480
2151	338
2151	73
2152	241
2152	584
2152	360
2152	207
2152	576
2152	483
2153	442
2153	301
2153	689
2153	461
2153	275
2153	537
2154	628
2154	693
2154	156
2154	302
2154	296
2154	534
2155	662
2155	597
2155	440
2155	253
2155	173
2155	210
2156	89
2156	447
2156	648
2156	274
2156	409
2156	484
2156	71
2156	477
2156	263
2157	124
2157	288
2157	639
2157	79
2157	106
2158	514
2158	116
2158	132
2158	618
2158	277
2158	83
2158	400
2159	545
2159	541
2159	392
2159	457
2159	345
2160	492
2160	527
2160	674
2160	633
2160	76
2160	439
2160	567
2161	465
2161	648
2161	406
2161	70
2161	187
2162	106
2162	176
2162	215
2162	608
2162	687
2162	289
2162	172
2163	217
2163	344
2163	626
2164	227
2164	624
2164	395
2164	258
2164	539
2164	656
2165	685
2165	424
2166	696
2166	379
2167	508
2167	317
2167	683
2167	546
2167	291
2167	534
2167	671
2168	585
2168	192
2168	458
2168	568
2168	626
2169	468
2169	422
2169	179
2170	284
2170	430
2171	350
2171	391
2171	270
2171	342
2171	448
2172	135
2172	407
2172	276
2173	580
2173	636
2173	66
2173	343
2173	320
2174	665
2174	620
2174	662
2175	253
2175	322
2175	331
2175	660
2175	484
2175	210
2176	514
2176	322
2176	93
2176	468
2176	244
2176	536
2176	94
2177	204
2177	543
2177	146
2177	317
2177	667
2178	620
2178	76
2178	462
2178	381
2178	631
2179	615
2179	256
2179	207
2180	548
2180	672
2180	413
2180	219
2181	601
2181	120
2181	307
2182	139
2182	622
2182	589
2183	490
2183	483
2183	584
2183	689
2183	427
2183	591
2184	609
2184	588
2184	316
2185	205
2185	582
2185	126
2186	162
2186	405
2186	539
2186	462
2186	653
2186	372
2186	117
2187	211
2187	465
2187	469
2188	556
2188	522
2188	550
2188	115
2189	483
2189	462
2189	304
2189	584
2189	250
2190	83
2190	277
2190	400
2190	474
2190	534
2191	400
2191	116
2191	628
2192	685
2192	630
2192	285
2192	465
2192	321
2192	623
2192	583
2193	363
2193	126
2193	88
2194	64
2194	557
2194	112
2194	125
2194	98
2195	392
2195	345
2195	275
2195	581
2195	420
2196	338
2196	253
2196	554
2197	111
2197	536
2197	124
2197	112
2198	641
2198	513
2198	123
2198	642
2198	177
2198	399
2199	541
2199	581
2199	485
2199	160
2199	457
2200	561
2200	153
2200	205
2200	486
2200	661
2201	528
2201	345
2201	325
2201	526
2201	625
2201	85
2201	274
2201	581
2201	223
2202	391
2202	618
2202	648
2202	89
2203	490
2203	466
2203	594
2203	65
2204	644
2204	252
2204	686
2204	397
2205	197
2205	486
2205	372
2205	651
2205	140
2205	531
2205	117
2205	624
2206	445
2206	127
2206	76
2206	443
2207	694
2207	502
2207	633
2208	344
2208	92
2208	326
2208	458
2208	675
2208	217
2209	214
2209	414
2209	324
2209	624
2209	509
2209	637
2210	641
2210	687
2210	74
2210	556
2210	635
2210	423
2211	528
2211	226
2211	394
2211	275
2211	388
2211	457
2211	485
2212	197
2212	227
2212	624
2212	272
2213	533
2213	314
2213	527
2213	154
2213	572
2213	107
2214	618
2214	126
2214	133
2214	291
2214	132
2215	121
2215	630
2215	252
2215	280
2215	390
2215	648
2216	179
2216	314
2216	208
2216	664
2216	261
2216	592
2216	135
2216	62
2217	491
2217	223
2217	85
2217	545
2217	325
2217	394
2217	139
2218	469
2218	328
2218	295
2218	675
2218	581
2218	183
2219	441
2219	261
2219	247
2219	193
2220	338
2220	322
2220	529
2220	620
2221	81
2221	496
2221	542
2221	273
2221	588
2221	673
2222	556
2222	414
2222	123
2222	393
2222	513
2222	313
2222	670
2222	212
2223	237
2223	632
2223	288
2224	653
2224	71
2224	409
2224	447
2224	274
2224	105
2225	465
2225	381
2225	469
2225	682
2225	180
2226	615
2226	99
2226	256
2226	386
2226	266
2226	675
2226	304
2226	229
2226	326
2227	190
2227	652
2227	670
2227	201
2227	517
2227	174
2228	424
2228	202
2228	128
2229	193
2229	450
2229	592
2229	204
2229	60
2229	407
2229	107
2230	202
2230	388
2230	160
2230	345
2230	205
2231	199
2231	440
2232	155
2232	111
2232	584
2232	439
2232	472
2232	370
2232	564
2233	74
2233	215
2233	313
2234	341
2234	621
2234	88
2234	496
2234	211
2235	485
2235	545
2235	164
2235	388
2235	491
2235	223
2235	420
2236	147
2236	492
2236	321
2236	567
2236	574
2236	679
2237	693
2237	316
2237	77
2237	582
2237	519
2238	648
2238	187
2238	186
2238	211
2239	317
2239	592
2239	148
2239	242
2239	664
2239	533
2239	261
2239	59
2240	116
2240	126
2240	400
2241	689
2241	504
2241	634
2241	472
2241	696
2241	79
2242	177
2242	399
2242	212
2242	641
2243	510
2243	122
2243	350
2243	87
2243	624
2244	701
2244	691
2244	578
2244	564
2244	155
2245	92
2245	568
2245	284
2245	386
2245	455
2246	150
2246	307
2246	243
2247	496
2247	341
2247	655
2247	276
2247	71
2247	76
2247	521
2248	552
2248	307
2248	691
2248	400
2248	120
2249	632
2249	496
2249	320
2249	276
2250	291
2250	508
2250	103
2250	335
2251	332
2251	248
2252	460
2252	445
2252	122
2252	258
2252	417
2253	612
2253	330
2253	648
2253	547
2253	211
2253	143
2253	100
2254	256
2254	447
2254	260
2255	567
2255	393
2255	631
2255	633
2255	574
2255	381
2256	385
2256	517
2256	271
2256	691
2257	372
2257	531
2257	672
2257	81
2258	486
2258	81
2258	372
2258	466
2258	496
2259	212
2259	652
2259	128
2259	190
2260	304
2260	640
2260	618
2261	629
2261	349
2262	226
2262	457
2262	139
2262	491
2262	625
2262	485
2262	274
2263	362
2263	379
2263	634
2263	382
2263	684
2264	184
2264	414
2264	506
2264	674
2264	107
2265	405
2265	662
2265	530
2265	596
2265	447
2266	335
2266	497
2266	239
2266	556
2266	532
2266	53
2267	184
2267	367
2267	354
2267	538
2267	674
2267	541
2267	107
2268	648
2268	109
2268	391
2268	680
2269	84
2269	315
2269	80
2269	382
2269	134
2270	210
2270	484
2270	396
2270	617
2270	265
2270	449
2271	131
2271	423
2271	635
2271	242
2271	500
2272	274
2272	359
2272	583
2272	434
2273	469
2273	686
2273	532
2273	53
2273	481
2273	581
2274	279
2274	633
2274	512
2275	193
2275	182
2275	619
2275	591
2276	334
2276	592
2276	92
2276	252
2277	302
2277	507
2277	132
2277	618
2277	156
2278	135
2278	204
2278	208
2278	287
2278	671
2278	179
2279	558
2279	138
2280	205
2280	394
2280	622
2280	485
2281	417
2281	510
2281	445
2281	76
2281	678
2282	550
2282	635
2282	279
2282	74
2282	423
2283	496
2283	624
2284	493
2284	64
2284	237
2285	579
2285	405
2285	364
2285	108
2285	543
2285	447
2286	74
2286	642
2286	215
2286	423
2287	255
2287	217
2287	430
2288	687
2288	614
2288	437
2288	172
2288	203
2288	216
2288	449
2289	442
2289	590
2289	389
2290	556
2290	641
2290	555
2291	163
2291	587
2291	395
2291	118
2292	85
2292	545
2292	420
2292	457
2293	610
2293	541
2293	538
2293	651
2293	354
2294	443
2294	127
2294	624
2294	277
2295	196
2295	611
2295	558
2296	150
2296	519
2296	580
2296	599
2297	135
2297	276
2297	348
2297	385
2297	154
2298	330
2298	648
2298	352
2299	377
2299	202
2299	164
2299	226
2300	477
2300	579
2300	231
2301	674
2301	399
2302	653
2302	115
2302	544
2302	286
2302	669
2302	478
2303	306
2303	117
2303	258
2303	350
2303	405
2303	227
2304	478
2304	75
2304	283
2304	620
2304	660
2305	487
2305	280
2305	143
2305	648
2305	397
2305	469
2305	467
2305	549
2306	531
2306	405
2306	258
2307	316
2307	428
2307	638
2307	330
2307	304
2307	283
2308	210
2308	660
2308	331
2309	491
2309	274
2309	415
2309	226
2309	139
2310	227
2310	466
2310	486
2310	197
2310	93
2310	656
2311	369
2311	548
2311	125
2311	453
2311	222
2312	395
2312	296
2312	288
2312	286
2313	666
2313	181
2313	554
2313	552
2313	110
2314	533
2314	146
2314	654
2314	450
2314	261
2315	218
2315	365
2315	342
2315	285
2315	270
2315	311
2316	115
2316	614
2316	286
2316	120
2317	272
2317	432
2317	414
2317	182
2318	599
2318	591
2319	656
2319	395
2319	140
2319	197
2319	131
2319	174
2319	248
2319	258
2319	405
2320	645
2320	198
2320	182
2320	247
2320	658
2320	354
2320	450
2321	309
2321	264
2321	590
2321	338
2321	547
2322	458
2322	615
2322	192
2322	304
2322	92
2322	207
2323	623
2323	186
2324	577
2324	324
2324	664
2324	571
2324	599
2324	425
2325	490
2325	625
2325	698
2325	51
2325	81
2326	566
2326	545
2326	191
2326	636
2327	107
2327	543
2327	664
2327	247
2328	644
2328	608
2328	211
2328	381
2328	612
2328	465
2328	406
2328	186
2329	455
2329	612
2330	517
2330	668
2330	191
2330	566
2331	545
2331	212
2331	489
2331	128
2332	156
2332	443
2332	474
2332	519
2332	514
2332	302
2332	116
2333	628
2333	296
2333	618
2333	307
2333	277
2333	150
2333	349
2334	509
2334	92
2334	217
2335	273
2335	542
2335	131
2335	395
2335	197
2336	614
2336	148
2336	107
2336	208
2336	441
2336	193
2337	111
2337	493
2338	304
2338	326
2338	344
2338	659
2338	192
2339	667
2339	204
2339	60
2339	592
2339	146
2340	556
2340	335
2340	481
2340	565
2340	53
2340	573
2340	581
2340	469
2341	497
2341	411
2341	328
2341	335
2341	675
2341	581
2342	89
2342	263
2342	109
2342	71
2342	137
2343	390
2343	321
2343	211
2343	465
2343	608
2343	686
2343	180
2344	552
2344	197
2344	151
2344	442
2345	100
2345	252
2345	69
2345	467
2345	648
2345	469
2346	672
2346	542
2346	306
2347	539
2347	542
2347	162
2347	332
2348	321
2348	225
2348	549
2349	681
2349	388
2349	325
2349	139
2349	377
2349	345
2350	653
2350	539
2350	462
2350	273
2350	174
2350	162
2350	258
2351	673
2351	656
2351	496
2351	131
2352	659
2352	615
2352	426
2352	207
2352	118
2353	694
2353	313
2353	525
2353	55
2353	278
2354	510
2354	544
2354	138
2354	55
2354	611
2354	323
2354	449
2354	471
2355	478
2355	395
2355	608
2356	75
2356	396
2356	605
2356	478
2357	287
2357	450
2358	112
2358	175
2358	255
2359	582
2359	140
2359	117
2359	624
2360	307
2360	150
2360	628
2360	349
2360	77
2360	618
2360	507
2361	83
2361	643
2361	79
2362	227
2362	332
2362	350
2362	273
2362	486
2362	140
2363	304
2363	576
2363	584
2363	326
2363	268
2364	419
2364	298
2364	327
2364	601
2364	400
2364	470
2365	242
2365	367
2365	107
2365	247
2365	533
2366	240
2366	283
2366	304
2366	428
2367	577
2367	154
2367	624
2367	214
2367	73
2367	433
2367	129
2368	592
2368	126
2369	371
2369	448
2369	145
2369	117
2369	342
2370	493
2370	155
2370	591
2370	129
2370	504
2370	536
2371	454
2371	146
2371	654
2371	533
2372	686
2372	252
2372	549
2372	69
2372	390
2372	406
2372	186
2372	121
2373	211
2373	540
2373	355
2373	438
2373	298
2374	487
2374	252
2375	334
2375	373
2375	599
2375	631
2375	571
2375	590
2375	624
2376	468
2376	389
2376	553
2376	566
2376	682
2376	636
2377	475
2377	177
2377	522
2378	657
2378	549
2378	333
2378	539
2378	256
2378	77
2378	331
2379	477
2379	648
2379	109
2379	447
2379	618
2379	680
2380	414
2380	313
2380	215
2380	633
2381	423
2381	404
2381	195
2381	182
2381	621
2382	522
2382	550
2382	463
2382	72
2382	641
2383	451
2383	590
2383	533
2384	661
2384	226
2384	205
2384	305
2385	525
2385	633
2385	185
2385	213
2385	91
2385	69
2385	64
2385	254
2386	681
2386	345
2386	205
2386	581
2387	312
2387	484
2387	383
2387	421
2388	632
2388	639
2388	663
2388	689
2388	504
2388	79
2389	662
2389	322
2390	637
2390	480
2390	338
2390	617
2390	662
2390	173
2390	646
2390	529
2390	666
2391	265
2391	594
2391	409
2391	253
2391	322
2391	511
2391	660
2391	484
2392	110
2392	690
2393	489
2393	517
2393	102
2393	682
2393	128
2393	212
2393	566
2393	612
2393	201
2394	326
2394	426
2394	207
2394	509
2394	229
2395	623
2395	187
2395	121
2396	411
2396	68
2396	396
2396	603
2396	205
2397	76
2397	460
2397	350
2397	443
2397	87
2398	447
2398	219
2398	548
2398	623
2398	225
2398	408
2399	162
2399	93
2399	273
2399	332
2399	466
2399	405
2400	182
2400	363
2400	184
2400	541
2401	374
2401	534
2401	399
2401	671
2401	539
2402	694
2402	99
2402	659
2403	83
2403	123
2403	511
2403	302
2404	215
2404	475
2404	635
2404	435
2404	212
2405	294
2405	463
2405	687
2405	513
2406	237
2406	257
2406	269
2406	207
2406	287
2406	461
2406	442
2407	544
2407	440
2407	395
2407	296
2407	136
2407	478
2407	669
2408	208
2408	146
2408	107
2409	693
2409	377
2409	384
2409	229
2409	85
2409	58
2410	177
2410	670
2410	512
2410	423
2410	72
2411	472
2411	98
2411	237
2411	124
2411	561
2411	79
2412	64
2412	105
2412	370
2412	663
2412	155
2412	490
2412	584
2413	227
2413	673
2413	131
2413	531
2413	496
2414	653
2414	162
2414	624
2414	332
2415	622
2415	392
2415	325
2415	581
2415	526
2416	664
2416	407
2416	135
2416	208
2416	572
2417	177
2417	128
2417	183
2417	126
2418	340
2418	349
2418	243
2418	628
2418	580
2418	302
2419	458
2419	585
2419	659
2419	455
2420	99
2420	92
2420	304
2420	509
2420	207
2421	298
2421	600
2421	400
2421	696
2421	628
2421	438
2422	584
2422	288
2422	370
2423	400
2423	693
2423	599
2423	580
2424	195
2424	131
2424	574
2424	193
2424	500
2424	642
2424	194
2425	317
2425	671
2425	615
2425	683
2425	508
2425	401
2425	76
2425	627
2426	294
2426	522
2426	399
2426	115
2426	414
2426	104
2427	577
2427	684
2427	129
2427	373
2428	512
2428	633
2428	177
2428	313
2428	423
2428	641
2428	642
2428	522
2428	123
2429	481
2429	675
2429	565
2429	581
2429	53
2429	469
2430	344
2430	175
2430	377
2430	101
2431	410
2431	555
2431	334
2431	315
2431	252
2432	393
2432	74
2432	670
2432	72
2433	392
2433	457
2433	528
2433	226
2433	160
2433	202
2433	420
2433	325
2434	88
2434	628
2434	132
2434	126
2435	339
2435	547
2435	64
2435	502
2436	376
2436	112
2436	689
2436	632
2436	370
2437	479
2437	672
2437	260
2437	447
2437	225
2437	432
2438	492
2438	393
2438	674
2438	399
2438	457
2438	679
2439	261
2439	533
2439	208
2439	657
2439	204
2440	443
2440	557
2440	235
2441	612
2441	352
2441	252
2442	672
2442	548
2442	225
2442	447
2443	632
2443	439
2443	129
2443	125
2443	584
2443	429
2443	288
2443	111
2443	98
2444	446
2444	475
2444	530
2444	284
2444	343
2445	545
2445	85
2445	415
2446	525
2446	475
2447	479
2447	219
2447	408
2447	548
2447	413
2448	407
2448	199
2448	286
2448	440
2448	544
2448	614
2448	669
2449	334
2449	431
2449	658
2449	579
2449	252
2449	171
2449	402
2449	555
2450	589
2450	485
2450	274
2451	626
2451	217
2451	694
2451	386
2451	426
2451	304
2451	92
2452	227
2452	624
2453	350
2453	227
2453	235
2453	510
2453	678
2453	417
2454	547
2454	685
2454	469
2455	588
2455	248
2455	162
2456	541
2456	139
2456	457
2456	528
2456	394
2456	160
2456	202
2456	681
2457	512
2457	313
2457	393
2457	215
2458	289
2458	210
2458	661
2458	54
2458	266
2458	172
2458	106
2459	106
2459	220
2459	452
2459	518
2459	435
2459	614
2460	422
2460	90
2460	178
2460	464
2461	690
2461	407
2461	488
2461	379
2461	130
2461	378
2462	376
2462	125
2462	493
2462	155
2463	442
2463	257
2463	123
2463	301
2464	100
2464	461
2464	83
2464	253
2465	207
2465	659
2465	304
2466	522
2466	642
2467	115
2467	163
2467	535
2467	669
2467	265
2468	422
2468	322
2468	94
2468	536
2468	93
2469	528
2469	274
2469	205
2469	589
2469	139
2470	332
2470	631
2470	134
2471	338
2471	297
2471	533
2471	264
2471	359
2471	451
2471	495
2471	454
2472	357
2472	504
2472	584
2473	217
2473	426
2474	423
2474	115
2474	104
2474	414
2474	550
2475	113
2475	440
2475	614
2475	372
2475	629
2475	510
2475	138
2476	381
2476	399
2476	567
2476	633
2477	116
2477	307
2477	580
2478	500
2478	567
2478	304
2479	691
2479	303
2479	517
2479	106
2479	361
2479	482
2480	682
2480	352
2480	644
2480	469
2481	397
2481	211
2481	121
2481	180
2481	280
2481	424
2482	651
2482	462
2482	531
2482	582
2483	468
2483	72
2483	389
2483	102
2483	455
2483	174
2484	372
2484	196
2484	314
2484	579
2484	510
2484	55
2484	113
2485	118
2485	326
2485	430
2485	659
2486	150
2486	628
2486	618
2486	519
2486	116
2487	509
2487	245
2488	164
2488	313
2488	502
2488	69
2488	633
2488	308
2488	254
2488	379
2489	154
2489	441
2489	667
2489	107
2489	592
2490	424
2490	506
2490	202
2490	126
2490	312
2491	372
2491	258
2491	131
2492	247
2492	208
2492	533
2493	582
2493	466
2493	531
2493	93
2493	656
2494	77
2494	534
2494	340
2495	415
2495	581
2495	625
2495	202
2495	681
2496	556
2496	212
2496	463
2497	529
2497	478
2497	484
2497	265
2498	136
2498	120
2498	478
2498	653
2498	587
2499	427
2499	288
2499	504
2499	490
2500	557
2500	443
2500	452
2500	678
2501	647
2501	651
2501	538
2501	275
2501	182
2502	72
2502	212
2502	556
2502	435
2502	231
2502	414
2502	633
2502	393
2502	313
2503	76
2503	472
2503	539
2503	103
2503	546
2504	655
2504	607
2504	320
2504	515
2504	636
2504	496
2504	200
2504	621
2504	88
2505	336
2505	676
2505	595
2505	345
2505	382
2505	492
2506	224
2506	592
2506	619
2506	693
2506	549
2506	370
2507	174
2507	273
2507	332
2507	306
2507	405
2508	463
2508	279
2508	633
2508	635
2508	687
2509	475
2509	598
2509	231
2509	215
2509	177
2509	72
2509	115
2510	92
2510	658
2510	119
2510	144
2510	555
2510	315
2510	592
2511	388
2511	625
2511	545
2511	392
2511	622
2512	438
2512	361
2512	303
2512	622
2512	412
2513	590
2513	379
2514	307
2514	438
2514	601
2514	552
2515	435
2515	212
2515	463
2515	279
2515	512
2515	115
2515	104
2516	294
2516	512
2516	463
2516	670
2517	469
2517	487
2517	352
2517	424
2517	69
2517	685
2518	670
2518	517
2518	650
2518	668
2518	652
2519	100
2519	397
2519	138
2519	467
2519	465
2519	644
2520	623
2520	390
2520	252
2521	321
2521	462
2521	457
2521	567
2521	527
2522	654
2522	290
2522	626
2522	685
2522	387
2522	379
2523	294
2523	423
2523	123
2523	231
2523	598
2524	251
2524	479
2524	260
2524	219
2524	447
2525	111
2525	663
2525	79
2525	357
2526	599
2526	660
2526	194
2526	635
2527	648
2527	409
2527	89
2527	618
2527	263
2528	467
2528	321
2529	433
2529	73
2529	154
2529	599
2530	659
2530	99
2530	229
2530	207
2531	357
2531	634
2531	111
2531	112
2531	370
2531	105
2532	493
2532	427
2532	663
2532	439
2532	472
2532	219
2533	561
2533	357
2533	634
2533	124
2533	564
2533	155
2534	142
2534	611
2534	96
2534	196
2534	314
2535	582
2535	673
2535	496
2535	651
2535	174
2536	276
2536	385
2536	450
2536	317
2536	135
2536	667
2536	60
2536	543
2536	146
2537	138
2537	604
2537	143
2538	335
2538	490
2538	557
2538	106
2538	439
2538	288
2539	681
2539	325
2539	202
2540	649
2540	262
2540	86
2540	299
2540	108
2540	405
2541	503
2541	117
2541	392
2541	132
2541	270
2542	342
2542	448
2542	391
2542	371
2542	285
2543	115
2543	435
2543	212
2543	294
2543	642
2544	598
2544	522
2544	104
2544	279
2544	215
2544	512
2545	632
2545	451
2545	454
2545	495
2546	399
2546	642
2546	435
2546	414
2546	123
2546	512
2547	458
2547	568
2547	255
2547	509
2548	252
2548	143
2548	121
2548	397
2548	70
2548	608
2548	465
2549	252
2549	378
2549	477
2549	171
2550	525
2550	348
2550	275
2551	242
2551	204
2551	154
2551	664
2551	314
2552	274
2552	223
2552	205
2552	394
2552	388
2552	625
2552	589
2553	255
2553	458
2553	344
2553	217
2553	326
2553	99
2554	393
2554	463
2554	435
2554	522
2554	104
2554	215
2554	231
2555	614
2555	428
2555	210
2555	452
2555	172
2555	636
2555	216
2556	556
2556	469
2556	295
2556	675
2557	107
2557	287
2557	614
2557	247
2558	278
2558	259
2558	397
2558	236
2559	131
2559	673
2559	273
2559	350
2559	332
2559	117
2559	542
2559	174
2560	208
2560	53
2560	204
2560	592
2560	348
2560	407
2561	291
2561	277
2561	599
2562	72
2562	177
2562	294
2562	212
2563	258
2563	542
2563	272
2563	531
2563	395
2563	227
2564	219
2564	672
2564	256
2564	225
2564	413
2565	69
2565	682
2565	487
2565	608
2565	100
2565	138
2565	686
2565	381
2566	392
2566	345
2566	589
2566	545
2567	642
2567	313
2567	123
2567	475
2567	512
2567	279
2568	59
2568	242
2568	407
2568	179
2568	654
2569	627
2569	662
2569	253
2569	75
2570	427
2570	129
2570	124
2570	219
2570	98
2570	472
2571	128
2571	630
2571	606
2571	415
2571	463
2572	585
2572	194
2572	170
2572	599
2572	404
2572	246
2573	554
2573	130
2573	113
2573	581
2573	488
2573	59
2574	397
2574	180
2574	424
2575	681
2575	275
2575	457
2575	589
2575	160
2575	139
2576	343
2576	655
2576	522
2576	505
2576	636
2577	210
2577	396
2577	617
2577	312
2578	285
2578	218
2578	192
2578	350
2578	692
2578	132
2579	493
2579	429
2579	288
2580	210
2580	484
2580	594
2580	478
2581	486
2581	653
2581	651
2581	93
2581	332
2581	131
2581	531
2581	248
2581	673
2582	325
2582	223
2582	394
2583	283
2583	529
2583	73
2583	331
2583	210
2583	312
2583	75
2583	594
2583	617
2584	177
2584	555
2584	522
2584	414
2585	542
2585	174
2585	656
2585	93
2585	582
2586	592
2586	614
2586	60
2586	242
2586	135
2586	657
2586	208
2587	507
2587	151
2587	534
2588	69
2588	608
2588	487
2588	648
2589	367
2589	657
2590	386
2590	99
2590	92
2590	626
2591	577
2591	256
2592	623
2592	225
2592	413
2592	672
2593	62
2593	533
2593	572
2593	407
2593	193
2593	367
2594	432
2594	674
2595	228
2595	629
2595	614
2595	96
2596	625
2596	526
2596	415
2596	274
2596	226
2597	551
2597	686
2597	469
2597	685
2597	69
2598	244
2598	179
2598	61
2598	90
2598	94
2598	322
2599	58
2599	384
2599	223
2599	486
2599	339
2599	693
2599	229
2599	626
2600	72
2600	212
2600	399
2600	513
2600	414
2600	512
2600	633
2601	248
2601	273
2601	462
2601	350
2602	326
2602	266
2603	312
2603	356
2603	183
2604	177
2604	507
2604	157
2604	424
2604	74
2605	99
2605	344
2605	229
2605	520
2605	455
2605	615
2605	118
2605	326
2606	112
2606	632
2606	376
2607	291
2607	133
2607	116
2607	83
2607	534
2608	611
2608	471
2609	376
2609	112
2609	79
2610	152
2610	319
2610	98
2610	486
2610	193
2611	564
2611	632
2612	641
2612	279
2612	670
2613	524
2613	336
2613	345
2613	353
2613	169
2613	166
2613	351
2613	633
2614	601
2614	355
2614	636
2615	192
2615	568
2615	509
2615	426
2615	304
2615	694
2615	430
2616	608
2616	682
2616	406
2616	612
2617	695
2617	267
2617	491
2617	403
2617	418
2617	259
2617	173
2617	189
2618	256
2618	448
2618	284
2618	255
2618	92
2618	229
2618	520
2618	626
2619	316
2619	582
2619	657
2619	126
2620	166
2620	336
2620	676
2620	353
2620	382
2620	595
2621	574
2621	340
2621	585
2622	556
2622	424
2622	469
2622	361
2623	394
2623	202
2623	223
2623	377
2623	681
2624	634
2624	504
2624	536
2624	106
2624	219
2624	472
2625	519
2625	77
2625	224
2625	205
2625	549
2626	542
2626	395
2626	405
2626	131
2627	653
2627	89
2627	618
2627	447
2627	137
2628	409
2628	263
2628	680
2628	491
2628	648
2628	447
2628	105
2629	265
2629	115
2629	641
2629	163
2629	653
2630	574
2630	195
2631	98
2631	288
2631	472
2631	376
2631	216
2631	219
2631	634
2631	124
2632	627
2632	210
2632	597
2633	185
2633	679
2633	660
2633	236
2633	259
2634	674
2634	147
2634	600
2634	439
2634	527
2635	313
2635	164
2635	185
2635	587
2636	106
2636	482
2636	281
2636	213
2637	579
2637	113
2637	611
2637	372
2637	142
2637	196
2638	279
2638	642
2638	598
2638	104
2638	212
2638	550
2638	414
2639	395
2639	669
2639	478
2639	163
2639	641
2640	404
2640	402
2640	170
2640	195
2640	423
2640	242
2640	247
2640	621
2641	699
2641	605
2641	500
2641	304
2641	114
2641	221
2642	420
2642	491
2642	202
2642	345
2642	681
2642	526
2642	226
2643	663
2643	456
2643	630
2643	183
2643	406
2643	506
2643	149
2644	543
2644	364
2644	621
2644	526
2645	322
2645	265
2645	662
2645	666
2645	690
2645	480
2646	510
2646	544
2646	449
2646	230
2646	629
2647	212
2647	72
2647	104
2647	475
2647	635
2647	687
2647	522
2647	215
2648	73
2648	75
2648	594
2648	421
2648	331
2648	597
2648	440
2648	627
2649	509
2649	282
2650	326
2650	92
2650	455
2650	458
2650	615
2650	118
2650	448
2651	512
2651	231
2651	177
2651	463
2651	633
2652	80
2652	626
2652	366
2653	467
2653	321
2653	361
2653	630
2653	187
2653	352
2653	608
2654	458
2654	344
2654	192
2654	675
2655	441
2655	450
2655	146
2655	614
2655	204
2655	667
2655	407
2656	302
2656	150
2656	243
2656	534
2656	580
2656	507
2656	88
2656	132
2657	485
2657	274
2657	528
2657	526
2657	491
2657	541
2658	685
2658	630
2658	280
2658	465
2658	549
2658	186
2658	330
2659	86
2659	475
2659	662
2659	405
2659	530
2659	262
2659	108
2660	247
2660	62
2660	407
2660	450
2660	261
2660	385
2660	671
2660	135
2660	592
2661	562
2661	256
2661	205
2661	519
2661	333
2662	383
2662	620
2662	265
2662	449
2662	210
2663	74
2663	104
2663	212
2663	215
2663	435
2664	315
2664	119
2665	462
2665	250
2665	82
2665	639
2665	279
2666	572
2666	247
2666	208
2666	60
2666	441
2666	533
2666	667
2667	630
2667	644
2667	330
2667	467
2667	70
2668	302
2668	654
2668	76
2668	237
2669	646
2669	253
2669	275
2669	287
2669	76
2670	227
2670	350
2670	277
2670	235
2670	417
2670	624
2671	93
2671	248
2671	486
2671	272
2671	197
2672	449
2672	627
2672	646
2672	409
2673	545
2673	139
2673	589
2673	622
2673	223
2674	274
2674	618
2674	89
2675	536
2675	483
2675	216
2675	696
2675	64
2675	427
2676	243
2676	307
2676	618
2676	349
2676	156
2677	326
2677	675
2677	256
2677	229
2678	414
2678	633
2678	115
2678	475
2678	598
2679	382
2679	626
2679	290
2679	601
2679	684
2679	551
2680	466
2680	248
2681	693
2681	132
2681	514
2681	534
2681	340
2682	545
2682	485
2682	581
2682	388
2682	274
2683	107
2683	367
2683	407
2683	148
2684	139
2684	226
2684	160
2684	491
2684	377
2684	164
2684	581
2685	686
2685	604
2685	685
2685	424
2685	381
2685	583
2685	469
2686	177
2686	189
2686	162
2686	259
2687	150
2687	443
2687	243
2687	693
2688	549
2688	397
2688	186
2688	648
2688	225
2688	612
2688	547
2689	89
2689	680
2689	618
2690	475
2690	512
2690	212
2691	334
2691	309
2691	632
2691	590
2691	359
2691	693
2692	654
2692	62
2692	441
2692	317
2692	60
2692	527
2692	208
2692	667
2693	665
2693	409
2693	660
2693	605
2693	637
2693	312
2693	84
2694	467
2694	390
2694	406
2694	352
2694	583
2695	509
2695	380
2695	695
2695	243
2695	495
2695	418
2696	74
2696	231
2696	556
2697	138
2697	544
2697	535
2697	204
2697	296
2697	60
2698	177
2698	663
2698	507
2699	111
2699	536
2699	483
2699	564
2700	399
2700	435
2700	670
2700	633
2701	60
2701	657
2701	654
2701	441
2702	62
2702	657
2702	204
2702	614
2703	631
2703	425
2703	262
2703	129
2703	590
2703	373
2704	491
2704	139
2704	388
2704	223
2704	226
2705	374
2705	124
2705	586
2706	306
2706	505
2706	636
2707	600
2707	120
2707	636
2707	696
2707	540
2707	307
2708	381
2708	225
2708	143
2708	211
2708	406
2709	448
2709	392
2710	52
2710	297
2710	85
2710	395
2710	70
2710	185
2710	659
2710	236
2711	326
2711	229
2711	585
2711	99
2711	430
2711	509
2711	448
2712	618
2712	88
2712	514
2713	642
2713	492
2713	351
2713	595
2713	353
2713	382
2714	226
2714	97
2714	411
2714	661
2714	439
2715	226
2715	392
2715	388
2715	625
2715	223
2715	205
2715	541
2715	457
2716	452
2716	510
2716	678
2716	258
2716	127
2716	557
2717	633
2717	382
2717	676
2717	524
2717	351
2717	642
2717	336
2718	263
2718	137
2718	274
2718	484
2718	447
2718	491
2718	391
2719	361
2719	551
2719	252
2719	180
2719	630
2720	105
2720	124
2720	370
2720	490
2721	313
2721	78
2721	513
2721	231
2721	72
2722	627
2722	331
2722	84
2722	253
2723	468
2723	201
2724	270
2724	371
2724	132
2724	285
2725	484
2725	409
2725	109
2725	274
2725	391
2725	89
2726	294
2726	670
2726	115
2726	463
2726	475
2726	556
2726	177
2726	435
2727	417
2727	350
2727	510
2727	235
2727	122
2728	247
2728	572
2728	60
2728	107
2728	135
2729	133
2729	443
2729	400
2729	296
2730	528
2730	415
2730	345
2731	80
2731	84
2731	387
2731	684
2731	631
2732	312
2732	409
2732	594
2732	627
2732	617
2733	160
2733	581
2733	528
2733	392
2733	223
2734	423
2734	402
2734	574
2734	660
2735	296
2735	156
2736	608
2736	321
2736	330
2736	604
2736	138
2736	630
2736	70
2737	650
2737	545
2737	212
2738	456
2738	144
2738	593
2738	128
2739	272
2739	496
2740	326
2740	284
2740	455
2740	659
2741	374
2741	76
2742	690
2742	75
2742	312
2743	618
2743	653
2743	491
2743	447
2743	648
2743	391
2743	409
2743	680
2744	215
2744	294
2745	428
2745	106
2745	289
2745	673
2745	598
2745	81
2745	172
2746	565
2746	599
2746	255
2746	339
2746	112
2746	377
2747	513
2747	598
2747	435
2747	215
2747	177
2747	670
2747	522
2748	79
2748	504
2748	639
2748	663
2749	266
2749	344
2749	284
2749	192
2750	539
2750	496
2750	258
2750	197
2750	653
2751	321
2751	69
2751	623
2751	397
2752	113
2752	311
2752	357
2753	487
2753	630
2753	551
2753	381
2753	469
2753	547
2753	321
2753	612
2754	291
2754	534
2754	126
2754	88
2755	580
2755	307
2755	534
2755	362
2755	628
2755	133
2755	400
2756	557
2756	634
2756	79
2756	536
2757	206
2757	625
2757	545
2757	51
2758	567
2758	618
2758	186
2758	295
2758	505
2758	315
2758	316
2759	630
2759	361
2759	397
2759	390
2759	469
2759	69
2760	350
2760	272
2760	466
2760	539
2760	624
2760	656
2761	361
2761	682
2762	133
2762	580
2762	534
2763	687
2763	641
2763	475
2763	513
2764	59
2764	543
2764	276
2764	533
2764	572
2765	334
2765	538
2765	579
2765	119
2765	171
2765	231
2766	684
2766	332
2766	80
2766	84
2767	424
2767	406
2768	435
2768	522
2769	449
2769	115
2769	440
2769	96
2769	230
2770	583
2770	644
2770	612
2770	180
2770	551
2771	525
2771	270
2771	502
2771	75
2771	69
2772	483
2772	125
2772	335
2772	64
2772	561
2773	639
2773	483
2773	155
2773	472
2773	129
2773	125
2774	455
2774	118
2774	585
2774	192
2774	386
2774	92
2775	485
2775	415
2775	394
2775	275
2776	406
2776	225
2776	70
2776	644
2776	583
2776	121
2776	186
2776	469
2777	492
2777	524
2777	336
2777	353
2777	344
2778	536
2778	237
2778	155
2779	330
2779	623
2779	612
2779	352
2780	484
2780	124
2780	374
2780	235
2780	255
2780	230
2780	586
2781	274
2781	625
2781	581
2781	394
2782	635
2782	74
2782	670
2782	399
2782	177
2782	215
2782	104
2782	78
2783	298
2783	552
2783	470
2783	211
2784	190
2784	102
2784	566
2784	545
2784	612
2784	212
2785	51
2785	259
2785	248
2785	490
2785	236
2785	81
2786	428
2786	304
2786	292
2786	330
2786	114
2787	466
2787	278
2787	660
2787	236
2788	672
2788	479
2788	499
2788	225
2788	432
2788	413
2788	256
2788	219
2789	92
2789	229
2790	104
2790	215
2790	556
2790	177
2791	386
2791	304
2791	626
2792	408
2792	432
2792	499
2792	219
2792	251
2793	689
2793	439
2793	557
2793	634
2793	129
2794	608
2794	330
2794	211
2794	361
2794	280
2794	648
2794	612
2794	225
2795	274
2795	139
2795	545
2795	164
2795	420
2795	415
2796	148
2796	60
2796	348
2796	242
2796	527
2797	93
2797	539
2797	162
2797	140
2798	62
2798	135
2798	450
2798	146
2798	671
2798	348
2798	107
2798	527
2799	448
2799	455
2799	217
2799	192
2799	430
2799	266
2799	326
2799	626
2799	520
2800	588
2800	496
2800	117
2800	93
2800	542
2800	372
2801	183
2801	538
2801	312
2801	149
2802	256
2802	205
2802	224
2802	582
2802	693
2802	562
2803	417
2803	127
2803	122
2803	443
2803	678
2803	452
2804	100
2804	648
2804	361
2804	424
2804	211
2805	348
2805	60
2805	671
2805	533
2806	534
2806	507
2806	150
2806	243
2807	623
2807	413
2807	479
2807	548
2808	648
2808	685
2808	100
2808	406
2808	211
2808	547
2809	659
2809	217
2809	615
2809	509
2810	325
2810	275
2810	589
2810	541
2810	420
2811	574
2811	591
2811	621
2811	500
2812	493
2812	436
2812	484
2812	337
2812	588
2812	230
2813	187
2813	225
2813	469
2813	547
2813	612
2814	427
2814	429
2814	472
2814	357
2814	111
2814	557
2814	663
2814	155
2815	581
2815	450
2815	181
2815	310
2815	590
2816	472
2816	584
2816	219
2816	439
2816	129
2816	483
2817	211
2817	438
2817	636
2817	400
2817	691
2818	653
2818	131
2818	273
2819	372
2819	466
2819	93
2819	197
2819	350
2819	272
2819	624
2819	332
2820	424
2820	570
2820	565
2820	469
2820	183
2820	53
2820	556
2821	495
2821	140
2821	403
2821	162
2822	226
2822	528
2822	545
2822	622
2823	440
2823	449
2823	311
2823	558
2823	230
2823	550
2824	376
2824	696
2824	370
2824	106
2825	604
2825	424
2825	70
2826	88
2826	277
2826	628
2826	580
2826	307
2826	302
2826	116
2826	132
2827	384
2827	58
2827	486
2827	339
2827	474
2827	666
2827	85
2827	223
2827	626
2828	256
2828	549
2828	333
2828	539
2829	430
2829	284
2829	344
2829	118
2829	509
2829	626
2830	672
2830	624
2830	81
2831	620
2831	660
2831	662
2831	338
2831	331
2831	322
2831	449
2831	409
2832	350
2832	365
2832	145
2832	430
2832	342
2833	440
2833	554
2833	396
2833	283
2834	689
2834	504
2834	98
2834	490
2834	112
2834	536
2834	634
2834	125
2835	593
2835	126
2836	144
2836	352
2836	74
2836	386
2836	593
2836	538
2836	149
2836	312
2837	423
2837	556
2837	633
2837	641
2837	463
2837	123
2837	212
2837	399
2838	146
2838	208
2838	135
2838	107
2838	317
2838	193
2839	491
2839	173
2839	259
2839	418
2839	509
2840	379
2840	339
2840	55
2840	502
2840	270
2841	604
2841	397
2841	549
2841	406
2841	648
2841	252
2841	186
2841	352
2842	391
2842	105
2842	447
2842	89
2842	491
2842	71
2843	128
2843	191
2843	190
2844	641
2844	556
2844	215
2844	423
2844	670
2844	512
2845	197
2845	272
2845	656
2845	174
2846	302
2846	100
2846	238
2847	550
2847	558
2847	138
2847	357
2847	440
2847	230
2848	187
2848	397
2848	252
2848	225
2848	361
2849	686
2849	487
2849	121
2849	583
2850	483
2850	82
2850	104
2850	207
2850	360
2851	344
2851	118
2851	520
2851	284
2851	304
2852	442
2852	275
2852	76
2852	248
2853	662
2853	531
2853	526
2853	677
2854	690
2854	265
2854	253
2854	210
2854	75
2854	312
2854	620
2854	322
2854	637
2855	81
2855	93
2855	372
2855	653
2855	258
2856	548
2856	277
2856	328
2856	315
2857	211
2857	648
2857	487
2857	138
2858	534
2858	362
2858	243
2858	77
2858	599
2859	547
2859	516
2859	587
2859	694
2859	270
2859	278
2860	437
2860	220
2860	687
2860	452
2860	614
2860	176
2860	428
2860	215
2861	104
2861	55
2861	576
2861	462
2862	616
2862	597
2862	627
2862	508
2862	656
2862	76
2863	92
2863	304
2863	192
2863	455
2863	217
2864	180
2864	583
2864	644
2864	397
2864	648
2865	590
2865	113
2865	581
2865	181
2866	690
2866	597
2866	617
2866	646
2867	674
2867	620
2867	321
2867	574
2867	393
2868	627
2868	668
2868	510
2868	90
2869	555
2869	99
2869	679
2869	527
2869	381
2870	693
2870	454
2870	434
2871	349
2871	362
2871	116
2871	443
2871	156
2872	605
2872	480
2872	331
2872	421
2872	594
2873	229
2873	520
2874	480
2874	529
2874	312
2874	478
2874	484
2874	660
2875	662
2875	605
2875	409
2875	265
2876	359
2876	146
2876	654
2876	454
2877	639
2877	376
2877	129
2877	219
2877	357
2877	79
2878	335
2878	125
2878	439
2878	632
2879	160
2879	245
2879	491
2879	495
2880	350
2880	218
2880	692
2881	138
2881	286
2881	476
2881	288
2882	520
2882	343
2882	530
2882	405
2882	525
2882	543
2883	229
2883	599
2883	339
2884	424
2884	280
2884	211
2884	397
2884	686
2884	487
2885	657
2885	333
2885	693
2885	370
2885	421
2886	528
2886	275
2886	394
2886	160
2887	455
2887	430
2887	326
2887	386
2887	448
2888	74
2888	393
2888	231
2888	212
2888	475
2888	463
2888	399
2889	554
2889	478
2889	660
2889	665
2889	529
2890	138
2890	69
2890	70
2891	651
2891	258
2891	248
2891	140
2892	585
2892	326
2892	675
2892	568
2892	615
2893	353
2893	112
2893	693
2893	486
2893	421
2893	135
2893	339
2893	101
2893	599
2894	296
2894	628
2894	150
2894	443
2894	116
2895	364
2895	526
2895	108
2895	447
2895	446
2895	530
2895	596
2895	78
2896	259
2896	465
2896	278
2896	248
2896	545
2897	119
2897	579
2897	231
2897	592
2898	486
2898	405
2898	306
2898	542
2898	651
2898	174
2899	572
2899	441
2900	372
2900	449
2900	230
2900	550
2901	85
2901	485
2901	139
2902	567
2902	147
2902	76
2902	477
2902	631
2902	574
2902	399
2903	691
2903	213
2903	106
2903	155
2903	476
2903	622
2904	472
2904	663
2904	370
2904	376
2904	155
2905	132
2905	116
2905	88
2905	307
2905	291
2905	534
2906	557
2906	125
2906	129
2907	551
2907	70
2907	211
2907	644
2908	554
2908	409
2908	662
2908	666
2908	617
2908	210
2908	484
2908	383
2909	450
2909	314
2909	592
2909	261
2909	179
2910	527
2910	59
2910	146
2910	148
2911	549
2911	487
2911	682
2911	390
2911	252
2912	383
2912	265
2912	409
2913	543
2913	317
2913	664
2914	170
2914	131
2915	574
2915	660
2915	585
2915	246
2915	170
2916	88
2916	83
2916	133
2916	243
2916	474
2916	400
2916	296
2916	628
2916	307
2917	186
2917	292
2917	567
2917	618
2917	283
2917	428
2917	304
2917	221
2917	605
2918	436
2918	211
2918	573
2918	230
2919	555
2919	177
2919	294
2919	512
2920	362
2920	291
2920	277
2920	77
2921	92
2921	626
2921	430
2922	139
2922	636
2922	66
2922	543
2922	320
2922	276
2923	529
2923	665
2923	312
2923	554
2923	627
2923	338
2923	666
2924	193
2924	69
2924	153
2924	271
2924	603
2924	661
2925	93
2925	395
2925	162
2925	486
2925	582
2925	350
2926	396
2926	480
2926	421
2926	210
2926	620
2926	322
2927	598
2927	641
2927	687
2927	294
2927	642
2927	231
2927	104
2927	555
2927	72
2928	60
2928	199
2928	653
2929	352
2929	406
2929	630
2929	549
2929	685
2930	67
2930	72
2930	670
2930	652
2931	317
2931	287
2931	242
2931	348
2931	146
2931	62
2932	490
2932	660
2932	594
2932	236
2932	185
2932	698
2932	248
2933	582
2933	197
2934	365
2934	218
2934	692
2934	270
2934	117
2934	150
2935	623
2935	487
2935	608
2935	187
2935	644
2936	509
2936	585
2936	217
2936	304
2936	694
2936	256
2937	77
2937	546
2937	331
2937	333
2937	57
2937	421
2937	582
2938	590
2938	637
2938	256
2938	214
2939	648
2939	285
2939	397
2939	630
2939	551
2939	330
2939	211
2940	61
2940	93
2940	133
2940	536
2940	468
2940	244
2940	561
2941	114
2941	505
2941	618
2941	295
2941	292
2942	509
2942	259
2942	267
2942	234
2942	189
2943	695
2943	403
2943	205
2944	97
2944	396
2944	264
2944	603
2945	238
2945	257
2945	689
2945	302
2945	100
2946	326
2946	455
2946	585
2947	635
2947	660
2947	591
2947	247
2948	520
2948	446
2948	299
2948	596
2949	672
2949	260
2949	408
2950	634
2950	684
2950	631
2950	654
2950	696
2950	315
2950	604
2951	59
2951	450
2951	442
2951	379
2951	581
2951	690
2951	590
2952	227
2952	258
2952	122
2952	460
2952	510
2952	127
2952	350
2952	443
2953	391
2953	447
2953	409
2953	653
2953	89
2953	137
2953	618
2954	261
2954	624
2954	271
2954	368
2955	211
2955	607
2955	505
2955	76
2955	374
2955	341
2956	64
2956	689
2956	557
2956	288
2956	490
2956	124
2957	633
2957	679
2957	492
2957	393
2957	527
2957	321
2957	399
2958	509
2958	160
2958	173
2959	124
2959	427
2959	335
2959	490
2959	357
2959	663
2959	696
2960	666
2960	662
2960	331
2960	75
2961	260
2961	256
2961	408
2961	447
2962	196
2962	142
2962	558
2962	372
2962	550
2963	422
2963	90
2963	244
2963	514
2963	464
2963	536
2963	61
2964	301
2964	461
2964	83
2964	654
2964	257
2964	100
2964	511
2964	248
2964	269
2965	490
2965	465
2965	545
2965	121
2965	206
2965	397
2966	620
2966	399
2966	477
2967	268
2967	326
2967	483
2967	192
2967	576
2968	402
2968	378
2968	592
2968	231
2968	144
2968	334
2969	75
2969	64
2969	587
2969	213
2969	254
2969	232
2969	308
2970	399
2970	99
2970	439
2970	613
2970	674
2971	483
2971	493
2971	439
2972	672
2972	462
2972	258
2972	174
2972	372
2973	485
2973	223
2973	325
2973	681
2973	202
2973	622
2973	625
2973	589
2973	394
2974	164
2974	55
2974	75
2975	148
2975	614
2975	53
2975	533
2976	441
2976	62
2976	193
2977	446
2977	447
2977	108
2978	204
2978	535
2979	680
2979	89
2979	391
2980	313
2980	670
2980	72
2980	423
2980	212
2980	513
2980	115
2981	234
2981	160
2981	189
2982	590
2982	666
2982	113
2982	197
2982	442
2983	687
2983	74
2983	72
2984	237
2984	335
2984	490
2984	557
2985	554
2985	322
2985	73
2985	440
2986	106
2986	288
2986	357
2986	632
2986	105
2986	490
2987	541
2987	275
2987	223
2987	388
2987	202
2988	143
2988	453
2988	344
2988	347
2988	674
2988	56
2989	642
2989	399
2989	393
2989	115
2990	199
2990	587
2990	440
2990	478
2991	404
2991	194
2991	193
2991	619
2991	429
2991	500
2992	83
2992	248
2992	238
2992	287
2993	530
2993	364
2994	117
2994	503
2994	273
2994	132
2995	536
2995	370
2995	439
2995	216
2996	608
2996	452
2996	614
2996	437
2996	636
2997	403
2997	555
2997	495
2997	418
2998	205
2998	549
2998	592
2998	77
2999	480
2999	462
2999	483
3000	335
3000	216
3000	536
3000	370
3001	242
3001	170
3001	193
3001	195
3002	143
3002	69
3002	686
3002	280
3002	187
3003	626
3003	455
3003	229
3003	99
3004	131
3004	404
3004	660
3004	574
3005	460
3005	127
3005	443
3005	277
3006	317
3006	154
3006	407
3006	179
3006	654
3006	441
3006	287
3006	533
3007	388
3007	160
3007	394
3007	345
3008	207
3008	430
3008	266
3009	626
3009	92
3009	255
3010	426
3010	675
3010	266
3010	448
3011	654
3011	664
3011	441
3011	614
3012	466
3012	395
3012	273
3012	162
3013	506
3013	463
3013	202
3013	177
3013	74
3013	126
3014	623
3014	321
3014	487
3014	361
3014	604
3014	252
3015	555
3015	294
3015	212
3015	463
3016	274
3016	473
3017	139
3017	457
3017	420
3017	160
3017	394
3017	581
3017	325
3017	377
3017	625
3018	98
3018	305
3019	248
3019	269
3019	287
3019	537
3019	253
3019	301
3020	507
3020	151
3020	514
3020	116
3021	261
3021	287
3021	614
3021	657
3022	322
3022	75
3022	409
3022	484
3022	666
3022	627
3022	660
3022	620
3023	376
3023	155
3023	591
3023	663
3023	105
3023	112
3023	125
3024	387
3024	696
3024	448
3024	315
3025	420
3025	541
3025	223
3026	255
3026	304
3026	448
3026	509
3026	344
3026	430
3026	92
3027	653
3027	491
3027	263
3027	409
3027	109
3027	477
3028	574
3028	381
3028	633
3028	613
3028	631
3028	321
3029	596
3029	78
3029	86
3029	447
3029	349
3030	225
3030	187
3030	211
3030	685
3030	686
3030	623
3030	352
3031	618
3031	186
3032	455
3032	92
3032	458
3032	344
3032	585
3032	520
3032	304
3032	568
3033	646
3033	173
3033	210
3033	322
3033	620
3034	269
3034	287
3034	654
3034	275
3035	472
3035	155
3035	64
3035	584
3035	557
3035	105
3035	112
3036	73
3036	283
3036	173
3036	396
3036	662
3037	485
3037	528
3037	345
3037	139
3038	670
3038	212
3038	517
3039	670
3039	143
3039	350
3039	79
3039	222
3039	148
3039	80
3040	109
3040	89
3040	391
3040	105
3040	477
3040	648
3040	484
3041	274
3041	493
3041	390
3041	316
3041	569
3041	156
3042	600
3042	419
3042	298
3042	209
3042	601
3042	438
3042	120
3042	355
3042	691
3043	74
3043	506
3043	630
3043	424
3043	198
3043	183
3043	312
3043	538
3044	325
3044	420
3044	205
3044	528
3044	345
3044	85
3044	202
3045	533
3045	148
3045	441
3045	204
3046	438
3046	636
3046	600
3046	552
3047	549
3047	487
3047	648
3047	143
3047	630
3047	381
3048	104
3048	78
3048	72
3048	642
3049	117
3049	539
3049	350
3050	344
3050	284
3050	92
3050	585
3051	589
3051	491
3051	625
3052	563
3052	268
3052	304
3052	480
3053	363
3053	243
3053	277
3053	126
3053	534
3053	296
3054	420
3054	392
3054	457
3054	541
3055	357
3055	219
3055	376
3055	288
3056	374
3056	211
3056	235
3056	493
3056	208
3056	255
3056	427
3056	316
3057	479
3057	256
3057	408
3058	240
3058	618
3058	428
3058	304
3058	605
3058	218
3059	300
3059	250
3059	639
3060	509
3060	229
3060	118
3060	675
3060	448
3061	78
3061	621
3061	543
3061	284
3061	596
3061	163
3061	530
3061	86
3061	458
3062	591
3062	106
3062	124
3062	335
3062	125
3063	425
3063	624
3063	631
3063	373
3064	525
3064	184
3064	275
3065	689
3065	370
3066	258
3066	452
3066	460
3066	510
3066	277
3066	445
3066	557
3066	76
3067	562
3067	657
3067	370
3067	126
3067	693
3067	619
3067	316
3068	667
3068	533
3068	664
3068	59
3069	633
3069	595
3069	336
3069	345
3069	353
3070	223
3070	457
3070	394
3070	274
3070	275
3070	139
3071	69
3071	420
3071	232
3071	502
3071	615
3071	547
3071	254
3071	164
3071	75
3072	506
3072	507
3072	74
3072	593
3072	463
3072	606
3072	177
3073	484
3073	529
3073	594
3073	396
3073	253
3074	557
3074	127
3074	235
3074	87
3074	350
3074	258
3075	351
3075	166
3075	676
3075	336
3075	344
3075	353
3076	356
3076	177
3076	507
3076	126
3077	77
3077	618
3078	230
3078	98
3078	427
3078	493
3078	586
3078	274
3078	453
3079	332
3079	273
3079	117
3080	248
3080	206
3080	659
3080	185
3081	393
3081	435
3081	123
3081	212
3081	635
3081	215
3081	513
3082	274
3082	71
3082	109
3082	618
3082	391
3082	477
3083	670
3083	328
3083	83
3083	523
3083	143
3083	79
3083	347
3084	326
3084	386
3084	217
3084	509
3084	458
3084	256
3084	229
3085	322
3085	422
3085	561
3085	514
3086	217
3086	458
3086	304
3086	675
3086	448
3087	671
3087	107
3087	317
3087	204
3087	614
3087	367
3087	53
3088	90
3088	93
3088	514
3088	61
3088	62
3088	179
3088	561
3088	178
3089	647
3089	432
3089	697
3089	247
3089	184
3089	272
3090	81
3090	140
3090	174
3091	391
3091	137
3091	105
3091	477
3091	109
3091	263
3091	618
3091	71
3092	199
3092	296
3092	476
3092	395
3092	136
3093	70
3093	549
3093	180
3093	69
3093	630
3094	326
3094	207
3094	255
3094	284
3095	150
3095	371
3095	365
3095	678
3096	251
3096	256
3096	219
3096	447
3096	225
3096	548
3096	623
3097	231
3097	642
3097	123
3097	512
3097	78
3097	522
3098	449
3098	96
3098	471
3098	629
3099	388
3099	645
3099	674
3099	275
3100	439
3100	159
3100	98
3100	226
3100	264
3100	271
3100	396
3101	125
3101	483
3101	129
3101	696
3102	179
3102	348
3102	261
3102	287
3102	314
3103	313
3103	308
3103	164
3104	304
3104	114
3104	567
3104	456
3104	221
3104	428
3105	304
3105	99
3105	266
3105	615
3106	123
3106	231
3106	522
3106	513
3106	72
3106	687
3107	169
3107	642
3107	345
3107	351
3108	641
3108	393
3108	212
3108	635
3108	435
3109	251
3109	499
3109	260
3109	225
3109	256
3110	202
3110	205
3110	274
3111	95
3111	451
3111	654
3111	274
3112	625
3112	51
3113	92
3113	602
3113	162
3113	491
3113	308
3114	488
3114	453
3114	643
3114	344
3114	347
3115	569
3115	427
3115	572
3116	186
3116	612
3117	94
3117	322
3117	93
3117	536
3117	561
3117	468
3118	120
3118	696
3118	601
3118	691
3118	400
3119	692
3119	678
3119	117
3119	273
3120	478
3120	331
3120	75
3120	484
3120	637
3120	597
3121	551
3121	650
3121	358
3122	287
3122	247
3122	193
3122	450
3122	314
3122	62
3123	363
3123	291
3123	400
3123	307
3123	693
3123	88
3124	95
3124	583
3124	600
3124	434
3124	334
3125	630
3125	100
3125	211
3125	330
3125	225
3126	308
3126	92
3126	555
3126	695
3126	234
3126	509
3127	417
3127	510
3127	235
3127	445
3127	443
3127	227
3127	557
3128	411
3128	153
3128	486
3128	439
3128	205
3128	69
3128	159
3129	461
3129	238
3129	301
3129	207
3129	654
3130	345
3130	85
3130	581
3130	394
3130	541
3130	622
3131	269
3131	253
3131	646
3132	274
3132	226
3132	528
3132	85
3133	589
3133	415
3133	625
3133	226
3133	528
3133	275
3133	139
3133	622
3134	447
3134	109
3134	653
3135	64
3135	547
3135	164
3135	459
3135	516
3136	521
3136	71
3136	276
3137	448
3137	344
3137	386
3137	192
3137	694
3138	670
3138	294
3138	513
3138	475
3139	632
3139	357
3140	439
3140	68
3140	319
3140	274
3140	559
3140	97
3140	153
3140	661
3141	522
3141	423
3141	104
3141	414
3142	585
3142	430
3142	675
3142	458
3142	568
3142	304
3143	174
3143	582
3143	93
3143	306
3143	131
3143	81
3144	589
3144	420
3144	164
3144	223
3144	526
3145	93
3145	624
3145	131
3145	81
3145	332
3145	197
3146	361
3146	644
3146	180
3146	186
3146	69
3146	487
3146	549
3146	321
3146	381
3147	211
3147	473
3147	235
3147	374
3148	689
3148	634
3148	639
3148	490
3148	370
3148	483
3149	426
3149	266
3149	326
3149	448
3149	229
3150	428
3150	638
3150	640
3150	330
3150	295
3150	505
3150	186
3150	315
3151	447
3151	520
3151	525
3151	526
3151	596
3151	579
3151	475
3151	629
3152	259
3152	70
3152	665
3152	167
3152	617
3152	278
3153	582
3153	539
3153	227
3154	670
3154	513
3154	687
3154	463
3155	574
3155	670
3155	159
3155	508
3156	520
3156	448
3156	118
3156	255
3156	430
3157	210
3157	662
3157	597
3157	75
3157	605
3157	265
3157	554
3158	612
3158	397
3158	623
3158	69
3159	420
3159	278
3159	55
3159	213
3159	270
3159	94
3160	612
3160	682
3160	285
3161	666
3161	331
3161	338
3161	265
3161	478
3161	554
3161	637
3162	420
3162	202
3162	139
3162	325
3162	160
3163	543
3163	520
3163	526
3163	662
3163	299
3164	480
3164	210
3164	627
3164	478
3164	338
3165	475
3165	212
3165	72
3165	123
3165	641
3165	512
3166	543
3166	59
3166	533
3167	138
3167	424
3167	648
3167	330
3167	644
3167	682
3168	99
3168	192
3168	326
3168	344
3169	545
3169	528
3169	164
3169	205
3170	670
3170	539
3170	574
3170	401
3170	76
3171	372
3171	272
3171	624
3171	672
3171	258
3171	332
3171	466
3172	306
3172	636
3172	521
3172	71
3172	195
3173	215
3173	670
3173	294
3174	598
3174	123
3174	177
3174	279
3175	285
3175	70
3175	186
3175	623
3176	370
3176	591
3176	376
3176	663
3177	687
3177	294
3177	463
3177	123
3177	642
3177	512
3177	414
3177	104
3177	435
3178	632
3178	533
3178	338
3178	334
3178	547
3179	150
3179	273
3179	678
3179	692
3180	631
3180	154
3180	214
3181	87
3181	76
3181	350
3181	227
3181	460
3181	452
3182	585
3182	574
3182	404
3182	182
3183	557
3183	376
3184	482
3184	438
3184	691
3184	501
3184	155
3185	179
3185	468
3185	133
3185	422
3186	624
3186	267
3186	373
3186	571
3186	664
3187	376
3187	560
3187	183
3187	538
3187	630
3188	177
3188	104
3188	641
3188	72
3188	123
3189	282
3189	262
3189	267
3189	631
3189	373
3190	294
3190	635
3190	598
3190	513
3190	123
3190	393
3191	126
3191	202
3191	144
3191	177
3191	463
3191	386
3192	117
3192	365
3192	285
3192	273
3192	357
3192	272
3192	692
3192	448
3192	371
3193	72
3193	612
3193	636
3193	128
3193	67
3193	174
3193	545
3194	69
3194	211
3194	469
3195	284
3195	694
3195	217
3195	430
3195	458
3195	615
3196	462
3196	306
3196	272
3196	486
3196	588
3197	694
3197	284
3198	441
3198	148
3198	317
3198	450
3199	204
3199	527
3199	148
3199	348
3200	603
3200	441
3200	69
3200	700
3201	514
3201	507
3201	519
3201	151
3201	400
3201	88
3201	340
3201	150
3202	304
3202	428
3203	208
3203	545
3203	297
3204	612
3204	252
3205	245
3205	416
3205	189
3205	234
3205	160
3206	393
3206	631
3206	674
3206	462
3206	567
3207	605
3207	699
3207	618
3207	304
3207	428
3208	120
3208	669
3208	614
3208	269
3209	151
3209	83
3209	514
3209	77
3209	307
3209	507
3209	534
3210	606
3210	630
3210	424
3210	386
3210	312
3210	126
3210	74
3210	507
3211	547
3211	533
3211	434
3211	495
3212	234
3212	205
3212	416
3212	403
3212	189
3212	177
3213	397
3213	549
3213	608
3213	285
3213	465
3214	440
3214	594
3214	265
3214	620
3215	550
3215	598
3215	414
3215	670
3215	72
3215	513
3215	399
3216	248
3216	490
3216	65
3216	698
3217	574
3217	401
3217	103
3217	539
3218	363
3218	77
3218	133
3218	474
3219	212
3219	550
3219	104
3219	555
3219	313
3219	556
3219	74
3219	215
3220	414
3220	214
3220	256
3220	509
3220	282
3221	667
3221	125
3221	80
3221	369
3221	344
3221	148
3221	143
3221	328
3221	347
3222	381
3222	99
3223	154
3223	450
3223	657
3223	59
3223	179
3224	423
3224	550
3224	279
3224	74
3224	670
3224	115
3224	598
3224	512
3225	249
3225	153
3225	205
3225	193
3225	700
3226	124
3226	483
3226	155
3227	556
3227	513
3227	641
3227	231
3227	72
3227	393
3228	119
3228	555
3228	315
3228	519
3228	658
3228	334
3228	410
3229	472
3229	129
3229	561
3229	105
3229	584
3229	79
3229	536
3229	124
3230	627
3230	84
3230	449
3230	478
3230	665
3230	605
3230	690
3231	115
3231	163
3231	286
3231	265
3232	179
3232	146
3232	154
3232	527
3232	287
3233	478
3233	283
3233	529
3233	338
3233	322
3233	627
3233	690
3234	654
3234	275
3234	511
3234	83
3235	486
3235	85
3235	377
3235	498
3236	74
3236	415
3236	506
3236	157
3236	312
3237	427
3237	64
3237	663
3238	294
3238	633
3238	670
3238	279
3239	271
3239	69
3239	98
3239	486
3240	306
3240	258
3240	542
3240	117
3240	140
3240	248
3241	328
3241	497
3241	573
3241	565
3242	118
3242	138
3242	614
3242	587
3242	136
3242	204
3242	163
3242	296
3243	381
3243	352
3244	255
3244	304
3244	207
3244	99
3244	266
3245	441
3245	107
3245	654
3245	592
3246	635
3246	72
3246	123
3246	670
3247	287
3247	207
3247	302
3248	76
3248	248
3248	689
3248	238
3249	634
3249	584
3250	315
3250	428
3250	505
3250	316
3251	480
3251	73
3251	383
3252	166
3252	382
3252	169
3252	524
3252	336
3253	411
3253	328
3253	335
3253	183
3253	469
3253	424
3254	506
3254	406
3254	177
3254	507
3255	675
3255	532
3255	279
3255	481
3256	522
3256	555
3256	687
3257	168
3257	625
3257	259
3257	52
3257	466
3257	679
3257	617
3257	248
3258	246
3258	242
3258	194
3258	340
3258	402
3258	591
3258	193
3258	182
3259	129
3259	631
3259	256
3259	637
3259	571
3259	577
3260	573
3260	484
3260	217
3260	586
3260	274
3260	572
3260	390
3261	179
3261	94
3261	93
3261	90
3261	61
3261	62
3261	322
3261	244
3262	461
3262	248
3262	269
3263	623
3263	432
3263	219
3264	273
3264	350
3264	117
3264	174
3264	486
3265	605
3265	699
3265	283
3265	114
3265	638
3265	295
3265	240
3265	428
3266	597
3266	662
3266	617
3266	331
3267	148
3267	657
3267	441
3267	204
3267	276
3267	367
3267	146
3267	261
3268	115
3268	294
3268	123
3268	513
3268	414
3268	212
3268	104
3268	231
3269	448
3269	520
3269	568
3269	284
3269	304
3270	105
3270	484
3270	447
3270	391
3271	57
3271	657
3271	126
3271	256
3272	496
3272	162
3272	81
3272	306
3273	424
3273	328
3273	239
3273	295
3273	497
3274	653
3274	466
3274	140
3274	350
3274	588
3274	582
3275	332
3275	372
3275	248
3275	656
3275	131
3275	174
3275	624
3276	218
3276	273
3276	430
3276	350
3276	342
3277	539
3277	531
3278	350
3278	651
3278	588
3278	395
3278	174
3279	263
3279	648
3279	653
3279	484
3280	627
3280	322
3280	312
3280	283
3280	84
3280	75
3281	528
3281	202
3281	545
3281	589
3281	377
3281	457
3282	441
3282	657
3282	204
3282	572
3282	242
3283	84
3283	315
3284	554
3284	666
3284	436
3284	378
3284	130
3285	244
3285	90
3285	514
3286	588
3286	484
3286	573
3286	208
3287	424
3287	53
3288	509
3288	659
3288	344
3288	448
3288	284
3288	99
3288	626
3289	328
3289	239
3290	580
3290	400
3290	618
3290	150
3291	288
3291	490
3291	376
3291	106
3292	447
3292	274
3292	109
3292	618
3292	263
3293	344
3293	595
3293	382
3293	633
3293	676
3294	350
3294	332
3294	405
3294	227
3294	372
3295	449
3295	322
3295	605
3295	665
3295	478
3295	421
3295	627
3295	554
3296	183
3296	411
3296	295
3296	675
3296	239
3296	469
3296	361
3296	532
3297	84
3297	654
3297	80
3297	696
3297	626
3297	604
3297	448
3298	541
3298	432
3298	272
3298	184
3298	398
3298	107
3298	647
3299	427
3299	572
3299	573
3299	217
3299	473
3299	609
3299	484
3299	453
3300	651
3300	306
3300	93
3300	588
3301	555
3301	633
3301	642
3301	463
3301	123
3301	513
3302	673
3302	162
3302	93
3302	395
3302	117
3302	651
3302	350
3303	377
3303	491
3303	223
3303	528
3303	622
3303	541
3303	226
3303	394
3303	485
3304	349
3304	534
3304	514
3304	83
3304	628
3304	363
3304	133
3304	693
3305	105
3305	112
3305	584
3305	696
3306	522
3306	633
3306	512
3306	393
3307	340
3307	618
3307	277
3308	120
3308	60
3308	138
3308	608
3309	490
3309	483
3309	557
3309	216
3309	219
3309	79
3309	105
3310	396
3310	486
3310	159
3310	559
3310	603
3311	156
3311	628
3311	362
3311	534
3311	277
3311	400
3311	519
3311	580
3311	507
3312	650
3312	379
3312	521
3312	551
3312	134
3312	382
3312	84
3312	448
3312	634
3313	536
3313	125
3313	427
3313	124
3313	357
3314	400
3314	599
3314	443
3314	307
3314	362
3315	680
3315	89
3316	150
3316	472
3316	392
3316	692
3316	342
3316	350
3316	270
3316	391
3316	311
3317	557
3317	443
3317	235
3317	417
3318	248
3318	93
3319	133
3319	534
3319	599
3319	151
3320	510
3320	103
3320	534
3320	399
3320	539
3320	670
3320	671
3321	513
3321	436
3321	450
3321	378
3321	666
3321	310
3321	581
3322	336
3322	166
3322	492
3323	435
3323	633
3323	393
3323	475
3323	556
3323	513
3323	294
3324	252
3324	424
3324	467
3324	604
3325	92
3325	585
3325	568
3325	430
3325	659
3325	675
3326	582
3326	673
3326	131
3327	191
3327	468
3327	455
3327	67
3327	190
3327	636
3327	389
3327	102
3327	212
3328	321
3328	487
3328	648
3329	154
3329	533
3330	93
3330	672
3330	405
3330	131
3330	582
3331	469
3331	612
3331	547
3331	406
3331	465
3332	646
3332	253
3332	396
3332	73
3332	666
3333	495
3333	693
3333	583
3333	309
3333	95
3333	451
3333	654
3334	225
3334	352
3334	321
3334	685
3334	686
3335	386
3335	99
3335	448
3335	509
3335	217
3336	258
3336	510
3336	443
3336	452
3336	460
3337	598
3337	215
3337	176
3337	210
3337	687
3337	289
3337	203
3338	118
3338	659
3338	217
3338	386
3338	448
3338	192
3339	215
3339	550
3339	231
3339	522
3339	463
3339	475
3340	247
3340	538
3340	450
3340	184
3340	367
3341	694
3341	626
3341	430
3341	92
3341	585
3342	429
3342	105
3342	427
3342	663
3342	64
3342	490
3342	536
3343	406
3343	183
3343	538
3343	202
3344	409
3344	253
3344	662
3344	665
3344	383
3344	322
3344	73
3344	554
3344	660
3345	407
3345	286
3345	269
3345	440
3346	551
3346	330
3346	187
3346	180
3346	406
3346	630
3347	266
3347	585
3347	284
3348	663
3348	112
3348	427
3348	639
3348	689
3348	584
3349	85
3349	377
3350	598
3350	475
3350	633
3350	556
3350	513
3351	624
3351	373
3351	267
3351	577
3352	117
3352	150
3352	503
3352	391
3352	371
3352	678
3352	145
3353	259
3353	372
3353	397
3353	168
3353	81
3353	248
3354	320
3354	375
3354	521
3354	580
3354	88
3354	66
3355	603
3355	271
3355	98
3356	349
3356	362
3356	519
3356	296
3357	139
3357	226
3357	223
3358	451
3358	297
3358	95
3358	654
3358	334
3358	533
3359	400
3359	151
3359	519
3359	534
3359	116
3359	77
3359	474
3360	350
3360	272
3360	357
3360	678
3360	692
3361	327
3361	691
3361	696
3361	120
3361	600
3361	419
3362	394
3362	545
3362	274
3362	205
3363	400
3363	243
3363	77
3363	83
3363	693
3363	307
3364	636
3364	327
3364	540
3364	400
3364	552
3365	697
3365	275
3365	538
3365	247
3365	506
3365	367
3366	633
3366	166
3366	642
3367	570
3367	686
3367	573
3367	295
3367	183
3368	54
3368	518
3368	210
3368	487
3368	180
3369	111
3369	155
3369	288
3369	632
3369	105
3370	595
3370	633
3370	351
3370	676
3370	642
3370	524
3371	113
3371	378
3372	115
3372	414
3372	279
3372	635
3373	325
3373	205
3373	491
3373	622
3373	541
3374	262
3374	343
3374	579
3374	543
3374	446
3374	621
3374	531
3374	649
3375	64
3375	557
3375	288
3375	98
3376	591
3376	131
3376	500
3376	423
3376	182
3376	242
3376	619
3376	404
3377	60
3377	154
3377	592
3377	59
3378	426
3378	134
3378	84
3378	387
3378	504
3378	358
3378	684
3378	80
3379	76
3379	301
3380	447
3380	621
3380	163
3380	579
3381	408
3381	479
3381	623
3381	256
3382	304
3382	266
3382	344
3382	207
3383	527
3383	107
3383	276
3383	62
3383	654
3383	317
3383	572
3383	148
3384	625
3384	205
3384	581
3384	392
3384	420
3384	226
3384	85
3385	78
3385	556
3385	670
3385	641
3386	435
3386	550
3386	633
3387	85
3387	457
3387	541
3387	274
3387	202
3387	485
3388	534
3388	317
3388	374
3388	159
3388	90
3388	668
3388	508
3388	656
3388	683
3389	197
3389	542
3389	131
3389	248
3390	580
3390	151
3390	534
3390	150
3390	116
3390	302
3391	657
3391	77
3391	318
3391	592
3391	539
3392	407
3392	261
3392	276
3392	385
3393	142
3393	372
3393	614
3393	440
3393	311
3394	670
3394	546
3394	539
3394	508
3394	399
3394	534
3394	683
3395	174
3395	272
3395	462
3395	531
3395	332
3396	330
3396	505
3396	240
3396	114
3396	283
3396	292
3397	311
3397	568
3397	230
3397	611
3397	440
3397	550
3398	490
3398	689
3398	155
3398	564
3398	98
3399	313
3399	279
3399	635
3399	123
3400	207
3400	654
3400	257
3401	99
3401	255
3401	615
3401	229
3401	344
3401	304
3401	426
3402	411
3402	481
3402	469
3402	573
3403	113
3403	552
3403	436
3403	389
3403	590
3404	643
3404	80
3404	277
3404	347
3404	344
3404	670
3405	145
3405	692
3405	272
3405	342
3405	503
3406	393
3406	642
3406	556
3406	123
3406	633
3406	78
3406	399
3407	655
3407	66
3407	525
3407	200
3407	276
3408	279
3408	463
3408	212
3408	598
3409	395
3409	651
3409	258
3410	117
3410	448
3410	391
3410	430
3411	442
3411	666
3411	59
3411	513
3411	379
3412	371
3412	311
3412	270
3412	117
3412	350
3413	630
3413	682
3413	467
3413	211
3413	685
3413	138
3413	623
3413	406
3414	215
3414	522
3414	475
3415	77
3415	599
3415	83
3415	362
3416	302
3416	693
3416	150
3416	88
3416	126
3416	507
3417	604
3417	362
3417	80
3417	290
3417	601
3417	332
3417	631
3417	84
3417	551
3418	588
3418	208
3418	98
3418	156
3419	555
3419	641
3419	522
3419	115
3420	682
3420	201
3420	389
3420	566
3420	468
3420	553
3420	191
3420	545
3421	212
3421	687
3421	231
3421	633
3421	463
3422	55
3422	629
3422	196
3423	345
3423	351
3423	169
3423	676
3424	409
3424	477
3424	71
3424	391
3424	618
3424	274
3424	137
3425	85
3425	388
3425	205
3425	325
3425	589
3425	681
3425	491
3425	625
3426	555
3426	631
3426	321
3426	527
3426	620
3426	76
3426	574
3427	285
3427	270
3427	678
3427	272
3427	503
3427	365
3427	150
3427	472
3427	273
3428	397
3428	686
3428	211
3428	547
3429	59
3429	348
3429	62
3429	543
3430	208
3430	121
3430	372
3430	397
3430	466
3431	249
3431	411
3431	68
3431	264
3432	469
3432	225
3432	630
3432	280
3432	465
3432	330
3433	665
3433	679
3434	372
3434	332
3434	117
3434	466
3435	299
3435	629
3435	284
3435	86
3435	108
3436	512
3436	598
3437	361
3437	581
3437	53
3437	675
3437	532
3437	424
3437	183
3437	279
3437	686
3438	583
3438	264
3438	297
3438	274
3438	158
3439	237
3439	564
3440	522
3440	512
3440	513
3440	313
3440	399
3441	407
3441	276
3441	242
3441	148
3441	146
3442	385
3442	135
3442	107
3442	204
3442	247
3442	314
3442	193
3443	354
3443	247
3443	182
3443	363
3444	349
3444	580
3444	340
3444	277
3445	585
3445	304
3445	626
3445	448
3446	306
3446	276
3446	66
3446	208
3446	496
3446	607
3446	374
3447	272
3447	395
3447	227
3447	539
3447	582
3447	624
3448	340
3448	693
3448	400
3448	628
3448	116
3448	156
3449	205
3449	695
3449	602
3449	267
3449	416
3449	92
3449	631
3449	491
3450	259
3450	372
3450	52
3450	545
3450	206
3451	266
3451	615
3451	304
3451	192
3451	229
3452	400
3452	156
3452	474
3452	77
3453	207
3453	326
3453	229
3453	675
3454	512
3454	423
3454	522
3454	72
3454	687
3454	313
3454	294
3454	642
3455	395
3455	118
3455	653
3455	204
3455	192
3455	199
3456	80
3456	634
3456	332
3456	358
3457	360
3457	639
3457	300
3457	104
3457	55
3457	576
3458	123
3458	72
3458	598
3458	313
3459	339
3459	223
3459	626
3459	229
3459	101
3459	693
3460	514
3460	150
3460	88
3460	349
3460	340
3461	76
3461	253
3461	689
3461	248
3461	654
3462	133
3462	307
3462	277
3462	618
3463	201
3463	174
3463	212
3463	468
3463	670
3464	654
3464	309
3464	632
3464	547
3464	95
3465	493
3465	112
3465	696
3465	483
3465	79
3465	639
3466	646
3466	75
3466	662
3466	605
3466	283
3466	597
3467	642
3467	522
3468	85
3468	185
3468	206
3469	276
3469	533
3469	671
3469	261
3469	208
3469	60
3469	664
3469	572
3469	193
3470	287
3470	348
3470	385
3470	450
3470	62
3470	59
3470	317
3471	220
3471	180
3471	289
3471	203
3471	428
3472	329
3472	198
3472	177
3472	406
3472	560
3473	390
3473	493
3473	427
3473	609
3473	588
3473	98
3473	484
3473	187
3474	296
3474	199
3474	269
3474	120
3474	204
3475	399
3475	631
3475	600
3475	439
3475	381
3476	409
3476	109
3476	618
3476	680
3476	274
3476	484
3477	331
3477	637
3477	627
3478	634
3478	112
3478	536
3478	632
3478	219
3478	483
3478	696
3479	670
3479	215
3480	285
3480	211
3480	424
3480	361
3480	225
3480	686
3481	339
3481	232
3481	308
3481	587
3481	270
3481	278
3482	362
3482	363
3482	126
3482	307
3482	132
3483	470
3483	209
3483	400
3483	601
3483	552
3484	83
3484	344
3484	222
3484	347
3484	488
3484	394
3484	523
3485	422
3485	322
3485	514
3485	62
3486	555
3486	177
3486	231
3486	635
3487	662
3487	480
3487	84
3487	75
3488	70
3488	648
3488	352
3488	381
3488	121
3489	659
3489	207
3489	92
3489	118
3490	410
3490	315
3490	171
3490	119
3490	555
3490	144
3490	402
3490	252
3491	230
3491	156
3491	217
3491	427
3492	480
3492	326
3492	279
3492	55
3493	594
3493	312
3493	554
3494	457
3494	388
3494	485
3494	589
3494	622
3494	226
3494	545
3495	370
3495	111
3495	155
3495	105
3495	632
3495	557
3495	472
3496	543
3496	592
3496	261
3497	441
3497	664
3497	667
3497	527
3498	275
3498	274
3498	491
3498	388
3498	485
3499	104
3499	279
3499	212
3499	78
3499	399
3499	393
3500	359
3500	338
3500	141
3501	299
3501	662
3501	475
3501	349
3501	343
3501	579
3501	649
3502	554
3502	513
3502	581
3502	59
3502	113
3502	181
3502	379
3503	443
3503	296
3503	116
3503	243
3503	77
3503	349
3503	156
3503	291
3504	124
3504	98
3504	483
3505	296
3505	243
3505	693
3505	116
3505	88
3505	599
3505	302
3505	77
3506	261
3506	208
3506	154
3506	204
3506	148
3507	653
3507	109
3507	89
3507	447
3508	237
3508	248
3508	207
3508	83
3509	312
3509	478
3509	666
3509	617
3510	299
3510	284
3510	662
3510	621
3510	530
3510	349
3510	343
3511	228
3511	55
3511	579
3511	558
3511	115
3512	458
3512	615
3512	426
3512	509
3512	92
3513	632
3513	434
3513	274
3513	264
3514	375
3514	293
3514	522
3514	525
3514	306
3515	133
3515	536
3515	90
3515	178
3515	115
3515	464
3515	93
3516	116
3516	76
3516	539
3516	317
3516	597
3516	671
3516	399
3516	401
3517	277
3517	132
3517	618
3517	83
3518	72
3518	612
3518	670
3519	81
3519	466
3519	465
3519	397
3519	679
3519	698
3519	121
3520	415
3520	581
3520	275
3520	681
3521	475
3521	596
3521	621
3521	458
3522	111
3522	493
3522	125
3522	155
3522	288
3522	106
3522	105
3522	584
3522	634
3523	526
3523	205
3523	345
3523	164
3523	202
3524	143
3524	608
3524	180
3524	612
3524	69
3525	69
3525	319
3525	661
3525	561
3525	193
3525	264
3525	486
3526	677
3526	284
3526	343
3526	458
3526	78
3526	364
3527	108
3527	284
3527	520
3527	475
3527	446
3527	86
3527	262
3528	555
3528	313
3528	115
3529	398
3529	645
3529	610
3530	52
3530	397
3530	168
3530	679
3530	70
3530	185
3531	72
3531	641
3531	512
3531	104
3531	687
3532	612
3532	517
3532	566
3532	668
3532	102
3532	670
3533	294
3533	513
3533	550
3534	467
3534	345
3534	271
3534	691
3534	438
3534	155
3534	303
3534	385
3534	517
3535	448
3535	379
3535	601
3535	696
3535	362
3536	248
3536	273
3537	456
3537	415
3537	424
3537	386
3537	144
3537	663
3538	489
3538	201
3538	670
3538	682
3538	191
3539	85
3539	202
3539	491
3539	275
3539	274
3539	541
3539	625
3540	399
3540	313
3540	74
3541	219
3541	335
3541	237
3541	79
3541	634
3541	111
3541	564
3541	106
3542	618
3542	295
3542	640
3542	346
3543	492
3543	166
3543	676
3543	595
3543	353
3543	642
3543	345
3543	169
3544	466
3544	542
3544	405
3544	248
3545	290
3545	134
3545	362
3545	685
3546	581
3546	415
3547	124
3547	357
3547	493
3547	64
3547	427
3547	639
3548	261
3548	276
3548	657
3548	193
3548	148
3548	53
3548	533
3549	231
3549	687
3549	72
3549	177
3550	180
3550	549
3550	69
3550	608
3550	465
3551	177
3551	380
3551	140
3551	695
3551	259
3552	180
3552	100
3552	330
3552	70
3553	633
3553	382
3553	524
3553	642
3553	353
3553	169
3554	475
3554	212
3554	435
3554	670
3554	177
3555	93
3555	514
3555	94
3555	115
3556	122
3556	76
3557	524
3557	351
3557	336
3558	173
3558	140
3558	177
3558	495
3559	419
3559	298
3559	601
3559	696
3559	540
3559	628
3560	606
3560	157
3560	663
3560	456
3560	329
3561	370
3561	557
3561	335
3561	663
3561	439
3561	216
3561	639
3561	125
3561	493
3562	302
3562	443
3562	150
3563	409
3563	680
3563	274
3563	263
3563	484
3563	653
3563	477
3564	697
3564	444
3564	541
3564	414
3564	198
3565	526
3565	275
3565	377
3565	394
3565	274
3565	541
3565	139
3566	379
3566	366
3566	382
3566	521
3566	685
3566	601
3566	626
3567	124
3567	155
3567	79
3567	105
3567	112
3567	632
3567	561
3568	283
3568	605
3568	646
3568	396
3569	514
3569	519
3569	363
3569	474
3570	117
3570	365
3570	192
3570	150
3570	371
3570	350
3570	357
3571	641
3571	423
3571	463
3571	642
3572	673
3572	306
3572	372
3572	405
3572	539
3573	618
3573	693
3573	599
3573	474
3574	649
3574	78
3574	447
3575	376
3575	357
3575	591
3575	105
3576	634
3576	105
3576	696
3577	574
3577	591
3577	642
3578	585
3578	247
3578	195
3578	404
3578	242
3579	183
3579	177
3579	128
3579	149
3579	424
3580	600
3580	477
3580	393
3580	555
3580	679
3581	666
3581	75
3581	73
3581	597
3581	440
3581	173
3581	484
3582	353
3582	595
3582	336
3582	633
3582	344
3582	166
3582	492
3583	611
3583	323
3583	196
3583	449
3584	527
3584	441
3585	345
3585	139
3585	528
3585	625
3585	589
3585	420
3585	485
3585	202
3586	340
3586	116
3586	307
3586	88
3586	363
3586	362
3587	608
3587	536
3587	60
3587	115
3588	539
3588	546
3588	616
3588	103
3589	465
3589	397
3589	648
3589	70
3589	390
3589	623
3590	539
3590	672
3590	131
3590	140
3590	273
3590	496
3590	372
3590	93
3591	205
3591	485
3591	274
3591	394
3591	388
3592	483
3592	564
3592	111
3592	429
3593	420
3593	694
3593	542
3593	55
3593	91
3594	231
3594	579
3594	410
3594	402
3594	378
3594	519
3594	658
3594	494
3595	552
3595	488
3595	130
3595	450
3595	513
3596	632
3596	536
3597	701
3597	368
3597	192
3597	261
3597	151
3597	482
3598	458
3598	256
3598	585
3598	92
3598	99
3598	266
3599	599
3599	637
3599	590
3599	509
3599	512
3599	373
3600	218
3600	371
3600	503
3600	150
3600	285
3600	392
3600	132
3600	692
3601	88
3601	628
3601	151
3601	243
3601	340
3601	116
3601	349
3602	478
3602	597
3603	187
3603	100
3603	225
3603	70
3603	608
3604	484
3604	396
3604	173
3604	511
3604	594
3605	296
3605	443
3605	363
3606	495
3606	533
\.
