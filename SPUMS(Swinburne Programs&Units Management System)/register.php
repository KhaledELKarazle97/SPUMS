<!--
Author-Name:Khaled ELKarazle 
Author-ID:100074076
-->
<?php
    include'connection.php';
 

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registeration | SPUMS</title>
</head>

<body class="container-fluid">
       <?php include 'navbar.php'?>
        <h3>New User Registeration Form</h3>
        <hr>
        <form method="POST">
            <div class="form-group">
                <label for="Name">Full Name:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">E-Mail Address:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="pass">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="pass2">Retype Password:</label>
                <input type="password" class="form-control" id="password2" name="password2" required>
            </div>
            <div class="form-group">
                <label for="of_no">Office Number:</label>
                <input type="text" class="form-control" id="of_no" name="of_no" required>
            </div>
            <div class="form-group">
                <label for="role">Role:</label>
                <select class="form-control" id="role" name="role" required>
    <option hidden value="null">-</option>
    <option value="System Administrator">System Administrator</option>
    <option value="Program Leader">Program Leader</option>
    <option value="Teaching Staff">Teaching Staff</option>
  </select>
            </div>

            <div class="form-group">
                <label for="position">Position:</label>
                <select class="form-control" id="position" name="position" required>
    <option hidden value="null">-</option>
    <option value="Associate Lecturer">Associate Lecturer</option>
    <option value="Lecturer">Lecturer</option>
    <option value="Senior Lecturer">Senior Lecturer</option>
    <option value="Associate Professor">Associate Professor</option>
    <option value="Professor">Professor</option>
  </select><br>
                <input type="submit" value="Register" class="btn btn-primary">
                <input type="reset" value="Reset" class="btn btn-danger">
            </div>
        </form>
    </div>
</body>
<?php
    if( isset($_POST['name']) && 
        isset($_POST['email']) &&
        isset($_POST['password']) &&
        isset($_POST['password2']) &&
        isset($_POST['of_no']) &&
        isset($_POST['role']) &&
        isset($_POST['position'])){
        $name = $_POST['name'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $password2 = $_POST['password2'];
        $of_no = $_POST['of_no'];
        $role = $_POST['role'];
        $position = $_POST['position'];
        if($role == 'System Administrator'){
            $position = "System Administrator";
        }
        if($password!=$password2){
          echo "<script>alert('ERROR : Make Sure Both Passwords Are Matching')</script>";
        }
        else{
        
        $sql = "INSERT INTO users (eMail,full_Name,password,office_No,role,position) VALUES ('$email', '$name', '$password','$of_no','$role','$position')";
         
        if ($conn->multi_query($sql) === TRUE) {
            echo '<script>alert("User Registered Successfully, Redirecting to Users Table");</script>';
echo "<script>setTimeout(\"location.href = 'user.php';\",1);</script>";
            } 
        else {
            echo "Error: ".$conn->error;
                }    
            }
    }

    //the code above checks if all the data are set and valid then insert all the information into the spums database
    ?>
</html>