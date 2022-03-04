<?php 
include "./../db.php";

$sorov_id = mysqli_real_escape_string($conn, $_POST['sorov_id']);
$savol_name = mysqli_real_escape_string($conn, $_POST['savol_name']);

// insert savol
$insertSavolQuery = mysqli_query($conn, "INSERT INTO savollar (`s_id`,`savol`) VALUES ('$sorov_id','$savol_name')");

// check savol insert id
$insertSavolId = mysqli_insert_id($conn);

// insert javoblar
$num = count($_POST['javob_name']);
if($num > 0) {
    for ($i = 0; $i < $num; $i++) {
        if(trim($_POST["javob_name"][$i] != ''))  
        {  
            $insertJavob = mysqli_query($conn, "INSERT INTO javoblar(`savol_id`,`javob`) VALUES ('$insertSavolId','".mysqli_real_escape_string($conn, $_POST['javob_name'][$i])."')");
        }
    }
    header("Location: index.php?insert=success");
    exit;
}

?>