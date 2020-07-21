CREATE DATABASE vialmanager...

CREATE TABLE tbl_tramo(
  
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

CREATE TABLE tbl_jerarquia_vial(
  Jer_id integer not null primary key,
  descripcion varchar (45) not null
);

CREATE TABLE tbl_comuna(
  Com_id serial primary key,
  Com_descripcion varchar (15) not null
);

 CREATE TABLE tbl_caso_deterioro(
 Cas_det_id serial primary key,
 Deterioro_id integer  not null,
 Caso_id integer  not null  
);

alter table tbl_tramo
add constraint FK_tbl_tramo_tblCalzada_cal_id
foreign key(Calzada_id)
references tbl_calzada(cal_id);

alter table tbl_tramo
add constraint FK_tbl_tramo_tblBarrio_bar_id
foreign key (Barrio_id)
references tbl_barrio(Bar_id);

alter table tbl_tramo
add constraint FK_tbl_tramo_tblelemento_complementario_ele_id
foreign key (Elemento_id)
references tbl_elemento_complementario(Ele_id);

alter table tbl_tramo
add constraint FK_tbl_tramo_tbljerarquia_Vial_jer_id
foreign key (Jerarquia_vial_id)
references tbl_jeraraquia_vial(Jer_id);

alter table tbl_tramo
add constraint FK_tbl_tramo_tblEje_vial_eje_id
foreign key (Eje_vial_id)
references tbl_eje_vial(Eje_id);

alter table tbl_tramo
add constraint FK_tbl_tramo_tblEstado_est_id
foreign key (Estado_id)
references tbl_estado(Est_id);

alter table tbl_tramo
add constraint FK_tbl_tramo_tblUsuario_usu_id
foreign key (Usuario_id)
references tbl_usuario(usu_id);

alter table tbl_caso_deterioro
add constraint FK_tbl_caso_deterioro_tbldeterioro_det_id
foreign key (Deterioro_id)
references tbl_deterioro(det_id);

alter table Tbl_caso_deterioro
add constraint FK_tbl_caso_deterioro_tblcaso_cas_id
foreign key (Caso_id)
references tbl_caso(cas_id);