 <?php
 date_default_timezone_set("Asia/Colombo");
 $m_id=6;
 
include '../common/sessionhandling.php';
include '../common/dbconnection.php';

include '../common/functions.php';
include '../model/categorymodel.php';
include '../model/brandmodel.php';
include '../model/featuremodel.php';
include '../model/itemmodel.php';

$role_id=$userInfo['role_id'];

$countm= checkModuleRole($m_id, $role_id);

if ($countm==0){ // check user priviledges
   $msg= base64_encode("You dont have permission to access.") ;
   header("Location:../view/login.php?msg=$msg");
   
}

$obf=new feature();
$resultc=$obf->displayFeature(1); //for color
$results=$obf->displayFeature(2); //for size

$item_id=$_GET['item_id'];
$obitem=new item();

$resultitem=$obitem->viewAnItem($item_id);
$rowitem=$resultitem->fetch(PDO::FETCH_BOTH);

$resultimage=$obitem->viewItemImage($item_id);
$rowimage=$resultimage->fetch(PDO::FETCH_BOTH);
if($rowimage['ii_name']==""){
    $path="../images/Product.png";
}else{
    $path="../images/item_images/".$rowimage['ii_name'];
}
//echo $path;
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
                            <li class="active">Add a Stock</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                    
                  
                    <div class="col-md-12 col-sm-6">
                        <h3 class="alig">Add a Stock</h3>
                    </div>
                </div>
                
                      
                <div class="clearfix">&nbsp;</div>
<!--                <div style="text-align: center" class="alert alert-danger">
                    <?php
                    if (isset($_GET['msg'])){
                        echo base64_decode($_GET['msg']);
                    }
                    ?>
                    
                </div>-->
                
                 <div class="clearfix">&nbsp;</div>
                   
                <div class="row container-fluid" style="padding-left: 30px">
                    <div class="col-md-12 col-sm-6">
                        <div class="container-fluid">
                            <form action="../controller/stockcontroller.php?action=add" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="item_id" value="<?php  echo $item_id;?>" />
                                 <div class="row">
                                <div class="col-md-1">&nbsp;</div>
                                <div class="col-md-2">Image : </div>
                                <div class="col-md-3">
                                    <img src="<?php echo $path; ?>" width="100"/>
                                </div>
                                
                                <div class="col-md-2">Details :</div>
                                <div class="col-md-3"><?php echo $rowitem['item_des'];?></div>
                               
                                <div class="col-md-1">&nbsp;</div>
                            </div>
                            
                            <div class="clearfix">&nbsp;</div>
                                
                                <div class="row">
                                <div class="col-md-1">&nbsp;</div>
                                <div class="col-md-2">Color : </div>
                                <div class="col-md-3">
                                    <select id="color_id" name="color_id" class="form-control">
                                        <option value="">Select a color</option>
                                         <?php 
                                            while ($rowc=$resultc->fetch(PDO::FETCH_BOTH)){ ?>
                                                <option value="<?php echo $rowc['f_id']; ?>"> 
                                        <?php echo $rowc['f_name']; ?></option> 
                                        <?php } ?>
                                    </select>
                                </div>
                                
                                <div class="col-md-2">Size</div>
                                <div class="col-md-3">
                                    <select id="size_id" name="size_id" class="form-control">
                                        <option value="">Select a size</option>
                                         <?php 
                                            while ($rows=$results->fetch(PDO::FETCH_BOTH)){ ?>
                                                <option value="<?php echo $rows['f_id']; ?>"> 
                                        <?php echo $rows['f_name']; ?></option> 
                                        <?php } ?>
                                    </select>
                                </div>
                                <div class="col-md-1">&nbsp;</div>
                            </div>
                            
                            <div class="clearfix">&nbsp;</div>
                            
                            <div class="row">
                                <div class="col-md-1">&nbsp;</div>
                                <div class="col-md-2">Quantity : </div>
                                <div class="col-md-3">
                                    <input type="text" id="quan" name="quan" class="form-control"/>
                                </div>
                                
                                <div class="col-md-2">Price :</div>
                                <div class="col-md-3">
                                    <input type="text" id="price" name="price" class="form-control" onkeypress="return onlyNos(event,this)"/>
                                </div>
                                <div class="col-md-1">&nbsp;</div>
                            </div>
                            
                             <div class="clearfix">&nbsp;</div>
                                                          
                            <div class="row">
                                <div class="col-md-1">&nbsp;</div>
                                
                                
                                <div class="col-md-2">Upload a file :</div>
                                <div class="col-md-3">
                                    <input type="file" id="textfile" name="textfile" class="form-control"/>
                                </div>
                                <div class="col-md-1">&nbsp;</div>
                            </div>
                             
                              <div class="clearfix">&nbsp;</div>
                             
                           
                            <div class="clearfix">&nbsp;</div>
                             
                            <div class="row">
                                <div class="col-md-1">&nbsp;</div>
                                <div class="col-md-5" align="right">
                                    <input type="submit" class="btn btn-success" value="Save"/>
                                </div>
                                <div class="col-md-5">
                                    <input type="reset" class="btn btn-danger"/>
                                </div>
                                
                                
                                <div class="col-md-1">&nbsp;</div>
                            </div>
                            
                            </form>    
                              
                        </div>
                    
                  
                 </div>
                </div>
        </div>
            <div id="footer"> <?php include '../common/footer.php';?> </div>
            
        </div>
    </body>
   
     <script>
            //To check Integers and Dot
function onlyNos(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode!=46) {
					// 31 is Unit Separator, 48 is Zero, 57 is Nine, 88 is Uppercase X, 46 is dot
                    return false;
                }
                return true;
            }
            catch (err) {
                alert(err.Description);
            }
        }           
            
            </script>
</html>
