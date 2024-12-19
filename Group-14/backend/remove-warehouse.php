<?php
include '../backend/connect.php';


if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if (isset($_POST['remove_warehouse'])) {
        $selected_warehouse = $_POST['remove_warehouse'];

        $sql1 = "UPDATE warehouse_t SET WHManagerID=NULL WHERE WarehouseID='$selected_warehouse'";
        $sql2 = "DELETE FROM warehouse_t WHERE WarehouseID='$selected_warehouse'";

        $conn->query($sql1);
        $conn->query($sql2);

        if ($conn->query($sql2)) {
            header('Location: ../admin.php');
        }
        else {
            echo $conn->error;
        }
    }
}
?>