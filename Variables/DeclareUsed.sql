

--Bir de�i�ken nas�l atan�r

--T-SQL de bir de�i�ken @i�areti ile tan�mlan�r.

--SQL'de bir de�i�ken tan�m� DECLARE olarak tan�mlan�r.

DECLARE @SAYI AS INT

SELECT @SAYI

DECLARE @SAYI1 AS INT
SET @SAYI1 = 15

DECLARE @SAYI2 AS INT
SET @SAYI2 = 20

DECLARE @TOPLAM AS INT
SET @TOPLAM = @SAYI1 + @SAYI2

SELECT @TOPLAM 