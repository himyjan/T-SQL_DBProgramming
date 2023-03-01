



--Elimizde bir marketin sat�� verisi var. Bu verisetine g�re i�inde bulundu�umuz ay ve bir ay �ncesinin sat��lar�n� ma�aza bazl� olarak kar��la�t�r�n�z.

SELECT CITY,SUM(TOTALPRICE) TOTALSALES,

(
SELECT SUM(TOTALPRICE) FROM LAB08 WHERE CITY = LAB08.CITY
AND YEAR(DATE_) = YEAR(GETDATE()) AND MONTH(DATE_) = MONTH(GETDATE()) -1
)
FROM LAB08 
WHERE YEAR(DATE_) = YEAR(GETDATE()) AND MONTH(GETDATE()) = MONTH(GETDATE())
GROUP BY CITY
ORDER BY 1