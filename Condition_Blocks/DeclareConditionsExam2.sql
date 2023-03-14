

--Elimizde plaka bilgileri ile birlikte ara� verilerinin tutuldu�u bir tablo var. 
--Bu tabloda ara�lar�n marka baz�nda model y�l� ile trafi�e ��k�� zaman� aras�ndaki farka g�re say�s�n� getirecek sorguyu yazal�m.


SELECT 
YEAR_, YEAR(LICENCEDATE),LICENCEDATE AS TRAFIGECIKISBILGISI,
CASE 
WHEN YEAR(LICENCEDATE)-YEAR_ = 0 THEN 'AYNI YIL TRAF��E �IKMI� ARA�'
WHEN YEAR(LICENCEDATE)-YEAR_ = 1 THEN 'B�R YIL TRAF��E �IKMI� ARA�'
WHEN YEAR(LICENCEDATE)-YEAR_ = 2 THEN '�K� YIL TRAF��E �IKMI� ARA�'
END AS STATUS_,
COUNT(*) AS COUNT_
FROM LAB02 
GROUP BY BRAND, YEAR(LICENCEDATE)-YEAR_
ORDER BY 1,2