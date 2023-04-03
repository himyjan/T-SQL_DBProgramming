

SELECT DV.AY,SUM(DV.SATIRTOPLAMI) FROM (

SELECT O.ID SIPARISNO, O.DATE_ SIPARISTARIHI,
	YEAR(O.DATE_)  YIL ,
	DATENAME(DW,O.DATE_) GUN,
	DATENAME(MONTH,O.DATE_) AY,
	U.ID KULLANICIID, U.USERNAME_ KULLANICIADI,U.NAMESURNAME KULLANICISOYADI,U.GENDER CINSIYET,U.EMAIL MAIL,U.TELNR1 TELNO,
	A.ADDRESSTEXT ADRESS, A.POSTALCODE POSTAKODU,C.CITY SEHIR, T.TOWN ILCE, I.ITEMCODE URUNKOD,I.ITEMNAME URUNADI,I.BRAND MARKA,I.CATEGORY1 KATEGORI,
	OD.AMOUNT MIKTAR,OD.UNITPRICE BIRIMFIYAT,OD.LINETOTAL SATIRTOPLAMI,OD.ITEMID URUNID
FROM ORDERS O
JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
JOIN ITEMS I ON I.ID = OD.ITEMID
JOIN USERS U ON U.ID = O.USERID
JOIN ADDRESS A ON A.ID = O.ADDRESSID
JOIN CITIES C ON C.ID = A.CITYID
JOIN TOWNS T ON T.ID = A.TOWNID
) DV

GROUP BY AY
