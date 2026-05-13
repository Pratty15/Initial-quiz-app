<?php
$conn = new mysqli("db", "user", "user", "quiz_db");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>