<!--
Author-Name:Khaled ELKarazle 
Author-ID:100074076
-->
<?php ob_start();?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="scripts.js"></script>
    <title>Units Management | SPUMS</title>
</head>

<body class="container-fluid">
    <?php include 'navbar.php'; include 'connection.php';?>
    <h3>Units Management</h3>
    <input type="text" id="search" onkeyup="search()" placeholder="Enter Unit Code:" class="form-control"><br>
    <?php
    if(isset($_SESSION['email'])){

        $sql = "SELECT units.unitCode,units.unitName,aim,LearningOutcome,coreq.Co_Req,prerequnit.Pre_Req,antirequnit.Anti_Req,staffteach.staffName 
                FROM units 
                INNER JOIN coreq ON units.unitCode = coreq.unitCode 
                INNER JOIN prerequnit ON units.unitCode = prerequnit.unitCode 
                INNER JOIN antirequnit ON units.unitCode = antirequnit.unitCode 
                INNER JOIN staffteach ON units.unitCode = staffteach.CodeUnit";
        $query = mysqli_query($conn,$sql);
        echo'<table class="table table-bordered" id="userTable">';
        echo'<th onclick="sortTable(0)"><a href="#" title="Click to Sort by Unit Name" style="color:black">Unit Code &#x25BE;</a></th>';
        echo'<th>Unit Name</th>';
        echo'<th>Aim</th>';
        echo'<th>Co-Requisite</th>';
        echo'<th>Pre-Requisite</th>';
        echo'<th>Anti-Requisite</th>';
        echo'<th>Teaching Staff</th>';
        echo'<th>Learning Outcome</th>';
        echo'<th>Action</th>';
   
         while($row = mysqli_fetch_array($query)){
        $unitCode = $row['unitCode'];
        $unitName = $row['unitName'];
        $aim = $row['aim'];
        $teachingStaff = $row['staffName'];
        $coReq = $row['Co_Req'];
        $PreReq = $row['Pre_Req'];
        $AntiReq = $row['Anti_Req'];
        $outCome = $row['LearningOutcome'];

        echo'<tr>';
        echo"<td>$unitCode</td>";
        echo"<td>$unitName</td>";
        echo"<td>$aim</td>";
        echo"<td>$coReq</td>";
        echo"<td>$PreReq</td>";
        echo"<td>$AntiReq</td>";
        echo"<td>$teachingStaff</td>";
        echo"<td>$outCome</td>";
        echo "<td><a href='delete_unit.php?id=".$row['unitCode']."'>Delete Unit</a></td>"; 
     
        
        echo'</tr>';
         }
        }else{
            header("Location:login.php");
        }     
    
        echo'</table>';
        
        ?>
        <hr>
        <h4>Add Units</h4>
        <form method="post">
            <label>Unit Code:</label>
            <input type="text" name="ucode" required class="form-control"><br>

            <label>Unit Name:</label>
            <input  class="form-control" type="text" name="uname" required><br>

            <label>Unit Aim:</label>
            <textarea name="aim" class="form-control" cols="25" rows="3" required></textarea><br><br>

            <label>Unit Learning Outcome:</label>
            <textarea class="form-control" name="outcome" cols="25" rows="3" required></textarea><br><br>

            <label>Teaching Staff:</label>
            <?php
            echo'<select name="staff[]" required class="form-control" multiple>';
             $sql = "SELECT * FROM users WHERE role ='Program Leader' OR role='Teaching Staff'";
             $query = mysqli_query($conn,$sql);
                 while($row = mysqli_fetch_array($query)){
                     $fetch = $row['full_Name'];
                     echo'<option>'.$fetch.'</option>';
                 }
            echo'</select>'
            ?>
                <br><br>

                <label>Pre-requisite:</label>
                <input type="text" name="pr" class="form-control"><br><br>
                <label>Co-requisite:</label>
                <input type="text" name="cr" class="form-control"><br><br>
                <label>Anti-requisite:</label>
                <input type="text" name="ar" class="form-control"><br>
                <input type="submit" value="Add Unit">
        </form>
        <?php
    include 'connection.php';
     if(isset($_POST['ucode']) && 
        isset($_POST['uname']) &&
        isset($_POST['aim']) &&
        isset($_POST['outcome'])&&
        isset($_POST['staff'])){
         $ucode = $_POST['ucode'];
         $uname = $_POST['uname'];
         $aim = $_POST['aim'];
         $outcome = $_POST['outcome'];
         $pr = $_POST['pr'];
         $cr = $_POST['cr'];
         $ar = $_POST['ar'];
         $staff_string = implode(', ', $_POST['staff']);

         if($pr == ''){
             $pr ='NILL';
         }
          if($cr == ''){
             $cr ='NILL';
         }
          if($ar == ''){
             $ar ='NILL';
         }
         $sql = "INSERT INTO units(unitCode,unitName,aim,LearningOutcome) VALUES ('$ucode','$uname','$aim','$outcome');
                 INSERT INTO coreq (unitCode,Co_Req) VALUES('$ucode','$cr');
                 INSERT INTO antirequnit (unitCode,Anti_Req) VALUES('$ucode','$ar');
                 INSERT INTO prerequnit (unitCode,Pre_Req) VALUES('$ucode','$pr');
                 INSERT INTO staffteach(CodeUnit,staffName) VALUES('$ucode','$staff_string');
         ";
         
            if ($conn->multi_query($sql) === TRUE) {
                echo'<script>alert("Unit Added Successfully!");</script>';
                header("Refresh:0");
            }else{
                $conn->error;
            }
     }else{
         echo' ';
     }
            //the code above is used to add and remove units
    ?>
</body>
</html>