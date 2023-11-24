<?php

namespace Dao\Funciones;

use Dao\Table;

class Funciones extends Table
{
    public static function getAllFunciones()
    {
        $sqlstr = "SELECT fncod, fndsc, fnest, fntyp FROM funciones";
        $params = [];
        $registros = self::obtenerRegistros($sqlstr, $params);
        return $registros;
    }

    public static function getFuncionById($fncod)
    {
        $sqlstr = "SELECT fncod, fndsc, fnest, fntyp FROM funciones WHERE fncod = :fncod";
        $params = ["fncod" => $fncod];
        return self::obtenerUnRegistro($sqlstr, $params);
    }

    public static function createNewFuncion($fncod, $fndsc, $fnest, $fntyp)
    {
        $sqlstr = "INSERT INTO funciones (fncod, fndsc, fnest, fntyp) VALUES (:fncod, :fndsc, :fnest, :fntyp)";
        $params = [
            "fncod"=>$fncod,
            "fntyp"=>$fntyp,
            "fndsc" => $fndsc,
            "fnest" => $fnest
        ];
        return self::executeNonQuery($sqlstr, $params);
    }

    public static function updateFuncion($fncod, $fndsc, $fnest, $fntyp)
    {
        $sqlstr = "UPDATE funciones SET fndsc = :fndsc, fnest = :fnest, fntyp = :fntyp WHERE fncod = :fncod";
        $params = [
            "fncod" => $fncod,
            "fndsc" => $fndsc,
            "fnest" => $fnest,
            "fntyp" => $fntyp
        ];
        return self::executeNonQuery($sqlstr, $params);
    }

    public static function deleteFuncion($fncod)
    {
        $sqlstr = "DELETE FROM funciones WHERE fncod = :fncod";
        $params = ["fncod" => $fncod];
        return self::executeNonQuery($sqlstr, $params);
    }
}

?>