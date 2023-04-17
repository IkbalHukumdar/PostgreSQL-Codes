
create or replace function test()
  returns trigger
  as
  $$
begin 
update toplamfakultefakulte set sayi=sayi+1;
return new;
end;
$$
language plpgsql;