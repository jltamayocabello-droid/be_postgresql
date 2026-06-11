![Estado del Proyecto](https://img.shields.io/badge/Estado-Completado-green)
![PostgreSQL Version](https://img.shields.io/badge/PostgreSQL-14%2B-4169E1?logo=postgresql&logoColor=white)
![Udemy Course](https://img.shields.io/badge/Curso-Backend%20Developer%20(Udemy)-ec1c24?logo=udemy&logoColor=white)

---

## 📖 Descripción del Proyecto

Este repositorio reúne el conjunto de prácticas, ejercicios y consultas desarrollados a lo largo de mi aprendizaje en el sistema de gestión de bases de datos relacionales PostgreSQL. Todo el contenido forma parte de mi especialización académica orientada al desarrollo backend:

1. **Curso de Backend Developer (Udemy):** Un recorrido integral por el diseño, estructuración y manipulación de bases de datos relacionales. Abarca desde la creación de esquemas, relaciones (1:1, 1:N, N:N) y operaciones DML (CRUD), pasando por técnicas avanzadas de optimización y análisis de planes de ejecución (`EXPLAIN ANALYZE`), control transaccional robusto, programación PL/pgSQL con triggers y automatizaciones, hasta la seguridad y respaldos de información.
2. **Prácticas en Base de Datos (`fundamentos_bd`):** Conjunto de scripts estructurados por temáticas que demuestran de forma aplicada cada concepto del motor relacional PostgreSQL, listos para ser ejecutados y analizados.

---

## 🎯 Objetivo

Consolidar el dominio técnico en el diseño, optimización y administración de bases de datos relacionales con PostgreSQL bajo estándares profesionales de desarrollo backend, logrando:

- Diseñar esquemas relacionales óptimos y normalizados respetando la integridad referencial y aplicando restricciones adecuadas.
- Optimizar el rendimiento de consultas SQL mediante el uso inteligente de índices (B-Tree, Hash) y la interpretación de planes de ejecución.
- Implementar lógica de negocio en el motor de base de datos utilizando funciones, procedimientos almacenados y triggers automatizados con PL/pgSQL.
- Garantizar la seguridad y consistencia de los datos mediante el control de acceso, definición de roles transaccionales y estrategias de respaldo y recuperación.

---

## 🛠️ Requerimientos Técnicos / Temas Cubiertos

Este proyecto cumple con los estándares exigidos para el aprendizaje integral del diseño y administración de bases de datos en PostgreSQL:

### 1. Fundamentos & Lógica de SQL
- ✅ **Sintaxis y Estructuras DDL:** Creación de bases de datos y tablas utilizando `CREATE DATABASE`, `CREATE TABLE` con tipos de datos óptimos y claves primarias (`SERIAL`, `GENERATED ALWAYS AS IDENTITY`) en [prueba1.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/prueba1.sql) y [tienda_online.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/tienda_online.sql).
- ✅ **Manipulación de Datos (DML):** Operaciones CRUD completas mediante `INSERT INTO`, `SELECT`, `UPDATE` y `DELETE` en [tienda_online.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/tienda_online.sql).
- ✅ **Consultas con Filtros y Ordenamiento:** Uso de cláusulas lógicas y condicionales `WHERE`, ordenamiento con `ORDER BY`, alias con `AS` y paginación a través de `LIMIT`/`OFFSET` en [tienda_online.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/tienda_online.sql).
- ✅ **Agrupaciones y Funciones Agregadas:** Agrupamiento de información y consultas analíticas mediante `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` combinados con `GROUP BY` y `HAVING` en [tienda_online.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/tienda_online.sql).

### 2. Relaciones, Joins & Integridad de Datos
- ✅ **Integridad Referencial y Relaciones:** Modelado de relaciones uno a muchos (1:N), uno a uno (1:1) y muchos a muchos (N:N) usando claves foráneas (`FOREIGN KEY`) e índices únicos en [relaciones.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/relaciones.sql) y [prueba1.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/prueba1.sql).
- ✅ **Combinación de Tablas (JOINS):** Cruce y recuperación de información multirelacional utilizando `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` y `FULL JOIN` en [relaciones.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/relaciones.sql).
- ✅ **Restricciones de Dominio:** Restricciones de columna `CHECK` para mantener reglas de validación en campos clave (por ejemplo, saldos no negativos) en [db_indices.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/db_indices.sql).

### 3. Programación, Transacciones, Rendimiento & Administración
- ✅ **Programación PL/pgSQL:** Creación y modularización con funciones personalizadas (`CREATE FUNCTION`), procedimientos almacenados (`CREATE PROCEDURE`), declaración de variables y lógica condicional con `IF/ELSIF/ELSE` en [funciones_procedimientos.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/funciones_procedimientos.sql).
- ✅ **Triggers y Automatización:** Configuración de disparadores automáticos (`BEFORE INSERT`) a nivel de fila (`FOR EACH ROW`) para validación robusta antes del almacenamiento en [trigger.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/trigger.sql).
- ✅ **Optimización mediante Índices:** Implementación de índices `B-Tree` y `HASH` para acelerar las búsquedas y uso de `EXPLAIN ANALYZE` para diagnosticar y comparar los tiempos de ejecución en [db_indices.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/db_indices.sql).
- ✅ **Control de Transacciones (ACID):** Manejo de bloques lógicos transaccionales mediante `BEGIN`, `COMMIT` y `ROLLBACK` para preservar la consistencia y atomicidad en [db_indices.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/db_indices.sql).
- ✅ **Seguridad y Control de Roles:** Creación de usuarios con credenciales (`CREATE ROLE LOGIN`), definición de accesos y revocación de permisos (`GRANT`, `REVOKE`) sobre tablas y secuencias en [trigger.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/trigger.sql).
- ✅ **Respaldos y Restauración:** Generación y consumo de volcados lógicos y físicos utilizando utilidades nativas como `pg_dump` en [trigger_backup.sql](file:///c:/Users/jorge/OneDrive/Documentos/Estudio/Backend%20Developer/PostgreSQL/fundamentos_bd/trigger_backup.sql).

---

## 📂 Estructura del Proyecto

```
be_postgresql/
│
├── fundamentos_bd/                       # Ejercicios prácticos de bases de datos
│   ├── db_indices.sql                   # Índices, EXPLAIN ANALYZE y transacciones (BEGIN/COMMIT/ROLLBACK)
│   ├── funciones_procedimientos.sql     # Creación de funciones y procedimientos PL/pgSQL
│   ├── prueba1.sql                      # Tablas básicas, identidades y definición de claves foráneas
│   ├── relaciones.sql                   # Modelos de relaciones (1:1, 1:N, N:N) y combinaciones JOIN
│   ├── tienda_online.sql                # CRUD básico, filtros, agrupaciones y agregaciones
│   ├── trigger.sql                      # Funciones disparadoras (Triggers) y seguridad (GRANT/REVOKE)
│   └── trigger_backup.sql               # Respaldo de base de datos generado con pg_dump
│
└── README.md                            # Documentación del repositorio
```

---

## 🚀 Instrucciones de Ejecución

Para ejecutar o restaurar cualquiera de los archivos de este repositorio, asegúrate de tener instalado PostgreSQL (versión 14 o superior recomendada) y acceso a una herramienta cliente como `psql`, `pgAdmin` o `DBeaver`.

### 1. Clonar el repositorio
```bash
git clone https://github.com/jltamayocabello-droid/be_postgresql.git
cd be_postgresql
```

### 2. Ejecutar Scripts SQL Individuales
Puedes ejecutar los scripts directamente a través de la consola interactiva `psql`:
```bash
# Ejemplo: Cargar el script de relaciones en una base de datos local
psql -U postgres -d tu_base_de_datos -f fundamentos_bd/relaciones.sql
```
O bien, abrir los archivos en tu IDE de base de datos predilecto (pgAdmin, DBeaver, VS Code con extensión SQL) y ejecutar el contenido en la consola SQL.

### 3. Restaurar Base de Datos desde el Respaldo (Backup)
El archivo `trigger_backup.sql` contiene un volcado generado con la utilidad `pg_dump`. Para restaurarlo:
```bash
# 1. Crear una base de datos destino
createdb -U postgres trigger

# 2. Restaurar la base de datos a partir del backup
psql -U postgres -d trigger -f fundamentos_bd/trigger_backup.sql
```

---

## 📱 Áreas Técnicas Destacadas

| Área Técnica | Conceptos Clave | Descripción |
| :--- | :--- | :--- |
| 🐘 **Base de Datos Relacional** | DDL, DML, PostgreSQL | Motor relacional robusto con soporte nativo avanzado para tipos de datos complejos y consultas estructuradas. |
| 🔗 **Relaciones y JOINS** | 1:1, 1:N, N:N, JOINs | Modelado de consistencia e integridad referencial y cruce de tablas eficiente mediante INNER, LEFT, RIGHT y FULL JOIN. |
| ⚡ **Optimización y Rendimiento** | B-Tree, Hash, EXPLAIN ANALYZE | Aceleración de lecturas mediante índices estratégicos y análisis físico de consultas en el planificador. |
| ⚙️ **Programación en DB** | PL/pgSQL, Triggers, Functions | Automatización de lógica empresarial directa y validaciones en la base de datos antes de confirmación. |
| 🔒 **Seguridad y Control** | Roles, GRANT, REVOKE | Definición de roles de acceso granular y control de permisos seguro a nivel de tabla y secuencia. |
| 📦 **Administración y Backups** | pg_dump, pg_restore | Políticas de respaldos lógicos y físicos para recuperación parcial o total ante pérdidas o migraciones. |

---

## ✒️ Autor

**Jorge Tamayo Cabello**
*Diseñador Front-End*

---

## 📄 Licencia

Este repositorio es de carácter estrictamente académico y educativo. Todo el contenido es libre de ser consultado con fines de aprendizaje y referencia técnica.

---

## 🙏 Agradecimientos

- A **Udemy** por la sólida formación técnica brindada a través del curso de Backend Developer.
- A la **comunidad de PostgreSQL** por diseñar y mantener un motor de bases de datos relacionales tan robusto, potente y flexible.
- A todos los desarrolladores que promueven el ecosistema open-source facilitando recursos de alta calidad.