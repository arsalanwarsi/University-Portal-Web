<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="icon" type="image/x-icon" href="img/logo.ico">
    <link href="css/style.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css" />

    <title>Web_Portal</title>
</head>

<body>
    <section>
        <div class="container login-form">
            <div class="row justify-content-center">
                <div class="col-md-5 user-login">
                    <form action="userAuthentication.php" method="post" onSubmit="" enctype="multipart/form-data">
                        <h1 class="main-heading">Login</h1>
                        <div class="user-credential">
                            <input type="test" name="login_email" placeholder="Registration ID">
                            <br>
                            <input type="password" name="login_password" placeholder="Password">
                        </div>
                        <div class="login-signup">
                            <button type="submit">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <script src="js/sctipt.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

</body>

</html>