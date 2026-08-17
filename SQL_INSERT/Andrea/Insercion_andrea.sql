-- =====================================================
-- INSERCIÓN DE DATOS: clientes, vehículos, mecánicos
-- Responsable: Andrea
-- Orden de ejecución: 1° (antes de insercion_gabriela.sql)
-- =====================================================

INSERT INTO clientes (nombre, telefono, correo, direccion) VALUES
('Carlos Martínez', '9999-1111', 'carlos@gmail.com', 'Col. Kennedy, Tegucigalpa'),
('Ana López', '9999-2222', 'ana@gmail.com', 'Col. Palmira, Tegucigalpa');

INSERT INTO vehiculos (id_cliente, marca, modelo, anio, placa, color) VALUES
(1, 'Toyota', 'Corolla', 2018, 'PBA-1234', 'Blanco'),
(1, 'Honda', 'CRV', 2020, 'PBB-5678', 'Gris'),
(2, 'Mazda', '3', 2019, 'PBC-9012', 'Rojo');

INSERT INTO mecanicos (nombre, especialidad, telefono) VALUES
('Luis Ramírez', 'Motor', '9999-3333'),
('José Flores', 'Frenos y Suspensión', '9999-4444');
