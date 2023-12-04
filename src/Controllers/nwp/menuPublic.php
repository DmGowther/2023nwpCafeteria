<?php
namespace Controllers\nwp;

use Controllers\PublicController;
use Dao\nwp\daoMenu;
use Utilities\Site;
use Views\Renderer;

class menuPublic extends PublicController
{
    public function run(): void
    {
        $dataView =[];
        $dataView["menuPublic"] = daoMenu::selectAllProducts();
        Site::addEndScript('public/nwp/js/cards.js');
        Renderer::render('nwp/menuPublic', $dataView,'nwp/layoutNwp.view.tpl');
    }
}