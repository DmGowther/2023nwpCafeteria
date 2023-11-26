<?php
namespace Controllers\nwp;

use Controllers\PublicController;
use Utilities\Site;
use Views\Renderer;

class home extends PublicController
{
    public function run(): void
    {
        $dataView =[];
//        Site::addLink('public/nwp/css/contact.css');
//        Site::addEndScript('public/nwp/js/contact.js');
        Renderer::render('nwp/home', $dataView,'nwp/layoutNwp.view.tpl');
    }
}