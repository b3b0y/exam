<?php session_start();

require_once('../php/config.php');

if(isset($_POST['submit']) && $_POST['submit'] == 'Save')
{

    mysql_query("INSERT INTO sections(min,max,section,limits) VALUES('".$_POST['min']."','".$_POST['max']."','".$_POST['section']."','".$_POST['limits']."')") or die('Error: '. mysql_error());

   echo "<script> alert('Successfully saved'); window.location.href='../pages/sections.php' </script>";
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

        <?php require_once('../pages/navigation.php'); ?>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">New Section</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                 <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              Section
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <form method="post" action="section_form.php" role="form">
                                             <div class="form-group">
                                                <label>Minimum Average</label>
                                                <input name="min" type="text" class="form-control" placeholder="Minimum Average" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Maximum Average:</label>
                                                <input name="max" type="text" class="form-control" placeholder="Maximum Average" required>
                                            </div>

                                            <div class="form-group">
                                                <label>Section:</label>
                                                <input name="section" type="text" class="form-control" placeholder="Section" required>
                                            </div>

                                            <div class="form-group">
                                                <label>Limits:</label>
                                                <input name="limits" type="text" class="form-control" placeholder="Limits" required>
                                            </div>
                                        
                                            <input type="submit" name="submit" value="Save" class="btn btn-primary">
                                            <a class="btn btn-primary" href="../pages/sections.php">Back </a>
                                        </form>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->
                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
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
