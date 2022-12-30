<?php
$con = mysqli_connect("tagencytravel.cfky5jm7t9zn.ap-south-1.rds.amazonaws.com", "admin", "admin123", "tagency");
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>