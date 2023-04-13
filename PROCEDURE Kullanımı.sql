--procedure oluşturur
CREATE PROCEDURE deneme()
language plpgsql 
as $$
begin 
Raise Notice 'Postgresql Derslerimiz Devam Ediyor';
end ; $$

call deneme() ile çağırıyoruz.


--Procedure üzerinde güncelleme işlemi
Create or Replace Procedure deneme()
language plpgsql
as $$
begin
raise notice 'Hello World ';	
end $$;

