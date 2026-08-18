-- =====================================================
-- INSERCIÓN DE DATOS: citas, órdenes de servicio, repuestos usados
-- Responsable: Gabriela
-- Orden de ejecución: 2° (después de insercion_andrea.sql)
-- =====================================================

INSERT INTO citas (id_cliente, id_vehiculo, fecha, hora, motivo, estado) VALUES
(1, 1, '2026-08-15', '09:00', 'Cambio de aceite', 'Confirmada'),
(2, 3, '2026-08-16', '10:30', 'Revisión de frenos', 'Pendiente');

INSERT INTO ordenes_servicio (id_vehiculo, id_mecanico, fecha_ingreso, fecha_salida, descripcion, estado, costo_total) VALUES
(1, 1, '2026-08-15', '2026-08-15', 'Cambio de aceite y filtro', 'Completada', 45.00),
(3, 2, '2026-08-16', NULL, 'Revisión de sistema de frenos', 'En proceso', 0);

INSERT INTO repuestos_usados (id_orden, nombre_repuesto, cantidad, precio_unitario) VALUES
(1, 'Aceite 5W-30 (litro)', 4, 6.50),
(1, 'Filtro de aceite', 1, 8.00);
