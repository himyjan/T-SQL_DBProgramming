

--Elimizdeki bir marketin sat�� verisi vard�r. Bu verisetinde 30-50 ya� aras� kad�n m��terilerinin en �ok al��veri� yapt�klar� saat aral�klar� yazmaktad�r.

SELECT TOP 1 DATEPART(HOUR,DATE_) AS SAAT,
SUM(TOTALPRICE) AS TOPLAM FROM LAB04


WHERE CUSTOMERGENDER = 'K' AND DATEDIFF(YEAR,CUSTOMERBIRHTDATE,GETDATE()) BETWEEN 30 AND 50
GROUP BY DATEPART(HOUR,DATE_)
ORDER BY 2 DESC