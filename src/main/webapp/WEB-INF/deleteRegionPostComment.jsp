<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ANI
  Date: 03.04.2018
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Comment</title>
</head>
<body>
<c:forEach items="${allRegionPostComments}" var="regionPostComment">
    Title:${regionPostComment.title}&nbsp; Description:${regionPostComment.description}&nbsp;
    <a href="/deleteRegionPostCommentByID?regionId=${regionPostComment.id}">Delete</a><br>
</c:forEach>
</body>
</html>
