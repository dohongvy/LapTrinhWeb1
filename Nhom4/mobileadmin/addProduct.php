<?php
require "../config/database.php";
require "../models/Db.php";
require "../models/products.php";

$products = new Products;
$id = $_GET['id'];
echo $id;
die();
$image = $_FILES["fileUpload"]["name"];
$type_id = $_POST['type_id'];
$manu_id = $_POST['manu_id'];
$target_dir = "../public/images/";//muốn lưu vào thư mục nào thì hãy thay tên ở đây
$target_file = $target_dir . basename($_FILES["fileUpload"]["name"]);

if(isset($_POST['add'])) {
    if(isset($_POST['name'])){
        move_uploaded_file($_FILES["fileUpload"]["tmp_name"], $target_file);
        $products->addNewProduct($_POST['name'], $_POST['price'], $image, $_POST['description'], $type_id, $manu_id);
        header("Location: http://localhost:82/Nhom4/mobileadmin/index.php");
    }
}

