<?php 
require_once 'conexion.php';
    $data=new Conexion();
    $conexion=$data->conect();
    $strquery = "SELECT * FROM reportes";
    $result = $Conexion->prepare($strquery);
    $result->execute();
    $data = $result->fetchAll(PDO::FETCH_ASSOC);

    var_dump($data);
?>