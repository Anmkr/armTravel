<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>RegionPost</title>
</head>
<body>
<div>
<c:forEach items="${allRegionPosts}" var="regionPost">
   <c:if test="${regionPost.picture!=null}">
    <img src="<c:url value="/image?fileName=${regionPost.picture}" />" width="50px" height="50px"/>
    </c:if>
    <span>${regionPost.title}</span><br>
    <span>${regionPost.description}</span><br>
    <span> ${regionPost.region.name}</span>
    <a href="/rPSinglePage?rPostId=${regionPost.id}">View More</a>
</c:forEach>
</div>
<a href="/userPage" >Back</a>

</body>
</html>


