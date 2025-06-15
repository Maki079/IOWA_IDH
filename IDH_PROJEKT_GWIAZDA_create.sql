-- tables
-- Table: Alkohol
CREATE TABLE IOWA_GWIAZDA.Alkohol (
    IdAlkohol int identity(1,1) PRIMARY KEY,
    Nazwa varchar(200)  NOT NULL,
    Rodzaj varchar(200)  NOT NULL,
    RozmiarButelkiWLitrach NUMERIC(3, 2)  NOT NULL
);

-- Table: Cena
CREATE TABLE IOWA_GWIAZDA.Cena (
    IdCena int identity(1,1) PRIMARY KEY,
    WartoscHurtowa money  NOT NULL,
    WartoscDetaliczna money  NOT NULL
);

-- Table: Czas
CREATE TABLE IOWA_GWIAZDA.Czas (
    IdCzas int identity(1,1) PRIMARY KEY,
    PoraRoku varchar(100)  NOT NULL,
    Dzien int  NOT NULL,
    Miesiac int  NOT NULL,
    Rok int  NOT NULL,
    Data date  NOT NULL,
    Kwartal int  NOT NULL,
    WydarzenieGeopolityczne varchar(400) NOT NULL
);

-- Table: Producent
CREATE TABLE IOWA_GWIAZDA.Producent (
    IdProducent int identity(1,1) PRIMARY KEY,
    Nazwa varchar(200)  NOT NULL,
  
);

-- Table: Sklep
CREATE TABLE IOWA_GWIAZDA.Sklep (
    IdSklep int identity(1,1) PRIMARY KEY,
    Nazwa varchar(200)  NOT NULL,
    Adres varchar(200)  NOT NULL,
    Miasto varchar(200)  NOT NULL
   
);

-- Table: Srzedaz
CREATE TABLE IOWA_GWIAZDA.Sprzedaz (
    IdSklep int  NOT NULL,
    IdAlkohol int  NOT NULL,
    IdProducent int  NOT NULL,
    IdCzas int  NOT NULL,
    IdCena int  NOT NULL,
    LacznaKwotaSprzedazy money  NOT NULL,
    LacznaIloscSprzedanychButelek NUMERIC(12)  NOT NULL,
    LacznaIloscSprzedanegoAlkoholuWLitrach NUMERIC(9, 2)  NOT NULL,
    PRIMARY KEY  (IdSklep,IdAlkohol,IdCzas,IdProducent,IdCena)
);

ALTER TABLE IOWA_GWIAZDA.Sprzedaz
ADD CONSTRAINT fk_skelp
FOREIGN KEY(IdSklep) REFERENCES IOWA_GWIAZDA.Sklep
GO

ALTER TABLE IOWA_GWIAZDA.Sprzedaz
ADD CONSTRAINT fk_alkohol
FOREIGN KEY(IdAlkohol) REFERENCES IOWA_GWIAZDA.Alkohol
GO

ALTER TABLE IOWA_GWIAZDA.Sprzedaz
ADD CONSTRAINT fk_producent
FOREIGN KEY(IdProducent) REFERENCES IOWA_GWIAZDA.Producent
GO

ALTER TABLE IOWA_GWIAZDA.Sprzedaz
ADD CONSTRAINT fk_czas
FOREIGN KEY(IdCzas) REFERENCES IOWA_GWIAZDA.Czas
GO

ALTER TABLE IOWA_GWIAZDA.Sprzedaz
ADD CONSTRAINT fk_cena
FOREIGN KEY(IdCena) REFERENCES IOWA_GWIAZDA.Cena
GO


-- End of file.

