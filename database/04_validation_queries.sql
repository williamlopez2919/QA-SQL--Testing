-- --------------------------------------------------------------------------
-- EJEMPLO DE CONSULTAS Y VALIDACIONES
-- --------------------------------------------------------------------------

SELECT nombre FROM usuarios;
-- -----------------------------------
SELECT nombre FROM usuarios WHERE usuario_id = 2;
-- -----------------------------------
SELECT * FROM productos;
-- -----------------------------------
SELECT * FROM pedidos;
-- -----------------------------------
SELECT * FROM productos 
WHERE producto_id = 3;
-- -----------------------------------
SELECT * FROM usuarios 
WHERE estado = 'activo';
-- -----------------------------------
SELECT * FROM productos
WHERE stock = 0;
-- -----------------------------------
SELECT * FROM productos
WHERE precio <= 0;
-- -----------------------------------
SELECT * FROM detalles_pedido
WHERE cantidad <= 0;
-- -----------------------------------
SELECT * FROM pedidos
WHERE estado = 'pendiente';
-- -----------------------------------
SELECT
    u.nombre,
    u.email,
    p.pedido_id,
    p.fecha_pedido,
    p.total,
    p.estado
FROM usuarios u
JOIN pedidos p
    ON u.usuario_id = p.usuario_id;
-- -----------------------------------
SELECT
u.nombre,
u.email,
p.pedido_id,
p.total
FROM usuarios u
JOIN pedidos p
ON u.usuario_id = p.usuario_id
WHERE u.nombre = 'Ana Gómez';
-- -----------------------------------
SELECT
u.nombre,
u.email,
p.pedido_id,
p.total,
p.estado
FROM usuarios u
JOIN pedidos p
ON u.usuario_id = p.usuario_id
WHERE u.email = 'juan.perez@email.com';
-- ------------------------------------
SELECT
    u.nombre,
    u.email,
    p.pedido_id,
    p.fecha_pedido,
    p.total,
    p.estado
FROM usuarios u
INNER JOIN pedidos p
    ON u.usuario_id = p.usuario_id;
-- ------------------------------------
SELECT
    u.nombre,
    u.email,
    p.pedido_id,
    p.fecha_pedido,
    p.total,
    p.estado
FROM usuarios u
LEFT JOIN pedidos p
    ON u.usuario_id = p.usuario_id;
-- -----------------------------------
SELECT
    u.nombre,
    u.email,
    p.pedido_id,
    p.fecha_pedido,
    p.total,
    p.estado
FROM usuarios u
RIGHT JOIN pedidos p
    ON u.usuario_id = p.usuario_id;    
-- ----------------------------------
SELECT
    u.usuario_id,
    u.nombre,
    u.email
FROM usuarios u
LEFT JOIN pedidos p
    ON u.usuario_id = p.usuario_id
WHERE p.pedido_id IS NULL;
