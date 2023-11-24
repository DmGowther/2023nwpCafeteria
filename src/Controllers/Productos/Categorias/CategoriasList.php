<?php
namespace Controllers\Productos\Categorias;

use _HumbugBox7eb78fbcc73e\___PHPSTORM_HELPERS\this;
use Controllers\PrivateController;
use Dao\Productos\Categoria;
use Utilities\Site;
use Views\Renderer;

class CategoriasList extends PrivateController{
    public function run(): void
    {
        $dataView =[];
        $dataView["categorias"] = Categoria::obtenerCategorias();
        $dataView["canView"] = $this->isFeatureAutorized("categorialist-dsp");
        $dataView["canEdit"] = $this->isFeatureAutorized("categorialist-upd");
        $dataView["canInsert"] = $this->isFeatureAutorized("categorialist-ins");
        $dataView["canDelete"] = $this->isFeatureAutorized("categorialist-del");
        $dataView["showStatus"] = $this->isFeatureAutorized("categorialist-showStatus");

        Site::addLink('public/css/categoriasList.css');

        Renderer::render('productos/categorias/lista', $dataView);
    }
}
