<?php

include "./../db.php";

if(isset($_POST['send'])) {
    $sorov_id = mysqli_real_escape_string($conn, $_POST['sorov_id']);
    $sql_1 = mysqli_query($conn, "SELECT * FROM hisobot WHERE s_id = '$sorov_id'");
    $sql_2 = mysqli_query($conn, "SELECT * FROM javoblar WHERE sorov_id = '$sorov_id'");

    
    $sum = 0;
    $arr = array();
    while ($row_2 = mysqli_fetch_array($sql_2)) {
        while($row_1 = mysqli_fetch_array($sql_1)) {
            $res_1 = explode(' / ', $row_1['answers']);
            $num = count($res_1);

            for($i = 0; $i < $num; $i++) {
                if($res_1[$i] == $row_2['javob']) {
                    $sum++;
                }
            }
            
        }
        array_push($arr, $sum);
        $sum = 0;          
    } 
    echo "<pre>";
    print_r($arr);
   
}