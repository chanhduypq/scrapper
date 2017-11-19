<?php

require_once('include/simple_html_dom.php');
set_time_limit(0);


$amu = new Products();
$amu->getAllData();

class Products {

    public $file;
    public $category1 = '';

    public function __construct() {
        $this->file = fopen("products.csv", "w");
        fputcsv($this->file, array('category1', 'category2', 'rank', 'price', 'Publisher', 'ISBN10', 'ISBN13', 'ASIN', 'OtherRanks'));
    }

    public function getAllData() {

        $url = 'https://www.amazon.com/Best-Sellers-Books-Medical/zgbs/books/173514/ref=zg_bs_unv_b_2_227567_2';
        
        
        $links = $this->getAllFirstChildrenLinks($url);
        foreach ($links as $link) {
            //get page 1
            echo $link . '   ';
            $this->getProducts($link);
            //get page 2,3,4,5
            $linkPagings = $this->getPagingLinks($link);
            foreach ($linkPagings as $linkPaging) {
                $this->getProducts($linkPaging);
            }
            $link_category2s = $this->getAllCategory2ChildrenLinks($link);
            foreach ($link_category2s as $link_category2) {
                //get page 1
                echo 'category2:' . $link_category2['link'] . '   ';
                $this->getProducts($link_category2['link'], $link_category2['label']);
                //get page 2,3,4,5
                $linkPagings = $this->getPagingLinks($link_category2['link']);
                foreach ($linkPagings as $linkPaging) {
                    $this->getProducts($linkPaging, $link_category2['label']);
                }
            }
        }

        fclose($this->file);
    }

    private function getProducts($url, $category2 = '') {
        $html = $this->curl_getContent($url);

        $html_base = new simple_html_dom();
        $html_base->load($html);

        $tmp = $html_base->find("div.zg_itemImmersion");
        if ($category2 == '') {
            if ($html_base->find("#zg_browseRoot .zg_selected", 0) != NULL) {
                $this->category1 = $html_base->find("#zg_browseRoot .zg_selected", 0)->plaintext;
            }
        }


        foreach ($tmp as $div) {

            $rank = rtrim(trim($div->find("span[class='zg_rankNumber']", 0)->plaintext), '.');
            $url = 'https://www.amazon.com' . trim($div->find('a.a-link-normal')[0]->href);

            if ($div->find('.p13n-sc-price', 0) != null) {
                $price = $div->find('.p13n-sc-price', 0)->plaintext;
            } else if ($div->find('span[class="a-size-base a-color-price"]', 0) != null) {
                $price = $div->find('span[class="a-size-base a-color-price"]', 0)->plaintext;
            } else {
                $price = '';
            }
            $data['category1'] = $this->category1;
            $data['category2'] = $category2;
            $data['rank'] = $rank;
            $data['price'] = $price;
            $this->getProduct($url, $data);
        }
        // clear html_base
        $html_base->clear();
        unset($html_base);
    }

    private function analizeDetail($productDetailsTable, &$data) {
        $data['Publisher'] = '';
        $data['ISBN10'] = '';
        $data['ISBN13'] = '';
        $data['ASIN'] = '';
        $data['OtherRanks'] = '';
        if ($productDetailsTable == NULL) {
            return;
        }
        $content = $productDetailsTable->find('.content', 0);
        if ($content == NULL) {
            return;
        }
        $bNodes = $content->find('b');
        foreach ($bNodes as $bNode) {
            if ($bNode->plaintext == 'Publisher:') {
                $data['Publisher'] = trim(str_replace('Publisher:', '', $bNode->parent()->plaintext));
            } else if ($bNode->plaintext == 'ISBN-10:') {
                $data['ISBN10'] = str_replace('ISBN-10:', '', $bNode->parent()->plaintext);
            } else if ($bNode->plaintext == 'ISBN-13:') {
                $data['ISBN13'] = str_replace('ISBN-13:', '', $bNode->parent()->plaintext);
            } else if ($bNode->plaintext == 'Amazon Best Sellers Rank:') {
                $OtherRanks = str_replace('Amazon Best Sellers Rank:', '', $bNode->parent()->plaintext);
                foreach ($bNode->parent()->find('span') as $span) {
                    $OtherRanks = str_replace($span->plaintext, '', $OtherRanks);
                }
                $data['OtherRanks'] = trim($OtherRanks);
            } else if ($bNode->plaintext == 'ASIN:') {
                $data['ASIN'] = str_replace('ASIN:', '', $bNode->parent()->plaintext);
            }
        }
    }

    private function getProduct($url, $data) {
        $html = $this->curl_getContent($url);

        $html_base = new simple_html_dom();
        $html_base->load($html);

        $this->analizeDetail($html_base->find("#productDetailsTable", 0), $data);

        $data = array_map("utf8_decode", $data);
        fputcsv($this->file, $data);

        $html_base->clear();
        unset($html_base);
    }

    private function getPagingLinks($url) {
        $links = array();

        $html = $this->curl_getContent($url);

        $html_base = new simple_html_dom();
        $html_base->load($html);

        $tmp = $html_base->find("#zg_paginationWrapper a");
        for ($i = 1; $i < count($tmp); $i++) {
            $links[] = $tmp[$i]->attr['ajaxurl'];
        }

        return $links;
    }

    private function getAllFirstChildrenLinks($url) {
        $links = array();

        $html = $this->curl_getContent($url);

        $html_base = new simple_html_dom();
        $html_base->load($html);

        $tmp = $html_base->find("#zg_browseRoot .zg_selected",0);

        $tmp = $tmp->parent()->next_sibling()->find("a");
        for ($i = 0; $i < count($tmp); $i++) {
            $links[] = $tmp[$i]->href;
        }

        return $links;
    }

    private function getAllCategory2ChildrenLinks($url) {
        $links = array();

        $html = $this->curl_getContent($url);

        $html_base = new simple_html_dom();
        $html_base->load($html);

        $tmp = $html_base->find("#zg_browseRoot .zg_selected",0);

        $tmp = $tmp->parent()->next_sibling()->find("a");
        for ($i = 0; $i < count($tmp); $i++) {
            $links[] = array('link' => $tmp[$i]->href, 'label' => $tmp[$i]->plaintext);
        }

        return $links;
    }

    // @curl_getContent
    private function curl_getContent($url) {
        $ch = curl_init();
        $proxy = 'proxy.crawlera.com:8010';
        $proxy_auth = 'f0f1cbd3c91b4f8d8692953fb67fd4ce';
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_PROXY, $proxy);
        curl_setopt($ch, CURLOPT_PROXYUSERPWD, $proxy_auth);
        curl_setopt($ch, CURLOPT_HEADER, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
        curl_setopt($ch, CURLOPT_TIMEOUT, 180);
        curl_setopt($ch, CURLOPT_CAINFO, 'crawlera-ca.crt'); //required for HTTPS
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, TRUE); //required for HTTPS

        $scraped_page = curl_exec($ch);
        curl_close($ch);
        
        return $scraped_page;

    }

}

?>