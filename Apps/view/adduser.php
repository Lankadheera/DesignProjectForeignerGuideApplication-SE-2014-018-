 <?php
 $m_id=7; //the user on module table
 
include '../common/sessionhandling.php';
include '../common/dbconnection.php';
include '../model/usermodel.php';  //user queries
include '../common/functions.php';
include '../model/provincemodel.php';
include '../model/rolemodel.php';

$role_id=$userInfo['role_id'];

$countm= checkModuleRole($m_id, $role_id);
if ($countm=0){ // check user priviledges
   $msg= base64_encode("You dont have permission to access.") ;
   header("Location:../view/login.php?msg=$msg");
   
}

$obpro=new province();
$resultprovinces=$obpro->displayProvinces();
//var_dump($resultprovinces);

$obrole=new role();
$resultrole=$obrole->displayRoles();

//$maxdate=date('Y-m-d', strtotime(' -18 year'));
//$mindate=date('Y-m-d', strtotime(' -60 year'));


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
                            <li class="active">Add User</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                    
                  
                    <div class="col-md-12 col-sm-6">
                        <h3 class="alig">Add User</h3>
                    </div>
                </div>
                
                <form method="post" action="../controller/usercontroller.php?action=add" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="row">
                                <div class="col-md-6"><p>First Name</p></div>
                                <div class="col-md-6"><input type="text" name="user_fname" id="user_fname" placeholder="User First Name" class="form-control"/>
                                    <div id="uferror" class="error">*</div> 
                                </div>
                            </div>
                            
                            <div class="clearfix">&nbsp;</div>
                                
                            <div class="row">
                                <div class="col-md-6"><p>Last Name</p></div>
                                <div class="col-md-6"><input type="text" name="user_lname" id="user_lname" placeholder="User Last Name" class="form-control" />
                                    <div id="ulerror" class="error">*</div>
                                </div>
                            </div>
                               
                                 <div class="clearfix">&nbsp;</div>
                                 
                            <div class="row">
                                <div class="col-md-6"><p>Date of Birth</p></div>
                                <div class="col-md-6"><input type="date" name="user_dob" id="user_dob" placeholder="Date of Birth" class="form-control"  max="<?php echo $maxdate?>"  min="<?php echo $mindate ?>"/>
                                    <div id="udoberror" class="error"/></div>
                                </div>
                            </div>
                                
                                  <div class="clearfix">&nbsp;</div>
                                  
                            <div class="row">
                                <div class="col-md-6"><p>Gender</p></div>
                                <div class="col-md-6">
                                    <input type="radio" name="user_gender" id="male" value="male" class=""/>Male <a>&nbsp;</a>
                                    <input type="radio" name="user_gender" id="female" value="female" class=""/>Female
                                        <div id="ugerror" class="error">*</div>
                                </div>
                            </div>
                                
                                   <div class="clearfix">&nbsp;</div>
                                   
                            <div class="row">
                                <div class="col-md-6"><p>Email</p></div>
                                <div class="col-md-6"><input type="email" name="user_email" id="user_email" placeholder="User E-mail" class="form-control" onkeyup="checkEmail(this.value)" />
                                    <span id="showEmail"></span> <!-- displays below the email box the functions output-->
                                    <div id="ueerror" class="error">*</div>
                                </div>
                            </div>
                                
                                    <div class="clearfix">&nbsp;</div>
                                    
                            <div class="row">
                                <div class="col-md-6"><p>Telephone Number</p></div>
                                <div class="col-md-6"><input type="text" name="user_tel" id="user_tel" placeholder="Telephone number" class="form-control"/>
                                <div id="uterror" class="error"></div>
                                </div>
                            </div>   
                                
                                 <div class="clearfix">&nbsp;</div>
                                 
                            <div class="row">
                                <div class="col-md-6"><p>NIC</p></div>
                                <div class="col-md-6"><input type="text" name="user_nic" id="user_nic" placeholder="NIC" class="form-control"/>
                                  <div id="unerror" class="error"></div>
                                </div>
                            </div>
                                
                                  <div class="clearfix">&nbsp;</div>
                                  
                            <div class="row">
                                <div class="col-md-6"><p>User Image</p></div>
                                <div class="col-md-6"><input type="file" name="user_image" id="user_image" class="form-control" onchange="readURL(this)"/>
                                    <div id="uierror" class="error"></div><img id="image_view"/>
                                </div>
                            </div> 
                                
                                   <div class="clearfix">&nbsp;</div>
                                   
                            <div class="row">
                                <div class="col-md-6"><p>Address</p></div>
                                <div class="col-md-6"><textarea name="user_address" id="user_address" class="form-control"></textarea></div>
                            </div>    
                            
                                   <div class="clearfix">&nbsp;</div>
                                
                            <div class="row">
                                <div class="col-md-6"><p>Province</p></div>
                                <div class="col-md-6">
                                    <select name="pro_id" id="pro_id" class="form-control" onchange="displayDistrict(this.value)"> <!-- sir used displayDis() -->
                                    <option value="">Select a Province</option>
                                    <?php while ($rowprovince=$resultprovinces->fetch(PDO::FETCH_BOTH)){ ?>
                                    <option value="<?php echo $rowprovince['id']; ?>"> <!-- since the province is selected the id relevant to it is selected -->
                                        <?php echo $rowprovince['name_en']; ?></option> <!-- to display the provinces on the form from the database -->
                                    <?php } ?>
                                    </select>
                                        <div id="uperror" class="error">*</div>
                                </div>
                            </div>  
                                
                            <div class="clearfix">&nbsp;</div>
                                
                            <div class="row">
                                <div class="col-md-6"><p>District</p></div>
                                <div class="col-md-6">
                                    <!-- to load all districts in a selected province only use span id="showdistricts" -->
                                    <span id="showdistrict">
                                        <select name="dis" id="dis_id" class="form-control">
                                            <option value="">Select a District</option>
                                        </select>
                                    </span>
                                        <div id="uderror" class="error">*</div>
                                </div>
                            </div>   
                            
                            <div class="clearfix">&nbsp;</div>
                                
                            <div class="row">
                                <div class="col-md-6"><p>City</p></div>
                                <div class="col-md-6">
                                    <!-- to load all districts in a selected province only use span id="showcities" -->
                                    <span id="showcity">
                                        <select name="city_id" id="city_id" class="form-control">
                                            <option value="">Select a City</option>
                                        </select>
                                    </span>
                                </div>
                            </div>   
                                
                           <div class="clearfix">&nbsp;</div>
                            
                            <div class="row">
                                <div class="col-md-6"><p>Role Name</p></div>
                                <div class="col-md-6"><select name="role_id" id="role_id" class="form-control">
                                    <option value="">Select a Role Name</option>
                                     <?php while ($rowrole=$resultrole->fetch(PDO::FETCH_BOTH)){ ?>
                                    <option value="<?php echo $rowrole['role_id']; ?>"> 
                                        <?php echo $rowrole['role_name']; ?></option> 
                                    <?php } ?>
                                    </select>
                                        <div id="urerror" class="error">*</div>
                                </div>
                            </div> 
                    
                            <div class="clearfix">&nbsp;</div>
                            
                            <div class="row">
                                <div class="col-md-12" style="text-align:center;">
                                    <input type="submit" name="sub" value="Submit" class="btn btn-primary"/> 
                                    <input type="reset" name="clear" value="Clear" class="btn btn-primary"/>   
                            </div>
                                
                                <div class="col-md-6">
                                    &nbsp;
                                </div>
                            </div>
                            
                                <div class="clearfix">&nbsp;</div>
                                
             </div>
                            </div> 
                </form>
               
              </div>  
               
        </div>
            <div id="footer"> <?php include '../common/footer.php';?> </div>
            
       
    </body>
    
    <script type='text/javascript' src="../plugins/jQuery/jQuery-2.1.4.min.js">
  </script>
  
  <!-- External JS for validation -->
  <script type="text/javascript" src="../js/validation.js">
    </script> 
</html>
