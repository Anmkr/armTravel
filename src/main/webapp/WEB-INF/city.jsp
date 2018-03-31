<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>City</title>
</head>
<body>
<c:forEach items="${allCities}" var="city">
    <span>${city.name}</span><br>
    <span>${city.description}</span><br>
    <c:if test="${city.pictures!=null}">
        <img src="<c:url value="/image?fileName=${city.pictures.get(0).picUrl}"/>" style="width: 50px;height: 50px" alt="#"/>
    </c:if>
</c:forEach>
<a href="/admin" >Back</a>



</body>
</html>
















