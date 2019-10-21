<?php
session_start();
$userInfo=($_SESSION['userInfo']); // to identify unique session ID
$session_id= $userInfo[18];

include '../common/dbconnection.php';
include '../model/logmodel.php';
$oblog=new log();
$log_status="logout";
$oblog->updatelog($log_status, $session_id);


unset($_SESSION['userInfo']);
header("refresh:5,url=../view/login.php");//redirection

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
                <div class="row">
                    <div class="col-md-6 col-sm-12 heading">Sales Ordering System</div>
                   
                </div> 
                <!-- to display name and image beside logout -->
            </div>
            <div id="navi" style="background: #f5f5f5">
                <div class="row">
                    <div class="col-md-4 col-sm-6 paddinga">
                        &nbsp;
                    </div>
                    <div class="col-md-8 col-sm-6" style="text-align: right">
                        <ol class="breadcrumb">
                            <li class="active">Logout</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                  
                    <div class="col-md-12 col-sm-12">
                        <center>
                        <p>Successfully Logged out </p>
                        <img src="../images/loading.gif" /> <br/><br/>
                        <a href="../view/login.php">Login</a>
                        </center>
                    
                    </div>
                </div>
            </div>
            <div id="footer"> <?php include '../common/footer.php';?> </div>
            
        </div>
    </body>
</html>
