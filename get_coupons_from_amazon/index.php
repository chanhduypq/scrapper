<?php 
$orderBy = 'created_at DESC';

$classForUsedToday = $classForExpiry = '';
$hrefForUsedToday='index.php?used_today=asc';
$hrefForExpiry='index.php?expiry=asc';
if (isset($_GET['used_today'])) {
    if ($_GET['used_today'] == 'asc') {
        $classForUsedToday = ' headerSortDown';
        $hrefForUsedToday='index.php?used_today=desc';
        $orderBy = 'used_today ASC';
    } else {
        $classForUsedToday = ' headerSortUp';
        $hrefForUsedToday='index.php?used_today=asc';
        $orderBy = 'used_today DESC';
    }
}
if (isset($_GET['expiry'])) {
    if ($_GET['expiry'] == 'asc') {
        $classForExpiry = ' headerSortDown';
        $hrefForExpiry='index.php?expiry=desc';
        $orderBy = 'expire ASC';
    } else {
        $classForExpiry = ' headerSortUp';
        $hrefForExpiry='index.php?expiry=asc';
        $orderBy = 'expire DESC';
    }
}

$conn = mysqli_connect('localhost', 'root', '', 'db');

$coupons = array();

$result = mysqli_query($conn, "SELECT used_today,code,title_groupon,title_retailmenot,DATE_FORMAT(expire,'%d %m %Y') as expire,created_at FROM coupon_both ORDER BY coupon_both.$orderBy");
while ($row = mysqli_fetch_array($result)) {
    $coupons[]=$row;
}


?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Coupon</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="public/css/style.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript">
            function getCouponCode(input){
                window.location='get_coupons_from_amazon.php';
                input.setAttribute('disabled','disabled');
            }
        </script>
    </head>
   
    <body>
        <div class="left">&nbsp;</div>
        <div class="center">
            <div style="float: right;padding: 50px;">
                <input type="button" value="Get coupons" style="cursor: pointer;" onclick="getCouponCode(this);"/>
            </div>
            <div style="clear: both"></div>            
            <div style="width: 100%;margin: 0 auto;text-align: center;">
                <h3 style="text-align: center;width: 100%;">
                    <?php 
                        echo $coupons[0]['created_at'];
                    ?>
                </h3>
                <table style="width: 100%;">
                    <thead>
                        <tr>
                            <th class="code">
                                code
                            </th>
                            <th class="groupon">
                                https://www.groupon.com/coupons/stores/amazon.com
                            </th>
                            <th class="retailmenot">
                                https://www.retailmenot.com/view/amazon.com
                            </th>
                            <th onclick="window.location='<?php echo $hrefForUsedToday;?>';" class="used_today header<?php echo $classForUsedToday;?>">
                                used today
                            </th>
                            <th onclick="window.location='<?php echo $hrefForExpiry;?>';" class="expire header<?php echo $classForExpiry;?>">
                                Expiry
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        foreach ($coupons as $coupon){?>
                        <tr>
                            <td class="code">
                                <?php echo $coupon['code'];?>
                            </td>
                            <td class="groupon">
                                <?php echo $coupon['title_groupon'];?>
                            </td>
                            <td class="retailmenot">
                                <?php echo $coupon['title_retailmenot'];?>
                            </td>
                            <td class="used_today">
                               <?php echo $coupon['used_today'];?>
                            </td>
                            <td class="expire">
                                <?php echo $coupon['expire'];?>
                            </td>
                        </tr>
                        <?php 
                        }
                        ?>
                    </tbody>                    
                </table>
            </div>
        </div>
        <div class="right">&nbsp;</div>
        <div style="clear: both;"></div>
    </body>
</html>
