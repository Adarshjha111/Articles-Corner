 <?php
echo "this is a PHP Apache container";
phpinfo();
?> 

<?php

//These are the defined authentication environment in the db service

// The MySQL service named in the docker-compose.yml.
$host = 'mysql';

// Database use name
$user = 'root';

//database user password
$pass = 'admin';

// check the MySQL connection status
$conn = new mysqli($host, $user, $pass);
//$db = mysqli_connect("localhost", "root", "admin", "tests");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Connected to MySQL server successfully!";
}


?>