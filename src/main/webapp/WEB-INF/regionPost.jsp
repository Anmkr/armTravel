<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <c:if test="${rPost.picture!=null}">

            <img src="<c:url value="/image?fileName=${rPost.picture}" />" width="50px" height="50px"/>
        </c:if>
        <%--<img src="/image?fileName=${rPost.picture}" style="width:50px; height: 50px"> <br>--%>
        <span> ${rPost.title}</span>
        <span> ${rPost.description}</span>
        <span> ${rPost.region.name}</span>
        <a href="/rPostSinglePage?rPostId=${rPost.id}">View More</a>
    </c:forEach>
</div>
<a href="/userPage" >Back</a>
</body>
</html>
