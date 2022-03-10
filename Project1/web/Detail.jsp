<%-- 
    Document   : detail
    Created on : Mar 8, 2022, 10:38:23 PM
    Author     : thuy huong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title></title>
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
                                <li><a href="#"><i class="fa fa-user s_color"></i> Tài Khoản</a></li>
                                <li><a href="#"><i class="fas fa-location-arrow"></i> Địa Chỉ Cửa Hàng</a></li>
                                <li><a href="#"><i class="fas fa-headset"></i> Liên Hệ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="login-box">
                            <select id="basic" class="selectpicker show-tick form-control" data-placeholder="Sign In">
                                <option>Đăng Ký</option>
                                <option>Đăng Nhập</option>
                            </select>
                        </div>
                        <div class="text-slid-box">
                            <div id="offer-box" class="carouselTicker">
                                <!--                                <ul class="offer-box">
                                                                    <li>
                                                                        <i class="fab fa-opencart"></i> 20% off Entire Purchase Promo code: offT80
                                                                    </li>
                                                                    <li>
                                                                        <i class="fab fa-opencart"></i> 50% - 80% off on Vegetables
                                                                    </li>
                                                                    <li>
                                                                        <i class="fab fa-opencart"></i> Off 10%! Shop Vegetables
                                                                    </li>
                                                                    <li>
                                                                        <i class="fab fa-opencart"></i> Off 50%! Shop Now
                                                                    </li>
                                                                    <li>
                                                                        <i class="fab fa-opencart"></i> Off 10%! Shop Vegetables
                                                                    </li>
                                                                    <li>
                                                                        <i class="fab fa-opencart"></i> 50% - 80% off on Vegetables
                                                                    </li>
                                                                    <li>
                                                                        <i class="fab fa-opencart"></i> 20% off Entire Purchase Promo code: offT30
                                                                    </li>
                                                                    <li>
                                                                        <i class="fab fa-opencart"></i> Off 50%! Shop Now 
                                                                    </li>
                                                                </ul>-->
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
                            <li class="nav-item active"><a class="nav-link" href="trangchu.jsp">Trang Chủ</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.html">The Flower Shop</a></li>
                            <li class="dropdown">
                                <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Cửa Hàng</a>
                                <ul class="dropdown-menu">
                                    <li><a href="shop.html">Sidebar Shop</a></li>
                                    <li><a href="Detail.jsp">Chi tiết Sản Phẩm</a></li>
                                    <li><a href="cart.html">Cart</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                    <li><a href="my-account.html">My Account</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="category.jsp">Danh mục sản phẩm</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact-us.html">Liên Hệ</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->

                    <!-- Start Atribute Navigation -->
                    <div class="attr-nav">
                        <div class="container">
                            <ul>
                                <div class="row">
                                    <div class="col-lg-9">
                                        <div class="input-group rounded">
                                            <form action="search" method="post">
                                                <input name="txt" type="text"/>
                                                <button type="submit" >
                                                    <li class="search"><i class="fa fa-search"></i></li>
                                                </button>
                                            </form>
                                        </div>
                                    </div>

                                    <div class="col-lg-3 ">
                                        <li class="side-menu"><a href="#">
                                                <i class="fa fa-shopping-bag"></i>
                                                <span class="badge">3</span>
                                                <p>Giỏ Hàng</p>
                                            </a></li>
                                    </div>
                                </div>
                            </ul>
                        </div>
                    </div>
                    <!-- End Atribute Navigation -->
                </div>
                <!-- Start Side Menu -->
                <div class="side">
                    <a href="#" class="close-side"><i class="fa fa-times"></i></a>
                    <li class="cart-box">
                        <ul class="cart-list">
                            <li>
                                <a href="#" class="photo"><img src="images/img-pro-01.jpg" class="cart-thumb" alt="" /></a>
                                <h6><a href="#">Delica omtantur </a></h6>
                                <p>1x - <span class="price">$80.00</span></p>
                            </li>
                            <li>
                                <a href="#" class="photo"><img src="images/img-pro-02.jpg" class="cart-thumb" alt="" /></a>
                                <h6><a href="#">Omnes ocurreret</a></h6>
                                <p>1x - <span class="price">$60.00</span></p>
                            </li>
                            <li>
                                <a href="#" class="photo"><img src="images/img-pro-03.jpg" class="cart-thumb" alt="" /></a>
                                <h6><a href="#">Agam facilisis</a></h6>
                                <p>1x - <span class="price">$40.00</span></p>
                            </li>
                            <li class="total">
                                <a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a>
                                <span class="float-right"><strong>Total</strong>: $180.00</span>
                            </li>
                        </ul>
                    </li>
                </div>
                <!-- End Side Menu -->
            </nav>
            <!-- End Navigation -->
        </header>
        <!-- End Main Top -->

        <!-- Start Top Search -->
        <div class="top-search">
            <div class="container">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-search"></i></span>
                    <input type="text" class="form-control" placeholder="Search">
                    <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                </div>
            </div>
        </div>
        <!-- End Top Search -->

        <!-- Start All Title Box -->
        <div class="all-title-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Shop Detail</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Shop</a></li>
                            <li class="breadcrumb-item active">Shop Detail </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End All Title Box -->

        <!-- Start Shop Detail  -->
        <div class="shop-detail-box-main">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-5 col-md-6">
                        <div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel">
                            <div class="carousel-inner" role="listbox">-->
                                <div class="carousel-item active"> <img class="d-block w-100" src="${detailsp.image}" alt=""> </div>
                                <!--                                <div class="carousel-item"> <img class="d-block w-100" src="images/big-img-02.jpg" alt="Second slide"> </div>
                                                                <div class="carousel-item"> <img class="d-block w-100" src="images/big-img-03.jpg" alt="Third slide"> </div>-->
                            </div>
                            <a class="carousel-control-prev" href="#carousel-example-1" role="button" data-slide="prev"> 
                                <i class="fa fa-angle-left" aria-hidden="true"></i>
                                <span class="sr-only"></span> 
                            </a>
                            <a class="carousel-control-next" href="#carousel-example-1" role="button" data-slide="next"> 
                                <i class="fa fa-angle-right" aria-hidden="true"></i> 
                                <span class="sr-only"></span> 
                            </a>
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-1" data-slide-to="0" class="active">
                                    <img class="d-block w-100 img-fluid" src="" alt="" />
                                </li>

                            </ol>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-6">
                        <div class="single-product-details">
                            <h2>${detailsp.namesp}</h2>
                            <h5>${detailsp.price} </h5>
                            <p class="available-stock"><span> More than 20 available / <a href="#">8 sold </a></span><p>
                            <h4>${detailsp.description}</h4>

                            <ul>
                                <li>
                                    <div class="form-group quantity-box">
                                        <label class="control-label">Số Lượng</label>
                                        <input class="form-control" value="0" min="0" max="20" type="number">
                                    </div>
                                </li>
                            </ul>

                            <div class="price-box-bar">
                                <div class="cart-and-bay-btn">
                                    <a class="btn hvr-hover" data-fancybox-close="" href="#">Mua</a>
                                    <a class="btn hvr-hover" data-fancybox-close="" href="#">Thêm Vào Giỏ Hàng</a>
                                </div>
                            </div>

                            <div class="add-to-btn">
                                <div class="add-comp">
                                    <!--                                    <a class="btn hvr-hover" href="#"><i class="fas fa-heart"></i> Add to wishlist</a>-->
                                    <!--                                    <a class="btn hvr-hover" href="#"><i class="fas fa-sync-alt"></i> Add to Compare</a>-->
                                </div>
                                <!--                                <div class="share-bar">
                                                                    <a class="btn hvr-hover" href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a>
                                                                    <a class="btn hvr-hover" href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a>
                                                                    <a class="btn hvr-hover" href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a>
                                                                    <a class="btn hvr-hover" href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a>
                                                                    <a class="btn hvr-hover" href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a>
                                                                </div>-->
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row my-5">
                    <div class="col-lg-12">
                        <div class="title-all text-center">
                            <h1></h1>
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


            <!-- Start Footer  -->
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