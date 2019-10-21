<?php

class payment{

    

 public function addPayment($cus_id,$order_id,$totp,$dis) {
      // print_r($arr[]);
       global $con;
       $r=$con->prepare("INSERT INTO payment (pay_date,cus_id,order_id,pay_amount,discount) VALUES(NOW(),?,?,?,?)"); //here the names in the database are used
       $r->execute(array($cus_id,$order_id,$totp,$dis));
       $pay_id=$con->lastinsertId();
      
       if ($r->errorCode()!=0){
           $errors = $r->errorInfo();
           echo $errors[2];
       }
       return $pay_id; //pay_id is taken as the invoice_id
   }
   
public function viewPayment($order_id) {
      // print_r($arr[]);
       global $con;
       $r=$con->prepare("SELECT * from payment WHERE order_id=?"); //here the names in the database are used
       $r->execute(array($order_id));
       
      
       if ($r->errorCode()!=0){
           $errors = $r->errorInfo();
           echo $errors[2];
       }
       return $r;
   }
   
    
}
?>

