-- ============================================================
-- PROYECTO QA: Validación y Pruebas en Base de Datos
-- Archivo: 02_create_tables.sql
-- Descripción: Creación de tablas principales con reglas de integridad
-- ============================================================

-- Eliminar tablas en orden inverso a las dependencias para evitar errores de Foreign Keys  
DROP TABLE IF EXISTS detalles_pedidos;
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS usuarios;

-- ------------------------------------------------------------
-- Tabla: usuarios
-- Guarda la información de los clientes registrados.
-- ------------------------------------------------------------

CREATE TABLE usuarios(
usuario_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
email VARCHAR(150) NOT NULL UNIQUE, -- QA Check: No permite correos duplicados
fecha_registro DATE NOT NULL,
estado VARCHAR(20) DEFAULT 'activo' CHECK (estado IN ('activo', 'inactivo', 'bloqueado'))
);

-- ------------------------------------------------------------
-- Tabla: productos
-- Inventario disponible para la tienda.
-- ------------------------------------------------------------
CREATE TABLE productos (
    producto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL CHECK (precio > 0), -- QA Check: Precios no pueden ser cero o negativos
    stock INT NOT NULL CHECK (stock >= 0)              -- QA Check: Stock no puede ser negativo
);  

-- ------------------------------------------------------------
-- Tabla: pedidos
-- Cabecera de las compras realizadas por los usuarios.
-- ------------------------------------------------------------
CREATE TABLE pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    fecha_pedido DATETIME NOT NULL,
    total DECIMAL(10, 2) DEFAULT 0.00 CHECK (total >= 0),
    estado VARCHAR(20) DEFAULT 'pendiente' CHECK (estado IN ('pendiente', 'completado', 'cancelado')),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id) ON DELETE CASCADE
);

-- ------------------------------------------------------------
-- Tabla: detalles_pedido
-- Relación muchos a muchos entre pedidos y productos (líneas del carrito).
-- ------------------------------------------------------------
CREATE TABLE detalles_pedido (
    detalle_id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0), -- QA Check: Debe comprar al menos 1 unidad
    precio_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id) ON DELETE CASCADE,
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);
