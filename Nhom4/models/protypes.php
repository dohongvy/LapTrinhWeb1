<?php
class Protype extends Db{
   
    public function getProtype(){
        $sql = self::$connection->prepare("SELECT * FROM `protypes` order by `type_ID` desc");
        return $this->select($sql);
    }
}
