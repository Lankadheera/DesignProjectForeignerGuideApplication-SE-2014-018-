<?php

include '../common/dbconnection.php';
include '../model/itemmodel.php';
$obitem=new item();
$action =strtolower($_REQUEST['action']);

switch ($action) {
    case "add":
        $arr=$_POST;
        
        $arrimagename=$_FILES['item_image']['name'];
        $arrimagetmp=$_FILES['item_image']['tmp_name']; //temp location
        
        $model=$_POST['model'];
        $resultm=$obitem->checkModel($model);
        $nom=$resultm->rowCount();
         if($nom==0){             
        $item_id=$obitem->addItem($arr);
        
        if ($arrimagename[0]!=""){
        foreach ($arrimagename as $k=>$v){
          $imagen= uniqid()."_".$v;
          $imaget=$arrimagetmp[$k];
          
          $r=$obitem->addImage($imagen, $item_id);
          if($r){
              $destination="../images/item_images/".$imagen;
              move_uploaded_file($imaget,$destination);
          }
            
        }
        }
        
        $msg= base64_encode("A record has been added");
        header("Location:../view/item.php?msg=$msg");

         }else{
          $msg= base64_encode("Model is existing");
        header("Location:../view/additem.php?msg=$msg");   
         }
     //       print_r($arr);   
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