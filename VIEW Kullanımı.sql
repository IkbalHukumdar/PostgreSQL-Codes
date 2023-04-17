--View oluşturma
Create VIEW view1
As
select  bolumid,bolumad,ad from bolum inner join fakulte on bolum.bolumf=fakulte.id

--View Silme
DROP view view1

--View Güncelleme
DROP VIEW IF EXISTS view1;
CREATE VIEW view1 
AS
SELECT bolum.bolumid,
    bolum.bolumad,
    fakulte.ad,
    dersler.dersad,
	dersler.kontenjan
   FROM bolum
     JOIN fakulte ON bolum.bolumf = fakulte.id
	 JOIN dersler ON bolum.bolumid=dersler.bolumid; 



