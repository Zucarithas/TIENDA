/*Sistema de gestión de biblioteca*/
CREATE DATABASE IF NOT EXISTS BIBLIOTECA;

USE BIBLIOTECA;

DROP TABLE IF EXISTS LIBRO;
DROP TABLE IF EXISTS USUARIO;
DROP TABLE IF EXISTS PRESTAMO;
DROP TABLE IF EXISTS AUTOR;
DROP TABLE IF EXISTS MULTA;

/*==============================================================*/
/* Table: LIBRO                                                 */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS LIBRO(
    ID_LIBRO INT NOT NULL AUTO_INCREMENT,
    TITULO VARCHAR(100) NOT NULL,
    FECHA_PUBLICACION DATE NOT NULL,
    NO_PAGINAS INT NOT NULL,
    PRIMARY KEY (ID_LIBRO)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS USUARIO(
    ID_USUARIO INT NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR(100) NOT NULL,
    CORREO VARCHAR(100) NOT NULL,
    TELEFONO INT NOT NULL,
    PRIMARY KEY (ID_USUARIO)
);

/*==============================================================*/
/* Table: PRESTAMO                                              */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS PRESTAMO(
    ID_PRESTAMO INT NOT NULL AUTO_INCREMENT,
    FECHA_INICIO DATE NOT NULL,
    FECHA_VENCIMIENTO DATE NOT NULL,
    FECHA_DEVOLUCION DATE NOT NULL,
    PRIMARY KEY (ID_PRESTAMO)
);

/*==============================================================*/
/* Table: AUTOR                                                 */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS AUTOR(
    ID_AUTOR INT NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR(100) NOT NULL,
    APELLIDO VARCHAR(100) NOT NULL,
    FECHA_NACIMIENTO DATE NOT NULL,
    PRIMARY KEY (ID_AUTOR)
);

/*==============================================================*/
/* Table: MULTAS                                                */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS MULTA(
    ID_MULTA INT NOT NULL AUTO_INCREMENT,
    LUGAR_MULTA VARCHAR(100) NOT NULL,
    HORA_MULTA DATE NOT NULL,
    PRIMARY KEY (ID_MULTA)
);