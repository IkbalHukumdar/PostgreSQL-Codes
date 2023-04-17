--Hangi hocanin hangi dersi verdigi dersi gosterir.
select h.hoca_id,h.ad as hoca_adi,a.ders_id, d.ad ders_adi 
from hocalar h,anlatir a,dersler d
where h.hoca_id=a.hoca_id
and a.ders_id=d.ders_id;



----Hangi hocanin hangi dersi verdigi dersi gosterir.
select h.hoca_id, h.ad as hoca_adi, a.ders_id, d.ad ders_adi
from hocalar h
  left join anlatir a on h.hoca_id= a.hoca_id
  left join dersler d on d.ders_id=a.ders_id
order by 1; 
   


select h.hoca_id, h.ad as hoca_adi, a.ders_id, d.ad ders_adi
from hocalar h
  full join anlatir a on h.hoca_id= a.hoca_id
  full join  dersler d on d.ders_id=a.ders_id
order by 1; 
   

--Hangi hocanin hangi derse girdigini gosterir.
select h.hoca_id, h.ad as hoca_adi,count(a.ders_id)girdigi_ders_sayisi
from hocalar h
  left join anlatir a on h.hoca_id= a.hoca_id
  left join  dersler d on d.ders_id=a.ders_id
group by h.hoca_id,h.ad
order by 1; 
   
--Bİr hocanin hangi derslikte hangi dersi hangi ogrenciye anlattigini gosterir.
select h.hoca_id, h.ad as hoca_adi,d.ad ders,
a.anlatir_id ,i.derslik_id , dk.ad derslik_adi,
g.ogrenci_id ,o.ad ogrenci_adi
from hocalar h
  left join anlatir a on h.hoca_id= a.hoca_id
  left join  dersler d on d.ders_id=a.ders_id
  left join islenir i on a.anlatir_id=i.anlatir_id
  left join derslik dk on i.derslik_id = dk.derslik_id
  left join girer g on g.islenir_id = i.islenir_id
  left join ogrenciler o on o.ogrenci_id = g.ogrenci_id
  
   order by 1; 
   

--Bir ogrenci hangi derslikte hangi dersi hangi hocadan aldigini gosterir.

select o.ogrenci_id, o.ad ogrenci_adi, gi.ogrenci_id ogrenci_girer, i.islenir_id,
dk.ad derslik_ad,an.anlatir_id,d.ders_id, d.ad ders_ad,h.hoca_id, h.ad hoca_ad
from ogrenciler o 
  left join girer gi on gi.ogrenci_id = o.ogrenci_id
  left join islenir i on i.islenir_id = gi.islenir_id
  left join derslik dk on dk.derslik_id = i.derslik_id
  left join anlatir an on an.anlatir_id = i.anlatir_id
  left join dersler d on d.ders_id = an.ders_id
  left join hocalar h on h.hoca_id = an.hoca_id
order by 1
   
