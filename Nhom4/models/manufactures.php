<?php
class Manufacture extends Db{
    // phuong thuc lay len tat ca san pham
    public function getAllManufacture_ManuName(){
        $sql = self::$connection->prepare("SELECT * from manufactures");
        return $this->select($sql);
    }
    public function getManufactureById($manu_name){
        $sql = self::$connection->prepare("SELECT * FROM `products` JOIN manufactures
         on products.manu_ID = manufactures.manu_ID WHERE manufactures.manu_name like ?");
        $sql->bind_param("s", $manu_name);
        return $this->select($sql);
    }
    public function getManu(){
        $sql = self::$connection->prepare("SELECT * FROM manufactures order by manu_ID desc");
        return $this->select($sql);
    }

    public function delete_manu($manu_id)
    {
        $sql = self::$connection->query("DELETE FROM `manufactures` WHERE `manu_ID` = '$manu_id'");
    }
}