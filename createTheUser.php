<?php
 $nav_selected = "ADMIN";
  $left_buttons = "NO";
  $left_selected = "";
  include("./nav.php");
  include("./footer.php");  
  include_once 'db_configuration.php';


    // Initialize variables        
	$first_name = mysqli_real_escape_string($db,$_POST['first_name']);
    $last_name = mysqli_real_escape_string($db,$_POST['last_name']);
    $email = mysqli_real_escape_string($db,$_POST['email']);
    $role = mysqli_real_escape_string($db,$_POST['role']);
   
    $validate = true;    
    

    $sql = "INSERT INTO users(first_name, last_name, email, role)

    VALUES ('$first_name','$last_name','$email','$role')
    ";

    mysqli_query($db, $sql);
    header('location: list_users.php?createUser=Success');
    ?>
	<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">



   