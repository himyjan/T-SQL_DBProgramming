

--Day --Month-- Year Fonksiyonlar�:

SELECT YEAR(GETDATE())

SELECT MONTH(GETDATE())

SELECT DAY(GETDATE())


SELECT DATEPART(DAY,'2023-02-28 22:18:00:879')



--DateDiff 2 tarih aras�ndaki fark� almak i�in kullan�l�r.



SELECT DATEDIFF(YEAR,'2000-12-04','2023-02-28') --Y�l Aralar�ndaki fark.



SELECT DATEDIFF(DAY,'2000-12-04','2023-02-28') --Y�l Aralar�ndaki g�n.



SELECT DATEDIFF(MONTH,'2000-12-04','2023-02-28')--Y�l aralar�ndaki ay.




SELECT DATEDIFF(MONTH,'2021-04-12',GETDATE())