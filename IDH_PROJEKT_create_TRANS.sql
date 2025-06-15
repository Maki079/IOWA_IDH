-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2025-06-03 20:02:11.586

-- tables
-- Table: Alkohol

use s20806

CREATE TABLE IOWA_TRANS.Alkohol (
    IdAlkochol int identity(1,1) PRIMARY KEY,
    AlkocholKod varchar(50)  NOT NULL,
    AlkocholNazwa varchar(200)  NOT NULL,
    KategoriaNazwa varchar(200) NULL,
    ObjButelkiMl int  NOT NULL,
    Cena_IdCena int  NOT NULL,
	Producent_IdProducent int  NOT NULL,
);

-- Table: Cena
CREATE TABLE IOWA_TRANS.Cena (
    IdCena int identity(1,1) PRIMARY KEY,
    CenaDetal decimal(10, 2)  NOT NULL,
    CenaHurt decimal(10, 2)  NOT NULL
);

-- Table: Producent
CREATE TABLE IOWA_TRANS.Producent (
    IdProducent int identity(1,1) PRIMARY KEY,
    ProducentKod varchar(50)  NOT NULL,
    ProducentNazwa varchar(200)  NOT NULL
);

-- Table: Rachunek
CREATE TABLE IOWA_TRANS.Rachunek (
    IdRachunek int identity(1,1) PRIMARY KEY,
    Sklep_IdSklep int  NOT NULL,
    Alkohol_IdAlkochol int  NOT NULL,
    RachunekSuma decimal(10, 2)  NOT NULL,
    RachunekIloscButelek decimal(10, 2)  NOT NULL,
    RachunekLitrarz decimal(10, 2)  NOT NULL,
	RachunekData date NOT NULL
);

-- Table: Sklep
CREATE TABLE IOWA_TRANS.Sklep (
    IdSklep int identity(1,1) PRIMARY KEY,
    SklepKod varchar(50)  NOT NULL,
    SklepNazwa varchar(200)  NOT NULL,
    SklepMiasto varchar(200)  NOT NULL,
    SklepAdres varchar(200)  NOT NULL
);

-- foreign keys
-- Reference: Alkohol_Cena (table: Alkohol)
ALTER TABLE IOWA_TRANS.Alkohol ADD CONSTRAINT Alkohol_Cena
    FOREIGN KEY (Cena_IdCena)
    REFERENCES IOWA_TRANS.Cena (IdCena);

-- Reference: Rachunek_Producent (table: Rachunek)
ALTER TABLE IOWA_TRANS.Alkohol ADD CONSTRAINT Alkohol_Producent
    FOREIGN KEY (Producent_IdProducent)
    REFERENCES IOWA_TRANS.Producent (IdProducent);

-- Reference: Rachunek_Alkohol (table: Rachunek)
ALTER TABLE IOWA_TRANS.Rachunek ADD CONSTRAINT Rachunek_Alkohol
    FOREIGN KEY (Alkohol_IdAlkochol)
    REFERENCES IOWA_TRANS.Alkohol (IdAlkochol);



-- Reference: Rachunek_Sklep (table: Rachunek)
ALTER TABLE IOWA_TRANS.Rachunek ADD CONSTRAINT Rachunek_Sklep
    FOREIGN KEY (Sklep_IdSklep)
    REFERENCES IOWA_TRANS.Sklep (IdSklep);

-- End of file.


ALTER TABLE IOWA_TRANS.Alkohol DROP CONSTRAINT Alkohol_Cena;

ALTER TABLE IOWA_TRANS.Rachunek DROP CONSTRAINT Rachunek_Alkohol;

ALTER TABLE IOWA_TRANS.Rachunek DROP CONSTRAINT Rachunek_Producent;

ALTER TABLE IOWA_TRANS.Rachunek DROP CONSTRAINT Rachunek_Sklep;

-- tables
DROP TABLE IOWA_TRANS.Alkohol;

DROP TABLE IOWA_TRANS.Cena;

DROP TABLE IOWA_TRANS.Producent;

DROP TABLE IOWA_TRANS.Rachunek;

DROP TABLE IOWA_TRANS.Sklep;
