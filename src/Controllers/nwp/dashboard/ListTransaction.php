<?php
namespace Controllers\nwp\dashboard;

use Controllers\PrivateController;
use Dao\nwp\daoMenu;
use Dao\nwp\daoOrders;
use Utilities\Security;
use Utilities\Site;
use Views\Renderer;

class ListTransaction extends PrivateController{
    public function run(): void
    {
        $userID = Security::getUserId();
        $dataView =[];
        $dataView["transations"] = daoOrders::selectTransactions($userID);
        $dataView["canAddCart"] = \Utilities\Security::isLogged();

        Site::addLink('public/nwp/css/table.css');
        Renderer::render('nwp/dashboard/listTransactionU', $dataView,'nwp/layoutNwp.view.tpl' );
    }
}
