


--Elimizde bir marketin sat�� verileri vard�r. Bu veriseti i�erisinde 2022 y�l�nda hangi ay toplam ne kadarl�k sat��
-- yap�ld��� bilgisini getiren sorguyu yazal�m.


SELECT DATEPART(YEAR,DATE_) AS YIL,
DATEPART(MONTH,DATE_) AS AY,
SUM(TOTALPRICE) AS TOPLAMSATIS FROM LAB03
WHERE DATE_ >= '2022.01.01'
GROUP BY DATEPART(YEAR,DATE_),DATEPART(MONTH,DATE_)
ORDER BY DATEPART(MONTH,DATE_)