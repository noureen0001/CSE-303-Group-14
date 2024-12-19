<form action="#" method="post">
    <input type="text" name="grade" placeholder="Enter Grade">
    <button type="submit">Submit Grade</button>
</form>


<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if (isset($_POST['grade_supplier'])) {
        $selected_supplier = $_POST['grade_supplier'];
        $_SESSION['selected_supplier'] = $selected_supplier;
    }
}

?>

<?php
include '../backend/connect.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $grade = $_POST['grade'];
    $selected_supplier = $_SESSION['selected_supplier'];

    $sql = "UPDATE supplier_t SET GradeRequirement='$grade' WHERE SupplierID='$selected_supplier'";
    $conn->query($sql);
    if ($conn->query($sql2)) {
        header('Location: ../admin.php');
    }
    else {
        echo $conn->error;
    }
}
?>