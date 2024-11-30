<?php 

$dbHost = "localhost";
$dbUsername = "root";
$dbPass = "";
$dbName = "19030_psas";

$conn = mysqli_connect($dbHost, $dbUsername, $dbPass, $dbName);

// setting waktu WIB
date_default_timezone_set("Asia/Jakarta");
