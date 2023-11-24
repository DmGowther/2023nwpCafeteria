CREATE DATABASE proyectoCafeteria;

USE proyectoCafeteria;

create table bitacora
(
    bitacoracod    int auto_increment primary key,
    bitacorafch    datetime     null,
    bitprograma    varchar(255) null,
    bitdescripcion varchar(255) null,
    bitobservacion mediumtext   null,
    bitTipo        char(3)      null,
    bitusuario     bigint       null
)
    charset = utf8mb3;

CREATE TABLE cart
(
    idCart       int auto_increment primary key,
    userId   int          not null,
    name     varchar(300) not null,
    price    varchar(100) not null,
    image    varchar(100) not null,
    quantity int          not null
) COLLATE = utf8mb4_general_ci;

create table funciones
(
    fncod varchar(255) not null
        primary key,
    fndsc varchar(45)  null,
    fnest char(3)      null,
    fntyp char(3)      null
)
    charset = utf8mb3;

create table roles
(
    rolescod varchar(15) not null
        primary key,
    rolesdsc varchar(45) null,
    rolesest char(3)     null
)
    charset = utf8mb3;

create table funciones_roles
(
    rolescod varchar(15)  not null,
    fncod    varchar(255) not null,
    fnrolest char(3)      null,
    fnexp    datetime     null,
    primary key (rolescod, fncod),
    constraint funcion_rol_key
        foreign key (rolescod) references roles (rolescod),
    constraint rol_funcion_key
        foreign key (fncod) references funciones (fncod)
)
    charset = utf8mb3;

create index rol_funcion_key_idx
    on funciones_roles (fncod);

CREATE TABLE services
(
    idService   int auto_increment primary key,
    name        varchar(100)  not null,
    price       varchar(100)  not null,
    image       varchar(100)  not null,
    information varchar(1000) null
) COLLATE = utf8mb4_general_ci;

create table usuario
(
    usercod     bigint auto_increment
        primary key,
    useremail   varchar(80)  null,
    username    varchar(80)  null,
    userpswd    varchar(128) null,
    userfching  datetime     null,
    userpswdest char(3)      null,
    userpswdexp datetime     null,
    userest     char(3)      null,
    useractcod  varchar(128) null,
    userpswdchg varchar(128) null,
    usertipo    char(3)      null comment 'Tipo de Usuario, Normal, Consultor o Cliente',
    constraint useremail_UNIQUE
        unique (useremail)
)
    charset = utf8mb3;

create table roles_usuarios
(
    usercod     bigint      not null,
    rolescod    varchar(15) not null,
    roleuserest char(3)     null,
    roleuserfch datetime    null,
    roleuserexp datetime    null,
    primary key (usercod, rolescod),
    constraint rol_usuario_key
        foreign key (rolescod) references roles (rolescod),
    constraint usuario_rol_key
        foreign key (usercod) references usuario (usercod)
)
    charset = utf8mb3;

create index rol_usuario_key_idx
    on roles_usuarios (rolescod);

CREATE TABLE transactions
(
    idTransactions  int auto_increment primary key,
    userId          bigint       not null,
    serviceId       int          not null,
    quantity        int          not null,
    totalPrice      varchar(100) not null,
    transactionDate datetime     not null,
    constraint transactionsIbfk1 foreign key (userId) references usuario (userCod),
    constraint transactionsIbfk2 foreign key (serviceId) references services (idService)
) COLLATE = utf8mb4_general_ci;

CREATE TABLE orders
(
    idOrder        int auto_increment primary key,
    transactionId   int          not null,
    shippingAddress varchar(255) not null,
    shippingCost    varchar(100) not null,
    orderStatus     varchar(100) not null,
    constraint ordersIbfk1 foreign key (transactionId) references transactions (idTransactions)
) COLLATE = utf8mb4_general_ci;

CREATE TABLE orderDetails
(
    idorderDetails        int auto_increment primary key,
    orderId   int          not null,
    serviceId int          not null,
    quantity  int          not null,
    unitPrice varchar(100) not null,
    constraint orderDetailsIbfk1 foreign key (orderId) references orders (idOrder),
    constraint orderDetailsIbfk2 foreign key (serviceId) references services (idService)
) COLLATE = utf8mb4_general_ci;

CREATE INDEX orderId ON orderDetails (orderId);
CREATE INDEX serviceIdOrderDetails ON orderDetails (serviceId);
CREATE INDEX transactionIdOrders ON orders (transactionId);
CREATE INDEX serviceIdTransactions ON transactions (serviceId);
CREATE INDEX userIdTransactions ON transactions (userId);
CREATE INDEX userTipoUsuario ON usuario (userTipo, userEmail, userCod, userEst);
