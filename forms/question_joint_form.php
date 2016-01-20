<?php session_start();

require_once('../php/config.php');

if(isset($_POST['submit']) && $_POST['submit'] == 'Save')
{
    mysql_query("INSERT INTO question_joint(question_id,quest_cat_id) VALUES('".$_POST['quest']."','".$_POST['category']."')") or die('Error: '. mysql_error());
       
    unset($_SESSION['subj']);
    echo "<script> alert('Successfully saved'); window.location.href='question_joint_form.php' </script>";
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
                        <h1 class="page-header">New Question Joint</h1>
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

                             <a href="../pages/questions_joint.php" class="alert-link">view</a>.
                        </div>
                    </div>
                <?php } ?>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              Answer
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                           <label>Please Select Subject</label>
                                           <?php 
                                                $result = mysql_query("SELECT * FROM subject ") or die('Error: '. mysql_error());
                                           ?>
                                           <form method="post" action="question_joint_form.php?quest=true" role="form">
                                                <select name="subj" required class="form-control" onchange='this.form.submit()'>
                                                    <option value="">SELECT</option>
                                                    <?php 
                                                        while ($row = mysql_fetch_array($result)) 
                                                        {
                                                    ?>
                                                        <option value="<?php echo $row['id']; ?>" <?php echo ($_POST['subj'] == $row['id']) ? 'SELECTED' : false;  ?> > <?php echo $row['name']; ?></option>
                                                    <?php
                                                        }
                                                    ?>
                                                </select>
                                            </form>
                                        </div>
                                        <?php
                                            if(isset($_GET['quest']) && $_GET['quest'] == true)
                                            {
                                        ?>
                                        <form method="post" action="question_joint_form.php" role="form">
                                            <div class="form-group">
                                               <label>Please Select Category</label>
                                               <?php 
                                                    $result = mysql_query("SELECT * FROM question_category WHERE subject_id = '".$_POST['subj']."'") or die('Error: '. mysql_error());
                                               ?>
                                                <select name="category" required class="form-control">
                                                    <option value="">SELECT</option>
                                                    <?php 
                                                        while ($row = mysql_fetch_array($result)) 
                                                        {
                                                    ?>
                                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                                                    <?php
                                                        }
                                                    ?>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                               <label>Please Select Question</label>
                                               <?php 
                                                    $result = mysql_query("SELECT * FROM questions WHERE subject_id = '".$_POST['subj']."' AND NOT EXISTS(SELECT * FROM question_joint WHERE questions.id = question_joint.question_id)") or die('Error: '. mysql_error());
                                               ?>
                                                <select name="quest" required class="form-control">
                                                    <option value="">SELECT</option>
                                                    <?php 
                                                        while ($row = mysql_fetch_array($result)) 
                                                        {
                                                    ?>
                                                            <option value="<?php echo $row['id']; ?>"><?php echo $row['question']; ?></option>
                                                    <?php
                                                        }
                                                    ?>
                                                </select>
                                            </div>
            
                                            <input type="submit" name="submit" value="Save" class="btn btn-primary">
                                            <a class="btn btn-primary" href="../pages/questions_joint.php">Back </a>
                                        </form>
                                        <?
                                            }
                                        ?>
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
