<?php

include_once 'includes/connection/dbh.inc.php';
$sqlSelectDist = "SELECT * FROM `districts`";
$resultSelectDist = mysqli_query($conn, $sqlSelectDist);
