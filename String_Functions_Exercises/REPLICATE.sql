--Elimizde bir market sisteminin veritaban� var. Burada ITEMCODE alan� metin bir alan olarak ID de�erine e�it �ekilde tutuluyor. Biz burada ITEMCODE ALANINI AKILLI KOD HAL�NE
--getirmek istiyoruz. �rne�in 1 numaral� sat�r i�in kategori kodu 'EVV' ve ITEMCODE 1 ise EVV000001 olacak �ekilde 24068 numaral� kay�t i�in ise GDA024068 olacak �ekilde
-- getirmek istiyoruz. UPDATE KODUNU YAZINIZ.


SELECT * FROM LAB07

SELECT 'EVV'  + REPLICATE('0',5)+ '1'

SELECT CATEGORY1CODE + REPLICATE('0',6-LEN(ITEMCODE)) + ITEMCODE FROM LAB07

UPDATE LAB07 SET ITEMCODE = CATEGORY1CODE + REPLICATE('0',6-LEN(ITEMCODE)) + ITEMCODE