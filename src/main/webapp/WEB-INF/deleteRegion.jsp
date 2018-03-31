<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${allRegions}" var="region">
    <img src="<c:url value="/image?fileName=${region.pictures.get(0).picUrl}"/>">
    Name:${region.name}&nbsp; Description:${region.description} <a href="/deleteRByID?regionId=${region.id}">Delete</a><br>
</c:forEach>
<a href="/admin" >Back</a>
</body>
</html>