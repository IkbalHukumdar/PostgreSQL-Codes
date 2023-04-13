--mesleği mühendis olan kişinin bakiyesini günceller
update musteri set bakiye=bakiye+bakiye*0.1 where meslek=(select id from meslek where ad='Muhendis')
