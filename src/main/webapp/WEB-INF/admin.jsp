<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 16.03.2018
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Page</title>
</head>
<body>
<div>
    <div style="width: 30%;float:left;">
        <span>Add Region</span>
        <spring:form action="/addRegion" modelAttribute="region" enctype="multipart/form-data" method="post">
            <label for="name">Name</label>
            <spring:input path="name" id="name"/><br>
            <label for="description">Description</label>
            <spring:input path="description" id="description"/>
            <input type="file" name="picture" accept="image/*" multiple /><br><br>
            <input type="submit" name="Add"/><br>
        </spring:form>
    </div>
    <%--<div style="width: 30%;float:left;">--%>
        <%--<span>Add City</span>--%>
        <%--<spring:form action="/addCity" modelAttribute="city" enctype="multipart/form-data" method="post">--%>
            <%--<label for="name">Name</label>--%>
            <%--<spring:input path="name" id="name"/><br>--%>
            <%--<label for="description">Description</label>--%>
            <%--<spring:input path="description" id="description"/><br>--%>
            <%--<input type="file" name="pucture" accept="image/*" multiple /><br><br>--%>

            <%--<input type="submit" name="Add"/>--%>
        <%--</spring:form>--%>
    <%--</div>--%>
    <%--<div style="width: 40%; float:left;">--%>
        <%--<span>Add Hotel</span>--%>
        <%--<spring:form action="/addHotel" modelAttribute="hotel" enctype="multipart/form-data" method="post">--%>
            <%--<label for="name">Name</label>--%>
            <%--<spring:input path="name" id="name"/><br>--%>
            <%--<label for="description">Description</label>--%>
            <%--<spring:input path="description" id="description"/><br>--%>
            <%--<input type="file" name="hotelImage" accept="image/*"/><br>--%>
            <%--<spring:select path="city" items="${allCitys}" itemLabel="name"/><br>--%>
            <%--<input type="number" name="hotelRating" maxlength="5"/><br>--%>
            <%--<input type="submit" name="Add"/>--%>
        <%--</spring:form>--%>
    <%--</div>--%>
</div>
</body>
</html>
