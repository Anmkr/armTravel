<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> delete City</title>
</head>

<body>
<c:forEach items="${allCities}" var="city">
    Name:${city.name}&nbsp; Description:${city.description}&nbsp;<a href="/deleteCityById?cityId=${city.id}">Delete</a>
</c:forEach>
<a href="/admin" >Back</a>
</body>
</html>
