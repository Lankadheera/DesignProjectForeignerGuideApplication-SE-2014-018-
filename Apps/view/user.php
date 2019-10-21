 <?php
 $m_id=7;
 
include '../common/sessionhandling.php';
include '../common/dbconnection.php';
include '../model/usermodel.php';  //user queries
include '../common/functions.php';

$role_id=$userInfo['role_id'];

$countm= checkModuleRole($m_id, $role_id);

if ($countm==0){ // check user priviledges
   $msg= base64_encode("You dont have permission to access.") ;
   header("Location:../view/login.php?msg=$msg");
   
}

$obuser = new user(); //to create an object
$resultn= $obuser->viewAllUser();

$nor=$resultn->rowCount();
$nop= ceil($nor/5);

if (!isset($_GET['page']) || $_GET['page']==1 ){
    $start=0;
    $page=1;
}else{
    $page=$_GET['page'];
    $start=$page*5-5;  
}

$limit=5;
$result=$obuser->viewUserLimited($start, $limit);

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
                            <li class="active">User Module</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                    
                  
                    <div class="col-md-12 col-sm-6">
                        <h3 class="alig">User Module</h3>
                    </div>
                </div>
                
                <div class="row container">
                    <div class="col-md-6">
                        <p> 
                            <a href="../view/adduser.php">
                            <button type="button" class="btn btn-success">
                                <i class="glyphicon glyphicon-plus"></i>
                                Add User
                            </button>
                            </a>
                        </p>
                    </div>
                    
                     <div class="col-md-6">
                      <p style="float: right">
                      <form action="searchuser.php" method="post">
                          <i class="glyphicon glyphicon-search"></i>
                          &nbsp;
                          <input type="text" name="search" id="search" placeholder="Enter a keyword" class="input-sm" size="40"/>
                          
                      <button type="submit" class="btn btn-primary">
                          <li class="glyphicon glyphicon-search"></li>
                          Search
                      </button>
                      </form>   
                      </p>
                  </div>
                </div>
                
                <div style="text-align: center">
                    <?php
                    if (isset($_GET['msg'])){
                        echo base64_decode($_GET['msg']);
                    }
                    ?>
                    
                </div>
                
                 <div class="row container-fluid">
                    <div class="col-md-12 col-sm-6">
                        <table class="table table-responsive table-hover table-striped">
                            <tr>
                                <th>&nbsp;</th>
                                <th>User ID</th>
                                <th>Name</th>
                                <th>Gender</th>
                                <th>Role</th>
                                <th>Status</th>
                                <th>&nbsp;</th>
                            </tr>
                            
                            <?php while ($row=$result->fetch(PDO::FETCH_BOTH)){ 
                                
                                if($row['user_image']==""){
                                    $uimage="../images/user.png";
                                }else{
                                    $uimage="../images/user_images/".$row['user_image'];
                                }
                                
                                if ($row['user_status']=="Active"){
                                    $status=1; //active
                                    $sname="Deactive"; //Label
                                    $style="danger"; //Button style
                                }else{
                                    $status=0; //deactive
                                    $sname="Active";
                                    $style="success";
                                }
                                
                                ?>
                            <tr>
                                <td><img src="<?php echo $uimage; ?>"
                                         class="style1" />
                                </td> <!-- to display the image-->
                                <td><?php echo $row['user_id']; ?></td>
                                <td><?php echo $row['user_fname']." ".$row['user_lname']; ?></td>
                                <td><?php echo $row['user_gender']; ?></td>
                                <td><?php echo $row['role_name']; ?></td>
                                <td><?php echo $row['user_status']; ?></td>
                                <td>
                                    <a href="../view/viewuser.php?user_id=<?php echo $row['user_id']; ?>">
                                        <button type="button" class="btn btn-sm btn-primary"> View </button></a>
                                        
                                    <a href="../view/updateuser.php?user_id=<?php echo $row['user_id']; ?>">
                                        <button type="button" class="btn btn-sm btn-success"> Update </button></a>
                                        
                                    <a href="../controller/usercontroller.php?user_id=<?php echo $row ['user_id'];?>&status=<?php echo $status;?>&action=ACDAC&page=<?php echo $page;?>">
                                  <button type="button" class="btn btn-sm btn-<?php echo $style ?>" onclick="return confirmation('<?php echo $sname;?>')">
                                      <?php  echo $sname; ?>
                                  </button>
                                  </a>
                                  
                                </td> 
                            </tr>
                            <?php } ?>
                            
                            
                     </table>
                        <center>
                        <nav class="container">
                            <ul class="pagination pagination-sm">
                                <?php 
                                for($i=1;$i<=$nop;$i++){
                                ?>
                                <li><a href="../view/user.php?page=<?php echo $i; ?>"> <?php echo $i; ?></a></li>
                                <?php } ?>                                
                            </ul>                            
                        </nav>
                        </center>
                 </div>
                </div>
        </div>
            <div id="footer"> <?php include '../common/footer.php';?> </div>
            
        </div>
    </body>
    <script>
      
      function confirmation(str){
          var r= confirm("Do you want to "+ str + " user?");  
          if (!r) {
              return false;
          }
    

      }
      
    </script>

</html>
