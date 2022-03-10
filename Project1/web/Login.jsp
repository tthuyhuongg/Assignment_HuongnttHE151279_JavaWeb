<%-- 
    Document   : Login
    Created on : Mar 9, 2022, 8:56:22 PM
    Author     : thuy huong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <title>Sign up facundo farm & resort</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <head>
        <script src="jquery/jquery.min.js"></script>
        <!---- jquery link local dont forget to place this in first than other script or link or may not work ---->

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!---- boostrap.min link local ----->

        <link rel="stylesheet" href="css/style.css">
        <!---- boostrap.min link local ----->

        <script src="js/bootstrap.min.js"></script>
        <!---- Boostrap js link local ----->

        <link rel="icon" href="images/icon.png" type="image/x-icon" />
        <!---- Icon link local ----->

        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
        <!---- Font awesom link local ----->
    </head>
    <body>
        <div class="container-fluid">
            <div class="container">
                <h1 class="text-center" id="title">The Flower Shop</h1>
                <div class="row">
                    <div class="col-md-6">
                        <form role="form" method="post" action="">
                            <fieldset>							
                                <p class="text-uppercase pull-center"> Đăng Kí</p>	
                                <div class="form-group">
                                    <input type="text" name="username" id="username" class="form-control input-lg" placeholder="username">
                                </div>

                                <div class="form-group">
                                    <input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email Address">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password">
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input">
                                        By Clicking register you're agree to our policy & terms
                                    </label>
                                </div>
                                <div>
                                    <input type="submit" class="btn btn-lg btn-primary" value ="Register">
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    
                    <div class="col-md-6">
                        <form role="form">
                            <fieldset>							
                                <p class="text-uppercase"> Đăng Nhập Tài Khoản Của Bạn: </p>	

                                <div class="form-group">
                                    <input type="email" name="username" id="username" class="form-control input-lg" placeholder="username">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password">
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input">
                                        Remember me
                                    </label>
                                </div>
                                <div>
                                    <input type="submit" class="btn btn-lg btn-primary" value="Sign In">
                                </div>
                                

                            </fieldset>
                        </form>	
                    </div>
                </div>
            </div>
        </div>
    </body>


</html>