# 📖 Guía de Contribución para Colaboradores

## 👨‍💻 Responsabilidades por Colaborador

---

## 📝 SQL_CREATE (Estructura Base)

### Luis Guillén - Creación de Tablas
**Ubicación:** `SQL_CREATE/Luis_Tablas/`

**Responsabilidad:** Crear los scripts SQL para definir las tablas base:
- `clientes`
- `vehiculos`
- `mecanicos`
- `citas`
- `ordenes_servicio`
- `repuestos_usados`

**Formato esperado:**
- Archivo: `01_crear_tablas.sql`
- Contenido: Sentencias CREATE TABLE con definición completa
- Incluir: Tipos de datos, restricciones de columna

---

### Rodrigo Velásquez - Relaciones y Constraints
**Ubicación:** `SQL_CREATE/Rodrigo_Relaciones/`

**Responsabilidad:** Crear los scripts para relaciones entre tablas:
- Foreign Keys (FK)
- Constraints (CHECK, UNIQUE)
- Índices para optimización
- Restricciones CASCADE

**Formato esperado:**
- Archivo: `02_crear_relaciones.sql`
- Contenido: Sentencias ALTER TABLE para agregar constraints
- Incluir: Comentarios explicativos

---

## 📥 SQL_INSERT (Datos de Prueba)

### Andrea Corrales - Inserciones (Parte 1)
**Ubicación:** `SQL_INSERT/Andrea/`

**Responsabilidad:** Insertar datos de prueba (Asignar entre Andrea y Gabriela):
- Clientes (algunos registros)
- Mecánicos
- Información adicional según se acuerde

**Formato esperado:**
- Archivo: `03_insertar_datos_p1.sql`
- Contenido: Sentencias INSERT INTO con valores realistas
- Incluir: Comentarios con explicación de datos

---

### Gabriela Loany - Inserciones (Parte 2)
**Ubicación:** `SQL_INSERT/Gabriela/`

**Responsabilidad:** Insertar datos de prueba (Complementar con Andrea):
- Vehículos
- Citas
- Órdenes de servicio
- Repuestos utilizados

**Formato esperado:**
- Archivo: `04_insertar_datos_p2.sql`
- Contenido: Sentencias INSERT INTO con valores realistas
- Incluir: Comentarios con explicación de datos

---

## 🔍 SQL_SELECT (Consultas y Análisis)

### Genesis Corea - Consultas Básicas
**Ubicación:** `SQL_SELECT/Genesis/`

**Responsabilidad:** Crear consultas básicas SELECT:
- Listar todos los clientes
- Mostrar vehículos por cliente
- Consultar citas pendientes
- Ver órdenes activas
- Listar mecánicos y especialidades

**Formato esperado:**
- Archivos múltiples: `01_consulta_clientes.sql`, `02_consulta_vehiculos.sql`, etc.
- Contenido: Sentencias SELECT con WHERE básicos
- Incluir: Comentarios explicativos

**Ejemplo de estructura:**
```
Genesis/
├── 01_clientes.sql
├── 02_vehiculos.sql
├── 03_citas_pendientes.sql
├── 04_ordenes_activas.sql
└── 05_mecanicos.sql
```

---

### Marcia - Consultas Avanzadas
**Ubicación:** `SQL_SELECT/Marcia/`

**Responsabilidad:** Crear consultas complejas con:
- JOINS (INNER, LEFT, RIGHT)
- Agregaciones (COUNT, SUM, AVG, MAX, MIN)
- GROUP BY y HAVING
- Subconsultas
- Ordenamiento y filtros avanzados

**Ejemplo de consultas:**
- Total de dinero gastado por cliente
- Promedio de costo por mecánico
- Vehículos con más servicios
- Repuestos más utilizados
- Clientes con citas vencidas

**Formato esperado:**
- Archivos múltiples: `01_reportes_financieros.sql`, `02_analisis_mecanicos.sql`, etc.
- Contenido: Sentencias SELECT con JOINs y agregaciones
- Incluir: Comentarios y alias descriptivos

**Ejemplo de estructura:**
```
Marcia/
├── 01_reportes_financieros.sql
├── 02_analisis_mecanicos.sql
├── 03_estadisticas_vehiculos.sql
└── 04_consultas_complejas.sql
```

---

## 🔄 Flujo de Trabajo Colaborativo

### Paso 1: Planificación
- Jorge (Coordinador) define las fechas y el orden de ejecución
- Cada miembro revisa su responsabilidad

### Paso 2: Desarrollo
- Crear una rama personal: `git checkout -b feature/tu-nombre`
- Escribir los scripts SQL
- Hacer commit: `git commit -m "Descripción clara"`

### Paso 3: Push
```bash
git push origin feature/tu-nombre
```

### Paso 4: Pull Request
- Crear Pull Request en GitHub
- Descripción breve de cambios
- Esperar revisión de Jorge

### Paso 5: Merge
- Jorge revisa y aprueba
- Se mezcla con rama principal

---

## ✅ Checklist Antes de Hacer Push

- [ ] Mi código SQL está sintácticamente correcto
- [ ] He probado las consultas/inserciones/creaciones
- [ ] Agregué comentarios explicativos
- [ ] El nombre del archivo es descriptivo
- [ ] Mi rama está actualizada con la rama `main`
- [ ] Mi commit tiene un mensaje claro

---

## 📌 Convenciones de Nombres

**Archivos SQL:**
- Nombrar con prefijo numérico: `01_crear_tablas.sql`, `02_relaciones.sql`
- Usar guiones bajos: `crear_relaciones.sql` (no crearRelaciones.sql)
- Nombres descriptivos y en minúsculas

**Ramas Git:**
- Formato: `feature/nombre-del-colaborador`
- Ejemplo: `feature/luis-tablas`, `feature/genesis-consultas`

---

## 🎯 Objetivos Finales

Al terminar el proyecto:
- ✅ Base de datos completamente creada y funcional
- ✅ Datos de prueba cargados
- ✅ Consultas básicas y avanzadas documentadas
- ✅ README completo con toda la información
- ✅ Repositorio limpio y bien organizado

---

## 📞 Contacto y Soporte

**Coordinador:** Jorge Banegas  
**Responsable Técnico:** Luis Guillén y Rodrigo Velásquez

Para dudas: Contactar al coordinador o crear un Issue en GitHub

---

**¡Bienvenidos al proyecto! Trabajemos juntos. 💪**
