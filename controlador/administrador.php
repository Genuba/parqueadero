<?php
require_once('conexion.php');

class Administrador extends Conexion
{
  function login($usuario,$password){
        $sql = "SELECT adm_documento FROM administradores WHERE adm_usuario = '$usuario' AND adm_password = '$password'";
        $stmt = $this->query($sql);
        session_start();
        return $stmt->fetch();
    }
    function crearAdministrador($adm_documento,$adm_nombres,$adm_apellidos,$adm_correo,$adm_celular,$adm_usuario,$adm_password){
      $this->query("INSERT INTO administradores VALUES ('$adm_documento','$adm_nombres','$adm_apellidos','$adm_correo','$adm_celular','$adm_usuario','$adm_password')");
    }
    function editarAdministrador($adm_documento,$adm_nombres,$adm_apellidos,$adm_correo,$adm_celular,$adm_usuario,$adm_password){
      $this->query("UPDATE administradores SET adm_nombres = '$adm_nombres', adm_apellidos = '$adm_apellidos', adm_correo = '$adm_correo', adm_celular = '$adm_celular', adm_usuario = '$adm_usuario',adm_password = '$adm_password' WHERE adm_documento = '$adm_documento'");
    }
    function buscarAdministrador($adm_documento){
          $sql = "SELECT * FROM administradores WHERE adm_documento = $adm_documento";
                  return $this->query($sql);
    }
    function verAdministradores(){
          $sql = "SELECT * FROM administradores";
                  return $this->query($sql);
    }
}
?>
