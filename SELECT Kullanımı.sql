--musteri tablosundaki verileri idlerine göre sıralar
select*from musteri order by id;

--musteri tablosundaki en yüksek bakiyeyi ekranda gösterir.
select max(bakiye) from musteri

--musteri tablosundaki en yüksek bakiyeyi ekranda gösterir.
select*from musteri where bakiye=8500

--musteri tablosundaki en yüksek bakiyeyi ekranda gösterir.
select*from musteri where bakiye=(select max(bakiye) from musteri) 

--musteri tablosundaki en yüksek bakiyeyi ekranda gösterir.
select*from musteri where bakiye=(select max(bakiye)from musteri where sehir='malatya')



