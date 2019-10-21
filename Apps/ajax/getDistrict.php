<?php
include '../common/dbconnection.php';
include '../model/districtmodel.php';

$pro_id = $_GET['q'];

$obdis = new district();
$resultdistrict= $obdis->displayDistrictPerPro($pro_id);
?>

<select name="dis" id="dis_id" class="form-control" onchange="displayCities(this.value)"> <!-- onchange here coz when select district the cities under it should come here -->
    <option value="">Select a District</option>
    <?php 
        while ($rowdistrict=$resultdistrict->fetch(PDO::FETCH_BOTH)){ ?>
        <option value="<?php echo $rowdistrict['id']; ?>"> <!-- since the province is selected the id relevant to it is selected -->
    <?php echo $rowdistrict['name_en']; ?></option> <!-- to display the provinces on the form from the database -->
    <?php } ?>
</select>
