--Elimizde makale kitap i�eriklerinin bulundu�u k���k bir veritaban� var.
--Bu veritaban�nda hangi sat�rda ka� kelime oldu�unu hesaplayan kodu yazal�m.


SELECT * FROM LAB09

'BTK Akademideki SQL Dersleri ile Veritaban� Uzman� Olun!'



SELECT *, (SELECT COUNT(*) FROM string_split(FULLTEXT,' ')) WORDCOUNT FROM LAB09