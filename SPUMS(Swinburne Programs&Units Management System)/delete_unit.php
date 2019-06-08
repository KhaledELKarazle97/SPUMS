<?php
include 'connection.php';
    
$sql_delete = "DELETE FROM units WHERE unitCode ='$_GET[id]'"; 


if(mysqli_query($conn,$sql_delete)){
    echo '<script>alert("User Removed Successfully, Redirecting to Units Table");</script>';
echo "<script>setTimeout(\"location.href = 'units.php';\",1);</script>";
}
        //deleting units according to ID passed

    ?>