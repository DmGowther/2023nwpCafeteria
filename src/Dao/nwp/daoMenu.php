<?php
namespace Dao\nwp;
use Dao\Table;

class daoMenu extends Table{

    public static function selectAllProducts(){
        $sqlstr = "select * from products;";
        return self::obtenerRegistros($sqlstr, []);
    }

    public static function selectProductById($id){
        $params = [
            "id" => $id
        ];
        $sqlstr = "SELECT * FROM products WHERE products.idProducts =:id;";
        return self::obtenerUnRegistro($sqlstr,$params);
    }

    public static function insertNewProduct($name, $price, $image, $description, $ingredients, $category){
        $params = [
            "name" => $name,
            "price" => $price,
            "image"=> $image,
            "description"=> $description,
            "ingredients"=> $ingredients,
            "category"=> $category
        ];

        $sqlsrt = "insert into products (name, price, image, description, ingredients, category) VALUES(:name, :price, :image, :description, :ingredients, :category);";
        return self::executeNonQuery($sqlsrt, $params);
    }

    public static function updateProduct($idProducts, $name, $price, $image, $description, $ingredients, $category){
        $params = [
            "idProducts" => $idProducts,
            "name" => $name,
            "price" => $price,
            "image" => $image,
            "description" => $description,
            "ingredients" => $ingredients,
            "category" => $category
        ];
        $sqlsrt = "UPDATE products SET name=  :name, price= :price, image= :image, description= :description, ingredients= :ingredients, category= :category WHERE idProducts= :idProducts";
        return self::executeNonQuery($sqlsrt, $params);

    }

    public static function deleteProduct($id){
        $params = [
            "idProducts" => $id
        ];
        $sqlsrt = "DELETE FROM products WHERE idProducts=:id;";
        return self::executeNonQuery($sqlsrt, $params);
    }
}