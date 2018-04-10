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

        <div id="masnory-container" class="cbp">
            <div class="cbp-item identity">
                <a class="cbp-caption cbp-lightbox" data-title="" href="img/Gyumri.jpg">
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
                <a class="cbp-caption cbp-lightbox" data-title=""
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
                <a class="cbp-caption cbp-lightbox" data-title=""
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
                <a class="cbp-caption cbp-lightbox" data-title=""
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

            <div class="cbp-item graphic">
                <a class="cbp-caption cbp-lightbox" data-title="" href="img/30.jpg">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/30.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Լոռու մարզ</div>
                                <div class="cbp-l-caption-desc">Ախթալա</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item web-design">
                <a class="cbp-caption cbp-lightbox" data-title=""href="img/61jpg">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/61.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Վայոց ձորի մարզ</div>
                                <div class="cbp-l-caption-desc">Նորավանք</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item identity">
                <a class="cbp-caption cbp-lightbox" data-title="" href="http://vimeo.com/156783#">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/20.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Տավուշի մարզ</div>
                                <div class="cbp-l-caption-desc">Գոշավանք</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item identity">
                <a class="cbp-caption cbp-lightbox" data-title="" href="img/19">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/19.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Արարատի մարզ</div>
                                <div class="cbp-l-caption-desc">Խոր Վիրապ վանք</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item web-design graphic">
                <a class="cbp-caption cbp-lightbox" data-title=""
                   href="https://www.youtube.com/watch?v=RJRxRbngq2g">
                    <div class="cbp-caption-defaultWrap">
                        <img src="img/10.jpg" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <div class="cbp-l-caption-title">Կոտայքի մարզ</div>
                                <div class="cbp-l-caption-desc">Գեղարդի վանք</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="cbp-item web-design graphic">

                    </div>
                <%--</a>--%>
            </div>
        </div>
    </div><!--.cube masonry-->
<%--</div>--%>
<div class="divide50"></div>
<div class="text-center">
    <a href="masonry-portfolio-4.html" class="btn btn-theme-dark btn-lg">View All Work</a>
</div>
<div class="divide50"></div>
<div class="wide-img-showcase">

    <div class="row margin-0 wide-img-showcase-row">
        <div class="col-sm-6 no-padding  img-2 ">
            <div class="no-padding-inner ">
                <div>&nbsp;</div>
            </div>
        </div>
        <div class="col-sm-6 col-sm-offset-6 no-padding gray">
            <div class="no-padding-inner gray">
                <h3 class="wow animated fadeInDownfadeInRight">Core features of <span class="colored-text">assan</span></h3>
                <div class="services-box margin30 wow animated fadeInRight">
                    <div class="services-box-icon">
                        <i class="fa fa-tablet"></i>
                    </div><!--services icon-->
                    <div class="services-box-info">
                        <h4>Fully Responsive</h4>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing metus. elit. Quisque rutrum pellentesque imperdiet.
                        </p>
                    </div>
                </div><!--service box-->
                <div class="services-box margin30 wow animated fadeInRight">
                    <div class="services-box-icon">
                        <i class="fa fa-twitter"></i>
                    </div><!--services icon-->
                    <div class="services-box-info">
                        <h4>bootstrap 3</h4>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing metus. elit. Quisque rutrum pellentesque imperdiet.
                        </p>
                    </div>
                </div><!--service box-->

                <div class="services-box margin30 wow animated fadeInRight">
                    <div class="services-box-icon">
                        <i class="fa fa-code"></i>
                    </div><!--services icon-->
                    <div class="services-box-info">
                        <h4>250+ valid HTML5 Pages and much more...</h4>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing metus. elit. Quisque rutrum pellentesque imperdiet.
                        </p>
                    </div>
                    <div class="divide30"></div>
                    <p><a href="index.html#" class="btn btn-theme-dark btn-lg">Purchase Now</a></p>
                </div><!--service box-->

            </div>
        </div>
    </div>
</div><!--wide image showcase end-->
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

