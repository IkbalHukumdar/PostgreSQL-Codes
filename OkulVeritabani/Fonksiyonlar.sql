
--Hocalar tablosunda isminde 'e' harfini ekrana getiren fonks.
create or replace function hoca_list(deger varchar)
returns table
(
	id int,
	hoca_ad varchar
)
as 
$$
begin 
Return Query 
select hoca_id,ad from hocalar where ad like deger;
end; $$
language plpgsql;

select * from hoca_list('%e%')

