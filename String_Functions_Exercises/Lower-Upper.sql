

--Elimizde T�rk�e isimlerden olu�an bir m��teri listesi var. Bu m��teri listesinde CITY ve TOWN alanlar� ba�harfi b�y�k,
--geri kalan harfler k���k olacak �ekilde yaz�lm�� durumda. Bu tabloda CITY ve TOWN alanlar�n�n tamam� b�y�k olacak �ekilde UPDATE ediniz.

SELECT * FROM LAB03

UPDATE LAB03 SET CITY = UPPER(CITY), TOWN = UPPER(TOWN) --Elimizdeki de�erler t�rk�e karakter de�ilse d�zenleme yapmam�z gerekir.

--Bu d�zenleme:

SELECT UPPER('washington ' COLLATE sql_latin1_general_cp1_ci_as) --olarak g�ncelleyebiliriz.

UPDATE LAB03 SET CITY = LOWER(CITY), TOWN = LOWER(TOWN)