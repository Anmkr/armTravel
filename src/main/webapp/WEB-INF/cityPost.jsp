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
<div>
    <c:forEach items="${allCityPosts}" var="cityPost">
        <c:if test="${cityPost.picture!=null}">
            <img src="<c:url value="/image?fileName=${cityPost.picture}" />" width="50px" height="50px"/>
        </c:if>
        <span>${cityPost.title}</span><br>
        <span>${cityPost.description}</span><br>
        <span> ${cityPost.city.name}</span>
        <a href="/cPSinglePage?cityPostId=${cityPost.id}">View More</a>
    </c:forEach>

<a href="/userPage" >Back</a>
</div>
</div>
</body>
</html>
