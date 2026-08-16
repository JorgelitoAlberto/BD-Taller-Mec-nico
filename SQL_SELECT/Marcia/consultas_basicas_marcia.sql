-- =====================================================
-- CONSULTAS BÁSICAS (SELECT)
-- Responsable: Marcia
-- =====================================================

-- 1. Listar las órdenes de servicio que están "En proceso"
SELECT id_orden, fecha_ingreso, descripcion, estado
FROM ordenes_servicio
WHERE estado = 'En proceso';

-- 2. Listar los repuestos usados del más caro al más barato
SELECT id_repuesto, nombre_repuesto, cantidad, precio_unitario
FROM repuestos_usados
ORDER BY precio_unitario DESC;

-- 3. Buscar vehículos de la marca "Toyota"
SELECT marca, modelo, anio, placa, color
FROM vehiculos
WHERE marca = 'Toyota';

-- 4. Listar las citas ordenadas de la más próxima a la más lejana
SELECT id_cita, fecha, hora, motivo
FROM citas
ORDER BY fecha ASC;

-- 5. Buscar clientes cuyo correo sea de Gmail
SELECT nombre, correo
FROM clientes
WHERE correo LIKE '%gmail.com';
