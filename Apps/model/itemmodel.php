<?php

class item {

    public function viewAllItems() {
        global $con;
        $r=$con->prepare("SELECT * FROM item i, brand b,category c WHERE  i.brand_id=b.brand_id AND i.cat_id=c.cat_id ORDER BY i.item_id DESC");
        $r->execute();
        return $r;             
   } 
   
    public function viewItemImage($item_id){
        global $con;
        $r=$con->prepare("SELECT * FROM item_image WHERE item_id=?");
        $r->execute(array($item_id));
        return $r;
    }
    
    
    
    public function viewAnItem($item_id){ //to select a particular item
        global $con;
        $r=$con->prepare("SELECT * FROM item i, brand b,category c WHERE  i.brand_id=b.brand_id AND i.cat_id=c.cat_id AND i.item_id=?");
        $r->execute(array($item_id));
        return $r;
    }
   
     public function viewUserByStatus($status){
        global $con;
        $r=$con->prepare("SELECT * FROM user WHERE user_status=?");
        $r->execute(array($status));
        return $r;
         
     }
   
    public function viewUserLimited($start,$limit) {
        global $con;
        $r=$con->prepare("SELECT * FROM user u, role r WHERE  u.role_id=r.role_id ORDER BY user_id DESC LIMIT $start, $limit");
        $r->execute();
        return $r;             
   } 
   
    public function addItem($arr) {
      // print_r($arr[]);
       global $con;
       $r=$con->prepare("INSERT INTO item(item_name,brand_id,cat_id,item_price,item_des,model,item_status) VALUES(?,?,?,?,?,?,?)"); //here the names in the database are used
       $r->execute(array($arr['item_name'],$arr['brand_id'],$arr['cat_id'],$arr['item_price'],$arr['item_des'],$arr['model'],"Active")); //here the names of the form are used
       $item_id=$con->lastinsertId(); //lastinsertId can be used only when its auto increment
       
       
       if ($r->errorCode()!=0){
           $errors = $r->errorInfo();
           echo $errors[2];
       }
       return $item_id;
   }
   
   
    
     public function addImage($ii_name,$item_id) {
      // print_r($arr[]);
       global $con;
       $r=$con->prepare("INSERT INTO item_image(ii_name,ii_status,item_id) VALUES(?,?,?)"); //here the names in the database are used
       $r->execute(array($ii_name,"Active",$item_id));
      
       if ($r->errorCode()!=0){
           $errors = $r->errorInfo();
           echo $errors[2];
       }
       return $item_id;
   }
   
   
   
     public function updateUser($arr,$user_id) {
        global $con;
        
        $r=$con->prepare("UPDATE  user SET user_fname=?,user_lname=?,user_dob=?,user_gender=?,user_tel=?,user_nic=?,user_add=?,dis_id=?, role_id=? WHERE user_id=?");
        $r->execute(array($arr['user_fname'],$arr['user_lname'],$arr['user_dob'],$arr['user_gender'],$arr['user_tel'],$arr['user_nic'],$arr['user_address'],$arr['dis'],$arr['role_id'],$user_id));
       // $user_id=$con->lastinsertId();
       
        
        if($r->errorCode() != 0){
            $errors = $r->errorinfo();
            echo $errors[2];
        }
         return $r;
    }
   
    
     public function deleteAnItem($item_id) {
        global $con;
        //print_r($arr);
        $r=$con->prepare("DELETE FROM item WHERE item_id=?");
        $r->execute(array($item_id));
       
       
        
        if($r->errorCode() != 0){
            $errors = $r->errorinfo();
            echo $errors[2];
        }
         return $r;
    }
    
    
   public function updateUserImage($user_id,$user_image_new,$user_tmp){
       global $con;
       $r=$con->prepare("UPDATE user SET user_image=? WHERE user_id=?");
       $r->execute(array($user_image_new,$user_id));
       if ($r){
           $path="../images/user_images/".$user_image_new;
           move_uploaded_file($user_tmp, $path);           
       }
       return $r;
   }
   
   public function viewUserLog() {
        global $con;
        $r=$con->prepare("SELECT * FROM user u, log l WHERE  u.user_id=l.user_id ORDER BY u.user_id DESC");
        $r->execute();
        return $r;             
   } 
   
   public function checkModel($model) { //like code in mine(the model is unique for each item. so cannot add it twice
        global $con;
        $r=$con->prepare("SELECT * FROM item WHERE model=?");
        $r->execute(array($model));
        return $r;             
   }
   
   public function getItemsField1($field,$id) { 
        global $con;
        $r=$con->prepare("SELECT * FROM item WHERE $field='$id'");
        $r->execute();
        return $r;             
   }
   
   public function getItemsField2($field1,$id1,$field2,$id2) { 
        global $con;
        $r=$con->prepare("SELECT * FROM item WHERE $field1='$id1' AND $field2='$id2'");
        $r->execute();
        return $r;             
   }
   
   public function getItemsField3($field1,$id1,$field2,$id2,$field3,$id3) { 
        global $con;
        $r=$con->prepare("SELECT * FROM item WHERE $field1='$id1' AND $field2='$id2' AND $field3='$id3'");
        $r->execute();
        return $r;             
   }
   
    public function getItemsCatBrand($item_id) { 
        global $con;
        $r=$con->prepare("SELECT * FROM item i,brand b,category c WHERE item_id=? AND i.brand_id=b.brand_id AND c.cat_id=i.cat_id");
        $r->execute(array($item_id));
        return $r;             
   }
   
   //for website
     public function getLatestItems() { 
        global $con;
        $r=$con->prepare("SELECT * FROM item i,brand b,category c WHERE i.brand_id=b.brand_id AND c.cat_id=i.cat_id ORDER BY i.item_id DESC LIMIT 0,3");
        $r->execute();
        return $r;             
   }
   
   
}

?>