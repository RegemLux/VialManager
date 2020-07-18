CREATE TABLE tbl_deterioro (
    det_nombre VARCHAR (40) NOT NULL,
    det_tipo_deterioro VARCHAR (15) NOT NULL,
    PRIMARY KEY(det_codigo)
);

CREATE TABLE tbl_calzada (
    cal_calzada INT NOT NULL,
    cal_orientacion_carril VARCHAR(20) NOT NULL,
    tbltipocalzada_tipo_de_calzada_codigo INT NOT NULL,
    PRIMARY KEY(cal_codigo)
);

CREATE TABLE tbl_tipo_de_calzada (
    tipo_de_calzada_descripcion VARCHAR(20) NOT NULL,
    PRIMARY KEY(tipo_de_calzada_codigo)
);

ALTER TABLE tbl_calzada
ADD CONSTRAINT FK_tbl_calzada_tbl_tipo_de_calzada_codigo
FOREIGN KEY (tbltipocalzada_tipo_de_calzada_codigo)
REFERENCES tbl_tipo_de_calzada(tipo_de_calzada_codigo);
