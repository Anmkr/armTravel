<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ANI
  Date: 03.04.2018
  Time: 23:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Results</title>
</head>
<body>
<div>
    Search Results For: ${name}
    <div>
        <h1>City</h1>
        <c:if test="${citiesByNameContains!=null}" >
            <c:forEach items="${citiesByNameContains}" var="city">
                <img src="<c:url value="/image?fileName=${city.pictures.get(0).picUrl}"/>">
                <p>${city.name}</p>
                <p>${city.description}</p>
                <p>${city.region.name}</p>
            </c:forEach>
        </c:if>
    </div>
    <div>
        <h1>Hotel</h1>
        <c:if test="${hotelsByNameContains!=null}" >
            <c:forEach items="${hotelsByNameContains}" var="hotel">
                <img src="<c:url value="/image?fileName=${hotel.pictures.get(0).picUrl}"/>">
                <p>Hotel Name:${hotel.name}</p>
                <p>Hotel description:${hotel.description}</p>
                <p>Hotel City:${hotel.city.name}</p>
            </c:forEach>
        </c:if>
    </div>
    <div>
        <h1>Region</h1>
        <c:if test="${regionByNameContains!=null}" >
        <c:forEach items="${regionByNameContains}" var="region">
            <img src="<c:url value="/image?fileName=${region.pictures.get(0).picUrl}"/>">
            <p>${region.name}</p>
            <p>${region.description}</p>
        </c:forEach>
    </c:if></div>
    <p>${message}</p>
</div>
</body>
</html>
