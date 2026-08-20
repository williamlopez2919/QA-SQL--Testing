-- NEGATIVE TESTS
-- Archivo: 05_negative_tests.sql
-- Objetivo: Validar que la base de datos rechace datos inválidos
-- ============================================================
-- TC-NEG-001: Email duplicado
-- ============================================================
-- Objetivo:
-- Verificar que no se pueda registrar un usuario
-- con un email que ya existe.

-- Precondición:
-- El email 'ana.gomez@email.com' ya existe en usuarios.

-- Acción:
-- Intentar registrar un nuevo usuario con el mismo email.

INSERT INTO usuarios (
    nombre,
    email,
    fecha_registro,
    estado
)
VALUES (
    'Usuario Prueba',
    'ana.gomez@email.com',
    '2024-05-01',
    'activo'
);

-- Resultado esperado:
-- El INSERT debe ser rechazado debido a la restricción UNIQUE
-- de la columna email.
---------------------------------------------------------------------------------------------------------------------------------------------
-- ============================================================
-- TC-NEG-002: Precio negativo
-- ============================================================
-- Objetivo:
-- Verificar que la base de datos rechace un producto
-- con un precio negativo.
--
-- Precondición:
-- La tabla productos existe y contiene la restricción
-- CHECK (precio > 0).
--
-- Acción:
-- Intentar registrar un producto con precio -50.00.
--
-- Resultado esperado:
-- El INSERT debe ser rechazado por la restricción
-- CHECK del precio.
-- ============================================================

INSERT INTO productos (
    nombre,
    categoria,
    precio,
    stock
)
VALUES (
    'Producto Prueba',
    'Pruebas QA',
    -50.00,
    10
);


-- Resultado obtenido:
-- Documentar aquí el error que devuelve MySQL.

-- Estado:
-- PASS / FAIL
