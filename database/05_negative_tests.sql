NEGATIVE TESTS
-- Archivo: 05_negative_tests.sql
-- Objetivo: Validar que la base de datos rechace datos inválidos
-- ============================================================

Documentación Detallada de Casos de Prueba

--TC-NEG-001: Validación de Email Duplicado

--Descripción: Verificar que el sistema impida el registro de un nuevo usuario utilizando un correo electrónico que ya existe en la base de datos.
--Precondiciones: La base de datos debe estar poblada con los datos iniciales de 03_insert_data.sql. El email ana.gomez@email.com debe existir.
--Pasos para Ejecutar:
--Conectarse a la base de datos tienda_william.
--Ejecutar el siguiente script:

INSERT INTO usuarios (nombre, email, fecha_registro, estado)
VALUES ('Usuario Prueba', 'ana.gomez@email.com', '2024-05-01', 'activo');

--Resultado Esperado: Transacción denegada. La base de datos debe arrojar el código de error 1062 (23000): Duplicate entry 'ana.gomez@email.com' for key 'usuarios.email'.
--Resultado Obtenido: Error 1062 devuelto correctamente por el motor MySQL.
--Estado: PASS
------------------------------------------------------------------------------------------------------------------------------
--TC-NEG-002: Control de Precios Negativos

--Descripción: Confirmar que no se permitan productos con valor monetario menor o igual a cero.
--Precondiciones: Tabla productos creada con la restricción CHECK (precio > 0).
--Pasos para Ejecutar:
--Ejecutar en el cliente SQL:

INSERT INTO productos (nombre, categoria, precio, stock)
VALUES ('Producto Prueba', 'Pruebas QA', -50.00, 10);
--Resultado Esperado: La base de datos debe rechazar la inserción por violación de restricción CHECK. Error 3819 (HY000): Check constraint 'productos_chk_1' is violated.
--Resultado Obtenido: La inserción fue bloqueada correctamente por el motor.
--Estado: PASS
-------------------------------------------------------------------------------------------------------------------------------
--TC-NEG-005: Integridad Referencial en Pedidos

--Descripción: Asegurar que no sea posible generar un pedido asociado a un usuario_id inexistente.
--Precondiciones: La tabla usuarios no debe contener el ID 9999.
--Pasos para Ejecutar:
--Ejecutar la siguiente sentencia:

INSERT INTO pedidos (usuario_id, fecha_pedido, total, estado)
VALUES (9999, '2024-05-01 10:00:00', 100.00, 'pendiente');

--Resultado Esperado: Bloqueo de la sentencia por fallo de Foreign Key. Error 1452 (23000): Cannot add or update a child row: a foreign key constraint fails.
--Resultado Obtenido: Fallo de Foreign Key detectado y bloqueado.
--Estado: PASS
