<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
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

                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                            <li class="nav-item active"><a class="nav-link" href="first">Trang Chủ</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.jsp">The Flower<br> Shop</a></li>
                            <li class="dropdown">
                                <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Cửa Hàng</a>
                                <ul class="dropdown-menu">
                                    <li><a href="shop.jsp">Sidebar Shop</a></li>
                                    <li><a href="detail">Shop Detail</a></li>
                                    <li><a href="Cart.jsp">Cart</a></li>
                                    <li><a href="checkout.jsp">Checkout</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="category">Danh mục<br> sản phẩm</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.jsp">Liên Hệ</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
 
        <!-- Start Cart  -->
        <div class="cart-box-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-main table-responsive">
                            <form action="edit" method="post">
                                <body>
                                    <h1>Edit Sản Phẩm </h1>
                                    <table border="1" style="width: 300px;text-align: center">
                                        <tbody>
                                            <tr>
                                            <tr>
                                                <td>Mã Sản Phẩm</td>
                                                <td><input type ="text" name ="id" value="${listedit.masp}"readonly="true"</td>
                                            </tr>
                                            <tr>
                                                <td>Tên Sản Phẩm</td>
                                                <td><input type ="text" name ="name" value="${listedit.namesp}"></td>
                                            </tr>
                                            <tr>
                                                <td>Ảnh</td>
                                                <td><input type="text" name ="image" value="${listedit.image}"</td>
                                            </tr>
                                            <tr>
                                                <td>Giá Sản Phẩm</td>
                                                <td><input type="text" name ="price" value="${listedit.price}"</td>
                                            </tr>
                                            <tr>
                                                <td>Tiêu Đề</td>
                                                <td><input type="text" name ="title" value="${listedit.title}"</td>
                                            </tr>
                                            <tr>
                                                <td>Mô tả</td>
                                                <td><input type="text" name ="des" value="${listedit.description}"</td>
                                            </tr>
                                            <tr>
                                                <td>Ngày Đăng</td>
                                                <td><input type="text" name ="date" value="${listedit.date}"</td>
                                            </tr>                                         
                                            <tr>
                                                <td>Số Lượng</td>
                                                <td><input type="text" name ="quantity" value="${listedit.quantity}"</td>
                                            </tr>

                                            <tr>
                                                <td>Danh Mục Sản Phẩm</td>
                                                <td>
                                                    <select name="categorycaid">
                                                        <c:forEach items="${listC}" var="C">
                                                            <option ${C.caid == listedit.idcate?"selected":""} value="${C.caid}">
                                                                ${C.caname}
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td><button type ="submit">Update</button></td>
                                            </tr>
                                            </tr>

                                        </tbody>

                                    </table>
                                </body>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Cart -->


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

