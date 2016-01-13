<?php session_start();

require_once('../php/config.php');

if(!isset($_SESSION['login'])) 
{
        header("Location: ../pages/login.php");
} 



    if(isset($_POST['submit']))
    {
        $score = 0;  
        for ($i=1; $i <= count($_POST['question']); $i++) 
        { 
            $answers = isset($_POST['answer'.$i][$i]) ? $_POST['answer'.$i][$i] : "";
            $result = mysql_query("SELECT * FROM answers WHERE id = '".$answers."'");
            if(mysql_num_rows($result) > 0)
            {
                while ($row = mysql_fetch_array($result)) 
                {
                    if($row['correct'] == 1)
                    {
                         $score = $score + $row['correct'];
                    }
                    mysql_query("INSERT INTO student_details(user_id,subject_id,question_id,answer_id,date) VALUES('".$_SESSION['user_id']."','".$_POST['subject_id']."','".$_POST['question'][$i]."','".$answers."','".date('Y-m-d')."')") or die('Error: '. mysql_error());
                }
            }
        }
        
       mysql_query("INSERT INTO students(user_id,subject_id,raw_score,total_score,date) VALUES('".$_SESSION['user_id']."','".$_POST['subject_id']."','".$score."','".$_POST['total']."','".date('Y-m-d')."')") or die('Error: '. mysql_error());
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

        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Dolores National Highschool Entrance Exam</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="divider"></li>
                <li><a href="../php/logout.php"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
            <!-- /.navbar-top-links -->
        </nav>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
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

                                    <h3> ENTRANCE EXAMINATION  </h3>
                                </p>
                            </center>
                                <div class="row show-grid">
                                    <div class="panel-body">
                                        <div class="panel-body">
                                            <?php

                                                $result = mysql_query("SELECT * FROM users WHERE id = '".$_SESSION['user_id']."'");
                                                $row = mysql_fetch_array($result);

                                                echo "<p class='lead'>Name: <u>".$row['Fname']." ".$row['Mname']." ".$row['Lname']."</u> </p>";
                                            
                                            ?>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <b>Score</b>
                                            </div>
                                            <div class="panel-body">
                                                <div class="table-responsive">
                                                    <?php

                                                        $result = mysql_query("SELECT stud.*,sub.name FROM students as stud, subject as sub WHERE stud.user_id = '".$_SESSION['user_id']."' AND stud.subject_id = sub.id") or die("Error: ". mysql_error());
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

                                                                $totalscore = $totalscore  + $row['raw_score'];

                                                                $result1 = mysql_query("SELECT * FROM sections WHERE min >= '".$totalscore."' AND  max <= '".$totalscore."' ") or die("Error: ". mysql_error());
                                                                $row1 = mysql_fetch_array($result1);

                                                            }

                                                        ?>
                                                        </tbody>
                                                    </table>
                                                    <p> Final Score: <?php echo number_format($totalscore,2); ?>% </p>
                                                    <p> Your Section is: <?php echo $row1['section']; ?> </p>
                                                    <?php

                                                        }

                                                    ?>
                                                </div>
                                                <!-- /.table-responsive -->
                                            </div>
                                        </div>
                                    </div>

                                    <?php

                                        $result = mysql_query("SELECT * FROM subject  WHERE  NOT EXISTS(SELECT * FROM students WHERE user_id = '".$_SESSION['user_id']."' AND  subject.id = students.subject_id)") or die("Error: ". mysql_error());
                                        while ($row = mysql_fetch_array($result)) 
                                        {

                                    ?>
                                         <div class="col-md-4">
                                            <a href="?id=<?php echo $row['id'] ?>"> <button type="button" class="btn btn-primary btn-lg btn-block"><?php echo $row['name'] ?> </button></a>
                                         </div>
                                    <?php 

                                        }

                                     ?>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                </div>
                <?php

                    if(isset($_GET['id']) && $_GET['id'] != "")
                    {

                ?>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <!-- /.panel-body -->
                            <form action="exams.php" method="post">
                                <input type="hidden" name="subject_id" value="<?php echo $_GET['id']; ?>">
                                <!-- Tab panes -->
                                <div class="panel-body">
                                    <center>
                                       <h3>
                                        <?php

                                            $result = mysql_query("SELECT * FROM subject WHERE id ='".$_GET['id']."'");
                                            $row = mysql_fetch_array($result);

                                            echo $row['name'];

                                        ?>
                                       </h3>
                                    </center>
                                <?php

                                    $result = mysql_query("SELECT * FROM subject WHERE id = '".$_GET['id']."' AND NOT EXISTS(SELECT * FROM students WHERE user_id = '".$_SESSION['user_id']."' AND subject.id = students.subject_id)") or die("Error: ". mysql_error());
                                    if(mysql_num_rows($result) > 0)
                                    {
                                        #with category
                                        $result1 = mysql_query("SELECT * FROM question_category WHERE subject_id = '".$_GET['id']."'   ORDER BY RAND()");
                                        if (mysql_num_rows($result1) > 0) 
                                        {
                                            $button = true;
                                            while ($row1 = mysql_fetch_array($result1)) 
                                            {
                                                #Category Question/story
                                ?>
                                                 <div class="panel-body">
                                                    <div class="col-lg-12">
                                                        <div class="panel panel-primary">
                                                            <div class="panel-heading">
                                                                Read the Selection below
                                                            </div>
                                                            <div class="panel-body">
                                                                <?php echo $row1['description']; ?>
                                                            </div>
                                                            <?php
                                                                if(isset($row1['image_url']) && $row1['image_url'] != "")
                                                                {
                                                            ?>
                                                            <div class="panel-body">
                                                                <img src="<?php echo $row1['image_url']; ?>">
                                                            </div>
                                                            <?php
                                                                }
                                                            ?>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php
                                                #query for question under category
                                                $result2 = mysql_query("SELECT * FROM question_joint WHERE quest_cat_id = '".$row1['id']."'  ORDER BY RAND()");
                                                if (mysql_num_rows($result2) > 0) 
                                                {
                                                    while ($row2 = mysql_fetch_array($result2)) 
                                                    {  
                                                        #query for questions               
                                                        $result3 = mysql_query("SELECT * FROM questions WHERE subject_id = '".$_GET['id']."' AND id = '".$row2['question_id']."'");
                                                        if(mysql_num_rows($result3) > 0)
                                                        {
                                                             while ($row3 = mysql_fetch_array($result3)) 
                                                             {
                                                                $count++;
                                                                #display questions
                                            ?>                  
                                                                 <input type="hidden" value="<?php echo $row3['id']; ?>" name="question[<?php echo $count; ?>]">

                                                                    <div class="alert alert-info">
                                                                        Qeustion <?php echo $count; ?> of  
                                                                        <?php 
                                                                            #count questions
                                                                            $result37 = mysql_query("SELECT * FROM questions WHERE subject_id = '".$_GET['id']."'");
                                                                            echo   $totalQuestion = mysql_num_rows($result37); 
                                                                        
                                                                        ?>
                                                                            <input type="hidden" name="total" value="<?php echo $totalQuestion; ?>">
                                                                    </div>
                                                                    <div class="col-lg-12">
                                                                        <p ><?php echo $row3['question']; ?></p>
                                                                    </div>

                                                                    <?php 
                                                                        #if have question have image
                                                                        if(isset($row3['image_url']) && $row3['image_url'] != "")
                                                                        {

                                                                    ?>
                                                                            <div class="col-lg-4">
                                                                                <div class="well well-sm">
                                                                                     <img  src="<?php echo $row3['image_url']; ?>">   
                                                                                </div>
                                                                            </div>
                                                                    <?php 

                                                                        }

                                                                    ?>
                                                                    <p style="border-bottom: 2px dashed #cccccc;margin-top: 1px;"></p>
                                                                    <div class="row show-grid">
                                                                        <?php
                                                                            $result4 = mysql_query("SELECT * FROM answers WHERE question_id = '".$row3['id']."' ORDER BY RAND()");
                                                                            while ($row4 = mysql_fetch_array($result4)) 
                                                                            {
                                                                                $c++;
                                                                                #display answers
                                                                        ?>
                                                                                <div class="col-xs-6">
                                                                                    <input type="radio" name="answer<?php echo $count; ?>[<?php echo $count; ?>]" id="optionsRadiosInline" value="<?php echo $row4['id']; ?>" >
                                                                                    <label><?php echo $row4['text']; ?></label>
                                                                                </div>
                                                                        <?php

                                                                            }

                                                                        ?>
                                                                    </div>
                                                                     <p style="border-bottom: 2px dashed #e6e6e6;margin-top: 1px;"></p>
                                    <?php

                                                             }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        #no category
                                        $result = mysql_query("SELECT * FROM subject WHERE id = '".$_GET['id']."' AND NOT EXISTS(SELECT * FROM students WHERE user_id = '".$_SESSION['user_id']."' AND subject.id = students.subject_id)") or die("Error: ". mysql_error());
                                        if(mysql_num_rows($result) > 0)
                                        {
                                            $result3 = mysql_query("SELECT * FROM questions WHERE subject_id = '".$_GET['id']."' AND NOT EXISTS(SELECT * FROM question_joint WHERE questions.id = question_joint.question_id)  ORDER BY RAND()") or die("Error: ". mysql_error());
                                            if(mysql_num_rows($result3) > 0)
                                            {
                                                $button = true;
                                                 while ($row3 = mysql_fetch_array($result3)) 
                                                 {
                                                    $count++; 
                                    ?>        

                                                    <input type="hidden" value="<?php echo $row3['id']; ?>" name="question[<?php echo $count; ?>]">

                                                        <div class="alert alert-info">
                                                            Question <?php echo $count; ?> of  
                                                           <?php 

                                                                $result37 = mysql_query("SELECT * FROM questions WHERE subject_id = '".$_GET['id']."'");
                                                                echo   $totalQuestion = mysql_num_rows($result37); 
                                                            
                                                            ?>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <p ><?php echo $row3['question']; ?></p>
                                                        </div>

                                                        <input type="hidden" name="total" value="<?php echo $totalQuestion; ?>">
                                                     <?php 

                                                            if(isset($row3['image_url']) && $row3['image_url'] != "")
                                                            {

                                                    ?>
                                                                <div class="col-lg-4">
                                                                    <div class="well well-sm">
                                                                         <img src="<?php echo $row3['image_url']; ?>">   
                                                                    </div>
                                                                </div>
                                                        <?php  

                                                            }

                                                        ?>
                                                        <p style="border-bottom: 2px dashed #cccccc;margin-top: 1px;"></p>
                                                        <div class="row show-grid">
                                                            <?php
                                                                $result4 = mysql_query("SELECT * FROM answers WHERE question_id = '".$row3['id']."'");
                                                                while ($row4 = mysql_fetch_array($result4)) 
                                                                {
                                                            ?>
                                                                    <div class="col-xs-6">
                                                                        <input type="radio" name="answer<?php echo $count; ?>[<?php echo $count; ?>]" id="optionsRadiosInline" value="<?php echo $row4['id']; ?>" >
                                                                        <label><?php echo $row4['text']; ?></label>
                                                                    </div>
                                                            <?php

                                                                }

                                                            ?>
                                                        </div>
                                                         <p style="border-bottom: 2px dashed #e6e6e6;margin-top: 1px;"></p>
                                        <?php

                                                 }
                                            }

                                            if($button == true)
                                            {
                                        ?>
                                                <input onclick="return confirm('Are you sure you want to Save? please double check your answer')" type="submit" name="submit" value="Save" class="btn btn-primary btn-lg btn-block"> 
                                <?php
                                            } 
                                        }
                                    }

                                 ?> 
                                </div>
                            </form>
                        </div>
                        <!-- /.panel -->
                    </div>
                </div>
                <?php

                    }

                ?>
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
