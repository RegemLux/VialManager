create table tbl_barrio(
Bar_id  SERIAL,
Bar_descripcion VARCHAR(45) not null,
Comuna_id INTEGER  not null,
primary key (Bar_id)
); 

create table tbl_estado(
Est_id SERIAL,
Est_descripcion VARCHAR (45) not null,
primary key (Est_id)
);

create table tbl_elemento_complementario(
Ele_id SERIAL,
Ele_descripcion VARCHAR(45) not null,
primary key (Ele_id)
);

create table tbl_eje_vial(
Eje_id SERIAL,
Eje_numero INTEGER not null,
primary key (Eje_id)
);

alter table tbl_barrio
add constraint FK_tbl_barrio_tblComuna_com_id
foreign key (Comuna_id)
references tbl_comuna(Com_id);