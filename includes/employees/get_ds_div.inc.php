<?php
require_once("../connection/dbh.inc.php");
if(!empty($_GET['ds_div_id'])) {
    $ds_div_id = $_GET["ds_div_id"];
    $query ="SELECT * FROM ds_divisions WHERE dist_id = $ds_div_id";
    $results = mysqli_query($conn, $query);
    ?>
    <option value="">Select State</option>
    <?php
    foreach($results as $state) {
        ?>
        <option value="<?php echo $state["id"]; ?>"><?php echo $state["ds_div_name"]; ?></option>
        <?php
    }
}
