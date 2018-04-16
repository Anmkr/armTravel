<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>food Page</title>
</head>
    <body>
    <c:if test="${food.pictures!=null}">
    <img src="<c:url value="/image?fileName=${food.pictures.get(0).picUrl}"/>" width="1000px"height="500px"/>
    </c:if>
    <span>${food.name}</span>
    <span>${food.description}</span>

</body>
</html>


