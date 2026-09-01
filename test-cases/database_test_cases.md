# Database Test Cases

## Project: Tienda William - QA Database Testing

### Objective

Validate the database structure, data integrity, business rules,
constraints, and relationships between tables.

### Test Environment

- Database: MySQL
- Project Type: Database Testing
- Testing Type: Manual Testing
- Tool: SQL

## Test Cases

| Test Case ID | Test Case | Preconditions | Test Data | Steps | Expected Result | Actual Result | Status |
|---|---|---|---|---|---|---|---|
| TC-001 | Consultar todos los usuarios registrados | La base de datos y la tabla 'USUARIOS' deben existir y contener datos | Tabla 'USUARIOS' con registros cargados | 1. Ejecutar 'SELECT * FROM usuarios;' 2. Revisar los registros devueltos | El sistema debe mostrar todos los usuarios almacenados sin errores | El sistema mostró correctamente 5 registros de usuario, sin errores | PASS |     

