<?php date_default_timezone_set("Asia/Hong_kong");


$dbhost = 'localhost';
$dbuser= 'root';
$dbpass = '';
$dbname = 'entranceexam';

$conn = mysql_connect($dbhost,$dbuser,$dbpass);

mysql_select_db($dbname);
?>