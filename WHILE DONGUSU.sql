--1-10 arasındaki sayıların toplamını postgresqlde sorgu kodu

          DO $$
DECLARE 
   sayac int:=1;
   toplam int:=0;
BEGIN  
     while sayac<=10
	 loop
	 Raise Notice 'Sayac: %',sayac;
	 toplam:=sayac+toplam;
	 sayac:=sayac+1;
	 end loop;
	 Raise Notice 'Sayilarin toplamı: %',toplam;
	 end$$