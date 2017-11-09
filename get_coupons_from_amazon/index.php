<?php 
$orderBy = 'created_at DESC';

$classForUsedToday = $classForExpiry = '';

$order_key = $order_value = '';
if (count($_POST) == 0) {
    $groupon = 'title_retailmenot is null';
    $retailmenot = 'title_groupon is null';
    $both = 'title_groupon is not null AND title_retailmenot is not null';
} else {
    if ($_POST['order_key'] != '') {
        $order_key = $_POST['order_key'];
        $order_value = $_POST['order_value'];
        $orderBy = "$order_key $order_value";

        if ($order_key == 'used_today') {
            if ($order_value == 'asc') {
                $classForUsedToday = ' headerSortDown';
            } else {
                $classForUsedToday = ' headerSortUp';
            }
        } else {
            if ($order_value == 'asc') {
                $classForExpiry = ' headerSortDown';
            } else {
                $classForExpiry = ' headerSortUp';
            }
        }
    }
    if (isset($_POST['groupon'])) {
        $groupon = 'title_retailmenot is null';
    } else {
        $groupon = '1=0';
    }
    if (isset($_POST['retailmenot'])) {
        $retailmenot = 'title_groupon is null';
    } else {
        $retailmenot = '1=0';
    }
    if (isset($_POST['both'])) {
        $both = '(title_groupon is not null AND title_retailmenot is not null)';
    } else {
        $both = '1=0';
    }
}
$where = " WHERE $groupon OR $retailmenot OR $both ";

$conn = mysqli_connect('localhost', 'root', '', 'db');

$coupons = array();

$result = mysqli_query($conn, "SELECT used_today,code,title_groupon,title_retailmenot,DATE_FORMAT(expire,'%d %m %Y') as expire,created_at,DATE_FORMAT(added_date,'%d %m %Y') as added_date,DATE_FORMAT(created_at,'%H:%i:%s-----%d %m %Y') as created_at_label FROM coupon_both $where ORDER BY coupon_both.$orderBy");
while ($row = mysqli_fetch_array($result)) {
    $coupons[] = $row;
}

$countGroupon = $countRetailmenot = $countBoth = 0;
$result = mysqli_query($conn, "SELECT count(*) as count FROM coupon_both WHERE title_retailmenot is null");
if ($row = mysqli_fetch_array($result)) {
    $countGroupon = $row['count'];
}
$result = mysqli_query($conn, "SELECT count(*) as count FROM coupon_both WHERE title_groupon is null");
if ($row = mysqli_fetch_array($result)) {
    $countRetailmenot = $row['count'];
}
$result = mysqli_query($conn, "SELECT count(*) as count FROM coupon_both WHERE title_groupon is not null AND title_retailmenot is not null");
if ($row = mysqli_fetch_array($result)) {
    $countBoth = $row['count'];
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
        <script type="text/javascript" src="public/js/jquery-2.0.3.js"></script>
        <script type="text/javascript">
            function getCouponCode(input){
                window.location='get_coupons_from_amazon.php';
                input.setAttribute('disabled','disabled');
            }
            jQuery(function ($){
                $("th.used_today.header").click(function (){
                    if($(this).hasClass('headerSortDown')){
                        $("#order_key").val('used_today');
                        $("#order_value").val('desc');
                    }
                    else if($(this).hasClass('headerSortUp')){
                        $("#order_key").val('used_today');
                        $("#order_value").val('asc');
                    }
                    else{
                        $("#order_key").val('used_today');
                        $("#order_value").val('asc');
                    }
                    $("form").submit();
                });
                $("th.expire.header").click(function (){
                    if($(this).hasClass('headerSortDown')){
                        $("#order_key").val('expire');
                        $("#order_value").val('desc');
                    }
                    else if($(this).hasClass('headerSortUp')){
                        $("#order_key").val('expire');
                        $("#order_value").val('asc');
                    }
                    else{
                        $("#order_key").val('expire');
                        $("#order_value").val('asc');
                    }
                    $("form").submit();
                });
            });
        </script>
    </head>
   
    <body>
        <div class="left">&nbsp;</div>
        <div class="center">
            <div style="float: right;padding: 50px;">
                <input type="button" value="Get coupons" style="cursor: pointer;" onclick="getCouponCode(this);"/>
            </div>
            <div style="clear: both"></div>
            <form method="POST" action="index.php">
                <label>
                    <input type="checkbox" name="groupon" value="groupon"<?php if(count($_POST)==0||isset($_POST['groupon'])) echo ' checked="checked"';?>/>
                    Just groupon (<?php echo $countGroupon;?>)
                </label>
                <br>
                <label>
                    <input type="checkbox" name="retailmenot" value="retailmenot"<?php if(count($_POST)==0||isset($_POST['retailmenot'])) echo ' checked="checked"';?>/>
                    Just retail me not (<?php echo $countRetailmenot;?>)
                </label>
                <br>
                <label>
                    <input type="checkbox" name="both" value="both"<?php if(count($_POST)==0||isset($_POST['both'])) echo ' checked="checked"';?>/>
                    Coupon on both (<?php echo $countBoth;?>)
                </label>
                <br>
                <input type="hidden" value="<?php echo $order_key;?>" name="order_key" id="order_key"/>
                <input type="hidden" value="<?php echo $order_value;?>" name="order_value" id="order_value"/>
                <input type="submit" value="Go"/>
            </form>            
            <div style="width: 100%;margin: 0 auto;text-align: center;">
                <h3 style="text-align: center;width: 100%;">
                    <?php 
                    if(count($coupons)>0) 
                        echo str_replace ('-', '&nbsp;', $coupons[0]['created_at_label']);
                    ?>
                </h3>
                <table style="width: 100%;">
                    <thead>
                        <tr>
                            <th class="code">
                                code
                            </th>
                            <th class="first_added">
                                first date
                            </th>
                            <th class="groupon">
                                https://www.groupon.com/coupons/stores/amazon.com
                            </th>
                            <th class="retailmenot">
                                https://www.retailmenot.com/view/amazon.com
                            </th>
                            <th class="used_today header<?php echo $classForUsedToday;?>">
                                used today
                            </th>
                            <th class="expire header<?php echo $classForExpiry;?>">
                                expiry
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
                            <td class="first_added">
                                <?php echo $coupon['added_date'];?>
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
