<?php
session_start();
require "./config/database.php";
require "./models/Db.php";
require "./models/user.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>register</title>
</head>

<body>
    <h1>Đăng nhập</h1>
    <form action="" method="get">
        Username:<input type="text" name="username"><br>
        Password: <input type="Password" name="password"><br>
        <input type="submit" name="">
    </form>
    <a href="register.php">Đăng kí</a>
    <?php
      $user = new User;
     
     if(isset($_GET['username'])  && isset($_GET['password']))
     {
        $check = $user->checkLogin($_GET['username']);
         if($user->login($_GET['username'],$_GET['password']))
         {
            $_SESSION['session1'] = $_GET['username'];
            foreach($check as $key=>$value){
                $_SESSION['type'] = $value['type'];
                if($value['type'] == 1){
                    header("Location: http://localhost:82/Nhom4/mobileadmin/");
                }else{
                    header("Location: http://localhost:82/Nhom4/home.php");
                } 
        }
         }
         else{
            ?>
    <script language="javascript">
        alert("Tài khoản và mật khẩu không đúng!!! \n Đăng nhập lại");
    </script>
    <?php
         }
     }
     ?>
</body>

</html>