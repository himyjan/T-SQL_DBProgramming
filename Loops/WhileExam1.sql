

SELECT * FROM TESTDB_TSQL.dbo.DATES


DECLARE @I AS INT = 0
WHILE @I <10
BEGIN
INSERT INTO DATES (DATE_) VALUES (GETDATE()) --While komutu ile bir �art ko�ulu koyar�z ve bu �art ko�uluna g�re i�lemleri s�rd�r�r�z.
WAITFOR DELAY '00:00:01' --SQL i�lemler de bekleme komutu
SET @I = @I + 1
END

TRUNCATE TABLE TESTDB_TSQL.dbo.DATES