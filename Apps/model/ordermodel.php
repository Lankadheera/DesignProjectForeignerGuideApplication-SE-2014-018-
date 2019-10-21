<?php

class order{

    function checkOrder($session_id) {
       
        global $con;


        $r=$con->prepare("SELECT * FROM `order` WHERE session_id=?");
        $r->execute(array($session_id));     
        if ($r-> errorCode()!=0){
            $errors = $r->errorInfo();
            echo $errors[2];
            
        }
        return $r;

}

 public function addOrder($status,$session_id) {
      // print_r($arr[]);
       global $con;
       $r=$con->prepare("INSERT INTO `order` (order_date,order_status,session_id) VALUES(NOW(),?,?)"); //here the names in the database are used
       $r->execute(array($status,$session_id));
       $order_id=$con->lastinsertId();
      
       if ($r->errorCode()!=0){
           $errors = $r->errorInfo();
           echo $errors[2];
       }
       return $order_id;
   }
   

    public function addTempCart($order_id,$item_id,$quantity,$cart_price,$color_id,$size_id) {
      // print_r($arr[]);
       global $con;
       $r=$con->prepare("INSERT INTO temp_cart (order_id,item_id,quantity,cart_price,color_id,size_id) VALUES(?,?,?,?,?,?)"); //here the names in the database are used
       $r->execute(array($order_id,$item_id,$quantity,$cart_price,$color_id,$size_id));
       $order_id=$con->lastinsertId();
      
       if ($r->errorCode()!=0){
           $errors = $r->errorInfo();
           echo $errors[2];
       }
       return $order_id;
   }
   
      public function addTCart($order_id,$item_id,$quantity,$cart_price,$color_id,$size_id) {
      // print_r($arr[]);
       global $con;
       $r=$con->prepare("INSERT INTO cart (order_id,item_id,quantity,cart_price,color_id,size_id) VALUES(?,?,?,?,?,?)"); //here the names in the database are used
       $r->execute(array($order_id,$item_id,$quantity,$cart_price,$color_id,$size_id));
       
      
       if ($r->errorCode()!=0){
           $errors = $r->errorInfo();
           echo $errors[2];
       }
       return $r;
   }
   
      function viewCart($order_id) {
       
        global $con;
        $r=$con->prepare("SELECT *, SUM(quantity) as qsum, SUM(cart_price) as cpsum FROM temp_cart WHERE order_id=? GROUP BY item_id,color_id,size_id");
        $r->execute(array($order_id));     
        if ($r-> errorCode()!=0){
            $errors = $r->errorInfo();
            echo $errors[2];
            
        }
        return $r;
   
}

function viewCart1($order_id) {
       
        global $con;
        $r=$con->prepare("SELECT *, SUM(quantity) as qsum, SUM(cart_price) as cpsum FROM cart WHERE order_id=? GROUP BY item_id,color_id,size_id");
        $r->execute(array($order_id));     
        if ($r-> errorCode()!=0){
            $errors = $r->errorInfo();
            echo $errors[2];
            
        }
        return $r;
   
}



      function viewTotalCartPrice($order_id) {
       
        global $con;


        $r=$con->prepare("SELECT SUM(cart_price) as tot FROM temp_cart WHERE order_id=?");
        $r->execute(array($order_id));     
        if ($r-> errorCode()!=0){
            $errors = $r->errorInfo();
            echo $errors[2];
            
        }
        return $r;
   
}

function updateOrder($status,$totp,$cus_id,$order_id) {
       
        global $con;


        $r=$con->prepare("UPDATE `order` SET order_status=?, total_price=?, cus_id=? WHERE order_id=? ");
        $r->execute(array($status,$totp,$cus_id,$order_id));     
        if ($r-> errorCode()!=0){
            $errors = $r->errorInfo();
            echo $errors[2];
            
        }
        return $r;
   
}

//for reports order by date range

 function getOrderDetailsByDates($from,$to) {
        global $con;
        $r=$con->prepare("SELECT * FROM `order` a, customer c WHERE a.cus_id=c.cus_id AND order_date between ? and ?");
        $r->execute(array($from,$to));     
        if ($r-> errorCode()!=0){
            $errors = $r->errorInfo();
            echo $errors[2];
            
        }
        return $r;
   
}

function getOrderDetailsByDate($from) {
       
        global $con;


        $r=$con->prepare("SELECT * FROM `order` a, customer c WHERE a.cus_id=c.cus_id AND order_date=?");
        $r->execute(array($from));     
        if ($r-> errorCode()!=0){
            $errors = $r->errorInfo();
            echo $errors[2];
            
        }
        return $r;
   
}

function getOrderByMonth($m) {
       
        global $con;


        $r=$con->prepare("SELECT * FROM `order` a, customer c WHERE a.cus_id=c.cus_id AND order_date LIKE '$m%'");
        $r->execute(array());     
        if ($r-> errorCode()!=0){
            $errors = $r->errorInfo();
            echo $errors[2];
            
        }
        return $r;
   
}

function deleteItemsFromTempCart($order_id) {
       
        global $con;


        $r=$con->prepare("DELETE FROM temp_cart WHERE order_id=?");
        $r->execute(array($order_id));     
        if ($r-> errorCode()!=0){
            $errors = $r->errorInfo();
            echo $errors[2];
            
        }
        return $r;
   
}
}
?>

