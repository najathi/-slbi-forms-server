<?php

include_once '../connection/dbh.inc.php';

if (!empty($_POST['insert'])) {

    $valid_extensions = array('jpeg', 'jpg', 'png', 'gif', 'bmp' , 'pdf' , 'doc' , 'ppt'); // valid extensions

    $namee = mysqli_real_escape_string($conn, $_POST["namee"]);
    $gender = mysqli_real_escape_string($conn, $_POST["gender"]);
    $cstatus = mysqli_real_escape_string($conn, $_POST["cstatus"]);
    $address_l_one = mysqli_real_escape_string($conn, $_POST["address_l_one"]);
    $address_l_two = mysqli_real_escape_string($conn, $_POST["address_l_two"]);
    $nic_no = mysqli_real_escape_string($conn, $_POST["nic_no"]);
    $m_no = mysqli_real_escape_string($conn, $_POST["m_no"]);
    $designation = mysqli_real_escape_string($conn, $_POST["designation"]);
    $district = mysqli_real_escape_string($conn, $_POST["district"]);
    $ds_div = mysqli_real_escape_string($conn, $_POST["ds_div"]);
    $gn_div = mysqli_real_escape_string($conn, $_POST["gn_div"]);
    $email_add = mysqli_real_escape_string($conn, $_POST["email_add"]);
    $sim_no = mysqli_real_escape_string($conn, $_POST["sim_no"]);
    $sim_s_no = mysqli_real_escape_string($conn, $_POST["sim_s_no"]);

    // Get image name
    $pass_fileName = $_FILES['pass_img']['name'];
    $pass_fileType = $_FILES['pass_img']['type'];
    $pass_fileTmpName = $_FILES['pass_img']['tmp_name'];
    $pass_fileError = $_FILES['pass_img']['error'];
    $pass_fileSize = $_FILES['pass_img']['size'];
    $pass_fileExt = explode(".", $pass_fileName);
    $pass_fileActualExt = strtolower(end($pass_fileExt));
    $pass_fileNameFull = uniqid("", true) . '1' . $pass_fileName;

    $nic_f_fileName = $_FILES['nic_f_img']['name'];
    $nic_f_fileType = $_FILES['nic_f_img']['type'];
    $nic_f_fileTmpName = $_FILES['nic_f_img']['tmp_name'];
    $nic_f_fileError = $_FILES['nic_f_img']['error'];
    $nic_f_fileSize = $_FILES['nic_f_img']['size'];
    $nic_f_fileExt = explode(".", $nic_f_fileName);
    $nic_f_fileActualExt = strtolower(end($nic_f_fileExt));
    $nic_f_fileNameFull = uniqid("", true) . '2' . $nic_f_fileName;

    $nic_b_fileName = $_FILES['nic_b_img']['name'];
    $nic_b_fileName = $_FILES['nic_b_img']['name'];
    $nic_b_fileType = $_FILES['nic_b_img']['type'];
    $nic_b_fileTmpName = $_FILES['nic_b_img']['tmp_name'];
    $nic_b_fileError = $_FILES['nic_b_img']['error'];
    $nic_b_fileSize = $_FILES['nic_b_img']['size'];
    $nic_b_fileExt = explode(".", $nic_b_fileName);
    $nic_b_fileActualExt = strtolower(end($nic_b_fileExt));
    $nic_b_fileNameFull = uniqid("", true) . '3' . $nic_b_fileName;

    $allowed = array("jpg", "jpeg", "png");

    $currentDir = getcwd();
    $uploadDirectory1 = "../../../assets/images/emp-photo/";

        if ($pass_fileError === 0 && $nic_f_fileError === 0 && $nic_b_fileError === 0) {
            if ($pass_fileSize < 6000000 && $nic_f_fileSize < 6000000 && $nic_b_fileSize < 6000000) {

                $target_pass_img = $uploadDirectory1 . basename($pass_fileNameFull);
                $target_nic_f_img = $uploadDirectory1 . basename($nic_f_fileNameFull);
                $target_nic_b_img = $uploadDirectory1 . basename($nic_b_fileNameFull);

                // Compress Image
                compressedImage($_FILES['pass_img']['tmp_name'], $target_pass_img, 60);
                compressedImage($_FILES['nic_f_img']['tmp_name'], $target_nic_f_img, 60);
                compressedImage($_FILES['nic_b_img']['tmp_name'], $target_nic_b_img, 60);

                // move_uploaded_file($_FILES['pass_img']['tmp_name'], $target_pass_img);

                $query = "
    INSERT INTO employees(namee, address_l_one, address_l_two, nic_no, pass_img, m_no, designation, gn_div, ds_div, district, nic_f_img, nic_b_img, sim_no, sim_s_no)  
     VALUES('$namee', '$address_l_one', '$address_l_two', '$nic_no', '$pass_fileNameFull', '$m_no', '$designation', '$gn_div', '$ds_div', '$district','$nic_f_fileNameFull', '$nic_b_fileNameFull', '$sim_no', '$sim_s_no')";

                $resultSimDetails = mysqli_query($conn, $query);

                if ($resultSimDetails) {
                    header("Location: ../../employee?emp=success");
                    exit();

                } else {
                    header("Location: ../../employee?emp=dataErr");
                    exit();
                }

            } else {
                header("Location: ../../employee?emp=sizeErr");
                exit();
            }
        } else {
            header("Location: ../../employee?emp=fileErr");
            exit();
        }
}

// Compress image
function compressedImage($source, $path, $quality)
{
    $info = getimagesize($source);

    if ($info['mime'] == 'image/jpeg')
        $image = imagecreatefromjpeg($source);

    elseif ($info['mime'] == 'image/gif')
        $image = imagecreatefromgif($source);

    elseif ($info['mime'] == 'image/png')
        $image = imagecreatefrompng($source);

    imagejpeg($image, $path, $quality);

}