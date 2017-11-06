<?php

require_once('include/simple_html_dom.php');
set_time_limit(0);


$coupon = new Coupon();
$coupon->saveDB();

class Coupon {

    private $rootUrl = "";
    private $allCoupons = array();

    public function __construct($rootUrl = 'https://www.groupon.com/coupons/stores/amazon.com') {
        $this->rootUrl = $rootUrl;
    }
    
    public function saveDB(){
        $this->getAllCoupons();
        if(count($this->allCoupons)==0){
            return;
        }
        $this->deleteOldCoupons();
        $this->insertCoupons();
    }
    private function deleteOldCoupons(){
        $conn = mysqli_connect('localhost', 'root', '', 'db') or die();
        mysqli_query($conn, "DELETE FROM coupon");
    }
    private function insertCoupons(){
        $sql='INSERT INTO coupon (title,code) VALUES ';
        foreach ($this->allCoupons as $coupon){
            $sql.="('".str_replace("'", "\'", $coupon['title'])."','".str_replace("'", "\'", $coupon['code'])."'),";
        }
        $sql= rtrim($sql,',');
        $conn = mysqli_connect('localhost', 'root', '', 'db') or die();
        mysqli_query($conn, $sql);
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
        $this->allCoupons= array_merge($this->allCoupons,$this->getAllCouponsByHtml($html));
        $lastPage = $this->getLastPage();
        for ($i = 1; $i <= $lastPage - 1; $i++) {
            $html = file_get_contents(rtrim($this->rootUrl, '/') . '?page=' . $i);
            $this->allCoupons= array_merge($this->allCoupons,$this->getAllCouponsByHtml($html));
        }
        
        return $this->allCoupons;
    }

    public function getAllCouponsByHtml($html) {
        $allCoupons=array();
        
        $htmlDom = new simple_html_dom();
        $htmlDom->load($html);
        
        foreach ($htmlDom->find('div[class="coupon row"]') as $node){
            if($node->find('div[class="reveal-code-wrapper"]',0)!=NULL){
                $description=$node->find('a[class="coupon-click affiliate-url"]',0)->find('span',0)->plaintext; 
                $code=$node->find('div[class="reveal-code-wrapper"]',0)->find('div',0)->attr['data-clipboard-text'];
                $allCoupons[]=array(
                                    'title'=>$description,
                                    'code'=>$code,
                );
            }
            
        }
        
        return $allCoupons;
    }

}

?>