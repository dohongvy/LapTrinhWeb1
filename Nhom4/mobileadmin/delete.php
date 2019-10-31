<?php
require "../config/database.php";
require "../models/Db.php";
require "../models/products.php";
require "../models/manufactures.php";
    $id = $_GET['id'];
    $products = new Products;
    $delete = $products->delete($id);
    echo 'delete success!';
    header("Location: http://localhost:82/Nhom4/mobileadmin/index.php");
?>