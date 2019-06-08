<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
    <title>Dashboard | SPUMS</title>
    <?php include 'navbar.php'; include'connection.php';?>
</head>

<body class="container-fluid">
   <?php
    session_start();

    if(isset($_SESSION['email'])){

    echo'<h1 style="text-align:center">Welcome to SPUMS, '.$_SESSION['userName'].'</h1><hr>';
    $sql_users = mysqli_query($conn,'SELECT COUNT(*) FROM users');
    $sql_SysAdmin = mysqli_query($conn,'SELECT COUNT(*) FROM users WHERE role = "System Administrator"');
    $sql_ProgLead = mysqli_query($conn,'SELECT COUNT(*) FROM users WHERE role = "Program Leader" ');
    $sql_TeachStaff = mysqli_query($conn,'SELECT COUNT(*) FROM users WHERE role = "Teaching Staff" ');
    $sql_units = mysqli_query($conn,'SELECT COUNT(*) FROM units');
    $sql_programs = mysqli_query($conn,'SELECT COUNT(*) FROM programs');
    $sql_programNames = mysqli_query($conn,'SELECT pname FROM programs');
    
    $result_users = mysqli_fetch_array($sql_users);
    $result_admin = mysqli_fetch_array($sql_SysAdmin);
    $result_ProgLead = mysqli_fetch_array($sql_ProgLead);
    $result_TeachStaff = mysqli_fetch_array($sql_TeachStaff);
    $result_units = mysqli_fetch_array($sql_units);
    $result_programs = mysqli_fetch_array($sql_programs);
    
    $total_users = $result_users[0];
    $total_admin = $result_admin[0];
    $total_proglead = $result_ProgLead[0];
    $total_teachstaff = $result_TeachStaff[0];
    $total_units = $result_units[0];
    $total_programs = $result_programs[0];
    
    echo'<h2 style="text-align:center">System Summary</h2>';
    if($_SESSION['role']=='System Administrator' || $_SESSION['role'] == 'Program Leader'){
    echo'<br><h4>SPUMS Users Breakdown</h4>';
    echo '<h5>Total Number of Users : '.$total_users.'</h5>';
    echo '<h5>Total Number of System Administrators : '.$total_admin.'</h5>';
    echo '<h5>Total Number of Program Leaders : '.$total_proglead.'</h5>';
    echo '<h5>Total Number of Teaching Staff : '.$total_teachstaff.'</h5>';
    }else{
        echo'';
    }
    if($_SESSION['role']=='Teaching Staff' || $_SESSION['role'] == 'Program Leader'){
    echo'<h4><br><br>Units Breakdown</h4>';
    echo '<h5>Total Number of Units : '.$total_units.'</h5>';
    echo'<br><h4>Programs Breakdown</h4>';
    echo'<h5>Total Number of Programs : '.$total_programs.'</h5>';
   while($row = mysqli_fetch_array($sql_programNames)){
        $pname = $row['pname'];
        echo'<ul>';
        echo"<li><h5>$pname</h5></li>";
        echo'</ul>';
        }

    }
    }else{
        header("Location:login.php");
    }
    ?>

           
    </div>
</body>
</html>