/*Tienda en linea*/
CREATE DATABASE IF NOT EXISTS TIENDA;
USE TIENDA;

DROP TABLE IF EXISTS CLIENTE;
DROP TABLE IF EXISTS PRODUCTO;
DROP TABLE IF EXISTS PEDIDO;
DROP TABLE IF EXISTS PAGO;

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
CREATE TABLE CLIENTE (
    ID_CLIENTE INT NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR(100) NOT NULL,
    CORREO VARCHAR(100) NOT NULL,
    DIRECCION_CLIENTE VARCHAR(100) NOT NULL,
    TELEFONO INT NOT NULL,
    PRIMARY KEY (ID_CLIENTE)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
CREATE TABLE PRODUCTO (
    ID_PRODUCTO INT NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR(50) NOT NULL,
    DESCRIPCION VARCHAR(50) NOT NULL,
    PRECIO DOUBLE NOT NULL,
    PRIMARY KEY (ID_PRODUCTO)
);

/*==============================================================*/ 
/* Table: PEDIDO                                                */
/*==============================================================*/
CREATE TABLE PEDIDO (
    ID_PEDIDO INT NOT NULL AUTO_INCREMENT,
    FECHA_HORA_PEDIDO DATETIME NOT NULL,
    ID_CLIENTE INT NOT NULL,
    ID_PRODUCTO INT NOT NULL,
    TOTAL_COMPRA INT NOT NULL,
    PRIMARY KEY (ID_PEDIDO)
);

/*==============================================================*/
/* Table: PAGO                                                  */
/*==============================================================*/
CREATE TABLE PAGO (
    ID_PAGO INT NOT NULL AUTO_INCREMENT,
    TOTAL FLOAT NOT NULL,
    CORREO VARCHAR(100) NOT NULL,
    FECHA_HORA_PAGO DATETIME NOT NULL, 
    ID_PEDIDO INT NOT NULL,
    PRIMARY KEY (ID_PAGO)
);