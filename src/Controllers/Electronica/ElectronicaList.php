<?php
namespace Controllers\Electronica;

use Controllers\PrivateController;
use Dao\Electronica\Electronica;
use Utilities\Site;
use Views\Renderer;

class ElectronicaList extends PrivateController{
    public function run(): void
    {

        $dataView =[];
        $dataView["electronica"] = Electronica::obtenerProElectronica();
        $dataView["canView"] = $this->isFeatureAutorized("electrolist-dsp");
        $dataView["canEdit"] = $this->isFeatureAutorized("electrolist-upd");
        $dataView["canInsert"] = $this->isFeatureAutorized("electrolist-ins");
        $dataView["canDelete"] = $this->isFeatureAutorized("electrolist-del");
        $dataView["canActions"] = $this->isFeatureAutorized("electrolist-actions");
        Site::addLink('public/css/electronicaList.css');

        Renderer::render('electronica/listaElectronica', $dataView);
    }
}