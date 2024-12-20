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
  </head>
  <body>
    <div class="container-scroller">

      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
          <a class="navbar-brand brand-logo" href="index.html"><img src="../assets/images/login/login page.jpg" alt="logo" /></a>
          <a class="navbar-brand brand-logo-mini" href="index.html"><img src="../assets/images/login/login page.jpg" alt="logo" /></a>
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
                <a class="dropdown-item" href="login.html">
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
              <a class="nav-link" href="adminpages/track_product.php">
                <span class="menu-title">Track Graded Produce</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                <span class="menu-title">Problem Areas</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-lock menu-icon"></i>
              </a>
              <div class="collapse" id="auth">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item">
                    <a class="nav-link" href="problem_areas_heavy_rainfall.php"> Heavy Rainfall </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="problem_areas_flooding.php"> Flooding </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="problem_areas_maintanance_problem.php"> Maintanace Problem </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="problem_areas_insect_attack.php"> Insect Attack </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="problem_areas_drought.php"> Drought </a>
                  </li>
                </ul>
              </div>
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
                </span> Overdose of Pesticide
              </h3>
              <nav aria-label="breadcrumb">
                <ul class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">
                    <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                  </li>
                </ul>
              </nav>
            </div>
            <div class="card-body">
              <h4 class="card-title">Select Years</h4>
              <div class="template-demo">
              <button class="btn btn-gradient-primary btn-fw"><a href="overdose-2021.php" target="_blank">2021</a></button>
                <button class="btn btn-gradient-secondary btn-fw"><a href="overdose-2022.php" target="_blank">2022</a></button>
                <button class="btn btn-gradient-success btn-fw"><a href="overdose-2023.php" target="_blank">2023</a></button>
              </div>
              </div>

            
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