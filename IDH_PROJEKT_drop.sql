-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2025-06-03 20:02:11.586

-- foreign keys
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

-- End of file.

