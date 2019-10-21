<?php
 $m_id=7;
 include '../common/sessionhandling.php';
 $role_id=$userInfo['role_id'];
 include '../common/dbconnection.php';
// include '../model/usermodel.php';
 include '../common/functions.php';
 include '../model/provincemodel.php';
 include '../model/rolemodel.php';

 $countm=checkModuleRole($m_id, $role_id);
 if($countm==0){ //to check user previlages
     $msg=base64_encode("You dont have permission to access");
     header("Location:../view/login.php?msg=$msg");
 }

$user_id=$_REQUEST['user_id'];
include '../model/usermodel.php';
$obu=new user();
$resultuser=$obu->viewAUser($user_id);
$rowuser=$resultuser->fetch(PDO::FETCH_BOTH);

$obpro=new province();
 $resultprovinces=$obpro->displayProvinces();
 
 $obrole=new role();
 $resultrole=$obrole->displayRoles();
// $maxdate=date('Y-m-d', strtotime(' -18 year'));
// $maxdate=date('Y-m-d', strtotime(' -60 year'));
 
 //To get Province deails
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
                            <li class="active">Update User</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                    
                  
                    <div class="col-md-12 col-sm-6">
                        <h3 class="alig">Update User</h3>
                    </div>
                </div>
                
                 <div class="clearfix">&nbsp;</div>
              <div class="row">
                  <center>
                  <div class="col-md-12 col-sm-6">
                      <?php
                      if(isset($_REQUEST['msg'])){
                          echo "<span class='text text-".$_REQUEST['status']."'>".$_REQUEST['msg']."</span>";
                      }
                      ?>
                      
                  </div>
                  </center>
              </div>
                
                  
              <form method="post" action="../controller/usercontroller.php?action=update&user_id=<?php echo $user_id?>" enctype="multipart/form-data">
              <div class="row">
                  <div class="col-md-6 col-md-offset-3">
                      <div class="row">
                          <div class="col-md-6">First Name</div>
                          <div class="col-md-6">
                              <input type="text" name="user_fname" id="user_fname" placeholder="User First Name" class="form-control" value="<?php echo $rowuser['user_fname'];?>" />
                              <div id="uferror" class="error">*</div>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">Last Name</div>
                          <div class="col-md-6">
                              <input type="text" name="user_lname" id="user_lname" placeholder="User Last Name" class="form-control" value="<?php echo $rowuser['user_lname'];?>" />
                              <div id="ulerror" class="error">*</div>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">Date of Birth</div>
                          <div class="col-md-6">
                              <input type="date" name="user_dob" id="user_dob" placeholder="Date of Birth" class="form-control" max="<?php echo date('Y-m-d');?>" value="<?php echo $rowuser['user_dob'];?>" />
                               <div id="udoberror" class="error"></div>
                          </div>
                         
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      
                      <div class="row">
                          <div class="col-md-6">Gender</div>
                          <div class="col-md-6">
                              <input type="radio" name="user_gender" id="male"  class=" " value="male" <?php echo ($rowuser['user_gender']=='male')?'checked':'' ?>/> Male
                              <input type="radio" name="user_gender" id="female" class=" "  value="female" <?php echo ($rowuser['user_gender']=='female')?'checked':'' ?>/> Female
                              <div id="ugerror" class="error">*</div>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">Email</div>
                          <div class="col-md-6">
                              <input type="text" name="user_email" id="user_email" placeholder="User Email" class="form-control" readonly="" value="<?php echo $rowuser['user_email'];?>"/>
                              <span id="showEmail"></span>
                              <div id="ueerror" class="error"></div>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">Telephone Number</div>
                          <div class="col-md-6">
                              <input type="text" name="user_tel" id="user_tel" placeholder="User Telephone" class="form-control" value="<?php echo $rowuser['user_tel'];?>"/>
                              <div id="uterror" class="error"></div>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">NIC</div>
                          <div class="col-md-6">
                              <input type="text" name="user_nic" id="user_nic" placeholder="User NIC" class="form-control" value="<?php echo $rowuser['user_nic'];?>" />
                              <div id="unerror" class="error"></div>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">User Image</div>
                          <div class="col-md-6">
                              <input type="file" name="user_image" id="user_image" placeholder="User Image" class="form-control" onchange="readURL(this)" />
                              <div id="uierror" class="error"></div>
                              <?php 
                              if($rowuser['user_image']==""){
                                    $user_image="../images/user.png";
                              }else{
                                    $user_image="../images/user_images/".$rowuser['user_image'];
                              }
                              ?>
                              <img id="image_view"  src="<?php echo $user_image; ?>" style="width: 100px"/>
                          </div>
                      </div>
                         <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6">Address</div>
                          <div class="col-md-6">
                              <textarea name="user_add" id="user_address" class="form-control" ><?php echo $rowuser['user_add'];?></textarea>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6"><p>Province</p></div>
                          <div class="col-md-6">
                              <select name="pro_id" id="pro_id" class="form-control" onchange="displayDistrict(this.value)">
                                  <option value="" >Select a Province</option>
                                  <?php
                                    while ($rowprovince=$resultprovinces->fetch(PDO::FETCH_BOTH)){?>
                                  <option value="<?php echo $rowprovince['id']?>"
                                     <?php if($rowprovince['id']==$rowdis['pro_id']){
                                         echo "SELECTED";
                                     } ?>  
                                  >
                                      <?php echo $rowprovince['name_en']; ?>
                                  </option>
                                  <?php }?>
                                  
                              </select>
                              <div id="uperror" class="error">*</div>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6"><p>District</p></div>
                          <div class="col-md-6">
                              <!-- To load all district in a selected province-->
                              <span id="showdistrict"> 
                                 
                              <select name="dis" id="dis_id" class="form-control">
                                  <option value="">Select a District</option>
                                  <?php
                                 
                                  $resultdp=$obdis->displayDistrictPerPro($rowdis['pro_id']);
                                  //var_dump($resultdp);
                                  while($rowdp=$resultdp->fetch(PDO::FETCH_BOTH)){ ?>
                                  <option value="<?php echo $rowdp['id']; ?>"
                                     <?php if($rowdp['id']==$dis_id){
                                         echo "SELECTED";
                                     } ?>  
                                  >
                                      <?php echo $rowdp['name_en']; ?>
                                  </option>
                                  <?php } ?>
                                    
                              </select>
                                  
                              </span>
                                <div id="uderror" class="error">*</div>
                          </div>
                      </div>
                      
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6"><p>City</p></div>
                          <div class="col-md-6">
                              <!-- To load all city in a selected city-->
                              <span id="showcity"> 
                              <select name="dis_id" id="dis_id" class="form-control">
                                  <option value="">Select a City</option>
                              </select>
                              </span>

                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          <div class="col-md-6"><p>Role Name</p></div>
                          <div class="col-md-6">
                              
                              <select name="role_id" id="role_id" class="form-control">
                                  <option value="">Select a Role Name</option>
                                  <?php
                                    while ($rowrole=$resultrole->fetch(PDO::FETCH_BOTH)){?>
                                  <option value="<?php echo $rowrole['role_id']?>"
                                         <?php
                                         if($rowrole['role_id']==$rowuser['role_id']){
                                         echo "SELECTED";
                                         }
                                         ?>
                                          ><?php echo $rowrole['role_name']; ?></option>
                                  <?php }?>
                              </select>
                              <div id="urerror" class="error">*</div>
                          </div>
                      </div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="clearfix">&nbsp;</div>
                      <div class="row">
                          
                          <div class="col-md-12" style="text-align: center">
                              <input type="submit" name="up" value="Update" class="btn btn-primary"/>
                              
                          </div>
                      </div>
                      
                  </div>
              </div>
              </form>
               
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
