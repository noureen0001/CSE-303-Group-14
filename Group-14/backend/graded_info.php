<?php
include 'connect.php';

if ($_SERVER["REQUEST_METHOD"]  === "POST") {
    $crop_name = $_POST["crop_name"];
    $warehouse_name = $_POST["warehouse_name"];
    $crop_type = $_POST["crop_type"];
    $grade = $_POST["grade"];

    $sql = "INSERT INTO graded_crop_t(CropName, WarehouseName, CropType, Grade) VALUES ('$crop_name', '$warehouse_name', '$crop_type', '$grade')";

    $result = $conn->query($sql);

    if ($result === TRUE) {
        echo "Data Updated Successfully!";
        header('Location: ../gumdashboard.php');
    }
}
?>