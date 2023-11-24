<?php

namespace Dao\Roles;

use Dao\Table;

class Roles extends Table
{
    public static function getAllRoles()
    {
        $sqlstr = "SELECT rolescod, rolesdsc, rolesest FROM roles";
        $params = [];
        $registros = self::obtenerRegistros($sqlstr, $params);
        return $registros;
    }

    public static function getRoleById($rolescod)
    {
        $sqlstr = "SELECT rolescod, rolesdsc, rolesest FROM roles WHERE rolescod = :rolescod";
        $params = ["rolescod" => $rolescod];
        return self::obtenerUnRegistro($sqlstr, $params);
    }

    public static function createNewRole($rolescod, $rolesdsc, $rolesest)
    {
        $sqlstr = "INSERT INTO roles (rolescod, rolesdsc, rolesest) VALUES (:rolescod, :rolesdsc, :rolesest)";
        $params = [
            "rolescod" => $rolescod,
            "rolesdsc" => $rolesdsc,
            "rolesest" => $rolesest
        ];
        return self::executeNonQuery($sqlstr, $params);
    }

    public static function updateRole($rolescod, $rolesdsc, $rolesest)
    {
        $sqlstr = "UPDATE roles SET rolesdsc = :rolesdsc, rolesest = :rolesest WHERE rolescod = :rolescod";
        $params = [
            "rolescod" => $rolescod,
            "rolesdsc" => $rolesdsc,
            "rolesest" => $rolesest
        ];
        return self::executeNonQuery($sqlstr, $params);
    }

    public static function deleteRole($rolescod)
    {
        $sqlstr = "DELETE FROM roles WHERE rolescod = :rolescod";
        $params = ["rolescod" => $rolescod];
        return self::executeNonQuery($sqlstr, $params);
    }
}

?>