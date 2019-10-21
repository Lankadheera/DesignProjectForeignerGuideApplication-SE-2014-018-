<?php

include '../common/sessionhandling.php';
include '../common/dbconnection.php';
include '../model/usermodel.php';
include '../model/logmodel.php';

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
        
        
        <script>
            google.charts.load('current', {'packages':['line', 'corechart']});
      google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

//      var button = document.getElementById('change-chart');
      var chartDiv = document.getElementById('chart_div');

      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Date');
      data.addColumn('number', "No of Logins per Day");
//      data.addColumn('number', "Average Hours of Daylight");

      data.addRows([
          <?php for($i=0;$i<=6;$i++){ 
              $date= date('Y-m-d', strtotime($cdate. "-$i days"));
              
              $r=$oblog->countlogFrequency($date);
              $n=$r->rowCount();
              
              ?>
          ["<?php echo $date; ?> ", <?php echo $n; ?>],
          <?php } ?>
        
      ]);

      var materialOptions = {
        chart: {
          title: 'Login Frequency for Current Week'
        },
        width: 900,
        height: 500,
        series: {
          // Gives each series an axis name that matches the Y-axis below.
          0: {axis: 'Frequency'},
          1: {axis: 'Login'}
        },
        axes: {
          // Adds labels to each axis; they don't have to match the axis names.
          y: {
            Frequency: {label: 'Frequency'},
            Login: {label: 'Login'}
          }
        }
      };

      var classicOptions = {
        title: 'Average Temperatures and Daylight in Iceland Throughout the Year',
        width: 900,
        height: 500,
        // Gives each series an axis that matches the vAxes number below.
        series: {
          0: {targetAxisIndex: 0},
          1: {targetAxisIndex: 1}
        },
        vAxes: {
          // Adds titles to each axis.
          0: {title: 'Temps (Celsius)'},
          1: {title: 'Daylight'}
        },
        hAxis: {
          ticks: [new Date(2014, 0), new Date(2014, 1), new Date(2014, 2), new Date(2014, 3),
                  new Date(2014, 4),  new Date(2014, 5), new Date(2014, 6), new Date(2014, 7),
                  new Date(2014, 8), new Date(2014, 9), new Date(2014, 10), new Date(2014, 11)
                 ]
        },
        vAxis: {
          viewWindow: {
            max: 30
          }
        }
      };

      function drawMaterialChart() {
        var materialChart = new google.charts.Line(chartDiv);
        materialChart.draw(data, materialOptions);
        button.innerText = 'Change to Classic';
        button.onclick = drawClassicChart;
      }

      function drawClassicChart() {
        var classicChart = new google.visualization.LineChart(chartDiv);
        classicChart.draw(data, classicOptions);
        button.innerText = 'Change to Material';
        button.onclick = drawMaterialChart;
      }

      drawMaterialChart();

    }
        
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
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div id="contents">
                <div class="row">
                   <?php include '../common/modules.php'; ?>
                    
                    <div class="col-md-9 col-sm-8">Dashboard
                        <div>
                            <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="panel panel-success">
                                        <div class="panel-heading">
                                            <i class="fa fa-user" style="font-size: 48px"></i>
                                            <h4>User Registration:
                                                <i class="badge"><?php echo $nor; ?></i></h4>
                                        </div>
                                    </div>
                                
                                
                                </div>
                                <div class="col-lg-4">
                                     <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <i class="fa fa-user-circle" style="font-size: 48px"></i>
                                            <h4>Number of Active Users:
                                                <i class="badge"><?php echo $noau; ?></i></h4>
                                            </h4>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="col-lg-4">
                                     <div class="panel panel-danger">
                                        <div class="panel-heading">
                                            <i class="fa fa-user-o" style="font-size: 48px"></i>
                                            <h4>Number of Deactive Users:
                                                <i class="badge"><?php echo $nodu; ?></i></h4>
                                            </h4>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            </div>
                            
                        </div>
                    
                        <div class="container-fluid">
                            <div class="panel panel-success">
                                <div class="panel-heading">Login frequency</div>
                                <div class="panel-body">
                                    <div id="chart_div"></div>
                                    
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div id="footer"> <?php include '../common/footer.php';?> </div>
            
        </div>
    </body>
</html>
