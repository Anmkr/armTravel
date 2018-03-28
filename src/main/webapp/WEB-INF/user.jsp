<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> User Page</title>
</head>
<body>
<div>

    <div style="width: 30%;float:left;">
        <span>Add RegionPost</span>
        <spring:form action="/addRegionPost" method="post" modelAttribute="regionPost"  enctype="multipart/form-data">
            <label for="title">Title</label>
            <spring:input path="title" id="title"/><br>
            <label for="description">Description</label>
            <spring:input path="description" id="description"/><br>
            <spring:select path="region" items="${allRegions}" itemLabel="name"/><br>
            <input type="file" name="regionPostImage"><br>
            <input type="submit" name="Add"/><br>
        </spring:form>
    </div>

    <div style="width: 30%;float:left;">
        <span>Add CityPost</span>
        <spring:form action="/addCityPost" method="post" modelAttribute="cityPost"  enctype="multipart/form-data">
            <label for="title">Title</label>
            <spring:input path="title" id="title"/><br>
            <label for="description">Description</label>
            <spring:input path="description" id="description"/><br>
            <spring:select path="city" items="${allCities}" itemLabel="name"/><br>
            <input type="file" name="cityPostImage"><br>
            <input type="submit" name="Add"/><br>
        </spring:form>
    </div>
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
    <a href="/regionPostPage">All regions</a>
</div>
</body>
</html>
