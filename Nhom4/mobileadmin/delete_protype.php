<?php
require "../config/database.php";
require "../models/Db.php";
require "../models/products.php";
require "../models/Protypes.php";

$url_host = 'http://'.$_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);

    $id = $_GET['id'];
    $manu = new Protype;
    $delete = $manu->delete($id);
    echo 'delete success!';
    header("Location: $url_path/protype.php");
?>