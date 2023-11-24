<h2>{{modedsc}}</h2>

{{with categoria}}
<form action="index.php?page=Productos_Categorias_CategoriaForm&mode={{~mode}}&id={{id}}" method="POST">
    <label for="id">Codigo</label>
    <input type="text" name="id" id="id" value="{{id}}" readonly>
    <br>

    <label for="name">Categoria</label>
    <input type="text" id="name" name="name" placeholder="Nombre de la categoria"
    value="{{name}}" {{~readonly}}/>
    {{if name_error}}<div class="error">{{name_error}}</div>{{endif name_error}}
    <br>

    <label for="status">Estado</label>
    <select name="status" id="status"
            {{if ~readonly}}disabled readonly{{endif ~readonly}}
    >
        <option value="ACT" {{ACT_selected}}>Activo</option>
        <option value="INA" {{INA_selected}}>Inactivo</option>
    </select>
    {{if status_error}}<div class="error">{{status_error}}</div>{{endif status_error}}
    <br>

    {{if ~showConfirm}}
        <button type="submit" name="btnConfirm">Confirmar</button>
    {{endif ~showConfirm}}
    <button id="btnCancel">Cancelar</button>
</form>
{{endwith categoria}}
<script>
    document.addEventListener("DOMContentLoaded", ()=>{
        document.getElementById("btnCancel").addEventListener("click", (e)=>{
            e.preventDefault();
            e.stopPropagation();
            document.location.assign("index.php?page=Productos_Categorias_CategoriasList");
        });
    });
</script>