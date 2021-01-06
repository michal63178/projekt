INSERT INTO produkty (rok_produkcji, cena, ocena, ilosc, opis)
VALUES(2020, 700.99, 4, 20, 'Najniższy model z linii'),
	  (2020, 1000, 4.5, 15, 'Wydajny model'),
	  (2020, 1200, 4.7, 13, 'Do zastosowań profesjonalnych'),
	  (2020, 1500, 5, 7, 'Model topowy'),
      (2020, 500.79, 4, 17, 'Model budżetowy'),
      (2019, 850, 4.1, 10, 'Wydajny w typowych zastosowań'),
      (2020, 1000, 4.3, 9, 'Wydajny procesor'),
      (2019, 1359, 4.5, 7, 'Dla enyuzjastów'),
      (2020, 1500, 4.9, 5, 'Do stacji roboczych'),
      (2020, 2000, 5, 3, 'Do najcięższych zastosowań'),
      (2020, 100, 3.7, 19, 'Budżetowy'),
      (2019, 300, 3.9, 14, 'Do biura'),
      (2020, 500, 4.1, 12, 'Najlepszy do internetu'),
      (2020, 700, 4.3, 10, 'Do gier na low-medium'),
      (2019, 1300, 4.7, 6, 'Do każdej gry'),
      (2020, 2000, 4.9, 1, 'Do montażu filmów');

INSERT INTO procesory (id_produktu, data_przyjecia, nazwa, producent, taktowanie, liczba_rdzeni, wielowatkowosc, wersja_pcie)
VALUES(17, '2020-01-06', 'Ryzen 5600', 'AMD', 3.2, 4, 0, 4),
      (18, '2020-01-06', 'Ryzen 5600X', 'AMD', 3.3, 6, 0, 4),
      (19, '2020-01-06', 'Ryzen 8600', 'AMD', 3.6, 8, 1, 4),
      (20, '2020-01-06', 'Ryzen 9600X', 'AMD', 3.9, 12, 1, 4),
      (21, '2020-01-06', 'Ryzen 3100', 'AMD', 3, 4, 0, 3),
      (22, '2020-01-06', 'Ryzen 3300X', 'AMD', 3, 6, 1, 3),
      (23, '2020-01-06', 'Ryzen 5300', 'AMD', 3.3, 8, 1, 3),
      (24, '2020-01-06', 'Ryzen 5600XS', 'AMD', 3.5, 12, 0, 3),
      (25, '2020-01-06', 'Ryzen 7800X', 'AMD', 3.7, 16, 1, 3),
      (26, '2020-01-06', 'Ryzen 8600X', 'AMD', 4.5, 20, 1, 3),
      (27, '2020-01-06', 'Celeron G330 ', 'Intel', 3, 4, 0, 3),
      (28, '2020-01-06', 'Core Pentium Gold G550', 'Intel', 3, 4, 0, 3),
      (29, '2020-01-06', 'Core i3-10010', 'Intel', 3.1, 6, 0, 4),
      (30, '2020-01-06', 'Core i5-10100', 'Intel', 3.3, 8, 0, 4),
      (31, '2020-01-06', 'Core i7-10010', 'Intel', 3.5, 10, 1, 4),
      (32, '2020-01-06', 'Core i9-10900K', 'Intel', 3.7, 12, 1, 4);

INSERT INTO zamowienia (spsob_dostawy, sposob_platnosci, imie, nazwisko, ulica, nr_mieszkania, kod_pocztowy, miejscowosc, e_mail, telefon)
VALUES('kurier', 'przy odbiorze', 'Paweł', 'Nowak', 'Zwyczajna', '30', '999-99', 'Radom', 'pawloo@gmail.com', '123456789');

INSERT INTO zamowione_produkty (nr_zamowienia, id_produktu, sztuk)
VALUES(1, 17, 3),
	  (1, 25, 8),
      (1, 32, 9);