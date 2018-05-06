<?php
require_once('conexion.php');

class Parqueadero extends Conexion
{
    function crearParqueadero($fk_ced_id){
      $this->query("INSERT INTO parqueaderos VALUES ('','$fk_ced_id')");
    }
    function editarParqueadero($par_id,$fk_ced_id){
      $this->query("UPDATE parqueaderos SET fk_ced_id = '$fk_ced_id' WHERE par_id = '$par_id'");
    }
    function buscarParqueadero($par_id){
      $sql = "SELECT * FROM parqueaderos WHERE par_id = '$par_id'";
              return $this->query($sql);
    }
    function verParqueaderos(){
      $sql = "SELECT * FROM parqueaderos";
              return $this->query($sql);
    }
}
?>
