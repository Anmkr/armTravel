<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        cityPost
    </title>
</head>
<body>
<div>
    <c:forEach items="${cityPosts}" var="cityPost">
        <img src="/image?fileName=${cityPost.picture}" style="width:50px; height: 50px" width="100px" height="100px"> <br>
        <span> ${cityPost.title}</span>
        <span> ${cityPost.description}</span>
        <span> ${cityPost.city.name}</span>
        <a href="/cityPostSinglePage?cityPostId=${cityPost.id}">View More</a>
    </c:forEach>
    <a href="/userPage" >Back</a>
</div>

</body>
</html>


