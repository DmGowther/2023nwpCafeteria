<br>
<div class="divider">
    <hr>
</div>
<hr class="dividerCart"/>
<h1 class="titleDash">
    Carrito de compras
</h1>
<hr class="dividerCart"/>

<section>
    <table>
        <thead>
            <tr>
                <th>Producto</th>
                <th>Precio</th>
                <th>Cantidad</th>
                <th>Subtotal</th>
            </tr>
        </thead>
        <tbody>
        {{foreach shopping_cart}}
            <tr>
                <td>{{name}}</td>
                <td>L. {{price}}</td>
                <td>{{quantity}}</td>
                <td>L. {{subtotal}}</td>
            </tr>
        {{endfor shopping_cart}}
            <tr>
                <td colspan="3" style="text-align: right;"><strong>Total:</strong></td>
                <td><strong>L. {{total}}</strong></td>
            </tr>
        </tbody>

    </table>
    <!--<form action="">
        <button class="btnPagar transparentBtn" id=""> Pagar ahora </button>
    </form>-->
    <form action="index.php?page=nwp_dashboard_shoppingCart" method="post">
        <button class="btnPagar transparentBtn" id="payNowBtn" name="payNowBtn"> Pagar ahora </button>
    </form>
    <br><br><br>
</section>