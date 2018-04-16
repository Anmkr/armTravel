<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Food</title>
</head>
<body>
<c:forEach items="${allFoods}" var="food">
    <span>${food.name}</span><br>
    <span>${food.description}</span><br>
    <c:if test="${food.pictures!=null}">
        <img src="<c:url value="/image?fileName=${food.pictures.get(0).picUrl}"/>" width="50px" height="50px" alt="#"/>
    </c:if>
</c:forEach>
<a href="/deleteFood">Delete </a>&nbsp;
<a href="/admin"> Back </a>


</body>
</html>
