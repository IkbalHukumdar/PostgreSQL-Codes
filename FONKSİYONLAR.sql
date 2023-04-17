
create function toplam (s1 int,s2 int)
returns int
language plpgsql
as 
$$
declare 
  sonu integer;
  return sonuc;
end;
$$;
select toplam(45,30); --olarak çağırırız

--kdv uygular
create function kdvli (fiyat float)
returns float
language plpgsql
as 
$$
begin 
fiyat:=fiyat*0.08+fiyat;
return fiyat;
end;
$$;
select ad,yazar,fiyat,kdvli(fiyat) from kitaplar


--Hocalar tablosunda isminde 'e' harfini ekrana getiren fonks.
create or replace function hoca_list(deger varchar)
returns table
(
	id int,
	hoca_ad varchar
)
as 
$$
begin 
Return Query 
select hoca_id,ad from hocalar where ad like deger;
end; $$
language plpgsql;

select * from hoca_list('%e%')


