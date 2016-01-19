<?php session_start();

require_once('../php/config.php');

if(isset($_POST['submit']) && $_POST['submit'] == 'Save')
{

        mysql_query("UPDATE intgwa SET gwa = '".$_POST['gwa']."' , interview = '".$_POST['int']."' WHERE id = '".$_POST['id']."'") or die('Error: '. mysql_error());
        echo "<script> alert('Successfully Updated'); window.location.href='../pages/interview.php' </script>";
 
}


$result = mysql_query("SELECT  * FROM intgwa WHERE id ='".$_GET['intgwa']."' ") or die("Error: ". mysql_error());
$row1 = mysql_fetch_array($result);
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
                        <h1 class="page-header">Add Interview and GWA</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                             Score
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <form method="post" action="edit_interview_form.php" role="form">
                                            <input type="hidden" name="id" value="<?php echo $_GET['intgwa']; ?>">
                                            <div class="form-group">
                                           
                                           <?php 
                                                $result = mysql_query("SELECT * FROM users WHERE id = '".$row1['user_id']."'") or die('Error: '. mysql_error());
                                                 $row = mysql_fetch_array($result) 
                                            ?>
                                            <label>
                                                <?php echo $row['Fname']." ". $row['Mname']." ". $row['Lname']; ?>
                                            </label>
                                               
                                        </div>
                                            <div class="form-group">
                                                <label>General weighted average (0 - 100): </label>
                                                <input name="gwa" type="text" class="form-control" placeholder="General weighted average" value="<?php echo $row1['gwa']; ?>" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Interview (0 - 20):</label>
                                                <input name="int" type="text" class="form-control" placeholder="Interview" value="<?php echo $row1['interview']; ?>" required>
                                            </div>
                                        
                                            <input type="submit" name="submit" value="Save" class="btn btn-primary">
                                            <a class="btn btn-primary" href="../pages/interview.php">Back </a>
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
