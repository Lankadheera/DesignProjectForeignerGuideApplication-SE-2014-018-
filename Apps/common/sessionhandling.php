<?php

//to make sure of authentication
session_start();
error_reporting(E_WARNING || E_ALL);
$userInfo= ($_SESSION['userInfo']);

if (count($userInfo)!=0){ //authenitication - checking to see wether correct login access

    if($userInfo['user_image']==""){
        $iname="../images/user.png";
    }else{
        $iname="../images/user/".$userInfo['user_image'];
    }
}else{
    $msg= base64_encode("Please Login!!!");
    header("Location:../view/login.php?msg=$msg");
    exit();
    }

?>