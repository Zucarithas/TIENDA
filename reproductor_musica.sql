/*Reproductor de musica*/
CREATE DATABASE IF NOT EXISTS REPRODUCTOR;
USE REPRODUCTOR;

DROP TABLE IF EXISTS ARTISTA;
DROP TABLE IF EXISTS CANCION;
DROP TABLE IF EXISTS ALBUM;
DROP TABLE IF EXISTS PLAYLIST;
DROP TABLE IF EXISTS USUARIO;

/*==============================================================*/
/* Table: ARTISTA                                               */
/*==============================================================*/
CREATE TABLE ARTISTA (
    ID_ARTISTA INT NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR(50) NOT NULL,
    GENERO VARCHAR(20) NOT NULL,
    PRIMARY KEY (ID_ARTISTA)
);

/*==============================================================*/
/* Table: CANCION                                               */
/*==============================================================*/
CREATE TABLE CANCION (
    ID_CANCION INT NOT NULL AUTO_INCREMENT,
    TITULO VARCHAR(50) NOT NULL,
    DURACION INT NOT NULL,
    PRIMARY KEY (ID_CANCION)
);

/*==============================================================*/
/* Table: PLAYLIST                                                 */
/*==============================================================*/
CREATE TABLE PLAYLIST (
    ID_PLAYLIST INT NOT NULL AUTO_INCREMENT,
    TITULO VARCHAR(50) NOT NULL,
    DESCRIPCION VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_PLAYLIST)
);

/*==============================================================*/
/* Table: ALBUM                                                 */
/*==============================================================*/
CREATE TABLE ALBUM (
    ID_ALBUM INT NOT NULL AUTO_INCREMENT,
    TITULO VARCHAR(50) NOT NULL,
    FECHA_LANZAMIENTO DATE NOT NULL,
    PRIMARY KEY (ID_ALBUM)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
CREATE TABLE USUARIO (
    ID_USUARIO INT NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR(50) NOT NULL,
    APELLIDO VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_USUARIO)
);