<?php
SESSION_START();
    include('connection.php');
    $password = $_POST['password'];

    $sql = "UPDATE Students SET Password = '".$password."' WHERE Student_ID = '".$_SESSION['username']."'";
    $result = sqlsrv_query($con,$sql);

    if($result){
        ?>
        <script>
            alert("Passwords Changed Successfully.");
            window.location.href = "index.php";
        </script>
        <?php
    }
    else{
        die();
        header("Location: password.php");
    }
?>