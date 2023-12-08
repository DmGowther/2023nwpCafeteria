<?php
namespace Controllers\Carts;

use Controllers\PublicController;
use Views\Renderer;
use Dao\Carts\Carts as DAOCart;
use Utilities\Site;
use Utilities\Validators;
class Carts extends PublicController {
  private $idCart;
  private $userId;
  protected $name;
  private $price;
  private $quantity;
  private $sessionId;
  private $cart = [
	"idcart" => "", 
		"userid" => "", 
		"name" => "", 
		"price" => "", 
		"quantity" => "", 
		"sessionid" => ""
];
	 private $listUrl = "index.php?page=Carts_Cart";
	 private $mode = 'INS';
    private $viewData = [];
    private $error = [];
    private $xss_token_cart = '';
private $modes = [
            "INS" => "Creando nueva cart",
            "UPD" => "Editando cart",
            "DEL" => "Eliminando cart",
            "DSP" => "Detalle cart"
        ];

        public function run(): void
        {
            $this->init();
             if ($this->isPostBack()){
                 if($this->validateFormData()){
						     $this->cart['idcart'] = $_POST['idcart'];
						     $this->cart['userid'] = $_POST['userid'];
						     $this->cart['name'] = $_POST['name'];
						     $this->cart['price'] = $_POST['price'];
						     $this->cart['quantity'] = $_POST['quantity'];
						     $this->cart['sessionid'] = $_POST['sessionid'];
			      $this->processAction();
           }
        }
        $this->prepareViewData();
        $this->render();
        }
		private function init()
        {
            if (isset($_GET["mode"])) {
                if (isset($this->modes[$_GET["mode"]])) {
                    $this->mode = $_GET["mode"];
                    if($this->mode !== "INS") {
                        if (isset($_GET["idCart"])){
                            $this->cart = DAOCart::obtenerPorId(strval($_GET["idCart"]));
                            
                        }
                    }
                } else {
                    $this->handleError("Oops, el programa no encuentra el modo solicitado, intente de nuevo");
                }
            } else {
                $this->handleError("Oops, el programa falló, intente de nuevo.");
            }
        }
		private function handleError($errMsg){
            Site::redirectToWithMsg($this->listUrl, $errMsg);
        }

		private function validateFormData(){
        if(isset($_POST["xss_token_cart"])) {
            $this->xss_token_cart = $_POST["xss_token_cart"];
            if( $_SESSION["xss_token_cart"] !== $this->xss_token_cart) {
                $this->handleError("Error al procesar la peticion");
                return false;
            }
        } else {
            $this->handleError("Error al procesar la peticion");
            return false;
        }if(Validators::IsEmpty($_POST["idcart"])){
                 $this->error["idcart_error"] = "Campo es requerido";
                }if(Validators::IsEmpty($_POST["userid"])){
                 $this->error["userid_error"] = "Campo es requerido";
                }if(Validators::IsEmpty($_POST["name"])){
                 $this->error["name_error"] = "Campo es requerido";
                }if(Validators::IsEmpty($_POST["price"])){
                 $this->error["price_error"] = "Campo es requerido";
                }if(Validators::IsEmpty($_POST["quantity"])){
                 $this->error["quantity_error"] = "Campo es requerido";
                }if(Validators::IsEmpty($_POST["sessionid"])){
                 $this->error["sessionid_error"] = "Campo es requerido";
                }
        //if (!in_array($_POST["status"], ["INA", "ACT"])) {
           // $this->error["status_error"] = "Estado es inválido.";
       // } else {
          //  $this->error["status_error"] = ""; 
        //}
        
        return count($this->error) == 0;
    }

	private function processAction(){
        switch ($this->mode) {
            case 'INS':
               if ( DAOCart::insertCart(
                       $this -> cart["idcart"],
$this -> cart["userid"],
$this -> cart["name"],
$this -> cart["price"],
$this -> cart["quantity"],
$this -> cart["sessionid"]
                    )
                ) {
                    Site::redirectToWithMsg($this->listUrl, "Cart creada exitosamente.");
                } else
                {
                    Site::redirectToWithMsg($this->listUrl, "Hubo un error.");
                }
                break;
            case 'UPD':
                if ( DAOCart::updateCart(
                    $this -> cart["idcart"],
$this -> cart["userid"],
$this -> cart["name"],
$this -> cart["price"],
$this -> cart["quantity"],
$this -> cart["sessionid"]
                    )
                ) {
                    Site::redirectToWithMsg($this->listUrl, "Cart actualizada exitosamente.");
                }else
                {
                    Site::redirectToWithMsg($this->listUrl, "Hubo un error.");
                }
                break;
            case 'DEL':
                if ( DAOCart::deleteCart(
                    $this->cart["idCart"]
                )
            ) {
                Site::redirectToWithMsg($this->listUrl, "Cart eliminada exitosamente.");
            }else
            {
                Site::redirectToWithMsg($this->listUrl, "Hubo un error.");
            }
                break;
        }
    }
      

	 private function prepareViewData(){
            $this->viewData["mode"] = $this->mode;
            $this->viewData["cart"] = $this->cart;
            if ($this->mode == "INS") {
                $this->viewData["modedsc"] = $this->modes[$this->mode];
            } else {
                //$this->viewData["modedsc"] = sprintf(
                   // $this->modes[$this->mode], 
                //);
            }
            //$this->viewData["cart"][$this->cart["status"]."_selected"] = 'selected';
            foreach ($this->error as $key => $error) {
                if ($error !== null) {
                    $this->viewData["cart"][$key] = $error;
                }
            }
            $this->viewData["readonly"] = in_array($this->mode, ["DSP","DEL"]) ? 'readonly': '';
            $this->viewData["showConfirm"] = $this->mode !== "DSP"; 
            $this->xss_token_cart = md5("carts_cart".date('Ymdhisu'));
            $_SESSION["xss_token_cart"] = $this->xss_token_cart;
            $this->viewData["xss_token_cart"] = $this->xss_token_cart; 
        }
        

	private function render(){
            Renderer::render("carts/cartform", $this->viewData);
        }
}
