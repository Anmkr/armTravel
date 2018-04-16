<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>dRegion</title>
</head>
<body>
<c:forEach items="${allRegions}" var="region">
    <img src="<c:url value="/image?fileName=${region.pictures.get(0).picUrl}"/>" style="width: 50px;height: 50px" alt="#"/>
    Name:${region.name}&nbsp; Description:${region.description}&nbsp; <a href="/deleteRByID?regionId=${region.id}">
    <button type="button">Delete</button></a><br>

</c:forEach>
<a href="/admin" >Back</a>
</body>
</html>
