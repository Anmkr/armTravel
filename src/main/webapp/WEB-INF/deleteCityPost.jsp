<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete cityPost</title>
</head>
<body>
<c:forEach items="${allCityPosts}" var ="cityPost">
    <img src="<c:url value="/image?fileName=${cityPost.picture}" />"/>
    Name:${cityPost.title}&nbsp; Description:${cityPost.description}&nbsp;
    <a href="/deleteCityPostByID?cityId=${cityPost.id}">Delete</a><br>
</c:forEach>
<a href="/admin" >Back</a>
</body>
</html>




