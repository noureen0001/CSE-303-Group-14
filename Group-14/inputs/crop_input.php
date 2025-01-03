<?php
    include '../backend/connect.php';
    session_start();
    $userid = $_SESSION['userid'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <title>Crop Entry</title>

    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo">
        <div class="wrapper wrapper--w680">
            <div class="card card-1">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Crop Information</h2>
                    <form method="POST" action="#">
                        <div class="row row-space">
                            <div class="input-group">
                                <div class="col-1">
                                    <input class="input--style-1" type="text" placeholder="Crop Name" name="crop_name">
                                </div>
                            </div>
                            <div class="input-group">
                                <div class="col-1">
                                    <input class="input--style-1" type="text" placeholder="Crop Special Name" name="crop_spacial_name">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="crop_type">
                                            <option disabled="disabled" selected="selected">Crop Type</option>
                                            <option>Fruits</option>
                                            <option>Vegetables</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-t-20">
                            <button class="btn btn--radius btn--green" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <?php
        if ($_SERVER["REQUEST_METHOD"]  === "POST") {
            $crop_name = $_POST['crop_name'];
            $crop_special_name = $_POST['crop_spacial_name'];
            $crop_type = $_POST['crop_type'];

            $num = rand(10000, 99999);
            $numstr = strval($num);
            $crop_id = "";
            if ($crop_type === "Fruits") {
                $crop_id = "F" . $numstr;
            }
            else {
                $crop_id = "V" . $numstr;
            }

            $sql = "INSERT INTO produce_t(ProductID, Name, SpecialName, ProduceType, FarmerID ) VALUES ('$crop_id', '$crop_name', '$crop_special_name', '$crop_type', '$userid')";

            if ($conn->query($sql) === true) {
                echo "Data Updated Successfully";
                header('Location: ../farmerdashboard.php');
            }
        }
    ?>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>
    <script src="js/global.js"></script>
</body>
</html>
