<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> delete Hotel</title>
</head>
<body>
<c:forEach items="${allHotels}" var="hotel">
   <img src="<c:url value="/image?fileName=${hotel.pictures.get(0).picUrl}"/>" style="width: 50px;height: 50px" alt="#"/>
    Name:${hotel.name}&nbsp;${hotel.description}&nbsp;<a href="/deleteHotelById?hotelId=${hotel.id}">
    <button type="button">Delete</button></a><br>
</c:forEach>
<a href="/admin" >Back</a>
</body>
</html>



