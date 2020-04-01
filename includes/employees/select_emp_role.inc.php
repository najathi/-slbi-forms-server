<?php

include_once 'includes/connection/dbh.inc.php';
$sqlSelectEmpRole = "SELECT * FROM emp_designation;";
$resultSelectEmpRole = mysqli_query($conn, $sqlSelectEmpRole);
