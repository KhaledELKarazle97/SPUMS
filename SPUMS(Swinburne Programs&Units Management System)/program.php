<?php
include 'connection.php';
include 'navbar.php';
?>
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

        <title>Programs Management | SPUMS</title>
    </head>

    <body class="container-fluid">

        <h3>Programs Management</h3>
        <input type="text" id="search" onkeyup="search()" placeholder="Enter Program Name:" class="form-control"><br>
        <?php
        if(isset($_SESSION["email"])){
        $sql = "SELECT programs.pcode, programs.pname,programs.outcome,programs.ProgramLeader,program_units.unitName,program_units.unitType FROM programs INNER JOIN program_units ON program_units.pCode = programs.pcode";
        $query = mysqli_query($conn,$sql);
        echo'<table class="table table-bordered" id="userTable">';
        echo'<th>Program Code</th>';
        echo'<th onclick="sortTable(0)"><a href="#" title="Click to sort by Program Name" style="color:black">Program Name &#x25BE;</a></th>';
        echo'<th>Outcome</th>';
        echo'<th>List of Units</th>';
        echo'<th>Type of Unit</th>';
        echo'<th>Program Leader</th>';
        if($_SESSION['role']=='Program Leader'){
        echo'<th style="text-align:center">Actions</th>';
        }else{
            echo'';
        }
         while($row = mysqli_fetch_array($query)){
        $programCode = $row['pcode'];
        $programName = $row['pname'];
        $outcome = $row['outcome'];
        $unit = $row['unitName'];
        $pLeader = $row['ProgramLeader'];
        $type = $row['unitType'];

        echo'<tr>';
        echo"<td>$programCode</td>";
        echo"<td>$programName</td>";
        echo"<td>".wordwrap($outcome,70,'<br>')."</td>";
        echo"<td>".$unit."</td>";
        echo"<td>".$type."</td>";
        echo"<td>$pLeader</td>";
        if($_SESSION['role'] == 'Program Leader'){
        echo"<td><a href='delete_program.php?id=".$row['pcode']."'>Delete Program</a></td>";
        }else{
            echo'';
        }
        
        echo'</tr>';
       
        }     
    
        echo'</table>';
    }else{
        header("Location:login.php");
    }
        ?>
        
        <?php
        if($_SESSION['role']=='Program Leader'){
               echo'<select name="units[]" required class="form-control">';
             $sql = "SELECT * FROM units";
             $query = mysqli_query($conn,$sql);
            while($row = mysqli_fetch_assoc($query)){
             $fetch = $row['unitCode'].' : '.$row['unitName'];
                     echo'<option>'.$fetch.'</option>';
                 }
            echo'</select><br>';
            echo '<label>Select Unit Type: </label> <select name="type[]" >';  
            echo'<option value="Core">Core</option>';
            echo'<option value="Elective">Elective</option>';
            echo'<option value="Minor">Minor</option>';
            echo '</select>';
            
            
            echo'<hr>
            <h4>Add Programs</h4>
            <form method="post">
                <label>Program Code:</label>
                <input type="text" name="pcode" class="form-control" required><br><br>

                <label>Program Name:</label>
                <input type="text" name="pname" class="form-control" required><br><br>

                <label>Learning Outcome:</label>
                <textarea name="outcome" cols="25" rows="3" class="form-control" required></textarea><br><br>
                <label>Add Unit(s):</label>';
             
                echo'<span id="showUnit">';
            
            echo'<select name="units[]" required class="form-control"> ';
             $sql = "SELECT * FROM units";
             $query = mysqli_query($conn,$sql);
            while($row = mysqli_fetch_assoc($query)){
             $fetch = $row['unitCode'].' : '.$row['unitName'];
                     echo'<option>'.$fetch.'</option>';
                 }
            echo'</select><br>';
            echo '<label>Select Unit Type: </label> <select name="type[]" id="unitshow">';  
            echo'<option value="Core">Core</option>';
            echo'<option value="Elective">Elective</option>';
            echo'<option value="Minor">Minor</option>';
            echo '</select>';
            
            echo'  </span>';
            
            
            echo'<br><input type="button" id="addunit" value="Add Units"> ';
            echo'<br><br><br>';
            echo'<label>Program Leader:</label>';  
            echo'<select name="pLeader" class="form-control" required>';
             $sql = "SELECT * FROM users WHERE role ='Program Leader'";
             $query = mysqli_query($conn,$sql);
                 while($row = mysqli_fetch_assoc($query)){
                     $fetch = $row['full_Name'];
                     echo'<option>'.$fetch.'</option>';
                 }
            echo'</select> ';
            
                       echo'<br>';
                        echo'<input type="submit" value="Add Program"><br><br>';
            echo'</form>';
        }else{
            echo ' ';
        }
                
                    
           
                            
        ?>
            <?php
    include 'connection.php';
     if(isset($_POST['pcode']) && 
        isset($_POST['pname']) &&
        isset($_POST['outcome']) &&
        isset($_POST['units'])&&
        isset($_POST['pLeader'])){
         
         $pcode = $_POST['pcode'];
         $pname = $_POST['pname'];
         $outcome = $_POST['outcome'];
         $units_string = implode('<br>', $_POST['units']);
         $type_stirng = implode('<br>',$_POST['type']);
         $pLeader = $_POST['pLeader'];
         
         $sql = "INSERT INTO programs(pcode,pname,outcome,ProgramLeader) VALUES ('$pcode','$pname','$outcome','$pLeader');
                 INSERT INTO program_units(pCode,unitName,unitType) VALUES ('$pcode','$units_string','$type_stirng')";
         
            if ($conn->multi_query($sql) === TRUE) {
              echo'<script>alert("Program Added Successfully!");</script>';
            }else{
                $conn->error;
            }
     }
        //this code is used to add and remove programs
    ?>
    </body>
        <script>
            //script for adding more units
        $(document).ready(function(){
           var i = 1; 
            $('#addunit').click(function(){
                i++;
                $('#showUnit').append('<?php
            echo'<select name="units[]" required class="form-control">';
             $sql = "SELECT * FROM units";
             $query = mysqli_query($conn,$sql);
            while($row = mysqli_fetch_assoc($query)){
             $fetch = $row['unitCode'].' : '.$row['unitName'];
                     echo'<option>'.$fetch.'</option>';
                 }
            echo'</select><br>';
            echo '<label>Select Unit Type: </label> <select name="type[]">';  
            echo'<option value="Core">Core</option>';
            echo'<option value="Elective">Elective</option>';
            echo'<option value="Minor">Minor</option>';
            echo '</select>';                 
            ?>');
            });
        });
    
        </script>
    </html>