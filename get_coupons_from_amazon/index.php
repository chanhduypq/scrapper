<?php 
include 'config.php';

$orderBy = 'used_today ASC';

$classForExpiry = $classForUsedToday = '';

$order_key = 'used_today';
$order_value = 'asc';

$used_today = '1';

if (count($_POST) == 0) {
    $where = ' WHERE 1=1';
    $type = 'all';
    $used_today = '1';
    $classForUsedToday = ' headerSortDown';
} else {
    $used_today = $_POST['used_today'];
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
    if ($_POST['type'] == 'all') {
        if ($used_today == '1') {
            $where = ' WHERE 1=1 AND (used_today_groupon is not null OR used_today_retailmenot is not null)';
        } else {
            $where = ' WHERE 1=1';
        }

        $type = 'all';
    } else if ($_POST['type'] == 'groupon') {
        if ($used_today == '1') {
            $where = ' WHERE title_retailmenot is null AND used_today_groupon is not null';
        } else {
            $where = ' WHERE title_retailmenot is null';
        }

        $type = 'groupon';
    } else if ($_POST['type'] == 'retailmenot') {
        if ($used_today == '1') {
            $where = ' WHERE title_groupon is null AND used_today_retailmenot is not null';
        } else {
            $where = ' WHERE title_groupon is null';
        }

        $type = 'retailmenot';
    } else if ($_POST['type'] == 'both') {
        if ($used_today == '1') {
            $where = ' WHERE title_groupon is not null AND title_retailmenot is not null AND (used_today_groupon is not null OR used_today_retailmenot is not null)';
        } else {
            $where = ' WHERE title_groupon is not null AND title_retailmenot is not null';
        }

        $type = 'both';
    }
}

$conn = mysqli_connect($config['db_host'], $config['db_user'], $config['db_pass'], $config['db_name']);

$coupons = array();

$result = mysqli_query($conn, "SELECT * FROM coupon_both_view $where ORDER BY $order_key $order_value");

while ($coupon = mysqli_fetch_array($result)) {

    if ($coupon['used_today'] != '' || $used_today == '0') {
        $coupons[] = $coupon;
    }
}


$countGroupon = $countRetailmenot = $countBoth = 0;
$created_at_label = '';
if ($used_today == '1') {
    $result = mysqli_query($conn, "SELECT count(*) as count FROM coupon_both WHERE title_retailmenot is null AND used_today_groupon is not null");
} else {
    $result = mysqli_query($conn, "SELECT count(*) as count FROM coupon_both WHERE title_retailmenot is null");
}

if ($row = mysqli_fetch_array($result)) {
    $countGroupon = $row['count'];
}
$result = mysqli_query($conn, "SELECT DATE_FORMAT(created_at,'%d %b %Y----%h:%i %p') as created_at_label FROM coupon_both WHERE title_retailmenot is null");
if ($row = mysqli_fetch_array($result)) {
    $created_at_label = $row['created_at_label'];
}

if ($used_today == '1') {
    $result = mysqli_query($conn, "SELECT count(*) as count FROM coupon_both WHERE title_groupon is null AND used_today_retailmenot is not null");
} else {
    $result = mysqli_query($conn, "SELECT count(*) as count FROM coupon_both WHERE title_groupon is null");
}

if ($row = mysqli_fetch_array($result)) {
    $countRetailmenot = $row['count'];
}
$result = mysqli_query($conn, "SELECT DATE_FORMAT(created_at,'%d %b %Y----%h:%i %p') as created_at_label FROM coupon_both WHERE title_groupon is null");
if ($row = mysqli_fetch_array($result)) {
    if ($created_at_label == '') {
        $created_at_label = $row['created_at_label'];
    }
}

if ($used_today == '1') {
    $result = mysqli_query($conn, "SELECT count(*) as count FROM coupon_both WHERE title_groupon is not null AND title_retailmenot is not null AND (used_today_groupon is not null OR used_today_retailmenot is not null)");
} else {
    $result = mysqli_query($conn, "SELECT count(*) as count FROM coupon_both WHERE title_groupon is not null AND title_retailmenot is not null");
}

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
        <link href="public/css/menu.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="public/js/jquery-ui-1.10.3/themes/smoothness/jquery-ui.css" type="text/css"/>
        <script type="text/javascript" src="public/js/jquery-2.0.3.js"></script>
        <script type="text/javascript" src="public/js/jquery-ui-1.10.3/ui/jquery-ui.js"></script>
        <script type="text/javascript" src="public/js/jquery.canvasjs.min.js"></script>
        <script type="text/javascript">
            function getCouponCode(input) {
                window.location = 'get_coupons_from_amazon.php';
                input.setAttribute('disabled', 'disabled');
            }
            jQuery(function ($) {
                $("#checkbox_used_today").change(function () {
                    if ($(this).is(':checked')) {
                        $("#used_today").val('1');
                    } else {
                        $("#used_today").val('0');
                    }
                    $("form").submit();
                });
                $("th.used_today.header").click(function () {
                    if ($(this).hasClass('headerSortDown')) {
                        $("#order_key").val('used_today');
                        $("#order_value").val('desc');
                    } else if ($(this).hasClass('headerSortUp')) {
                        $("#order_key").val('used_today');
                        $("#order_value").val('asc');
                    } else {
                        $("#order_key").val('used_today');
                        $("#order_value").val('asc');
                    }
                    $("form").submit();
                });
                $("th.expire.header").click(function () {
                    if ($(this).hasClass('headerSortDown')) {
                        $("#order_key").val('expire_root');
                        $("#order_value").val('desc');
                    } else if ($(this).hasClass('headerSortUp')) {
                        $("#order_key").val('expire_root');
                        $("#order_value").val('asc');
                    } else {
                        $("#order_key").val('expire_root');
                        $("#order_value").val('asc');
                    }
                    $("form").submit();
                });

                $("#topnav li").click(function () {
                    if ($(this).hasClass('active')) {
                        return;
                    }
                    if ($(this).attr('id') == 'all') {
                        $("#type").val('all');
                    } else if ($(this).attr('id') == 'groupon') {
                        $("#type").val('groupon');
                    } else if ($(this).attr('id') == 'retailmenot') {
                        $("#type").val('retailmenot');
                    } else if ($(this).attr('id') == 'both') {
                        $("#type").val('both');
                    }
                    $("form").submit();
                });

                dialogLogin = $("#dialog-Used").dialog({
                    autoOpen: false,
                    show: {
                        effect: "blind",
                        duration: 1000
                    },
                    hide: {
                        effect: "explode",
                        duration: 1000
                    },
                    height: 600,
                    width: 850,
                    modal: true,
                    buttons: {
                        "Close": function () {
                            dialogLogin.dialog("close");
                        }
                    }
                });



                jQuery(".code").click(function () {
                    class_this = $(this).attr('class').split(' ');
                    class_this = class_this[1];
                    class_this = class_this.replace('_type', '');
                    $.ajax({
                        url: 'coupon_detail.php?code=' + $.trim($(this).html()) + '&type=' + class_this,
                        success: function (data, textStatus, jqXHR) {
                            if ($.trim(data) != '') {
                                eval(data);
                                dialogLogin.dialog("open");
                            }
                        }
                    });

                });
            });



        </script>
    </head>

    <body>
        <div id="dialog-Used" title="Used" style="display: none;">
            <div id="chartContainer" style="height: 500px; width: 100%;"></div>
        </div>

        <div class="left">&nbsp;</div>
        <div class="center">
            <div style="float: right;padding: 20px;">
                <input type="button" value="Get coupons" style="cursor: pointer;" onclick="getCouponCode(this);"/>
            </div>
            <div style="float: right;padding: 20px;font-weight: bold;">
<?php
echo str_replace('-', '&nbsp;', strtolower($created_at_label));
?>
            </div>
            <div style="clear: both"></div>
            <form method="POST" action="index.php">
                <input type="hidden" value="<?php echo $order_key; ?>" name="order_key" id="order_key"/>
                <input type="hidden" value="<?php echo $order_value; ?>" name="order_value" id="order_value"/>
                <input type="hidden" name="type" id="type" value="<?php echo $type; ?>"/>
                <input type="hidden" name="used_today" id="used_today" value="<?php echo $used_today; ?>"/>
            </form>     
            <ul id="topnav">
                <li id="all"<?php if ($type == 'all') echo ' class="active"'; ?>><a>All (<?php echo $countGroupon + $countRetailmenot + $countBoth; ?>)</a></li>
                <li id="groupon"<?php if ($type == 'groupon') echo ' class="active"'; ?>><a>Groupon (<?php echo $countGroupon; ?>)</a></li>
                <li id="retailmenot"<?php if ($type == 'retailmenot') echo ' class="active"'; ?>><a>Retailmenot (<?php echo $countRetailmenot; ?>)</a></li>
                <li id="both"<?php if ($type == 'both') echo ' class="active"'; ?>><a>Both (<?php echo $countBoth; ?>)</a></li>
            </ul>
            <label style="cursor: pointer;margin-left: 50px;">
                <input type="checkbox" id="checkbox_used_today"<?php if ($used_today == '1') { ?> checked="checked"<?php } ?>/>
                used today is not empty
            </label>            
            <div style="width: 100%;margin: 0 auto;text-align: center;">
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
                            <th class="used_today header<?php echo $classForUsedToday; ?>">
                                used today
                            </th>
                            <th class="expire header<?php echo $classForExpiry; ?>">
                                expiry
                            </th>
                        </tr>
                    </thead>
                    <tbody>
<?php
foreach ($coupons as $coupon) {
    if ($coupon['title_groupon'] != '' && $coupon['title_retailmenot'] != '') {
        $type = 'both_type';
    } else {
        if ($coupon['title_groupon'] != '') {
            $type = 'groupon_type';
        } else {
            $type = 'retailmenot_type';
        }
    }
    ?>
                            <tr>
                                <td class="code <?php echo $type; ?>">
                            <?php echo $coupon['code']; ?>
                                </td>
                                <td class="first_added">
                            <?php echo $coupon['added_date']; ?>
                                </td>
                                <td class="groupon">
                            <?php echo $coupon['title_groupon']; ?>
                                </td>
                                <td class="retailmenot">
                            <?php echo $coupon['title_retailmenot']; ?>
                                </td>
                                <td class="used_today">
    <?php
    echo $coupon['used_today'];
//                               if($coupon['used_today_groupon']!=''&&$coupon['used_today_retailmenot']!=''){
//                                   if($coupon['used_today_groupon']>$coupon['used_today_retailmenot']){
//                                       echo $coupon['used_today_groupon'];
//                                   }
//                                   else{
//                                       echo $coupon['used_today_retailmenot'];
//                                   }
//                               }
//                               else{
//                                   if($coupon['used_today_groupon']!=''){
//                                       echo $coupon['used_today_groupon'];
//                                   }
//                                   else{
//                                       echo $coupon['used_today_retailmenot'];
//                                   }
//                               }
    ?>
                                </td>
                                <td class="expire">
                                    <?php echo $coupon['expire']; ?>
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
