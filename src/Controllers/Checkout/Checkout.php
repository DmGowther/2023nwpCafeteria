<?php

namespace Controllers\Checkout;

use Controllers\PublicController;
use Dao\nwp\daoOrders;
use Utilities\Site;

class Checkout extends PublicController{
    public function run():void
    {
        $viewData = array();
        if ($this->isPostBack()) {
            $PayPalOrder = new \Utilities\Paypal\PayPalOrder(
                "test".(time() - 10000000),
                "http://localhost/2023nwpCafeteria/index.php?page=checkout_error",
                "http://localhost/2023nwpCafeteria/index.php?page=checkout_accept"
            );

            foreach ($_SESSION['shopping_cart'] as $item) {
                $PayPalOrder->addItem($item['name'], 'Producto de cafeteria imperial', $item['product_id'] ,
                    $item['price'], round(0.15*$item['price'],2), $item['quantity'], "DIGITAL_GOODS");
            }


            $response = $PayPalOrder->createOrder();

            $_SESSION["orderid"] = $response[1]->result->id;

            unset($_SESSION['shopping_cart']);
            \Utilities\Site::redirectTo($response[0]->href);
            die();
        }

//        Site::addLink('public/nwp/css/checkout.css');
        \Views\Renderer::render("paypal/checkout", $viewData, 'nwp/layoutPay.view.tpl');
    }
}
?>
