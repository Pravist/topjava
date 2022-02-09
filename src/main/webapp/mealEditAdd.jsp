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
    <h3> Edit Meal</h3>
</c:if>
<c:if test="${empty meal}">
    <h3> Add Meal </h3>
</c:if>
<form method="post" action="meals">
    <table>
        <c:if test="${not empty meal}">
            <tr>

                <input readonly type="hidden" name="id" value="<c:out value="${meal.id}"/> ">
            </tr>
        </c:if>

        <tr>
            <th>DateTime</th>

            <th><input type="datetime-local" name="dateTime" required value="<c:out value="${meal.dateTime}"/>"></th>

        </tr>

        <tr>
            <th>Description</th>
            <th><input type="text" name="description" required value="<c:out value="${meal.description}"/>"></th>
        </tr>


        <tr>
            <th>Calories</th>
            <th><input type="number" name="calories" required value="<c:out value="${meal.calories}" />"></th>
        </tr>

    </table>
    <br>

    <input type="submit" value="Save"/>
    <input type="reset" value="Clear"/>
    <button onclick="document.location='meals'">Отмена</button>
</form>
</body>
</html>


</form>

</body>
</html>
