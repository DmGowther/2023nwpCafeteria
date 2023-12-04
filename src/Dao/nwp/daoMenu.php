<?php
namespace Dao\nwp;
use Dao\Table;

class daoMenu extends Table{

    public static function selectAllProducts(){
        $sqlstr = "SELECT products.idProducts, products.name, products.price, products.image, products.description, products.ingredients,categories.nameCategories AS categoriesName, products.status FROM products INNER JOIN categories ON products.categorieId = categories.idCategories WHERE products.status = 'ACT'; ";
        return self::obtenerRegistros($sqlstr, []);
    }

    public static function selectProductById($id){
        $params = [
            "idProducts" => $id
        ];
        $sqlstr = "SELECT * FROM products WHERE products.status = 'ACT' AND products.idProducts =:id;";
        return self::obtenerUnRegistro($sqlstr,$params);
    }

    public static function insertNewProduct($name, $price, $image, $description, $ingredients, $categorieId){
        $params = [
            "name" => $name,
            "price" => $price,
            "image"=> $image,
            "description"=> $description,
            "ingredients"=> $ingredients,
            "categorieId"=> $categorieId
        ];

        $sqlsrt = "insert into cafeimperialdb.products (name, price, image, description, ingredients, categorieId) VALUES(:name, :price, :image, :description, :ingredients, :categorieId);";
        return self::executeNonQuery($sqlsrt, $params);
    }

    public static function updateProduct($idProducts, $name, $price, $image, $description, $ingredients, $categorieId, $status){
        $params = [
            "name" => $name,
            "price" => $price,
            "image" => $image,
            "description" => $description,
            "ingredients" => $ingredients,
            "categorieId" => $categorieId,
            "status" => $status,
            "idProducts" => $idProducts
        ];
        $sqlsrt = "UPDATE cafeimperialdb.products SET name=:name, price=:price, image=:image, description=:description, ingredients=:ingredients, categorieId=:categorieId, status=:status WHERE idProducts=:idProducts;";
        return self::executeNonQuery($sqlsrt, $params);
    }

    public static function deleteProduct($id){
        $params = [
            "idProducts" => $id
        ];
        $sqlsrt = "DELETE FROM cafeimperialdb.products WHERE idProducts=:id;";
        return self::executeNonQuery($sqlsrt, $params);
    }
}