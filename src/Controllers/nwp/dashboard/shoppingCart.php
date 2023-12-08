<?php
namespace Controllers\nwp\dashboard;

use Controllers\PrivateController;
use Dao\nwp\daoOrders;
use Utilities\Security;
use Utilities\Site;
use Views\Renderer;

class shoppingCart extends PrivateController{
    private $shoppingCart=[];

    public function run(): void
    {
        $userID = Security::getUserId();


        if (isset($_SESSION['shopping_cart'])) {
            $shoppingCart = $_SESSION['shopping_cart'];
//            $dataView["shopping"] = $_SESSION['shopping_cart'];
            if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['payNowBtn'])) {
                $this->processPayment();
            }

        } else {
            $shoppingCart = [];
//            $dataView["shopping"] = [];

        }

        $dataView =[];
        // Calcular el total del carrito
        $total = $this->calculateCartTotal();


        $dataView["total"] = $total;
        $dataView["canAddCart"] = \Utilities\Security::isLogged();
        Site::addLink('public/nwp/css/table.css');
        Renderer::render('nwp/dashboard/shoppingCart', $dataView,'nwp/layoutNwp.view.tpl' );
    }

    private function calculateCartTotal()
    {
        // Calcular el total del carrito a partir de $_SESSION['shopping_cart']
        $total = 0;
        if (isset($_SESSION['shopping_cart']) && is_array($_SESSION['shopping_cart'])) {
            foreach ($_SESSION['shopping_cart'] as $item) {
                $total += $item['subtotal'];
            }
        }
        return $total;
    }

    public function processPayment(): void
    {
        $userID = Security::getUserId();
        if (isset($_SESSION['shopping_cart']) && !empty($_SESSION['shopping_cart'])) {
            $total = $this->calculateCartTotal();

            $orderID = daoOrders::createOrder($userID, $total);

            foreach ($_SESSION['shopping_cart'] as $item) {
                daoOrders::createOrderDetail($orderID, $item['name'], $item['price'], $item['quantity'], $item['subtotal']);
            }



             header('Location: index.php?page=Checkout_Checkout');
             exit();
        } else {
            echo 'El carrito está vacío. Agregue productos antes de realizar el pago.';
        }
    }

}
