<?php
include 'connect.php';


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$warehouse_id = $_POST['warehouse_id'];
$areaName = $_POST['areaName'];
$district = $_POST['district'];
$division = $_POST['division'];
$whManagerID = $_POST['whManagerID'];

$sql = "INSERT INTO warehouse_t VALUES ('$warehouse_id', '$areaName', '$district', '$division', '$whManagerID')";

if ($conn->query($sql) === TRUE) {
    echo "Warehouse saved successfully!";
    header('Location: ../entries/warehouseentry.php');
} 

else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
