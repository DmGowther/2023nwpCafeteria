<?php
namespace Controllers\nwp;

use Controllers\PublicController;
use Utilities\Site;
use Views\Renderer;

class contact extends PublicController
{
    public function run(): void
    {
        $dataView =[];
        Site::addLink('public/nwp/css/contact.css');
        Site::addEndScript('public/nwp/js/contact.js');
        $dataView["canAddCart"] = \Utilities\Security::isLogged();
        Renderer::render('nwp/contact', $dataView,'nwp/layoutNwp.view.tpl');
    }
}