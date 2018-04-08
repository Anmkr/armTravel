<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> ArmTravel</title>
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
                <li><a href="www.facebook.com#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="www.twitter.com#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="www.instagram.com#"><i class="fa fa-instagram"></i></a></li>
                <li><a href="www.pinterest.com#"><i class="fa fa-pinterest"></i></a></li>
                <li><a href="archive-tag.html#"><i class="fa fa-google-plus"></i></a></li>

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

<!--rev slider start-->
<div class="fullwidthbanner">
    <div class="tp-banner">
        <ul>
            <!-- SLIDE -->
            <li data-transition="fade" data-slotamount="5" data-masterspeed="1000" data-title=" Գյումրի">
                <img src="img/1.jpg" alt="darkblurbg" data-bgfit="cover" data-bgposition="left top"
                     data-bgrepeat="no-repeat">

            </li>
            <!-- SLIDE -->
            <li data-transition="fade" data-slotamount="5" data-masterspeed="1000" data-title="Երեվան">
                <!-- MAIN IMAGE -->
                <img src="img/2.jpg" alt="darkblurbg" data-bgfit="cover" data-bgposition="left top"
                     data-bgrepeat="no-repeat">
            <li data-transition="fade" data-slotamount="5" data-masterspeed="1000" data-title="Վանաձոր">
                <!-- MAIN IMAGE -->
                <img src="img/3.jpg" alt="darkblurbg" data-bgfit="cover" data-bgposition="left top"
                     data-bgrepeat="no-repeat">

            </li>
        </ul>
    </div>
</div><!--full width banner-->
<!--revolution end-->

<div class="divide60"></div>
<div class="container">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2">
            <div class="center-heading">
                <h2> ՀԱՅԱՍՏԱՆԻ <strong>ՀՐԱՇԱԼԻՔՆԵՐԸ</strong></h2>
                <span class="center-line"></span>
                <p class="sub-text margin40">
                    Հայաստանը հայտնի է իր յուրօրինակ ժայռապատկերներով, վիշապաքարերով, առեղծվածային զորաքարերով, հոյակերտ
                    բերդերով ու տաճարներով,
                    արեգակնային ժամացույցներով,խաչքարերով, ինչպես նաև աստվածային բնությամբ: </p>
            </div>
        </div>
    </div><!--center heading end-->
    <div class="divide50"></div>
    <div class="row">
        <div class="col-md-3 col-sm-6 margin30">
            <div class="colored-boxed green">
                <i class="pe-7s-magic-wand"></i>
                <h3>Մարզեր</h3>
                <span class="center-line"></span>
                <p>
                    Հայաստանի Հանրապետության տարածքը բաժանվում է տասը մարզի:
                </p>
            </div>
        </div><!--colored boxed col end-->
        <div class="col-md-3 col-sm-6 margin30">
            <div class="colored-boxed dark">
                <i class="pe-7s-phone"></i>
                <h3>Քաղաքներ</h3>
                <span class="center-line"></span>
                <p>
                    Հայաստանի Հանրապետության երեք խոշոր քաղաքներն են՝ Երևան, Գյումրի և Վանաձոր, որոնց ընդհանուր
                    բնակչությունը կազմում է 1,273,200 մարդ։
                    Հայաստանի բնակչության մեծամասնությունը 64,3 % ապրում է քաղաքային բնակավայրերում։
                </p>
            </div>
        </div><!--colored boxed col end-->
        <div class="col-md-3 col-sm-6 margin30">
            <div class="colored-boxed blue">
                <i class="pe-7s-like"></i>
                <h3>Կերակրատեսակներ</h3>
                <span class="center-line"></span>
                <p>
                    Մեր խոհանոցը հարուստ է հետաքրքիր ու սննդարար բազմաթիվ կերակրատեսակներով,
                    որոնք պետք է վերարժևորել, որոշները գուցե և՝ վերհիշել:
                </p>
            </div>
        </div><!--colored boxed col end-->
        <div class="col-md-3 col-sm-6 margin30">
            <div class="colored-boxed red">
                <i class="pe-7s-folder"></i>
                <h3>Հյուրանոցներ</h3>
                <span class="center-line"></span>
                <p>
                    Հյուրընկալ եւ որակավորում ունեցող անձնակազմը, հեքիաթային բնությունը եւ հարմարավետ սենյակները
                    կստեղծեն կատարյալ պայմաններ Ձեր հանգստի համար:
                </p>
            </div>
        </div><!--colored boxed col end-->
    </div>
</div><!--services container-->

<div class="divide80"></div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="center-heading">
                <h2>Հայկական  &nbsp;<strong>հետք </strong></h2>
                <span class="center-line"></span>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="cube-masonry">

        <%--<div id="filters-container" class="cbp-l-filters-alignCenter">--%>
            <%--<div data-filter="*" class="cbp-filter-item-active cbp-filter-item">--%>
                <%--All <div class="cbp-filter-counter"></div>--%>
            <%--</div>--%>
            <%--&lt;%&ndash;<div data-filter=".identity" class="cbp-filter-item">&ndash;%&gt;--%>
                <%--&lt;%&ndash;Identity <div class="cbp-filter-counter"></div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<div data-filter=".web-design" class="cbp-filter-item">&ndash;%&gt;--%>
                <%--&lt;%&ndash;Web Design <div class="cbp-filter-counter"></div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<div data-filter=".graphic" class="cbp-filter-item">&ndash;%&gt;--%>
                <%--&lt;%&ndash;Graphic <div class="cbp-filter-counter"></div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<div data-filter=".graphic, .identity" class="cbp-filter-item">&ndash;%&gt;--%>
                <%--&lt;%&ndash;Web Design & Identity <div class="cbp-filter-counter"></div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--</div>--%>

        <div id="masnory-container" class="cbp">
            <div class="cbp-item identity">
                <a class="cbp-caption cbp-lightbox" data-title="Easy Note<br>by Cosmin Capitanu" href="img/Gyumri.jpg">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/Gyumri.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Շիրակի մարզ</div>
                                <div class="cbp-l-caption-desc">Գյումրի </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item web-design">
                <a class="cbp-caption cbp-lightbox" data-title="The Gang Blue<br>by Cosmin Capitanu"
                   href="img/56.jpg">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/56.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Երևան</div>
                                <div class="cbp-l-caption-desc">Երևան</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item graphic identity">
                <a class="cbp-caption cbp-lightbox" data-title="Tiger<br>by Cosmin Capitanu"
                   href="img/51jpg">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/51.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Արմավիրի մարզ</div>
                                <div class="cbp-l-caption-desc">Էջմիածին</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item graphic">
                <a class="cbp-caption cbp-lightbox" data-title="Flat Roman Typeface Ui<br>by Cosmin Capitanu"
                   href="img/55jpg">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/55.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Սյունիքի մարզ</div>
                                <div class="cbp-l-caption-desc">Տաթև</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <%--<div class="cbp-item identity">--%>
                <%--<a class="cbp-caption cbp-lightbox" data-title="Seemple* Music for iPad<br>by Tiberiu Neamu"--%>
                   <%--href="img/59.jpg">--%>
                    <%--<div class="cbp-caption-defaultWrap">--%>
                        <%--<img src="img/59.jpg" alt="">--%>
                    <%--</div>--%>
                    <%--<div class="cbp-caption-activeWrap">--%>
                        <%--<div class="cbp-l-caption-alignCenter">--%>
                            <%--<div class="cbp-l-caption-body">--%>
                                <%--<div class="cbp-l-caption-title"></div>--%>
                                <%--<div class="cbp-l-caption-desc"></div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</a>--%>
            <%--</div>--%>
            <div class="cbp-item graphic">
                <a class="cbp-caption cbp-lightbox" data-title="Remind~Me More<br>by Tiberiu Neamu" href="img/59.jpg">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/59.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Լոռու մարզ</div>
                                <div class="cbp-l-caption-desc"></div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item web-design">
                <a class="cbp-caption cbp-lightbox" data-title="Workout Buddy<br>by Tiberiu Neamu" href="img/img-4.jpg">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/img-4.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Workout Buddy</div>
                                <div class="cbp-l-caption-desc">by Tiberiu Neamu</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item identity">
                <a class="cbp-caption cbp-lightbox" data-title="Volume Knob<br>by Paul Flavius Nechita" href="http://vimeo.com/156783#">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/img-5.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Volume Knob</div>
                                <div class="cbp-l-caption-desc">by Paul Flavius Nechita</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item identity">
                <a class="cbp-caption cbp-lightbox" data-title="Ski * Buddy<br>by Tiberiu Neamu" href="img/mas-2.jpg">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/mas-1.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Ski * Buddy</div>
                                <div class="cbp-l-caption-desc">by Tiberiu Neamu</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item web-design graphic">
                <a class="cbp-caption cbp-lightbox" data-title="Virtualization Icon<br>by Paul Flavius Nechita"
                   href="https://www.youtube.com/watch?v=dChhzNGHgnA">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/img-6.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Virtualization Icon</div>
                                <div class="cbp-l-caption-desc">by Paul Flavius Nechita</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item web-design graphic">
                <a class="cbp-caption cbp-lightbox" data-title="World Clock Widget<br>by Paul Flavius Nechita"
                   href="img/img-7.jpg">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/img-7.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">World Clock Widget</div>
                                <div class="cbp-l-caption-desc">by Paul Flavius Nechita</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item web-design graphic">
                <a class="cbp-caption cbp-lightbox" data-title="Sickpuppy<br>by Cosmin Capitanu" href="img/img-8.jpg">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/img-8.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Sickpuppy</div>
                                <div class="cbp-l-caption-desc">by Cosmin Capitanu</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div><!--.cube masonry-->
</div>
<div class="divide50"></div>
<div class="text-center">
    <a href="masonry-portfolio-4.html" class="btn btn-theme-dark btn-lg">View All Work</a>
</div>
<div class="divide50"></div>
<%--<div class="wide-img-showcase">--%>

<%--<div class="container">--%>
    <%--<div class="menu-content">--%>
<%--<div class="kotha-logo text-center">--%>
    <%--&lt;%&ndash;<h1><a href="index.html"><img src="assets/images/kotha-logo.png" alt="kothPro"></a></h1>&ndash;%&gt;--%>
<%--</div>--
<%--</header>--%>
<div class="kotha-default-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <article class="single-blog">
                    <div class="post-thumb">
                        <a href="index.html"><img src="assets/images/post-thumb-1.jpg" alt=""></a>
                    </div>
                    <div class="post-content">
                        <div class="entry-header text-center text-uppercase">
                            <a href="index.html" class="post-cat">Travel</a>
                            <h2><a href="single-page.html">Adventure to travel lonely</a></h2>
                        </div>
                        <div class="entry-content">
                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor
                                invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et
                                accusam
                                et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est
                                Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed
                                diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam
                                voluptua...</p>
                        </div>
                        <div class="continue-reading text-center text-uppercase">
                            <a href="single-page.html">Continue Reading</a>
                        </div>
                        <div class="post-meta">
                            <ul class="pull-left list-inline author-meta">
                                <li class="author">By <a href="index.html#">Jennifer </a></li>
                                <li class="date"> On October 13, 2017</li>
                            </ul>
                            <ul class="pull-right list-inline social-share">
                                <li><a href="index.html"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </article>
                <article class="single-blog">
                    <div class="post-thumb">
                        <a href="index.html"><img src="assets/images/post-thumb-2.jpg" alt=""></a>
                    </div>
                    <div class="post-content">
                        <div class="entry-header text-center text-uppercase">
                            <a href="index.html" class="post-cat">Travel</a>
                            <h2><a href="single-page.html">Playing with kite at beach</a></h2>
                        </div>
                        <div class="entry-content">
                            <p>Sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, Lorem
                                ipsum dolor sit
                                amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et
                                dolore magna
                                aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea
                                rebum. Stet clita
                                kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. sed diam
                                voluptua Lorem ipsum
                                dolor sit amet, consetetur sadipscing elitr...</p>
                        </div>
                        <div class="continue-reading text-center text-uppercase">
                            <a href="single-page.html">Continue Reading</a>
                        </div>
                        <div class="post-meta">
                            <ul class="pull-left list-inline author-meta">
                                <li class="author">By <a href="index.html#">Jennifer </a></li>
                                <li class="date"> On September 12, 2017</li>
                            </ul>
                            <ul class="pull-right list-inline social-share">
                                <li><a href="index.html"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </article>
                <article class="single-blog">
                    <div class="post-thumb">
                        <a href="single-page.html"><img src="assets/images/post-thumb-3.jpg" alt=""></a>
                    </div>
                    <div class="post-content">
                        <div class="entry-header text-center text-uppercase">
                            <a href="index.html" class="post-cat">Travel</a>
                            <h2><a href="single-page.html">At vero eos etaccusam
                                et justo duo </a></h2>
                        </div>
                        <div class="entry-content">
                            <p>Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Sed
                                diam nonumy eirmod
                                tempor invidunt ut labore et dolore magna aliquyam erat, Lorem ipsum dolor sit amet,
                                consetetur
                                sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna
                                aliquyam erat, sed
                                diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. sed diam
                                voluptua Lorem ipsum
                                dolor sit sadipscing elitr amet, consetetur ...</p>
                        </div>
                        <div class="continue-reading text-center text-uppercase">
                            <a href="single-page.html">Continue Reading</a>
                        </div>
                        <div class="post-meta">
                            <ul class="pull-left list-inline author-meta">
                                <li class="author">By <a href="index.html#">Jennifer </a></li>
                                <li class="date"> On December 29, 2017</li>
                            </ul>
                            <ul class="pull-right list-inline social-share">
                                <li><a href="index.html"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </article>
                <article class="single-blog">
                    <div class="post-thumb">
                        <a href="single-page.html"><img src="assets/images/post-thumb-4.jpg" alt=""></a>
                    </div>
                    <div class="post-content">
                        <div class="entry-header text-center text-uppercase">
                            <a href="index.html" class="post-cat">Travel</a>
                            <h2><a href="single-page.html">An imaginary for travelers</a></h2>
                        </div>
                        <div class="entry-content">
                            <p>Magna aliquyam erat, Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum
                                dolor sit amet.
                                Sed diam nonumy eirmod tempor invidunt ut labore et dolore. Lorem ipsum dolor sit amet,
                                consetetur
                                sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna
                                aliquyam erat, sed
                                diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. sed diam
                                voluptua Lorem ipsum
                                dolor sit sadipscing elitr amet, consetetur ...</p>
                        </div>
                        <div class="continue-reading text-center text-uppercase">
                            <a href="single-page.html">Continue Reading</a>
                        </div>
                        <div class="post-meta">
                            <ul class="pull-left list-inline author-meta">
                                <li class="author">By <a href="index.html#">Jennifer </a></li>
                                <li class="date"> On June 24, 2017</li>
                            </ul>
                            <ul class="pull-right list-inline social-share">
                                <li><a href="index.html"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </article>
                <article class="single-blog">
                    <div class="post-thumb">
                        <div id="blog-gallery-slider" class="carousel slide" data-ride="carousel">
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item">
                                    <a href="index.html"><img src="assets/images/post-thumb-8.jpg" alt=""></a>
                                </div>
                                <div class="item">
                                    <a href="index.html"><img src="assets/images/post-thumb-9.jpg"  alt=""></a>
                                </div>
                                <div class="item active">
                                    <a href="index.html"> <img src="assets/images/post-thumb-7.jpg" alt=""></a>
                                </div>
                            </div>
                            <!-- Controls -->
                            <a class="left carousel-control" href="index.html#blog-gallery-slider" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a class="right carousel-control" href="index.html#blog-gallery-slider" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="post-content">
                        <div class="entry-header text-center text-uppercase">
                            <a href="index.html" class="post-cat">Slider</a>
                            <h2><a href="single-page.html">Awesome slider post</a></h2>
                        </div>
                        <div class="entry-content">
                            <p>Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Sed
                                diam nonumy eirmod
                                tempor invidunt ut labore et dolore magna aliquyam erat, Lorem ipsum dolor sit amet,
                                consetetur
                                sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna
                                aliquyam erat, sed
                                diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. sed diam
                                voluptua Lorem ipsum
                                dolor sit sadipscing elitr amet, consetetur ...</p>
                        </div>
                        <div class="continue-reading text-center text-uppercase">
                            <a href="single-page.html">Continue Reading</a>
                        </div>
                        <div class="post-meta">
                            <ul class="pull-left list-inline author-meta">
                                <li class="author">By <a href="index.html#">Jennifer </a></li>
                                <li class="date"> On March 17, 2017</li>
                            </ul>
                            <ul class="pull-right list-inline social-share">
                                <li><a href="index.html"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="index.html"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </article>
                <div class="post-pagination  clearfix">
                    <ul class="pagination text-left">
                        <li class="active"><a href="index.html#">1</a></li>
                        <li><a href="index.html#">2</a></li>
                        <li><a href="index.html#">3</a></li>
                        <li><a href="index.html#">4</a></li>
                        <li><a href="index.html#"><i class="fa fa-angle-double-right"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="kotha-sidebar">
                    <aside class="widget about-me-widget  text-center">
                        <div class="about-me-content">
                            <div class="about-me-img">
                                <img src="assets/images/me.jpg" alt="" class="img-me img-circle">
                                <h2 class="text-uppercase">Kotha Smith</h2>
                                <p>Kotha Smith is an enthusiastic and passionate Story Teller. He loves to do different
                                    home-made things
                                    and share to the world.</p>
                            </div>
                        </div>
                        <div class="social-share">
                            <ul class="list-inline">
                                <li><a class="s-facebook" href="index.html"><i class="fa fa-facebook"></i></a></li>
                                <li><a class="s-twitter" href="index.html"><i class="fa fa-twitter"></i></a></li>
                                <li><a class="s-google-plus" href="index.html"><i class="fa fa-google-plus"></i></a></li>
                                <li><a class="s-linkedin" href="index.html"><i class="fa fa-linkedin"></i></a></li>
                                <li><a class="s-instagram" href="index.html"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </aside>
                    <aside class="widget news-letter-widget">
                        <h2 class="widget-title text-uppercase text-center">Get Newsletter</h2>
                        <form action="index.html#">
                            <input type="email" placeholder="Your email address" required>
                            <input type="submit" value="Subscribe Now"
                                   class="text-uppercase text-center btn btn-subscribe">
                        </form>
                    </aside>
                    <aside class="widget widget-popular-post">
                        <h3 class="widget-title text-uppercase text-center">Popular Posts</h3>
                        <ul>
                            <li>
                                <a href="index.html#" class="popular-img"><img src="assets/images/p-1.jpg" alt="">
                                </a>
                                <div class="p-content">
                                    <h4><a href="index.html#" class="text-uppercase">Ice-cream with chalk taste </a></h4>
                                    <span class="p-date">February 15, 2017 </span>
                                </div>
                            </li>
                            <li><a href="index.html#" class="popular-img"><img src="assets/images/p-2.jpg" alt="">
                            </a>
                                <div class="p-content">
                                    <h4><a href="index.html#" class="text-uppercase">The moment of mango bar</a></h4>
                                    <span class="p-date">March 15, 2017 </span>
                                </div>
                            </li>
                            <li>
                                <a href="index.html#" class="popular-img"><img src="assets/images/p-3.jpg" alt="">
                                </a>
                                <div class="p-content">
                                    <h4><a href="index.html#" class="text-uppercase">Homemade herbal black tea</a></h4>
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
                                    <a href="index.html#" class="popular-img"><img src="assets/images/recent-1.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-post-content">
                                    <h2 class="text-uppercase"><a href="index.html#">A Marine Dive From Sky</a></h2>
                                    <p>May 27, 2017</p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="media-left">
                                    <a href="index.html#" class="popular-img"><img src="assets/images/recent-2.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-post-content">
                                    <h2 class="text-uppercase"><a href="index.html#">Small Meeting Room</a></h2>
                                    <p>April 27, 2017</p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="media-left">
                                    <a href="index.html#" class="popular-img"><img src="assets/images/recent-3.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-post-content">
                                    <h2 class="text-uppercase"><a href="index.html#">Selfie from the beach point</a></h2>
                                    <p>April 20, 2017</p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="media-left">
                                    <a href="index.html#" class="popular-img"><img src="assets/images/recent-4.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-post-content">
                                    <h2 class="text-uppercase"><a href="index.html#">Gather Some Artist Pencils.</a></h2>
                                    <p>May 27, 2017</p>
                                </div>
                            </li>
                        </ul>
                    </aside>
                    <aside class="widget insta-widget">
                        <h2 class="widget-title text-uppercase text-center">INSTAGRAM FEED</h2>
                        <div class="instagram-feed">
                            <div class="single-instagram">
                                <a href="index.html">
                                    <img src="assets/images/ft-insta-1.jpg" alt="">
                                </a>
                                <div class="insta-overlay">
                                    <div class="insta-meta">
                                        <ul class="list-inline text-center">
                                            <li><a href="index.html"><i class="fa fa-heart-o"></i></a> 325</li>
                                            <li><a href="index.html"><i class="fa fa-comment-o"></i></a> 20</li>
                                        </ul>
                                    </div>
                                </div>
                                <a href="index.html" class="insta-link"></a>
                            </div>
                            <div class="single-instagram">
                                <a href="index.html">
                                    <img src="assets/images/ft-insta-6.jpg" alt="">
                                </a>
                                <div class="insta-overlay">
                                    <div class="insta-meta">
                                        <ul class="list-inline text-center">
                                            <li><a href="index.html"><i class="fa fa-heart-o"></i></a> 325</li>
                                            <li><a href="index.html"><i class="fa fa-comment-o"></i></a> 20</li>
                                        </ul>
                                    </div>
                                </div>
                                <a href="index.html" class="insta-link"></a>
                            </div>
                            <div class="single-instagram">
                                <a href="index.html">
                                    <img src="assets/images/ft-insta-4.jpg" alt="">
                                </a>
                                <div class="insta-overlay">
                                    <div class="insta-meta">
                                        <ul class="list-inline text-center">
                                            <li><a href="index.html"><i class="fa fa-heart-o"></i></a> 325</li>
                                            <li><a href="index.html"><i class="fa fa-comment-o"></i></a> 20</li>
                                        </ul>
                                    </div>
                                </div>
                                <a href="index.html" class="insta-link"></a>
                            </div>
                            <div class="single-instagram">
                                <a href="index.html">
                                    <img src="assets/images/ft-insta-3.jpg" alt="">
                                </a>
                                <div class="insta-overlay">
                                    <div class="insta-meta">
                                        <ul class="list-inline text-center">
                                            <li><a href="index.html"><i class="fa fa-heart-o"></i></a> 325</li>
                                            <li><a href="index.html"><i class="fa fa-comment-o"></i></a> 20</li>
                                        </ul>
                                    </div>
                                </div>
                                <a href="index.html" class="insta-link"></a>
                            </div>
                            <div class="single-instagram">
                                <a href="index.html">
                                    <img src="assets/images/ft-insta-7.jpg" alt="">
                                </a>
                                <div class="insta-overlay">
                                    <div class="insta-meta">
                                        <ul class="list-inline text-center">
                                            <li><a href="index.html"><i class="fa fa-heart-o"></i></a> 325</li>
                                            <li><a href="index.html"><i class="fa fa-comment-o"></i></a> 20</li>
                                        </ul>
                                    </div>
                                </div>
                                <a href="index.html" class="insta-link"></a>
                            </div>
                            <div class="single-instagram">
                                <a href="index.html">
                                    <img src="assets/images/ft-insta-8.jpg" alt="">
                                </a>
                                <div class="insta-overlay">
                                    <div class="insta-meta">
                                        <ul class="list-inline text-center">
                                            <li><a href="index.html"><i class="fa fa-heart-o"></i></a> 325</li>
                                            <li><a href="index.html"><i class="fa fa-comment-o"></i></a> 20</li>
                                        </ul>
                                    </div>
                                </div>
                                <a href="index.html" class="insta-link"></a>
                            </div>
                        </div>
                    </aside>

                </div>
            </div>
        </div>
    </div>
</div>
<footer>


            <div class="footer-widget testimonial-widget">
                <h2 class="widget-title text-uppercase">Testimonials</h2>
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!--Indicator-->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="item">
                            <div class="single-review">
                                <div class="review-text">
                                    <p>Lorem ipsum dolor sit amet, conssadipscing elitr, sed diam nonumy eirmod
                                        tempvidunt ut labore et dolore magna aliquyam erat,sed diam voluptua. At
                                        vero eos et accusam justo duo dolores et ea rebum.gubergren no sea takimata
                                        magna aliquyam eratma</p>
                                </div>
                                <div class="author-id">
                                    <img src="assets/images/author.jpg" alt="">
                                    <div class="author-text">
                                        <h4>John Doe</h4>
                                        <h4>CEO, Apple Inc.</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
    <%--<div class="row margin-0 wide-img-showcase-row">--%>
        <%--<div class="col-sm-6 no-padding  img-2 ">--%>
            <%--<div class="no-padding-inner ">--%>
                <%--<div>&nbsp;</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-sm-6 col-sm-offset-6 no-padding gray">--%>
            <%--<div class="no-padding-inner gray">--%>
                <%--<h3 class="wow animated fadeInDownfadeInRight">Core features of <span class="colored-text">assan</span></h3>--%>
                <%--<div class="services-box margin30 wow animated fadeInRight">--%>
                    <%--<div class="services-box-icon">--%>
                        <%--<i class="fa fa-tablet"></i>--%>
                    <%--</div><!--services icon-->--%>
                    <%--<div class="services-box-info">--%>
                        <%--<h4>Fully Responsive</h4>--%>

<section class="fun-fact-wrap fun-facts-bg">
    <div class="container">
        <div class="row">
            <div class="col-md-3 margin20 facts-in">
                <h3><span class="counter">3800</span> +</h3>
                <h4>Downloads</h4>
            </div><!--facts in-->
            <div class="col-md-3 margin20 facts-in">
                <h3><span class="counter">8500</span></h3>
                <h4>Happy Customers</h4>
            </div><!--facts in-->
            <div class="col-md-3 margin20 facts-in">
                <h3><span class="counter">250</span> +</h3>
                <h4>Valid layouts </h4>
            </div><!--facts in-->
            <div class="col-md-3 margin20 facts-in">
                <h3><span class="counter">11000</span></h3>
                <h4>Cups of tea</h4>
            </div><!--facts in-->
        </div>
    </div>
</section><!--fun facts-->
<div class="testimonials-v-2 wow animated fadeInUp" data-wow-duration="700ms" data-wow-delay="100ms">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <div class="center-heading">
                    <h2><strong>What</strong> Client’s Say</h2>
                    <p>2600+ Worldwide customers  use Assan template.</p>
                    <span class="center-line"></span>

                </div>
            </div>
        </div><!--center heading end-->

        <div class="row">

            <div class="col-sm-8 col-sm-offset-2">
                <div class="testi-slide">
                    <ul class="slides">
                        <li>
                            <img src="img/customer-1.jpg" alt="">
                            <p>
                                <i class="ion-quote"></i>
                                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.
                            </p>
                            <h4 class="test-author">
                                Rick man - <em>rock inc</em>
                            </h4>
                        </li><!--testi item-->
                        <li>
                            <img src="img/customer-2.jpg" alt="">
                            <p>
                                <i class="ion-quote"></i>
                                Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years </p>
                            <h4 class="test-author">
                                Jellia - <em>Founder of tinka inc</em>
                            </h4>
                        </li><!--testi item-->
                        <li>
                            <img src="img/customer-3.jpg" alt="">
                            <p>
                                <i class="ion-quote"></i>
                                Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor.</p>
                            <h4 class="test-author">
                                Smith - <em>Ceo, company inc.</em>
                            </h4>
                        </li><!--testi item-->
                    </ul>
                </div><!--flex slider testimonials end here-->
            </div>
        </div><!--testi slider row end-->

    </div>
</div><!--testimonials v-2 end-->
<div class="blue-bg">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 margin30">
                <div class="services-box wow animated fadeInDown">
                    <div class="services-box-icon">
                        <i class="pe-7s-diamond"></i>
                    </div><!--services icon-->
                    <div class="services-box-info">
                        <h4>250+ valid layouts</h4>
                        <p>
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.</div>
                </div><!--service box-->
            </div>
            <div class="col-sm-6 ">
                <div class="services-box wow animated fadeInUp">
                    <div class="services-box-icon">
                        <i class="pe-7s-download"></i>
                    </div><!--services icon-->
                    <div class="services-box-info">
                        <h4>Free Support & Updates</h4>
                        <p>
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor. </div>
                </div><!--service box-->
            </div>
        </div>
    </div>
</div><!--full wide 2 columns content end-->
<div class="divide70"></div>
<div class="assan-features">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="center-heading">
                    <h2>Awesome <strong>features</strong></h2>
                    <span class="center-line"></span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-sm-6 margin20">
                <div class="services-box wow animated fadeIn" data-wow-duration="700ms" data-wow-delay="100ms">
                    <div class="services-box-icon">
                        <i class="fa fa-image"></i>
                    </div><!--services icon-->
                    <div class="services-box-info">
                        <h4>Sliders</h4>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing metus. elit. Quisque rutrum pellentesque imperdiet.
                        </p>
                    </div>
                </div><!--services box-->
            </div><!--services col-->
            <div class="col-md-4 col-sm-6 margin20">
                <div class="services-box wow animated fadeIn" data-wow-duration="700ms" data-wow-delay="200ms">
                    <div class="services-box-icon">
                        <i class="fa fa-envelope"></i>
                    </div><!--services icon-->
                    <div class="services-box-info">
                        <h4>Advanced Forms</h4>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing metus. elit. Quisque rutrum pellentesque imperdiet.
                        </p>
                    </div>
                </div><!--services box-->
            </div><!--services col-->
            <div class="col-md-4 col-sm-6 margin20">
                <div class="services-box wow animated fadeIn" data-wow-duration="700ms" data-wow-delay="300ms">
                    <div class="services-box-icon">
                        <i class="fa fa-users"></i>
                    </div><!--services icon-->
                    <div class="services-box-info">
                        <h4>Customer Support</h4>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing metus. elit. Quisque rutrum pellentesque imperdiet.
                        </p>
                    </div>
                </div><!--services box-->
            </div><!--services col-->

            <div class="col-md-4 col-sm-6 margin20">
                <div class="services-box wow animated fadeIn" data-wow-duration="700ms" data-wow-delay="400ms">
                    <div class="services-box-icon">
                        <i class="fa fa-crop"></i>
                    </div><!--services icon-->
                    <div class="services-box-info">
                        <h4>Pixel perfect design</h4>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing metus. elit. Quisque rutrum pellentesque imperdiet.
                        </p>
                    </div>
                </div><!--services box-->
            </div><!--services col-->
            <div class="col-md-4 col-sm-6 margin20">
                <div class="services-box wow animated fadeIn" data-wow-duration="700ms" data-wow-delay="500ms">
                    <div class="services-box-icon">
                        <i class="fa fa-twitter"></i>
                    </div><!--services icon-->
                    <div class="services-box-info">
                        <h4>BOOTSTRAP 3.3.6</h4>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing metus. elit. Quisque rutrum pellentesque imperdiet.
                        </p>
                    </div>
                </div><!--services box-->
            </div><!--services col-->
            <div class="col-md-4 col-sm-6 margin20">
                <div class="services-box wow animated fadeIn" data-wow-duration="700ms" data-wow-delay="600ms">
                    <div class="services-box-icon">
                        <i class="fa fa-flag"></i>
                    </div><!--services icon-->
                    <div class="services-box-info">
                        <h4>Font Awesome icons</h4>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing metus. elit. Quisque rutrum pellentesque imperdiet.

                        </p>

                    </div>
                </div><!--services box-->
            </div><!--services col-->
        </div><!--services row-->
    </div>
</div><!--assan features-->
<div class="divide40"></div>

<div class="our-team-v-2">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="center-heading">
                    <h2>Assan <strong>Team</strong></h2>
                    <span class="center-line"></span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3 text-center">
                <div class="person-v2">
                    <img src="img/team-5.jpg" class="img-responsive" alt="">
                    <div class="person-desc-v2">
                        <h3>Steve Smith</h3>
                        <em>Creative Designer</em>
                        <ul class="list-inline top-social">
                            <li><a href="index.html#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="index.html#"><i class="fa fa-twitter"></i></a></li>
                            <!--                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>-->
                        </ul>
                    </div>
                </div>
            </div><!--person col end-->
            <div class="col-sm-3 text-center">
                <div class="person-v2">
                    <img src="img/team-6.jpg" class="img-responsive" alt="">
                    <div class="person-desc-v2">
                        <h3>Steve Smith</h3>
                        <em>Creative Designer</em>
                        <ul class="list-inline top-social">
                            <li><a href="index.html#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="index.html#"><i class="fa fa-twitter"></i></a></li>
                            <!--                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>-->
                        </ul>
                    </div>
                </div>
            </div><!--person col end-->
            <div class="col-sm-3 text-center">
                <div class="person-v2">
                    <img src="img/team-7.jpg" class="img-responsive" alt="">
                    <div class="person-desc-v2">
                        <h3>Steve Smith</h3>
                        <em>Creative Designer</em>
                        <ul class="list-inline top-social">
                            <li><a href="index.html#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="index.html#"><i class="fa fa-twitter"></i></a></li>
                            <!--                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>-->
                        </ul>
                    </div>
                </div>
            </div><!--person col end-->
            <div class="col-sm-3 text-center">
                <div class="person-v2">
                    <img src="img/team-8.jpg" class="img-responsive" alt="">
                    <div class="person-desc-v2">
                        <h3>Steve Smith</h3>
                        <em>Creative Designer</em>
                        <ul class="list-inline top-social">
                            <li><a href="index.html#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="index.html#"><i class="fa fa-twitter"></i></a></li>
                            <!--                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>-->
                        </ul>
                    </div>
                </div>
            </div><!--person col end-->
        </div>
    </div>
</div><!--our team v-2-->
<div class="divide70"></div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="center-heading">
                <h2><strong>latest</strong> news</h2>
                <span class="center-line"></span>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4 margin30">
            <div>
                <a href="index.html#">
                    <div class="item-img-wrap">
                        <img src="img/img-8.jpg" class="img-responsive" alt="workimg">
                        <div class="item-img-overlay">
                            <span></span>
                        </div>
                    </div>
                </a><!--news link-->
                <div class="news-desc">
                    <span>Sports</span>
                    <h4><a href="index.html#">Lorem ipsum dollor Sit amet</a></h4>
                    <span>By <a href="index.html#">Author</a> on 24 july 2014</span> <span><a href="index.html#">Read more...</a></span>
                </div><!--news desc-->
            </div>
        </div><!--news col-->
        <div class="col-sm-4 margin30">
            <div>
                <a href="index.html#">
                    <div class="item-img-wrap">
                        <img src="img/img-3.jpg" class="img-responsive" alt="workimg">
                        <div class="item-img-overlay">
                            <span></span>
                        </div>
                    </div>
                </a><!--news link-->
                <div class="news-desc">
                    <span>Sports</span>
                    <h4><a href="index.html#">Lorem ipsum dollor Sit amet</a></h4>
                    <span>By <a href="index.html#">Author</a> on 24 july 2014</span> <span><a href="index.html#">Read more...</a></span>
                </div><!--news desc-->
            </div>
        </div><!--news col-->
        <div class="col-sm-4 margin30">
            <div>
                <a href="index.html#">
                    <div class="item-img-wrap">
                        <img src="img/img-6.jpg" class="img-responsive" alt="workimg">
                        <div class="item-img-overlay">
                            <span></span>
                        </div>
                    </div>
                </a><!--news link-->
                <div class="news-desc">
                    <span>Sports</span>
                    <h4><a href="index.html#">Lorem ipsum dollor Sit amet</a></h4>
                    <span>By <a href="index.html#">Author</a> on 24 july 2014</span> <span><a href="index.html#">Read more...</a></span>
                </div><!--news desc-->
            </div>
        </div><!--news col-->
    </div>
</div><!--latest news-->

<div class="divide40"></div>
<div class="intro-text-1 light">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <h4 class="animated slideInDown">Assan is Simply creative Template
                </h4>

                <p>
                    Clean & powerful Easy to use multipurpose business HTML5 template.
                </p>
            </div>
            <div class="col-sm-4">
                <a href="index.html#" class="btn border-theme btn-lg">Purchase now</a>
            </div>
        </div>
    </div>
</div> <!--intro text end-->


                        <footer id="footer">
                            <div class="container">

                                <div class="row">
                                    <div class="col-md-3 col-sm-6 margin30">

                                    </div><!--footer col-->
                                </div>
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
                                        <h3>Հայաստան</h3>
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
