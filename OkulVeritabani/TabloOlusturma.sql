create table derslik(
derslik_id serial primary key not null,
ad varchar(20),
created_by integer Default 0,
created_at  TIMESTAMP WITH TIME ZONE default current_timestamp,	
updated_by integer default 0,
updated_at TIMESTAMP with time zone default current_timestamp )	

create table ogrenciler(
ogrenci_id serial primary key not null,
ad varchar(20),
created_by integer Default 0,
created_at  TIMESTAMP WITH TIME ZONE default current_timestamp,	
updated_by integer default 0,
updated_at TIMESTAMP with time zone default current_timestamp )	
)
	
create table dersler(
ders_id serial primary key not null,
ad varchar(20),
created_by integer Default 0,
created_at  TIMESTAMP WITH TIME ZONE default current_timestamp,	
updated_by integer default 0,
updated_at TIMESTAMP with time zone default current_timestamp )	
)
create table hocalar(
hoca_id serial primary key not null,
ad varchar(20),
created_by integer Default 0,
created_at  TIMESTAMP WITH TIME ZONE default current_timestamp,	
updated_by integer default 0,
updated_at TIMESTAMP with time zone default current_timestamp )	
)	
create table islenir(
islenir_id serial primary key not null,
derslik_id integer,
anlatir_id integer,
created_by integer Default 0,
created_at  TIMESTAMP WITH TIME ZONE default current_timestamp,	
updated_by integer default 0,
updated_at TIMESTAMP with time zone default current_timestamp ),	
unique (derslik_id,anlatir_id)
)

create table anlatir(
anlatir_id serial primary key not null
derslik_id INTEGER,
anlatir_id INTEGER,
ders_id integer,
created_by integer Default 0,
created_at  TIMESTAMP WITH TIME ZONE default current_timestamp,	
updated_by integer default 0,
updated_at TIMESTAMP with time zone default current_timestamp ,	
unique(hoca_id,ders_id)	
)	

create table girer(
ogrenci_id serial primary key not null,
islenir_id integer,
created_by integer Default 0,
created_at  TIMESTAMP WITH TIME ZONE default current_timestamp,	
updated_by integer default 0,
updated_at TIMESTAMP with time zone default current_timestamp ,		
unique(ogrenci_id,islenir_id)	
	
)