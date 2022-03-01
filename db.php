<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "opros";

$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

if(!$conn) {
	die("Database connection error!");
}

?>