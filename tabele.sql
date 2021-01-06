-- usunac sredniki
-- kwerendy dodać w zkładce views
CREATE DATABASE sklep;
USE sklep;

CREATE TABLE produkty (
    id_produktu INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rok_produkcji SMALLINT UNSIGNED NOT NULL,
    cena DECIMAL(7, 2) NOT NULL, -- zł
    ocena DECIMAL(3, 2) NOT NULL, -- /5
    ilosc TINYINT UNSIGNED NOT NULL,
    opis VARCHAR(30) NOT NULL
);

CREATE TABLE plyty_glowne (
    id_plyty_glownej INT AUTO_INCREMENT PRIMARY KEY,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    data_przyjecia DATE NOT NULL,
    nazwa VARCHAR(30) NOT NULL,
    producent VARCHAR(30) NOT NULL,
    gniazdo VARCHAR(30) NOT NULL,
    chipset VARCHAR(30) NOT NULL,
    typ_sata VARCHAR(30) NOT NULL,
    ilosc_sata VARCHAR(30) NOT NULL,
    m_2 TINYINT UNSIGNED NOT NULL, -- 1 - tak, 0 - nie
    ilosc_m_2 TINYINT UNSIGNED NOT NULL,
    wersja_pcie TINYINT UNSIGNED NOT NULL
);

CREATE TABLE procesory (
    id_procesora INT AUTO_INCREMENT PRIMARY KEY,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    data_przyjecia DATE NOT NULL,
    nazwa VARCHAR(30) NOT NULL,
    producent VARCHAR(30) NOT NULL,
    taktowanie DECIMAL(3, 2) NOT NULL, -- ghz
    liczba_rdzeni TINYINT UNSIGNED NOT NULL,
    wielowatkowosc TINYINT UNSIGNED NOT NULL, -- 1 - tak, 0 - nie
    wersja_pcie TINYINT UNSIGNED NOT NULL
);

CREATE TABLE karty_graficzne (
    id_karty_graficznej INT AUTO_INCREMENT PRIMARY KEY,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty (id_produktu),
    data_przyjecia DATE NOT NULL,
    nazwa VARCHAR(30) NOT NULL,
    firma VARCHAR(30) NOT NULL,
    producent VARCHAR(30) NOT NULL,
    taktowanie DECIMAL(4, 3) NOT NULL, -- ghz
    liczba_rdzeni SMALLINT UNSIGNED NOT NULL,
    wersja_pcie TINYINT UNSIGNED NOT NULL,
    typ_pamieci VARCHAR(10) NOT NULL,
    pojemnosc_pamieci TINYINT UNSIGNED NOT NULL -- gb
);

CREATE TABLE pamieci_operacyjne (
    id_pamieci_operacyjnej INT AUTO_INCREMENT PRIMARY KEY,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    data_przyjecia DATE NOT NULL,
    nazwa VARCHAR(30) NOT NULL,
    producent VARCHAR(30) NOT NULL,
    taktowanie DECIMAL(3, 2) NOT NULL, -- ghz,
    typ VARCHAR(30) NOT NULL,
    opoznienie VARCHAR(30) NOT NULL
);

CREATE TABLE dyski (
    id_dysku INT AUTO_INCREMENT PRIMARY KEY,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    data_przyjecia DATE NOT NULL,
    nazwa VARCHAR(30) NOT NULL,
    producent VARCHAR(30) NOT NULL,
    pojemnosc TINYINT UNSIGNED NOT NULL, -- gb
    typ_zlacza VARCHAR(30) NOT NULL
);

CREATE TABLE karty_sieciowe (
    id_karty_sieciowej INT AUTO_INCREMENT PRIMARY KEY,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    data_przyjecia DATE NOT NULL,
    nazwa VARCHAR(30) NOT NULL,
    producent VARCHAR(30) NOT NULL,
    standar_ethernet VARCHAR(30) NOT NULL,
    standard_wifi VARCHAR(30) NOT NULL
);

CREATE TABLE karty_rozszerzen (
    id_karty_rozszerzeń INT AUTO_INCREMENT PRIMARY KEY,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    data_przyjecia DATE NOT NULL,
    nazwa VARCHAR(30) NOT NULL,
    producent VARCHAR(30) NOT NULL,
    funkcja VARCHAR(30) NOT NULL,
    technologia VARCHAR(30) NOT NULL
);

CREATE TABLE wentylatory (
    id_wentylatora INT AUTO_INCREMENT PRIMARY KEY,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    data_przyjecia DATE NOT NULL,
    nazwa VARCHAR(30) NOT NULL,
    producent VARCHAR(30) NOT NULL,
    gniazdo VARCHAR(30) NOT NULL,
    wymiary VARCHAR(30) NOT NULL,
    maksymalne_obroty SMALLINT UNSIGNED NOT NULL,
    halas VARCHAR(30) NOT NULL
);

CREATE TABLE pompy_wodne (
    id_pompy_wodnej INT AUTO_INCREMENT PRIMARY KEY,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    data_przyjecia DATE NOT NULL,
    nazwa VARCHAR(30) NOT NULL,
    producent VARCHAR(30) NOT NULL,
    gniazdo VARCHAR(30) NOT NULL,
    zasilanie VARCHAR(30) NOT NULL,
    moc VARCHAR(30) NOT NULL,
    halas VARCHAR(30) NOT NULL
    
);

CREATE TABLE pasty_termoprzewodzace (
    id_pasty_termoprzewodzacej INT AUTO_INCREMENT PRIMARY KEY,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    data_przyjecia DATE NOT NULL,
    nazwa VARCHAR(30) NOT NULL,
    producent VARCHAR(30) NOT NULL,
    przewodnosc VARCHAR(30) NOT NULL,
    rezystencja VARCHAR(30) NOT NULL,
    temperatura_robocza VARCHAR(30) NOT NULL
);

CREATE TABLE obudowy (
    id_obudowy INT AUTO_INCREMENT PRIMARY KEY,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    data_przyjecia DATE NOT NULL,
    nazwa VARCHAR(30) NOT NULL,
    producent VARCHAR(30) NOT NULL,
    wymiary VARCHAR(30) NOT NULL,
    rozmiar_plyty VARCHAR(30) NOT NULL,
    koszy_na_dyski TINYINT UNSIGNED NOT NULL
);

CREATE TABLE systemy_operacyjne (
    id_cpu INT AUTO_INCREMENT PRIMARY KEY,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    data_przyjecia DATE NOT NULL,
    nazwa VARCHAR(30) NOT NULL,
    producent VARCHAR(30) NOT NULL,
    licencja VARCHAR(30) NOT NULL
);

CREATE TABLE zamowienia (
    nr_zamowienia INT AUTO_INCREMENT PRIMARY KEY,
    spsob_dostawy ENUM('kurier', 'paczkomat', 'odbiór osobisty') NOT NULL,
    sposob_platnosci ENUM('przy odbiorze', 'przelew') NOT NULL,
    imie varchar(50) NOT NULL,
    nazwisko varchar(50) NOT NULL,
    ulica varchar(50) NOT NULL,
    nr_mieszkania varchar(50) NOT NULL,
    kod_pocztowy varchar(50) NOT NULL,
    miejscowosc varchar(50) NOT NULL,
    e_mail varchar(100) NOT NULL,
    telefon char(9) NOT NULL
);

CREATE TABLE zamowione_produkty (
    id_zamowionych INT AUTO_INCREMENT PRIMARY KEY,
    nr_zamowienia INT NOT NULL,
    id_produktu INT NOT NULL,
    FOREIGN KEY (nr_zamowienia) REFERENCES zamowienia(nr_zamowienia),
    FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    sztuk TINYINT UNSIGNED NOT NULL
);

CREATE TABLE dostawy (
    id_dostawy INT AUTO_INCREMENT PRIMARY KEY,
    data_przyjecia DATE NOT NULL,
    dostawca VARCHAR(30) NOT NULL,
    id_produktu INT NOT NULL,
    FOREIGN KEY (id_produktu) REFERENCES produkty (id_produktu),
    ilosc TINYINT UNSIGNED NOT NULL
);