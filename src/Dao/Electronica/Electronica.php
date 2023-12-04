<?php
namespace Dao\Electronica;
use Dao\Table;

class Electronica extends Table{

    public static function obtenerProElectronica(){
        $sqlstr = "SELECT * FROM productoselectronica;";
        return self::obtenerRegistros($sqlstr, []);
    }

    public static function obtenerProElectronicaPorId($id){
        $params = [
            "id" => $id
        ];
        $sqlstr = "SELECT * FROM productoselectronica WHERE id_producto=:id;";
        return self::obtenerUnRegistro($sqlstr,$params);
    }

    public static function crearProElectronica($nombre, $tipo, $precio, $marca, $fecha_lanzamiento){
        $params = [
            "nombre" => $nombre,
            "tipo" => $tipo,
            "precio"=>$precio,
            "marca"=>$marca,
            "fecha_lanzamiento"=>$fecha_lanzamiento
        ];
        $sqlsrt = "insert into productoselectronica (nombre, tipo, precio, marca, fecha_lanzamiento) VALUES(:nombre, :tipo, :precio, :marca, :fecha_lanzamiento);";
        return self::executeNonQuery($sqlsrt, $params);
    }

    public static function actualizarProElectronica($id,$nombre, $tipo, $precio, $marca, $fecha_lanzamiento){
        $params = [
            "nombre" => $nombre,
            "tipo" => $tipo,
            "precio"=>$precio,
            "marca"=>$marca,
            "fecha_lanzamiento"=>$fecha_lanzamiento,
            "id" => $id
        ];
        $sqlsrt = "UPDATE productoselectronica SET nombre=:nombre, tipo=:tipo, precio=:precio, marca=:marca, fecha_lanzamiento=:fecha_lanzamiento WHERE id_producto=:id;";
        return self::executeNonQuery($sqlsrt, $params);
    }

    public static function deleteProElectronica($id){
        $params = [
            "id" => $id
        ];
        $sqlsrt = "DELETE FROM productoselectronica WHERE id_producto=:id;";
        return self::executeNonQuery($sqlsrt, $params);
    }

} // Final de la clase