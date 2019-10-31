<?php
session_start(); 
unset($_SESSION['session1']);
header("Location: http://localhost:82/Nhom4/login.php");