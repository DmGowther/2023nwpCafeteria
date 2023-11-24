<?php
namespace Controllers\Electronica;

use Controllers\PrivateController;
use Dao\Electronica\Electronica as proElectronicaDao;
use Utilities\Site;
use Utilities\Validators;
use Views\Renderer;

class ElectronicaForm extends PrivateController{

    private $mode = "INS";
    private $listUrl = "index.php?page=Electronica_ElectronicaList";
    private $viewData = [];
    private $error = [];
    private $modes = [
        "INS" => "Creando un nuevo producto de electronica",
        "UPD" => "Editando el producto %s (%s)",
        "DEL" => "Eliminando el producto %s (%s)",
        "DSP" => "Detalle del producto %s (%s)"
    ];

    private $proElectronica = [
        "id_producto" => -1,
        "nombre" => "",
        "tipo" => "",
        "precio" => "0.00",
        "marca" => "",
        "fecha_lanzamiento" => ""
    ];

    public function run(): void
    {
        $this->init();
        if ($this->isPostBack()) {
            if ($this->validateFormData()) {
                $this->proElectronica["nombre"] = $_POST["nombre"];
                $this->proElectronica["tipo"] = $_POST["tipo"];
                $this->proElectronica["precio"] = $_POST["precio"];
                $this->proElectronica["marca"] = $_POST["marca"];
                $this->proElectronica["fecha_lanzamiento"] = $_POST["fecha_lanzamiento"];
                $this->processAction();
            }
        }
        $this->prepareViewData();
        Site::addLink('public/css/electronicaForm.css');
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
                        $this->proElectronica = proElectronicaDao::obtenerProElectronicaPorId(intval($_GET["id"]));
                    }
                }
            } else {
                $this->handleError("Error inesperado, no se encuentra la accion solicitada.");
            }
        } else {
            $this->handleError("Error, el programa fallo. Intente de nuevo.");
        }
    }

    private function processAction()
    {
        switch ($this->mode) {
            case 'INS':
                if (proElectronicaDao::crearProElectronica(
                    $this->proElectronica["nombre"],
                    $this->proElectronica["tipo"],
                    $this->proElectronica["precio"],
                    $this->proElectronica["marca"],
                    $this->proElectronica["fecha_lanzamiento"]
                )) {
                    Site::redirectToWithMsg($this->listUrl, "Producto de electronica agregado al stock con exito.");
                }
                break;
            case 'UPD':
                if (proElectronicaDao::actualizarProElectronica(
                    $this->proElectronica["id_producto"],
                    $this->proElectronica["nombre"],
                    $this->proElectronica["tipo"],
                    $this->proElectronica["precio"],
                    $this->proElectronica["marca"],
                    $this->proElectronica["fecha_lanzamiento"]
                )) {
                    Site::redirectToWithMsg($this->listUrl, "Producto de electronica actualizado con exito.");
                }
                break;
            case 'DEL':
                if (proElectronicaDao::deleteProElectronica(
                    $this->proElectronica["id_producto"]
                )) {
                    Site::redirectToWithMsg($this->listUrl, "Producto de electronica eleminado con exito.");
                }
                break;
        }
    }

    private function prepareViewData()
    {
        $this->viewData["mode"] = $this->mode;
        $this->viewData["electronica"] = $this->proElectronica;
        if ($this->mode == "INS") {
            $this->viewData["modedsc"] = $this->modes[$this->mode];
        } else {
            $this->viewData["modedsc"] = sprintf(
                $this->modes[$this->mode],
                $this->proElectronica["nombre"],
                $this->proElectronica["id_producto"]
            );
        }

//        añadir errores al form input
        foreach ($this->error as $key => $error) {
            $this->viewData["electronica"][$key] = $error;
        }
//        configuramos estado de inputs dependiendo del modo
        $this->viewData["readonly"] = in_array($this->mode, ["DSP", "DEL"]) ? 'readonly' : '';
        $this->viewData["showConfirm"] = $this->mode !== "DSP";
    }

    private function render()
    {
        Renderer::render("electronica/formElectronica", $this->viewData);
    }

//    manejador de errores, con el que se redirige a una pagina y se le da un mensaje
    private function handleError($errMsg)
    {
        Site::redirectToWithMsg($this->listUrl, $errMsg);
    }


    private function validateFormData()
    {
//        si el nombre esta vacio
        if (Validators::IsEmpty($_POST["nombre"])) {
            $this->error["nombre_error"] = "El campo de nombre es requerido.";
        }
//                si el tipo esta vacio
        if (Validators::IsEmpty($_POST["tipo"])) {
            $this->error["tipo_error"] = "El campo del tipo es requerido.";
        }
//                si el precio esta vacio
        if (Validators::IsEmpty($_POST["precio"])) {
            $this->error["precio_error"] = "El campo del precio es requerido.";
        }
//                        si la marca esta vacio
        if (Validators::IsEmpty($_POST["marca"])) {
            $this->error["marca_error"] = "El campo de la marca es requerido.";
        }
//                si la fecha esta vacio
        if (Validators::IsEmpty($_POST["fecha_lanzamiento"])) {
            $this->error["fecha_error"] = "El campo de la fecha es requerido.";
        }

        return count($this->error) == 0;
    }

}//FINAL DE LA CLASE

