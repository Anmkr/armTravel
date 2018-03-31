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
<img src="/image?fileName=${rPost.picture}" width="100px" height="100px">
<span> ${rPost.title}</span>
<span> ${rPost.description}</span>
<span> ${rPost.region.name}</span></body>

<spring:form action="/rPostCoomment" method="get" modelAttribute="regionPostComment">
    <spring:input path="title" title="title" required="required"/>
    <spring:textarea path="description" title="description" required="required"/>
    <input type="hidden" value="${rPost.id} " name="rPostId"/>
    <input type="submit"  value="Add Comment">
</spring:form>
<a href="/admin" >Back</a>
</html>
