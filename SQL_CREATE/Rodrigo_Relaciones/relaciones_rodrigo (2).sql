-- =====================================================
-- RELACIONES ENTRE TABLAS (LLAVES FORÁNEAS)
-- Responsable: Rodrigo
-- Orden de ejecución: 2° (después de tablas_luis.sql)
-- =====================================================

ALTER TABLE vehiculos
    ADD CONSTRAINT fk_vehiculo_cliente
    FOREIGN KEY (id_cliente)
    REFERENCES clientes (id_cliente)
    ON DELETE CASCADE;

ALTER TABLE citas
    ADD CONSTRAINT fk_cita_cliente
    FOREIGN KEY (id_cliente)
    REFERENCES clientes (id_cliente)
    ON DELETE CASCADE;

ALTER TABLE citas
    ADD CONSTRAINT fk_cita_vehiculo
    FOREIGN KEY (id_vehiculo)
    REFERENCES vehiculos (id_vehiculo)
    ON DELETE CASCADE;

ALTER TABLE ordenes_servicio
    ADD CONSTRAINT fk_orden_vehiculo
    FOREIGN KEY (id_vehiculo)
    REFERENCES vehiculos (id_vehiculo)
    ON DELETE CASCADE;

ALTER TABLE ordenes_servicio
    ADD CONSTRAINT fk_orden_mecanico
    FOREIGN KEY (id_mecanico)
    REFERENCES mecanicos (id_mecanico)
    ON DELETE SET NULL;

ALTER TABLE repuestos_usados
    ADD CONSTRAINT fk_repuesto_orden
    FOREIGN KEY (id_orden)
    REFERENCES ordenes_servicio (id_orden)
    ON DELETE CASCADE;
