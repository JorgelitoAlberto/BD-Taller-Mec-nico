-- =====================================================
-- CREACIÓN DE TABLAS
-- Responsable: Luis
-- Orden de ejecución: 1° (antes de relaciones_rodrigo.sql)
-- =====================================================

CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    correo VARCHAR(100),
    direccion VARCHAR(150)
);

CREATE TABLE vehiculos (
    id_vehiculo SERIAL PRIMARY KEY,
    id_cliente INT NOT NULL,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    anio INT,
    placa VARCHAR(15) UNIQUE NOT NULL,
    color VARCHAR(30)
);

CREATE TABLE mecanicos (
    id_mecanico SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(80),
    telefono VARCHAR(20)
);

CREATE TABLE citas (
    id_cita SERIAL PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_vehiculo INT NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    motivo VARCHAR(150),
    estado VARCHAR(30) DEFAULT 'Pendiente'
);

CREATE TABLE ordenes_servicio (
    id_orden SERIAL PRIMARY KEY,
    id_vehiculo INT NOT NULL,
    id_mecanico INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    fecha_salida DATE,
    descripcion VARCHAR(250),
    estado VARCHAR(30) DEFAULT 'En proceso',
    costo_total DECIMAL(10,2) DEFAULT 0
);

CREATE TABLE repuestos_usados (
    id_repuesto SERIAL PRIMARY KEY,
    id_orden INT NOT NULL,
    nombre_repuesto VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL DEFAULT 1,
    precio_unitario DECIMAL(10,2) NOT NULL
);
