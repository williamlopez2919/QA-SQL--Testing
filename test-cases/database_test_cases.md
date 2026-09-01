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
| TC-001 | Consultar todos los usuarios registrados | La base de datos y la tabla `usuarios` deben existir y contener datos | Tabla `usuarios` con registros cargados | 1. Ejecutar `SELECT * FROM usuarios;` 2. Revisar los registros devueltos | El sistema debe mostrar todos los usuarios almacenados sin errores | Pendiente de ejecución | Not Run |
