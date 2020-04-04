<?php
	
  $nav_selected = "COMPILE";
  $left_buttons = "NO";
  $left_selected = "";

  include("./nav.php");
?>

<?php include("./footer.php"); ?>


<style>#title {text-align: center;color: darkgoldenrod;}</style>

<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">

    
    <div class="container">
    

<form action="compileTheBook.php" method="POST" >
  <input type="text" placeholder="Search Dishes..." name="name"><br>
  <input type="submit" value="Search" name="search" >
  <input type="submit" value="Compile" name="compile" >
</form>
    </div>



