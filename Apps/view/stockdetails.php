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
$result=$obstock->viewStockItem($_REQUEST['item_id']);



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
                            <li><a href="../view/stock.php">Stock Module</a></li>
                            <li class="active">Stock Details</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                    
                  
                    <div class="col-md-12 col-sm-6">
                        <h3 class="alig">Stock Details</h3>
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
                                    
                                    <th>Stock ID</th>
                                    <th>Item Name</th>
                                    <th>Item Category</th>
                                    <th>Brand</th>
                                    <th>Model</th>
                                    <th>Features</th>
                                    <th>Quantity</th>
                                    <th>Date</th>
                                    
                                    
                               
                                </tr>
                            </thead>
                            <tbody>
                                <?php while ($row=$result->fetch(PDO::FETCH_BOTH)){
                              
                                    $results=$obf->displayFeatureItem($row['stock_id']);
                                    $arrf=$results->fetchall();
                                    
                            ?>
                                <tr>
                                 
                                <td><?php echo $row['stock_id']; ?></td>
                                <td><?php echo $row['item_name']; ?></td>
                                <td><?php echo $row['cat_name']; ?></td>
                                <td><?php echo $row['brand_name'];?></td>
                                <td><?php echo $row['model']; ?></td>
                                <td><?php 
                                foreach ($arrf as $val){
                                    echo $val['fc_name']." : ".$val['f_name']."<br/>";
                                    
                                }
                                ?></td>
                                <td><?php echo $row['stock_quantity']; ?></td>
                                <td> <?php echo $row['stock_date']; ?></td>
                               
                                
                                
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
