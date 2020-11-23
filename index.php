<?php 
session_start();
include ('database.php');
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Portal</title>
    <PHP><link rel="stylesheet" type="text/css" href="css/style.css"><PHP>
</head>
<body>
    <header>
        <img class="logo" src="logo.png" alt="logo">
        <nav>
            <ul class="nav_links">
                <li><a href="#">Bug Report</a></li>
                <li><a href="#">About</a></li>
                <li><a href="logout.php">Logout</a></li>
            </ul>
        </nav>

        <form action="role.php" method="POST">
            <label for="role"></label>
            <select class="role" name="role" id="role">
                <option value="ADMIN">Support</option>
                <option value="Finance_ADMIN">Finance</option>
                <option value="Sales_ADMIN">Sales</option>
                <option value="Hr_ADMIN">HR</option>
                <option value="Tech_ADMIN">Technology</option>
            </select>
            <input class="role_change" type="submit" value="Submit">
        </form>
    </header>


    <div class="white-container">
        <div class="container">
            <img src="images/user.gif" alt="user">
            <div class="user">

                    <h2>Welcome,  
                        <?php echo "{$_SESSION['user']}" ?>
                        </h2>
                    <p><?php echo "{$_SESSION['role']}" ?></p>

            </div>
        </div>
    </div>

    <div class="white-container">
        <div class="container">
            <div class="row">
                <?php
                $query = "SELECT * FROM portals WHERE portal_user = '{$_SESSION['role']}' ";
                $result = mysqli_query($con, $query);
                while($row = mysqli_fetch_assoc($result))
                {
                    ?>
                        <div class="column">
                            <a href="<?php echo $row['link']; ?>"><img src="<?php echo $row['image']; ?>" alt=""></a>
                        </div>
                    <?php
                }
                ?>
             </div>
        </div>
    </div>

</body>
</html>