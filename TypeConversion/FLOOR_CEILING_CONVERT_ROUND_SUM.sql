



--Elimizde sat��lar�n oldu�u bir market database'i var.
--Burada kategori bazl� toplam sat�� cirosunu bulurken, 
--ondal�k rakamlardan kurtulmak istiyoruz.
--Floor,Ceiling,Round ve convert(INT) fonksiyonlar�n� kullanarak elde etti�iniz verileri kar��la�t�ral�m.


SELECT * FROM LAB03 



SELECT ROUND(SUM(UNITPRICE),0) FROM LAB03

SELECT CATEGORY1 + '>' + CATEGORY2 + '>' + CATEGORY3 + '>' + CATEGORY4 CATEGORY,
SUM(UNITPRICE) TOTALSALE,
CONVERT(INT,SUM(UNITPRICE)) TOTAL_SALE,
CEILING(SUM(UNITPRICE)) TOTALSALE_CEILING,
FLOOR(SUM(UNITPRICE)) TOTALSALE_FLOOR,
ROUND(SUM(UNITPRICE),0) TOTALSALE_ROUND
FROM LAB03

GROUP BY CATEGORY1,CATEGORY2,CATEGORY3,CATEGORY4