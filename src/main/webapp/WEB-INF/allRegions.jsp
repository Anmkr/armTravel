<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ANI
  Date: 03.04.2018
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Regions</title>
</head>
<body>
<c:forEach items="${allregions}" var="region">
    <img src="<c:url value="/image?fileName=${region.pictures.get(0).picUrl}"/> " style="width: 30px;height: 30px;">
    <span>${region.name}</span>
    <span>${region.description}</span>
    <c:if test="${currentUser.type.name().equals('ADMIN')}">
    <a href="<c:url value="/deleteR?regionId=${region.id}"/>">Delete</a>
    </c:if>
</c:forEach>
</body>
</html>
