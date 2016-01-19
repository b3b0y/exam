<?php session_start();

require_once('../php/config.php');

if(!isset($_SESSION['login'])) 
{
        header("Location: ../pages/login.php");
} 


if(isset($_GET['section']) && $_GET['section'] != "")
{

	mysql_query("DELETE FROM sections WHERE id = '".$_GET['section']."'");

	echo "<script> alert('Successfully Deleted'); window.location.href='../pages/sections.php' </script>";
}

if(isset($_GET['user']) && $_GET['user'] != "")
{

	mysql_query("DELETE FROM users WHERE id = '".$_GET['user']."'");

	echo "<script> alert('Successfully Deleted'); window.location.href='../pages/users.php' </script>";
}

if(isset($_GET['answer']) && $_GET['answer'] != "")
{

	mysql_query("DELETE FROM answers WHERE id = '".$_GET['answer']."'");

	echo "<script> alert('Successfully Deleted'); window.location.href='../pages/answers.php' </script>";
}

if(isset($_GET['quest']) && $_GET['quest'] != "")
{

	mysql_query("DELETE FROM questions WHERE id = '".$_GET['quest']."'");

	echo "<script> alert('Successfully Deleted'); window.location.href='../pages/questions.php' </script>";
}

if(isset($_GET['questcat']) && $_GET['questcat'] != "")
{

	mysql_query("DELETE FROM question_category WHERE id = '".$_GET['questcat']."'");

	echo "<script> alert('Successfully Deleted'); window.location.href='../pages/questions_category.php' </script>";
}

if(isset($_GET['questjoin']) && $_GET['questjoin'] != "")
{

	mysql_query("DELETE FROM question_joint WHERE id = '".$_GET['questjoin']."'");

	echo "<script> alert('Successfully Deleted'); window.location.href='../pages/questions_joint.php' </script>";
}

if(isset($_GET['subj']) && $_GET['subj'] != "")
{

	mysql_query("DELETE FROM subject WHERE id = '".$_GET['subj']."'");

	echo "<script> alert('Successfully Deleted'); window.location.href='../pages/subjects.php' </script>";
}

if(isset($_GET['intgwa']) && $_GET['intgwa'] != "")
{

	mysql_query("DELETE FROM intgwa WHERE id = '".$_GET['intgwa']."'");

	echo "<script> alert('Successfully Deleted'); window.location.href='../pages/interview.php' </script>";
}

?>