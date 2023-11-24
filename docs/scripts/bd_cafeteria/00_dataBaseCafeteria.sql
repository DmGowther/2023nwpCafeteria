-- CREATE TABLE cafeteria
Use cafeteria;

create table bitacora
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

create table cart
(
    id       int auto_increment
        primary key,
    user_id  int          not null,
    name     varchar(300) not null,
    price    varchar(100) not null,
    image    varchar(100) not null,
    quantity int          not null
)
    collate = utf8mb4_general_ci;

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

create table services
(
    id          int auto_increment
        primary key,
    name        varchar(100)  not null,
    price       varchar(100)  not null,
    image       varchar(100)  not null,
    information varchar(1000) null
)
    collate = utf8mb4_general_ci;

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

create table transactions
(
    id               int auto_increment
        primary key,
    user_id          bigint       not null,
    service_id       int          not null,
    quantity         int          not null,
    total_price      varchar(100) not null,
    transaction_date datetime     not null,
    constraint transactions_ibfk_1
        foreign key (user_id) references usuario (usercod),
    constraint transactions_ibfk_2
        foreign key (service_id) references services (id)
)
    collate = utf8mb4_general_ci;

create table orders
(
    id               int auto_increment
        primary key,
    transaction_id   int          not null,
    shipping_address varchar(255) not null,
    shipping_cost    varchar(100) not null,
    order_status     varchar(100) not null,
    constraint orders_ibfk_1
        foreign key (transaction_id) references transactions (id)
)
    collate = utf8mb4_general_ci;

create table order_details
(
    id         int auto_increment
        primary key,
    order_id   int          not null,
    service_id int          not null,
    quantity   int          not null,
    unit_price varchar(100) not null,
    constraint order_details_ibfk_1
        foreign key (order_id) references orders (id),
    constraint order_details_ibfk_2
        foreign key (service_id) references services (id)
)
    collate = utf8mb4_general_ci;

create index order_id
    on order_details (order_id);

create index service_id
    on order_details (service_id);

create index transaction_id
    on orders (transaction_id);

create index service_id
    on transactions (service_id);

create index user_id
    on transactions (user_id);

create index usertipo
    on usuario (usertipo, useremail, usercod, userest);


