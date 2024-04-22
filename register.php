<?php
include 'validate.php';

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mywebsite";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$username = sanitizeInput($_POST['username']);
$password = password_hash(sanitizeInput($_POST['password']), PASSWORD_DEFAULT);
$email = sanitizeInput($_POST['email']);

if(!validateUsername($username) || !validatePassword($_POST['password']) || !validateEmail($email)) {
    echo "Invalid input";
    exit;
}

$sql = "INSERT INTO users (username, password, email) VALUES ('$username', '$password', '$email')";

if ($conn->query($sql) === TRUE) {
    echo "Registered successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}



$conn->close();

?>
</br></br>
<p><a href="index.html">Dashboard</a></p> 