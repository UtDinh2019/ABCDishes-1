<?php
  $nav_selected = "SCANNER";
  $left_buttons = "NO";
  $left_selected = "RELEASES";

  include("./nav.php");

  require 'db_configuration.php';

  $queryInReview = "SELECT Names FROM dishes where status = 'In Review'";
  $queryProposed = "SELECT Names FROM dishes where status = 'Proposed'";
  $queryApproved = "SELECT Names FROM dishes where status = 'Approved'";


  $GLOBALS['dataInReview'] = mysqli_query($db, $queryInReview);
  $GLOBALS['dataProposed'] = mysqli_query($db, $queryProposed);
  $GLOBALS['dataApproved'] = mysqli_query($db, $queryApproved);



  
 ?>

 <div class="right-content">
    <div class="container">

      <h3 style = "color: #01B0F1;">Summary</h3>
      

      <table>
 <tr>
  <th>Name</th>
  <th>Favorite Color</th>
 </tr>
 <tr>
  <td>Bob</td>
  <td>Yellow</td>
 </tr>
 <tr>
  <td>Michelle</td>
  <td>Purple</td>
 </tr>
</table>


    </div>
</div>

<?php include("./footer.php"); ?>
