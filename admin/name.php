<?php  

// echo "<pre>";
// print_r($_POST);
// echo "</pre>";
// die;

$connect = mysqli_connect("localhost", "root", "", "test_db");

// insert categories
$cat_name = mysqli_real_escape_string($connect, $_POST['cat_name']);
$insertQuery = mysqli_query($connect, "INSERT INTO categories(name) VALUES ('$cat_name')");
$insert_cat_id = mysqli_insert_id($connect);


$number = count($_POST["name"]);  
if($number > 0)  
{  
    for($i=0; $i<$number; $i++)  
    {  
        if(trim($_POST["name"][$i] != ''))  
        {  
            $sql = "INSERT INTO tbl_name(cat_id, name) VALUES('$insert_cat_id','".mysqli_real_escape_string($connect, $_POST["name"][$i])."')";  
            mysqli_query($connect, $sql);  
        }  
    }  
    echo "Data Inserted";  
}  
else  
{  
    echo "Please Enter Name";  
}  
?> 