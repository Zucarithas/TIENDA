/*Reserva de viajes*/
CREATE DATABASE IF NOT EXISTS INFO_RESERVA_VIAJES;
USE INFO_RESERVA_VIAJES;

DROP TABLE IF EXISTS HOTEL;
DROP TABLE IF EXISTS VUELO;
DROP TABLE IF EXISTS RESERVACION;
DROP TABLE IF EXISTS CLIENTE;

/*==============================================================*/
/* Table: HOTEL                                                 */
/*==============================================================*/
CREATE TABLE HOTEL (
    ID_HOTEL INT NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR(50) NOT NULL,
    DIRECCION VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_HOTEL)
);

/*==============================================================*/ 
/* Table: VUELO                                                 */
/*==============================================================*/
CREATE TABLE VUELO (
    ID_VUELO INT NOT NULL AUTO_INCREMENT,
    AEROLINEA VARCHAR(50) NOT NULL,
    ORIGEN VARCHAR(50) NOT NULL,
    DESTINO VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_VUELO)
);

/*==============================================================*/
/* Table: RESERVACION                                           */
/*==============================================================*/
CREATE TABLE RESERVACION (
    ID_RESERVA INT NOT NULL AUTO_INCREMENT,
    NOMBRE_RESERVA VARCHAR(50) NOT NULL,
    FECHA_INICIO DATE NOT NULL,
    PRIMARY KEY (ID_RESERVA)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
CREATE TABLE CLIENTE (
    ID_CLIENTE INT NOT NULL AUTO_INCREMENT,
    NOMBRE_CLIENTE VARCHAR(50) NOT NULL,
    EMAIL_CLIENTE VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_CLIENTE)
);