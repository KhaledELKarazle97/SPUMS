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
    <script src="scripts.js"></script>
    <title>Table of Users | SPUMS</title>
</head>

<body class="container-fluid">
    <?php include 'navbar.php'?>
    <h3>Existing Users</h3><br>
    <input type="text" id="search" onkeyup="search()" placeholder="Enter Name:" class="form-control"><br>
</body>
<?php
if(isset($_SESSION['email'])){
    include'connection.php';
    $sql = "SELECT * FROM users";
    $query = mysqli_query($conn,$sql);
    echo'<table class="table table-bordered" id="userTable">
              <thead>
                  <tr>
                  <th onclick="sortTable(0)"><a href="#" title="Click to Sort By Name" style="color:black;">Full Name &#x25BE;</a></th>
                  <th>Email</th>
                  <th>Password</th>
                  <th>Office Number</th>
                  <th>Role</th>
                  <th>Position</th>
                  <th colspan="2" style="text-align:center">Action</th>
                  </tr>
              </thead>';
    while($row = mysqli_fetch_array($query)){
        $name = $row['full_Name'];
        $eMail = $row['eMail'];
        $password = $row['password'];
        $of_no = $row['office_No'];
        $role = $row['role'];
        $position = $row['position'];

        echo'<tr>';
        echo"<td>$name</td>";
        echo"<td>$eMail</td>";
        echo"<td>$password</td>";
        echo"<td>$of_no</td>";
        echo"<td>$role</td>";
        echo"<td>$position</td>";
        echo "<td><a href='delete_user.php?id=".$row['eMail']."'>Delete</a></td>"; 
        echo "<td><a href='edit_user.php?id=".$row['eMail']."'>Edit Profile</a></td>"; 
        echo'</tr>';
        }
    
    echo '</table>'; 
    //this code above is to manage users by basically showing all users in table format along side with edit / delete link
}else{
    header("Location:login.php");
}
    ?>
</html>
