
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




