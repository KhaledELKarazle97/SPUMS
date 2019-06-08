<?php 
echo'<!--
Author-Name:Khaled ELKarazle 
Author-ID:100074076
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>';
include 'connection.php';
session_id('login');
session_start();
echo'<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
        <a class="navbar-brand">
    <img src="SUTS_logo(red).jpg" width="150">
    </a>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">';
                if($_SESSION['role'] == 'Program Leader' || $_SESSION['role'] == 'Teaching Staff'){
                echo '<a class="nav-item nav-link" href="units.php">Units</a>';
                }else{
                    echo'';
                }
                if($_SESSION['role']=='Program Leader' || $_SESSION['role']=='Teaching Staff'){
                echo'<a class="nav-item nav-link" href="program.php">Programs</a>';
                }else{
                    echo' ';
                }
                echo'<a class="nav-item nav-link" href="dashboard.php">Dashboard</a>';
                    if($_SESSION['role'] == 'System Administrator' || $_SESSION['role'] =='Program Leader'){
                    echo'<a class="nav-item nav-link" href="register.php">Registeration';
                    echo'<a class="nav-item nav-link" href="user.php">Users';
                    }else{
                        echo ' ';
                    }
                   echo' <a class="nav-item nav-link" href="logout.php">Logout</a>
            </div>
        </div>
    </nav>';
//one unified navigation bar, reason of putting it in a php file is because of the user privileges
session_write_close();
?>