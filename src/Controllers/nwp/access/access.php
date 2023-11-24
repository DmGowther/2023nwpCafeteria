<?php

namespace Controllers\nwp\access;

use Controllers\PublicController;
use Utilities\Site;
use \Utilities\Validators;
use Views\Renderer;

class access extends PublicController
{
    //        variables de almacenamiento de datos
    private $txtEmail = "";
    private $modeAccess="";
    private $txtPswd = "";
    private $txtUserName = "";
    private $errorEmail = "";
    private $errorPswd = "";
    private $errorName = "";
    private $generalError = "";
    private $hasErrors = false;

    public function run(): void
    {
        $dataView = [];

        if ($this->isPostBack()) {
            $modeAccess = $_GET['modeAccess'];
            if ($modeAccess === 'signin') {
                $this->txtEmail = $_POST["txtEmail"];
                $this->txtPswd = $_POST["txtPswd"];

                if (!Validators::IsValidEmail($this->txtEmail)) {
                    $this->errorEmail = "¡Correo no tiene el formato adecuado!";
                    $this->hasError = true;
                }
                if (Validators::IsEmpty($this->txtPswd)) {
                    $this->errorPswd = "¡Debe ingresar una contraseña!";
                    $this->hasError = true;
                }
                if (!$this->hasError) {
                    if ($dbUser = \Dao\Security\Security::getUsuarioByEmail($this->txtEmail)) {
                        if ($dbUser["userest"] != \Dao\Security\Estados::ACTIVO) {
                            $this->generalError = "¡Credenciales son incorrectas!";
                            $this->hasError = true;
                            error_log(
                                sprintf(
                                    "ERROR: %d %s tiene cuenta con estado %s",
                                    $dbUser["usercod"],
                                    $dbUser["useremail"],
                                    $dbUser["userest"]
                                )
                            );
                        }
                        if (!\Dao\Security\Security::verifyPassword($this->txtPswd, $dbUser["userpswd"])) {
                            $this->generalError = "¡Credenciales son incorrectas!";
                            $this->hasError = true;
                            error_log(
                                sprintf(
                                    "ERROR: %d %s contraseña incorrecta",
                                    $dbUser["usercod"],
                                    $dbUser["useremail"]
                                )
                            );
                            // Aqui se debe establecer acciones segun la politica de la institucion.
                        }
                        if (!$this->hasError) {
                            \Utilities\Security::login(
                                $dbUser["usercod"],
                                $dbUser["username"],
                                $dbUser["useremail"]
                            );
                            if (\Utilities\Context::getContextByKey("redirto") !== "") {
                                \Utilities\Site::redirectTo(
                                    \Utilities\Context::getContextByKey("redirto")
                                );
                            } else {
                                \Utilities\Site::redirectTo("index.php?page=Electronica_ElectronicaList");
                            }
                        }
                    } else {
                        error_log(
                            sprintf(
                                "ERROR: %s trato de ingresar",
                                $this->txtEmail
                            )
                        );
                        $this->generalError = "¡Credenciales son incorrectas!";
                    }
                }
            } else if ($modeAccess === 'singup') {
                $this->txtUserName = $_POST["txtUserName"];
                $this->txtEmail = $_POST["txtEmail"];
                $this->txtPswd = $_POST["txtPswd"];
                if (!(Validators::IsValidEmail($this->txtEmail))) {
                    $this->errorEmail = "El correo no tiene el formato adecuado";
                    $this->hasErrors = true;
                }
                if (!Validators::IsValidPassword($this->txtPswd)) {
                    $this->errorPswd = "La contraseña debe tener al menos 8 caracteres una mayúscula, un número y un caracter especial.";
                    $this->hasErrors = true;
                }
                if (Validators::IsEmpty($this->txtUserName)) {
                    $this->errorName = "El nombre de usuario es obligatorio, intente de nuevo.";
                    $this->hasErrors = true;
                }
                if (!$this->hasErrors) {
                    try {
                        if (\Dao\Security\Security::newUsuario($this->txtUserName, $this->txtEmail, $this->txtPswd)) {
                            \Utilities\Site::redirectToWithMsg("index.php?page=nwp_access_access&modeAccess=singin", "¡Usuario Registrado Satisfactoriamente!");
                            $this->modeAccess = "singin";
                        }
                    } catch (Error $ex) {
                        die($ex);
                    }
                }
            } else {
                $this->generalError = "El modo seleccionado no existe, intente de nuevo.";
                $this->hasErrors = true;
            }

        } //FINAL DE POSTBACK
        Site::addLink('public/nwp/css/access.css');
        Site::addEndScript('public/nwp/js/access.js');
        Renderer::render('nwp/access/access', $dataView, 'nwp/access/layout.view.tpl');

    }
}
