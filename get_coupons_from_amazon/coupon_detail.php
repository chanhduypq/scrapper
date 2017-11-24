<?php
include 'config.php';
$conn = mysqli_connect($config['db_host'], $config['db_user'], $config['db_pass'], $config['db_name']);
$code = str_replace("'", "\'", $_GET['code']);
$type = $_GET['type'];
$result = mysqli_query($conn, "SELECT used_groupon,used_retailmenot,DATE_FORMAT(used_date,'%Y, %m, %d') as used_date FROM coupon_detail WHERE coupon_code='$code' ORDER BY coupon_detail.used_date ASC");
$rows = array();

while ($row = mysqli_fetch_array($result)) {
    $rows[$row['used_date']] = $row;
}

if (count($rows) == 0) {
    echo '';
    exit;
} 

$groupon=$retailmenot='';
foreach ($rows as $key => $row) {
    list($y,$m,$d)= explode(', ', $row['used_date']);
    $date="$y, ".($m-1).", $d";
    $groupon.="{ x: new Date(".$date."), y: ".($row['used_groupon']==''?0:$row['used_groupon'])." },";
    $retailmenot.="{ x: new Date(".$date."), y: ".($row['used_retailmenot']==''?0:$row['used_retailmenot'])." },";
}
$groupon= rtrim($groupon,',');
$retailmenot= rtrim($retailmenot,',');
?>
chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
        title: {
                text: "<?php echo $code;?>"
        },
        axisX: {
                valueFormatString: "DD MMM YYYY",
                title: "Date"
        },
        axisY: {
                title: "Used",
        },
        toolTip: {
                shared: true
        },
        legend: {
                cursor: "pointer",
                verticalAlign: "top",
                horizontalAlign: "center",
                dockInsidePlotArea: false
        },
        data: [
        <?php 
        if($type=='both'||$type=='groupon'){?>
        {
                type:"line",
                axisYType: "primary",
                name: "groupon",
                showInLegend: true,
                markerType: "square", 
                yValueFormatString: "#,###",
                dataPoints: [		
                        <?php echo $groupon;?>
                ]
        }
        <?php 
        }
        if ($type=='both') echo ',';
        if($type=='both'||$type=='retailmenot'){
        ?>
        {
                type: "line",
                axisYType: "primary",
                name: "retailmenot",
                showInLegend: true,
                markerType: "triangle", 
                yValueFormatString: "#,###",
                dataPoints: [   
                        <?php echo $retailmenot;?>
                ]
        }
        <?php 
        }
        ?>
        ]
});
chart.render();

