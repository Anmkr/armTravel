<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> delete City</title>
</head>

<body>
<c:forEach items="${allCities}" var="city">
    <img src="<c:url value="/image?fileName=${city.pictures.get(0).picUrl}"/>" style="width: 50px;height: 50px" alt="#"/>
    Name:${city.name}&nbsp; Description:${city.description}&nbsp;<a href="/deleteCityById?cityId=${city.id}">
    <button type="button">Delete</button></a><br>
</c:forEach>
<a href="/admin" >Back</a>
</body>
</html>





