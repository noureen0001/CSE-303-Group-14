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
                    <a class="nav-link" href="entries/warehouseentry.html">Warehouse</a>
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
                    <a class="nav-link" href="#"> Dhaka </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"> Chittagong </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"> Rajshahi </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"> Khulna </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"> Barisal </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"> Sylhet </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"> Rangpur </a>
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
          <h4 class="card-title">Warehouse Managers</h4>
          <table class="table table-striped">
                      <thead>
                        <tr>
                          <th> Warehouse Manager ID </th>
                          <th> Area Name </th>
                          <th> District </th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php
                          include '../backend/connect.php';
                          $sql = "SELECT WHManagerID, AreaName, District FROM warehouse_manager_t";

                          $result = $conn->query($sql);

                          echo "<tr>";

                          while ($row = mysqli_fetch_array($result)) {
                            $id = $row['WHManagerID'];
                            $area_name = $row['AreaName'];
                            $district = $row['District'];
                            echo "<td>" . $id . "</td>";
                            echo "<td>" . $area_name . "</td>";
                            echo "<td>" . $district . "</td></tr>";
                          }
                        ?>
                      </tbody>
                    </table>
            <br><br>
            
            <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Warehouse Information</h4>
                    <form class="forms-sample" method="post" action="../backend/save_warehouse.php">
                      <div class="form-group">
                        <label for="exampleInputUsername1">Warehouse ID</label>
                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Warehouse ID" name="warehouse_id" required>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Area Name</label>
                        <input type="text" class="form-control" id="areaName" placeholder="Area Name" name="areaName" required>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">District</label>
                        <input type="text" class="form-control" id="district" placeholder="District" name="district" required>
                      </div>

                      <div class="form-group">
                        <label for="exampleInputPassword1">Division</label>
                        <input type="text" class="form-control" id="district" placeholder="Division" name="division" required>
                      </div>

                      <div class="form-group">
                        <label for="exampleInputConfirmPassword1">Warehouse Manager</label>
                        <input type="text" class="form-control" id="exampleInputConfirmPassword1" placeholder="Manager ID" name="whManagerID">
                      </div>
                      <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
                      <button class="btn btn-light">Cancel</button>
                    </form>
                  </div>
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