<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %><%--
  Created by IntelliJ IDEA.
  User: Pravist
  Date: 06.02.2022
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
</body>

<body>
<style>
    .normal {
        color: green
    }

    .exceeded {
        color: red
    }
</style>
<a href="meals?action=add">Add Meal</a>
<br>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
        <th colspan=2>Action</th>
    </tr>
    <c:forEach items="${mealsTo}" var="meal">
        <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.MealTo"></jsp:useBean>
        <c:set var="color" value="green"/>
        <c:if test="${meal.excess}">
            <c:set var="color" value="red"/>
        </c:if>
        <tr style="color: ${color}">
            <td><c:out value="${meal.id}" /></td>
            <td><c:out value="${meal.description}"/></td>
            <td>
                <%=TimeUtil.toString(meal.getDateTime()) %>
            </td>
            <td><c:out value="${meal.calories}" /></td>
            <td><a href="meals?action=edit&mealID=<c:out value="${meal.id}"/>">Edit</a></td>
            <td><a href="meals?action=delete&mealID=<c:out value="${meal.id}"/>">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
