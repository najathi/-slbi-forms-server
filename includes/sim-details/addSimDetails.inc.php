<?php

include_once '../connection/dbh.inc.php';

if (!empty($_POST['insert'])) {

    $namee = mysqli_real_escape_string($conn, $_POST["namee"]);
    $address_l_one = mysqli_real_escape_string($conn, $_POST["address_l_one"]);
    $address_l_two = mysqli_real_escape_string($conn, $_POST["address_l_two"]);
    $nic_no = mysqli_real_escape_string($conn, $_POST["nic_no"]);
    $m_no = mysqli_real_escape_string($conn, $_POST["m_no"]);
    $designation = mysqli_real_escape_string($conn, $_POST["designation"]);
    $gn_div = mysqli_real_escape_string($conn, $_POST["gn_div"]);
    $ds_div = mysqli_real_escape_string($conn, $_POST["ds_div"]);
    $district = mysqli_real_escape_string($conn, $_POST["district"]);
    $sim_no = mysqli_real_escape_string($conn, $_POST["sim_no"]);
    $sim_s_no = mysqli_real_escape_string($conn, $_POST["sim_s_no"]);

    // Get image name
    $nic_f_fileName = $_FILES['nic_f_img']['name'];
    $nic_f_fileType = $_FILES['nic_f_img']['type'];
    $nic_f_fileTmpName = $_FILES['nic_f_img']['tmp_name'];
    $nic_f_fileError = $_FILES['nic_f_img']['error'];
    $nic_f_fileSize = $_FILES['nic_f_img']['size'];
    $nic_f_fileExt = explode(".", $nic_f_fileName);
    $nic_f_fileActualExt = strtolower(end($nic_f_fileExt));
    $nic_f_fileNameFull = uniqid("", true) . '1' . $nic_f_fileName;

    $nic_b_fileName = $_FILES['nic_b_img']['name'];
    $nic_b_fileName = $_FILES['nic_b_img']['name'];
    $nic_b_fileType = $_FILES['nic_b_img']['type'];
    $nic_b_fileTmpName = $_FILES['nic_b_img']['tmp_name'];
    $nic_b_fileError = $_FILES['nic_b_img']['error'];
    $nic_b_fileSize = $_FILES['nic_b_img']['size'];
    $nic_b_fileExt = explode(".", $nic_b_fileName);
    $nic_b_fileActualExt = strtolower(end($nic_b_fileExt));
    $nic_b_fileNameFull = uniqid("", true) . '2' . $nic_b_fileName;

    $allowed = array("jpg", "jpeg", "png");

    $currentDir = getcwd();
    $uploadDirectory1 = "../../../assets/images/emp-photo/";

        if ($nic_f_fileError === 0 && $nic_b_fileError === 0) {
            if ($nic_f_fileSize < 6000000 && $nic_b_fileSize < 6000000) {

                // image file directory
                $target_nic_f_img = $uploadDirectory1  . basename($nic_f_fileNameFull);
                $target_nic_b_img = $uploadDirectory1  . basename($nic_b_fileNameFull);

                // Compress Image
                compressedImage($_FILES['nic_f_img']['tmp_name'],$target_nic_f_img,60);
                compressedImage($_FILES['nic_b_img']['tmp_name'],$target_nic_b_img,60);

                // move_uploaded_file($_FILES['nic_f_img']['tmp_name'], $target_nic_f_img);
                // move_uploaded_file($_FILES['nic_b_img']['tmp_name'], $target_nic_b_img);

                $query = "
    INSERT INTO sim_details(namee, address_l_one, address_l_two, nic_no, nic_f_img, nic_b_img, m_no, designation, gn_div, ds_div, district, sim_no, sim_s_no)  
     VALUES('$namee', '$address_l_one', '$address_l_two', '$nic_no', '$nic_f_fileNameFull', '$nic_b_fileNameFull', '$m_no', '$designation', '$gn_div', '$ds_div', '$district', '$sim_no', '$sim_s_no')";

                $resultSimDetails = mysqli_query($conn, $query);

                if ($resultSimDetails) {
                    // $id = mysqli_insert_id($conn);

                    // PDF Class
                    include_once '../../pdf/sim-details-pdf-template.php';

                    // PDF Creaion
                    $pdf = new PDF();
                    $pdf->SetMargins(10, 10, 10);
                    $pdf->AliasNbPages();
                    $pdf->AddPage();

                    $pdf->SetFont('Arial', 'B', 15);
                    $pdf->SetWidths(array(190));
                    $pdf->SetLineHeight(10);
                    $pdf->SetAligns(array('C'));
                    $pdf->FancyRow(array('SIM DETAILS FORM'), array(''), array('C'), ['UB']);
                    $pdf->Ln(8);

                    $pdf->SetFont('Arial', '', 12);
                    $pdf->SetWidths(array(70, 100));
                    $pdf->SetLineHeight(10);
                    $pdf->SetAligns(array('L'));
                    $lineSpace = 3;
                    $pdf->FancyRow(array('Name: ', $namee), array('', ''), array('', 'L'), ['', 'B']);
                    $pdf->Ln($lineSpace);
                    $pdf->FancyRow(array('Address: ', $address_l_one), array('', ''), array('', 'L'), ['', 'B']);
                    $pdf->FancyRow(array('', $address_l_two), array('', ''), array('', 'L'), ['', 'B']);
                    $pdf->Ln($lineSpace);
                    $pdf->FancyRow(array('NIC No. ', $nic_no), array('', ''), array('', 'L'), ['', 'B']);
                    $pdf->Ln($lineSpace);
                    $pdf->FancyRow(array('Mobile No. ', $m_no), array('', ''), array('', 'L'), ['', 'B']);
                    $pdf->Ln($lineSpace);
                    $pdf->FancyRow(array('Designation: ', $designation), array('', ''), array('', 'L'), ['', 'B']);
                    $pdf->Ln($lineSpace);
                    $pdf->FancyRow(array('GN Division: ', $gn_div), array('', ''), array('', 'L'), ['', 'B']);
                    $pdf->Ln($lineSpace);
                    $pdf->FancyRow(array('DS Division: ', $ds_div), array('', ''), array('', 'L'), ['', 'B']);
                    $pdf->Ln($lineSpace);
                    $pdf->FancyRow(array('District: ', $district), array('', ''), array('', 'L'), ['', 'B']);
                    $pdf->Ln($lineSpace);
                    $pdf->FancyRow(array('Provided Sim number: ', $sim_no), array('', ''), array('', 'L'), ['', 'B']);
                    $pdf->Ln($lineSpace);
                    $pdf->FancyRow(array('Provided Sim Serial number:  ', $sim_s_no), array('', ''), array('', 'L'), ['', 'B']);

                    // Signature Part
                    $pdf->Ln(20);
                    $pdf->SetFont('Arial', '', 9);
                    $pdf->Cell(30, 5, '-----------------------------------------------', 0, 0);
                    $pdf->Cell(40, 5, '', 0, 0);
                    $pdf->Cell(30, 5, '', 0, 0);
                    $pdf->Cell(40, 5, '', 0, 0);
                    $pdf->Cell(30, 5, '-----------------------------------------------', 0, 1);

                    $pdf->SetFont('Arial', '', 12);
                    $pdf->Cell(30, 5, 'Date', 0, 0, '');
                    $pdf->SetFont('Arial', '', 9);
                    $pdf->Cell(45, 5, '', 0, 0);
                    $pdf->Cell(30, 5, '', 0, 0, 'C');
                    $pdf->Cell(45, 5, '', 0, 0);
                    $pdf->SetFont('Arial', '', 12);
                    $pdf->Cell(30, 5, 'Signature of Employee', 0, 1, 'C');
                    $pdf->Ln(15);

                    // office use
                    $pdf->SetFont('Arial', 'B', 15);
                    $pdf->SetWidths(array(190));
                    $pdf->SetLineHeight(10);
                    $pdf->SetAligns(array('C'));
                    $pdf->FancyRow(array('For Office use Only'), array(''), array('C'), ['UB']);
                    $pdf->Ln(15);

                    $pdf->SetFont('Arial', '', 12);
                    $pdf->SetWidths(array(60, 100));
                    $pdf->SetLineHeight(10);
                    $pdf->SetAligns(array('L'));
                    $lineSpace = 3;
                    $pdf->FancyRow(array('SLBI Membership No: ', '---------------------------------------------------------------'), array('', ''), array('', 'L'), ['', 'B']);
                    $pdf->Ln($lineSpace);

                    // Signature Part
                    $pdf->Ln(20);
                    $pdf->SetFont('Arial', '', 9);
                    $pdf->Cell(30, 10, '', 0, 0);
                    $pdf->Cell(40, 10, '', 0, 0);
                    $pdf->Cell(30, 10, '', 0, 0);
                    $pdf->Cell(40, 10, '', 0, 0);
                    $pdf->Cell(30, 10, '-----------------------------------------------', 0, 1);

                    $pdf->SetFont('Arial', '', 12);
                    $pdf->Cell(30, 10, '', 0, 0, '');
                    $pdf->SetFont('Arial', '', 9);
                    $pdf->Cell(45, 10, '', 0, 0);
                    $pdf->Cell(30, 10, '', 0, 0, 'C');
                    $pdf->Cell(45, 10, '', 0, 0);
                    $pdf->SetFont('Arial', '', 12);
                    $pdf->Cell(30, 10, 'Authorised Signatory', 0, 1, 'C');

                    $pdf->Output();

                } else {
                    header("Location: ../..?sim=dataErr");
                    exit();
                }

            } else {
                header("Location: ../..?sim=sizeErr");
                exit();
            }
        } else {
            header("Location: ../..?sim=fileErr");
            exit();
        }
}

// Compress image
function compressedImage($source, $path, $quality) {

    $info = getimagesize($source);

    if ($info['mime'] == 'image/jpeg') 
        $image = imagecreatefromjpeg($source);

    elseif ($info['mime'] == 'image/gif') 
        $image = imagecreatefromgif($source);

    elseif ($info['mime'] == 'image/png') 
        $image = imagecreatefrompng($source);

    imagejpeg($image, $path, $quality);

}