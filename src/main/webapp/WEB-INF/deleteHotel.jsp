<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Delete hotel</title>
</head>
<body>
<c:forEach items="${allHotels}" var="hotel">
    Name:${hotel.name}&nbsp;${hotel.description}&nbsp;<a href="/deleteHotelById?hotelId=${hotel.id}">Delete</a>
</c:forEach>
<a href="/admin" >Back</a>
</body>
</html>
