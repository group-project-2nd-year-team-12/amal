<?php session_start();

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resource/css/home1.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>

<body>
    <div class="container" id="container">
        <div class="header">
            <div class="logo">
                <h1>Bodima<small style="font-size: 12px;">   Solution for many problem</small></h1>
            </div>
            <div class="sign">
                <?php if(!isset($_SESSION['email'])){echo '<a href="controller/logingController.php?click1">Sign In </a>';}?>
                <?php if(isset($_SESSION['email'])){ 
                    ?>
                    <div class="notification"><i class="fa fa-bell"></i></div>
                    <div class="profile"><i  class="fa fa-user-circle"></i></div>
                <?php
                    echo '<div class="user">Hi '.$_SESSION['first_name'].'</div>'; 
                    echo '<a href="controller/logoutController.php">Log out </a>';}
                ?> 
                <img src="resource/img/sign-in-alt-solid.svg" alt="">
                
            </div>
        </div>
        <div class="nav">
            <ul class="nav_bar">
                <li class=" nav_item "><a href="# ">Home</a></li>
                <?php if(isset($_SESSION['email']))
                { 
                    if($_SESSION['level']=="food_supplier")
                    {
                       echo '<li class="nav_item "><a href="controller/orderCon.php?click">Orders</a></li>';
                    }
                }
                    ?>
                <li class="nav_item "><a href="# ">About us</a></li>
                <li class="nav_item "><a href="# ">Contact Us</a></li>
                <li class="nav_item "><a href="controller/cartCon.php?click">Food Item</a></li>
            </ul>
        </div>
        <div class="container_warper1">
            <div class="para1">
                <h1>Stil finding boarding ?</h1>
                <h1> still finding ? </h1>
                <h1>Not found ?</h1>
                <h1 class="reg">We have solution !</h1>

                <div class="btn1"> <a href="#">Register</a></div>
            </div>
            <div class="para2">
               <!-- <img src="./img/test4.jpg" alt=""> -->
                
            </div>
        </div>
        <div class="container_warper2">
            <div class="para3">
                <!-- <img class="img2-apper" src="./img/test4.jpg" alt=""> -->
            </div>
            <div class="para4">
                <h1>Stil finding boarding ?</h1>
                <h1> still finding ? </h1>
                <h1>Not found ?</h1>
                <h1 class="reg">We have solution !</h1>

                <div class="btn2"> <a href="#">Register</a></div>
            </div>
        </div>
        <div class="container_warper3">
            <div class="para5">
                <h1>Stil finding boarding ?</h1>
                <h1> still finding ? </h1>
                <h1>Not found ?</h1>
                <h1 class="reg">We have solution !</h1>

                <div class="btn1"> <a href="#">Register</a></div>
            </div>
            <div class="para6">

            </div>
        </div>
    </div>
    <div class="footer">
        <div class="grid-container">
            <div class="grid-item">
                <h3>Contact Us</h3>
                <ul>
                    <li>Address :UCSC Building Complex, 35 Reid Ave, Colombo 00700</li>
                    <li>Telephone :+94 0112516865</li>
                    <li>Email :Projectbodima4@gmail.com</li>
                </ul>
            </div>
            <div class="grid-item">
                <h3>About Us</h3>
                <ul>
                    <li>Anuki alwis</li>
                    <li>Ishan resmika</li>
                    <li>Ludo</li>
                    <li>Amal lakshan</li>
                </ul>
            </div>

        </div>
        <div class="copyright">
            <h2>© 2020 copyright all right reserved</h2>
        </div>
    </div>

</body>
<script src="resource/js/home.js"></script>
</html>

