const shoppingCart = [];
function addToCart(name, price, product_id) {
    const existingProductIndex = shoppingCart.findIndex(item => item.product_id === product_id);

    if (existingProductIndex !== -1) {
        shoppingCart[existingProductIndex].quantity += 1;
        shoppingCart[existingProductIndex].subtotal = shoppingCart[existingProductIndex].quantity * price;
    } else {
        const newItem = { name, price, product_id, quantity: 1, subtotal: price };
        shoppingCart.push(newItem);
    }

    console.log(`${name} añadido al carrito. Precio: ${price}`);

    // Actualizar el carrito en la sesión (AJAX)
    updateCartInSession();
    // Actualizar la vista del carrito
    updateCartUI();
}

function updateCartInSession() {
    // Peticion AJAX al controlador php para manejar la actualizacion del carrito
    const xhr = new XMLHttpRequest();
    xhr.open('POST', 'index.php?page=nwp_menuPublic', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    // Convertir los datos del carrito en una cadena JSON y enviarlo al servidor de php
    const cartJSON = JSON.stringify(shoppingCart);
    xhr.send('cart=' + encodeURIComponent(cartJSON));

    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Ver en consola la respuesta obtenida
            console.log(xhr.responseText);
        }
    };
}


function updateCartUI() {
    console.log('Carrito actualizado:', shoppingCart);

    // Calcular el total
    const total = shoppingCart.reduce((acc, item) => acc + item.subtotal, 0);
    console.log('Total:', total);

    // Mostrar el total en la interfaz de usuario
    document.getElementById('cartTotal').innerText = `L. ${total.toFixed(2)}`;

    // Actualizar la fila de total en la tabla
    document.getElementById('cartTotalRow').innerHTML = `<td colspan="3" style="text-align: right;"><strong>Total:</strong></td><td><strong>L. ${total.toFixed(2)}</strong></td>`;
}
