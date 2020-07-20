CREATE DATABASE vialmanager...

CREATE TABLE Tbl_tramo(
  
  Tra_id  serial primary key,
  Tra_codigo integer not null,
  Tra_fecha_creacion date ,
  Tra_segmento integer  not null,
  Tra_nomenclatura varchar (45) not null, 
  Tra_nombre_via varchar(15) not null,
  Calzada_id integer  not null,
  Barrio_id integer  not null,
  Elemento_id integer  not null,
  Jerarquia_vial_id integer not null,
  Eje_vial_id integer not null,
  Estado_id integer  not null,
  Usuario_id integer not null

);

CREATE TABLE Tbl_jeraraquia_vial(
  Jer_id integer not null primary key,
  descripcion varchar (45) not null
);

CREATE TABLE Tbl_comuna(
  Com_id serial primary key,
  Com_descripcion varchar (15) not null
);

 CREATE TABLE Tbl_caso_deterioro(
 Cas_det_id serial primary key,
 Deterioro_id integer  not null,
 Caso_id integer  not null  
);


alter table Tbl_tramo
add constraint FK_tbl_tramo_tbljerarquia_Vial_jer_id
foreign key (Jerarquia_vial_id)
references Tbl_jeraraquia_vial(Jer_id);

alter table Tbl_caso_deterioro
add constraint tbl_caso_deterioro_tbldeterioro_det_id
foreign key (Deterioro_id)
references tbl_deterioro(det_id);

alter table Tbl_caso_deterioro
add constraint tbl_caso_deterioro_tblcaso_cas_id
foreign key (Caso_id)
references Tbl_caso(cas_id);