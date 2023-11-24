<?php

namespace Controllers\Productos\Categorias;

use Controllers\PrivateController;
use Dao\Productos\Categoria as categoriaDao;
use Utilities\Site;
use Utilities\Validators;
use Views\Renderer;

class CategoriaForm extends PrivateController
{
    private $mode = "INS";
    private $listUrl = "index.php?page=Productos_Categorias_CategoriasList";
    private $viewData = [];
    private $error = [];
    private $modes = [
        "INS" => "Creando nueva categoria",
        "UPD" => "Editando %s (%s)",
        "DEL" => "Eliminando %s (%s)",
        "DSP" => "Detalle de %s (%s)"
    ];

    private $categoria = [
        "id" => -1,
        "name" => "",
        "status" => "ACT",
        "create_time" => ""
    ];

    public function run(): void
    {
        $this->init();
        if ($this->isPostBack()) {
            if ($this->validateFormData()) {
                    $this->categoria["name"] = $_POST["name"];
                if ($this->mode !== "DEL") {
                    $this->categoria["status"] = $_POST["status"];
                }
                    $this->processAction();
            }
        }
        $this->prepareViewData();
        Site::addLink('public/css/categoriasForm.css');
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
                        $this->categoria = categoriaDao::obtenerCategoriaPorId(intval($_GET["id"]));
                    }
                }
            } else {
                $this->handleError("Upps, el programa no encuentra el modo solicitado. Intente de nuevo.");
            }
        } else {
            $this->handleError("Upps, el programa fallo. Intente de nuevo.");
        }
    }

    private function processAction()
    {
        switch ($this->mode) {
            case 'INS':
                if (categoriaDao::crearCategoria(
                    $this->categoria["name"],
                    $this->categoria["status"]
                )) {
                    Site::redirectToWithMsg($this->listUrl, "Categoria creada exitosamente");
                }
                break;
            case 'UPD':
                if (categoriaDao::actualizarCategoria(
                    $this->categoria["id"],
                    $this->categoria["name"],
                    $this->categoria["status"]
                )) {
                    Site::redirectToWithMsg($this->listUrl, "Categoria actualizada exitosamente");
                }
                break;
            case 'DEL':
                if (categoriaDao::deleteCategoria(
                    $this->categoria["id"]
                )) {
                    Site::redirectToWithMsg($this->listUrl, "Categoria eliminada exitosamente");
                }
                break;
        }
    }

    private function prepareViewData()
    {
        $this->viewData["mode"] = $this->mode;
        $this->viewData["categoria"] = $this->categoria;
        if ($this->mode == "INS") {
            $this->viewData["modedsc"] = $this->modes[$this->mode];
        } else {
            $this->viewData["modedsc"] = sprintf(
                $this->modes[$this->mode],
                $this->categoria["name"],
                $this->categoria["id"]
            );
        }
//        configurar categoria seleccionada
        $this->viewData["categoria"][$this->categoria["status"] . "_selected"] = 'selected';

//        añadir errores al form input
        foreach ($this->error as $key => $error) {
            $this->viewData["categoria"][$key] = $error;
        }

//        configuramos estado de inputs dependiendo del modo
        $this->viewData["readonly"] = in_array($this->mode, ["DSP", "DEL"]) ? 'readonly' : '';
        $this->viewData["showConfirm"] = $this->mode !== "DSP";
    }

    private function render()
    {
        Renderer::render("productos/categorias/form", $this->viewData);
    }

//    manejador de errores, con el que se redirige a una pagina y se le da un mensaje
    private function handleError($errMsg)
    {
        Site::redirectToWithMsg($this->listUrl, $errMsg);
    }


    private function validateFormData()
    {
//        si el nombre no esta vacio
        if (Validators::IsEmpty($_POST["name"])) {
            $this->error["name_error"] = "El campo es requerido.";
        }
//            Que las opciones seleccionadas sean validas

        if ($this->mode !== "DEL") {
            if (!in_array($_POST["status"], ["INA", "ACT"])) {
                $this->error["status_error"] = "Estado de la categoria invalido.";
            }
        }
        return count($this->error) == 0;
    }
}//FINAL DE LA CLASE
