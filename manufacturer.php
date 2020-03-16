<?php
// a_config.php template file
include('layouts/a_config.php');
$PAGE_TITLE = "Manufacturer";
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <?php
    include('layouts/head-tag-contents.php');
    ?>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-light bg-light mb-2">
    <?php include("layouts/header-logo.php"); ?>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <?php include("layouts/main_menu.php"); ?>
</nav>

<div class="container mb-5">

    <h3 class="display-4 mc-2">SLBI Manufacturer Details</h3>

    <?php
    $fullUrl = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
    if (strpos($fullUrl, "menu=dataErr") == true) {
        echo '<div style="margin-top:1rem;" class="alert alert-danger" role="alert">
				<strong>Data Insertion</strong> Sorry, that wasn\'t added, <b> Please Try Again</b>  
				</div>';
    } else if (strpos($fullUrl, "menu=success") == true) {
        echo '<div style="margin-top:1rem;" class="alert alert-success" role="alert">
				<strong>Manufacturer Details</strong> Successfully added,<b> We\'ll contact you soon. </b>  
				</div>';
    }
    ?>

    <div style="
    display: block;
        width: 200px;
        height: 50px;
        padding: 1rem;
        margin-bottom: 2rem;
        border: 3px #ccc solid;
        border-radius: 5px;
    ">
        <span style="font-size: 1rem; color: red; padding-bottom: 1rem"> * </span>
        Required fields
    </div>

    <form method="post" id="menuform" action="includes/manufacturer/add-new-menu.inc.php">
        <div class="form-group">
            <label for="namee">Full Name <span style="font-size: 1rem; color: red; padding-bottom: 1rem"> * </span></label>
            <input type="text" class="form-control" placeholder="Full Name" required name="namee" id="namee">
        </div>
        <div class="form-group">
            <label for="comBName">Company / Business Name <span style="font-size: 1rem; color: red; padding-bottom: 1rem"> * </span></label>
            <input type="text" class="form-control" placeholder="Company / Business Name" required name="comBName"
                   id="comBName">
        </div>
        <div class="form-group">
            <label for="prod_name">Product Name <span style="font-size: 1rem; color: red; padding-bottom: 1rem"> * </span></label>
            <input type="text" class="form-control" placeholder="Product Name" required name="prod_name" id="prod_name">
        </div>
        <div class="row mb-3">
            <div class="col-md-6">
                <label for="address_l_one">Address Line 1 <span style="font-size: 1rem; color: red; padding-bottom: 1rem"> * </span></label>
                <input type="text" class="form-control" placeholder="14 Tottenham Court Road" required
                       name="address_l_one"
                       id="address_l_one">
            </div>
            <div class="col-md-6">
                <label for="address_l_one">Address Line 2 <span style="font-size: 1rem; color: red; padding-bottom: 1rem"> * </span></label>
                <input type="text" class="form-control" placeholder="London England W1T 1JY" required
                       name="address_l_two"
                       id="address_l_two">
            </div>
        </div>
        <div class="form-group">
            <label for="y_email">Your E-mail Address <span style="font-size: 1rem; color: red; padding-bottom: 1rem"> * </span></label>
            <input type="email" class="form-control" placeholder="Your E-mail Address" required name="y_email"
                   id="y_email">
        </div>
        <div class="form-group">
            <label for="m_no">Personal Contact Number <span style="font-size: 1rem; color: red; padding-bottom: 1rem"> * </span></label>
            <input type="tel" class="form-control" placeholder="Mobile Number" required name="m_no" id="m_no">
        </div>
        <div style="margin: 2rem 0">
            <h3 style="padding-top: 1rem">Product Related Information</h3>
        </div>
        <div class="form-group">
            <label for="prod_in_id">Product Introducer ID</label>
            <input type="text" class="form-control" placeholder="Product Introducer ID" name="prod_in_id"
                   id="prod_in_id">
        </div>
        <div class="form-group">
            <label for="prod_in_name">Product Introducer Name</label>
            <input type="text" class="form-control" placeholder="Product Introducer Name" name="prod_in_name"
                   id="prod_in_name">
        </div>
        <div class="form-group">
            <label for="prod_in_nic">Product Introducer NIC No</label>
            <input type="text" class="form-control" placeholder="Product Introducer NIC No" name="prod_in_nic"
                   id="prod_in_nic">
        </div>
        <div class="form-group">
            <label for="prod_in_dist">Product Introducer District</label>
            <select class="form-control" name="prod_in_dist" id="prod_in_dist">
                <option value="">Select District</option>
                <option value="Ampara">Ampara</option>
                <option value="Anuradhapura">Anuradhapura</option>
                <option value="Badulla">Badulla</option>
                <option value="Batticaloa">Batticaloa</option>
                <option value="Colombo">Colombo</option>
                <option value="Galle">Galle</option>
                <option value="Gampaha">Gampaha</option>
                <option value="Hambantota">Hambantota</option>
                <option value="Jaffna">Jaffna</option>
                <option value="Kalutara">Kalutara</option>
                <option value="Kandy">Kandy</option>
                <option value="Kegalle">Kegalle</option>
                <option value="Kilinochchi">Kilinochchi</option>
                <option value="Kurunegala">Kurunegala</option>
                <option value="Mannar">Mannar</option>
                <option value="Matale">Matale</option>
                <option value="Matara">Matara</option>
                <option value="Moneragala">Moneragala</option>
                <option value="Mullaitivu">Mullaitivu</option>
                <option value="Nuwara Eliya">Nuwara Eliya</option>
                <option value="Polonnaruwa">Polonnaruwa</option>
                <option value="Puttalam">Puttalam</option>
                <option value="Ratnapura">Ratnapura</option>
                <option value="Trincomalee">Trincomalee</option>
                <option value="Vavuniya">Vavuniya</option>
            </select>
        </div>
        <div class="row">
            <div class="col-sm-6 col-lg-6 mb-3">
                <label for="prod_in_ds">Product Introducer DS Division</label>
                <input type="text" class="form-control" placeholder="Product Introducer DS Division" name="prod_in_ds" id="prod_in_ds">
            </div>
            <div class="col-sm-6 col-lg-6 mb-3">
                <label for="prod_in_gn">Product Introducer GN Division</label>
                <input type="text" class="form-control" placeholder="Product Introducer GN Division" name="prod_in_gn" id="prod_in_gn">
            </div>
        </div>

        <input type="submit" id="insert" name="insert" value="Submit" class="btn btn-primary submitBtn">
        <button type="reset" class="btn btn-secondary">Reset</button>
    </form>

</div>

<?php include("layouts/footer.php"); ?>

</body>
<?php include("layouts/scripts-files.php"); ?>

</html>