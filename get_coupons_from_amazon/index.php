<?php 
$conn = mysqli_connect('localhost', 'root', '', 'db');

$coupons = array();

$result = mysqli_query($conn, "SELECT used_today,coupon.code,coupon.title,DATE_FORMAT(coupon.expire,'%d %m %Y') as expire,coupon.source FROM coupon ORDER BY created_at DESC");
while ($row = mysqli_fetch_array($result)) {
    if ($row['source'] == 'https://www.groupon.com/coupons/stores/amazon.com') {
        $coupons[$row['code']]['groupon'] = $row;
    }
    if ($row['source'] == 'https://www.retailmenot.com/view/amazon.com') {
        $coupons[$row['code']]['retailmenot'] = $row;
    }
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
        <link href="public/css/paging.css" rel="stylesheet" type="text/css"/>
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
            <div style="width: 100%;margin: 0 auto;text-align: center;">
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
                            <th class="used_today">
                                used today
                            </th>
                            <th class="expire">
                                Expiry
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        foreach ($coupons as $code=>$coupon){?>
                        <tr>
                            <td class="code">
                                <?php echo $code;?>
                            </td>
                            <td class="groupon">
                                <?php 
                                if(isset($coupon['groupon'])){
                                    echo $coupon['groupon']['title'];
                                }
                                ?>
                            </td>
                            <td class="retailmenot">
                                <?php 
                                if(isset($coupon['retailmenot'])){
                                    echo $coupon['retailmenot']['title'];
                                }
                                ?>
                            </td>
                            <td class="used_today">
                                <?php 
                                if (isset($coupon['groupon']) && $coupon['groupon']['used_today'] != '') {
                                    echo $coupon['groupon']['used_today'];
                                } else if (isset($coupon['retailmenot']) && $coupon['retailmenot']['used_today'] != '') {
                                    echo $coupon['retailmenot']['used_today'];
                                }
                                    ?>
                            </td>
                            <td class="expire">
                                <?php 
                                $grouponExpire=$retailmenotExpire='';
                                if (isset($coupon['groupon']) && $coupon['groupon']['expire'] != '') {
                                    $grouponExpire= $coupon['groupon']['expire'];
                                }
                                if (isset($coupon['retailmenot']) && $coupon['retailmenot']['expire'] != '') {
                                    $retailmenotExpire= $coupon['retailmenot']['expire'];
                                }
                                if ($grouponExpire != '' && $retailmenotExpire != '') {
                                    list($d, $m, $y) = explode(' ', $grouponExpire);
                                    $date1 = new DateTime("$y-$m-$d 01:01:01");
                                    list($d, $m, $y) = explode(' ', $retailmenotExpire);
                                    $date2 = new DateTime("$y-$m-$d 01:01:01");
                                    if ($date1 > $date2) {
                                        echo $retailmenotExpire;
                                    } else {
                                        echo $grouponExpire;
                                    }
                                } else {
                                    if ($grouponExpire != '') {
                                        echo $grouponExpire;
                                    } else if ($retailmenotExpire != '') {
                                        echo $retailmenotExpire;
                                    }
                                }
                                ?>
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
