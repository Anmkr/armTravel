<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> ArmTrail </title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/slick-theme.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="style.css">


        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- custom css (blue color by default) -->
        <link href="../css/style.css" rel="stylesheet" type="text/css" media="screen">

        <!-- font awesome for icons -->
        <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- flex slider css -->
        <link href="../css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
        <!-- animated css  -->
        <link href="../css/animate.css" rel="stylesheet" type="text/css" media="screen">

        <!--owl carousel css-->
        <link href="../owl-carousel/assets/owl.carousel.css" rel="stylesheet" type="text/css" media="screen">
        <link href="../owl-carousel/assets/owl.theme.default.css" rel="stylesheet" type="text/css" media="screen">
        <!--mega menu -->
        <link href="../css/yamm.css" rel="stylesheet" type="text/css">
        <!--popups css-->
        <link href="../css/magnific-popup.css" rel="stylesheet" type="text/css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

<body>
<div class="breadcrumb-wrap">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h4>Login Or Registration</h4>
            </div>
            <div class="col-sm-6 hidden-xs text-right">
                <ol class="breadcrumb">
                    <li><a href="/home">Home</a></li>
                    <li>Login register classic</li>
                </ol>
            </div>
        </div>
    </div>
</div><!--breadcrumbs-->
<div class="divide80"></div>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div role="tabpanel" class="login-regiter-tabs">

                <!-- Nav tabs -->
                <ul class="nav nav-tabs text-center" role="tablist">
                    <li role="presentation" class="active"><a href="login-register.jsp#login" aria-controls="login"
                                                              role="tab" data-toggle="tab">Login</a></li>
                    <li role="presentation"><a href="login-register.jsp#profile" aria-controls="profile" role="tab"
                                               data-toggle="tab">Register</a></li>
                </ul>
                                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="login">

                        <form method="post" action="/loginPage">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input name="j_email" type="email" class="form-control" id="exampleInputEmail1"
                                       placeholder="Enter email">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input name="j_password" type="password" class="form-control" id="exampleInputPassword1"
                                       placeholder="Password">
                            </div>
                            <div class="pull-left">
                            </div>
                            <div class="pull-right">

                                <button type="submit" class="btn btn-theme-dark">Login</button>
                            </div>
                            <div class="clearfix"></div>
                        </form>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                        <c:if test="${message!=null}">
                            <p>${message}</p>
                        </c:if>

                                                <spring:form action="/register" method="post" modelAttribute="user"
                                     enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="exampleInputname">Name</label>
                                <spring:input path="name" type="text" placeholder="Name" class="form-control"
                                              id="exampleInputname"/>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputname">Surname</label>
                                <spring:input path="surname" type="text" placeholder="Surname" class="form-control"
                                              id="exampleInputname"/>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail11">Email address</label>
                                <spring:input path="email" placeholder="Email Address" type="email" class="form-control"
                                              id="exampleInputEmail11"/>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword11">Password</label>
                                <spring:input path="password" placeholder="Password" type="password"
                                              class="form-control" id="exampleInputPassword11"/>
                            </div>
                            <input type="file" name="image"  class="btn btn-theme-dark btn-xs" >
                            <div class="pull-right">
                                <button type="submit" class="btn btn-theme-dark btn-lg">Register</button>
                            </div>
                            <div class="clearfix"></div>
                        </spring:form>
                    </div><!--register tab end-->
                </div>
            </div>
        </div>
    </div>
</div>
<div class="divide80"></div>
<footer id="footer">
    <div class="container">

        <div class="row">
            <div class="col-md-3 col-sm-6 margin30">
                <div class="footer-col">
                    <h3>About us</h3>
                    <p>


                    </p>
                    <ul class="list-inline footer-social">
                        <li>
                            <a href="http://www.facebook.com"
                               class="social-icon si-dark si-gray-round si-colored-facebook">
                                <i class="fa fa-facebook"></i>
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.twitter.com"
                               class="social-icon si-dark si-gray-round si-colored-twitter">
                                <i class="fa fa-twitter"></i>
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.google-plus.com"
                               class="social-icon si-dark si-gray-round si-colored-google-plus">
                                <i class="fa fa-google-plus"></i>
                                <i class="fa fa-google-plus"></i>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.instagram.com"
                               class="social-icon si-dark si-gray-round si-colored-pinterest">
                                <i class="fa fa-pinterest"></i>
                                <i class="fa fa-pinterest"></i>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.instagram.com"
                               class="social-icon si-dark si-gray-round si-colored-linkedin">
                                <i class="fa fa-linkedin"></i>
                                <i class="fa fa-linkedin"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div><!--footer col-->
            <div class="col-md-3 col-sm-6 margin30">
                <div class="footer-col">
                    <h3>Contact</h3>

                    <ul class="list-unstyled contact">
                        <li><p><strong><i class="fa fa-map-marker"></i> Address:</strong></p></li>
                        <li><p><strong><i class="fa fa-envelope"></i> Mail Us:</strong> <a href="/loginPage"></a></p></li>
                        <li> <p><strong><i class="fa fa-phone"></i> Phone:</strong>  </p></li>
                        <li> <p><strong><i class="fa fa-print"></i> Fax</strong></p></li>
                        <li> <p><strong><i class="fa fa-skype"></i> Skype</strong> </p></li>


                    </ul>
                </div>
            </div><!--footer col-->
            <div class="col-md-3 col-sm-6 margin30">
                <div class="footer-col">
                    <h3>Armenia</h3>
                    <ul class="list-inline f2-work">
                        <li><a href="/home"><img src="img/1.jpg" class="img-responsive" alt=""></a></li>
                        <li><a href="/home"><img src="img/2.jpg" class="img-responsive" alt=""></a></li>
                        <li><a href="/home"><img src="img/3.jpg" class="img-responsive" alt=""></a></li>
                        <li><a href="/home"><img src="img/17.jpg" class="img-responsive" alt=""></a></li>
                        <li><a href="/home"><img src="img/33.jpg" class="img-responsive" alt=""></a></li>
                        <li><a href="/home"><img src="img/61.jpg" class="img-responsive" alt=""></a></li>
                        <li><a href="/home"><img src="img/51.jpg" class="img-responsive" alt=""></a></li>
                        <li><a href="/home"><img src="img/60.jpg" class="img-responsive" alt=""></a></li>
                        <li><a href="/home"><img src="img/59.jpg" class="img-responsive" alt=""></a></li>
                    </ul>
                </div>
            </div><!--footer col-->
        </div>

        <div class="row">
            <div class="col-md-12 text-center">
                <div class="footer-btm">
                    <span>&copy;2018. ArmTrail</span>
                </div>
            </div>
        </div>
    </div>
</footer><!--default footer end here-->

<!--scripts and plugins -->
<!--must need plugin jquery-->
<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate.min.js"></script>
<!--bootstrap js plugin-->
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!--easing plugin for smooth scroll-->
<script src="js/jquery.easing.1.3.min.js" type="text/javascript"></script>
<!--sticky header-->
<script type="text/javascript" src="js/jquery.sticky.js"></script>
<!--flex slider plugin-->
<script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
<!--parallax background plugin-->
<script src="js/jquery.stellar.min.js" type="text/javascript"></script>
<!--digit countdown plugin-->
<script src="js/waypoints.min.js"></script>
<!--digit countdown plugin-->
<script src="js/jquery.counterup.min.js" type="text/javascript"></script>
<!--on scroll animation-->
<script src="js/wow.min.js" type="text/javascript"></script>
<!--owl carousel slider-->
<script src="owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<!--popup js-->
<script src="js/jquery.magnific-popup.min.js" type="text/javascript"></script>


<!--customizable plugin edit according to your needs-->
<script src="js/custom.js" type="text/javascript"></script>
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="js/revolution-custom.js"></script>
<!--cube portfolio plugin-->
<script src="cubeportfolio/js/jquery.cubeportfolio.min.js" type="text/javascript"></script>
<script src="js/cube-portfolio.js" type="text/javascript"></script>
<script src="js/pace.min.js" type="text/javascript"></script>
</body>
</html>



















