<?php
namespace Controllers\nwp\dashboard;

use Controllers\PrivateController;
use Dao\nwp\daoMenu as menuDao;
use Utilities\Site;
use Utilities\Validators;
use Views\Renderer;

class menuFormDash extends PrivateController{

    private $mode = "INS";
    private $listUrl = "index.php?page=nwp_dashboard_menuListDash";
    private $viewData = [];
    private $error = [];
    private $modes = [
        "INS" => "Creando un nuevo producto del menu",
        "UPD" => "Editando el producto %s (%s)",
        "DEL" => "Eliminando el producto %s (%s)",
        "DSP" => "Mostrando detalle del producto %s (%s)"
    ];

    private $proMenu = [
        "idProducts" => -1,
        "name" => "",
        "price" => "0.00",
        "image" => "https://",
        "description" => "",
        "ingredients" => "Ing. 1, Ing. 2",
        "category" => ""
    ];


    public function run(): void
    {
        $this->init();
        if ($this->isPostBack()) {
            if ($this->validateFormData()) {
//                intval($_POST["productId"] ?? "");
                $this->proMenu["idProducts"] = intval($_POST["idProducts"] ?? "");
                $this->proMenu["name"] = strval($_POST["name"] ?? "");
                $this->proMenu["price"] = floatval($_POST["price"] ?? "");
                $this->proMenu["image"] = strval($_POST["image"]?? "");
                $this->proMenu["description"] = strval($_POST["description"]?? "");
                $this->proMenu["ingredients"] = strval($_POST["ingredients"]?? "");
                $this->proMenu["category"] = strval($_POST["category"]?? "");
                $this->processAction();
            }

        }
        $this->prepareViewData();
        $this->viewData["canAddCart"] = \Utilities\Security::isLogged();
        Site::addLink('public/nwp/css/form.css');
        $this->render();
    }

    private function init()
    {
        if (isset($_GET["mode"])) {
            if (isset($this->modes[$_GET["mode"]])) {
                $this->mode = $_GET["mode"]; //si encontro ya el modo

//                confirmamos que el modo no sea de insercion
                if ($this->mode !== "INS") {
                    if (isset($_GET["id"])) {
                        $this->proMenu = menuDao::selectProductById(intval($_GET["id"]));
                    }
                }
            } else {
                $this->handleError("Error inesperado, no se encontro la accion solicitada.");
            }
        } else {
            $this->handleError("Error, el programa fallo. Intente de nuevo.");
        }
    }

    private function processAction()
    {
        switch ($this->mode) {
            case 'INS':
                if (menuDao::insertNewProduct(
                    $this->proMenu["name"],
                    $this->proMenu["price"],
                    $this->proMenu["image"],
                    $this->proMenu["description"],
                    $this->proMenu["ingredients"],
                    $this->proMenu["category"]
                )) {
                    Site::redirectToWithMsg($this->listUrl, "Producto agregado al menu con exito.");
                }
                break;
            case 'UPD':
                if (menuDao::updateProduct(
                    $this->proMenu["name"],
                    $this->proMenu["price"],
                    $this->proMenu["image"],
                    $this->proMenu["description"],
                    $this->proMenu["ingredients"],
                    $this->proMenu["category"],
                    $this->proMenu["idProducts"]
                )) {
                    Site::redirectToWithMsg($this->listUrl, "Producto del menu actualizado con exito.");
                }
                break;
            case 'DEL':
                if (menuDao::deleteProduct(
                    $this->proMenu["idProducts"]
                )) {
                    Site::redirectToWithMsg($this->listUrl, "Producto eleminado del menu con exito.");
                }
                break;
        }
    }

    private function prepareViewData()
    {
        $this->viewData["mode"] = $this->mode;
        $this->viewData["formMenu"] = $this->proMenu;
        $this->viewData["canAddCart"] = \Utilities\Security::isLogged();
        if ($this->mode == "INS") {
            $this->viewData["modedsc"] = $this->modes[$this->mode];
        } else {
            $this->viewData["modedsc"] = sprintf(
                $this->modes[$this->mode],
                $this->proMenu["name"],
                $this->proMenu["idProducts"]
            );
        }

        //        añadir errores al form input
        foreach ($this->error as $key => $error) {
            $this->viewData["formMenu"][$key] = $error;
        }
        //        configuramos estado de inputs dependiendo del modo
        $this->viewData["readonly"] = in_array($this->mode, ["DSP", "DEL"]) ? 'readonly' : '';
        $this->viewData["showConfirm"] = $this->mode !== "DSP";
    }

    private function render()
    {
        Renderer::render('nwp/dashboard/menuFormDash', $this->viewData,'nwp/layoutNwp.view.tpl');
    }

    //    manejador de errores, con el que se redirige a una pagina y se le da un mensaje
    private function handleError($errMsg)
    {
        Site::redirectToWithMsg($this->listUrl, $errMsg);
    }

    private function validateFormData()
    {
        //        si el nombre esta vacio
        if (Validators::IsEmpty($_POST["name"])) {
            $this->error["nombre_error"] = "El campo del nombre es requerido.";
        }

        //                si el precio esta vacio
        if (Validators::IsEmpty($_POST["price"])) {
            $this->error["precio_error"] = "El campo del precio es requerido.";
        }
        //                        si el link esta vacio
        if (Validators::IsEmpty($_POST["image"])) {
            $this->error["image_error"] = "El campo del link de la imagen es requerido.";
        }
        //                si la descripcion esta vacio
        if (Validators::IsEmpty($_POST["description"])) {
            $this->error["descripcion_error"] = "El campo de la descripción es requerido.";
        }

        //                si la ingredientes esta vacio
        if (Validators::IsEmpty($_POST["ingredients"])) {
            $this->error["ingredientes_error"] = "El campo de la ingredientes es requerido.";
        }
        if (Validators::IsEmpty($_POST["category"])) {
            $this->error["categoria_error"] = "El campo de la categoria es requerido.";
        }

        return count($this->error) == 0;
    }

}//    final de la clase
