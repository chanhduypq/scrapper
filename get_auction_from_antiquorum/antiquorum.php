<?php

////    Status OK.... 
set_time_limit(0);

//$conn = mysqli_connect('localhost', 'root', '', 'antiquorum');

require_once 'include/simple_html_dom.php';

$rootUrl = 'https://catalog.antiquorum.swiss/';

$html = file_get_contents($rootUrl);
$htmlDom = new simple_html_dom();
$htmlDom->load($html);

$lagePage = getLastPage($rootUrl);

$auctionDates = array();
foreach ($htmlDom->find('div[class="thumbnail col-sm-12 col-xs-12 col-md-3"]') as $selVal) {
    $sel = $selVal->find("a[class='btn btn-danger']", 0);

    $selValue = $sel->href;
    preg_match('|([0-9\-]+)/lots|', $selValue, $matches);
    if (empty($matches[1]))
        continue;

    $date = trim($matches[1], '-');
    $date = str_replace("-", ".", $date);
    $sel1 = $selVal->find("a[class='btn btn-danger']", 1);
    if (!$sel1)
        continue;
    $url = $sel1->href;

    preg_match('|([0-9]+)/price|', $url, $matches);
    $name = $matches[1];
    if (!file_exists('images/' . $name)) {
        mkdir('images/' . $name);
    }
    copy('products.csv', 'products/products_' . $name . '.csv');

    $auctionDates[$name] = array('date' => $date, 'url' => "https://catalog.antiquorum.swiss$url");
    $auctionDates[$name]['products'] = scrap($name, 'https://catalog.antiquorum.swiss' . $url, $date);
}

for ($i = 2; $i <= $lagePage; $i++) {
    $html = file_get_contents($rootUrl . "?page=$i");
    $htmlDom = new simple_html_dom();
    $htmlDom->load($html);

    foreach ($htmlDom->find('div[class="thumbnail col-sm-12 col-xs-12 col-md-3"]') as $selVal) {
        $sel = $selVal->find("a[class='btn btn-danger']", 0);

        $selValue = $sel->href;
        preg_match('|([0-9\-]+)/lots|', $selValue, $matches);
        if (empty($matches[1]))
            continue;

        $date = trim($matches[1], '-');
        $date = str_replace("-", ".", $date);
        $sel1 = $selVal->find("a[class='btn btn-danger']", 1);
        if (!$sel1)
            continue;
        $url = $sel1->href;

        preg_match('|([0-9]+)/price|', $url, $matches);
        $name = $matches[1];
        if (!file_exists('images/' . $name)) {
            mkdir('images/' . $name);
        }
        copy('products.csv', 'products/products_' . $name . '.csv');

        $auctionDates[$name] = array('date' => $date, 'url' => "https://catalog.antiquorum.swiss$url");
        $auctionDates[$name]['products'] = scrap($name, 'https://catalog.antiquorum.swiss' . $url, $date);
    }
}

function scrap($folderName, $url, $date) {

    $products = array();


    $html = file_get_contents($url);
    $htmlDom = new simple_html_dom();
    $htmlDom->load($html);
    foreach ($htmlDom->find('div[class="row"]') as $block) {
        $link = $block->find('a[class="lotnumber"]', 0);
        if (!$link)
            continue;

        $price = $block->find('h3', 1)->plaintext;
        $currency = $block->find('span', 1)->plaintext;

        if (!(float) $price)
            continue;

        $html = file_get_contents('https://catalog.antiquorum.swiss' . $link->href);
        $htmlDomChild = new simple_html_dom();
        $htmlDomChild->load($html);
        $small=$htmlDomChild->find('div[class="row"]', 1)->find('div[class="col-xs-12 col-md-6"]',1)->find('h3',0)->find('small',0)->plaintext;
        $title=$htmlDomChild->find('div[class="row"]', 1)->find('div[class="col-xs-12 col-md-6"]',1)->find('h3',0)->plaintext;
        $title= str_replace($small, "", $title);
        $description = $htmlDomChild->find('div[class="row"]', 1)->find('div[class="col-xs-12 col-md-6"]',1)->find('strong',0)->find('p',0)->plaintext;
        $image = $htmlDomChild->find("a[class='btn btn-danger']", 0)->href;

        $temp = explode('.', $image);
        $destImage = sprintf('_%s.' . end($temp), uniqid(md5(time()), true));
        copy($image, 'images/' . $folderName . '/' . $destImage);

        $products[] = array(
            'url' => 'https://catalog.antiquorum.swiss' . $link->href,
            'price' => str_replace(',', '', $price),
            'currency' => $currency,
            'title' =>trim($title),
            'description' =>trim($description),
            'image' => $folderName . '/' . $destImage,
        );
    }


    return $products;
}

$file = fopen("auction_dates.csv", "w");
fputcsv($file, array('date', 'url'));
foreach ($auctionDates as $key => $auctionDate) {
    unset($auctionDate['products']);
    $auctionDate = array_map("utf8_decode", $auctionDate);
    fputcsv($file, $auctionDate);
}
fclose($file);

foreach ($auctionDates as $name => $auctionDate) {
    $file = fopen("products/products_$name.csv", "w");
    fputcsv($file, array('url', 'price', 'currency', 'title', 'description', 'image'));
    foreach ($auctionDate['products'] as $value) {
        $value = array_map("utf8_decode", $value);
        fputcsv($file, $value);
    }
    fclose($file);
}

function getLastPage($rootUrl) {
    $html = file_get_contents($rootUrl);
    $htmlDom = new simple_html_dom();
    $htmlDom->load($html);
    $lagePage = $htmlDom->find('ul[class="pagination"]', 0)->find('li');
    $lagePage = $lagePage[count($lagePage) - 1]->find('a', 0)->href;
    list($temp, $lagePage) = explode("=", $lagePage);
    return $lagePage;
}
