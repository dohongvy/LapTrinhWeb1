<?php
session_start();

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
header("Location: http://localhost:82/Nhom4/cart.php");