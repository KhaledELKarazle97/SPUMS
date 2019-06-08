<?php
include 'connection.php';
    
$sql_delete = "DELETE FROM users WHERE eMail ='$_GET[id]'"; 


if(mysqli_query($conn,$sql_delete)){
    echo '<script>alert("User Removed Successfully, Redirecting to Users Table");</script>';
echo "<script>setTimeout(\"location.href = 'user.php';\",1);</script>";
}
        //deleting users according to ID passed

    ?>