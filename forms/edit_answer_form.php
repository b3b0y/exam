<?php session_start();
require_once('../php/config.php');

if(isset($_POST['submit']) && $_POST['submit'] == 'Save')
{
    mysql_query("UPDATE answers SET text = '".$_POST['text']."', correct = '".$_POST['correct']."' WHERE id = '".$_POST['id']."'") or die('Error: '. mysql_error());      
    
    echo "<script> alert('Successfully Updated'); window.location.href='../pages/answers.php' </script>";
}





$result = mysql_query("SELECT * FROM answers WHERE id = '".$_GET['answer']."'") or die("Error: ". mysql_error());
$row = mysql_fetch_array($result);
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
                        <h1 class="page-header">New answer</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                    <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              Answer
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                       
                                        
                                        <form method="post" action="edit_answer_form.php" role="form">
                                            <input type="hidden" name="id" value="<?php echo $_GET['answer']; ?>">
                                            <div class="form-group">
                                                <label>Answer </label>
                                                <input name="text" type="text" class="form-control" placeholder="text" value="<?php echo $row['text']; ?>" required>
                                            </div>
                                            <div class="form-group">
                                                <div class="checkbox">
                                                    <label>
                                                        <input name="correct" type="checkbox" value="1" <?php echo $row['correct'] == 1 ? 'checked' : ''; ?>> Select if Correct 
                                                    </label>
                                                </div>
                                            </div>

                                            <input type="submit" name="submit" value="Save" class="btn btn-primary">
                                            <a class="btn btn-primary" href="../pages/answers.php">Back </a>
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
