<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Region</title>
</head>
<body>
<c:forEach items="${allRegions}" var="region">
    <span>${region.name}</span><br>
    <span>${region.description}</span><br>
    <c:if test="${region.pictures!=null}">
        <img src="<c:url value="/image?fileName=${region.pictures.get(0).picUrl}"/>" width="50px" height="50px" alt="#"/>
    </c:if>
</c:forEach>
<a href="/deleteRegion">Delete Region</a>&nbsp;
<a href="/admin"> Back </a>


</body>
</html>




