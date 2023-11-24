<?php

namespace Dao\Users;

use Dao\Table;

class Usuarios extends Table
{
    public static function getAllUsers()
    {
        $sqlstr = "SELECT usercod, useremail, username, userest, usertipo FROM usuario";
        $params = [];
        $registros = self::obtenerRegistros($sqlstr, $params);
        return $registros;
    }

    public static function getUserById($usercod)
    {
        $sqlstr = "SELECT usercod, useremail, username, userest, usertipo FROM usuario WHERE usercod = :usercod";
        $params = ["usercod" => $usercod];
        return self::obtenerUnRegistro($sqlstr, $params);
    }

    public static function createNewUser($useremail, $username, $userpswd, $usertipo)
    {
        $sqlstr = "INSERT INTO usuario (useremail, username, userpswd, usertipo) VALUES (:useremail, :username, :userpswd, :usertipo)";
        $params = [
            "useremail" => $useremail,
            "username" => $username,
            "userpswd" => $userpswd,
            "usertipo" => $usertipo
        ];
        return self::executeNonQuery($sqlstr, $params);
    }

    public static function updateUser($usercod, $useremail, $username, $userpswd, $usertipo)
    {
        $sqlstr = "UPDATE usuario SET useremail = :useremail, username = :username, userpswd = :userpswd, usertipo = :usertipo WHERE usercod = :usercod";
        $params = [
            "usercod" => $usercod,
            "useremail" => $useremail,
            "username" => $username,
            "userpswd" => $userpswd,
            "usertipo" => $usertipo
        ];
        return self::executeNonQuery($sqlstr, $params);
    }

    public static function deleteUser($usercod)
    {
        $sqlstr = "DELETE FROM usuario WHERE usercod = :usercod";
        $params = ["usercod" => $usercod];
        return self::executeNonQuery($sqlstr, $params);
    }
}

?>