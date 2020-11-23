<?php 
session_start();
include ('database.php');
if(isset($_POST["Username"]) && isset($_POST["Password"])){


$username = $_POST["Username"];
$password = $_POST["Password"];


$query = "SELECT * FROM Users WHERE Username = ? LIMIT 1";
$check = $con->prepare($query);
$check->bind_param("s", $username);
$check->execute();
$check->store_result();
$check->bind_result($user, $pass, $role);
$check->fetch();

$row = $check->num_rows;

if($row == 0){ //user does not exist
    $_SESSION['message'] = "Wrong Username or Password";
    header("location: login.php");
}
else if($row == 1){
    

    if($password == $pass && strpos($role, "ADMIN") !== false){   //user is an admin, redirect to index page  
        $_SESSION['role'] = $role;
        $_SESSION['user'] = $username;
        header("location: index.php");
    }
    else if($pass != $password) //user password is wrong 
    {
        $_SESSION['message'] = "Wrong Username or Password";
        header("location: login.php");
    }
    
}

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <link rel = "stylesheet" href = "css/login.css" type = "text/css">
    <title>Login</title>
</head>
<body>
    <header>
        <h1><i class = "fas fa-chevron-right"></i>AMS Inc.</h1>
    <nav>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#"> About Us</a></li>
            <li><a href="#">Contact Us</a></li>
        </ul>
    </nav>
</header>
    <div class="container">
        
    </div>        

    <div id = "container">
        <div class = "box">
            <?php 
            if(isset($_SESSION['message']) && $_SESSION['message'] == 'Wrong Username or Password')
            {
                echo "<div style = 'color: red'> Wrong Username or Password </div>";
            }
            ?>
            <h1>Login</h1>
            <p>Please enter your username and password to gain access to the Admin Suite</p>
            <form action = "login.php" method = "POST">
                
                <div class = "input-field">
                    <label for = "Username"> Username</label>
                    <input type="text" name="Username" id="Username" placeholder="Enter your Username" required>
                </div>
                <div class = "input-field">
                    <label for = "Password"> Password</label>
                    <input type="password" name="Password" id="Password" placeholder="Enter your Password" required>
                </div>
                <input type = "submit" value = "Login" id = "login-btn">
                
            </form>
            
        </div>

    </div>
    
</body>
</html>