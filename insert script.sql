-- Zamestnavatel
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('00000000', 'admin', 'fb001dfcffd1c899f3297871406242f097aecf1a5342ccf3ebcd116146188e4b', 'admin', 'admin');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('27604977', 'google@gmail.com', '6292be73bdfdc4ea12bdf3018c8c553d3022b37601bb2b19153c8804bdf8da15', 'Google', '992 Debra Crossing');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('44012373', 'albert@albert.cz', '295e67e93e1d3a0e0e05a31e30460525e44a0e502079641d62782fedc1927d9a', 'Albert', '3878 Onsgard Parkway');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('70994226', 'cd@cd.cz', '42096a8c82a32e7694dc1cd5ade38dc34ac56d6179c73771f7d83a917ff67447', 'České dráhy', '4 Forest Street');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('26178541', 'lidl@lidl.cz', '835181b1f1e54c072368d1a1716992fac01ac9fbb94a1ee105d84da59fc01b0a', 'Lidl', '8 Sherman Place');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('00177041', 'skoda@skoda.cz', 'f3d03712f490fc202efebfd11f06da5dfed3c25ec6093c40d4742bb4e24ea230', 'Škoda Auto', '69 Anzinger Pass');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('45308314', 'tesco@tesco.co.uk', 'ff34f44cf2d085be9ee33188287c5e108ff26013e4e070ce076d58b816829733', 'Tesco', '734 Becker Terrace');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('25110161', 'kaufland@kaufland.de', '99dfd4982cd30f2e31d5bdccc1a602cc4c035d75f6125045728008dc64b18309', 'Kaufland', '3184 Mayer Pass');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('45274649', 'cez@cez.cz', '3d50a8f92b853665f812f7c31bb57b1a04434b5282f06e3eaf6a4f446b1dbd41', 'ČEZ', '1613 Tomscot Street');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('63473291', 'globus@globus.cz', '2c8905e666246997ab90137f8736c1ebebe69cfe25c52f24b775f46da2a3dd4f', 'Globus', '03 Transport Trail');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('00685976', 'billa@billa.cz', '2331dc5bdc3bc94bf9f6845f2d6841eb37086f630a1fbdb0362bde135622483b', 'Billa', '16296 Shopko Plaza');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('64945880', 'penny@penny.cz', '61ba80ffbabe0ce4bbd7b16d19bfbc454ece346e88ee6a9c8e99a6ff704fd219', 'Penny Market', '2 Anzinger Avenue');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('00001350', 'csob@csob.cz', '0350355b2ba1a53b2f4c883a51e3ec8d8f55d51f8f38acb862fe236248179de9', 'Československá obchodní banka', '565 Northfield Junction');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('00268577', 'siemens@siemens.cz', '674f974fce4257a8e31aaab8076e845d0ad381750441b55df68ed437da98cce4', 'Siemens', '4 Tennessee Parkway');
insert into zamestnavatel (ico, email, heslo, nazev_zamestnavatele, adresa) values ('26185610', 'agrofert@agrofert.cz', '296f249b5d0fa6634d3ed71934d33865a1c33dab10286ef1eed79de70b2e9761', 'Agrofert', '5851 Crowley Hill');

-- Obor
insert into obor (zkratka, nazev) values ('CHI', 'chirurgie');
insert into obor (zkratka, nazev) values ('ORT', 'ortopedie');
insert into obor (zkratka, nazev) values ('URO', 'urologie');
insert into obor (zkratka, nazev) values ('OFT', 'oftalmologie');
insert into obor (zkratka, nazev) values ('TRA', 'traumatologie');
insert into obor (zkratka, nazev) values ('GYN', 'gynekologie');
insert into obor (zkratka, nazev) values ('KAR', 'kardiologie');
insert into obor (zkratka, nazev) values ('STO', 'stomatologie');
insert into obor (zkratka, nazev) values ('PNE', 'pneumologie');
insert into obor (zkratka, nazev) values ('PED', 'pediatrie');
insert into obor (zkratka, nazev) values ('GAS', 'gastroenterologie');
insert into obor (zkratka, nazev) values ('NEU', 'neurochirurgie');

-- Kurz
insert into kurz (id_kurz, obor_zkratka, nazev) values (1, 'PNE', 'Pneumologie pro praxi 1');
insert into kurz (id_kurz, obor_zkratka, nazev) values (2, 'ORT', 'Ortopedie pro praktické lékaře');
insert into kurz (id_kurz, obor_zkratka, nazev) values (23, 'GAS', 'Bolest břicha - pohledem osobností');
insert into kurz (id_kurz, obor_zkratka, nazev) values (7, 'GAS', 'Dětská gastroenterologie');
insert into kurz (id_kurz, obor_zkratka, nazev) values (16, 'PNE', 'Pneumologie pro praxi 2');
insert into kurz (id_kurz, obor_zkratka, nazev) values (5, 'NEU', 'Novinky v neurochirurgii');
insert into kurz (id_kurz, obor_zkratka, nazev) values (3, 'TRA', 'Seminář pro praktické lékaře a ambulantní specialisty');
insert into kurz (id_kurz, obor_zkratka, nazev) values (8, 'KAR', 'Novinky v kardiologii');
insert into kurz (id_kurz, obor_zkratka, nazev) values (4, 'GAS', 'Poruchy příjmu potravy');
insert into kurz (id_kurz, obor_zkratka, nazev) values (6, 'OFT', 'Nejčastější oční problémy');
insert into kurz (id_kurz, obor_zkratka, nazev) values (19, 'CHI', 'Estetická chirurgie');
insert into kurz (id_kurz, obor_zkratka, nazev) values (10, 'PED', 'Pediatrie 1');

-- Akce
insert into akce (id_akce, id_kurz, datum, adresa) values (1, 1, '2021-09-01 15:55:00', '324 Eggendart Alley');
insert into akce (id_akce, id_kurz, datum, adresa) values (3, 1, '2022-10-10 19:51:32', '1101 5th Pass');
insert into akce (id_akce, id_kurz, datum, adresa) values (5, 5, '2021-06-05 06:37:59', '79595 Lake View Way');
insert into akce (id_akce, id_kurz, datum, adresa) values (2, 23, '2022-04-07 20:05:11', '1 Golf View Place');
insert into akce (id_akce, id_kurz, datum, adresa) values (59, 4, '2022-10-15 17:09:48', '47 Buell Crossing');
insert into akce (id_akce, id_kurz, datum, adresa) values (8, 4, '2022-06-03 15:40:07', '41721 Green Ridge Place');
insert into akce (id_akce, id_kurz, datum, adresa) values (421, 19, '2022-02-19 23:51:59', '441 Tony Trail');
insert into akce (id_akce, id_kurz, datum, adresa) values (78, 8, '2022-03-01 10:54:11', '2287 Packers Court');
insert into akce (id_akce, id_kurz, datum, adresa) values (6, 2, '2021-06-02 09:41:37', '21152 Parkside Parkway');
insert into akce (id_akce, id_kurz, datum, adresa) values (9, 3, '2021-09-22 07:31:59', '21152 Parkside Parkway');
insert into akce (id_akce, id_kurz, datum, adresa) values (42, 16, '2022-09-20 22:42:34', '11872 Heath Road');
insert into akce (id_akce, id_kurz, datum, adresa) values (13, 6, '2022-02-21 08:25:04', '11872 Heath Road');
insert into akce (id_akce, id_kurz, datum, adresa) values (14, 10, '2021-08-21 20:34:16', '11872 Heath Road');

-- Zvlastni Zpusobilost
insert into zvlastni_zpusobilost (jmeno) values ('dětská pneumologie');
insert into zvlastni_zpusobilost (jmeno) values ('návykové nemoci');
insert into zvlastni_zpusobilost (jmeno) values ('vnitřní lékařství');
insert into zvlastni_zpusobilost (jmeno) values ('gynekologie dětí a dospívajících');
insert into zvlastni_zpusobilost (jmeno) values ('intervenční kardiologie');
insert into zvlastni_zpusobilost (jmeno) values ('intenzivní medicína');
insert into zvlastni_zpusobilost (jmeno) values ('klinická výživa a intenzivní metabolická péče');
insert into zvlastni_zpusobilost (jmeno) values ('úrazová chirurgie');
insert into zvlastni_zpusobilost (jmeno) values ('popáleninová medicína');
insert into zvlastni_zpusobilost (jmeno) values ('veřejné zdravotnictví');
insert into zvlastni_zpusobilost (jmeno) values ('hrudní chirurgie');
insert into zvlastni_zpusobilost (jmeno) values ('klinická osteologie');
insert into zvlastni_zpusobilost (jmeno) values ('paliativní medicína');
insert into zvlastni_zpusobilost (jmeno) values ('foniatrie');
insert into zvlastni_zpusobilost (jmeno) values ('algeziologie');
insert into zvlastni_zpusobilost (jmeno) values ('angiologie');
insert into zvlastni_zpusobilost (jmeno) values ('dětská kardiologie');
insert into zvlastni_zpusobilost (jmeno) values ('dětská gastroenterologie a hepatologie');
insert into zvlastni_zpusobilost (jmeno) values ('dětská endokrinologie a diabetologie');
insert into zvlastni_zpusobilost (jmeno) values ('psychosomatika');

-- Zamestananec
insert into zamestnanec (rodne_cislo, zamestnavatel_ico, obor_zkratka, email, heslo, jmeno, prijmeni, pohlavi, datum_narozeni) values ('9302215197', '27604977', 'PNE', 'rozella@gmail.com', '7d17bc2eddb28300073ec2e802291bc67d597d593ec57fee8aa916c2656416c4', 'Rozella', 'Lage', 'Male', '1993-02-21');
insert into zamestnanec (rodne_cislo, zamestnavatel_ico, obor_zkratka, email, heslo, jmeno, prijmeni, pohlavi, datum_narozeni) values ('9155276702', '00001350', 'PNE', 'seward@gmail.com', '8b788fbf2cca5384c3c562553a27b738299574026b789c0a957d8123cbaa935b', 'Seward', 'Ambresin', 'Female', '1991-05-27');
insert into zamestnanec (rodne_cislo, zamestnavatel_ico, obor_zkratka, email, heslo, jmeno, prijmeni, pohlavi, datum_narozeni) values ('8210259387', '00001350', 'URO', 'cayla@gmail.com', '147964f85ef8e24603cd5c414ef871bb73ef7688d43807774c86d1cab5f072ad', 'Cayla', 'Siflet', 'Male', '1982-10-25');
insert into zamestnanec (rodne_cislo, zamestnavatel_ico, obor_zkratka, email, heslo, jmeno, prijmeni, pohlavi, datum_narozeni) values ('9957245771', '64945880', 'KAR', 'eileen@gmail.com', 'da683851328dfd0f2c0cc5094a6b4016c6ec9080ff04acf4324d5318354fbf7d', 'Eileen', 'Copcutt', 'Female', '1999-07-24');
insert into zamestnanec (rodne_cislo, zamestnavatel_ico, obor_zkratka, email, heslo, jmeno, prijmeni, pohlavi, datum_narozeni) values ('9705239588', '26185610', 'GAS', 'tybi@gmail.com', '0d21fc44c668edee0853e8f9f6bc8f24fb7f7bc90058762adf86a80306eca3eb', 'Tybi', 'Vedenisov', 'Male', '1997-05-23');
insert into zamestnanec (rodne_cislo, zamestnavatel_ico, obor_zkratka, email, heslo, jmeno, prijmeni, pohlavi, datum_narozeni) values ('7651080118', '27604977', 'GAS', 'donny@gmail.com', 'c1080e70d587ee0193b93e56a0970315a76f5142e133f24fec71dc84a5693799', 'Donny', 'Lawrence', 'Female', '1976-01-08');
insert into zamestnanec (rodne_cislo, zamestnavatel_ico, obor_zkratka, email, heslo, jmeno, prijmeni, pohlavi, datum_narozeni) values ('0211047232', '00268577', 'NEU', 'aleta@gmail.com', '8d3ee68da09fd218a7cc3d72c5ed13357572aa7641b4dba5f48694a5c941f56a', 'Aleta', 'Worsfold', 'Male', '2002-11-04');
insert into zamestnanec (rodne_cislo, zamestnavatel_ico, obor_zkratka, email, heslo, jmeno, prijmeni, pohlavi, datum_narozeni) values ('8105096219', '45274649', 'TRA', 'mariann@gmail.com', 'f72680c61fcdf97b7ccb5aa2242b2c4885ee214620afd9c5b71e034dc39ff072', 'Mariann', 'Golt', 'Male', '1981-05-09');
insert into zamestnanec (rodne_cislo, zamestnavatel_ico, obor_zkratka, email, heslo, jmeno, prijmeni, pohlavi, datum_narozeni) values ('8505113254', '45274649', 'PED', 'armin@gmail.com', '55caa7dd2acf2b6e71349c0a6d20bdd728a860973782c9a2f32fc360b819bac4', 'Armin', 'Laughrey', 'Male', '1985-05-11');
insert into zamestnanec (rodne_cislo, zamestnavatel_ico, obor_zkratka, email, heslo, jmeno, prijmeni, pohlavi, datum_narozeni) values ('8759153403', '27604977', 'OFT', 'corilla@gmail.com', '875474bda40346c92a67aa0c1559f53b8bc6c568627b5b68392c11c394acd03d', 'Corilla', 'Gerber', 'Female', '1987-09-15');
insert into zamestnanec (rodne_cislo, zamestnavatel_ico, obor_zkratka, email, heslo, jmeno, prijmeni, pohlavi, datum_narozeni) values ('7401068719', '63473291', 'GAS', 'codie@gmail.com', '05bab187df629186727b7253af7497455d2c9eef2394a99d6cd67d7f0b0312d0', 'Codie', 'Scarlan', 'Male', '1974-01-06');

-- Zamestnanec zvlastni zpusobilost
insert into zamestnanec_zvlastni_zpusobilost (rodne_cislo_zamestnanec, jmeno_zvlastni_zpusobilost) values ('9302215197', 'intenzivní medicína');
insert into zamestnanec_zvlastni_zpusobilost (rodne_cislo_zamestnanec, jmeno_zvlastni_zpusobilost) values ('9302215197', 'dětská pneumologie');
insert into zamestnanec_zvlastni_zpusobilost (rodne_cislo_zamestnanec, jmeno_zvlastni_zpusobilost) values ('9302215197', 'hrudní chirurgie');
insert into zamestnanec_zvlastni_zpusobilost (rodne_cislo_zamestnanec, jmeno_zvlastni_zpusobilost) values ('9957245771', 'intervenční kardiologie');
insert into zamestnanec_zvlastni_zpusobilost (rodne_cislo_zamestnanec, jmeno_zvlastni_zpusobilost) values ('8105096219', 'úrazová chirurgie');
insert into zamestnanec_zvlastni_zpusobilost (rodne_cislo_zamestnanec, jmeno_zvlastni_zpusobilost) values ('8505113254', 'popáleninová medicína');
insert into zamestnanec_zvlastni_zpusobilost (rodne_cislo_zamestnanec, jmeno_zvlastni_zpusobilost) values ('7401068719', 'dětská gastroenterologie a hepatologie');
insert into zamestnanec_zvlastni_zpusobilost (rodne_cislo_zamestnanec, jmeno_zvlastni_zpusobilost) values ('9705239588', 'dětská gastroenterologie a hepatologie');
insert into zamestnanec_zvlastni_zpusobilost (rodne_cislo_zamestnanec, jmeno_zvlastni_zpusobilost) values ('9155276702', 'dětská pneumologie');
insert into zamestnanec_zvlastni_zpusobilost (rodne_cislo_zamestnanec, jmeno_zvlastni_zpusobilost) values ('8759153403', 'foniatrie');

-- Zamestnanec akce
insert into zamestnanec_akce (rodne_cislo_zamestnanec, id_akce) values ('8505113254', '14');
insert into zamestnanec_akce (rodne_cislo_zamestnanec, id_akce) values ('0211047232', '13');
insert into zamestnanec_akce (rodne_cislo_zamestnanec, id_akce) values ('9957245771', '78');
insert into zamestnanec_akce (rodne_cislo_zamestnanec, id_akce) values ('9302215197', '1');
insert into zamestnanec_akce (rodne_cislo_zamestnanec, id_akce) values ('9705239588', '2');
insert into zamestnanec_akce (rodne_cislo_zamestnanec, id_akce) values ('8759153403', '13');
insert into zamestnanec_akce (rodne_cislo_zamestnanec, id_akce) values ('7401068719', '2');
insert into zamestnanec_akce (rodne_cislo_zamestnanec, id_akce) values ('7401068719', '59');
insert into zamestnanec_akce (rodne_cislo_zamestnanec, id_akce) values ('7401068719', '8');
insert into zamestnanec_akce (rodne_cislo_zamestnanec, id_akce) values ('8105096219', '9');



