<?php
require_once('conexion.php');

class Historico extends Conexion
{
    function verHistoricos(){
          $sql = "SELECT * FROM historico";
                  return $this->query($sql);
    }
}
?>
