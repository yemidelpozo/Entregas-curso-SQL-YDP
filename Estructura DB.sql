-- GENERAR EL DDL RESERVAS HOSPITALITY

DROP DATABASE IF EXISTS reservas_actividades_hospitality ;

CREATE DATABASE reservas_actividades_hospitality;

USE reservas_actividades_hospitality;

-- Tabla CLIENTES

CREATE TABLE CLIENTES (
    Id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) DEFAULT 'USUARIO_UNKNOW',
    Telefono VARCHAR(20) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Fecha_alta DATETIME DEFAULT (CURRENT_TIMESTAMP),
    STATUS BOOLEAN DEFAULT TRUE
     );

-- Tabla EMPLEADOS
CREATE TABLE EMPLEADOS (
    Id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Telefono VARCHAR(20),
    Email VARCHAR(100),
    Id_actividad INT
);

-- Tabla TIPO_RESERVA
CREATE TABLE TIPO_RESERVA (
    Id_tiporeserva INT PRIMARY KEY AUTO_INCREMENT,
    TIPO VARCHAR(50)
);

-- Tabla ACTIVIDADES
CREATE TABLE ACTIVIDADES (
    Id_actividad INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Idioma VARCHAR(60),
    Capacidad INT,
    Disponible BOOLEAN
    );

-- Tabla RESERVAS
CREATE TABLE RESERVAS (
    Id_reserva INT PRIMARY KEY AUTO_INCREMENT,
    Id_cliente INT,
    Id_actividad INT,
    Id_empleado INT,
    Id_tiporeserva INT,
    Fecha DATETIME,
    Cancelacion DATETIME DEFAULT NULL,
	Horario_reserva DATETIME
);


-- DEFINICION FOREIGN KEYS

-- EMPLEADOS

ALTER TABLE EMPLEADOS
    ADD CONSTRAINT FK_EMP_CLIENTE
    FOREIGN KEY (Id_actividad) REFERENCES ACTIVIDADES(Id_actividad);
    
-- RESERVAS

ALTER TABLE RESERVAS
    ADD CONSTRAINT FK_RESERVA_CLIENTE
    FOREIGN KEY (Id_cliente) REFERENCES CLIENTES(Id_cliente);

ALTER TABLE RESERVAS
    ADD CONSTRAINT FK_RESERVA_EMPLEADO
    FOREIGN KEY (Id_empleado) REFERENCES EMPLEADOS(Id_empleado);
    
ALTER TABLE RESERVAS
    ADD CONSTRAINT FK_RESERVA_TIPORESERVA
    FOREIGN KEY (Id_tiporeserva) REFERENCES Tipo_reserva(Id_tiporeserva);
    
    ALTER TABLE RESERVAS
    ADD CONSTRAINT FK_RESERVA_ACTIVIDAD
    FOREIGN KEY (Id_actividad) REFERENCES Actividades(Id_actividad);