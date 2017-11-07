<?php

require_once('include/simple_html_dom.php');
set_time_limit(0);


$coupon = new Coupon();
$coupon->saveDB('localhost', 'root', '', 'db');

class Coupon {

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
        $this->deleteOldCoupons($host, $username, $password, $databaseName);
        $this->insertCoupons($host, $username, $password, $databaseName);
    }

    private function deleteOldCoupons($host, $username, $password, $databaseName) {
        $link = mysql_connect($host, $username, $password);
        mysql_select_db($databaseName, $link);
        mysql_query("DELETE FROM coupon WHERE from_website='" . rtrim($this->rootUrl, '/') . "'");
    }

    private function insertCoupons($host, $username, $password, $databaseName) {
        $sql = 'INSERT INTO coupon (title,code,from_website) VALUES ';
        foreach ($this->allCoupons as $coupon) {
            $sql .= "('" . str_replace("'", "\'", $coupon['title']) . "','" . str_replace("'", "\'", $coupon['code']) . "','" . rtrim($this->rootUrl, '/') . "'),";
        }
        $sql = rtrim($sql, ',');

        $link = mysql_connect($host, $username, $password);
        mysql_select_db($databaseName, $link);
        mysql_query($sql);
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
                $description = $node->find('a[class="coupon-click affiliate-url"]', 0)->find('span', 0)->plaintext;
                $code = $node->find('div[class="reveal-code-wrapper"]', 0)->find('div', 0)->attr['data-clipboard-text'];
                $allCoupons[] = array(
                    'title' => $description,
                    'code' => $code,
                );
            }
        }

        return $allCoupons;
    }

}

?>