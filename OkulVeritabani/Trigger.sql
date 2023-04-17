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

------Aşağıdaki kod bloğu, bir öğrencinin kaydı silindiğinde girer tablosunda ilgili kaydı güncellemek için bir tetikleyici (trigger) oluşturur:
CREATE OR REPLACE FUNCTION update_ogrenci_statu() RETURNS TRIGGER AS $$
BEGIN
    UPDATE girer
    SET statu = 'pasif'
    WHERE ogrenci_id = OLD.ogrenci_id;

    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER ogrenci_sil
AFTER DELETE ON ogrenciler
FOR EACH ROW
EXECUTE FUNCTION update_ogrenci_statu();