<?php session_start();

require_once('../php/config.php');

if(!isset($_SESSION['login'])) 
{
        header("Location: ../pages/login.php");
} 


$count = 0;
$totalscore = 0;
$button = false;

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
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                   
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel-body">
                            <script>
                               window.print();

                                function printpage()
                                {
                                    window.print();
                                }
                            </script>
                            <style type="text/css">
                                @media print {
                                  /* style sheet for print goes here */
                                  .hide-from-printer{  display:none; }
                                }
                            </style>
                            <a  class="hide-from-printer" href="students_section.php"><button class="hide-from-printer"  type="button">Back</button></a>
                            <input class="hide-from-printer" type="button" value="Print" onclick="printpage()">
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>

                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel ">
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                               <center>
                                 <p >
                                    Republic of the philippines
                                    <br>
                                    Department of Education
                                    <br>
                                    Region No.VII
                                    <br>
                                    Ormoc City Division
                                    <br>
                                    <b> Dolores National Highschool</b> 
                                    <br>
                                    Brgy. Dolores Ormoc City, Leyte
                                    <br>

                                    <h3> ENTRANCE EXAMINATION  RESULT</h3>
                                </p>
                            </center>
                                <div class="row show-grid">
                                    <div class="panel-body">

                                            <?php

                                                $result = mysql_query("SELECT * FROM users WHERE id = '".$_GET['user']."'");
                                                $row = mysql_fetch_array($result);

                                            ?>
                                               
                                                <div class="row show-grid">
                                                    <div class="col-xs-6">Name: <u><b> <?php echo $row['Fname']." ".$row['Mname']." ".$row['Lname']; ?></b></u></div>
                                                    <div class="col-xs-6">Date: ___________________________</div>
                                                </div>
                                                <div class="row show-grid">
                                                    <div class="col-xs-6">Home Address: <u><b> <?php echo $row['address'] ?></b></u></div>
                                                    <div class="col-xs-6">Cotact Numer: <u><b> <?php echo $row['Cnumber'] ?></b></u></div>
                                                </div>
                                            
                                               
                                        </div>
                                        
                                            
                                    <div class="table-responsive">
                                         <?php
                                                $result = mysql_query("SELECT stud.*,sub.name FROM students as stud, subject as sub WHERE stud.user_id = '".$_GET['user']."' AND stud.subject_id = sub.id") or die("Error: ". mysql_error());
                                                if(mysql_num_rows($result) > 0)
                                                {

                                            ?>  
                                            <table class="table table-striped table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Subject</th>
                                                        <th>Raw Score</th>
                                                        <th>Number of items</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <?php 
                                                    while ($row = mysql_fetch_array($result)) 
                                                    {
                                                ?>
                                                    <tr>
                                                        <td><?php echo $row['name']; ?></td>
                                                        <td><?php echo $row['raw_score']; ?></td>
                                                        <td><?php echo $row['total_score']; ?></td>
                                                    </tr>
                                                <?php
                                                         $raw_score = $raw_score  + $row['raw_score'];
                                                    }
                                                ?>
                                                </tbody>
                                            </table>
                                         </div>
                                            <?php
                                                    $result1 = mysql_query("SELECT * FROM intgwa  WHERE user_id = '".$_GET['user']."'") or die("Error: ". mysql_error());
                                                    $row1 = mysql_fetch_array($result1);

                                                    $result2 = mysql_query("SELECT * FROM questions") or die("Error: ". mysql_error());

                                                    $totalquest = mysql_num_rows($result2);
                                                    $gwa = $row1['gwa'];
                                                    $inter = $row1['interview'];

                                                    $result4 = mysql_query("SELECT * from student_section as ssec, users , sections as sec WHERE ssec.user_id = users.id AND ssec.section_id = sec.id AND user_id = '".$_GET['user']."'") or die("Error: ". mysql_error());
                                                    $row4 = mysql_fetch_array($result4);
                                                ?>
                                                    <p >Entrance Exam:<b> <?php echo $raw_score.' / ' .$totalquest; ?> </b></p>
                                                    <p >Grade GWA: <b> <?php echo $gwa ?> / 100 </b></p>
                                                    <p >Interview:<b> <?php echo $inter ?> / 20 </b></p>

                                                <?php

                                            ?>  
                                                    <p> Final Average:<b> <?php echo $row4['GWA']; ?>% </b></p>
                                                    <p> Your Section is:<b> <?php echo $row4['section']; ?> </b></p>
                                            <?php 
                                                }

                                            ?>
                                    </div>
                                    <hr>
                                    <div class="panel-body">
                                        <div class="row show-grid">
                                            <div class="col-xs-6">Signed By: ______________________</div>
                                        </div>
                                    </div>
                                    <!-- /.table-responsive -->
                                </div>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
            </div>
            <!-- /.container-fluid -->

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
