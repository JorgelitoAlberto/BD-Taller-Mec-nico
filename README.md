# Base de Datos - Taller Mecánico

## Introducción

Este repositorio contiene el diseño y estructura completa de la base de datos para un **Taller Mecánico**. El proyecto está desarrollado en **Supabase** y está organizadoen módulos SQL según su funcionalidad. La base de datos permite gestionar de manera integral todos los procesos de un taller: clientes, vehículos, citas, órdenes de servicio, mecánicos y repuestos utilizados.

---

## Diagrama Entidad-Relación (ER)

```
┌─────────────────────────────────────────────────────────────────┐
│                     TALLER MECÁNICO - BD                        │
└─────────────────────────────────────────────────────────────────┘

                           ┌──────────────┐
                           │   CLIENTES   │
                           ├──────────────┤
                           │ id_cliente   │
                           │ nombre       │
                           │ telefono     │
                           │ correo       │
                           │ direccion    │
                           └──────┬───────┘
                                  │
                    ┌─────────────┴──────────────┐
                    │                            │
                    ▼                            ▼
           ┌──────────────────┐        ┌──────────────────┐
           │   VEHICULOS      │        │     CITAS        │
           ├──────────────────┤        ├──────────────────┤
           │ id_vehiculo      │        │ id_cita          │
           │ id_cliente (FK)  │        │ id_cliente (FK)  │
           │ marca            │        │ id_vehiculo (FK) │
           │ modelo           │        │ fecha            │
           │ año              │        │ hora             │
           │ placa            │        │ motivo           │
           │ color            │        │ estado           │
           └────────┬─────────┘        └──────────────────┘
                    │
                    ▼
           ┌──────────────────────┐
           │  ORDENES_SERVICIO    │
           ├──────────────────────┤
           │ id_orden             │
           │ id_vehiculo (FK)     │
           │ id_mecanico (FK)     │
           │ fecha_ingreso        │
           │ fecha_salida         │
           │ descripcion          │
           │ estado               │
           │ costo_total          │
           └────────┬─────────────┘
                    │
         ┌──────────┴──────────┐
         │                     │
         ▼                     ▼
┌──────────────────┐  ┌──────────────────────┐
│   MECANICOS      │  │  REPUESTOS_USADOS    │
├──────────────────┤  ├──────────────────────┤
│ id_mecanico      │  │ id_repuesto          │
│ nombre           │  │ id_orden (FK)        │
│ especialidad     │  │ nombre_repuesto      │
│ telefono         │  │ cantidad             │
└──────────────────┘  │ precio_unitario      │
                      └──────────────────────┘

FK = Foreign Key (Clave Foránea)
```

---

## Descripción Detallada del Diseño

### 1. **CLIENTES**
Tabla que almacena la información de los clientes del taller.
- **id_cliente**: Identificador único (PRIMARY KEY)
- **nombre**: Nombre completo del cliente (requerido)
- **telefono**: Número telefónico del cliente
- **correo**: Dirección de correo electrónico
- **direccion**: Dirección física del cliente

### 2. **VEHICULOS**
Almacena los vehículos registrados en el taller asociados a cada cliente.
- **id_vehiculo**: Identificador único (PRIMARY KEY)
- **id_cliente**: Referencia al cliente propietario (FOREIGN KEY)
- **marca**: Marca del vehículo (ej: Toyota, Honda)
- **modelo**: Modelo del vehículo (ej: Corolla, CR-V)
- **anio**: Año de fabricación
- **placa**: Número de placa (único)
- **color**: Color del vehículo
- **Restricción**: DELETE CASCADE (elimina vehículos si se elimina el cliente)

### 3. **MECANICOS**
Información de los mecánicos que trabajan en el taller.
- **id_mecanico**: Identificador único (PRIMARY KEY)
- **nombre**: Nombre completo del mecánico
- **especialidad**: Área de especialización (Motor, Frenos, etc.)
- **telefono**: Número de contacto

### 4. **CITAS**
Gestiona las citas programadas de los clientes para llevar sus vehículos.
- **id_cita**: Identificador único (PRIMARY KEY)
- **id_cliente**: Referencia al cliente (FOREIGN KEY)
- **id_vehiculo**: Referencia al vehículo (FOREIGN KEY)
- **fecha**: Fecha de la cita
- **hora**: Hora de la cita
- **motivo**: Razón de la cita
- **estado**: Estado de la cita (Pendiente, Confirmada, Cancelada)
- **Restricción**: DELETE CASCADE para ambas claves foráneas

### 5. **ORDENES_SERVICIO**
Órdenes de trabajo generadas para los vehículos.
- **id_orden**: Identificador único (PRIMARY KEY)
- **id_vehiculo**: Referencia al vehículo (FOREIGN KEY)
- **id_mecanico**: Referencia al mecánico asignado (FOREIGN KEY)
- **fecha_ingreso**: Fecha de entrada del vehículo
- **fecha_salida**: Fecha de salida (puede ser NULL)
- **descripcion**: Descripción del trabajo a realizar
- **estado**: Estado de la orden (En proceso, Completada)
- **costo_total**: Costo total de la reparación
- **Restricción**: CASCADE en vehículo, SET NULL en mecánico

### 6. **REPUESTOS_USADOS**
Registro de repuestos utilizados en cada orden de servicio.
- **id_repuesto**: Identificador único (PRIMARY KEY)
- **id_orden**: Referencia a la orden de servicio (FOREIGN KEY)
- **nombre_repuesto**: Nombre del repuesto utilizado
- **cantidad**: Cantidad utilizada (mínimo 1)
- **precio_unitario**: Precio por unidad
- **Restricción**: DELETE CASCADE

---

## Estructura del Repositorio

```
BD-Taller-Mecanico/
│
├── README.md                      # Este archivo
│
├── SQL_CREATE/                    # Creación de estructura
│   ├── Luis_Tablas/              # Tablas base
│   │   └── [Código SQL - Luis Guillén]
│   └── Rodrigo_Relaciones/       # Relaciones y constraints
│       └── [Código SQL - Rodrigo Velásquez]
│
├── SQL_INSERT/                    # Inserción de datos
│   ├── Andrea/                   # Inserciones - Andrea Corrales
│   │   └── [Código SQL]
│   └── Gabriela/                 # Inserciones - Gabriela Loany
│       └── [Código SQL]
│
└── SQL_SELECT/                    # Consultas y análisis
    ├── Genesis/                  # Consultas - Genesis Corea
    │   └── [Código SQL]
    └── Marcia/                   # Consultas - Marcia
        └── [Código SQL]
```

---

## Equipo de Desarrollo

| Nombre | Rol | Responsabilidad |
|--------|-----|-----------------|
| **Jorge Banegas** | Coordinador | Coordinación general del proyecto |
| **Luis Guillén** | CREATE | Creación de tablas base |
| **Rodrigo Velásquez** | CREATE | Relaciones y constraints |
| **Andrea Corrales** | INSERT | Inserciones de datos |
| **Gabriela Loany** | INSERT | Inserciones de datos |
| **Genesis Corea** | SELECT | Consultas |
| Marcia | SELECT | Consultas |

---

## Configuración Supabase

**ID del Proyecto Supabase:**
```
xtbofdmzmmgofogiszhn
```
---