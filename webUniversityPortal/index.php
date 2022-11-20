<?php
    SESSION_START();
    if(!isset($_SESSION['username'])){
        header('location: login.php');
    }
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <script src="https://codepen.io/grayghostvisuals/pen/a08e0d79c150ff5030f9b6afaa137749"></script>

    <link rel="icon" type="image/x-icon" href="img/logo.ico">
    <link href="css/style.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css" />

    <title>Web_Portal</title>
</head>

<body>
    <?php
        include('connection.php');
        $sql = "SELECT AVG(CGP) AS CGPA FROM SemesterGPA WHERE Student_ID = '".$_SESSION['username']."'";
        $sql_st = "SELECT * FROM Students WHERE Student_ID = '".$_SESSION['username']."'";
        
        $result = sqlsrv_query($con,$sql);
        $data = sqlsrv_fetch_array($result);
        $result1 = sqlsrv_query($con,$sql_st);
        $data1 = sqlsrv_fetch_array($result1);
    ?>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light">
            <a href="#">
                <div class="logo">
                    <img src="img/logo.png" alt="">
                </div>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <div class="c-header">
                    <div class="navbar nav-menu">
                        <ul class="nav-list">
                            <li><a href="index.php" class="nav-link"><i class="bx bx-home"></i>
                                    <span>Home</span></a>
                            </li>
                            <li><a href="profile.php" class="nav-link scrollto"><i class="bx bx-id-card"></i>
                                    <span>About</span></a></li>
                            <li><a href="courses.php" class="nav-link scrollto"><i class="bx bx-book-content"></i>
                                    <span>Courses</span></a>
                            </li>
                            <li><a href="announcement.php" class="nav-link scrollto"><i class="bx bxs-bell-ring"></i>
                                    <span>Announcement</span></a>
                            </li>
                            <li><a href="notice.php" class="nav-link scrollto"><i class="bx bx-notification"></i>
                                    <span>Notification</span></a>
                            </li>
                            <li><a href="password.php" class="nav-link scrollto"><i class="bx bx-user"></i>
                                    <span>Password</span></a>
                            </li>
                            <li><a href="logout.php" class="nav-link scrollto"><i class="bx bx-log-out"></i>
                                    <span>Logout</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <div class="main-body">
        <section>
            <div class="container-fluid">
                <div class="row card-row">
                    <div class="col-md-3 col-sm-3 cc">
                        <a href="" class="">
                            <div class="c-card">
                                <div class="card-heading">
                                    <h2 class="card-heading-1"><?php echo(round($data['CGPA'], 2))?></h2>
                                    <h3 class="card-heading-2">CGPA</h3>
                                </div>
                                <div class="card-img">
                                    <span><i class="bx bx-signal-4"></i></span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-3 cc">
                        <a href="">
                            <div class="c-card">
                                <div class="card-heading">
                                    <h2 class="card-heading-1"><?php echo($data1['Earned_CR'])?></h2>
                                    <h3 class="card-heading-2">EARNED CREDIT HOURS</h3>
                                </div>
                                <div class="card-img">
                                    <span><i class="bx bxs-graduation"></i></span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-3 cc">
                        <a href="">
                            <div class="c-card">
                                <div class="card-heading">
                                    <h2 class="card-heading-1">PKR <?php echo($data1['Dues'])?></h2>
                                    <h3 class="card-heading-2">DUES</h3>
                                </div>
                                <div class="card-img">
                                    <span><i class='bx bx-money'></i></span>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-3 cc">
                        <a href="">
                            <div class="c-card">
                                <div class="card-heading">
                                    <h2 class="card-heading-1"><?php echo($data1['Total_CR'] - $data1['Earned_CR']) ?></h2>
                                    <h3 class="card-heading-2">REMAINING CREDIT HOURS</h3>
                                </div>
                                <div class="card-img">
                                    <span><i class="bx bx-stats"></i></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <br>

        <section>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <h1 class="main-heading">DEGREE PROGRESS</h1>
                        <div class="deg-progress">
                            <div class="skill">
                                <div class="outer">
                                    <div class="inner">
                                        <input type="hidden" value="<?php echo($data1['Earned_CR'] - $data1['Total_CR'])?>" id="degree_per">
                                        <div id="number" value="12">
                                        </div>
                                    </div>
                                </div>

                                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="160px" height="160px">
                                    <defs>
                                        <linearGradient id="GradientColor">
                                            <stop offset="0%" stop-color="#e91e63" />
                                            <stop offset="100%" stop-color="#673ab7" />
                                        </linearGradient>
                                    </defs>
                                    <circle cx="80" cy="80" r="70" stroke-linecap="round" />
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <h1 class="main-heading">GPA PROGRESS</h1>
                        <div class="gpa-progress">
                            <div class="line-chart">
                                <div class="aspect-ratio">
                                    <canvas id="chart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <h1 class="main-heading">MY COURSES</h1>
                        <table class="s-course">
                            <thead>
                                <tr>
                                    <th>Course Code</th>
                                    <th>Course Name</th>
                                    <th>Credit Hours</th>
                                    <th>Course Teacher</th>
                                </tr>
                            </thead>
                            <tbody><?php
                            include('connection.php');
                            $sql_reg = "SELECT s.ID,s.Name,r.[Cr.],s.Teacher FROM Course_Registered s INNER JOIN Reg_Course r ON s.ID = r.ID WHERE St_ID = '".$_SESSION['username']."'";
                            $result2 = sqlsrv_query($con,$sql_reg);
                            while($data = sqlsrv_fetch_array($result2)){ ?>
                                <tr>
                                    <td><?php echo($data['ID'])?></td>
                                    <td><?php echo($data['Name'])?></td>
                                    <td><?php echo($data['Cr.'])?></td>
                                    <td><?php echo($data['Teacher'])?></td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <script src="js/sctipt.js"></script>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    <script>
        let number = document.getElementById("number");
        // console.log(document.getElementById("degree_per").value);
        // var temp = 435 - 435 * (document.getElementById("degree_per").value);
        // console.log(temp);
        let counter = 0;
        setInterval(() => {
            if (counter == 72) {
                clearInterval();
            } else {
                counter += 1;
                number.innerHTML = counter + "%";
            }
        }, 30);

    </script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>