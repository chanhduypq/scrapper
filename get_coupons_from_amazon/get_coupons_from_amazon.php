<?php

require_once('include/simple_html_dom.php');
set_time_limit(0);


$couponGroupon = new CouponGroupon();
$couponGroupon->saveDB('localhost', 'root', '', 'db');

$couponRetailmenot = new CouponRetailmenot();
$couponRetailmenot->saveDB('localhost', 'root', '', 'db');

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
        $this->deleteExpireCoupons($host, $username, $password, $databaseName);
        
        $coupons = $this->getCoupons($host, $username, $password, $databaseName);
        $ids=array();
        foreach ($coupons as $coupon) {
            if(in_array($coupon['code'], array_keys($this->allCoupons))){
                $ids[]=$coupon['id'];
            }
        }
        if(count($ids)>0){
            $this->delete($host, $username, $password, $databaseName, "id IN (". implode(",", $ids).")");
        }
        
        $this->insertCoupons($host, $username, $password, $databaseName, $this->allCoupons);
    }

    private function deleteExpireCoupons($host, $username, $password, $databaseName) {
        $conn = mysqli_connect($host, $username, $password, $databaseName);
        $date=date('Y-m-d');
        mysqli_query($conn, "DELETE FROM coupon WHERE source='" . rtrim($this->rootUrl, '/') . "' AND expire is not null AND expire < '$date'");
    }
    
    private function delete($host, $username, $password, $databaseName, $whereAnd) {
        $conn = mysqli_connect($host, $username, $password, $databaseName);
        mysqli_query($conn, "DELETE FROM coupon WHERE source='" . rtrim($this->rootUrl, '/') . "' AND $whereAnd");
    }

    private function insertCoupons($host, $username, $password, $databaseName, $coupons) {
        $sql = 'INSERT INTO coupon (title,code,source,expire) VALUES ';
        foreach ($coupons as $coupon) {
            if ($coupon['expire'] == '') {
                $expire = 'NULL';
            } else {
                $expire = "'" . $coupon['expire'] . "'";
            }
            $sql .= "('" . str_replace("'", "\'", $coupon['title']) . "','" . str_replace("'", "\'", $coupon['code']) . "','" . rtrim($this->rootUrl, '/') . "',$expire),";
        }
        $sql = rtrim($sql, ',');

        $conn = mysqli_connect($host, $username, $password, $databaseName);
        mysqli_query($conn, $sql);
    }

    private function getCoupons($host, $username, $password, $databaseName) {
        $coupons = array();
        $conn = mysqli_connect($host, $username, $password, $databaseName);
        $result = mysqli_query($conn, "SELECT * FROM coupon WHERE source='" . rtrim($this->rootUrl, '/') . "'");
        while ($row = mysqli_fetch_array($result)) {
            $coupons[] = $row;
        }
        return $coupons;
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
                if(!isset($allCoupons["$code"])){
                    $allCoupons["$code"] = array(
                        'title' => $title,
                        'code' => $code,
                        'expire' => $expire,
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
        $this->deleteExpireCoupons($host, $username, $password, $databaseName);
        
        $coupons = $this->getCoupons($host, $username, $password, $databaseName);
        $ids=array();
        foreach ($coupons as $coupon) {
            if(in_array($coupon['code'], array_keys($this->allCoupons))){
                $ids[]=$coupon['id'];
            }
        }
        if(count($ids)>0){
            $this->delete($host, $username, $password, $databaseName, "id IN (". implode(",", $ids).")");
        }
        
        $this->insertCoupons($host, $username, $password, $databaseName, $this->allCoupons);
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

                    $code=trim($code[0]->plaintext);
                    //data
                    if(!isset($data["$code"])){
                        $data["$code"] = array(
                            'title' => $title,
                            'code' => $code,
                            'expire' => '',
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

    private function deleteExpireCoupons($host, $username, $password, $databaseName) {
        $conn = mysqli_connect($host, $username, $password, $databaseName);
        $date=date('Y-m-d');
        mysqli_query($conn, "DELETE FROM coupon WHERE source='" . rtrim($this->rootUrl, '/') . "' AND expire is not null AND expire < '$date'");
    }

    private function delete($host, $username, $password, $databaseName, $whereAnd) {
        $conn = mysqli_connect($host, $username, $password, $databaseName);
        mysqli_query($conn, "DELETE FROM coupon WHERE source='" . rtrim($this->rootUrl, '/') . "' AND $whereAnd");
    }

    private function insertCoupons($host, $username, $password, $databaseName, $coupons) {
        $sql = 'INSERT INTO coupon (title,code,source,expire) VALUES ';
        foreach ($coupons as $coupon) {
            if ($coupon['expire'] == '') {
                $expire = 'NULL';
            } else {
                $expire = "'" . $coupon['expire'] . "'";
            }
            $sql .= "('" . str_replace("'", "\'", $coupon['title']) . "','" . str_replace("'", "\'", $coupon['code']) . "','" . rtrim($this->rootUrl, '/') . "',$expire),";
        }
        $sql = rtrim($sql, ',');

        $conn = mysqli_connect($host, $username, $password, $databaseName);
        mysqli_query($conn, $sql);
    }

    private function getCoupons($host, $username, $password, $databaseName) {
        $coupons = array();
        $conn = mysqli_connect($host, $username, $password, $databaseName);
        $result = mysqli_query($conn, "SELECT * FROM coupon WHERE source='" . rtrim($this->rootUrl, '/') . "'");
        while ($row = mysqli_fetch_array($result)) {
            $coupons[] = $row;
        }
        return $coupons;
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

?>