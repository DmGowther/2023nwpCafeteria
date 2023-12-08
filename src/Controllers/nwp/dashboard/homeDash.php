<?php
namespace Controllers\nwp\dashboard;

use Controllers\PrivateController;
use Utilities\Site;
use Views\Renderer;

class homeDash extends PrivateController
{
    public function run(): void
    {
        $dataView =[];
//        Site::addEndScript('public/nwp/js/hours.js');
        Renderer::render('nwp/dashboard/homeDash', $dataView,'nwp/dashboard/layoutDashboard.view.tpl');
    }
}