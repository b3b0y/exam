<?php session_start();
require_once('../php/config.php');

if(!isset($_SESSION['login'])) 
{
        header("Location: ../pages/login.php");
} 

if(isset($_SESSION['login']) && $_SESSION['login'] == 'STUDENT') 
{
    header("Location: ../pages/exams.php");
}

?>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dolores National Highschool Entrance Exam</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <?php require_once('navigation.php'); ?>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header"></h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <?php
                    if(isset($_GET['db']) && $_GET['db'] == true)
                    {    
                ?>
                    <form name="import" action="../backup/db_backup.php" method="POST" enctype="multipart/form-data">    
                        <div class="col-lg-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                   Restore
                                </div>
                                <div class="panel-body">
                                    <label>Database to Restore from: </label><input type="file" name="rfile" required/>
                                    <br>
                                    <input type="submit" name="restore" value="Restore" onclick="return confirm('Are you sure you want to Restore this selected database?');">
                                </div>
                            </div>
                        </div> 
                    </form>
                    <form name="import" action="../backup/db_backup.php" method="POST" enctype="multipart/form-data">
                        <div class="col-lg-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                   Backup
                                </div>
                                <div class="panel-body">
                                    <label>Click to Backup Database: </label>
                                     <input type="submit"  name="backup" value="Backup" onclick="return confirm('Are you sure you want to backup your database?');">
                                </div>
                            </div>
                        </div>
                    </form>
                <?php
                    }
                ?>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
