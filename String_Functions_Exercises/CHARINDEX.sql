
--Elimizde mail adresleri bulunan bir m��teri listesi vard�r. Her bir m��terinin gmail, hotmail gibi mail adresleri mevcuttur.
--Email alan�n� kullanarak hangi servis sa�lay�c�dan toplamda ka� ki�i oldu�unu g�steren listeyi haz�rlayal�m.

SELECT * FROM LAB05 


SELECT ('sefa.pinar@gmail.com')

SELECT CHARINDEX('@','sefa.pinar@gmail.com')

SELECT RIGHT('sefa.pinar@gmail.com',10)


SELECT RIGHT(EMAIL,LEN(EMAIL) - CHARINDEX('@',EMAIL)),
COUNT(*) FROM LAB05 GROUP BY RIGHT(EMAIL,LEN(EMAIL) - CHARINDEX('@',EMAIL))
ORDER BY 2 DESC