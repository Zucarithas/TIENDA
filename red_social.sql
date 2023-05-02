/*nueva red social*/
CREATE DATABASE IF NOT EXISTS INFO_RED_SOCIAL;

USE INFO_RED_SOCIAL;

DROP TABLE IF EXISTS USUARIO;
DROP TABLE IF EXISTS PUBLICACION;
DROP TABLE IF EXISTS COMENTARIO;
DROP TABLE IF EXISTS AMIGO;

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS USUARIO (
    ID_USUARIO INT NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR(100) NOT NULL,
    CORREO VARCHAR(45) NOT NULL,
    CONTRASENIA INT NOT NULL,
    FECHA_REGISTRO  DATE NOT NULL,
    PRIMARY KEY (ID_USUARIO)
);

/*==============================================================*/  
/* Table: PUBLICACION                                           */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS PUBLICACION (
    ID_PUBLICACION INT NOT NULL AUTO_INCREMENT,
    ID_USUARIO INT NOT NULL,
    CONTENIDO VARCHAR(500) NULL,
    FECHA_PUBLICACION DATE NOT NULL,    
    NUMERO_COMENTARIOS INT NOT NULL,
    NUMERO_LIKES INT NOT NULL,
    PRIMARY KEY (ID_PUBLICACION)
);

/*==============================================================*/
/* Table: COMENTARIO                                            */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS COMENTARIO (
    ID_COMENTARIO INT NOT NULL AUTO_INCREMENT,
    ID_USUARIO INT NOT NULL,
    ID_PUBLICACION INT NOT NULL,
    FECHA_HORA_COMENTARIO DATETIME NOT NULL,
    CONTENIDO VARCHAR(500) NOT NULL,
    PRIMARY KEY (ID_COMENTARIO)
);

/*==============================================================*/
/* Table: AMIGO                                                 */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS INFO_RED_SOCIAL.AMIGO (
    ID_AMIGO INT NOT NULL AUTO_INCREMENT,
    ID_USUARIO1 INT NOT NULL,
    ID_USUARIO2 INT NOT NULL,
    FECHA_INICIO_AMISTAD DATE NOT NULL,
    PRIMARY KEY (ID_AMIGO)
);