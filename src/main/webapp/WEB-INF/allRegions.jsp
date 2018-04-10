<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> All Regions</title>
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
                    <a href="index.html#" class="dropdown-toggle " data-toggle="dropdown">Portfolio</a>
                </li>
                <!--menu Portfolio li end here-->
                <li class="dropdown">
                    <a href="index.html#" class="dropdown-toggle" data-toggle="dropdown">Food </a>
                </li>
                <!--menu blog li end here-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> City </a>

                    <ul class="dropdown-menu" role="menu">
                        <li><a href="<c:url value="/allCityPage"/>">All Cities</a> </li>
                        <c:forEach items="${allCities}" var="city">
                            <li><a href="/cSinglePage?rId=${city.id}">${city.name}</a> </li>
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
</div><!--container-->
<div class="breadcrumb-wrap">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h4>Regions</h4>
            </div>
        </div>
    </div>
</div>
<div class="kotha-default-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                    <c:forEach items="${allregions}" var="region">
                <article class="single-blog">
                    <div class="entry-header text-center text-uppercase">
                            <h2><span>${region.name}</span></h2>
                    </div>
                    <div class="post-thumb">
                        <img src="<c:url value="/image?fileName=${region.pictures.get(0).picUrl}"/> " style="width: 500px;height: 300px;">
                    </div>
                    <div class="post-content">
                        <div class="entry-header text-center text-uppercase">
                        </div>
                        <div class="entry-content">
                            <p> <span>${region.description}</span>
                                    <c:if test="${currentUser.type.name().equals('ADMIN')}">
                                    <a href="<c:url value="/deleteR?regionId=${region.id}"/>">Delete</a>
                                    <a href="/admin" >Back</a>
                                    </c:if>
                                   </p>
                        </div>
                        <div class="continue-reading text-center text-uppercase">
                            <a href="<c:url value="/rSinglePage?rId=${region.id}"/>">Continue Reading</a>
                        </div>

                    </div>
                </article>
                        </c:forEach>

            </div>
            <div class="col-sm-4">
                <div class="kotha-sidebar">

                    <aside class="widget widget-popular-post">
                        <h3 class="widget-title text-uppercase text-center">Popular Posts</h3>
                        <ul>
                            <li>
                                <a href="archive-tag.html#" class="popular-img"><img src="assets/images/p-1.jpg" alt="">
                                </a>
                                <div class="p-content">
                                    <h4><a href="archive-tag.html#" class="text-uppercase">Ice-cream with chalk taste </a></h4>
                                    <span class="p-date">February 15, 2017 </span>
                                </div>
                            </li>
                            <li><a href="archive-tag.html#" class="popular-img"><img src="assets/images/p-2.jpg" alt="">
                            </a>
                                <div class="p-content">
                                    <h4><a href="archive-tag.html#" class="text-uppercase">The moment of mango bar</a></h4>
                                    <span class="p-date">March 15, 2017 </span>
                                </div>
                            </li>
                            <li>
                                <a href="archive-tag.html#" class="popular-img"><img src="assets/images/p-3.jpg" alt="">
                                </a>
                                <div class="p-content">
                                    <h4><a href="archive-tag.html#" class="text-uppercase">Homemade herbal black tea</a></h4>
                                    <span class="p-date">April 15, 2017 </span>
                                </div>
                            </li>
                        </ul>
                    </aside>
                    <aside class="widget latest-post-widget">
                        <h2 class="widget-title text-uppercase text-center">Latest Posts</h2>
                        <ul>
                            <li class="media">
                                <div class="media-left">
                                    <a href="archive-tag.html#" class="popular-img"><img src="assets/images/recent-1.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-post-content">
                                    <h2 class="text-uppercase"><a href="archive-tag.html#">A Marine Dive From Sky</a></h2>
                                    <p>April 20, 2017</p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="media-left">
                                    <a href="archive-tag.html#" class="popular-img"><img src="assets/images/recent-2.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-post-content">
                                    <h2 class="text-uppercase"><a href="archive-tag.html#">Small Meeting Room</a></h2>
                                    <p>April 27, 2017</p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="media-left">
                                    <a href="archive-tag.html#" class="popular-img"><img src="assets/images/recent-3.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-post-content">
                                    <h2 class="text-uppercase"><a href="archive-tag.html#">Selfie from the beach point</a></h2>
                                    <p>May 27, 2017</p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="media-left">
                                    <a href="archive-tag.html#" class="popular-img"><img src="assets/images/recent-4.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-post-content">
                                    <h2 class="text-uppercase"><a href="archive-tag.html#">Gather Some Artist Pencils.</a></h2>
                                    <p>April 20, 2017</p>
                                </div>
                            </li>
                        </ul>
                    </aside>

                </div>
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
                            <li><p><strong><i class="fa fa-envelope"></i> Mail Us:</strong> <a href="index.html#">չկա</a></p></li>
                            <li> <p><strong><i class="fa fa-phone"></i> Phone:</strong> չկա </p></li>
                            <li> <p><strong><i class="fa fa-print"></i> Fax</strong>չկա </p></li>
                            <li> <p><strong><i class="fa fa-skype"></i> Skype</strong> չկա </p></li>

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
                            <li><a href="portfolio-single.html"><img src="img/17.jpg" class="img-responsive" alt=""></a></li>
                            <li><a href="portfolio-single.html"><img src="img/33.jpg" class="img-responsive" alt=""></a></li>
                            <li><a href="portfolio-single.html"><img src="img/61.jpg" class="img-responsive" alt=""></a></li>
                            <li><a href="portfolio-single.html"><img src="img/51.jpg" class="img-responsive" alt=""></a></li>
                            <li><a href="portfolio-single.html"><img src="img/60.jpg" class="img-responsive" alt=""></a></li>
                            <li><a href="portfolio-single.html"><img src="img/59.jpg" class="img-responsive" alt=""></a></li>
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


    <script src="js/custom.js" type="text/javascript"></script>
</body>
</html>
<!--//Script//-->
