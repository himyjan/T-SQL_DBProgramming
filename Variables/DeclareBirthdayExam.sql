

--Elimizde m��terilerin bulundu�u bir veri seti var. Elle girilen g�n,ay ve y�l de�i�kenlerini alarak DATE t�r�nde tan�mlad���n�z bir de�i�kene de�er atayal�m.
--Ve bu de�er atanan m��teriler listesinden do�um tarihi bu de�ere sahip m��terileri �a��ral�m.


DECLARE @YEAR AS INT
DECLARE @MONTH AS INT
DECLARE @DAY AS INT

SET @YEAR = 1958
SET @MONTH = 10
SET @DAY = 10

DECLARE @DATE AS DATE

SET @DATE = DATEFROMPARTS(@YEAR,@MONTH,@DAY)

SELECT @DATE


SELECT * FROM LAB02 WHERE BIRTHDATE = @DATE 