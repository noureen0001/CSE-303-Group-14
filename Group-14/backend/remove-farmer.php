<?php
include '../backend/connect.php';


if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if (isset($_POST['remove_farmer'])) {
        $selected_farmer = $_POST['remove_farmer'];

        $sql = "UPDATE farmer_t SET FarmID=NULL WHERE FarmerID='$selected_farmer'";
        $sql1 = "UPDATE farm_t SET FarmerID=NULL WHERE FarmerID='$selected_farmer'";
        $sql2 = "DELETE FROM farmer_t WHERE FarmerID='$selected_farmer'";
        $sql3 = "DELETE FROM user_login_t WHERE userid='$selected_farmer'";

        $conn->query($sql);
        $conn->query($sql1);
        $conn->query($sql2);
        $conn->query($sql3);

        if ($conn->query($sql2)) {
            header('Location: ../adminpages/admin-farmerlist.php');
        }
        else {
            echo $conn->error;
        }
    }
}
?>