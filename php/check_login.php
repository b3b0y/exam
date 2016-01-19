<?php session_start();
require_once('../php/config.php');


 $uname = $_POST['uname'];
 $pass = $_POST['pass'];


function clean($value) {

    if(get_magic_quotes_gpc()) $value = stripslashes($value);
    return trim(mysql_real_escape_string($value));
}



$sql = "SELECT * FROM users WHERE (username ='".$uname."')";
$qry = mysql_query($sql) or die("Query IS wrong : " . mysql_error());
$num = mysql_num_rows($qry);
	
$row = mysql_fetch_array($qry);
if ($num==0 || $pass!=$row['password']) //check if the pass is in the database
{
	//failed to login
			echo "<script> alert('Username or Password Incorrect'); 
					window.location.assign('../index.html') </script>";
} 
else 
{
	if($row['ULevel'] == 5) //check if User level is 5
	{
		$_SESSION['login'] = "ADMIN";
		$_SESSION['user_id'] = $row['id'];
		header("Location: ../pages/index.php");
	}
	else //check if User Level is 1
	{
		$_SESSION['login'] = "STUDENT";
		$_SESSION['user_id'] = $row['id'];
		header("Location: ../pages/exams.php");
	}
}

?>
