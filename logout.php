<?php 
 
session_start();
session_destroy();
 
header("Location: dasbord/index.html");
 
?>