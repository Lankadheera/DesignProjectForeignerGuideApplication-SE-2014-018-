 <?php
 date_default_timezone_set("Asia/Colombo");
 $m_id=1;
 
include '../common/sessionhandling.php';
include '../common/dbconnection.php';

include '../common/functions.php';
include '../model/itemmodel.php';
include '../model/stockmodel.php';
include '../model/featuremodel.php';

$role_id=$userInfo['role_id'];

$countm= checkModuleRole($m_id, $role_id);

if ($countm==0){ // check user priviledges
   $msg= base64_encode("You dont have permission to access.") ;
   header("Location:../view/login.php?msg=$msg");
   
}


$obitem= new item(); //doesnt call the method here cause it should be called inside the while loop - line 162
$obf= new feature();

$obstock = new stock(); //to create an object
$result=$obstock->viewallstockbalance();



?>


<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>SOS</title>
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" type="text/css"/>
        <link rel="stylesheet" href="../css/style.css" type="text/css"/>
   
          <link href="../css/dataTables.bootstrap4.min.css" rel="stylesheet">
        <link href="../css/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="../css/semantic.min.css" rel="stylesheet">
        <link href="../css/dataTables.semanticui.min.css" rel="stylesheet">
        <link href="../css/buttons.semanticui.min.css" rel="stylesheet">
  
      
    
        <script src="../JQuery/jquery-1.12.4.js"></script>
        <script src="../js/jquery.dataTables.min.js"></script>
        <script src="../js/dataTables.bootstrap4.min.js"></script>

   
        <script src="../js/dataTables.semanticui.min.js"></script>
        <script src="../js/dataTables.buttons.min.js"></script>
        <script src="../js/pdfmake.min.js"></script>
        <script src="../js/vfs_fonts.js"></script>
        <script src="../js/buttons.html5.min.js"></script>
    
        <script src="../js/jszip.min.js"></script>
        <script src="../js/buttons.semanticui.min.js"></script>
    
        <script src="../js/buttons.colVis.min.js"></script>
        <script src="../js/buttons.print.min.js"></script>
    
    <script>
    $(document).ready(function() {
    var table = $('#example').DataTable( {
        lengthChange: false,
        buttons: [ 'copy', 'excel', 'pdf','print','csv','colvis' ]
    } );
 
    table.buttons().container()
        .appendTo( $('div.eight.column:eq(0)', table.table().container()) );
    } );
    
    </script>
    
    
    
    
    </head>
    <body>
        <div id="main">
            <div id="heading">
                <?php include '../common/header.php'; ?>
                <!-- to display name and image beside logout -->
            </div>
            <div id="navi" style="background: #f5f5f5">
                <div class="row">
                    <div class="col-md-4 col-sm-6 paddinga">
                    <img class="style1" src="<?php echo $iname; ?>" />
                    <?php echo $userInfo['role_name']; ?>
                    </div>
                    <div class="col-md-8 col-sm-6" style="text-align: right">
                        <ol class="breadcrumb">
                            <li><a href="../view/dashboard.php">Dashboard</a></li>
                            <li class="active">Stock Module</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                    
                  
                    <div class="col-md-12 col-sm-6">
                        <h3 class="alig">Stock Module</h3>
                    </div>
                </div>
                
                       <div class="row container">
                    <div class="col-md-6">
                        <p> 
                            <a href="../view/addstock.php">
                            <button type="button" class="btn btn-success btn-sm">
                                <i class="glyphicon glyphicon-stats"></i>
                                Add to Stock
                            </button>
                            </a>
                        </p>
                    </div>
                       </div>
                
                <div class="clearfix">&nbsp;</div>
                <div style="text-align: center" class="alert alert-info">
                    <?php
                    if (isset($_GET['msg'])){
                        echo base64_decode($_GET['msg']);
                    }
                    ?>
                    
                </div>
                
                 <div class="clearfix">&nbsp;</div>
                   
                <div class="row container-fluid" style="padding-left: 30px">
                    <div class="col-md-12 col-sm-6">
                        <table class=" ui celled table" id="example">
                            <thead>
                                <tr>
                                    
                                    <th>Item ID</th>
                                    <th>Item Name</th>
                                    <th>Item Category & Brand</th>
                                    <th>Model</th>
                                    <th>Color</th>
                                    <th>Size</th>
                                    <th>Received Quantity</th>
                                    <th>Available Quantity</th>
                                    <th>&nbsp;</th>
                                    
                               
                                </tr>
                            </thead>
                            <tbody>
                                <?php while ($row=$result->fetch(PDO::FETCH_BOTH)){
                                    
                                    $resultitem=$obitem->viewAnItem($row['item_id']);
                                    $rowitem=$resultitem->fetch(PDO::FETCH_BOTH);
                                    
                                    $resultc=$obf->displayAFeature($row['color_id']);
                                    $rowc=$resultc->fetch(PDO::FETCH_BOTH);
                                    
                                    $results=$obf->displayAFeature($row['size_id']);
                                    $rows=$results->fetch(PDO::FETCH_BOTH);
                                
                                    $color_id=$row['color_id'];
                                    $size_id=$row['size_id'];
                                    $item_id=$row['item_id'];
                                    
                                    $resultsq=$obstock->getStockQuantity($item_id, $color_id, $size_id);
                                    $rowsq=$resultsq->fetch(PDO::FETCH_BOTH);
                            ?>
                                <tr>
                                 
                                <td><?php echo $row['item_id']; ?></td>
                                <td><?php echo $rowitem['item_name']; ?></td>
                                <td><?php echo $rowitem['cat_name']." | ".$rowitem['brand_name']; ?></td>
                                <td><?php echo $rowitem['model']; ?></td>
                                <td><?php echo $rowc['f_name']; ?></td>
                                <td><?php echo $rows['f_name']; ?></td>
                                <td><?php echo $rowsq['sq'] ?></td>
                                <td <?php 
                                if ($row['qua']<50){
                                    echo "class='alert alert-danger'";
                                }
                                    ?>
                                     > <?php echo $row['qua']; ?></td>
                                <td><a href="../view/stockdetails.php?item_id=<?php echo $item_id; ?>">Stock Details</a></td>
                                
                                
                                
                            </tr>
                            <?php } ?>
                            </tbody>                           
                        </table>
                  
                 </div>
                </div>
        </div>
            <div id="footer"> <?php include '../common/footer.php';?> </div>
            
        </div>
    </body>
    
    <script>
      
      function confirmation(str,str1){
          var r= confirm("Do you want to "+str+ " "+str1+"?");  
          if (!r) {
              return false;
          }
    

      }
      
    </script>
    
</html>
