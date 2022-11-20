<?php
    $server = "DESKTOP-M0HVKJ6\WARSI";
    $connectionOptions = [
        "Database"=>"dbUniversityPortal_DBMS",
        "Uid"=>"",
        "PWD"=>""
    ];

    $con = sqlsrv_connect($server,$connectionOptions);

    if($con == false){
        die();
    }    
?>