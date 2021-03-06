<%-- 
    Document   : Addmanager
    Created on : Mar 14, 2022, 5:19:24 PM
    Author     : thuy huong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>
        <!-- Start Main Top -->
        <header class="main-header">
            <!-- Start Navigation -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
                <div class="container">
                    <!-- Start Header Navigation -->
                    <div class="navbar-header">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="index.html"><img src="https://asset.bloomnation.com/c_fit,f_auto,h_203,q_auto,w_695/v1/vendor/5341/profile/t/h/theflowershopnj-logo.png"width="200px" class="logo" alt=""></a>
                    </div>
                    <!-- End Header Navigation -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                            <li class="nav-item active"><a class="nav-link" href="first">Trang Ch???</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.jsp">The Flower<br> Shop</a></li>
                            <li class="dropdown">
                                <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">C???a H??ng</a>
                                <ul class="dropdown-menu">
                                    <li><a href="shop.jsp">Sidebar Shop</a></li>
                                    <li><a href="detail">Shop Detail</a></li>
                                    <li><a href="Cart.jsp">Cart</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="category">Danh m???c<br> s???n ph???m</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.jsp">Li??n H???</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->           
                    </header>
                    <!-- End Main Top -->

                    <!-- End Top Search -->


                    <!-- End All Title Box -->

                    <!-- Start Cart  -->
                    <div class="cart-box-main">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-main table-responsive">
                                        <h1>Add Oder</h1>
                                        <form action="addoder" method="post">
                                            <table border="1" style="width: 1100px;text-align: center; margin-left: auto;margin-right: auto">
                                                <tbody>
                                                    <tr>
                                                        <th>M?? Kh??ch H??ng</th>
                                                        <td class="name-pr">
                                                            <input type ="text" name ="mkh" value=""size="150">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>Ng??y ?????t H??ng</th>
                                                        <td class="name-pr">
                                                            <input type ="date" name ="date" value=""size="150">
                                                        </td>
                                                    </tr>
                                                  
                                                    <tr>
                                                        <th>T???ng Thanh to??n</th>
                                                        <td class="name-pr">
                                                            <input type ="text" name ="price" value=""size="150">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>M?? ship</th>
                                                        <td class="name-pr">
                                                            <input type ="text" name ="ship" value=""size="150">
                                                        </td>
                                                    </tr> 
                                                </tbody>
                                            </table>
                                            <button type ="submit">ADD</button>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <!-- End Footer  -->

                            <!-- Start copyright  -->
                            <!--    <div class="footer-copyright">
                                    <p class="footer-company">All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By :
                                        <a href="https://html.design/">html design</a></p>
                                </div>-->
                            <!-- End copyright  -->

                            <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

                            <!-- ALL JS FILES -->
                            <script src="js/jquery-3.2.1.min.js"></script>
                            <script src="js/popper.min.js"></script>
                            <script src="js/bootstrap.min.js"></script>
                            <!-- ALL PLUGINS -->
                            <script src="js/jquery.superslides.min.js"></script>
                            <script src="js/bootstrap-select.js"></script>
                            <script src="js/inewsticker.js"></script>
                            <script src="js/bootsnav.js."></script>
                            <script src="js/images-loded.min.js"></script>
                            <script src="js/isotope.min.js"></script>
                            <script src="js/owl.carousel.min.js"></script>
                            <script src="js/baguetteBox.min.js"></script>
                            <script src="js/form-validator.min.js"></script>
                            <script src="js/contact-form-script.js"></script>
                            <script src="js/custom.js"></script>
                            </body>

                            </html>

