<?php
include 'validate.php';

session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mywebsite";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$username = sanitizeInput($_POST['username']);
$password = sanitizeInput($_POST['password']);

$sql = "SELECT * FROM users WHERE username='$username'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    if (password_verify($password, $row['password'])) {
        $_SESSION['username'] = $username;
        header("Location: dashboard.php");
    } else {
        echo "Incorrect password";
    }
} else {
    echo "User not found";
}

$conn->close();
?>
