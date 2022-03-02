<?php

if(isset($_GET['sorov_id'])) {

    include "./../db.php";

    $sorov_id = $_GET['sorov_id'];

    date_default_timezone_set('Asia/Tashkent');
    
    $endDate = time();
    
    $sorov_end_query = mysqli_query($conn, "UPDATE `sorovnoma` SET `endDate` = '$endDate' WHERE `id` = '$sorov_id'");

}

?>