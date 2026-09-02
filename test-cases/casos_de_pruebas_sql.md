# Database Test Cases

## Project: Tienda William - QA Database Testing

### Objective

Validar la estructura de la base de datos, la integridad de los datos, las reglas de negocio, las restricciones y las relaciones entre las tablas.

### Test Environment

- Database: MySQL
- Project Type: Database Testing
- Testing Type: Manual Testing
- Tool: SQL

## Test Cases

| Test Case ID | Test Case | Acceptance Criteria | Preconditions | Test Data | Steps | Expected Result | Actual Result | Status |

|---|---|---|---|---|---|---|---|---|

| TC-001 | Consultar todos los usuarios registrados | El sistema debe permitir la consulta de todos los usuarios | La base de datos y la tabla 'USUARIOS' deben existir y contener datos | Tabla 'USUARIOS' con registros cargados | 1. Ejecutar 'SELECT * FROM usuarios;' 2. Revisar los registros devueltos | El sistema debe mostrar todos los usuarios almacenados sin errores | El sistema mostró correctamente 5 registros de usuario, sin errores | PASS |     

| TC-02 | Buscar usuario por ID | El sistema debe permitir consultar un usuario mediante su ID y mostrar el registro correspondiente. | La base de datos debe estar creada y activa. La tabla usuarios debe existir y contener registros. | usuario_id = 2 | Paso 1. Seleccionar la base de datos. Paso 2. Ejecutar la consulta SQL 'SELECT * FROM usuarios WHERE usuario_id = 2;'. Paso 3. Verificar el registro obtenido | El sistema debe mostrar los datos del ID consultado | El sistema muestra los datos correspondientes | PASS |

