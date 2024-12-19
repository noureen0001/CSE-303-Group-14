<?php
include 'connect.php';
session_start();

if ($_SERVER["REQUEST_METHOD"]  === "POST") {
    $emp_id = $_POST['nid'];
    $name = $_POST['user_name'];
    $location = $_POST['work_location'];
    $type = $_POST['user_type'];

    $password = "12345";

    $sql1 = "INSERT INTO government_staff_t VALUES('$emp_id', '$name','$location', '$type')";
    $sql2 = "INSERT INTO user_login_t VALUES('$emp_id', '$name','$password', '$type')";

    if ($conn->query($sql1) && $conn->query($sql2)) {
        echo "Data Updated Successfully!";
        header('Location: ../admin.php');
    }
}

?>