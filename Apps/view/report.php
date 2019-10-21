<?php

include '../common/sessionhandling.php';
include '../common/dbconnection.php';
include '../model/usermodel.php';
include '../model/logmodel.php';

$oblog=new log();


$obuser=new user();
$ru=$obuser->viewAllUser(); //result user
$nor=$ru->rowCount();
//echo $nor;

$rau=$obuser->viewUserByStatus("Active"); //result active user
$noau=$rau->rowCount();

$rdu=$obuser->viewUserByStatus("Deactive"); //result deactive user
$nodu=$rdu->rowCount();

//$cdate= date("Y-m-d");
//$fdate= date('Y-m-d', strtotime($cdate.'-7 days'));

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
        <link rel="stylesheet" href="../plugins/font-awesome-4.7.0/css/font-awesome.min.css"/>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        
        
      
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
                            <li><a href="dashboard.php">Dashboard</a></li>
                            <li class="active">Reports</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                   <?php include '../common/modules.php'; ?>
                    
                    <div class="col-md-9 col-sm-8">Reports
                        <div>
                            <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="panel panel-success">
                                        <div class="panel-heading">
                                            <h4>Order Reports:</h4>
                                        </div>
                                        <div class="panel-body">
                                            <p><a href="orderdaterange.php">
                                                    Order Details Report by Date Range
                                                </a>
                                            </p>
                                            
                                            <p><a href="ordermonth.php">
                                                    Current Year Order Details Report by Month
                                                </a>
                                            </p>

                                        </div>
                                    </div>
                                
                                
                                </div>
                                
                            </div>
                            </div>
                            
                        </div>
                    
                       
                        
                    </div>
                </div>
            </div>
            <div id="footer"> <?php include '../common/footer.php';?> </div>
            
        </div>
    </body>
</html>
