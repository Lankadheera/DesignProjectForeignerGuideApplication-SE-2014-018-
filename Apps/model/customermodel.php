<?php

class customer {

    public function checkCusLoging($cus_email,$cus_pwd) {
        global $con;
        $r=$con->prepare("SELECT * FROM customer WHERE  cus_email=? AND cus_pwd=?");
        $r->execute(array($cus_email,$cus_pwd));
        return $r;             
   } 
   public function viewCustomer($cus_id) {
        global $con;
        $r=$con->prepare("SELECT * FROM customer WHERE  cus_id=?");
        $r->execute(array($cus_id));
        return $r;             
   } 
   
}

?>