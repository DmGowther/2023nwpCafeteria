<?php
namespace Controllers\nwp;

use Controllers\PublicController;
use Dao\nwp\daoMenu;
use Utilities\Security;
use Utilities\Site;
use Views\Renderer;

class menuPublic extends PublicController
{

    public function run(): void
    {
        $this->cart();
        $dataView =[];
        $dataView["menuPublic"] = daoMenu::selectAllProducts();
        $dataView["canAddCart"] = \Utilities\Security::isLogged();


        Site::addEndScript('public/nwp/js/cards.js');
        Site::addEndScript('public/nwp/js/hours.js');
        Renderer::render('nwp/menuPublic', $dataView,'nwp/layoutNwp.view.tpl');
    }

    private function cart(){
        $userID = Security::getUserId();
        if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['cart'])) {
            // Decodificar el carrito JSON recibido
            $cart = json_decode($_POST['cart'], true);

            // Verificar si ya hay un carrito en la sesión
            if (!isset($_SESSION['shopping_cart'])) {
                $_SESSION['shopping_cart'] = []; // Inicializa el carrito si no existe
            }

            // Actualiza el carrito en la sesión sin sobrescribirlo
            foreach ($cart as $item) {
                $existingProductIndex = array_search($item['product_id'], array_column($_SESSION['shopping_cart'], 'product_id'));
                if ($existingProductIndex !== false) {
                    // Si el producto ya está en el carrito, actualiza la cantidad y subtotal
                    $_SESSION['shopping_cart'][$existingProductIndex]['quantity'] += $item['quantity'];
                    $_SESSION['shopping_cart'][$existingProductIndex]['subtotal'] += $item['subtotal'];
                } else {
                    // Si el producto no está en el carrito, agrégalo
                    $_SESSION['shopping_cart'][] = $item;
                }
            }

            // Puedes enviar una respuesta si es necesario
            echo 'Carrito actualizado en la sesión correctamente';
        } else {
            // Manejar el caso en que la solicitud no sea válida
            http_response_code(400);
            //            echo 'Solicitud no válida';
        }
    }

}