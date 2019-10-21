 <?php
 date_default_timezone_set("Asia/Colombo");
 $m_id=1;
 
include '../common/sessionhandling.php';
include '../common/dbconnection.php';

include '../common/functions.php';
include '../model/categorymodel.php';
include '../model/brandmodel.php';

$role_id=$userInfo['role_id'];

$countm= checkModuleRole($m_id, $role_id);

if ($countm==0){ // check user priviledges
   $msg= base64_encode("You dont have permission to access.") ;
   header("Location:../view/login.php?msg=$msg");
   
}

$obcat=new category();
$resultcat=$obcat->displayAllCategory();

$obbrand=new brand();
$resultbrand=$obbrand->displayAllBrand();
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
                            <li><a href="../view/item.php">Item Module</a></li>
                            <li class="active">Add Item</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                    
                  
                    <div class="col-md-12 col-sm-6">
                        <h3 class="alig">Add Item</h3>
                    </div>
                </div>
                
                      
                <div class="clearfix">&nbsp;</div>
                <div style="text-align: center" class="alert alert-danger">
                    <?php
                    if (isset($_GET['msg'])){
                        echo base64_decode($_GET['msg']);
                    }
                    ?>
                    
                </div>
                
                 <div class="clearfix">&nbsp;</div>
                   
                <div class="row container-fluid" style="padding-left: 30px">
                    <div class="col-md-12 col-sm-6">
                        <div class="container-fluid">
                            <form action="../controller/itemcontroller.php?action=add" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-1">&nbsp;</div>
                                <div class="col-md-2">Category : </div>
                                <div class="col-md-3">
                                    <select id="cat_id" name="cat_id" class="form-control">
                                        <option value="">Select a category</option>
                                         <?php 
                                            while ($rowcat=$resultcat->fetch(PDO::FETCH_BOTH)){ ?>
                                                <option value="<?php echo $rowcat['cat_id']; ?>"> 
                                        <?php echo $rowcat['cat_name']; ?></option> 
                                        <?php } ?>
                                    </select>
                                </div>
                                
                                <div class="col-md-2">Brand</div>
                                <div class="col-md-3">
                                    <select id="brand_id" name="brand_id" class="form-control">
                                        <option value="">Select a Brand</option>
                                         <?php 
                                            while ($rowbrand=$resultbrand->fetch(PDO::FETCH_BOTH)){ ?>
                                                <option value="<?php echo $rowbrand['brand_id']; ?>"> 
                                        <?php echo $rowbrand['brand_name']; ?></option> 
                                        <?php } ?>
                                    </select>
                                </div>
                                <div class="col-md-1">&nbsp;</div>
                            </div>
                            
                            <div class="clearfix">&nbsp;</div>
                            
                            <div class="row">
                                <div class="col-md-1">&nbsp;</div>
                                <div class="col-md-2">Model : </div>
                                <div class="col-md-3">
                                    <input type="text" id="model" name="model" class="form-control"/>
                                </div>
                                
                                <div class="col-md-2">Item Name :</div>
                                <div class="col-md-3">
                                     <input type="text" id="item_name" name="item_name" class="form-control"/>
                                </div>
                                <div class="col-md-1">&nbsp;</div>
                            </div>
                            
                             <div class="clearfix">&nbsp;</div>
                                                          
                            <div class="row">
                                <div class="col-md-1">&nbsp;</div>
                                <div class="col-md-2">Item Price : </div>
                                <div class="col-md-3">
                                   <input type="text" id="item_price" name="item_price" class="form-control"/>
                                 </div>
                                
                                <div class="col-md-2">Item Image :</div>
                                <div class="col-md-3">
                                    <input type="file" id="item_image" name="item_image[]" multiple class="form-control"/>
                                </div>
                                <div class="col-md-1">&nbsp;</div>
                            </div>
                             
                              <div class="clearfix">&nbsp;</div>
                             
                            <div class="row">
                                <div class="col-md-1">&nbsp;</div>
                                <div class="col-md-2">Item Description : </div>
                                <div class="col-md-8">
                                    <textarea id="item_des" name="item_des" class="form-control">&nbsp;</textarea>
                                </div>
                                
                                
                                <div class="col-md-1">&nbsp;</div>
                            </div>
                              
                            <div class="clearfix">&nbsp;</div>
                             
                            <div class="row">
                                <div class="col-md-1">&nbsp;</div>
                                <div class="col-md-5" align="right">
                                    <input type="submit" class="btn btn-success"/>
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
    
</html>
