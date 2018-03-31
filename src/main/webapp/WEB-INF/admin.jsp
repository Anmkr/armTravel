<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    <title> AdminPage </title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME ICONS  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

</head>
<body>

<div class="navbar navbar-inverse set-radius-zero">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">

                <%--<img src="assets/img/logo.png" />--%>
            </a>

        </div>

        <div class="left-div">
            <div class="user-settings-wrapper">
                <ul class="nav">

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                            <span class="glyphicon glyphicon-user" style="font-size: 25px;"></span>
                        </a>
                        <div class="dropdown-menu dropdown-settings">
                            <div class="media">
                                <a class="media-left" href="#">
                                    <img src="assets/img/logo.jpg" alt="" class="img-rounded" />
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading"></h4>
                                    <h5> T </h5>

                                </div>
                            </div>
                            <hr />
                            <%--<h5><strong>Personal Bio : </strong></h5>--%>
                            <%--Anim pariatur cliche reprehen derit.--%>
                            <%--<hr />--%>
                            <a href="#" class="btn btn-info btn-sm">Full Profile</a>&nbsp; <a href="/loginPage" class="btn btn-danger btn-sm">Logout</a>

                        </div>
                    </li>


                </ul>
            </div>
        </div>
    </div>
</div>
<!-- LOGO HEADER END-->
<section class="menu-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="navbar-collapse collapse ">
                    <ul id="menu-top" class="nav navbar-nav navbar-right">
                        <li><a href="index.html">Dashboard</a></li>
                        <li>  <a href="/delete">Delete User</a></li>
                        <li><a href="table.html">Data Tables</a></li>
                        <li><a class="menu-top-active"  href="/admin">Forms</a></li>
                        <li><a href="/loginPage"> Login Page</a></li>
                        <li><a href="/home">Home</a></li>

                    </ul>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- MENU SECTION END-->
<div class="content-wrapper">
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
                      <spring:form action="/addRegion" modelAttribute="region" enctype="multipart/form-data" method="post">
                            <div class="form-group">
                                <label for="exampleInputName">Name</label>
                                <spring:input path="name" class="form-control" id="exampleInputName" placeholder="Name" />
                            </div>
                            <div class="form-group">
                                <label for="exampleInputDescription">Description</label>
                                <spring:textarea path="description" class="form-control" id="exampleInputDescription" placeholder="Description" />


                            </div>
                            <div class="form-group">
                        <input type="file" name="picture" accept="image/*" multiple /><br><br>
                        <input type="submit" name="Add"/><br>
                        </spring:form>
                                <a href="/deleteRegion">Delete Region</a>&nbsp;&nbsp;
                                <a href="deleteRegionPost">Delete RegionPost</a>
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
                            <spring:form action="/addCity" modelAttribute="city" enctype="multipart/form-data" method="post">
                            <div class="form-group">
                                <label for="exampleInputName">Name</label>
                                <spring:input path="name" class="form-control" id="exampleInputName" placeholder="Name" />
                            </div>
                            <div class="form-group">
                                <label for="exampleInputDescription">Description</label>
                                <spring:textarea path="description" class="form-control" id="exampleInputDescription" placeholder="Description" />
                            </div>
                            <div class="form-group">
                                <input type="file" name="picture" accept="image/*" multiple /><br><br>
                                <input type="submit" name="Add"/><br>
                                </spring:form>
                                <a href="/deleteCity">Delete City</a>&nbsp;&nbsp;
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
                                <spring:form action="/addHotel" modelAttribute="hotel" enctype="multipart/form-data" method="post">
                                <div class="form-group">
                                    <label for="exampleInputName">Name</label>
                                    <spring:input path="name" class="form-control" id="exampleInputName" placeholder="Name" />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputDescription">Description</label>
                                    <spring:textarea path="description" class="form-control" id="exampleInputDescription" placeholder="Description" />
                                </div>
                                <div class="form-group">
                                    <input type="file" name="picture" accept="image/*" multiple /><br><br>
                                        <spring:select path="city" items="${allCitys}" itemLabel="name"/><br>
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
                                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email" />
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Password</label>
                                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" />
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputFile">File input</label>
                                            <input type="file" id="exampleInputFile" />

                                        </div>

                                        <button type="submit" class="btn btn-default">Submit</button>

                                        <textarea class="form-control" rows="3" placeholder="Text Area"></textarea>
                                        <hr />

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
    </div>
</div>
</body>

</html>
