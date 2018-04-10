<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> AdminPage </title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/slick-theme.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="style.css">
    <!-- Bootstrap -->
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

<script src="assets/js/jquery-1.11.1.js"></script>
<!-- BOOTSTRAP SCRIPTS  -->
<script src="assets/js/bootstrap.js"></script>

<div class="breadcrumb-wrap">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">
            </a>
        </div>
        <div class="user-settings-wrapper">
            <ul class="nav">

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <span class="glyphicon glyphicon-user" style="font-size: 25px;">Admin</span>
                    </a>

                    <div class="dropdown-menu dropdown-settings">
                        <div class="media">
                            <img src="assets/img/logo.jpg" width="30px" height="30px"/>
                            <div class="media-body">
                                <h4 class="media-heading"></h4>
                                <h5> ArmTravel </h5>

                            </div>
                        </div>

                        <a href="/loginPage" class="btn btn-danger btn-sm">Logout</a>

                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>


<section class="menu-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="navbar-collapse collapse ">
                    <ul id="menu-top" class="nav navbar-nav navbar-right">
                        <li><a href="/delete">Delete User</a></li>
                        <li><a class="menu-top-active" href="/admin">Forms</a></li>
                        <li><a href=".logout()"> Logout</a></li>
                        <li><a href="/home">Home</a></li>

                    </ul>
                </div>
            </div>

        </div>
    </div>
</section>
</div><!--breadcrumbs-->
<div class="divide80"></div>

<!-- Tab panes -->
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1 class="page-head-line">Forms </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    ADD REGION
                </div>
                <div class="panel-body">
                    <spring:form action="/addRegion" modelAttribute="region" enctype="multipart/form-data"
                                 method="post">
                    <div class="form-group">
                        <label for="exampleInputName">Name</label>
                        <spring:input path="name" class="form-control" id="exampleInputName" placeholder="Name"/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputDescription">Description</label>
                        <spring:textarea path="description" class="form-control" id="exampleInputDescription"
                                         placeholder="Description"/>


                    </div>
                    <div class="form-group">
                        <input type="file" name="picture" accept="image/*" multiple/><br><br>
                        <input type="submit" name="Add"/><br>
                        </spring:form>
                        <a href="/deleteRegion">Delete Region</a>&nbsp;&nbsp;
                        <%--<a href="/deleteRegionPost">Delete RegionPost</a>--%>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        ADD CITY
                    </div>
                    <div class="panel-body">
                        <spring:form action="/addCity" modelAttribute="city" enctype="multipart/form-data"
                                     method="post">
                        <div class="form-group">
                            <label for="exampleInputName">Name</label>
                            <spring:input path="name" class="form-control" id="exampleInputName" placeholder="Name"/>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputDescription">Description</label>
                            <spring:textarea path="description" class="form-control" id="exampleInputDescription"
                                             placeholder="Description"/>
                        </div>
                        <div class="form-group">
                            <input type="file" name="picture" accept="image/*" multiple/><br><br>
                            <input type="submit" name="Add"/><br>
                            </spring:form>
                            <%--<a href="/deleteCity">Delete City</a>&nbsp;&nbsp;--%>
                            <a href="/deleteCityPost">Delete CityPost</a>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        ADD HOTEL
                    </div>
                    <div class="panel-body">
                        <spring:form action="/addHotel" modelAttribute="hotel" enctype="multipart/form-data"
                                     method="post">
                        <div class="form-group">
                            <label for="exampleInputName">Name</label>
                            <spring:input path="name" class="form-control" id="exampleInputName" placeholder="Name"/>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputDescription">Description</label>
                            <spring:textarea path="description" class="form-control" id="exampleInputDescription"
                                             placeholder="Description"/>
                        </div>
                        <div class="form-group">
                            <input type="file" name="picture" accept="image/*" multiple/><br><br>
                            <spring:select path="city" items="${allCities}" itemLabel="name"/><br>
                            <input type="number" name="hotelRating" maxlength="5"/><br>
                            <input type="submit" name="Add"/><br>
                            </spring:form>
                            <a href="/deleteHotel">Delete Hotel</a>
                        </div>


                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            ADD FOOD
                        </div>
                        <div class="panel-body">
                            <form>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1"
                                           placeholder="Enter email"/>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1"
                                           placeholder="Password"/>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputFile">File input</label>
                                    <input type="file" id="exampleInputFile"/>

                                </div>

                                <button type="submit" class="btn btn-default">Submit</button>

                                <textarea class="form-control" rows="3" placeholder="Text Area"></textarea>
                                <hr/>

                            </form>
                        </div>
                    </div>
                </div>
                <div>
                    <%--<a href="/delete">Delete User</a>--%>
                    <%--<a href="/deleteRegion">Delete Region</a>--%>
                    <%--<a href="/deleteCity">Delete City</a>--%>
                    <%--<a href="/deleteHotel">Delete Hotel</a>--%>
                    <%--<a href="/deleteCityPost">Delete CityPost</a>--%>
                    <%--<a href="deleteRegionPost">Delete RegionPost</a>--%>
                </div>
                <footer>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">

                            </div>

                        </div>
                    </div>
                </footer>

                <script src="assets/js/jquery-1.11.1.js"></script>
                <!-- BOOTSTRAP SCRIPTS  -->
                <script src="assets/js/bootstrap.js"></script>
            </div>
        </div>
    </div>
</div>
<footer id="footer">
    <div class="container">

        <div class="row">
            <div class="col-md-3 col-sm-6 margin30">
                <div class="footer-col">
                    <h3>About us</h3>
                    <p>


                        <%--</p>--%>
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
                        <li><p><strong><i class="fa fa-envelope"></i> Mail Us:</strong> <a href="index.html#"></a></p>
                        </li>
                        <li><p><strong><i class="fa fa-phone"></i> Phone:</strong></p></li>
                        <li><p><strong><i class="fa fa-print"></i> Fax</strong></p></li>
                        <li><p><strong><i class="fa fa-skype"></i> Skype</strong></p></li>

                    </ul>
                </div>
            </div><!--footer col-->
            <div class="col-md-3 col-sm-6 margin30">
                <div class="footer-col">
                    <h3>Armenia</h3>
                    <ul class="list-inline f2-work">
                        <li><a href="portfolio-single.html"><img src="img/1.jpg" class="img-responsive" alt=""></a></li>
                        <li><a href="portfolio-single.html"><img src="img/2.jpg" class="img-responsive" alt=""></a></li>
                        <li><a href="portfolio-single.html"><img src="img/3.jpg" class="img-responsive" alt=""></a></li>
                        <li><a href="portfolio-single.html"><img src="img/17.jpg" class="img-responsive" alt=""></a>
                        </li>
                        <li><a href="portfolio-single.html"><img src="img/33.jpg" class="img-responsive" alt=""></a>
                        </li>
                        <li><a href="portfolio-single.html"><img src="img/61.jpg" class="img-responsive" alt=""></a>
                        </li>
                        <li><a href="portfolio-single.html"><img src="img/51.jpg" class="img-responsive" alt=""></a>
                        </li>
                        <li><a href="portfolio-single.html"><img src="img/60.jpg" class="img-responsive" alt=""></a>
                        </li>
                        <li><a href="portfolio-single.html"><img src="img/59.jpg" class="img-responsive" alt=""></a>
                        </li>
                    </ul>
                </div>
            </div><!--footer col-->
        </div>

        <div class="row">
            <div class="col-md-12 text-center">
                <div class="footer-btm">
                    <span>&copy;2018. </span>
                </div>
            </div>
        </div>
    </div>
</footer><!--default footer end here-->

<!--scripts and plugins -->
<!--must need plugin jquery-->
<script src="../js/jquery.min.js"></script>
<!--bootstrap js plugin-->
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!--easing plugin for smooth scroll-->
<script src="../js/jquery.easing.1.3.min.js" type="text/javascript"></script>
<!--sticky header-->
<script type="text/javascript" src="../js/jquery.sticky.js"></script>
<!--flex slider plugin-->
<script src="../js/jquery.flexslider-min.js" type="text/javascript"></script>
<!--parallax background plugin-->
<script src="../js/jquery.stellar.min.js" type="text/javascript"></script>


<!--digit countdown plugin-->
<script src="../js/waypoints.min.js"></script>
<!--digit countdown plugin-->
<script src="../js/jquery.counterup.min.js" type="text/javascript"></script>
<!--on scroll animation-->
<script src="../js/wow.min.js" type="text/javascript"></script>
<!--owl carousel slider-->
<script src="../owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<!--popup js-->
<script src="../js/jquery.magnific-popup.min.js" type="text/javascript"></script>


<!--customizable plugin edit according to your needs-->
<script src="../js/custom.js" type="text/javascript"></script>
</body>
</html>










