<?php
    include 'connect.php';

    if ($_SERVER["REQUEST_METHOD"]  === "POST") {
        $userid = $_POST["userid"];
        $password = $_POST["password"];

        $sql = "SELECT userid, user_name, password, user_type FROM user_login_t WHERE userid = '$userid' AND password = '$password'";

        $result = $conn->query($sql);

        if ($result->num_rows === 1) {
            echo "Login successful!<br>";

            $userid;
            $user_name;
            $password;
            $user_type;

            while ($row = $result->fetch_assoc()) {
                $userid = $row['userid'];
                $user_name = $row['user_name'];
                $password = $row['password'];
                $user_type = $row['user_type'];
            }

            session_start();

            if (strtolower($user_type) === 'admin') {
                $_SESSION['userid'] = $userid;
                $_SESSION['user_name'] = $user_name;
                header('Location: ../admin.php');
            }

            else if (strtolower($user_type) === 'farmer') {
                $_SESSION['userid'] = $userid;
                $_SESSION['user_name'] = $user_name;
                header('Location: ../farmerdashboard.php');
            }

            else if (strtolower($user_type) === "driver") {
                $_SESSION['userid'] = $userid;
                $_SESSION['user_name'] = $user_name;
                header('Location: ../driverdashboard.php');
            }

            else if (strtolower($user_type) === "nutritionist") {
                $_SESSION['userid'] = $userid;
                $_SESSION['user_name'] = $user_name;
                header('Location: ../nutritionistdashboard.php');
            }

            else if (strtolower($user_type) === "warehouse manager") {
                $_SESSION['userid'] = $userid;
                $_SESSION['user_name'] = $user_name;
                header('Location: ../warehousemanagerdashboard.php');
            }

        } else {
            echo "Login failed. Please check your username and password.";
        }
    }
?>