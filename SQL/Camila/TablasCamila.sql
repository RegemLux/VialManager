create table Tbl_barrio(
Bar_id  SERIAL,
Bar_descripcion VARCHAR(45) not null,
Comuna_id INTEGER  not null,
primary key (Bar_id)
); 

create table Tbl_estado(
Est_id SERIAL,
Est_descripcion VARCHAR (45) not null,
primary key (Est_id)
);

create table Tbl_elemento_complementario(
Ele_id SERIAL,
Ele_descripcion VARCHAR(45) not null,
primary key (Ele_id)
);

create table Tbl_eje_vial(
Eje_id SERIAL,
Eje_numero INTEGER not null,
primary key (Eje_id)
);