<?php
namespace Dao\Carts; 
use Dao\Table; 
class Carts extends Table{
      private $idCart;
  private $userId;
  private $name;
  private $price;
  private $quantity;
  private $sessionId;

 
  public static function getCart(){
	 $sqlstr= "SELECT * FROM cart";
        $params = [];
        $registros = self::obtenerRegistros($sqlstr, $params);
        return $registros;
	}

  public static function insertCart($idCart, $userId, $name, $price, $quantity, $sessionId){
	
    $sqlstr = "INSERT INTO cart (idCart, userId, name, price, quantity, sessionId) VALUES (:idCart , :userId , :name , :price , :quantity , :sessionId)";
    $params = ['idCart' => $idCart, 'userId' => $userId, 'name' => $name, 'price' => $price, 'quantity' => $quantity, 'sessionId' => $sessionId];
    $registros = self::executeNonQuery($sqlstr, $params);
    return $registros;

	}

  public static function updateCart($idCart, $userId, $name, $price, $quantity, $sessionId){
	
        $sqlstr = "UPDATE cart SET idCart = :idCart, userId = :userId, name = :name, price = :price, quantity = :quantity, sessionId = :sessionId WHERE idCart = :idCart";
        $params = ['idCart' => $idCart, 'userId' => $userId, 'name' => $name, 'price' => $price, 'quantity' => $quantity, 'sessionId' => $sessionId];
        $registros = self::executeNonQuery($sqlstr, $params);
        return $registros;
    
	}

 public static function obtenerPorId($id){
	 $sqlstr= "SELECT * FROM cart WHERE idCart = :id";
        $params = ['id'=>$id];
        $registros = self::obtenerUnRegistro($sqlstr, $params);
        return $registros;
	}

 public static function deleteCart($id){
	$sqlstr= "DELETE  FROM cart WHERE idCart = :id";
        $params = ['id'=>$id];
        $registros = self::executeNonQuery($sqlstr, $params);
        return $registros;
	}
    
}