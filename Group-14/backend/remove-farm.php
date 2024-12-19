<?php

include '../backend/connect.php';
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if (isset($_POST['remove_farm'])) {
        $selected_farm = $_POST['remove_farm'];

        $sql1 = "UPDATE harvest_lot_t SET FarmID=NULL WHERE harvest_lot_t.FarmID='$selected_farm'";
        $sql2 = "UPDATE farmer_t SET farmer_t.FarmID=NULL WHERE farmer_t.FarmID='$selected_farm'";
        $sql3 = "DELETE FROM farm_t WHERE FarmID='$selected_farm'";

        $conn->query($sql1);
        $conn->query($sql2);
        $conn->query($sql3);

        if ($conn->query($sql3)) {
            header('Location: ../admin.php');
        }
        else {
            echo $conn->error;
        }
    }
}

?>