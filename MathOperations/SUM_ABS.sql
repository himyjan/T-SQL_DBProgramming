


--Rand() Fonksiyonu Kullan�m�

SELECT RAND() --Random bir de�er �retir.


SELECT CONVERT(INT,RAND()*100) --0-100 Aras�nda bir de�er �retmek.



--Elimizde para hareketlerinin kayd�n� tutan bir sistemin veriseti var.Burada her bir m��teri i�in gelen ve giden havale bilgileri tutuluyor.
--Gelen havale i�in para tutar� pozitif, giden havale i�in negatif de�er olarak veritaban�na kaydediliyor.
--Bu tabloda m��teri baz�nda toplam para trafi�i hacmi ve her bir m��terinin bakiyesini g�sterecek sorguyu yazal�m.


SELECT CUSTOMERID,SUM(AMOUNT) BALANCE FROM LAB01,
SUM(ABS(AMOUNT)) MONEYVOLUME
WHERE CUSTOMERID = 55
GROUP BY CUSTOMERID


SELECT CUSTOMERID, SUM(AMOUNT) BALANCE,
SUM(ABS(AMOUNT)) MONEYVALUE
FROM LAB01
GROUP BY CUSTOMERID