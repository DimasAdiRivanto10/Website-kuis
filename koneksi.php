<?php 
 
$server = "localhost:3309";
$user = "root";
$pass = "";
$database = "kuiss";
 
$conn = mysqli_connect($server, $user, $pass, $database);
 
if (!$conn) {
    die("<script>alert('Gagal tersambung dengan database.')</script>");
}
 
?>