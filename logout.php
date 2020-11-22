<?php 
session_start();

$_SESSION['user'] = "";
$_SESSION['role'] = "";

session_unset();
session_destroy();

header("location: login.html");
?>