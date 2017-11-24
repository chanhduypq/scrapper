<?php
include 'config.php';

require_once('include/simple_html_dom.php');
set_time_limit(0);

updateCoupon();
updateCouponBoth();

header('Location:index.php');

class CouponGroupon {

    private $rootUrl = "";
    private $allCoupons = array();

    public function __construct($rootUrl = 'https://www.groupon.com/coupons/stores/amazon.com') {
        $this->rootUrl = $rootUrl;
    }

    public function saveDB($host, $username, $password, $databaseName) {
        $this->getAllCoupons();
        if (count($this->allCoupons) == 0) {
            return;
        }
        Coupon::deleteExpireCoupons($host, $username, $password, $databaseName, $this->rootUrl);

        $coupons = Coupon::getCouponsBySource($host, $username, $password, $databaseName, $this->rootUrl);
        $ids = array();
        foreach ($coupons as $coupon) {
            if (in_array($coupon['code'], array_keys($this->allCoupons))) {
                $ids[] = $coupon['id'];
                $this->allCoupons[$coupon['code']]['added_date'] = $coupon['added_date'];
            }
        }
        if (count($ids) > 0) {
            Coupon::deleteByIds($host, $username, $password, $databaseName, $ids);
        }
        Coupon::insertCoupons($host, $username, $password, $databaseName, $this->allCoupons);
    }

    private function getLastPage() {
        $html = file_get_contents($this->rootUrl);

        $htmlDom = new simple_html_dom();
        $htmlDom->load($html);

        $count = $htmlDom->find('p[data-bhw="CouponCount"]', 0)->find("span", 0)->plaintext;

        return ceil(intval($count) / 50);
    }

    public function getAllCoupons() {

        $html = file_get_contents($this->rootUrl);
        $this->allCoupons = array_merge($this->allCoupons, $this->getAllCouponsByHtml($html));
        $lastPage = $this->getLastPage();
        for ($i = 1; $i <= $lastPage - 1; $i++) {
            $html = file_get_contents(rtrim($this->rootUrl, '/') . '?page=' . $i);
            $this->allCoupons = array_merge($this->allCoupons, $this->getAllCouponsByHtml($html));
        }

        return $this->allCoupons;
    }

    public function getAllCouponsByHtml($html) {
        $allCoupons = array();

        $htmlDom = new simple_html_dom();
        $htmlDom->load($html);

        foreach ($htmlDom->find('div[class="coupon row"]') as $node) {
            if ($node->find('div[class="reveal-code-wrapper"]', 0) != NULL) {
                $title = $node->find('a[class="coupon-click affiliate-url"]', 0)->find('span', 0)->plaintext;
                $code = $node->find('div[class="reveal-code-wrapper"]', 0)->find('div', 0)->attr['data-clipboard-text'];
                if ($node->find("p[class='expires']", 0) == null) {
                    $expire = '';
                } else {
                    $expire = $node->find("p[class='expires']", 0)->find("span", 0)->find("span", 0)->plaintext;
                    list($expire, $tmp) = explode(" ", $expire);
                    list($m, $d, $y) = explode("/", $expire);
                    $expire = "$y-$m-$d";
                }
                $used_today = $node->find("span[class='used-count-number']", 0) != null ? $node->find("span[class='used-count-number']", 0)->plaintext : 'NULL';
                if (!isset($allCoupons["$code"])) {
                    $allCoupons["$code"] = array(
                        'title' => $title,
                        'code' => $code,
                        'expire' => $expire,
                        'used_today' => $used_today,
                        'source' => $this->rootUrl,
                        'added_date' => date('Y-m-d')
                    );
                }
            }
        }

        return $allCoupons;
    }

}

class CouponRetailmenot {

    private $rootUrl = "";
    private $allCoupons = array();

    public function __construct($rootUrl = 'https://www.retailmenot.com/view/amazon.com') {
        $this->rootUrl = $rootUrl;
    }

    public function saveDB($host, $username, $password, $databaseName) {
        $this->getAllCoupons();
        if (count($this->allCoupons) == 0) {
            return;
        }
        Coupon::deleteExpireCoupons($host, $username, $password, $databaseName, $this->rootUrl);

        $coupons = Coupon::getCouponsBySource($host, $username, $password, $databaseName, $this->rootUrl);
        $ids = array();
        foreach ($coupons as $coupon) {
            if (in_array($coupon['code'], array_keys($this->allCoupons))) {
                $ids[] = $coupon['id'];
                $this->allCoupons[$coupon['code']]['added_date'] = $coupon['added_date'];
            }
        }
        if (count($ids) > 0) {
            Coupon::deleteByIds($host, $username, $password, $databaseName, $ids);
        }

        Coupon::insertCoupons($host, $username, $password, $databaseName, $this->allCoupons);
    }

    public function getAllCoupons() {

        $data = array();
        $url = $this->getFirstUrl();
        if ($url != false) {

            $html = $this->curl_getContent($url);
            $html_base = new simple_html_dom();
            $html_base->load($html);

            $nodes = $html_base->find('ul.offer-list li.offer-list-item');
            foreach ($nodes as $node) {

                $code = $node->find('.offer-item-actions');
                if (isset($code[0]) && strrpos($node->innertext, 'button-show-code-revealed') !== false) {

                    //title
                    $tmp = $node->find('.offer-item-title');
                    $title = (isset($tmp[0])) ? trim($tmp[0]->plaintext) : '';

                    $code = trim($code[0]->plaintext);
                    if ($node->find("div[class='offer-meta offer-meta-usage has-separator-dot']", 0) != NULL) {
                        $used_today = $node->find("div[class='offer-meta offer-meta-usage has-separator-dot']", 0)->plaintext;
                        $used_today = explode(' ', $used_today);
                        $used_today = $used_today[0];
                    } else {
                        $used_today = 'NULL';
                    }

                    //data
                    if (!isset($data["$code"])) {
                        $data["$code"] = array(
                            'title' => $title,
                            'code' => $code,
                            'expire' => '',
                            'used_today' => $used_today,
                            'source' => $this->rootUrl,
                            'added_date' => date('Y-m-d')
                        );
                    }
                }
            }

            // clear html_base
            $html_base->clear();
            unset($html_base);
        }

        $this->allCoupons = array_merge($this->allCoupons, $data);
    }

    private function getFirstUrl() {

        $result = false;
        $html = $this->curl_getContent('https://www.retailmenot.com/view/amazon.com');
        $html_base = new simple_html_dom();
        $html_base->load($html);

        $nodes = $html_base->find('ul.offer-list li.offer-list-item .offer-item-actions a');
        foreach ($nodes as $node) {
            //result
            if (trim($node->plaintext) == 'Show Coupon Code' && isset($node->{'data-new-tab'})) {
                $result = "https://www.retailmenot.com" . str_replace('c&#x3D;', 'c=', $node->{'data-new-tab'});
                break;
            }
        }
        // clear html_base
        $html_base->clear();
        unset($html_base);
        return $result;
    }

    private function curl_getContent($url) {

        $headers = array();
        $headers[] = 'Host: www.retailmenot.com';
        $headers[] = 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0';
        $headers[] = 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
        $headers[] = 'Accept-Language: en-US,en;q=0.5';
        $headers[] = 'Accept-Encoding: gzip, deflate, br';
        $headers[] = 'Connection: keep-alive';
        $headers[] = 'Upgrade-Insecure-Requests: 1';

        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 1);
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_ENCODING, "gzip");
        $content = curl_exec($ch);
        // $status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);
        // print_r("Status: ".$status."\n");
        return $content;
    }

}

class Coupon {

    public static function insertCoupons($host, $username, $password, $databaseName, $coupons) {
        $sql = 'INSERT INTO coupon (title,code,source,expire,used_today,added_date) VALUES ';
        foreach ($coupons as $coupon) {
            if ($coupon['expire'] == '') {
                $expire = 'NULL';
            } else {
                $expire = "'" . $coupon['expire'] . "'";
            }
            $sql .= "('" . str_replace("'", "\'", $coupon['title']) . "','" . str_replace("'", "\'", $coupon['code']) . "','" . rtrim($coupon['source'], '/') . "',$expire," . $coupon['used_today'] . ",'" . $coupon['added_date'] . "'),";
        }
        $sql = rtrim($sql, ',');

        $conn = mysqli_connect($host, $username, $password, $databaseName);
        mysqli_query($conn, $sql);
    }

    public static function deleteExpireCoupons($host, $username, $password, $databaseName, $source) {
        $conn = mysqli_connect($host, $username, $password, $databaseName);
        $date = date('Y-m-d');
        mysqli_query($conn, "DELETE FROM coupon WHERE source='" . rtrim($source, '/') . "' AND expire is not null AND expire < '$date'");
    }

    public static function getCouponsBySource($host, $username, $password, $databaseName, $source) {
        $coupons = array();
        $conn = mysqli_connect($host, $username, $password, $databaseName);
        $result = mysqli_query($conn, "SELECT * FROM coupon WHERE source='" . rtrim($source, '/') . "'");
        while ($row = mysqli_fetch_array($result)) {
            $coupons[] = $row;
        }
        return $coupons;
    }

    public static function deleteByIds($host, $username, $password, $databaseName, $ids) {
        if (is_array($ids) && count($ids) > 0) {
            $conn = mysqli_connect($host, $username, $password, $databaseName);
            mysqli_query($conn, "DELETE FROM coupon WHERE id IN (" . implode(',', $ids) . ")");
        }
    }
    
    public static function getAllCoupons($host, $username, $password, $databaseName) {
        $conn = mysqli_connect($host, $username, $password, $databaseName);
        $coupons = array();
        $result = mysqli_query($conn, "SELECT used_today,coupon.code,coupon.title,expire,coupon.source,created_at,added_date FROM coupon");
        while ($row = mysqli_fetch_array($result)) {
            if ($row['source'] == 'https://www.groupon.com/coupons/stores/amazon.com') {
                $coupons[$row['code']]['groupon'] = $row;
            }
            if ($row['source'] == 'https://www.retailmenot.com/view/amazon.com') {
                $coupons[$row['code']]['retailmenot'] = $row;
            }
        }
        return $coupons;
    }

}

function updateCouponBoth() {
    $conn = mysqli_connect($config['db_host'], $config['db_user'], $config['db_pass'], $config['db_name']);
    
    $coupons = Coupon::getAllCoupons($config['db_host'], $config['db_user'], $config['db_pass'], $config['db_name']);
    
    mysqli_query($conn, "DELETE FROM coupon_both");
    
    $sql = 'INSERT INTO coupon_both (title_groupon,title_retailmenot,code,expire,added_date,used_today_groupon,used_today_retailmenot) VALUES ';
    $sql_coupon_detail = 'INSERT INTO coupon_detail (coupon_code,used_groupon,used_retailmenot) VALUES ';
    foreach ($coupons as $code => $coupon) {
        $expire =$used_today_groupon=$used_today_retailmenot= 'NULL';
        if (count($coupon) == 1) {
            if (isset($coupon['groupon'])) {
                $title_groupon = "'" . str_replace("'", "\'", $coupon['groupon']['title']) . "'";
                $title_retailmenot = 'NULL';
                $expire = ($coupon['groupon']['expire'] != '' ? ("'" . $coupon['groupon']['expire'] . "'") : 'NULL');
                $used_today_groupon = ($coupon['groupon']['used_today'] != '' ? $coupon['groupon']['used_today'] : 'NULL');
                $added_date = $coupon['groupon']['added_date'];
            } else {
                $title_retailmenot = "'" . str_replace("'", "\'", $coupon['retailmenot']['title']) . "'";
                $title_groupon = 'NULL';
                $expire = ($coupon['retailmenot']['expire'] != '' ? ("'" . $coupon['retailmenot']['expire'] . "'") : 'NULL');
                $used_today_retailmenot = ($coupon['retailmenot']['used_today'] != '' ? $coupon['retailmenot']['used_today'] : 'NULL');
                $added_date = $coupon['retailmenot']['added_date'];
            }
        } else {
            $title_groupon = "'" . str_replace("'", "\'", $coupon['groupon']['title']) . "'";
            $title_retailmenot = "'" . str_replace("'", "\'", $coupon['retailmenot']['title']) . "'";
            if ($coupon['groupon']['expire'] != '' && $coupon['retailmenot']['expire'] != '') {
                $date1 = new DateTime($coupon['groupon']['expire']);
                $date2 = new DateTime($coupon['retailmenot']['expire']);
                if ($date1 > $date2) {
                    $expire = $coupon['retailmenot']['expire'];
                } else {
                    $expire = $coupon['groupon']['expire'];
                }
            } else {
                if ($coupon['groupon']['expire'] != '') {
                    $expire = "'" . $coupon['groupon']['expire'] . "'";
                } else if ($coupon['retailmenot']['expire'] != '') {
                    $expire = "'" . $coupon['retailmenot']['expire'] . "'";
                }
            }

            $date1 = new DateTime($coupon['groupon']['added_date']);
            $date2 = new DateTime($coupon['retailmenot']['added_date']);
            if ($date1 > $date2) {
                $added_date = $coupon['retailmenot']['added_date'];
            } else {
                $added_date = $coupon['groupon']['added_date'];
            }

            
            $used_today_groupon = ($coupon['groupon']['used_today'] != '' ? $coupon['groupon']['used_today'] : 'NULL');
            $used_today_retailmenot = ($coupon['retailmenot']['used_today'] != '' ? $coupon['retailmenot']['used_today'] : 'NULL');
        }

        $sql .= "($title_groupon,$title_retailmenot,'" . str_replace("'", "\'", $code) . "',$expire,'$added_date',$used_today_groupon,$used_today_retailmenot),";
        $sql_coupon_detail .= "('" . str_replace("'", "\'", $code) . "',$used_today_groupon,$used_today_retailmenot),";
    }
    $sql = rtrim($sql, ',');
    $sql_coupon_detail = rtrim($sql_coupon_detail, ',');
    mysqli_query($conn, $sql);
    mysqli_query($conn, $sql_coupon_detail);
}

function updateCoupon() {
    $couponGroupon = new CouponGroupon();
    $couponGroupon->saveDB($config['db_host'], $config['db_user'], $config['db_pass'], $config['db_name']);

    $couponRetailmenot = new CouponRetailmenot();
    $couponRetailmenot->saveDB($config['db_host'], $config['db_user'], $config['db_pass'], $config['db_name']);
}

?>