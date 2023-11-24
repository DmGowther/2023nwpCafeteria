<?php
namespace Dao\Productos;

use Dao\Table;

class Categoria extends Table{

    public static function obtenerCategorias(){
        $sqlstr = "SELECT * FROM categorias;";
        return self::obtenerRegistros($sqlstr, []);
    }

    public static function obtenerCategoriaPorId($id){
        $params = [
            "id" => $id
        ];
        $sqlstr = "SELECT * FROM categorias WHERE id=:id;";
        return self::obtenerUnRegistro($sqlstr,$params);
    }

    public static function crearCategoria($name, $status){
        $params = [
            "name" => $name,
            "status" => $status
        ];
        $sqlsrt = "INSERT INTO categorias (name, status, create_time) VALUES(:name, :status, NOW());";
        return self::executeNonQuery($sqlsrt, $params);
    }

    public static function actualizarCategoria($id, $name, $status){
        $params = [
            "name" => $name,
            "status" => $status,
            "id" => $id
        ];
        $sqlsrt = "UPDATE categorias SET name=:name, status=:status WHERE id=:id;";
        return self::executeNonQuery($sqlsrt, $params);
    }

    public static function deleteCategoria($id){
        $params = [
            "id" => $id
        ];
        $sqlsrt = "DELETE FROM categorias WHERE id=:id;";
        return self::executeNonQuery($sqlsrt, $params);
    }
}