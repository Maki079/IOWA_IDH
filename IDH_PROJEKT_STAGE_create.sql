-- tables
-- Table: Alkohol
CREATE TABLE IOWA_STAGE.AlkoholSt (
    IdAlkoholT int identity(1,1) PRIMARY KEY,
    Nazwa varchar(200)  NOT NULL,
    Rodzaj varchar(200)  NOT NULL,
    RozmiarButelkiWLitrach NUMERIC(3, 2)  NOT NULL
);

-- Table: Cena
CREATE TABLE IOWA_STAGE.CenaSt (
    IdCenaT int identity(1,1) PRIMARY KEY,
    WartoscHurtowa money  NOT NULL,
    WartoscDetaliczna money  NOT NULL
);

-- Table: Czas
CREATE TABLE IOWA_STAGE.CzasSt (
    IdCzasT int identity(1,1) PRIMARY KEY,
    PoraRoku varchar(100) NULL,
    Dzien int  NOT NULL,
    Miesiac int  NOT NULL,
    Rok int  NOT NULL,
    Data date  NOT NULL,
    Kwartal int  NOT NULL,
    WydarzenieGeopolityczne varchar(400) NULL,
);

-- Table: Producent
CREATE TABLE IOWA_STAGE.ProducentSt (
    IdProducentT int identity(1,1) PRIMARY KEY,
    Nazwa varchar(200)  NOT NULL,
  
);

-- Table: Sklep
CREATE TABLE IOWA_STAGE.SklepSt (
    IdSklepT int identity(1,1) PRIMARY KEY,
    Nazwa varchar(200)  NOT NULL,
    Adres varchar(200)  NOT NULL,
    Miasto varchar(200)  NOT NULL,
   
);

-- Table: Srzedaz
CREATE TABLE IOWA_STAGE.Sprzedaz (
    IdSklepT int  NOT NULL,
    IdAlkoholT int  NOT NULL,
    IdProducentT int  NOT NULL,
    IdCzasT int  NOT NULL,
    IdCenaT int  NOT NULL,
    LacznaKwotaSprzedazy money  NOT NULL,
    LacznaIloscSprzedanychButelek NUMERIC(12)  NOT NULL,
    LacznaIloscSprzedanegoAlkoholuWLitrach NUMERIC(9, 2)  NOT NULL,
    CONSTRAINT PK_SprzedazSt PRIMARY KEY
	(IdSklepT,
	IdAlkoholT,
	IdCzasT,
	IdProducentT,
	IdCenaT)
);


-- End of file.

