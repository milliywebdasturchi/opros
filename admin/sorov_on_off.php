<?php

if(isset($_GET['sorov_id'])) {

    include "./../db.php";

    $sorov_id = $_GET['sorov_id'];

    $checkQuery = mysqli_query($conn, "SELECT `endDate` FROM sorovnoma WHERE id = '$sorov_id'");
    $row = mysqli_fetch_assoc($checkQuery);
    
    if($row['endDate'] == null) {
        date_default_timezone_set('Asia/Tashkent');
    
        $endDate = time();
        
        $sorov_end_query = mysqli_query($conn, "UPDATE `sorovnoma` SET `endDate` = '$endDate' WHERE `id` = '$sorov_id'");

        if($sorov_end_query) {
            header("Location: index.php?endDate=off");
            exit;
        } else {
            header("Location: index.php?endDate=error");
            exit;
        }
    } else {
        
        $sorov_end_query = mysqli_query($conn, "UPDATE `sorovnoma` SET `endDate` = null WHERE `id` = '$sorov_id'");

        if($sorov_end_query) {
            header("Location: index.php?endDate=on");
            exit;
        } else {
            header("Location: index.php?endDate=error");
            exit;
        }
    }

    

}

?>