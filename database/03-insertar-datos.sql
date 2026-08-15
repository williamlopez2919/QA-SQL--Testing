-- ============================================================
-- PROYECTO QA: Validación y Pruebas en Base de Datos
-- Archivo: 03_insert_data.sql
-- Descripción: Inserción de datos iniciales para ambiente de pruebas
-- ============================================================
-- 1. Insertar Usuarios
INSERT INTO usuarios (nombre, email, fecha_registro, estado) VALUES
('Ana Gómez', 'ana.gomez@email.com', '2024-01-15', 'activo'),
('Carlos López', 'carlos.lopez@email.com', '2024-02-10', 'activo'),
('María Rodríguez', 'maria.rodriguez@email.com', '2024-03-01', 'inactivo'),
('Juan Pérez', 'juan.perez@email.com', '2024-03-15', 'bloqueado'),
('Laura Martínez', 'laura.m@email.com', '2024-04-02', 'activo');

-- 2. Insertar Productos
INSERT INTO productos (nombre, categoria, precio, stock) VALUES
('Laptop Pro 15', 'Electrónica', 1200.00, 10),
('Mouse Inalámbrico', 'Accesorios', 25.50, 50),
('Teclado Mecánico', 'Accesorios', 80.00, 0), -- QA Check: Producto sin stock para pruebas de disponibilidad
('Monitor 27 Pulgadas', 'Electrónica', 300.00, 15),
('Auriculares Bluetooth', 'Audio', 45.00, 5);

-- 3. Insertar Pedidos
INSERT INTO pedidos (usuario_id, fecha_pedido, total, estado) VALUES
(1, '2024-04-10 10:30:00', 1225.50, 'completado'),
(2, '2024-04-11 14:15:00', 80.00, 'pendiente'),
(1, '2024-04-12 09:00:00', 45.00, 'cancelado'),
(5, '2024-04-13 16:45:00', 300.00, 'completado');

-- 4. Insertar Detalles de Pedidos
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 1200.00), -- Laptop en pedido 1
(1, 2, 1, 25.50),   -- Mouse en pedido 1
(2, 3, 1, 80.00),    -- Teclado en pedido 2
(3, 5, 1, 45.00),    -- Auriculares en pedido 3
(4, 4, 1, 300.00);   -- Monitor en pedido 4
