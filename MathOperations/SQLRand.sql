


--Elimizde Avrupa Futbol kul�plerinin bulundu�u bir veriseti var.
--Burada bir �ekili� ile rastgele iki tak�m� e�le�tirecek �ekilde bir sql yazal�m.


SELECT * FROM LAB02 

WHERE ID = CONVERT(INT,RAND()* 299)


SELECT TOP 1 * FROM LAB02 ORDER BY NEWID()


