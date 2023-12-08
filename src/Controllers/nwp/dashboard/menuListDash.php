<?php
namespace Controllers\nwp\dashboard;

use Controllers\PrivateController;
use Dao\nwp\daoMenu;
use Utilities\Site;
use Views\Renderer;

class menuListDash extends PrivateController{
    public function run(): void
    {
        $dataView =[];
        $dataView["menuListDashboard"] = daoMenu::selectAllProducts();
        $dataView["canView"] = $this->isFeatureAutorized("menuListDash-dsp");
        $dataView["canActions"] = $this->isFeatureAutorized("menuListDash-act");
        $dataView["canAddCart"] = \Utilities\Security::isLogged();

        Site::addLink('public/nwp/css/table.css');
        Renderer::render('nwp/dashboard/menuListDash', $dataView,'nwp/layoutNwp.view.tpl' );
    }
}
