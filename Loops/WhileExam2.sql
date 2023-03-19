


--100 Tane s�cakl�k �l�er termometreden s�cakl�k �l��m bilgilerini almak istiyoruz. Bunun i�in 100 tane termometre tan�mlay�p veritaban�na kaydediniz.
--Her biri i�in 18-23 derece aras�nda rastge�e b,r de�er atay�p okunana de�er k�sm�na bu de�eri kaydedelim.


SELECT * FROM LAB01 

TRUNCATE TABLE LAB01 --Tabloyu ge�i�i olarak sileriz. 


DECLARE @I AS INT = 1
WHILE @I < 1000000
BEGIN
	DECLARE @DEVICENAME AS VARCHAR(100)
	SET @DEVICENAME = 'THERMOMETER-' +REPLICATE('0',4-LEN(@I))+ CONVERT(VARCHAR,@I)
	DECLARE @CURRENTVALUE AS FLOAT
	SET @CURRENTVALUE =ROUND( 15 + RAND()*5,2)
	INSERT INTO LAB01 (DEVICENAME,CURRENTVALUE) VALUES (@DEVICENAME,@CURRENTVALUE)
	--SELECT @DEVICENAME,@CURRENTVALUE
	SET @I = @I + 1
END