


SELECT TRY_CAST('2022-16-24' AS DATE)

SELECT TRY_CONVERT(DATE,'2022-16-24')


--Elimizde bir E-Ticaret firmas�n�n kesmi� oldu�u faturalar�n listesini tutan bir veriseti var.
--Bu veriseti i�inde DATE_ alan� DATETIME t�r�nde. Bu tabloda DATE_ alan�n� DATE ve TIME t�r�nde par�alayarak Tarih ve Saat De�erlerini ayr� ayr� getirecek sorguyu yazal�m.


SELECT *,
CAST(DATE_ AS DATE),
CAST(DATE_ AS TIME),
CONVERT(DATE,DATE_) AS DATE FROM LAB01

SELECT *, CONVERT(VARCHAR,DATE_,103) DATESTR FROM LAB01



