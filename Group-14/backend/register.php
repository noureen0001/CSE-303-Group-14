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
        $division = $_POST["division"];
        $user_type = $_POST["user_type"];
        $contact_number = $_POST["conatct_number"];

        $user_name = $first_name . " " . $last_name;

        $sql = "INSERT INTO user_login_t VALUES('$userid', '$user_name', '$password', '$user_type')";

        $result = $conn->query($sql);

        if (strtolower($user_type) === "farmer") {
            $sql1 = "INSERT INTO farmer_t(FarmerID, FName, LName, AreaName, District, Division, ContactNumber) VALUES('$userid', '$first_name', '$last_name', '$area', '$district', '$division' '$contact_number', 'NULL')";

            if ($conn->query($sql1) === TRUE) {
                echo "Data updated successfully!";
                header('Location: ../login.html');
            }
            else {
                echo $conn->query($sql1);
            }
        } 
        
        else if (strtolower($user_type) === "driver") {
            $sql1 = "INSERT INTO driver_t VALUES('$userid', '$first_name', '$last_name', '$area', '$district', '$division', '$contact_number', NULL, NULL)";

            if ($conn->query($sql1) === TRUE) {
                echo "Data updated successfully!";
                header('Location: ../login.html');
            }
            else {
                echo $conn->query($sql1);
            }
        }

        else if (strtolower($user_type) === "warehouse manager") {
            $sql1 = "INSERT INTO warehouse_manager_t VALUES('$userid', '$first_name', '$last_name', '$area', '$district', '$division', '$contact_number')";

            if ($conn->query($sql1) === TRUE) {
                echo "Data updated successfully!";
                header('Location: ../login.html');
            }
            else {
                echo $conn->query($sql1);
            }
        }

        else if (strtolower($user_type) === "supplier") {
                $sql1 = "INSERT INTO supplier_t VALUES('$userid', '$user_name', '$area', '$district', '$division', '$contact_number')";
    
                if ($conn->query($sql1) === TRUE) {
                    echo "Data updated successfully!";
                    header('Location: ../login.html');
                }
                else {
                    echo $conn->query($sql1);
                }
        }
    }
?>