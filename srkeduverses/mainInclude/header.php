<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

  <!-- Font Awesome CSS -->
  <link rel="stylesheet" type="text/css" href="css/all.min.css">
  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <!-- Custom Style CSS -->
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- Student Testimonial Owl Slider CSS -->
  <link rel="stylesheet" type="text/css" href="css/owl.min.css">
  <link rel="stylesheet" type="text/css" href="css/owl.theme.min.css">
  <link rel="stylesheet" type="text/css" href="css/testyslider.css">
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


  <title>SRK Eduverse</title>
</head>

<body>
  <!-- Start Nagigation -->

  <nav class="navbar navbar-expand-sm navbar-dark pl-5 bg-dark fixed-top">

    <img src="image/logo1.png"  width="55" height="60" class="navbar-brand fixed-top pl-2 py-lg-2" alt="srkeduverse.com">

    <a href="index.php" class="navbar-brand pl-4">SRK Eduverse</a>
    <span class="navbar-text text-warning "> kuch kuch sikhana hai!</span>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="fals" aria-label="Toggle navigation">

      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse pl-5" id="navbarNavAltMarkup">
      <ul class="navbar-nav pl-5 custom-nav">
        <li> <br>‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎</br> </li>
        <li class="nav-item custom-nav-item"><a href="index.php" class="nav-link">Home</a></li>
        <li class="nav-item custom-nav-item"><a href="courses.php" class="nav-link">Courses</a></li>
        <li class="nav-item custom-nav-item"><a href="paymentstatus.php" class="nav-link">Payment Status</a></li>
        <?php
        // ye code hai ki login karoge to phir login button nai rehna chaiye na logout rehna chaiye ise liye here if and else condition diye or session ka use hua
        session_start();
        if (isset($_SESSION['is_login'])) {
          echo '<li class="nav-item custom-nav-item"><a href="Student/studentProfile.php" class="nav-link">My Profile</a></li>
            <li class="nav-item custom-nav-item"><a href="logout.php" class="nav-link">Logout</a></li>
            ';
        } else {
          echo '<li class="nav-item custom-nav-item"><a href="#" class="nav-link" data-target="#StuLoginModalCenter" data-toggle="modal">Login</a></li>
            <li class="nav-item custom-nav-item"><a href="#" class="nav-link" data-target="#StuRegModalCenter" data-toggle="modal">Signup</a></li>';
        }

        ?>
        
        <li> <br> ‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ </br>  </li>
        <li class="nav-item custom-nav-item"><a href="http://www.patnasciencecollege.ac.in/" class="nav-link">Patna Science College</a></li>
      </ul>
    </div>
  </nav>

  <!-- end navigation -->