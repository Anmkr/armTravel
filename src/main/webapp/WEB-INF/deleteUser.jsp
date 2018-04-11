<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
<div>
    <c:forEach  items="${users}" var="user">
        Name:${user.name}&nbsp; Email:${user.email} <a href="/deleteUser?userId=${user.id}">Delete</a><br>
    </c:forEach>
    <a href="/admin" >Back</a>
</div>
</body>
</html>
