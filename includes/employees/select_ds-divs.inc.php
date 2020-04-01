<?php

include_once 'includes/connection/dbh.inc.php';
$sqlSelectDSDiv = "SELECT * FROM ds_divisions;";
$resultSelectDSDiv = mysqli_query($conn, $sqlSelectDSDiv);
