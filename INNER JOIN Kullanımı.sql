
select ad,count(*) from bolum inner join fakulte on bolum.bolumf=fakulte.id group by ad order by ad
