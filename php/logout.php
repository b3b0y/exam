<?php session_start();

	date_default_timezone_set("Asia/Hong_Kong");
	
	require_once('../php/config.php');

	
unset($_SESSION['login']); 
session_destroy();

header("Location: ../index.html");

?>