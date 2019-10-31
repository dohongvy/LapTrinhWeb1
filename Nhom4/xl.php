<?php
session_start();

$url_host = 'http://'.$_SERVER['HTTP_HOST'];
  $pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
  $pattern_uri = '/' . $pattern_document_root . '(.*)$/';
  
  preg_match_all($pattern_uri, __DIR__, $matches);
  $url_path = $url_host . $matches[1][0];
  $url_path = str_replace('\\', '/', $url_path);

$k =$_GET['key'];
var_dump($_SESSION['cart'][$k]['qty']);


 if(isset($_POST['remove'])) {
    // if($_SESSION['cart'][$k]['qty'] > 1){
    //     $_SESSION['cart'][$k]['qty'] = $_SESSION['cart'][$k]['qty'] - 1;
    //     $_SESSION["cart"] = array_values($_SESSION["cart"]);
    // }
    // else{
        $key = array_search($k,$_SESSION['cart']);
        unset($_SESSION['cart'][$key]);
        $_SESSION["cart"] = array_values($_SESSION["cart"]);
    // }
    
}
if(isset($_POST['pve'])) {
        $_SESSION['cart'][$k]['qty'] = $_SESSION['cart'][$k]['qty'] - 1;
        $_SESSION["cart"] = array_values($_SESSION["cart"]);
}
if(isset($_POST['next'])) {
    $_SESSION['cart'][$k]['qty'] = $_SESSION['cart'][$k]['qty'] + 1;
    $_SESSION["cart"] = array_values($_SESSION["cart"]);
}
if(isset($_POST['mua'])) {
    
}
header("Location: $url_path/cart.php");