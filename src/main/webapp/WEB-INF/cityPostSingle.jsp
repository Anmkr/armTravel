<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ANI
  Date: 28.03.2018
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Comment</title>
</head>
<body>
<img src="/image?fileName=${cityPost.picture}" width="100px" height="100px">
<span> ${cityPost.title}</span>
<span> ${cityPost.description}</span>
<span> ${cityPost.city.name}</span></body>

<spring:form action="/cityPostComment" method="get" modelAttribute="cityPostComment">
    <spring:input path="title" title="title" required="required"/>
    <spring:textarea path="description" title="description" required="required"/>
    <input type="hidden" value="${cityPost.id} " name="cityPostId"/>
    <input type="submit"  value="Add Comment">
</spring:form>
<a href="/admin" >Back</a>
</html>




