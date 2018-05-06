<?php
require_once('conexion.php');

class Sede extends Conexion
{
    function verSedes(){
          $sql = "SELECT * FROM sede";
                  return $this->query($sql);
    }
}
?>
