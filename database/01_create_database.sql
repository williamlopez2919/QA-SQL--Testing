-- ============================================================
-- PROYECTO QA: Validación y Pruebas en Base de Datos
-- Archivo: 01_create_database.sql
-- Descripción: Creación de la base de datos principal
-- Motor recomendado: PostgreSQL / MySQL
-- ============================================================

-- 1. Eliminar la base de datos si ya existe (para asegurar ejecuciones limpias en pruebas)
DROP DATABASE IF EXISTS tienda_william;

-- 2. Crear la base de datos
CREATE DATABASE tienda_william;

-- 3. usar base de datos
USE tienda_william;
