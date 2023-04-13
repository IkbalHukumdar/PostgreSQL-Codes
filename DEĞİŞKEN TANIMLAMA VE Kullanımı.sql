--x ve y yi tanımlar gösterir
do $$
declare x int:=20;
        y int :=15;
begin
raise notice 'Sayi 1: %',x;
raise notice 'Sayi 2: %',y;
end $$ ;


--x ve y nin toplam carpım fark bolme işlemlerini yapar
		
   do $$
declare x int:=20;
        y int :=5;
		toplam int;
		fark int;
		carpim int;
		bolum int;
begin
		toplam:=x+y;
		carpim:=x*y;
		bolum:=x/y;
		fark:=x-y;
raise notice 'Sayi 1: %',x;
raise notice 'Sayi 2: %',y;
raise notice 'Toplam: %',toplam;
raise notice 'Carpim: %',carpim;
raise notice 'Fark: %',fark;
raise notice 'Bolum: %',bolum;
end $$ ;        