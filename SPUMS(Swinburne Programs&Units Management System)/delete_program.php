<?php
include 'connection.php';
    
$sql_delete = "DELETE FROM programs WHERE pcode ='$_GET[id]'"; 


if(mysqli_query($conn,$sql_delete)){
    echo '<script>alert("Program Removed Successfully, Redirecting to Programs Table");</script>';
echo "<script>setTimeout(\"location.href = 'program.php';\",1);</script>";
}
    //deleting programs according to ID passed
    ?>