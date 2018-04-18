<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hotel</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <style>
        .star{
            width: 20px;
color:yellow;
        }
    </style>
</head>
<body>
<c:forEach items="${allHotels}" var="hotel">
    <span>${hotel.name}</span><br>
    <span>${hotel.description}</span><br>
    <c:if test="${hotel.pictures!=null}">
        <img src="<c:url value="/image?fileName=${hotel.pictures.get(0).picUrl}"/>" style="width: 50px;height: 50px" alt="#"/>
        <c:forEach  var = "i" begin = "1" end = "${hotel.rating}">
            <i class="material-icons star">star_rate</i>
        </c:forEach>


    </c:if>
    </c:forEach>
<a href="/admin" >Back</a>

</body>
</html>




