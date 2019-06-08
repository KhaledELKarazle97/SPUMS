<!--This is a file to create the connection between the other php files and the database instead of declaring the connection mulitple times in all the other php files-->
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "spums";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>