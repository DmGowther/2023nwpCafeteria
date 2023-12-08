create table if not exists bitacora
(
    bitacoracod    int auto_increment
        primary key,
    bitacorafch    datetime     null,
    bitprograma    varchar(255) null,
    bitdescripcion varchar(255) null,
    bitobservacion mediumtext   null,
    bitTipo        char(3)      null,
    bitusuario     bigint       null
)
    charset = utf8mb3;

create table if not exists cart
(
    idCart    int auto_increment
        primary key,
    userId    int          not null,
    name      varchar(300) not null,
    price     varchar(100) not null,
    quantity  int          not null,
    sessionId int          null
)
    collate = utf8mb4_general_ci;

create table if not exists funciones
(
    fncod varchar(255) not null
        primary key,
    fndsc varchar(45)  null,
    fnest char(3)      null,
    fntyp char(3)      null
)
    charset = utf8mb3;

create table if not exists orders
(
    idOrders    int auto_increment
        primary key,
    userId      int                                 null,
    totalAmount decimal(10, 2)                      null,
    createdAt   timestamp default CURRENT_TIMESTAMP null
);

create table if not exists order_details
(
    idOrdersDetail int auto_increment
        primary key,
    ordersId       int            null,
    product_name   varchar(255)   null,
    price          decimal(10, 2) null,
    quantity       int            null,
    subtotal       decimal(10, 2) null,
    constraint order_details_ibfk_1
        foreign key (ordersId) references orders (idOrders)
);

create index ordersId
    on order_details (ordersId);

create table if not exists products
(
    idProducts  int auto_increment
        primary key,
    name        varchar(100)  not null,
    price       float         not null,
    image       varchar(1000) not null,
    description varchar(2000) null,
    ingredients varchar(2000) null,
    category    varchar(120)  null
)
    collate = utf8mb4_general_ci;

create index products_categories_idCategories_fk
    on products (category);

create table if not exists roles
(
    rolescod varchar(15) not null
        primary key,
    rolesdsc varchar(45) null,
    rolesest char(3)     null
)
    charset = utf8mb3;

create table if not exists funciones_roles
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

create table if not exists usuario
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

create table if not exists roles_usuarios
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

create index userTipoUsuario
    on usuario (usertipo, useremail, usercod, userest);


