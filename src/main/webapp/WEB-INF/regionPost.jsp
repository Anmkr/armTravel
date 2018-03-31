<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ANI
  Date: 26.03.2018
  Time: 0:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        regionPost
    </title>
</head>
<body>
<div>
    <c:forEach items="${rPosts}" var="rPost">
        <img src="/image?fileName=${rPost.picture}" style="width:50px; height: 50px"> <br>
        <span> ${rPost.title}</span>
        <span> ${rPost.description}</span>
        <span> ${rPost.region.name}</span>
        <a href="/rPostSinglePage?rPostId=${rPost.id}">View More</a>
    </c:forEach>
</div>
<a href="/admin" >Back</a>
</body>
</html>
