

--Elimizde do�umtarihi alan� date t�r�nde olmayan varchar t�r�nde olan bir m��teri listesi var.
--Burada tabloya BIRTHDATE2 isimli DATE t�r�nde bir alan ekleyiniz ve varchar t�r�nde kaydedilmi� BIRTHDATE alan� ile BIRTHDATE2 alan�n� g�ncelleyiniz.
--Tarih format� d�zg�n olmayan alanlar i�in 'NULL' de�eri ile update ediniz.


SELECT * FROM LAB02

ALTER TABLE LAB02 ADD BIRTHDATE2 DATE --Tabloya alan ekleme.

UPDATE LAB02 SET BIRTHDATE2 = CONVERT(DATE,BIRTHDATE)


SELECT CONVERT(DATE,'18.02.2022') --Hatal� Kullan�m.