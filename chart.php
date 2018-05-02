<?php
define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('DB_NAME', 'hms');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection

$d=$_POST['date1'];
echo $d;
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$query= "Select DISTINCT doctorSpecialization as 'X' from appointment";
$result = mysqli_query($con,$query);
$x=array();
while($row = mysqli_fetch_assoc($result))
  {   array_push($x,$row['X']);
}
$query="Select";
$i;
for($i=0; $i<sizeof($x)-1;$i++){
	$query.=" SUM(CASE WHEN doctorSpecialization ='".$x[$i]."' THEN 1 ELSE 0 END ) AS '".$x[$i]."',";
}
$query.=" SUM(CASE WHEN doctorSpecialization ='".$x[$i]."' THEN 1 ELSE 0 END ) AS '".$x[$i]."' FROM appointment Where appointmentDate LIKE '%2018-03-23%';";


$result = mysqli_query($con,$query);
$y=array();
$i=1;
while($row = mysqli_fetch_assoc($result)){
	$y=$row;
	
}
mysqli_close($con);

$y=implode(",",$y);
//$x= implode(",",$x);
$date="23-03-2018";

?>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Highcharts Example</title>

		<style type="text/css">
#container {
	min-width: 310px;
	max-width: 800px;
	height: 400px;
	margin: 0 auto
}
		</style>
	</head>
	<body>
	<table>
	<th> <td>No</td> <td>Specialization</td></th>
	<?php for($i=0;$i<sizeof($x);$i++)

		echo "<tr><td>".($i)."</td><td>".$x[$i]."</td></tr>";
		?>
	</table>
<script src="Highcharts/code/highcharts.js"></script>
<script src="Highcharts/code/modules/exporting.js"></script>

<div id="container" style="min-width: 310px; max-width: 800px; height: 400px; margin: 0 auto"></div>



		<script type="text/javascript">

Highcharts.chart('container', {
    chart: {
        type: 'bar'
    },
    title: {
        text: 'Appointments of different Specialized Doctors'
    },
    subtitle: {
        text: 'For Date <?php echo $date;?>'
    },
    xAxis: {
        categories: [<?php  ?>],
        title: {
            text: 'Different Specialized Doctors'
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Appointents',
            align: 'high'
        },
        labels: {
            overflow: 'justify'
        }
    },
    tooltip: {
        valueSuffix: ' Appointents'
    },
    plotOptions: {
        bar: {
            dataLabels: {
                enabled: true
            }
        }
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'top',
        x: -40,
        y: 80,
        floating: true,
        borderWidth: 1,
        backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
        shadow: true
    },
    credits: {
        enabled: false
    },
    series: [ {
        name: 'Doctor',
        data: [<?php echo $y ?>]
    }]
});
		</script>
	</body>
</html>
</html>