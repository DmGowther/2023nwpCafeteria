use ecommerce;

-- INSERTAR DATOS EN LA TABLA DE USUARIO

INSERT INTO usuario (useremail, username, userpswd, userfching, userpswdest, userpswdexp, userest, useractcod, userpswdchg, usertipo)
VALUES
('admin@ecommerce.com', 'Administrador', 'admin123', NOW(), 'ACT', NULL, 'ACT', NULL, NULL, 'NRM'),
('cliente1@ecommerce.com', 'Cliente 1', 'cliente1', NOW(), 'ACT', NULL, 'ACT', NULL, NULL, 'CLI'),
('cliente2@ecommerce.com', 'Cliente 2', 'cliente2', NOW(), 'ACT', NULL, 'ACT', NULL, NULL, 'CLI'),
('vendedor1@ecommerce.com', 'Vendedor 1', 'vendedor1', NOW(), 'ACT', NULL, 'ACT', NULL, NULL, 'VEN');


-- INSERTAR DATOS EN LA TABLA DE ROLES
use ecommerce;
INSERT INTO roles (rolescod, rolesdsc, rolesest)
VALUES
('ADMIN', 'Administrador', 'ACT'),
('CONSULTOR', 'Consultor', 'ACT'),
('VENDEDOR', 'Vendedor', 'ACT'),
('CLIENTE', 'Cliente', 'ACT');

-- INSERTAR DATOS EN LA TABLA DE ROLES DE USUARIO
INSERT INTO roles_usuarios (usercod, rolescod, roleuserest, roleuserfch, roleuserexp)
VALUES
(1, 'ADMIN', 'ACT', NOW(), NULL),
(2, 'CLIENTE', 'ACT', NOW(), NULL),
(3, 'CLIENTE', 'ACT', NOW(), NULL),
(5, 'VENDEDOR', 'ACT', NOW(), NULL);


-- INSERTAR DATOS EN LA TABLA DE FUNCIONES
INSERT INTO funciones (fncod, fndsc, fnest, fntyp)
VALUES
('GESTION_USUARIOS', 'Gestión de usuarios', 'ACT', 'ADM'),
('GESTION_ROLES', 'Gestión de roles', 'ACT', 'ADM'),
('GESTION_PEDIDOS', 'Gestión de pedidos', 'ACT', 'ADM'),
('GESTION_CLIENTES', 'Gestión de clientes', 'ACT', 'ADM'),
('GESTION_PRODUCTOS', 'Gestión de productos', 'ACT', 'ADM'),
('GESTION_VENTAS', 'Gestión de ventas', 'ACT', 'ADM');

-- INSERTAR DATOS EN LA TABLA DE BITACORA
INSERT INTO bitacora (bitacorafch, bitprograma, bitdescripcion, bitobservacion, bitTipo, bitusuario)
VALUES
(NOW(), 'ecommerce', 'Modificación de la tabla bitacora', 'Modificación del tipo de dato de la columna bitprograma', 'REG', 1),
(NOW(), 'ecommerce', 'Inserción de datos de usuarios', 'Se insertaron 3 usuarios nuevos', 'REG', 1),
(NOW(), 'ecommerce', 'Inserción de datos de roles', 'Se insertó un nuevo rol de vendedor', 'REG', 1),
(NOW(), 'ecommerce', 'Inserción de datos de roles_usuarios', 'Se asignaron roles a los usuarios', 'REG', 1),
(NOW(), 'ecommerce', 'Inserción de datos de funciones', 'Se insertaron 2 funciones nuevas', 'REG', 1);

