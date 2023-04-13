--şehire göre gruplandırılan tabloda count değeri üçten büyük olan değerleri ekrana getirdi
select sehir,count(*) from musteri group by sehir having count(*)>3 