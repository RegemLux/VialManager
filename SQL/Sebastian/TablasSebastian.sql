-- Parte de Sebastian en la base de datos POSTGRESQL
-- TABLAS

-- POR FAVOR LEER ESTAS RECOMENDACIONES

-- Para determinar la llave primaria de la tabla debe ponerse al final de la creacion de esta
-- "primary key(nombre del atributo que es llave primaria)" 
-- (no se puede poner longitud al tipo de dato del atributo que es llave primaria)

-- Para crear atributos que sean auto_incrementables se utiliza el tipo de dato "Serial"

-- si se utiliza el tipo de dato "serial", no es necesario que se determine el "not null"

-- en POSTGRESQL no se le pone longitud a los atributos tipo int y menos si estos van a ser una llave foranea

-- Tabla Caso

create table tbl_caso (
	cas_id serial,
	cas_causa varchar(200) not null,
	cas_fecha_creacion date not null,
	cas_fecha_vencimiento date not null,
	cas_fotografia_inicio varchar(100) not null,
	cas_fotografia_fin varchar(100),
	cas_prioridad varchar(10) not null,
	tipo_pavimento_id  int not null,
	entorno_id int not null,
	tramo_id int not null,
	usuario_id int not null,
	estado_id int not null,
	orden_id int not null,
	primary key(cas_id)
);

--Tabla Tipo de pavimento

create table tbl_tipo_de_pavimento(
	pav_id serial,
	pav_descripcion varchar(16) not null,
	metodologia_id int not null,
	primary key(pav_id)
);

--Tabla metodologia

create table tbl_metodologia(
	met_id serial,
	met_descripcion varchar(10) not null,
	primary key(met_id)
);

--Tabla entorno

create table tbl_entorno(
	ent_id serial,
	ent_descripcion varchar(200) not null,
	primary key(ent_id)
);

-- LLAVES FORANEAS CORRESPONDIENTES A LAS TABLAS

-- LEER LAS SIGUIENTES RECOMENDACIONES PARA LAS LLAVES FORANEAS

-- para agregar una llave foranea debe disponerse de 4 "sentencias", las cuales son
-- la tabla a la que se le hace el cambio con alter table, 
-- se añade(add) el nombre que se le dara al CONSTRAINT entre las tablas que se relacionaran
-- el nombre constraint empezara por FK el nombre de la tabla y el atributo que sera foranea
-- EJEMPLO: add constraint FK_TBL_EJEMPLO_ATRIBUTOFORANEA
-- posteriormente el "foreign key" en el cual se determina el atributo que es foranea en la tabla
-- y el references en el cual se determina el nombre de la tabla de la que sale la foranea y entre() la llave primaria de dicha tabla
-- visualizar los ejemplos que se hicieron con las tablas del proyecto X_X


alter table tbl_tipo_de_pavimento
add constraint FK_tbl_tipodepavimento_tblmetodologia_met_id
foreign key (metodologia_id)
references tbl_metodologia(met_id);


alter table tbl_caso 
add constraint FK_tbl_caso_tbltipodepavimento_pav_id
foreign key (tipo_pavimento_id) 
references tbl_tipo_de_pavimento(pav_id);


alter table tbl_caso
add constraint FK_tbl_caso_tblentorno_ent_id
foreign key (entorno_id) 
references tbl_entorno(ent_id);


alter table tbl_caso 
add constraint FK_tbl_caso_tbltramo_tra_id
foreign key (tramo_id) 
references tbl_tramo(tra_id);


alter table tbl_caso 
add constraint FK_tbl_caso_tblusuario_usu_id
foreign key (usuario_id) 
references tbl_usuario(usu_id);

alter table tbl_caso 
add constraint FK_tbl_caso_tblestado_est_id
foreign key (estado_id) 
references tbl_estado(est_id);

alter table tbl_caso
add constraint FK_tbl_caso_tblorden_mantenimiento_ord_id
foreign key (orden_id)
references tbl_orden_mantenimiento(ord_id);
