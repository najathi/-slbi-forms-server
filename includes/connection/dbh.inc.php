<?php

// server
//$dbServerName = "localhost";
//$dbUsername = "slbilk_najathi";
//$dbPassword = "y;mse.D9dbIs";
//$dbName = "slbilk_slbi_admin_new";

// local
$dbServerName = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "slbi_admin";

// Create connection
$conn = mysqli_connect($dbServerName, $dbUsername, $dbPassword, $dbName);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
