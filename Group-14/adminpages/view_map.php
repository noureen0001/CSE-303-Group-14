<?php
    session_start();

    $user_name = $_SESSION['user_name'];
?>

<!DOCTYPE html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> <?php echo $user_name ?> | Admin</title>

    <link rel="stylesheet" href="../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="../assets/vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/vendors/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="shortcut icon" href="../assets/images/favicon.png" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <style>
        #map {
            height: 850px;
            width: 100%;
        }
    </style>
  </head>
  <body>
    <div class="container-scroller">

      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
          <a class="navbar-brand brand-logo" href="index.html"><img src="../assets/images/logo.svg" alt="logo" /></a>
          <a class="navbar-brand brand-logo-mini" href="index.html"><img src="../assets/images/logo-mini.svg" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
          </button>
          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                <div class="nav-profile-img">
                  <img src="../assets/images/faces/face23.jpg" alt="image">
                  <span class="availability-status online"></span>
                </div>
                <div class="nav-profile-text">
                  <p class="mb-1 text-black"><?php echo $user_name; ?></p>
                </div>
              </a>
              <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                <a class="dropdown-item" href="#">
                  <i class="mdi mdi-cached me-2 text-success"></i> Activity Log </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="../login.html">
                  <i class="mdi mdi-logout me-2 text-primary"></i> Signout </a>
              </div>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <div class="container-fluid page-body-wrapper">
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="nav-profile-image">
                  <img src="../assets/images/faces/face23.jpg" alt="profile" />
                  <span class="login-status online"></span>
                </div>
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2"><?php echo $user_name; ?></span>
                  <span class="text-secondary text-small">Admin</span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../admin.php">
                <span class="menu-title">Home</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="backend/grading_criteria.php">
                <span class="menu-title">Grading Criteria</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="backend/quality_reports.php">
                <span class="menu-title">Records and Quality Reports</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="#">
                <span class="menu-title">Track Graded Produce</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="adminpages/admin-add-user.php">
                <span class="menu-title">Add Government Users</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="adminpages/admin-grade-supplier.php">
                <span class="menu-title">Grade Suppliers</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#forms" aria-expanded="false" aria-controls="forms">
                <span class="menu-title">Entries</span>
                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              </a>
              <div class="collapse" id="forms">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item">
                    <a class="nav-link" href="entries/farmentries.html">Farm</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="entries/warehouseentry.php">Warehouse</a>
                  </li>
                </ul>
              </div>
            </li>


            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <span class="menu-title">All Users</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-crosshairs-gps menu-icon"></i>
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-farmerlist.php">Farmers</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Grading Unit Manager</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Neutritionist</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-driverlist.php">Driver</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Warehouse Manager</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-suppliers.php">Supplier</a>
                  </li>
                </ul>
              </div>
            </li>

            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                <span class="menu-title">Warehouse List</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-lock menu-icon"></i>
              </a>
              <div class="collapse" id="auth">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-warehouses-dhaka.php"> Dhaka </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-warehouses-chittagong.php"> Chittagong </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-warehouses-rajshahi.php"> Rajshahi </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-warehouses-khulna.php"> Khulna </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-warehouses-barisal.php"> Barisal </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-warehouses-sylhet.php"> Sylhet </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-warehouses-rangpur.php"> Rangpur </a>
                  </li>
                </ul>
              </div>
            </li>

            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                <span class="menu-title">Farm List</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-lock menu-icon"></i>
              </a>
              <div class="collapse" id="auth">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-farm-dhaka.php"> Dhaka </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-farm-chittagong.php"> Chittagong </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-farm-rajshahi.php"> Rajshahi </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-farm-khulna.php"> Khulna </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-farm-barisal.php"> Barisal </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-farm-sylhet.php"> Sylhet </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="adminpages/admin-farm-rangpur.php"> Rangpur </a>
                  </li>
                </ul>
              </div>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="../login.html">
                <span class="menu-title">Sign Out</span>
                <i class="mdi mdi-file-document-box menu-icon"></i>
              </a>
            </li>
          </ul>
        </nav>
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                  <i class="mdi mdi-home"></i>
                </span> Track Product
              </h3>
            </div>
            <div id="map"></div>
            <?php
              include '../backend/connect.php';

              if ($_SERVER["REQUEST_METHOD"] === "POST") {
                if (isset($_POST['view_map'])) {
                  $selected_lot = $_POST['view_map'];
                }
              }
              $sql = "SELECT StorageLocation, StorageLatitude, StorageLongitude, Destination, DestinationLatitude, DestinationLongitude FROM tracking_product_t WHERE LotID='$selected_lot'";

              $result = $conn->query($sql);

              while ($row = mysqli_fetch_array($result)) {
                $storage_location = $row['StorageLocation'];
                $storage_latitude = $row['StorageLatitude'];
                $storage_longitude = $row['StorageLongitude'];
                $destination = $row['Destination'];
                $destination_latitude = $row['DestinationLatitude'];
                $destination_longitude = $row['DestinationLongitude'];

              }
              // $storage_location = $_SESSION['storage_location'];
              // $storage_latitude = $_SESSION['storage_latitude'];
              // $storage_longitude = $_SESSION['storage_longitude'];
              // $destination = $_SESSION['destination'];
              // $destination_latitude = $_SESSION['destination_latitude'];
              // $destination_longitude = $_SESSION['destination_longitude'];
            ?>
              <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
              <script>
                const map = L.map('map').setView([<?php echo $storage_latitude?>, <?php echo $storage_longitude?>], 18);
                L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                maxZoom: 19,
                }).addTo(map);

                const source = [<?php echo $storage_latitude?>, <?php echo $storage_longitude?>];
                const destination = [<?php echo $destination_latitude?>, <?php echo $destination_longitude?>];

                L.marker(source).addTo(map).bindPopup('Source: <?php echo $storage_location?>').openPopup();
                L.marker(destination).addTo(map).bindPopup('Destination: <?php echo $destination?>');

                const route = L.polyline([source, destination], { color: 'blue' }).addTo(map);

                map.fitBounds(route.getBounds());
            </script>
          </div>
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2024 <a href="#">Agro Comapny</a>. All rights reserved.</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Made by Group-14</span>
            </div>
          </footer>
        </div>
      </div>
    </div>
    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../assets/vendors/chart.js/chart.umd.js"></script>
    <script src="../assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="../assets/js/off-canvas.js"></script>
    <script src="../assets/js/misc.js"></script>
    <script src="../assets/js/settings.js"></script>
    <script src="../assets/js/todolist.js"></script>
    <script src="../assets/js/jquery.cookie.js"></script>
    <script src="../assets/js/dashboard.js"></script>
  </body>
</html>