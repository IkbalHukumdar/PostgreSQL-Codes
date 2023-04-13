--fakulte tablosunu oluşturma
create table fakulte(
id integer not null primary key,
ad varchar(30)	
)

--bolum tablosunu oluşturma
create table bolum(
bolumid integer not null primary key,
bolumad varchar(30)not null,
bolumfk	integer not null,
bolumfakulte_fk integer REFERENCES fakulte(id)
)