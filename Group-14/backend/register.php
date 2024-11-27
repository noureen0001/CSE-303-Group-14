<?php
    include 'connect.php';

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    if ($_SERVER["REQUEST_METHOD"]  === "POST") {
        $userid = $_POST["id"];
        $first_name = $_POST["first_name"];
        $last_name = $_POST["last_name"];
        $password = $_POST["password"];
        $area = $_POST["area"];
        $district = $_POST["district"];
        $user_type = $_POST["user_type"];
        $contact_number = $_POST["conatct_number"];

        $user_name = $first_name . " " . $last_name;

        $sql = "INSERT INTO user_login_t VALUES('$userid', '$user_name', '$password', '$user_type')";

        $result = $conn->query($sql);

        if (strtolower($user_type) === "farmer") {
            $sql = "INSERT INTO farmer_t(FarmerID, FName, LName, AreaName, District, ContactNumber) VALUES('$userid', '$first_name', '$last_name', '$area', '$district', '$contact_number')";

            if ($conn->query($sql) === TRUE) {
                echo "Data updated successfully!";
                header('Location: ../login.html');
            }
        } 
        
        else if (strtolower($user_type) === "driver") {
            $sql = "INSERT INTO driver_t (DriverID, FName, LName, AreaName, District, ContactNumber) VALUES('$userid', '$first_name', '$last_name', '$area', '$district', '$contact_number')";

            if ($conn->query($sql) === TRUE) {
                echo "Data updated successfully!";
                header('Location: ../login.html');
            }
        }

        else if (strtolower($user_type) === "Warehouse Manager") {
            $sql = "INSERT INTO driver_t (WHManagerID, FName, LName, AreaName, District, ContactNumber) VALUES('$userid', '$first_name', '$last_name', '$area', '$district', '$contact_number')";

            if ($conn->query($sql) === TRUE) {
                echo "Data updated successfully!";
                header('Location: ../login.html');
            }
        }
    }
?>