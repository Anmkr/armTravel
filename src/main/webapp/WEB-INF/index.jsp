<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<div>
    <div style="width: 50%">
        <form method="post" action="/loginPage">
            <input name="j_email" placeholder="Email Address"/><br>
            <input name="j_password" type="password" placeholder="Password"/><br>
            <input type="submit" value="Login"/>
        </form>
    </div>

    <div style="width: 50%">
        Register:<br>
        <spring:form action="/register" method="post" modelAttribute="user" enctype="multipart/form-data">
            <spring:input path="name" type="text" placeholder="Name"/>
            <spring:input path="surname" type="text" placeholder="surname"/>
            <spring:input path="email" type="email" placeholder="Email Address"/>
            <spring:input path="password" placeholder="Password"/>
            <input type="file" name="ngar"><br>
            <input type="submit">
        </spring:form>

    </div>

</div>
</body>
</html>