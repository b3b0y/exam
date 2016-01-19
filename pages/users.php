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

if(isset($_GET['user']) && $_GET['user'] == 5)
{
    $result = mysql_query("SELECT * FROM users WHERE ULevel = 5");
}
else
{
    $result = mysql_query("SELECT * FROM users WHERE ULevel = 1");
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

     <!-- DataTables CSS -->
    <link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css">
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
                        <h1 class="page-header">Users</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>

                <div class="panel-body">
                   <a href="../forms/signup_form.php?user=<?php echo $_GET['user'] ?>"> <button type="button" class="btn btn-primary">Add new</button> </a>
                </div>
                 <!-- /.row -->
                <div class="row">
                    <div class="col-lg-20">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Users List
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="dataTable_wrapper">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>id</th>
                                                <th>Name</th>
                                                <th>Address</th>
                                                <th>Contact No.</th>
                                                <th>Username</th>
                                                <th>Password</th>
                                                <th>User level</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                            if(mysql_num_rows($result) > 0)
                                            {
                                                $i=0;
                                                while ($row = mysql_fetch_array($result)) 
                                                {
                                                    $c++;
                                                    if($i%2==0) $class = 'even'; else $class = 'odd';
                                        ?>
                                            <tr class="odd gradeX <?php echo $class; ?>">
                                                <td><?php echo $c; ?></td>
                                                <td><?php echo $row['Lname'] .', '.  $row['Fname'] .' '. $row['Mname']; ?></td>
                                                <td><?php echo $row['address']; ?></td>
                                                <td><?php echo $row['Cnumber']; ?></td>
                                                <td><?php echo $row['username']; ?></td>
                                                <td><?php echo $row['password']; ?></td>
                                                <td><?php echo $row['ULevel']; ?></td>
                                                <td><?php echo $row['status']; ?></td>
                                                <td><a href="../forms/edit_user_form.php?user=<?php echo $row['id']; ?>"><button  class="fa fa-edit"></button></a> <a onclick="return confirm('Are you sure you want to delete?');" href="../php/delete.php?user=<?php echo $row['id']; ?>"><button  class=" fa fa-trash-o"></button></a></td>
                                            </tr>
                                        <?php
                                                }
                                            }
                                        ?>
                                        </tbody>
                                    </table>
                                </div>
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

    <!-- DataTables JavaScript -->
    <script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>

</body>

</html>
