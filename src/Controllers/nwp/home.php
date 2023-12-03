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
        Site::addLink('public/nwp/css/home.css');
        Site::addLink('public/nwp/css/testimonial.css');
        Site::addLink('public/nwp/css/faq.css');
        Site::addEndScript('public/nwp/js/home.js');
        Renderer::render('nwp/home', $dataView,'nwp/layoutNwp.view.tpl');
    }
}