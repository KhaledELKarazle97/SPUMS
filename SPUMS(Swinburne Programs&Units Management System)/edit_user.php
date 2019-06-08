<?php
include 'connection.php';
include 'navbar.php';
$sql_edit = "SELECT * FROM users WHERE eMail ='$_GET[id]'";

$query=mysqli_query($conn,$sql_edit);

while($row = mysqli_fetch_array($query)){
        $name = $row['full_Name'];
        $eMail = $row['eMail'];
        $password = $row['password'];
        $of_no = $row['office_No'];
        $role = $row['role'];
        $position = $row['position'];
        
        echo'  <form method="POST">
            <div class="form-group">
                <label for="Name">Full Name:</label>
                <input type="text" class="form-control" id="name" name="updatename" value='.$name.'>
            </div>
            <div class="form-group">
                <label for="email">E-Mail Address:</label>
                <input type="email" class="form-control" id="email" name="updateemail" value='.$eMail.'>
            </div>
            <div class="form-group">
                <label for="pass">Password:</label>
                <input type="text" class="form-control" id="password" name="updatepassword" value='.$password.'>
            </div>

            <div class="form-group">
                <label for="of_no">Office Number:</label>
                <input type="text" class="form-control" id="of_no" name="updateof_no" value='.$of_no.'>
            </div>
            <div class="form-group">
                <label for="role">Role:</label>
                <select class="form-control" id="role" name="updaterole">
    <option disabled selected>Current Selection : '.$role.'</option>
    <option value="System Administrator" >System Administrator</option>
    <option value="Program Leader">Program Leader</option>
    <option value="Teaching Staff">Teaching Staff</option>
  </select>
            </div>

            <div class="form-group">
                <label for="position">Position:</label>
                <select class="form-control" id="position" name="updateposition">
    <option disabled selected >Current Selection : '.$position.'</option>
    <option value="System Administrator" >System Administrator</option>
    <option value="Associate Lecturer">Associate Lecturer</option>
    <option value="Lecturer">Lecturer</option>
    <option value="Senior Lecturer">Senior Lecturer</option>
    <option value="Associate Professor">Associate Professor</option>
    <option value="Professor">Professor</option>
  </select><br>
                <input type="submit" value="Update" class="btn btn-primary">
                <input type="reset" value="Reset" class="btn btn-danger">
            </div>
        </form>';
        
        }

 if(isset($_POST['updatename']) || 
    isset($_POST['updateemail']) ||
    isset($_POST['updatepassword'])||
    isset($_POST['updateof_no']) ||
    isset($_POST['updaterole']) ||
    isset($_POST['updateposition'])
   ){
                
                $uname = $_POST['updatename'];
                $uemail = $_POST['updateemail'];
                $upassword = $_POST['updatepassword'];
                $uof_no = $_POST['updateof_no'];
                $uprole= $_POST['updaterole'];
                $uposition = $_POST['updateposition'];
     
                if($uprole=='System Administrator'){
                $uposition ='System Administrator';
            }
                $sql = "
                  UPDATE users SET 
                  full_Name = '$uname',
                  eMail = '$uemail',
                  password = '$upassword',
                  office_No = '$uof_no',
                  role = '$uprole',
                  position = '$uposition'
                  WHERE eMail ='$_GET[id]'";
                
                  if (mysqli_query($conn,$sql)) {
             echo '<script>alert("User Profile Updated Successfully, Redirecting to Users Table");</script>';
             echo "<script>setTimeout(\"location.href = 'user.php';\",1);</script>";
            } 
            }
        else{
                $conn ->error;
            }
//this code provides a form which has the value as the data from spums.sql then it allowas the admin to modify it accordingly
?>