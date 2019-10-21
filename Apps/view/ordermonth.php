<?php

include '../common/sessionhandling.php';
include '../common/dbconnection.php';
include '../model/usermodel.php';
include '../model/logmodel.php';
include '../model/ordermodel.php';

$oblog=new log();


$obuser=new user();
$ru=$obuser->viewAllUser(); //result user
$nor=$ru->rowCount();
//echo $nor;

$rau=$obuser->viewUserByStatus("Active"); //result active user
$noau=$rau->rowCount();

$rdu=$obuser->viewUserByStatus("Deactive"); //result deactive user
$nodu=$rdu->rowCount();

//$cdate= date("Y-m-d");
//$fdate= date('Y-m-d', strtotime($cdate.'-7 days'));

$oborder =new order();

$year = date("Y");
//the array to count
$arr1=array();
for($i=1;$i<=12;$i++){
    $m=$year."-".sprintf("%02d",$i);
    $r=$oborder->getOrderByMonth($m);
    $c=$r->rowCount();
    array_push($arr1, $c);
    
}
//array for the months
$arr2=array("Jan","feb","March","april","may","june","july","aug","sept","oct","nov","dec");


?>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>SOS</title>
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" type="text/css"/>
        <link rel="stylesheet" href="../css/style.css" type="text/css"/>
        <link rel="stylesheet" href="../plugins/font-awesome-4.7.0/css/font-awesome.min.css"/>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <!--for fusion charts-->
        <script type="text/javascript" src="../fusioncharts/js/fusioncharts.js"></script>
        <script type="text/javascript" src="../fusioncharts/js/themes/fusioncharts.theme.zune.js"></script>
        <script type="text/javascript" src="../fusioncharts/js/themes/fusioncharts.theme.carbon.js"></script>
        <script type="text/javascript" src="../fusioncharts/js/themes/fusioncharts.theme.ocean.js"></script>
        <script type="text/javascript" src="../fusioncharts/js/themes/fusioncharts.theme.fint.js"></script>

        <script>
            FusionCharts.ready(function () {
    var revenueChart = new FusionCharts(
            {
        type: 'column2d',
        renderAt: 'chart1',
        width: '100%',
        height: '350',
        dataFormat: 'json',
        dataSource: {
            "chart": {
                "caption": "Current Year Order Details",
                "subCaption": "Order graph",
                "xAxisName": "Tests",
                "yAxisName": "Energy Points",
            
                "paletteColors": "#0075c2",
                "bgColor": "#ffffff",
                "borderAlpha": "20",
                "canvasBorderAlpha": "0",
                "usePlotGradientColor": "0",
                "plotBorderAlpha": "10",
                "placevaluesInside": "1",
                "rotatevalues": "1",
                "valueFontColor": "#ffffff",                
                "showXAxisLine": "1",
                "xAxisLineColor": "#999999",
                "divlineColor": "#999999",               
                "divLineIsDashed": "1",
                "showAlternateHGridColor": "0",
                "subcaptionFontBold": "0",
                "subcaptionFontSize": "14"
            },            
            "data": [
              <?php foreach($arr1 as $k=>$v){ ?>
                {
                    "label": "<?php echo $arr2[$k];?>",
                    "value": "<?php echo $arr1[$k];?>" //or $v
                },
              <?php } ?>
            ],
            "trendlines": [
                {
                    "line": [
                        {
                            "startvalue": "4",
                            "color": "#1aaf5d",
                            "valueOnRight": "0",
                            "thickness":"2",
                            "displayvalue": "Start"
                        },
                        {
                    "startValue": "2",
                    "parentYAxis": "s",
                     "valueOnRight": "1",
                    "color": "#f2c500",
                     "thickness":"2",
                    "displayvalue": "Average"
                }
                    ]
                    
                }
            ]
            
        }
    }).render();
});
            </script>
      
    </head>
    <body>
        <div id="main">
            <div id="heading">
                <?php include '../common/header.php'; ?>
                <!-- to display name and image beside logout -->
            </div>
            <div id="navi" style="background: #f5f5f5">
                <div class="row">
                    <div class="col-md-4 col-sm-6 paddinga">
                    <img class="style1" src="<?php echo $iname; ?>" />
                    <?php echo $userInfo['role_name']; ?>
                    </div>
                    <div class="col-md-8 col-sm-6" style="text-align: right">
                        <ol class="breadcrumb">
                            <li><a href="dashboard.php">Dashboard</a></li>
                            <li><a href="report.php">Reports</a></li>
                            <li class="active">Current year Order details by Month Report</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                   <?php include '../common/modules.php'; ?>
                    
                    <div class="col-md-9 col-sm-8">Current year Order details Month Report
                        <div>
                            <div id="chart1"><a
                        </div> 
                           
                </div>
            </div>
            <div id="footer"> <?php include '../common/footer.php';?> </div>
            
        </div>
    </body>
    
 
</html>
