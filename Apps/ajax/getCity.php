<?php
include '../common/dbconnection.php';
include '../model/citymodel.php';

$dis_id = $_GET['q'];

$obcity = new city();
$resultcity= $obcity->displayCityPerDis($dis_id);
?>

<select name="city_id" id="city_id" class="form-control" > 
    <option value="">Select a City</option>
    <?php while ($rowcity=$resultcity->fetch(PDO::FETCH_BOTH)){ ?>
        <option value="<?php echo $rowcity['id']; ?>"> <!-- since the district is selected the id relevant to it is selected -->
        <?php echo $rowcity['name_en']; ?></option> <!-- to display the cities on the form from the database -->
    <?php } ?>
</select>
