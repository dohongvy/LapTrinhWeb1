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
    public function register($username, $password, $last_name,$first_name)
    {
        $sql = self::$connection->query("INSERT INTO `users`( `username`, `password`,`last_name`,`first_name`) VALUES ('$username','$password','$last_name','$first_name')");
    }
    public function checkLogin($username)
    {
        $sql = self::$connection->prepare("SELECT `type` FROM `users` WHERE `username` = '$username'");
        return $this->select($sql);
    }
    public function getUser(){
        $sql = self::$connection->prepare("SELECT `id`,`username`,`type`,`last_name`,`first_name` FROM `users` ORDER BY `id` DESC");
        return $this->select($sql);
    }
}




