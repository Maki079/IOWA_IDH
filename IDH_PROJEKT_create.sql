-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2025-05-31 14:57:21.502

-- tables
-- Table: Alkohol
CREATE TABLE Alkohol (
    Id int  NOT NULL,
    Nazwa varchar(200)  NOT NULL,
    Rodzaj varchar(200)  NOT NULL,
    RozmiarButelkiWLitrach int  NOT NULL,
    CONSTRAINT Alkohol_pk PRIMARY KEY  (Id)
);

-- Table: Cena
CREATE TABLE Cena (
    Id int  NOT NULL,
    WartoscHurtowa money  NOT NULL,
    WartoscDetaliczna money  NOT NULL,
    CONSTRAINT Cena_pk PRIMARY KEY  (Id)
);

-- Table: Czas
CREATE TABLE Czas (
    Id int  NOT NULL,
    PoraRoku nvarchar(100)  NOT NULL,
    Dzien int  NOT NULL,
    Miesiac int  NOT NULL,
    Rok int  NOT NULL,
    Data date  NOT NULL,
    Kwartal int  NOT NULL,
    WydarzenieGeopolityczne nvarchar(100)  NOT NULL,
    CONSTRAINT Czas_pk PRIMARY KEY  (Id)
);

-- Table: Producent
CREATE TABLE Producent (
    Id int  NOT NULL,
    Nazwa varchar(200)  NOT NULL,
    CONSTRAINT Producent_pk PRIMARY KEY  (Id)
);

-- Table: Sklep
CREATE TABLE Sklep (
    Id int  NOT NULL,
    Nazwa varchar(200)  NOT NULL,
    Adres varchar(200)  NOT NULL,
    Miasto varchar(200)  NOT NULL,
    CONSTRAINT Sklep_pk PRIMARY KEY  (Id)
);

-- Table: Srzedaz
CREATE TABLE Srzedaz (
    IdSklep int  NOT NULL,
    IdAlkohol int  NOT NULL,
    IdProducent int  NOT NULL,
    IdCzas int  NOT NULL,
    IdCena int  NOT NULL,
    LacznaKwotaSprzedazy money  NOT NULL,
    LacznaIloscSprzedanychButelek int  NOT NULL,
    LacznaIloscSprzedanegoAlkoholuWLitrach int  NOT NULL,
    CONSTRAINT Srzedaz_pk PRIMARY KEY  (IdSklep,IdAlkohol,IdCzas,IdProducent,IdCena)
);

-- foreign keys
-- Reference: Srzedaz_Alkohol (table: Srzedaz)
ALTER TABLE Srzedaz ADD CONSTRAINT Srzedaz_Alkohol
    FOREIGN KEY (IdAlkohol)
    REFERENCES Alkohol (Id);

-- Reference: Srzedaz_Cena (table: Srzedaz)
ALTER TABLE Srzedaz ADD CONSTRAINT Srzedaz_Cena
    FOREIGN KEY (IdCena)
    REFERENCES Cena (Id);

-- Reference: Srzedaz_Czas (table: Srzedaz)
ALTER TABLE Srzedaz ADD CONSTRAINT Srzedaz_Czas
    FOREIGN KEY (IdCzas)
    REFERENCES Czas (Id);

-- Reference: Srzedaz_Producent (table: Srzedaz)
ALTER TABLE Srzedaz ADD CONSTRAINT Srzedaz_Producent
    FOREIGN KEY (IdProducent)
    REFERENCES Producent (Id);

-- Reference: Srzedaz_Sklep (table: Srzedaz)
ALTER TABLE Srzedaz ADD CONSTRAINT Srzedaz_Sklep
    FOREIGN KEY (IdSklep)
    REFERENCES Sklep (Id);

-- End of file.

