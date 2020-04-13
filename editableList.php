<?php
include_once 'db_configuration.php';
require 'bin/functions.php';


    

    $value = $_POST['value'];
    $column = $_POST['column'];
    $id = $_POST['id'];
    echo "$value - $column - $id";

    $page="editableList.php";
    verifyLogin($page);
    
    $sql="UPDATE dishes SET $column = '$value' WHERE id = '$id'";
    mysqli_query($db, $sql);
    
    
?>
