<?php
require_once('conexion.php');

class Usuario extends Conexion
{
    function crearUsuario($usu_documento,$usu_nombres,$usu_apellidos,$usu_correo,$usu_placabici,$usu_UID){
      $this->query("INSERT INTO usuarios_bici VALUES ('$usu_documento','$usu_nombres','$usu_apellidos','$usu_correo','$usu_placabici','$usu_UID')");
    }
    function editarUsuario($usu_documento,$usu_nombres,$usu_apellidos,$usu_correo,$usu_placabici,$usu_UID){
      $this->query("UPDATE usuarios_bici SET usu_nombres = '$usu_nombres',usu_apellidos = '$usu_apellidos',usu_correo = '$usu_correo',usu_placabici = '$usu_placabici',usu_UID = '$usu_UID'  WHERE usu_documento = '$usu_documento'");
    }
    function buscarUsuario($usu_documento){
          $sql = "SELECT * FROM usuarios_bici WHERE usu_documento = '$usu_documento'";
                  return $this->query($sql);
    }
    function verUsuarios(){
          $sql = "SELECT * FROM usuarios_bici";
                  return $this->query($sql);
    }
}
?>
