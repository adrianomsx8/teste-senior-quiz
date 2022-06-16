<?php
//phpinfo();
$host = "localhost";
$user = "postgres";
$pass = "postgres";
$port = "5432";
$dbname = "quiz";

try {
    $conn = new PDO("pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$pass");
} catch(PDOException $e) {
    echo 'ERROR: ' . $e->getMessage();
}


