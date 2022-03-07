<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "opros";

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

if(!$conn) {
	die("Database connection error!");
}

?>