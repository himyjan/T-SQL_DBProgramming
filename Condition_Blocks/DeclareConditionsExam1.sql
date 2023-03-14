

--Elimizde plaka bilgileri ile birlikte ara� verilerinin tutuldu�u bir tablo var. Bu tablodan dinamik �ekilde sorgu �ekmek istiyoruz.
--Tablomuza @PLATE,@COLOR,@TITLE,@BRAND,@LICENCEDATE1,@LICENCEDATE2 de�i�kenlerini g�nderiyoruz. Bu de�i�kenler bo� geliyor ise varsay�lan de�erlere g�re de�er almas�n� istiyoruz.
--Bu �ekilde tablodan sorgu �eken T-SQL kodunu yazal�m.


DECLARE @PLATE AS VARCHAR(20) = '34%'
DECLARE @COLOR AS VARCHAR(20) = 'BEYAZ'
DECLARE @TITLE AS VARCHAR(100) = 'Fiat%'
DECLARE @BRAND AS VARCHAR(20) = 'Fiat%'
DECLARE @LICENCEDATE1 AS DATE = '20180101'
DECLARE @LICENCEDATE2 AS DATE = '20201231'

IF @PLATE = ''
	SET @PLATE = '%'
IF @COLOR = ''
	SET @COLOR = '%'
IF @TITLE = ''
	SET @TITLE = '%'
IF @BRAND = ''
	SET @BRAND = '%'
IF @LICENCEDATE1 = ''
	SET @LICENCEDATE1 = '%'
IF @LICENCEDATE2 = ''
	SET @LICENCEDATE2 = '%'


SELECT * FROM LAB01 
WHERE PLATE LIKE @PLATE
AND COLOR LIKE @COLOR
AND TITLE LIKE @TITLE
AND BRAND LIKE @BRAND
AND LICENCEDATE BETWEEN ISNULL( @LICENCEDATE1,'20180101') AND ISNULL(@LICENCEDATE2,GETDATE())