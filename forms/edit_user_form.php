<?php session_start();

require_once('../php/config.php');

if(isset($_POST['submit']) && $_POST['submit'] == 'Save')
{

    mysql_query("UPDATE users SET Fname = '".$_POST['fname']."',Mname = '".$_POST['mname']."' ,Lname = '".$_POST['lname']."',address= '".$_POST['address']."',Cnumber= '".$_POST['cnum']."',username= '".$_POST['uname']."',password= '".$_POST['pass']."' WHERE id = '".$_POST['id']."' ") or die('Error: '. mysql_error());

    echo "<script> alert('Successfully Update'); window.location.href='../pages/users.php' </script>";
}

$result = mysql_query("SELECT * FROM users WHERE id ='".$_GET['user']."'");
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
                        <h1 class="page-header">Update user</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              Sign-up
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <form method="post" action="signup_form.php" role="form">
                                            <input name="id" type="hidden" value="<?php echo $_GET['user']; ?>">
                                            <div class="form-group">
                                                <label>First name:</label>
                                                <input name="fname" type="text" class="form-control" placeholder="First name" value="<?php echo $row['Fname']; ?>" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Middle name:</label>
                                                <input name="mname" type="text" class="form-control" placeholder="Middle name" value="<?php echo $row['Mname']; ?>" required>
                                            </div>
                                            <div class="form-group">
                                                <label>last name:</label>
                                               <input name="lname" type="text" class="form-control" placeholder="Last name" value="<?php echo $row['Lname']; ?>" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Address:</label>
                                                <input name="address" type="text" class="form-control" placeholder="Address" value="<?php echo $row['address']; ?>" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Contact number:</label>
                                                <input name="cnum" type="text" class="form-control" placeholder="Contact number" value="<?php echo $row['Cnumber']; ?>" required>
                                            </div>
                                            <div class="form-group">
                                                <label>User name:</label>
                                                <input name="uname" type="text" class="form-control" placeholder="Username" value="<?php echo $row['username']; ?>" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Password:</label>
                                                <input name="pass" type="password" class="form-control" placeholder="Password" value="<?php echo $row['password']; ?>"  required>
                                            </div>

                                            <input type="submit" name="submit" value="Save" class="btn btn-primary">
                                            <a class="btn btn-primary" href="../pages/users.php">Back </a>
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
