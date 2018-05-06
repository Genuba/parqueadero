<?php
require_once('../controlador/administrador.php');

$user = new Administrador;

$usuario = $_POST["usuario"];
$password = $_POST["pwd"];

$row = $user->login($usuario,$password);
$_SESSION["documento"] = $row[0];

 if ($row[0] != null) {
     echo '<script type="text/javascript">window.location="homepage.php?'.$_SESSION["documento"].'";</script>';
} else {
      echo '<script type="text/javascript">window.location="index.html?fallido";</script>';
}

 ?>
