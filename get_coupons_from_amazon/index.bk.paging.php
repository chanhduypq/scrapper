<?php 
$numberRowPerPage = 10;
$rangeCount = 3;

if (isset($_GET['page']) && ctype_digit($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = 1;
}
$offset = ($page - 1) * $numberRowPerPage;

$conn = mysqli_connect('localhost', 'root', '', 'db');

$coupons = array();

$result = mysqli_query($conn, "SELECT count(code) as count FROM coupon_code");
$countCode = 0;
if ($row = mysqli_fetch_array($result)) {
    $countCode = $row['count'];
}

$result = mysqli_query($conn, "SELECT code FROM coupon_code limit $offset,$numberRowPerPage");
$codes = array();
while ($row = mysqli_fetch_array($result)) {
    $codes[] = "'" . $row['code'] . "'";
}

if (count($codes) > 0) {
    $codesIn = implode(',', $codes);
    $result = mysqli_query($conn, "SELECT coupon.code,coupon.title,DATE_FORMAT(coupon.expire,'%m/%d/%Y') as expire,coupon.source FROM coupon WHERE code IN ($codesIn) ORDER BY created_at DESC");
    while ($row = mysqli_fetch_array($result)) {
        if ($row['source'] == 'https://www.groupon.com/coupons/stores/amazon.com') {
            $coupons[$row['code']]['groupon'] = $row;
        }
        if ($row['source'] == 'https://www.retailmenot.com/view/amazon.com') {
            $coupons[$row['code']]['retailmenot'] = $row;
        }
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
            <div style="width: 100%;min-height: 400px;max-height: 400px;overflow-y: auto;margin: 0 auto;text-align: center;">
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
                                    echo $coupon['groupon']['title'].'<div class="expire">'.($coupon['groupon']['expire']!=''?'Expires '.$coupon['groupon']['expire']:'').'</div>';
                                }
                                ?>
                            </td>
                            <td class="retailmenot">
                                <?php 
                                if(isset($coupon['retailmenot'])){
                                    echo $coupon['retailmenot']['title'].'<div class="expire">'.($coupon['retailmenot']['expire']!=''?'Expires '.$coupon['retailmenot']['expire']:'').'</div>';
                                }
                                ?>
                            </td>
                        </tr>
                        <?php 
                        }
                        ?>
                    </tbody>
                    <?php 
                    if ($countCode > 0) {
                        $numberPage = ceil($countCode / $numberRowPerPage);

                        $rangeNumber = ceil($numberPage / $rangeCount);
                        $range = ceil($page / $rangeCount);
                        $start = $range * $rangeCount - ($rangeCount - 1);

                        if ($page == 1) {
                            $hrefPrev = "#";
                            $hrefFirst = "#";
                            $codePrevFirst = "selected";
                        } else {
                            $hrefFirst = "?page=1";
                            $hrefPrev = "?page=" . ($page - 1);
                            $codePrevFirst = "not_selected";
                        }

                        if ($page == $numberPage) {
                            $hrefNext = "#";
                            $hrefLast = "#";
                            $codeNextLast = "selected";
                        } else {
                            $hrefLast = "?page=$numberPage";
                            $hrefNext = "?page=" . ($page + 1);
                            $codeNextLast = "not_selected";
                        }
                    ?>
                    <tfoot>
                        <tr style="height: 50px;background-color: #c1976c;">
                            <td colspan="3" class="pagination">

                                <?php 
                                if ($numberPage>1){?>
                                <span class="<?php echo $codePrevFirst; ?>" onclick="window.location = '<?php echo $hrefFirst; ?>';">
                                    First
                                </span>
                                <span class="<?php echo $codePrevFirst; ?>" onclick="window.location = '<?php echo $hrefPrev; ?>';">
                                    Previous
                                </span>
                                <?php 
                                }
                                ?>
                                <?php
                                if ($numberPage>1){
                                    for ($i = 1; $i <= $rangeCount && $start <= $numberPage; $i++) {
                                        if ($page == $start) {
                                            $href = "#";
                                            $class = 'selected';
                                        } else {
                                            $href = "?page=$start";
                                            $class = 'not_selected';
                                        }
                                        ?>
                                        <span class="<?php echo $class; ?>" onclick="window.location = '<?php echo $href; ?>';">
                                            <?php echo $start; ?>
                                        </span>
                                        <?php
                                        $start++;
                                    }
                                }
                                ?>

                                <?php 
                                if ($numberPage>1){?>
                                <span class="<?php echo $codeNextLast; ?>" onclick="window.location = '<?php echo $hrefNext; ?>';">
                                    Next
                                </span>
                                <span class="<?php echo $codeNextLast; ?>" onclick="window.location = '<?php echo $hrefLast; ?>';">
                                    Last
                                </span>
                                <?php 
                                }
                                ?>

                            </td>
                        </tr>
                    </tfoot>
                    <?php 
                    }
                    ?>
                </table>
            </div>
        </div>
        <div class="right">&nbsp;</div>
        <div style="clear: both;"></div>
    </body>
</html>
