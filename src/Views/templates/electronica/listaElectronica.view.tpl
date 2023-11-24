<section>
    <h2>
        Listado de Productos de electronica
    </h2>
</section>
<section>
    <table>
        <thead>
        <tr>
            <th>Codigo</th>
            <th>Nombre</th>
            <th>Tipo</th>
            <th>Precio</th>
            <th>Marca</th>
            <th>Lanzamiento</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        {{foreach electronica}}
        <tr>
            <td>{{id_producto}}</td>
            <td><a href="index.php?page=Electronica_ElectronicaForm&mode=DSP&id={{id_producto}}">{{nombre}}</a></td>
            <td>{{tipo}}</td>
            <td>{{precio}}</td>
            <td>{{marca}}</td>
            <td>{{fecha_lanzamiento}}</td>
            <td>
                {{if ~canActions}}
                <a href="index.php?page=Electronica_ElectronicaForm&mode=INS">Nuevo</a> ||
                <a href="index.php?page=Electronica_ElectronicaForm&mode=UPD&id={{id_producto}}">Editar</a> ||
                <a href="index.php?page=Electronica_ElectronicaForm&mode=DEL&id={{id_producto}}">Eliminar</a>
                {{endif ~canActions}}
                {{ifnot ~canActions}}
                    No necesita realizar acciones.
                {{endifnot ~canActions}}
            </td>
        </tr>
        {{endfor electronica}}
        </tbody>
    </table>
</section>