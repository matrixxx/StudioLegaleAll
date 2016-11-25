<!DOCTYPE html>
<html>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.2/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 Jun 2015 14:05:57 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>DE SIMONE | Login JSP</title>

    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="fonts/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">DS</h1>

            </div>
            <h3>Welcome to Studio Legale De Simone</h3>
            <p style="color: red;">${descriptionError}</p>
            <form class="m-t" role="form" action="dashboard.html">
                <div class="form-group">
                    <input type="text" name="username" class="form-control" placeholder="Username" required="">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="Password" required="">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">Login</button>

                <a href="#"><small>Forgot password?</small></a>
                <p class="text-muted text-center"><small>Do not have an account?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="register.html">Create an account</a>
            </form>
    	</div>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery/jquery-2.1.3.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>

</body>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.2/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 Jun 2015 14:05:57 GMT -->
</html>
