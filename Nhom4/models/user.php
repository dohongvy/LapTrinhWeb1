<?php
class User extends Db{
    public function getAllUsernameUser()
    {
        $sql = self::$connection->prepare("SELECT `username` FROM `users`");
        return $this->select($sql);
    }
    public function login($username, $password)
    {
        $sql = self::$connection->prepare("SELECT * FROM `users` WHERE `username` =  '$username' 
        and `password` =  '$password'");
        return $this->select($sql);
    }
    public function register($username, $password)
    {
        $sql = self::$connection->query("INSERT INTO `users`( `username`, `password`) VALUES ('$username','$password')");
    }
    public function checkLogin($username)
    {
        $sql = self::$connection->prepare("SELECT `type` FROM `users` WHERE `username` = '$username'");
        return $this->select($sql);
    }
    public function getUser(){
        $sql = self::$connection->prepare("SELECT `id`,`username`,`type` FROM `users` ORDER BY `id` DESC");
        return $this->select($sql);
    }
}




