<div class="divider"></div>
    <h1 class="titleDash">
        {{modedsc}}
    </h1>
<div class="divider"></div>
{{with formMenu}}
<form class="formulario" action="index.php?page=nwp_dashboard_menuFormDash&mode={{~mode}}&id={{idProducts}}" method="POST">
    <label for="idProducts">Codigo</label>
    <input type="text" name="idProducts" id="idProducts" value="{{idProducts}}" readonly>
    <br>

    <label for="name">Nombre del producto</label>
    <input type="text" id="name" name="name" placeholder="Nombre del producto"
           value="{{name}}" {{~readonly}}/>
    {{if nombre_error}}<div class="error">{{nombre_error}}</div>{{endif nombre_error}}
    <br>

    <label for="price">Precio del producto</label>
    <input type="text" id="price" name="price" placeholder="Tipo del producto"
           value="{{price}}" {{~readonly}}/>
    {{if precio_error}}<div class="error">{{precio_error}}</div>{{endif precio_error}}
    <br>

    <label for="image">Link de imagen del producto</label>
    <input type="text" id="image" name="image" placeholder="Link de la imagen"
           value="{{image}}" {{~readonly}}/>
    {{if image_error}}<div class="error">{{image_error}}</div>{{endif image_error}}
    <br>

    <label for="description">Descripción del producto</label>
    <input type="text" id="description" name="description" placeholder="Descripción"
           value="{{description}}" {{~readonly}}/>
    {{if descripcion_error}}<div class="error">{{descripcion_error}}</div>{{endif descripcion_error}}
    <br>

    <label for="ingredients">Ingredientes del producto</label>
    <input type="text" id="ingredients" name="ingredients" placeholder="Ingrediente 1, ingrediente 2"
           value="{{ingredients}}" {{~readonly}}/>
    {{if ingredientes_error}}<div class="error">{{ingredientes_error}}</div>{{endif ingredientes_error}}
    <br>

    <label for="category">Categoria</label>
    <input type="text" id="category" name="category" placeholder="Categoria del producto"
           value="{{category}}" {{~readonly}}/>
    {{if categoria_error}}<div class="error">{{categoria_error}}</div>{{endif categoria_error}}
    <br>

    {{if ~showConfirm}}
    <button type="submit" name="btnConfirm">Guardar</button>
    {{endif ~showConfirm}}
    <button id="btnCancel">Cancelar</button>
</form>
{{endwith formMenu}}
<script>
    document.addEventListener("DOMContentLoaded", ()=>{
        document.getElementById("btnCancel").addEventListener("click", (e)=>{
            e.preventDefault();
            e.stopPropagation();
            document.location.assign("index.php?page=nwp_dashboard_menuListDash");
        });
    });
</script>