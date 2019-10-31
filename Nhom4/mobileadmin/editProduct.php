<?php
require "../config/database.php";
require "../models/Db.php";
require "../models/products.php";

$products = new Products;
$id = $_GET['id'];
$image = $_FILES["fileToUpload"]["name"];
$type_id = $_POST['type_id'];
$manu_id = $_POST['manu_id'];
$target_dir = "../public/images/";//muốn lưu vào thư mục nào thì hãy thay tên ở đây
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);

if(isset($_POST['edit'])) {
    if(isset($_POST['name'])){
        move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file);
        $products->editProduct($_POST['name'], $_POST['price'], $image, $_POST['description'], $type_id, $manu_id, $id);
       header("Location: http://localhost:82/Nhom4/mobileadmin/");
    }
}