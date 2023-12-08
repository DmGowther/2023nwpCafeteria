<?php
namespace Controllers\Carts;
use Controllers\PublicController;
use Views\Renderer;
use Dao\Carts\Carts as DAOCart;
use Utilities\Site;
use Utilities\Validators;
use Utilities\Context;
use Utilities\Paging;
class Cart extends PublicController {
  private $idCart;
  private $userId;
  protected $name;
  private $price;
  private $quantity;
  private $sessionId;

    public function run(): void
    {
        Site::addLink('cart_style');
        $viewData['idCart'] = 'idCart';
		$viewData['userId'] = 'userId';
		$viewData['name'] = 'name';
		$viewData['price'] = 'price';
		$viewData['quantity'] = 'quantity';
		$viewData['sessionId'] = 'sessionId';
		$viewData['cart']= DAOCart::getCart();
        Renderer::render("carts/cartlist", $viewData);
    }
}
