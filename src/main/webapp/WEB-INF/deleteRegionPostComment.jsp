<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
