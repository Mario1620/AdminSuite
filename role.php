<?php 
session_start();
include ('database.php');

$role = $_POST["role"];
$_SESSION['role'] = $role;

$query = "UPDATE Users SET Role = '{$_SESSION['role']}' WHERE Username = '{$_SESSION['user']}'";

if (mysqli_query($con, $query)) {
    echo "Record updated successfully";
  } else {
    echo "Error updating record: " . mysqli_error($con);
  }

mysqli_close($con);
header("location: index.php");
?>