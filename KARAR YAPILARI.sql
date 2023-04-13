--
do $$
declare toplam int;
begin 
toplam=(select count(*)from dersler);
raise notice 'Ders kayıt sayısı: %',toplam;
end$$;

--
Do $$
DECLARE sayi int:=24;
BEGIN
if sayi%2=0 THEN
raise notice 'Sayi cifttir';
ELSE
raise notice 'Sayi tektir';
end if;
end $$
