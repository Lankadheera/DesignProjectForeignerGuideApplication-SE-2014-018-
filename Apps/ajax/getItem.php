<?php
include '../common/dbconnection.php';
include '../model/itemmodel.php';

$cat_id=$_GET['q1'];
$brand_id=$_GET['q2'];
$model=$_GET['q3'];

$obitem=new item();

//echo $cat_id."/".$brand_id."/".$model;

if ($cat_id!="" && $brand_id=="" && $model==""){
   $id=$cat_id;
   $field="cat_id"; //in item table the name
   $status=1;
}

if ($cat_id=="" && $brand_id!="" && $model==""){
   $id=$brand_id;
   $field="brand_id";
   $status=1;
}

if ($cat_id=="" && $brand_id=="" && $model!=""){
   $id=$model;
   $field="model";
   $status=1;
}

if ($cat_id!="" && $brand_id!="" && $model==""){
   $id1=$cat_id;
   $id2=$brand_id;
   $field1="cat_id"; //in item table the name
   $field2="brand_id";
   $status=2;
}

if ($cat_id!="" && $brand_id=="" && $model!=""){
   $id1=$cat_id;
   $id2=$model;
   $field1="cat_id"; //in item table the name
   $field2="model";
   $status=2;
}

if ($cat_id=="" && $brand_id!="" && $model!=""){
   $id1=$brand_id;
   $id2=$model;
   $field1="brand_id"; //in item table the name
   $field2="model";
   $status=2;
}

if ($cat_id!="" && $brand_id!="" && $model!=""){
   $id1=$brand_id;
   $id2=$model;
   $id3=$cat_id;
   $field1="brand_id";
   $field2="model";
   $field3="cat_id";$status=3;
}

 
if ($status==1){
    $result=$obitem->getItemsField1($field, $id);   
}

if ($status==2){
    $result=$obitem->getItemsField2($field1, $id1, $field2, $id2);   
}

if ($status==3){
    $result=$obitem->getItemsField3($field1, $id1, $field2, $id2, $field3, $id3);   
}
?>


 <table class=" ui celled table" >
                            <thead>
                                <tr>
                                    <th>&nbsp;</th>
                                    <th>Item ID</th>
                                    <th>Item Name</th>
                                    <th>Model</th>
                                    <th>Brand Name</th>
                                    <th>Category</th>
                                   
                                    <th>&nbsp;</th>
                                    
                               
                                </tr>
                            </thead>
                            <tbody>
                                <?php while ($row=$result->fetch(PDO::FETCH_BOTH)){
                                    
                                    
                                       
                                    $item_id=$row['item_id'];
                                                                          
                                       
                                        $resultimage=$obitem->viewItemImage($item_id);
                                        $noi=$resultimage->rowCount();
                                        
                                        if ($noi){
                                            $rowall=$resultimage->fetchAll();
                                            foreach($rowall as $k=>$v){
                                                $im=$v['ii_name'];
                                            }                                           
                                           $path="../images/item_images/".$im;
                                            
                                        }else{
                                            $path="../images/Product.png";
                                        }
                               
                                $resultcb=$obitem->getItemsCatBrand($item_id);
                                $rowcb=$resultcb->fetch(PDO::FETCH_BOTH);
                                
                                
                            ?>
                            <tr>
                                <td><img src="<?php echo $path; ?>" height="20" /></td> 
                                <td><?php echo $row['item_id']; ?></td>
                                <td><?php echo $row['item_name']; ?></td>
                                <td><?php echo $row['model']; ?></td>
                                <td><?php echo $rowcb['brand_name']; ?></td>
                                <td><?php echo $rowcb['cat_name']; ?></td>
                                
                                <td> 
                                     
                                    <a href="../view/addastock.php?item_id=<?php echo $row['item_id']; ?>">
                                        <button type="button" class="btn btn-sm btn-primary"> Add </button></a>
                                        
                                    
                                </td>
                                
                                
                            </tr>
                            <?php } ?>
                            </tbody>                           
                        </table>