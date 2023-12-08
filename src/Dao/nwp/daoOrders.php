<?php
namespace Dao\nwp;
use Dao\Table;
use Utilities\Security;

class daoOrders extends Table{


    public static function createOrder($userID, $total)
    {
        $params = [
            "userId" => $userID,
            "totalAmount" => $total
        ];

        $sqlstr = "INSERT INTO orders (userId, totalAmount) VALUES (:userId, :totalAmount);";
//        return self::executeNonQuery($sqlstr, $params);

        // Execute the query
        self::executeNonQueryB($sqlstr, $params);

        // Return the last inserted ID
        return self::getLastInsertId();
    }

    public static function createOrderDetail($orderID, $productName, $price, $quantity, $subtotal)
    {
        $params = [
            "ordersId" => $orderID,
            "product_name" => $productName,
            "price" => $price,
            "quantity" => $quantity,
            "subtotal" => $subtotal
        ];

        $sqlstr = "INSERT INTO order_details (ordersId, product_name, price, quantity, subtotal) VALUES (:ordersId, :product_name, :price, :quantity, :subtotal);";
        return self::executeNonQueryB($sqlstr, $params);
    }
    public static function selectTransactions($id){

        $params = [
            "id" => $id
        ];
        $sqlstr = "
            SELECT
                o.idOrders AS OrderNumber,
                u.username AS UserName,
                od.quantity AS Quantity,
                od.price AS UnitPrice,
                od.subtotal AS TotalAmount,
                o.createdAt AS OrderDate
            FROM orders o
            JOIN usuario u ON o.userId = u.usercod
            JOIN order_details od ON o.idOrders = od.ordersId
            WHERE o.userId = :id;";

        return self::obtenerRegistros($sqlstr, $params);
    }


}