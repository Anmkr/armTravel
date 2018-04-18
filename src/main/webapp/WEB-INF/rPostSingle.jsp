
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> All Posts</title>
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
                    <ul class="dropdown-menu" role="menu">
                        <li> <a href="<c:url value="/allHotelPage"/>"> All Hotels</a></li>
                        <c:forEach items="${allHotels}" var="hotel">
                        </c:forEach>
                    </ul>
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
                        <li><a href="<c:url value="/allCityPage"/>">All Cities</a></li>
                        <c:forEach items="${allCities}" var="city">
                            <li><a href="/cSinglePage?cId=${city.id}">${city.name}</a></li>
                        </c:forEach>
                    </ul>
                </li>
                <!--menu pages li end here-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Region </a>
                    <ul class="dropdown-menu">
                        <li><a href="<c:url value="/allrpage"/>">All Regions</a></li>
                        <c:forEach items="${allRegions}" var="region">
                            <li><a href="/rSinglePage?rId=${region.id}">${region.name} </a></li>
                        </c:forEach>
                    </ul>
                </li>

            </ul>
        </div>
    </div><!--/.nav-collapse -->
</div><!--container-->
<div class="breadcrumb-wrap">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h4>Region &nbsp;Post</h4>
            </div>
        </div>
    </div>
</div><!--breadcrumbs-->
<div class="divide80"></div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="blog-post">
                <div>
                    <c:if test="${regionPost.picture!=null}">
                        <img src="<c:url value="/image?fileName=${regionPost.picture}"/>" alt="workimg"/>
                    </c:if>


                </div>
                <ul class="list-inline post-detail">
                    <%--<li>by <a href="blog-single.html#">assan</a></li>--%>
                    <%--<li><i class="fa fa-calendar"></i> 31st july 2014</li>--%>
                    <%--<li><i class="fa fa-tag"></i> <a href="blog-single.html#">Sports</a></li>--%>
                    <%--<li><i class="fa fa-comment"></i> <a href="blog-single.html#">6 Comments</a></li>--%>
                </ul>
                <h2><span> ${regionPost.title}</span></h2>
                <p>
                        <span> ${regionPost.description}
                </p>
            </div>
            <div class="comment-post">
                <h3> Comments</h3>
                <div class="row">
                    <div class="col-md-12">
                        <div class="comment-list">

                        </div><!--comments list-->
                    </div>
                    <div class="col-md-10 col-md-offset-1">
                        <div class="comment-list">

                        </div><!--comments list-->
                    </div>
                    <div class="col-md-12">
                        <div class="comment-list">

                                by User <a href="blog-single.html#" class="btn btn-xs btn-theme-dark">Reply</a>

                        </div><!--comments list-->
                    </div>
                </div>
            </div><!--comments-->

            <ul class="pager">
                <li class="previous"><a href="/home">&larr; Previous Page</a></li>
                <li class="next"><a href="/home">Next Page &rarr;</a></li>
            </ul><!--pager-->
            <div class="divide60"></div>
            <div class="comment-form">
                <h3>Leave Comment</h3>
                <div class="form-contact">
                    <spring:form action="/rPostCoomment" method="get" modelAttribute="regionPostComment">
                        <form role="form">
                            <div class="form-group">
                                <label for="title">Title</label>
                                <spring:input path="title" class="form-control" name="title" required="required"/>
                            </div>

                            <div class="form-group">
                                <label for="description">Comment</label>
                                <spring:textarea path="description" title="description" required="required"/>
                                <input type="hidden" value="${regionPost.id} " name="rPostId"/>
                            </div>
                            <input type="submit"  value="Add Comment">
                        </form> </spring:form>
                </div>
            </div>


            <a href="/userPage">Back</a>
        </div><!--col-->
        <div class="col-md-3 col-md-offset-1">
            <div class="sidebar-box margin40">
                <h4>Search</h4>
                <form role="form" action="<c:url value="/search"/>">
                    <input type="text" class="form-control" name="searchResult" placeholder="Search here ...">
                    <span class="search-close"><i class=""></i></span>

                </form>
                </form>
            </div><!--sidebar-box-->
            <div class="sidebar-box margin40">

            </div><!--sidebar-box-->
            <div class="sidebar-box margin40">
                <h4>Categories</h4>
                <ul class="list-unstyled cat-list">
                    <li> <a href="https://www.youtube.com/watch?v=ChYsTZ3wlHs">Marketing</a><i class="fa fa-angle-right"></i></li>
                    <li> <a href="https://www.youtube.com/watch?v=Rv3Yyr9IDsg">Videos</a> <i class="fa fa-angle-right"></i></li>
                    <li> <a href="http://blognews.am/arm/news/426991/hazvadep-handipox-haykakan-15-yurorinak-utestner.html">Foods</a> <i class="fa fa-angle-right"></i></li>
                    <li> <a href="https://hy.wikipedia.org/wiki/%D5%80%D5%A1%D5%B5%D5%AF%D5%A1%D5%AF%D5%A1%D5%B6_%D5%A1%D5%A6%D5%A3%D5%A1%D5%B5%D5%AB%D5%B6_%D5%B0%D5%A1%D5%A3%D5%B8%D6%82%D5%BD%D5%BF_(%D5%BF%D5%A1%D6%80%D5%A1%D5%A6)">Fashion</a> <i class="fa fa-angle-right"></i></li>
                    <li> <a href="https://www.youtube.com/watch?v=Ka_GqM8PSfE">Media</a> <i class="fa fa-angle-right"></i></li>
                    <li> <a href="https://www.google.am/search?q=hayastani+gexatesil+vayrer&rlz=1C1PRFC_enAM732AM732&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjdhKDUrsHaAhVRjqQKHVglAMsQ_AUICigB&biw=1366&bih=588">Pictures</a><i class="fa fa-angle-right"></i></li>
                    <li> <a href="https://tvkultura.ru/video/show/brand_id/21865/episode_id/1463983/video_id/1586418/">Culture</a> <i class="fa fa-angle-right"></i></li>
                </ul>
            </div><!--sidebar-box-->
            <div class="sidebar-box margin40">
                <h4>Popular Post</h4>
                <ul class="list-unstyled popular-post">
                </ul>
            </div><!--sidebar-box-->
            <div class="sidebar-box margin40">

                </div>
            </div>
        </div><!--sidebar-col-->
    </div><!--row for blog post-->
</div><!--blog full main container-->
<div class="divide60"></div>

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
                            <a href="http://www.facebook.com" class="social-icon si-dark si-gray-round si-colored-facebook">
                                <i class="fa fa-facebook"></i>
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.twitter.com" class="social-icon si-dark si-gray-round si-colored-twitter">
                                <i class="fa fa-twitter"></i>
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.google-plus.com" class="social-icon si-dark si-gray-round si-colored-google-plus">
                                <i class="fa fa-google-plus"></i>
                                <i class="fa fa-google-plus"></i>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.instagram.com" class="social-icon si-dark si-gray-round si-colored-pinterest">
                                <i class="fa fa-pinterest"></i>
                                <i class="fa fa-pinterest"></i>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.instagram.com" class="social-icon si-dark si-gray-round si-colored-linkedin">
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
                        <li><p><strong><i class="fa fa-envelope"></i> Mail Us:</strong> <a href="index.html#"></a></p></li>
                        <li> <p><strong><i class="fa fa-phone"></i> Phone:</strong> </p></li>
                        <li> <p><strong><i class="fa fa-print"></i> Fax</strong> </p></li>
                        <li> <p><strong><i class="fa fa-skype"></i> Skype</strong>  </p></li>

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
                    <span>&copy;2018.ArmTrail </span>
                </div>
            </div>
        </div>
    </div>
</footer><!--default footer end here-->

<!--scripts and plugins -->
<!--must need plugin jquery-->
<script src="js/jquery.min.js"></script>
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
</body>
</html>











