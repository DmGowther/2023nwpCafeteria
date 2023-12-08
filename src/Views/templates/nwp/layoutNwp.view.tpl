<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cafeteria Imperial</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/{{BASE_DIR}}/public/nwp/css/layout.css" />
    <script src="https://kit.fontawesome.com/{{FONT_AWESOME_KIT}}.js" crossorigin="anonymous"></script>


    <!-- IMPORTACION DE TAILWIND -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tw-elements/dist/css/tw-elements.min.css" />
    <script src="https://cdn.tailwindcss.com/3.3.0"></script>
    <script>
        tailwind.config = {
            darkMode: "class",
            theme: {
                fontFamily: {
                    sans: ["Roboto", "sans-serif"],
                    body: ["Roboto", "sans-serif"],
                    mono: ["ui-monospace", "monospace"],
                },
            },
            corePlugins: {
                preflight: false,
            },
        };
    </script>
    <!-- FINAL DE IMPORTACION DE TAILWIND -->

    {{foreach SiteLinks}}
    <link rel="stylesheet" href="/{{~BASE_DIR}}/{{this}}"/>
    {{endfor SiteLinks}}
    {{foreach BeginScripts}}
    <script src="/{{~BASE_DIR}}/{{this}}"></script>
    {{endfor BeginScripts}}
    <link rel="shortcut icon" href="/{{BASE_DIR}}/public/nwp/img/icon-coffee-shop.ico" type="image/x-icon">
</head>
<body>
    <!-- CONTENEDOR DEL MENU bg-[#FBFBFB]-->
    <header>
        <nav class="flex-no-wrap relative flex w-full items-center justify-between bg-[#FBFBFB] py-2 shadow-md shadow-black/10 dark:bg-neutral-600 dark:shadow-black/10 lg:flex-wrap lg:justify-start lg:py-4">
            <div class="flex w-full flex-wrap items-center justify-between px-3">
                <!-- Hamburger button for mobile view -->
                <button class="block border-0 bg-transparent px-2 text-neutral-500 hover:no-underline hover:shadow-none focus:no-underline focus:shadow-none focus:outline-none focus:ring-0 dark:text-neutral-200 lg:hidden"
                        type="button" data-te-collapse-init data-te-target="#navbarSupportedContent12"
                        aria-controls="navbarSupportedContent12" aria-expanded="false" aria-label="Toggle navigation">
                    <!-- Hamburger icon -->
                    <span class="[&>svg]:w-7">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="h-7 w-7">
                                <path fill-rule="evenodd"
                                      d="M3 6.75A.75.75 0 013.75 6h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 6.75zM3 12a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 12zm0 5.25a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75z"
                                      clip-rule="evenodd"/>
                            </svg>
                        </span>
                </button>
                <!-- Collapsible navigation container -->
                <div class="!visible hidden flex-grow basis-[100%] items-center lg:!flex lg:basis-auto"
                     id="navbarSupportedContent12" data-te-collapse-item>
                    <!-- Logo -->
                    <a class="mb-4 ml-2 mr-5 mt-3 flex items-center text-neutral-900 hover:text-neutral-900 focus:text-neutral-900 dark:text-neutral-200 dark:hover:text-neutral-400 dark:focus:text-neutral-400 lg:mb-0 lg:mt-0"
                       href="#">
                        <img src="/{{BASE_DIR}}/public/nwp/img/cafeteria.png" style="height:40px" alt="coffee" loading="lazy"/>
                    </a>
                    <!-- Left navigation links -->
                    <ul class="list-style-none mr-auto flex flex-col pl-0 lg:flex-row" data-te-navbar-nav-ref>
                        {{foreach NAVIGATION}}
                            <li class="mb-4 lg:mb-0 lg:pr-2" data-te-nav-item-ref>
                                <!-- Dashboard link -->
                                <a class="text-neutral-500 transition duration-200 hover:text-neutral-700 hover:ease-in-out focus:text-neutral-700 disabled:text-black/30 motion-reduce:transition-none dark:text-neutral-200 dark:hover:text-neutral-300 dark:focus:text-neutral-300 lg:px-2 [&.active]:text-black/90 dark:[&.active]:text-zinc-400"
                                   href="{{nav_url}}" data-te-nav-link-ref>{{nav_label}}</a>
                            </li>
                        {{endfor NAVIGATION}}
                        <!-- Inicio link -->
                        {{if ~canAddCart}}

                        <strong><span>】</span></strong>
                        {{endif ~canAddCart}}
                        <li class="mb-4 lg:mb-0 lg:pr-2" data-te-nav-item-ref>
                            <a class="text-neutral-500 transition duration-200 hover:text-neutral-700 hover:ease-in-out focus:text-neutral-700 disabled:text-black/30 motion-reduce:transition-none dark:text-neutral-200 dark:hover:text-neutral-300 dark:focus:text-neutral-300 lg:px-2 [&.active]:text-black/90 dark:[&.active]:text-neutral-400"
                               href="index.php?page=nwp_home" data-te-nav-link-ref>Inicio</a>
                        </li>
                        <!-- Menu link -->
                        <li class="mb-4 lg:mb-0 lg:pr-2" data-te-nav-item-ref>
                            <a class="text-neutral-500 transition duration-200 hover:text-neutral-700 hover:ease-in-out focus:text-neutral-700 disabled:text-black/30 motion-reduce:transition-none dark:text-neutral-200 dark:hover:text-neutral-300 dark:focus:text-neutral-300 lg:px-2 [&.active]:text-black/90 dark:[&.active]:text-neutral-400"
                               href="index.php?page=nwp_menuPublic" data-te-nav-link-ref>Menú</a>
                        </li>
                        <!-- Contacto link -->
                        <li class="mb-4 lg:mb-0 lg:pr-2" data-te-nav-item-ref>
                            <a class="text-neutral-500 transition duration-200 hover:text-neutral-700 hover:ease-in-out focus:text-neutral-700 disabled:text-black/30 motion-reduce:transition-none dark:text-neutral-200 dark:hover:text-neutral-300 dark:focus:text-neutral-300 lg:px-2 [&.active]:text-black/90 dark:[&.active]:text-neutral-400"
                               href="index.php?page=nwp_contact" data-te-nav-link-ref>Contacto</a>
                        </li>

                    </ul>
                </div>

                <!-- Right elements -->
                <div class="relative flex items-center">
                    {{if ~canAddCart}}
                    <!-- Cart Icon -->
                    <a class="mr-4 text-secondary-500 transition duration-200 hover:text-secondary-400 hover:ease-in-out focus:text-secondary-400 disabled:text-black/30 motion-reduce:transition-none"
                       href="index.php?page=nwp_dashboard_shoppingCart">
                            <span class="[&>svg]:w-5">
                                <svg style="width: 25px; height: 25px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6">
                                  <path fill-rule="evenodd" d="M7.5 6v.75H5.513c-.96 0-1.764.724-1.865 1.679l-1.263 12A1.875 1.875 0 004.25 22.5h15.5a1.875 1.875 0 001.865-2.071l-1.263-12a1.875 1.875 0 00-1.865-1.679H16.5V6a4.5 4.5 0 10-9 0zM12 3a3 3 0 00-3 3v.75h6V6a3 3 0 00-3-3zm-3 8.25a3 3 0 106 0v-.75a.75.75 0 011.5 0v.75a4.5 4.5 0 11-9 0v-.75a.75.75 0 011.5 0v.75z" clip-rule="evenodd" />
                                </svg>

                            </span>
                    </a>

                    <!-- Second dropdown container -->
                    <div class="relative" data-te-dropdown-ref data-te-dropdown-alignment="end">
                        <!-- Second dropdown trigger -->
                        <a class="hidden-arrow flex items-center whitespace-nowrap transition duration-150 ease-in-out motion-reduce:transition-none"
                           href="#" id="dropdownMenuButton2" role="button" data-te-dropdown-toggle-ref
                           aria-expanded="false">
                            <!-- User avatar -->
                            <img src="https://tecdn.b-cdn.net/img/new/avatars/20.jpg" class="rounded-full"
                                 style="height: 35px; width: 35px" alt="Perfil" loading="lazy"/>
                        </a>
                        <!-- Second dropdown menu -->
                        <ul class="absolute z-[1000] float-left m-0 hidden min-w-max list-none overflow-hidden rounded-lg border-none bg-white bg-clip-padding text-left text-base shadow-lg dark:bg-neutral-700 [&[data-te-dropdown-show]]:block"
                            aria-labelledby="dropdownMenuButton2" data-te-dropdown-menu-ref>
                            <!-- Second dropdown menu items -->
                            <li>
                                <a class="block w-full whitespace-nowrap bg-transparent px-4 py-2 text-sm font-normal text-neutral-700 hover:bg-neutral-100 active:text-neutral-800 active:no-underline disabled:pointer-events-none disabled:bg-transparent disabled:text-neutral-400 dark:text-neutral-200 dark:hover:bg-white/30"
                                   href="index.php?page=nwp_dashboard_ListTransaction" data-te-dropdown-item-ref>Perfil</a>
                            </li>
                            <li>
                                <a class="block w-full whitespace-nowrap bg-transparent px-4 py-2 text-sm font-normal text-neutral-700 hover:bg-neutral-100 active:text-neutral-800 active:no-underline disabled:pointer-events-none disabled:bg-transparent disabled:text-neutral-400 dark:text-neutral-200 dark:hover:bg-white/30"
                                   href="index.php?page=sec_logout" data-te-dropdown-item-ref>Salir</a>
                            </li>
                        </ul>
                    </div>
                    {{endif ~canAddCart}}

                    {{ifnot ~canAddCart}}
                    <div class="relative" data-te-dropdown-ref data-te-dropdown-alignment="end">
                        <li style="list-style: none" class="mb-4 lg:mb-0 lg:pr-2 bg-" data-te-nav-item-ref>
                            <a class="inline-block rounded-full bg-success px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-[0_4px_9px_-4px_#14a44d] transition duration-150 ease-in-out hover:bg-success-600 hover:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.3),0_4px_18px_0_rgba(20,164,77,0.2)] focus:bg-success-600 focus:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.3),0_4px_18px_0_rgba(20,164,77,0.2)] focus:outline-none focus:ring-0 active:bg-success-700 active:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.3),0_4px_18px_0_rgba(20,164,77,0.2)] dark:shadow-[0_4px_9px_-4px_rgba(20,164,77,0.5)] dark:hover:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.2),0_4px_18px_0_rgba(20,164,77,0.1)] dark:focus:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.2),0_4px_18px_0_rgba(20,164,77,0.1)] dark:active:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.2),0_4px_18px_0_rgba(20,164,77,0.1)]"
                               href="index.php?page=sec_logout"  data-te-nav-link-ref>Acceder</a>
                        </li>
                    </div>
                    {{endifnot ~canAddCart}}

                </div>
            </div>
        </nav>
    </header>
    <!-- FINAL DEL CONTENEDOR DEL MENU -->

    <main>
        {{{page_content}}}
    </main>

    <!-- PIE DE PAGINA -->
    <div class="contenedor_footer">
        <footer>
            <div class="waves">
                <div class="wave" id="wave1"></div>
                <div class="wave" id="wave2"></div>
                <div class="wave" id="wave3"></div>
                <div class="wave" id="wave4"></div>
            </div>
            <ul class="iconos_social">
                <li>
                    <a href="https://www.facebook.com/profile.php?id=100057214729624" target="_blank">
                        <ion-icon name="logo-facebook"></ion-icon>
                    </a>
                </li>
                <li>
                    <a href="https://twitter.com/cafegijon" target="_blank">
                        <ion-icon name="logo-twitter"></ion-icon>
                    </a>
                </li>
                <li>
                    <a href="https://www.linkedin.com/company/cafeteria/?original_referer=https%3A%2F%2Fwww%2Egoogle%2Ecom%2F&originalSubdomain=es"
                       target="_blank">
                        <ion-icon name="logo-linkedin"></ion-icon>
                    </a>
                </li>
                <li>
                    <a href="https://www.instagram.com/cafe_gijon/?hl=es" target="_blank">
                        <ion-icon name="logo-instagram"></ion-icon>
                    </a>
                </li>
            </ul>
            <ul class="menu_footer">
                <li><a href="index.php?page=nwp_home">Inicio</a></li>
                <li><a href="index.php?page=nwp_menuPublic">Menú</a></li>
                <li><a href="index.php?page=nwp_contact">Contacto</a></li>
            </ul>
            <hr>
            <p>&copy; Cafetería Imperial {{~CURRENT_YEAR}} - Todos los derechos reservados.</p>
        </footer>
    </div>

    {{foreach EndScripts}}
    <script src="/{{~BASE_DIR}}/{{this}}"></script>
    {{endfor EndScripts}}

    <script src="https://kit.fontawesome.com/3e069d0dca.js" crossorigin="anonymous"></script>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    <!-- SCRIPT DE IMPORTACION DE TAILWIND JS -->
    <script src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/tw-elements.umd.min.js"></script>
    <!-- SCRIPT DE IMPORTACION DE TAILWIND JS -->
</body>
</html>






