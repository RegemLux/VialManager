CREATE TABLE tbl_deterioro (
    det_id serial,
    det_nombre VARCHAR (40) NOT NULL,
    det_tipo_deterioro VARCHAR (15) NOT NULL,
    PRIMARY KEY(det_id)
);

CREATE TABLE tbl_calzada (
    cal_id serial,
    cal_calzada INT NOT NULL,
    cal_orientacion_carril VARCHAR(20) NOT NULL,
    tipo_calzada_ID INT NOT NULL,
    PRIMARY KEY(cal_id)
);

CREATE TABLE tbl_tipo_de_calzada (
    tipc_id serial,
    tipo_de_calzada_descripcion VARCHAR(20) NOT NULL,
    PRIMARY KEY(tipc_id)
);

ALTER TABLE tbl_calzada
ADD CONSTRAINT FK_tbl_calzada_tipo_de_calzada_id
FOREIGN KEY (tipo_calzada_id)
REFERENCES tbl_tipo_de_calzada(tipc_id);
