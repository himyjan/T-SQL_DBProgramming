


--Elimizde sat��lar tablomuz var. Bu tablo �zerinde kullan�c� taraf�nda girilecek birden fazla �ehir ismine g�re arama yapmak istiyoruz.
--Kullan�c� taraf�ndan �ehirler virg�l ile ay�rt edilecek �ekilde girilecektir.
--Buna g�re bu �ehirlerin cirosunu getirecek SQL C�mlesini yazal�m


DECLARE @CITY AS VARCHAR(200) = '�stanbul,Sivas,Ankara,Bolu,Bilecik'

SELECT CITY,SUM(AMOUNT) TOTALAMOUNT, SUM(TOTALPRICE) TOTALSALE  FRoM LAB05 WHERE CITY IN (SELECT VALUE FROM string_split(@CITY,',')) GROUP BY CITY 