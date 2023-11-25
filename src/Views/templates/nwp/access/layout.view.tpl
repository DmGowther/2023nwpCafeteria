<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Acceder</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/{{FONT_AWESOME_KIT}}.js" crossorigin="anonymous"></script>




    {{foreach SiteLinks}}
    <link rel="stylesheet" href="/{{~BASE_DIR}}/{{this}}" />
    {{endfor SiteLinks}}
    {{foreach BeginScripts}}
    <script src="/{{~BASE_DIR}}/{{this}}"></script>
    {{endfor BeginScripts}}
    <link rel="shortcut icon" href="/{{BASE_DIR}}/public/nwp/img/icon-coffee-shop.ico" type="image/x-icon">
</head>
<body>

{{{page_content}}}

{{foreach EndScripts}}
<script src="/{{~BASE_DIR}}/{{this}}"></script>
{{endfor EndScripts}}

</body>
</html>
