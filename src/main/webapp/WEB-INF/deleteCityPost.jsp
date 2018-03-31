<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ANI
  Date: 30.03.2018
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete cityPost</title>
</head>
<body>
<c:forEach items="${allCityPosts}" var ="cityPost">
    Name:${cityPost.title}&nbsp; Description:${cityPost.description}&nbsp; Picture:${cityPost.picture}
    <a href="/deleteCityPostByID?cityId=${cityPost.id}">Delete</a><br>
</c:forEach>
<a href="/admin" >Back</a>
</body>
</html>

