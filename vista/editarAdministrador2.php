<?php

require_once('../controlador/administrador.php');

$adm_user = new Administrador;

 $documento = $_GET["id"];
 $nombres = $_POST["nombres"];
 $apellidos = $_POST["apellidos"];
 $correo = $_POST["correo"];
 $celular = $_POST["celular"];
 $usuario = $_POST["usuario"];
 $password = $_POST["pwd"];

 $adm_user->editarAdministrador($documento,$nombres,$apellidos,$correo,$celular,$usuario,$password);
 echo '<script type="text/javascript">window.location="administradores.php";</script>';
 ?>
