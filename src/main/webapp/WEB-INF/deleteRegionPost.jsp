<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete regionPost</title>
</head>
<body>
<c:forEach items="${allRegionPosts}" var="regionPost">
    <img src="<c:url value="/image?fileName=${regionPost.picture}"/>"/>
    Name:${regionPost.title}&nbsp; Description:${regionPost.description}&nbsp;
    <a href="/deleteRegionByID?regionId=${regionPost.id}">Delete</a><br>
</c:forEach>
<a href="/admin">Back</a>
</body>
</html>

