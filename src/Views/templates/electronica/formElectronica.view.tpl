<h2>{{modedsc}}</h2>

{{with electronica}}
<form action="index.php?page=Electronica_ElectronicaForm&mode={{~mode}}&id={{id_producto}}" method="POST">
    <label for="id_producto">Codigo</label>
    <input type="text" name="id_producto" id="id_producto" value="{{id_producto}}" readonly>
    <br>

    <label for="nombre">Nombre del producto</label>
    <input type="text" id="nombre" name="nombre" placeholder="Nombre del producto"
           value="{{nombre}}" {{~readonly}}/>
    {{if nombre_error}}<div class="error">{{nombre_error}}</div>{{endif nombre_error}}
    <br>

    <label for="tipo">Tipo de producto</label>
    <input type="text" id="tipo" name="tipo" placeholder="Tipo del producto"
           value="{{tipo}}" {{~readonly}}/>
    {{if tipo_error}}<div class="error">{{tipo_error}}</div>{{endif tipo_error}}
    <br>

    <label for="precio">Precio del producto</label>
    <input type="text" id="precio" name="precio" placeholder="Tipo del producto"
           value="{{precio}}" {{~readonly}}/>
    {{if precio_error}}<div class="error">{{precio_error}}</div>{{endif precio_error}}
    <br>

    <label for="marca">Marca del producto</label>
    <input type="text" id="marca" name="marca" placeholder="Tipo del producto"
           value="{{marca}}" {{~readonly}}/>
    {{if marca_error}}<div class="error">{{marca_error}}</div>{{endif marca_error}}
    <br>

    <label for="fecha_lanzamiento">Fecha de lanzamiento</label>
    <input type="text" id="fecha_lanzamiento" name="fecha_lanzamiento" placeholder="01-01-2000"
           value="{{fecha_lanzamiento}}" {{~readonly}}/>
    {{if fecha_error}}<div class="error">{{fecha_error}}</div>{{endif fecha_error}}
    <br>

    {{if ~showConfirm}}
    <button type="submit" name="btnConfirm">Procesar</button>
    {{endif ~showConfirm}}
    <button id="btnCancel">Cancelar</button>
</form>
{{endwith electronica}}
<script>
    document.addEventListener("DOMContentLoaded", ()=>{
        document.getElementById("btnCancel").addEventListener("click", (e)=>{
            e.preventDefault();
            e.stopPropagation();
            document.location.assign("index.php?page=Electronica_ElectronicaList");
        });
    });
</script>