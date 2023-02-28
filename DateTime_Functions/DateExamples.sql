

--Bir fonksiyonun ba��nda IsDate var ise sonraki gelen ifadenin var olup olmad���n� kontrol eder. 




SELECT ISDATE('2022-22-05') --Girilen tarih format�na uygun olup olmad���n� belirler.



SELECT * FROM LAB01



--Ya�lar� 40 ile 45 aras�nda olanlar� getirme fonksiyonu. 

SELECT *, DATEDIFF(YEAR,BIRTHDATE,GETDATE()) AS AGE FROM LAB01 WHERE DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 40 AND 45 AND GENDER = 'E' ORDER BY 11

--Elimizde bir m��teri listesi var. Bu listede do�um tarihi alan� var. Buna g�re May�s ay�nda do�anlar�n listesi nelerdir.



SELECT *, MONTH(BIRTHDATE) FROM LAB01 WHERE MONTH(BIRTHDATE) = 5