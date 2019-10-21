<?php

class dbconnection {

    function dbcon() {
    //to connect the database
        $host="localhost";
        $un="root";
        $pd="";
        $db="sos1";
        
        $con=new PDO("mysql:host=$host;dbname=$db","$un","$pd");
        return $con;
    }

}  

$ob = new dbconnection();
$con = $ob->dbcon();
?>
