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

    <link rel="icon" type="image/x-icon" href="img/logo.ico">
    <link href="css/style.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css" />

    <title>Web_Portal</title>
</head>

<body>
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
                <div class="row">
                    <div class="col-md-12 col-sm-12 course-card">
                        <div class="row">
                            <div class="col-md-1 col-sm-1">
                                <h3 class="sub-heading">Code</h3>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <h3 class="sub-heading">Couse Name</h3>
                            </div>
                            <div class="col-md-2 col-sm-2">
                                <h3 class="sub-heading">Attendance</h3>
                            </div>
                            <div class="col-md-1 col-sm-1">
                                <h3 class="sub-heading">Grade</h3>
                            </div>
                            <div class="col-md-2 col-sm-2">
                                <h3 class="sub-heading">Teacher</h3>
                            </div>
                        </div>
                        <?php
                            include('connection.php');
                            $sql = "SELECT * FROM Course_Registered WHERE St_ID = '".$_SESSION['username']."'";
                            $result = sqlsrv_query($con,$sql);
                            while($data = sqlsrv_fetch_array($result)){ ?>
                            <div class="row course-re">
                                <div class="col-md-1 col-sm-1">
                                    <h3 class="main-para"><?php echo($data['ID'])?></h3>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <h3 class="main-para"><?php echo($data['Name'])?></h3>
                                </div>
                                <div class="col-md-2 col-sm-2">
                                    <h3 class="main-para"><?php echo($data['Attendence'])?></h3>
                                </div>
                                <div class="col-md-1 col-sm-1">
                                    <h3 class="main-para"><?php echo($data['Grade'])?></h3>
                                </div>
                                <div class="col-md-2 col-sm-2">
                                    <h3 class="main-para"><?php echo($data['Teacher'])?></h3>
                                </div>
                            </div>            
                        <?php } ?>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>


</body>

</html>