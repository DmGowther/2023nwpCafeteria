<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cafeteria Imperial</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/{{BASE_DIR}}/public/nwp/css/layout.css" />

    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.4.19/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>

    {{foreach SiteLinks}}
    <link rel="stylesheet" href="/{{~BASE_DIR}}/{{this}}"/>
    {{endfor SiteLinks}}
    {{foreach BeginScripts}}
    <script src="/{{~BASE_DIR}}/{{this}}"></script>
    {{endfor BeginScripts}}
    <link rel="shortcut icon" href="/{{BASE_DIR}}/public/nwp/img/icon-coffee-shop.ico" type="image/x-icon">
</head>
<body>

<!--Header-->
<div class="navbar bg-base-300">
    <div class="navbar-start">

    </div>
    <div class="navbar-center hidden lg:flex">
        <ul class="menu menu-horizontal px-1">
            <li><a>Empleados</a></li>
            <li><a>Productos</a></li>
            <li><a>Categorias</a></li>
        </ul>
    </div>
    <div class="navbar-end">
        <a href="index.php?page=sec_logout">
        <button class="btn btn-active">
            Cerrar sesión
        </button></a>
    </div>
</div>
<!--Header-->

<main>
    {{{page_content}}}
</main>


{{foreach EndScripts}}
<script src="/{{~BASE_DIR}}/{{this}}"></script>
{{endfor EndScripts}}

<script src="https://kit.fontawesome.com/3e069d0dca.js" crossorigin="anonymous"></script>

</body>
</html>






