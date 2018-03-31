<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hotel</title>
</head>
<body>
<c:forEach items="${allHotels}" var="hotel">
    <span>${hotel.name}</span><br>
    <span>${hotel.description}</span><br>
    <c:if test="${hotel.pictures!=null}">
        <img src="<c:url value="/image?fileName=${hotel.pictures.get(0).picUrl}"/>" style="width: 50px;height: 50px" alt="#"/>
    </c:if>
</c:forEach>
<a href="/admin" >Back</a>
</body>
</html>


