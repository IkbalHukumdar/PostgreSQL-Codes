--bolum ve fakulte tablolarında ortak alanları listeler
select *from bolum
intersect
select*from fakulte

--bolum tablosunda olup fakulte tablosunda olmayanları listeler

select *from bolum
except
select*from fakulte
