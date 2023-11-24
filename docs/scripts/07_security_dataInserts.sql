
-- INSERTAR DATOS A LA TABLA DE USUARIOS
INSERT INTO ecommerce.usuario (usercod, useremail, username, userpswd, userfching, userpswdest, userpswdexp, userest, useractcod, userpswdchg, usertipo) VALUES (1, 'admin@ecommerce.com', 'Administrador', 'admin123', '2023-11-06 23:59:11', 'ACT', null, 'ACT', null, null, 'NRM');
INSERT INTO ecommerce.usuario (usercod, useremail, username, userpswd, userfching, userpswdest, userpswdexp, userest, useractcod, userpswdchg, usertipo) VALUES (2, 'cliente1@ecommerce.com', 'Cliente 1', 'cliente1', '2023-11-06 23:59:53', 'ACT', null, 'ACT', null, null, 'CLI');
INSERT INTO ecommerce.usuario (usercod, useremail, username, userpswd, userfching, userpswdest, userpswdexp, userest, useractcod, userpswdchg, usertipo) VALUES (3, 'cliente2@ecommerce.com', 'Cliente 2', 'cliente2', '2023-11-07 00:01:41', 'ACT', null, 'ACT', null, null, 'CLI');
INSERT INTO ecommerce.usuario (usercod, useremail, username, userpswd, userfching, userpswdest, userpswdexp, userest, useractcod, userpswdchg, usertipo) VALUES (5, 'vendedor1@ecommerce.com', 'Vendedor 1', 'vendedor1', '2023-11-07 00:02:56', 'ACT', null, 'ACT', null, null, 'VEN');

-- INSERTAR DATOS A LA TABLA DE ROLES DE USUARIOS
INSERT INTO ecommerce.roles_usuarios (usercod, rolescod, roleuserest, roleuserfch, roleuserexp) VALUES (1, 'ADMIN', 'ACT', '2023-11-07 00:06:17', null);
INSERT INTO ecommerce.roles_usuarios (usercod, rolescod, roleuserest, roleuserfch, roleuserexp) VALUES (2, 'CLIENTE', 'ACT', '2023-11-07 00:07:00', null);
INSERT INTO ecommerce.roles_usuarios (usercod, rolescod, roleuserest, roleuserfch, roleuserexp) VALUES (3, 'CLIENTE', 'ACT', '2023-11-07 00:07:14', null);
INSERT INTO ecommerce.roles_usuarios (usercod, rolescod, roleuserest, roleuserfch, roleuserexp) VALUES (5, 'VENDEDOR', 'ACT', '2023-11-07 00:07:36', null);

-- INSERTAR DATOS A LA TABLA DE ROLES
INSERT INTO ecommerce.roles (rolescod, rolesdsc, rolesest) VALUES ('ADMIN', 'Administrador', 'ACT');
INSERT INTO ecommerce.roles (rolescod, rolesdsc, rolesest) VALUES ('CLIENTE', 'Cliente', 'ACT');
INSERT INTO ecommerce.roles (rolescod, rolesdsc, rolesest) VALUES ('CONSULTOR', 'Consultor', 'ACT');
INSERT INTO ecommerce.roles (rolescod, rolesdsc, rolesest) VALUES ('VENDEDOR', 'Vendedor', 'ACT');

-- INSERTAR DATOS A LA TABLA DE FUNCIONES Y ROLES(sin datos de momento)
INSERT INTO ecommerce.funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES ('ADMIN', 'GESTION_CLIENTES', null, null);
INSERT INTO ecommerce.funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES ('ADMIN', 'GESTION_PEDIDOS', null, null);
INSERT INTO ecommerce.funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES ('ADMIN', 'GESTION_PRODUCTOS', null, null);
INSERT INTO ecommerce.funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES ('ADMIN', 'GESTION_ROLES', null, null);
INSERT INTO ecommerce.funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES ('ADMIN', 'GESTION_USUARIOS', null, null);
INSERT INTO ecommerce.funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES ('ADMIN', 'GESTION_VENTAS', null, null);
INSERT INTO ecommerce.funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES ('VENDEDOR', 'GESTION_CLIENTES', null, null);
INSERT INTO ecommerce.funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES ('VENDEDOR', 'GESTION_PEDIDOS', null, null);


-- INSERTAR DATOS A LA TABLA DE FUNCIONES
INSERT INTO ecommerce.funciones (fncod, fndsc, fnest, fntyp) VALUES ('GESTION_CLIENTES', 'Gestión de clientes', 'ACT', 'ADM');
INSERT INTO ecommerce.funciones (fncod, fndsc, fnest, fntyp) VALUES ('GESTION_PEDIDOS', 'Gestión de pedidos', 'ACT', 'ADM');
INSERT INTO ecommerce.funciones (fncod, fndsc, fnest, fntyp) VALUES ('GESTION_PRODUCTOS', 'Gestión de productos', 'ACT', 'ADM');
INSERT INTO ecommerce.funciones (fncod, fndsc, fnest, fntyp) VALUES ('GESTION_ROLES', 'Gestión de roles', 'ACT', 'ADM');
INSERT INTO ecommerce.funciones (fncod, fndsc, fnest, fntyp) VALUES ('GESTION_USUARIOS', 'Gestión de usuarios', 'ACT', 'ADM');
INSERT INTO ecommerce.funciones (fncod, fndsc, fnest, fntyp) VALUES ('GESTION_VENTAS', 'Gestión de ventas', 'ACT', 'ADM');


-- INSERTAR DATOS A LA TABLA DE BITACORA
INSERT INTO ecommerce.bitacora (bitacoracod, bitacorafch, bitprograma, bitdescripcion, bitobservacion, bitTipo, bitusuario) VALUES (10, '2023-11-07 00:11:35', 'ecommerce', 'Modificación de la tabla bitacora', 'Modificación del tipo de dato de la columna bitprograma', 'REG', 1);
INSERT INTO ecommerce.bitacora (bitacoracod, bitacorafch, bitprograma, bitdescripcion, bitobservacion, bitTipo, bitusuario) VALUES (11, '2023-11-07 00:11:35', 'ecommerce', 'Inserción de datos de usuarios', 'Se insertaron 3 usuarios nuevos', 'REG', 1);
INSERT INTO ecommerce.bitacora (bitacoracod, bitacorafch, bitprograma, bitdescripcion, bitobservacion, bitTipo, bitusuario) VALUES (12, '2023-11-07 00:11:35', 'ecommerce', 'Inserción de datos de roles', 'Se insertó un nuevo rol de vendedor', 'REG', 1);
INSERT INTO ecommerce.bitacora (bitacoracod, bitacorafch, bitprograma, bitdescripcion, bitobservacion, bitTipo, bitusuario) VALUES (13, '2023-11-07 00:11:35', 'ecommerce', 'Inserción de datos de roles_usuarios', 'Se asignaron roles a los usuarios', 'REG', 1);
INSERT INTO ecommerce.bitacora (bitacoracod, bitacorafch, bitprograma, bitdescripcion, bitobservacion, bitTipo, bitusuario) VALUES (14, '2023-11-07 00:11:35', 'ecommerce', 'Inserción de datos de funciones', 'Se insertaron 2 funciones nuevas', 'REG', 1);
