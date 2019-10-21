 <?php
 date_default_timezone_set("Asia/Colombo");
 $m_id=1;
 
include '../common/sessionhandling.php';
include '../common/dbconnection.php';
include '../model/usermodel.php';  //user queries
include '../common/functions.php';
include '../model/itemmodel.php';
include '../model/categorymodel.php';
include '../model/brandmodel.php';
include '../model/featuremodel.php';


$role_id=$userInfo['role_id'];

$countm= checkModuleRole($m_id, $role_id);

if ($countm==0){ // check user priviledges
   $msg= base64_encode("You dont have permission to access.") ;
   header("Location:../view/login.php?msg=$msg");
   
}

$obitem=new item();
$result=$obitem->viewAllItems();


$obcat=new category();
$resultcat=$obcat->displayAllCategory();

$obbrand=new brand();
$resultbrand=$obbrand->displayAllBrand();

$obf=new feature();
$resultf=$obitem->viewAllItems(); //to get the model
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
                            <li class="active">Add Stock Module</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                    
                  
                    <div class="col-md-12 col-sm-6">
                        <h3 class="alig">Add Stock</h3>
                    </div>
                </div>
                
                <div style="text-align: center" class="alert">
                    <?php
                    if (isset($_GET['msg'])){
                        echo base64_decode($_GET['msg']);
                    }
                    ?>
                    
                </div>
                
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            Category: 
                            <select id="cat_id" name="cat_id" class="form-control" onchange="displayItem(this.value,document.getElementById('brand_id').value,document.getElementById('model_name').value)">
                                <option value="">Select a Category</option>
                                <?php 
                                            while ($rowcat=$resultcat->fetch(PDO::FETCH_BOTH)){ ?>
                                                <option value="<?php echo $rowcat['cat_id']; ?>"> 
                                        <?php echo $rowcat['cat_name']; ?></option> 
                                        <?php } ?>
                                
                            </select>
                            
                        </div>
                        <div class="col-md-4">
                            Brand: 
                            <select id="brand_id" name="brand_id" class="form-control" 
                                    onchange="displayItem(document.getElementById('cat_id').value,this.value,document.getElementById('model_name').value)">
                                <option value="">Select a Brand</option>
                                 <?php 
                                            while ($rowbrand=$resultbrand->fetch(PDO::FETCH_BOTH)){ ?>
                                                <option value="<?php echo $rowbrand['brand_id']; ?>"> 
                                        <?php echo $rowbrand['brand_name']; ?></option> 
                                        <?php } ?>
                                
                            </select>
                            
                        </div>
                         <div class="col-md-4">
                            Model: 
                            <select id="model_name" name="model_name" class="form-control"
                                     onchange="displayItem(document.getElementById('cat_id').value,document.getElementById('brand_id').value,this.value)">
                               
                                <option value="">Select a Model</option>
                                 <?php 
                                            while ($rowf=$resultf->fetch(PDO::FETCH_BOTH)){ ?>
                                                <option value="<?php echo $rowf['model']; ?>"> 
                                        <?php echo $rowf['cat_name']." - ".$rowf['brand_name']." - ".$rowf['model']; ?></option> <!-- what to display-->
                                        <?php } ?>
                                
                            </select>
                            
                        </div>

                    </div> 
                   
                </div>
                
                 <div class="clearfix">&nbsp;</div>
                   
                <div class="row container-fluid" style="padding-left: 30px">
                    <div class="col-md-12 col-sm-6">
                        <div id="display">
                        <table class=" ui celled table" >
                            <thead>
                                <tr>
                                    <th>&nbsp;</th>
                                    <th>Item ID</th>
                                    <th>Item Name</th>
                                    <th>Model</th>
                                    <th>Brand Name</th>
                                    <th>Category</th>
                                    <th>Item Price</th>
                                    <th>&nbsp;</th>
                                    
                               
                                </tr>
                            </thead>
                            <tbody>
                                <?php while ($row=$result->fetch(PDO::FETCH_BOTH)){
                                    
                                    
                                       $arr=array("rating","po_item","stock","cart","feedback");  //table names of which have to be checked before deleting the item
                                       $item_id=$row['item_id'];
                                       $count=0;
                                       foreach ($arr as $v){
                                        
                                       $count+=checkDelete($v, "item_id", $item_id);
                                       }
                                       
                                       
                                        $resultimage=$obitem->viewItemImage($item_id);
                                        $noi=$resultimage->rowCount();
                                        
                                        if ($noi){
                                            $rowall=$resultimage->fetchAll();
                                            foreach($rowall as $k=>$v){
                                                $im=$v['ii_name'];
                                            }                                           
                                           $path="../images/item_images/".$im;
                                            
                                        }else{
                                            $path="../images/Product.png";
                                        }
                               
                                
                            ?>
                            <tr>
                                <td><img src="<?php echo $path; ?>" height="20" /></td> 
                                <td><?php echo $row['item_id']; ?></td>
                                <td><?php echo $row['item_name']; ?></td>
                                <td><?php echo $row['model']; ?></td>
                                <td><?php echo $row['brand_name']; ?></td>
                                <td><?php echo $row['cat_name']; ?></td>
                                <td><?php echo $row['item_price']; ?></td>
                                <td> 
                                     
                                    <a href="../view/addastock.php?item_id=<?php echo $row['item_id']; ?>">
                                        <button type="button" class="btn btn-sm btn-primary"> Add </button></a>
                                        
                                    
                                </td>
                                
                                
                            </tr>
                            <?php } ?>
                            </tbody>                           
                        </table>
                        </div>
                 </div>
                </div>
        </div>
            <div id="footer"> <?php include '../common/footer.php';?> </div>
            
        </div>
    </body>
    
    <script>
     
      function displayItem(cat_id,brand_id,model_name) {
          
//          alert(cat_id+" "+brand_id+" "+model_name);
            var xhttp; 
            if (cat_id == "" && brand_id=="" && model_name=="") {
              document.getElementById("display").innerHTML = "";
              return;
            }
            xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
               // document.getElementById("displayDistrict").innerHTML = '<img src="../images/loading.gif" alt="Please Wait" />';
              if (this.readyState == 4 && this.status == 200) { // be ready for the reply and 200 for success
              document.getElementById("display").innerHTML = this.responseText;
              }
            };
            xhttp.open("GET", "../ajax/getItem.php?q1="+cat_id+"&q2="+brand_id+"&q3="+model_name, true); //ajax page
            xhttp.send();
          }
        
        
      function confirmation(str,str1){
          var r= confirm("Do you want to "+str+ " "+str1+"?");  
          if (!r) {
              return false;
          }
    

      }
      
    </script>
    
</html>
