-- co zamówił klient
SELECT 
    nazwa
FROM
    procesory
WHERE
    id_produktu IN (SELECT 
            id_produktu
        FROM
            zamowione_produkty
        WHERE
            nr_zamowienia = 1) 
UNION SELECT 
    nazwa
FROM
    karty_graficzne
WHERE
    id_produktu IN (SELECT 
            id_produktu
        FROM
            zamowione_produkty
        WHERE
            nr_zamowienia = 1);