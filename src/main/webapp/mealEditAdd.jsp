<%--
  Created by IntelliJ IDEA.
  User: Pravist
  Date: 09.02.2022
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Edit meal</title>
</head>

<body>
<c:if test="${not empty meal}">
    Edit Meal
</c:if>
<c:if test="${empty meal}">
    Add Meal
</c:if>
<form method="post" action="meals">
    <table>
        <c:if test="${not empty meal}">
            <tr>
                <h3>ID</h3>
                <input readonly type="text" name="id" value="<c:out value="${meal.id}"/> ">
            </tr>
        </c:if>

        <tr>
            <h3>DateTime</h3>

            <input type="datetime-local" name="dateTime" required value="<c:out value="${meal.dateTime}"/>">
            </th>
        </tr>

        <tr>
            <h3>Description</h3>
            <input type="text" name="description" required value="<c:out value="${meal.description}"/>">
        </tr>


        <tr>
            <h3>Calories</h3>
            <input type="number" name="calories" required value="<c:out value="${meal.calories}" />">
        </tr>

    </table>
    <br>

    <input type="submit" value="Save"/>
</form>

</body>
</html>
