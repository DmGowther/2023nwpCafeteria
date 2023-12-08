<br><br>
<hr class="dividerCart"/>
    <h1 class="titleDash">
        Bienvenido a su listado de transacciones
    </h1>
<hr class="dividerCart"/>
<section>
    <table>
        <thead>
        <tr>
            <th>Nro. de orden</th>
            <th>Nombre de usuario</th>
            <th>Cantidad</th>
            <th>Precio</th>
            <th>Total</th>
            <th>Fecha/Hora</th>
        </tr>
        </thead>
        <tbody>
        {{foreach transations}}
        <tr>
            <td>{{OrderNumber}}</td>
            <td>{{UserName}}</td>
            <td>{{Quantity}}</td>
            <td>L. {{UnitPrice}}.00</td>
            <td>L. {{TotalAmount}}.00</td>
            <td>{{OrderDate}}</td>
        </tr>
        {{endfor transations}}
        </tbody>
    </table>
</section>