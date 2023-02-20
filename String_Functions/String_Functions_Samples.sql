

--ASCII KULLANIM

SELECT ASCII('B')

SELECT ASCII('-')

SELECT ASCII ('SEFA')

--�zel karakterin veritabanlar�ndaki kar��l��� byte olarak numara de�erleri vard�r. 


-- CHAR Fonksiyonu
-- Bir karakterin hangi asc� de�ere geldi�ini g�r�nt�leyebiliriz.

SELECT CHAR(65) --BURADA 65'RAKAMINA GELEN KARAKTER�N KAR�ILI�I GEL�R YAN� A HARF�.


-- CONCAT Fonksiyonu birden fazla string ifadeyi birle�tirmek i�in kullan�l�r.

SELECT CONCAT ('SEFA','-' ,'PINAR')

SELECT 'SEFA' + 'PINAR'

-- LEFT-RIGHT sa�dan ve soldan karakterleri almak i�in kullan�l�r.

SELECT LEFT('SEFA PINAR',3)

SELECT RIGHT('SEFA PINAR',5)


-- TRIM Fonksiyonu

--(LTRIM,RTRIM) --Bir string ifadenin ba��nda ve sonunda bulunan ifadeleri temizler.

SELECT TRIM ('  SEFA')

SELECT LTRIM('SEFA   ')

SELECT RTRIM ('  PINAR')

-- Lower / Upper / Reverse / Replicate

--Lower fonksiyonu b�t�n fonksiyonlarda k���k harfe d�n��t�r�r.
--Upper fonksiyonu b�t�n fonksiyonlarda b�y�k harfe d�n��t�r�r. 
--Reverse tersten yazd�rma fonksiyonu
--Replicate bir string ifadeyi bizim belirledi�imiz say�da tekrar ettiren fonksiyon

SELECT LOWER('BTK AKADEM�')
SELECT UPPER ('btk akademi')
SELECT REVERSE ('BTK AKADEM�')
SELECT REPLICATE ('btk akademi ',2) --2 Kere belirtilen kelime tekrar etmi�tir.

--REPLACE Fonksiyonu: 
--Bir string ifadenin i�erisinde arad���m�z ifadeyi farkl� bir string de�eri ile de�i�tirebiliriz.

SELECT REPLACE('T-SQL ile herhangi bir programlama dili ile yap�labilecek hemen hemen her �eyi yapabiliriz.','T-SQL','Transact SQL')
--Burada birinci de�er ana de�erdir. �kinci de�er hangi de�eri de�i�tirece�imizi g�steririz. ���nc� de�erde ise de�i�tirelecek veriyi belirtiriz.

--SUBSTRING bir string ifadenin i�erisinde belirli bir alan� almak i�in kullan�r�z.

SELECT SUBSTRING ('SEFA PINAR',2,2) -- ikinci karakterden itibaren 2 karakter al diye belirtiyoruz.
--Genelde string parse ifadelerinde �ok kullan�l�r.


--CHARINDEX bir string ifadenin i�erisinde aranan de�erin nerede oldu�unu bize s�yler.

SELECT CHARINDEX ('2022','SQL SERVER 2022')

--STRING_SPLIT Fonksiyonu : Sonu� olarak bize tablo t�r�nde table t�r�nde de�er d�nd�r�r.


SELECT * FROM STRING_SPLIT('BTK Akademi e�itimleri ile SQL Server E�itimi', ' ')

--STRING ifade de�erini bo�lu�a g�re par�alayarak tablo gibi bize veri d�ner.

SELECT * FROM STRING_SPLIT('ANKARA-S�VAS-�ZM�R','-')


--STRING FONKS�YONLARI ALI�TIRMALAR

































































