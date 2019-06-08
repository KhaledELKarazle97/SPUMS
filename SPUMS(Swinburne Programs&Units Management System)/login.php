<!--
Author-Name:Khaled ELKarazle 
Author-ID:100074076
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Login | SPUMS</title>
</head>

<body class="container-fluid">
    <div class="container-fluid col-lg-6 col-md-6 col-xs-6 col-sm-8">
        <div id="welcome"><img src=SUTS_logo(red).jpg width="50%">
        <h2>Swinburne Program &#38; Units Management System</h2></div>
        <hr>
        <form method="POST" >
            <div class="form-group">
                <label for="email">Email address:</label>
                <input type="email" class="form-control" id="email" name="mail" required>
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" id="pwd" name="pwrd" required>
            </div>
            <button type="submit" id="login" class="btn btn-danger">Login</button>
        </form>
    </div>
</body>
<?php
    session_id("login");
    session_start();
    include 'connection.php';
    if(isset($_POST['mail']) && isset($_POST['pwrd'])){
    $username = $_POST['mail'];
    $password = $_POST['pwrd'];
        
    $sql = "SELECT * FROM users WHERE eMail = '$username' AND password = '$password'";
        
    $result = mysqli_query($conn,$sql); 
        
        if($result -> num_rows > 0){
            while($row = $result->fetch_row()){
                header("Location:dashboard.php");
                $_SESSION['role'] = $row[4];
                $_SESSION['userName'] = $row[1];
                $_SESSION['email'] = $row[0];
                $_SESSION['pwrd'] = $row[2];
            }
        }else{
            echo "<script>
            alert('Invalid login information');
            </script>";
        }
   }
    session_write_close();
    //this code stores the session which will be used to set the user rights and also it validates the login inforamtion
    ?>
</html>