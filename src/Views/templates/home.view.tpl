<h1>Ofertas del Día</h1>
<div class="product-list">
    {{foreach productsOnSale}}
    <div class="product" data-productId="{{productId}}">
        <img src="{{productImgUrl}}" alt="{{productName}}">
        <h2>{{productName}}</h2>
        <p>{{productDescription}}</p>
        <span class="price">Precio: {{productPrice}}</span><br>
        <button class="add-to-cart">Agregar al Carrito</button>
        <hr>
    </div>
    {{endfor productsOnSale}}
</div>
<h1>Destacados</h1>
<div class="product-list">
    {{foreach productsHighlighted}}
    <div class="product" data-productId="{{productId}}">
        <img src="{{productImgUrl}}" alt="{{productName}}">
        <h2>{{productName}}</h2>
        <p>{{productDescription}}</p>
        <span class="price">Precio: {{productPrice}}</span><br>
        <button class="add-to-cart">Agregar al Carrito</button>
        <hr>
    </div>
    {{endfor productsHighlighted}}
</div>
<h1>Novedades</h1>
<div class="product-list">
    {{foreach productsNew}}
    <div class="product" data-productId="{{productId}}">
        <img src="{{productImgUrl}}" alt="{{productName}}">
        <h2>{{productName}}</h2>
        <p>{{productDescription}}</p>
        <span class="price">Precio: {{productPrice}}</span><br>
        <button class="add-to-cart">Agregar al Carrito</button>
        <hr>
    </div>
    {{endfor productsNew}}
</div>
<style>
    .add-to-cart{
        margin-top: 10px;
    }
</style>

