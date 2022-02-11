-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-02-11 09:48:01.036

-- tables
-- Table: akce
CREATE TABLE akce (
    id_akce int NOT NULL,
    id_kurz int NOT NULL,
    datum datetime NOT NULL,
    adresa varchar(200) NOT NULL,
    CONSTRAINT akce_pk PRIMARY KEY (id_akce)
);

-- Table: kurz
CREATE TABLE kurz (
    id_kurz int NOT NULL AUTO_INCREMENT,
    obor_zkratka varchar(10) NOT NULL,
    nazev varchar(200) NOT NULL,
    CONSTRAINT kurz_pk PRIMARY KEY (id_kurz)
);

-- Table: obor
CREATE TABLE obor (
    zkratka varchar(10) NOT NULL,
    nazev varchar(200) NOT NULL,
    CONSTRAINT obor_pk PRIMARY KEY (zkratka)
);

-- Table: zamestnanec
CREATE TABLE zamestnanec (
    rodne_cislo varchar(10) NOT NULL,
    zamestnavatel_ico varchar(8) NOT NULL,
    obor_zkratka varchar(10) NOT NULL,
    email varchar(100) NOT NULL,
    heslo varchar(64) NOT NULL,
    jmeno varchar(100) NOT NULL,
    prijmeni varchar(100) NOT NULL,
    pohlavi varchar(10) NOT NULL,
    datum_narozeni date NOT NULL,
    UNIQUE INDEX UQ_email (email),
    UNIQUE INDEX UQ_rodne_cislo (rodne_cislo),
    CONSTRAINT zamestnanec_pk PRIMARY KEY (rodne_cislo)
);

-- Table: zamestnanec_akce
CREATE TABLE zamestnanec_akce (
    rodne_cislo_zamestnanec varchar(10) NOT NULL,
    id_akce int NOT NULL,
    CONSTRAINT zamestnanec_akce_pk PRIMARY KEY (rodne_cislo_zamestnanec,id_akce)
);

-- Table: zamestnanec_zvlastni_zpusobilost
CREATE TABLE zamestnanec_zvlastni_zpusobilost (
    rodne_cislo_zamestnanec varchar(10) NOT NULL,
    jmeno_zvlastni_zpusobilost varchar(50) NOT NULL,
    CONSTRAINT zamestnanec_zvlastni_zpusobilost_pk PRIMARY KEY (rodne_cislo_zamestnanec,jmeno_zvlastni_zpusobilost)
);

-- Table: zamestnavatel
CREATE TABLE zamestnavatel (
    ico varchar(8) NOT NULL,
    email varchar(100) NOT NULL,
    heslo varchar(64) NOT NULL,
    nazev_zamestnavatele varchar(200) NOT NULL,
    adresa varchar(200) NOT NULL,
    CONSTRAINT zamestnavatel_pk PRIMARY KEY (ico)
);

-- Table: zvlastni_zpusobilost
CREATE TABLE zvlastni_zpusobilost (
    jmeno varchar(100) NOT NULL,
    CONSTRAINT zvlastni_zpusobilost_pk PRIMARY KEY (jmeno)
);

-- foreign keys
-- Reference: Table_14_zamestnanec (table: zamestnanec_zvlastni_zpusobilost)
ALTER TABLE zamestnanec_zvlastni_zpusobilost ADD CONSTRAINT Table_14_zamestnanec FOREIGN KEY Table_14_zamestnanec (rodne_cislo_zamestnanec)
    REFERENCES zamestnanec (rodne_cislo)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

-- Reference: Table_14_zvlastni_zpusobilosti (table: zamestnanec_zvlastni_zpusobilost)
ALTER TABLE zamestnanec_zvlastni_zpusobilost ADD CONSTRAINT Table_14_zvlastni_zpusobilosti FOREIGN KEY Table_14_zvlastni_zpusobilosti (jmeno_zvlastni_zpusobilost)
    REFERENCES zvlastni_zpusobilost (jmeno)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

-- Reference: akce_kurz (table: akce)
ALTER TABLE akce ADD CONSTRAINT akce_kurz FOREIGN KEY akce_kurz (id_kurz)
    REFERENCES kurz (id_kurz)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

-- Reference: kurz_obor (table: kurz)
ALTER TABLE kurz ADD CONSTRAINT kurz_obor FOREIGN KEY kurz_obor (obor_zkratka)
    REFERENCES obor (zkratka)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

-- Reference: zamestnanec_akce_akce (table: zamestnanec_akce)
ALTER TABLE zamestnanec_akce ADD CONSTRAINT zamestnanec_akce_akce FOREIGN KEY zamestnanec_akce_akce (id_akce)
    REFERENCES akce (id_akce)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

-- Reference: zamestnanec_akce_zamestnanec (table: zamestnanec_akce)
ALTER TABLE zamestnanec_akce ADD CONSTRAINT zamestnanec_akce_zamestnanec FOREIGN KEY zamestnanec_akce_zamestnanec (rodne_cislo_zamestnanec)
    REFERENCES zamestnanec (rodne_cislo)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

-- Reference: zamestnanec_obor (table: zamestnanec)
ALTER TABLE zamestnanec ADD CONSTRAINT zamestnanec_obor FOREIGN KEY zamestnanec_obor (obor_zkratka)
    REFERENCES obor (zkratka)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

-- Reference: zamestnanec_zamestnavatel (table: zamestnanec)
ALTER TABLE zamestnanec ADD CONSTRAINT zamestnanec_zamestnavatel FOREIGN KEY zamestnanec_zamestnavatel (zamestnavatel_ico)
    REFERENCES zamestnavatel (ico)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

-- End of file.

