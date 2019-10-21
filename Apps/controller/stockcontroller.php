<?php
include '../common/sessionhandling.php';
include '../common/dbconnection.php';
include '../model/stockmodel.php';
$obstock=new stock();

$user_id=$userInfo['user_id'];

$action =strtolower($_REQUEST['action']);

switch ($action) {
    case "add":
        $arr=$_POST;
        
        $textfile=$_FILES['textfile']['name'];
        $textfiletmp=$_FILES['textfile']['tmp_name']; //temp location
        $stock_id=$obstock->addstock($arr, $user_id, $textfile);
       // print_r($stock_id);
        
        if($_POST['size_id']!=""){
            $f_id=$_POST['size_id'];  
            $obstock->addstockfeature($stock_id, $f_id);
        }
        if($_POST['color_id']!=""){
            $f_id=$_POST['color_id'];            
            $obstock->addstockfeature($stock_id, $f_id);
        }
        $rstock=$obstock->checkstockbalance($_POST['item_id'],$_POST['color_id'],$_POST['size_id']);
         $nos=$rstock->rowCount();
         
         if($nos==0){
            $obstock->addstockbalance($_POST['item_id'],$_POST['quan'],$_POST['color_id'],$_POST['size_id']) ;
         $msg="An Item quantity has been added";
            
         }else{
             $obstock->updatestockbalance($_POST['item_id'], $_POST['quan'],$_POST['color_id'],$_POST['size_id']);
             $msg="An Item quantity has been updated";
         }
            $msg= base64_encode($msg);
            header("Location:../view/addstock.php?msg=$msg");
         
        break;  
        
    case "delete":
        $item_id=$_REQUEST['item_id'];
        $r=$obitem->deleteAnItem($item_id);
        if ($r){
           $msg="$item_id record has been deleted";
        }else{
            $msg="$item_id record has not been deleted";
        }
            $msg= base64_encode($msg);
            header("Location:../view/item.php?msg=$msg");
        break;
        
       
} 
?>