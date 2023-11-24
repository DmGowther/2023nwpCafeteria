<section>
    <h2>
        Listado de categorias
    </h2>
</section>
<section>
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Nombre</th>
            {{if ~showStatus}}
            <th>Estado</th>
            {{endif ~showStatus}}
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        {{foreach categorias}}
        <tr>
            <td>{{id}}</td>
            <td>
                {{if ~canView}}<a href="index.php?page=Productos_Categorias_CategoriaForm&mode=DSP&id={{id}}">{{name}}</a>{{endif ~canView}}
                {{ifnot ~canView}}{{name}}{{endifnot ~canView}}
            </td>

                {{if ~showStatus}}<td>
                    {{status}}
            </td>
                {{endif ~showStatus}}

            <td>
                {{if ~canInsert}} <a href="index.php?page=Productos_Categorias_CategoriaForm&mode=INS">Nuevo</a> ||{{endif ~canInsert}}
                {{if ~canEdit}}<a href="index.php?page=Productos_Categorias_CategoriaForm&mode=UPD&id={{id}}">Editar</a> || {{endif ~canEdit}}
                {{if ~canDelete}}<a href="index.php?page=Productos_Categorias_CategoriaForm&mode=DEL&id={{id}}">Eliminar</a> {{endif ~canDelete}}
            </td>
        </tr>
        {{endfor categorias}}
        </tbody>
    </table>
</section>