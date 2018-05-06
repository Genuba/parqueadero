<?php

require_once('../controlador/usuario.php');

$usu_user = new Usuario;

 $documento = $_GET["id"];
 $nombres = $_POST["usu_nombres"];
 $apellidos = $_POST["usu_apellidos"];
 $correo = $_POST["usu_correo"];
 $placabici = $_POST["usu_placabici"];
 $UID = $_POST["usu_UID"];

 $usu_user->editarUsuario($documento,$nombres,$apellidos,$correo,$placabici,$UID);
 echo '<script type="text/javascript">window.location="usuarios.php";</script>';
 ?>
