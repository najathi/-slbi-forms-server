<?php

include_once '../connection/dbh.inc.php';

if (!empty($_POST['insert'])) {

    $id = mysqli_real_escape_string($conn, $_POST["id"]);
    $namee = mysqli_real_escape_string($conn, $_POST["namee"]);
    $comBName = mysqli_real_escape_string($conn, $_POST["comBName"]);
    $address_l_one = mysqli_real_escape_string($conn, $_POST["address_l_one"]);
    $address_l_two = mysqli_real_escape_string($conn, $_POST["address_l_two"]);
    $y_email = mysqli_real_escape_string($conn, $_POST["y_email"]);
    $m_no = mysqli_real_escape_string($conn, $_POST["m_no"]);
    $prod_name = mysqli_real_escape_string($conn, $_POST["prod_name"]);
    $prod_in_id = mysqli_real_escape_string($conn, $_POST["prod_in_id"]);
    $prod_in_name = mysqli_real_escape_string($conn, $_POST["prod_in_name"]);
    $prod_in_nic = mysqli_real_escape_string($conn, $_POST["prod_in_nic"]);
    $prod_in_dist = mysqli_real_escape_string($conn, $_POST["prod_in_dist"]);
    $prod_in_gn = mysqli_real_escape_string($conn, $_POST["prod_in_gn"]);
    $prod_in_ds = mysqli_real_escape_string($conn, $_POST["prod_in_ds"]);

    $query = "INSERT INTO manufacturer (namee ,comBName ,address_l_one ,address_l_two ,y_email ,m_no ,prod_name ,prod_in_id ,prod_in_name ,prod_in_nic ,prod_in_dist ,prod_in_gn ,prod_in_ds) VALUES ('$namee' ,'$comBName' ,'$address_l_one' ,'$address_l_two' ,'$y_email' ,'$m_no' ,'$prod_name' ,'$prod_in_id' ,'$prod_in_name' ,'$prod_in_nic' ,'$prod_in_dist' ,'$prod_in_gn' ,'$prod_in_ds')";

    $resultSimDetails = mysqli_query($conn, $query);

    if ($resultSimDetails) {
        header("Location: ../../manufacturer?menu=success");
        exit();

    } else {
        header("Location: ../../manufacturer?menu=dataErr");
        exit();
    }
} else {
    header("Location: ../../manufacturer?menu=dataErr");
    exit();
}