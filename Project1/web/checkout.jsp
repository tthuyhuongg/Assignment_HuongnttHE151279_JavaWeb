<%-- 
    Document   : checkout
    Created on : Mar 13, 2022, 6:11:12 PM
    Author     : thuy huong
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="right-phone-box">
                            <p>Phone :- <a href="#"> +84 98879888</a></p>
                        </div>
                        <div class="our-link">
                            <ul>
                                <li><a href="contact.jsp"><i class="fas fa-headset"></i> Li??n H???</a></li>
                                    <c:if test="${sessionScope.account != null}">
                                    <li><a href="#">${sessionScope.account.name}</a></li>
                                    <li><a href="logout"><i class="fas fa-headset"></i> ????ng Xu???t</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.account == null}">
                                    <li><a href="Login.jsp"><i class="fas fa-headset"></i> ????ng Nh???p</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.account.role == 'user'}">
                                    <li><a href="#"><i class="fa fa-user s_color"></i>Ng?????i D??ng</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.account.role == 'admin'}">
                                    <li><a href="manager"><i class="fa fa-user s_color"></i>Ng?????i Qu???n L??</a></li>
                                    </c:if>
                            </ul>
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
                        <a class="navbar-brand" href="index.html"><img src="https://asset.bloomnation.com/c_fit,f_auto,h_203,q_auto,w_695/v1/vendor/5341/profile/t/h/theflowershopnj-logo.png"width="200px" class=logo" alt=""></a>
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
                                    <li><a href="detail">Shop Detail</a></li>
                                    <li><a href="Cart.jsp">Cart</a></li>
                                    <li><a href="checkout.jsp">Checkout</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="category">Danh m???c<br> s???n ph???m</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.jsp">Li??n H???</a></li>
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
                                                <input name="txt" type="text" value="${note}"/>
                                                <button type="submit" >
                                                    <li class="search"><i class="fa fa-search"></i></li>
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                    <c:set var="size" value="${sessionScope.size}"/>
                                    <div class="col-lg-3 ">
                                        <li class="side-menu"><a href="Cart.jsp">
                                                <i class="fa fa-shopping-bag"></i>
                                                <span class="badge">${size}</span>
                                                <p>Gi??? H??ng</p>
                                            </a></li>
                                    </div>
                                </div>
                            </ul>
                        </div>
                    </div>
                    <!-- End Atribute Navigation -->
                </div>

                <!-- End Side Menu -->
            </nav>
            <!-- End Navigation -->
        </header>
        <!-- End Main Top -->


        <!-- End Top Search -->

        <!-- Start All Title Box -->
        <div class="all-title-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Checkout</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Shop</a></li>
                            <li class="breadcrumb-item active">Checkout</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End All Title Box -->

        <!-- Start Cart  -->
        <div class="cart-box-main">
            <div class="container">
                <div class="row new-account-login">
                    <div class="row">
                            <div class="col-sm-6 col-lg-6 mb-3">
                                <div class="checkout-address">
                                    <div class="title-left">
                                        <h3>Th??ng Tin Kh??ch H??ng</h3>
                                    </div>
                                    <form class="needs-validation" novalidate>
                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <label for="firstName">Nh???p T??n</label>
                                                <input type="text" class="form-control" name="name"id="firstName" placeholder="" value="" required>
                                                <div class="invalid-feedback">  </div>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="username">Nh???p t??n ng?????i d??ng </label>
                                            <div class="input-group">
                                                <input type="text" class="form-control"name="user" id="username" placeholder="" required>
                                                <div class="invalid-feedback" style="width: 100%;"> T??n ng?????i d??ng kh??ng h???p l??? </div>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="email">S??? ??i???n tho???i </label>
                                            <input type="email" class="form-control"name="phone" id="email" placeholder="">
                                            <div class="invalid-feedback"> Vui L??ng nh???p s??? ??i???n tho???i ????? c???p nh???p ????n h??ng. </div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="address">Address *</label>
                                            <input type="text" class="form-control"name="address" id="address" placeholder="" required>
                                            <div class="invalid-feedback"> Vui L??ng nh???p ?????a ch??? nh???n h??ng </div>
                                        </div>
                                        <div class="row">
                                        </div>
                                        <div class="row">
                                        </div>
                                        <hr class="mb-1"> 
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-6 mb-3">
                                <div class="row">
                                    <div class="col-md-12 col-lg-12">
                                        <div class="shipping-method-box">
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-lg-12">
                                        <div class="odr-box">
                                            <div class="title-left">
                                                <h3>Gi??? H??ng</h3>
                                            </div>
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>T??n S???n Ph???m</th>
                                                        <th>Gi??</th>
                                                        <th>S??? L?????ng</th>
                                                        <th>T???ng Ti???n</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:set var="o" value="${sessionScope.cart}"/>
                                                    <c:forEach items="${o.list}" var="p">
                                                        <tr>
                                                            <td class="name-pr">
                                                                <P>${p.sp.namesp}</p>
                                                            </td>
                                                            <td class="price-pr">
                                                                <p><fmt:formatNumber maxFractionDigits="3" value="${p.price*1000}" type="number"></fmt:formatNumber></p>
                                                            </td>
                                                            <td>
                                                                <input type="button" readonly value="${p.quantity}"/>
                                                            </td>
                                                            <td class="total-pr">
                                                                <p>${p.quantity * p.price}00</p>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>

                                        </div>
                                    </div>
                                    <div class="col-md-12 col-lg-12">
                                        <div class="order-box">
                                            <div class="title-left">
                                                <h3>H??a ????n </h3>
                                            </div>
                                            <div class="d-flex">
                                                <div class="font-weight-bold">S???n Ph???m</div>
                                                <div class="ml-auto font-weight-bold">T???ng</div>
                                            </div>
                                            <hr class="my-1">
                                            <div class="d-flex">
                                                <h4>T???ng Ti???n</h4>
                                                <div class="ml-auto font-weight-bold">${o.total()}00</div>
                                            </div>

                                            <div class="d-flex">
                                                <h4>Thu???(10%)</h4>
                                                <div class="ml-auto font-weight-bold">${o.total()*0.1}00 </div>
                                            </div>
                                            <div class="d-flex">
                                                <h4>Shipping Cost</h4>
                                                <div class="ml-auto font-weight-bold"> Free </div>
                                            </div>
                                            <hr>
                                            <div class="d-flex gr-total">
                                                <h5>T???ng T???t C???</h5>
                                                <div class="ml-auto h5">${o.total() + o.total()*0.1}00 </div>
                                            </div>
                                            <hr> </div>
                                    </div>
                                    <div class="col-12 d-flex shopping-box"> <a href="checkout" class="ml-auto btn hvr-hover">?????t H??ng</a> </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div><!--
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
                                <h3>Th???i Gian Kinh Doanh</h3>
                                <ul class="list-time">
                                    <li>Th??? 2 - Th??? 6: 08.00s??ng ?????n 20.00 t???i</li> <li>Th??? 7: 10.00 s??ng ?????n 20.00 t???i</li> <li>Ch??? Nh???t: <span>Ngh???</span></li>
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
                                <h3>M???ng X?? H???i</h3>
                                <p>Li??n h???: </p>
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
                                <p>The Flower Shop cung c???p c??c s???n ph???m hoa t????i, hoa ch??c m???ng, hoa sinh nh???t, hoa khai tr????ng, hoa v??n ph??ng, hoa s??? ki???n, hoa c?????i, xe hoa, c???ng hoa, hoa trang tr??, ?????c bi???t l?? d???ch v??? ??i???n hoa to??n qu???c ???v???i nhi???u m???u hoa m???i l???, gi?? c??? h???p l??.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-link">
                                <h4>Th??ng Tin</h4>
                                <ul>
                                    <li><a href="#">The Flower Shop</a></li>
                                    <li><a href="#">D???ch v??? kh??ch h??ng</a></li>
                                    <li><a href="#">??i???u Kho???n; ??i???u Ki???n</a></li>
                                    <li><a href="#">Ch??nh S??ch B???o M???t</a></li>
                                    <li><a href="#">Th??ng tin giao h??ng</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-link-contact">
                                <h4>Li??n H???</h4>
                                <ul>
                                    <li>
                                        <p><i class="fas fa-map-marker-alt"></i>?????a Ch???: The Flower Shop <br>Th???ch H??a-Th???ch Th???t-H?? N???i</p>
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
