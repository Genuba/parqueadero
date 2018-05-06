<?php

require_once('../controlador/parqueaderos.php');

 $par_obj = new Parqueadero;

 $par_id = $_GET["id"];
 $fk_ced_id = $_POST["fk_ced_id"];

 $par_obj->editarParqueadero($par_id,$fk_ced_id);
 echo '<script type="text/javascript">window.location="parqueaderos.php";</script>';
 ?>
