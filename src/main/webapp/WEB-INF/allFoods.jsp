<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> All Foods</title>
</head>
<body>
<c:forEach items="${allFoods}" var="food">
    <img src="<c:url value="/image?fileName=${food.pictures.get(0).picUrl}"/>">


    <a href="#">${food.name}</a>
    <p><a href="<c:url value="//fSinglePage?foodId=${food.id}"/>"> Read More...</a></p>
    <c:if test="${currentUser.type.name().equals('ADMIN')}">
                     <span>
                         <a href="<c:url value="/fSinglePage?foodId=${food.id}"/>">${food.name}</a> Delete</span>


    </c:if>
</c:forEach>

</body>
</html>