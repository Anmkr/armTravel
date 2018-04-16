<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>  User Page</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/slick-theme.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="style.css">
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome for icons -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- flex slider css -->
    <link href="css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
    <!-- animated css  -->
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="screen">
    <!-- Revolution Style-sheet -->
    <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css">
    <link rel="stylesheet" type="text/css" href="css/rev-style.css">
    <!--owl carousel css-->
    <link href="owl-carousel/assets/owl.carousel.css" rel="stylesheet" type="text/css" media="screen">
    <link href="owl-carousel/assets/owl.theme.default.css" rel="stylesheet" type="text/css" media="screen">
    <!--mega menu -->
    <link href="css/yamm.css" rel="stylesheet" type="text/css">
    <!--cube css-->
    <link href="cubeportfolio/css/cubeportfolio.min.css" rel="stylesheet" type="text/css">
    <!-- custom css-->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="screen">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="top-bar-dark">
    <div class="container">
        <div class="row">
            <div class="col-sm-4 hidden-xs">

            </div>
            <div class="col-sm-8 text-right">
                <ul class="list-inline top-dark-right">
                    <li><a href="/loginPage"><i class="fa fa-lock"></i> Login</a></li>
                    <li><a class="topbar-icons" href="#"><span><i class="fa fa-search top-search"></i></span></a></li>
                </ul>
                <div class="search">
                    <form role="form" action="<c:url value="/search"/>">
                        <input type="text" class="form-control" autocomplete="off" name="searchResult" placeholder="Write something and press enter">
                        <span class="search-close"><i class="fa fa-times"></i></span>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="navbar navbar-default navbar-static-top yamm sticky" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="user-settings-wrapper">
                <ul class="nav">

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                            <span class="glyphicon glyphicon-user" style="font-size: 25px;">User</span>
                        </a>

                        <div class="dropdown-menu dropdown-settings">
                            <div class="media">
                                <img src="assets/img/logo.jpg" width="30px" height="30px"/>
                                <div class="media-body">
                                    <h4 class="media-heading"></h4>
                                    <h5> ArmTrail </h5>
                                    <a href="/logout" class="btn btn-danger btn-sm">Logout</a>

                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <ul class="top-social-icons list-inline pull-right">
                <li><a href="http://www.facebook.com"rel="external nofollow"target="_blank"><i class="fa fa-facebook"></i></a></li>
                <li><a href="http://www.twitter.com"rel="external nofollow"target="_blank"><i class="fa fa-twitter"></i></a></li>
                <li><a href="http://www.instagram.com"rel="external nofollow"target="_blank"><i class="fa fa-instagram"></i></a></li>
                <li><a href="http://www.pinterest.com"rel="external nofollow"target="_blank"><i class="fa fa-pinterest"></i></a></li>
                <li><a href="http://www.google-plus.com"><i class="fa fa-google-plus"></i></a></li>

            </ul>

        </div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown active ">
                    <a href="/home">Home</a>
                </li>
                <!--menu home li end here-->
                <li class="dropdown">
                    <a href="index.html#" class="dropdown-toggle " data-toggle="dropdown">Hotel</a>
                </li>
                <!--menu Portfolio li end here-->
                <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Post</a>
                <ul class="dropdown-menu" role="menu">
                    <li> <a href="<c:url value="/allrPpage"/>"> All Posts</a></li>
                    <c:forEach items="${allRegionPosts}" var="regionPost">
                    </c:forEach>
                </ul>
                </li>
                <!--menu blog li end here-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> City </a>

                    <ul class="dropdown-menu" role="menu">
                        <li><a href="<c:url value="/allCityPage"/>">All Cities</a> </li>
                        <c:forEach items="${allCities}" var="city">
                            <li><a href="/cSinglePage?cId=${city.id}">${city.name}</a> </li>
                        </c:forEach>
                    </ul>
                </li>
                <!--menu pages li end here-->

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Region </a>
                    <ul class="dropdown-menu">
                        <li><a href="<c:url value="/allrpage"/>">All Regions</a> </li>
                        <c:forEach items="${allRegions}" var="region">
                            <li><a href="/rSinglePage?rId=${region.id}">${region.name} </a></li>
                        </c:forEach>
                    </ul>
                </li>

            </ul>
        </div>
    </div><!--/.nav-collapse -->

</div>

<div class="breadcrumb-wrap">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h4>User Page</h4>
            </div>
        </div>
    </div>
</div>

<!--container-->
<div class="panel-body">
    <div class="col-sm-8">
        <div class="panel-body">
            <article class="single-blog contact-us">
                <div class="post-content">
                    <div class="leave-comment">
                        <h4>Add RegionPost</h4>

                        <spring:form action="/addRegionPost" method="post" modelAttribute="regionPost"  enctype="multipart/form-data">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <input type="text" class="form-control" id="title" name="title"
                                           placeholder="Title" required>
                                </div>
                                <div class="col-md-6">
                                    <input type="file" class="form-control"  name="regionPostImage"
                                           placeholder="regionPostImage" required>

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <spring:select path="region" items="${allRegions}" itemLabel="name"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                 <textarea class="form-control" rows="6" name="description"
                                           placeholder="Description" required></textarea>
                                </div>
                            </div>

                            <button type="submit" class="btn send-btn"> SEND MASSAGE</button>
                        </spring:form>
                    </div>
                </div>
            </article>
        </div>
    </div>
</div>


<div class="panel-body">
    <div class="col-sm-8">
        <article class="single-blog contact-us">
            <div class="post-content">
                <div class="leave-comment">
                    <h4>Add CityPost</h4>

                    <spring:form action="/addCityPost" method="post" modelAttribute="cityPost"  enctype="multipart/form-data">
                    <div class="form-group">
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="title" name="title"
                                   placeholder="Title" required>
                        </div>
                        <div class="col-md-6">
                            <input type="file" class="form-control"  name="cityPostImage"
                                   placeholder="cityPostImage" required>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <spring:select path="city" items="${allCities}" itemLabel="name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                                 <textarea class="form-control" rows="6" name="description"
                                           placeholder="Description" required></textarea>
                        </div>
                    </div>
                    <button type="submit" class="btn send-btn"> SEND MASSAGE</button>

                </div>
            </div>
        </article>
    </div>
    </spring:form>
</div>

<div><a href="/regionPostPage1">All RegionPosts</a><br></div>

<div> </div>
<div> <a href="/cityPostPage">All CityPosts</a> <br></div>
<a href="/userPage" >Back</a>
<%--</spring:form>--%>
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
                        <li><p><strong><i class="fa fa-map-marker"></i> Address:</strong> Գյումրի</p></li>
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

<%--<div style="width: 30%;float:left;">--%>
<%--<span>Add Food</span>--%>
<%--<spring:form action="/addFood" method="get" modelAttribute="food"  >--%>
<%--<label for="name">Name</label>--%>
<%--<spring:input path="name" id="name"/><br>--%>
<%--<label for="description">Description</label>--%>
<%--<spring:input path="description" id="description"/><br>--%>
<%--<spring:select path="region" items="${allRegions}" itemLabel="name"/><br>--%>
<%--<input type="submit" name="Add"/><br>--%>
<%--</spring:form>--%>
<%--</div>--%>

<%--<div style="width: 30%;float:left;">--%>
<%--<span>Add FoodPost</span>--%>
<%--<spring:form action="/addFoodPost" method="post" modelAttribute="foodPost"  enctype="multipart/form-data">--%>
<%--<label for="title">Title</label>--%>
<%--<spring:input path="title" id="title"/><br>--%>
<%--<label for="description">Description</label>--%>
<%--<spring:input path="description" id="description"/><br>--%>
<%--<spring:select path="food" items="${allFoods}" itemLabel="name"/><br>--%>
<%--<input type="file" name="foodPostImage"><br>--%>
<%--<input type="submit" name="Add"/><br>--%>
<%--</spring:form>--%>
<%--</div>--%>