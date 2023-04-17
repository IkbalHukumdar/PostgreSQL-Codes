--
create or replace function test()
  returns trigger
  as
  $$
begin 
update toplamfakultefakulte set sayi=sayi+1;
return new;
end;
$$
language plpgsql;

PostgreSQL-Codes

--sisteme yeni veri eklendiği zaman toplamogrenci tablosunın triggerını 1 artırıyor.
create or replace function deneme()
  returns trigger
  language plpgsql
  as
  $$
begin 
update toplamogrenci set sayi=sayi+1;
return new;
end;
$$

create trigger denemeetrig after insert on ogrenciler for each row execute procedure denemee()

insert into ogrenciler values(default,'Nazan')

select*from toplamogrenci
