 <?php
 $m_id=7; //the user on module table
 
include '../common/sessionhandling.php';
include '../common/dbconnection.php';
//include '../model/usermodel.php';  //user queries
include '../common/functions.php';


$role_id=$userInfo['role_id'];

$countm= checkModuleRole($m_id, $role_id);

if ($countm=0){ // check user priviledges
   $msg= base64_encode("You dont have permission to access.") ;
   header("Location:../view/login.php?msg=$msg");
   
}

$user_id=$_REQUEST['user_id'];
include '../model/usermodel.php';
$obu=new user();
$resultuser=$obu->viewAUser($user_id);
$rowuser=$resultuser->fetch(PDO::FETCH_BOTH);

include '../model/districtmodel.php';
$dis_id=$rowuser['dis_id'];
$obdis=new district();
$resultdis=$obdis->displayDistrict($dis_id);
$rowdis=$resultdis->fetch(PDO::FETCH_BOTH);



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
        
        <script>
        function displayDistrict(str) {
            var xhttp; 
            if (str == "") {
              document.getElementById("showdistrict").innerHTML = "";
              return;
            }
            xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
               // document.getElementById("displayDistrict").innerHTML = '<img src="../images/loading.gif" alt="Please Wait" />';
              if (this.readyState == 4 && this.status == 200) { // be ready for the reply and 200 for success
              document.getElementById("showdistrict").innerHTML = this.responseText;
              }
            };
            xhttp.open("GET", "../ajax/getDistrict.php?q="+str, true); //ajax page
            xhttp.send();
          }
        
        function displayCities(str) {
            var xhttp; 
            if (str == "") {
              document.getElementById("showcity").innerHTML = "";
              return;
            }
            xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
               // document.getElementById("displayCity").innerHTML = '<img src="../images/loading.gif" alt="Please Wait" />';
              if (this.readyState == 4 && this.status == 200) { // be ready for the reply and 200 for success
              document.getElementById("showcity").innerHTML = this.responseText;
              }
            };
            xhttp.open("GET", "../ajax/getCity.php?q="+str, true); //ajax page
            xhttp.send();
          }
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
                            <li><a href="../view/user.php">User Module</a></li>
                            <li class="active">View User</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                    
                  
                    <div class="col-md-12 col-sm-6">
                        <h3 class="alig">View User</h3>
                    </div>
                </div>
                
                <div class="clearfix">&nbsp;</div>
                
                <div class="row">
                  <div class="col-md-6 col-md-offset-3">
                      <div class="row">
                          <center>
                          <div class="col-md-12">
                              <?php
                              if($rowuser['user_image']==""){
                                  $user_image="../images/user.png";
                              }else{
                              $user_image="../images/user_images/".$rowuser['user_image'];
                              }
                              ?>
                              <img src="<?php echo $user_image; ?>" width="200" height="200"  style="border-radius: 250px ; border: 5px #ff0033 solid "/>
                              <hr style="border-top: 2px solid #000" />
                          </div>
                              
                          </center>
                          
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">First Name</div>
                          <div class="col-md-6">
                              <?php echo $rowuser['user_fname'];?>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">Last Name</div>
                          <div class="col-md-6">
                              <?php echo $rowuser['user_lname'];?>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">Date of Birth</div>
                          <div class="col-md-6">
                              <?php echo $rowuser['user_dob'];?>
                          </div>
                         
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      
                      <div class="row">
                          <div class="col-md-6">Gender</div>
                          <div class="col-md-6">
                              <?php echo $rowuser['user_gender'];?>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">Email</div>
                          <div class="col-md-6">
                              <?php echo $rowuser['user_email'];?>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">Telephone Number</div>
                          <div class="col-md-6">
                             <?php echo $rowuser['user_tel'];?>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">NIC</div>
                          <div class="col-md-6">
                              <?php echo $rowuser['user_nic'];?>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      
                      <div class="row">
                          <div class="col-md-6">Address</div>
                          <div class="col-md-6">
                             <?php echo $rowuser['user_add'];?>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6"><p>Province</p></div>
                          <div class="col-md-6">
                            <?php  echo $rowdis['dis_name']?>  
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6"><p>District</p></div>
                          <div class="col-md-6">
                               <?php  echo $rowdis['pro_name']?>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      
                      <div class="row">
                          <div class="col-md-6"><p>Role Name</p></div>
                          <div class="col-md-6">
                              <?php echo $rowuser['role_name'];?>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          
                         
                      </div>
                      
                  </div>
              </div>
                
               
                
         
               
              </div>  
               
        </div>
            <div id="footer"> <?php include '../common/footer.php';?> </div>
            
        </div>
    </body>
    
    <script type='text/javascript' src="../plugins/jQuery/jQuery-2.1.4.min.js">
  </script>
  
  <!-- External JS for validation -->
  <script type="text/javascript" src="../js/validation.js">
    </script> 
</html>
