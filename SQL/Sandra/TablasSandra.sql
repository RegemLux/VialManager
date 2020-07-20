Create table tbl_rol(
    rol_id serial,
    rol_nombre varchar(20) not null,
    primary key(rol_id)
);

--Está tabla lleva foránea de tres tablas--
create table tbl_usuario(
    usu_id serial,
    usu_num_identificacion varchar(15) not null,
	usu_primer_nombre varchar(30) not null,
    usu_segundo_nombre varchar(30) not null,
	usu_primer_apellido varchar(30) not null,
    usu_segundo_apellido varchar(30) not null,
	usu_contraseña varchar(25) not null,
	usu_telefono int not null,
	usu_correo varchar(35) not null,
	rol_id int not null,
	estado_id int not null,
	tipo_documento_id int not null,
    primary key(usu_id)
);

--Está tabla lleva 3 foráneas--
create table tbl_orden_mantenimiento(
    ord_id serial,
    ord_fecha_creacion date not null,
	ord_fecha_vencimiento date not null,
	usuario_id int not null,
	estado_id int not null,
	caso_id int not null,
    primary key(ord_id)
);

create table tbl_tipo_documento(
    tip_id serial,
    tip_descripcion varchar(45) not null,
    primary key(tip_id)
);


/* FORANEAS DE TABLA USUARIO */
--El nombre de la tabla que lleva las foraneas
--add constraint FK, nombre de tabla, nombre de la tabla de la foranea , nombre del campos de la foranea
--nombre del campo de la foranea
--nombre de la tabla de la foranea y nombre del campo
alter table tbl_usuario 
add constraint FK_tbl_usuario_tblrol_rol_id
foreign key (rol_id)
references tbl_rol(rol_id);

alter table tbl_usuario
add constraint FK_tbl_usuario_tblestado_est_id
foreign key (estado_id)
references tbl_estado(est_id);

alter table tbl_usuario
add constraint FK_tbl_usuario_tbltipodocumento_tip_id
foreign key (tipo_documento_id)
references tbl_tipo_documento(tip_id);

/* FORANEAS DE TABLA ORDEN MANTENIMIENTO */
alter table tbl_orden_mantenimiento
add constraint FK_tbl_orden_mantenimiento_tblusuario_usu_id
foreign key (usuario_id)
references tbl_usuario(usu_id);

alter table tbl_orden_mantenimiento
add constraint FK_tbl_orden_mantenimiento_tblestado_est_id
foreign key (estado_id)
references tbl_estado(est_id);

alter table tbl_orden_mantenimiento
add constraint FK_tbl_orden_mantenimiento_tblcaso_cas_id
foreign key (caso_id)
references tbl_caso(cas_id);
