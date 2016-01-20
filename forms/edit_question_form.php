<?php session_start();
require_once('../php/config.php');

if(isset($_POST['submit']) && $_POST['submit'] == 'Save')
{

        if($_FILES["photo"]['size'] != 0)
        { 
            $image_url = '../question_photo/'.$_FILES["photo"]["name"]; 
        }
        else
        {
            $image_url = "";  
        }

        mysql_query("UPDATE questions SET subject_id = '".$_POST['subj']."' , question = '".$_POST['descrip']."' , image_url= '".$image_url."' WHERE id = '".$_POST['id']."'") or die('Error: '. mysql_error());

        move_uploaded_file($_FILES['photo']['tmp_name'], $image_url);

    echo "<script> alert('Successfully UPDATED'); window.location.href='../pages/questions.php' </script>";
}


$result = mysql_query("SELECT * FROM questions WHERE id = '".$_GET['quest']."'") or die("Error: ". mysql_error());
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
                        <h1 class="page-header">New Question</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <?php 
                    if(isset($message)) 
                    { 
                ?>
                    <div class="row">
                        <div class="alert alert-success">
                             Record was added. 

                             <a href="../pages/questions.php" class="alert-link">view</a>.
                        </div>
                    </div>
                <?php } ?>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              Question
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                      
                                            <form method="post" enctype="multipart/form-data" action="edit_question_form.php" role="form">
                                                <div class="form-group">
                                                   <label>Please Select Subject</label>
                                                   <?php 
                                                        $result = mysql_query("SELECT * FROM subject") or die('Error: '. mysql_error());
                                                   ?>
                                                    <select name="subj" required class="form-control">
                                                        <option value="">SELECT</option>
                                                        <?php 
                                                            while ($row = mysql_fetch_array($result)) 
                                                            {
                                                        ?>
                                                            <option value="<?php echo $row['id'] ?>" <?php echo $row['id'] == $row1['subject_id'] ? 'SELECTED' : ''; ?> ><?php echo $row['name'] ?></option>
                                                        <?php
                                                            }
                                                        ?>
                                                    </select>
                                                </div>

                                                <input type="hidden" name="id" value="<?php echo $_GET['quest']; ?>">
                                                    <p style="border-bottom: 2px dashed #cccccc;margin-top: 1px;"></p>
                                                    <p ><b>  Question No.:  </b></p>
                                                    <div class="form-group">
                                                        <label>Select Image</label>
                                                        <input name="photo" type="file">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Enter Question</label>
                                                        <textarea name="descrip" class="form-control" rows="3" required><?php echo $row1['question']; ?></textarea>
                                                    </div>

                                                <input type="submit" name="submit" value="Save" class="btn btn-primary">
                                                <a class="btn btn-primary" href="../pages/questions.php">Back </a>
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
