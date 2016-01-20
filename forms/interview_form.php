<?php session_start();

require_once('../php/config.php');

if(isset($_POST['submit']) && $_POST['submit'] == 'Save')
{
    $result = mysql_query("SELECT * FROM intgwa WHERE user_id = '".$_POST['user_id']."'");
    if(mysql_num_rows($result) > 0)
    {
        echo "<script> alert('Thes user is already have score'); window.location.href='interview_form.php' </script>";
    }
    else
    {
        mysql_query("INSERT INTO  intgwa(user_id,gwa,interview,date) VALUES('".$_POST['user_id']."','".$_POST['gwa']."','".$_POST['int']."','".date('Y:m:d H:i:s')."')") or die('Error: '. mysql_error());
        echo "<script> alert('Successfully saved'); window.location.href='../pages/interview.php' </script>";
    } 
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
                                        <form method="post" action="interview_form.php" role="form">
                                            <div class="form-group">
                                           <label>Please Select Student</label>
                                           <?php 
                                                $result = mysql_query("SELECT * FROM users WHERE ULevel = 1 AND NOT EXISTS(SELECT * FROM intgwa WHERE intgwa.user_id = users.id)") or die('Error: '. mysql_error());
                                           ?>
                                                <select name="user_id" required class="form-control" >
                                                    <option value="">SELECT</option>
                                                    <?php 
                                                        while ($row = mysql_fetch_array($result)) 
                                                        {
                                                    ?>
                                                        <option value="<?php echo $row['id']; ?>"> <?php echo $row['Fname']." ". $row['Mname']." ". $row['Lname']; ?></option>
                                                    <?php
                                                        }
                                                    ?>
                                                </select>
                                        </div>
                                            <div class="form-group">
                                                <label>General weighted average (0 - 100): </label>
                                                <input name="gwa" type="number" min="0" max="100" class="form-control" placeholder="General weighted average" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Interview (0 - 20):</label>
                                                <input name="int" type="number" min="0" max="20" class="form-control" placeholder="Interview" required>
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
