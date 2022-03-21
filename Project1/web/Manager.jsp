<%-- 
    Document   : Manager
    Created on : Mar 14, 2022, 2:41:36 AM
    Author     : thuy huong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
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
        <div class="main-top">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="custom-select-box">
                            <select id="basic" class="selectpicker show-tick form-control" data-placeholder="VND">
                                <option> VND </option>
                            </select>
                        </div>
                        <div class="right-phone-box">
                            <p>Phone :- <a href="#"> +84 98879888</a></p>
                        </div>
                        <div class="our-link">
                            <ul>
                                <li><a href="contact.jsp"><i class="fas fa-headset"></i> Liên Hệ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="login-box">

                    </div>
                    <div class="text-slid-box">
                        <div id="offer-box" class="carouselTicker">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Main Top -->

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
        <!-- End Navigation -->
    </header>
    <!-- Start Cart  -->
    <div class="cart-box-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1><b>The Flower Shop Manage Product</b></h1><br>
                    <div class="table-main table-responsive">
                        <form name ="m" action="" method="post">
<!--                            <button><a href="addca?msp=${p.masp}">Thêm Danh Mục Sản Phẩm</a></button>-->
                            <button><a href="add?msp=${p.masp}">Thêm Sản Phẩm</a></button>
                            <table class=" table-hover">
                                <thead>
                                    <tr>
                                        <th><h2><b>Mã Sản Phẩm</b></h2></th>
                                        <th><h2><b>Tên Sản Phẩm</b></h2></th>
                                        <th><h2><b>Ảnh Sản Phẩm</b></h2></th>
                                        <th><h2><b>Mô Tả Sản Phẩm</b></h2></th>
                                        <th><h2><b>Giá Sản Phẩm</b></h2></th>
                                        <th><h2><b>Sửa/Xóa</b></h2></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${page}" var="p">
                                        <tr>
                                            <td class="name-pr">
                                                    ${p.masp}
                                            </td>
                                            <td class="name-pr">
                                                    ${p.namesp}
                                            </td>
                                            <td class="thumbnail-img">
                                                    <img class="img-fluid" src="${p.image}" alt="" />
                                            </td>
                                            <td class="name-pr">
                                                    ${p.description}
                                            </td>
                                            <td class="price-pr">
                                                <p>${p.price}</p>
                                            </td>
                                            <td class="remove-pr">
                                                <button><a href="edit?msp=${p.masp}">Sửa</a></button>
                                                <button><a href="deletemanager?msp=${p.masp}">Xóa</a></button>	
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>                             
                            </table>
                            <br>
                            <c:forEach begin="1" end="${totalp}" varStatus="t">
                                <button><a href="manager?index=${t.index}">${t.index}</a></button>
                            </c:forEach>
                        </form>
                    </div>
                </div>
            </div>
        </div>


    </div>
    <!-- End Cart -->
    <!-- Start Instagram Feed  -->
    <div class="instagram-box">
        <div class="main-instagram owl-carousel owl-theme">
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/11.jpg"width="696px"height="300px" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/trangdauu.jpg"width="696px"height="300px" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/ayeu.jpg"width="696px"height="300px" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/bsn.jpg"width="696px"height="300px" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/hoabo.jpg"width="696px"height="300px" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/hoatiec.jpg"width="696px"height="300px" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/trangdau.jpg"width="696px"height="300px" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/snnn.jpg"width="696px"height="300px" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/08-5783.jpg"width="696px"height="300px" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/snn.jpg"width="696px"height="300px" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Instagram Feed  -->


    <footer>
        <div class="footer-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h3>Thời Gian Kinh Doanh</h3>
                            <ul class="list-time">
                                <li>Thứ 2 - Thứ 6: 08.00sáng đến 20.00 tối</li> <li>Thứ 7: 10.00 sáng đến 20.00 tối</li> <li>Chủ Nhật: <span>Nghỉ</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h3>Newsletter</h3>
                            <form class="newsletter-box">
                                <div class="form-group">
                                    <input class="" type="email" name="Email" placeholder="Email Address*" />
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <button class="btn hvr-hover" type="submit">Submit</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h3>Mạng Xã Hội</h3>
                            <p>Liên hệ: </p>
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>The Flowler shop</h4>
                            <p>The Flower Shop cung cấp các sản phẩm hoa tươi, hoa chúc mừng, hoa sinh nhật, hoa khai trương, hoa văn phòng, hoa sự kiện, hoa cưới, xe hoa, cổng hoa, hoa trang trí, đặc biệt là dịch vụ điện hoa toàn quốc …với nhiều mẫu hoa mới lạ, giá cả hợp lý.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link">
                            <h4>Thông Tin</h4>
                            <ul>
                                <li><a href="#">The Flower Shop</a></li>
                                <li><a href="#">Dịch vụ khách hàng</a></li>
                                <li><a href="#">Điều Khoản; Điều Kiện</a></li>
                                <li><a href="#">Chính Sách Bảo Mật</a></li>
                                <li><a href="#">Thông tin giao hàng</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>Liên Hệ</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>Địa Chỉ: The Flower Shop <br>Thạch Hòa-Thạch Thất-Hà Nội</p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">+84 98879888</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a href="mailto:contactinfo@gmail.com">theflowershop@gmail.com</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->

    <!-- Start copyright  -->
    <!--    <div class="footer-copyright">
            <p class="footer-company">All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By :
                <a href="https://html.design/">html design</a></p>
        </div>-->
    <!-- End copyright  -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

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
