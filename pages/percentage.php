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


if(isset($_POST['submit']))
{
    mysql_query("UPDATE percentage SET percent = '".$_POST['percent']."' WHERE id = '".$_POST['id']."'");
}
$result = mysql_query("SELECT * FROM percentage") or die("Error: ". mysql_error());
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
                        <h1 class="page-header">Percentage Settings</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>

               
                 <!-- /.row -->
                <div class="row">
                    <div class="col-lg-20">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Percentage list
                            </div>
                            <?php
                                if(isset($_GET['id']))
                                {
                                    $result = mysql_query("SELECT * FROM percentage WHERE id = '".$_GET['id']."'");
                                    $row = mysql_fetch_array($result);
                            ?>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <form method="post" action="percentage.php" role="form">
                                            <h2><?php echo$row['title']; ?></h2>
                                             <div class="form-group">
                                                <label>Percent (%)</label>
                                                <input name="percent"  type="number" min="0" max="100" class="form-control" placeholder="percentage" value="<?php echo $row['percent']; ?>" required>
                                                <input type="hidden" value="<?php echo $row['id']; ?>" name='id'>
                                            </div>
                                            <input type="submit" name="submit" value="Save" class="btn btn-primary">
                                            <a class="btn btn-primary" href="percentage.php">Back </a>
                                        </form>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->
                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <?php
                                }
                                else
                                {
                             ?>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="dataTable_wrapper">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>Title</th>
                                                <th>Percent</th>
                                                 <th>action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                            if(mysql_num_rows($result) > 0)
                                            {
                                                while ($row = mysql_fetch_array($result)) {
                                        ?>
                                            <tr class="odd gradeX">
                                                <td><?php echo $row['title']; ?></td>
                                                <td><?php echo $row['percent']; ?>%</td>
                                                <td><a href="percentage.php?id=<?php echo $row['id']; ?>"><button class="btn  btn-lg fa fa-edit"></button></a></td>
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
                            <?php                                  
                                }
                            ?>
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
