<?php
function sanitizeInput($input) {
    return htmlspecialchars(stripslashes(trim($input)));
}

function validateEmail($email) {
    return filter_var($email, FILTER_VALIDATE_EMAIL);
}

function validateUsername($username) {
    return preg_match('/^[a-zA-Z0-9]{5,}$/', $username);
}

function validatePassword($password) {
    return preg_match('/^[a-zA-Z0-9!@#$%^&*()_]{6,}$/', $password);
}
?>
