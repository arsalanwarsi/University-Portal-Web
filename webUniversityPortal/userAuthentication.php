<?php
    SESSION_START();
    include('connection.php');
    $email = $_POST['login_email'];
    $password = $_POST['login_password'];
    
    $sql = "SELECT * FROM Students WHERE Student_ID = '".$email."' AND password = '".$password."'";
    
    $result = sqlsrv_query($con,$sql);
    $i = 0;

    while(sqlsrv_fetch_array($result)){
        $i++;
    }

    if($i==1){
        $_SESSION['username'] = $_POST['login_email'];
        header("Location: index.php");
    }
    else {
        ?>
            <script>
                alert("Registration ID or Password Incorrect");
                history.back();
            </script>
        <?php
    }
?>