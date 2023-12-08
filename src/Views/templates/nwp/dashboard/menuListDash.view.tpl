<br><br>
    <h1 class="titleDash">
        Listado de Productos de la cafeteria
    </h1>
<hr class="dividerCart"/>
<section>
    <table>
        <thead>
        <tr>
            <th>Codigo</th>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Ingredientes</th>
            <th>Categoria</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        {{foreach menuListDashboard}}
        <tr>
            <td>{{idProducts}}</td>
            <td>
                {{if ~canView}}
                <a href="index.php?page=nwp_dashboard_menuFormDash&mode=DSP&id={{idProducts}}">
                    {{name}}
                </a>
                {{endif ~canView}}
                {{ifnot ~canView}}
                    {{name}}
                {{endifnot ~canView}}
            </td>
            <td>L. {{price}}.00</td>
            <td>{{ingredients}}</td>
            <td>{{category}}</td>
            <td>
                {{if ~canActions}}
                    <a href="index.php?page=nwp_dashboard_menuFormDash&mode=INS">Nuevo</a> |
                    <a href="index.php?page=nwp_dashboard_menuFormDash&mode=UPD&id={{idProducts}}">Editar</a> |
                    <a href="index.php?page=nwp_dashboard_menuFormDash&mode=DEL&id={{idProducts}}">Eliminar</a>
                {{endif ~canActions}}

                {{ifnot ~canActions}}
                    No necesita realizar acciones.
                {{endifnot ~canActions}}
            </td>
        </tr>
        {{endfor menuListDashboard}}
        </tbody>
    </table>
</section>