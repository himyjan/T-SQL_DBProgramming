--City ve Town alanlar�n�n ilk harflerini b�y�k yap�yoruz. Geri kalanlar� k���k yap�yoruz.





SELECT * FROM LAB04

SELECT LOWER('BURDUR')

SELECT LEFT('BURDUR',1) + LOWER(RIGHT('BURDUR',5))

--Bir string ifadenin ka� harfli oldu�unu ve uzunlu�unu g�steren ifade.

SELECT *, (LEFT(CITY,1) + LOWER(RIGHT(CITY,LEN(CITY)-1))) FROM LAB04

--�lk Harfi B�y�k Di�er harflerinin hepsi k���k.

SELECT *, (LEFT(TOWN,1) + LOWER(RIGHT(TOWN,LEN(TOWN)-1))) FROM LAB04


UPDATE LAB04 SET CITY = (LEFT(CITY,1) + LOWER(RIGHT(CITY,LEN(CITY)-1))), TOWN = (LEFT(TOWN,1) + LOWER(RIGHT(TOWN,LEN(TOWN)-1))) 



