<?php
include '../backend/connect.php';


if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if (isset($_POST['remove_delivery'])) {
        $selected_lot = $_POST['remove_delivery'];

        $sql = "DELETE FROM delivery_progress_t WHERE LotID='$selected_lot'";

        $conn->query($sql);

        if ($conn->query($sql)) {
            header('Location: ../adminpages/delivery_progress.php');
        }
        else {
            echo $conn->error;
        }
    }
}
?>