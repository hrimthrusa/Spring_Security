<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>The information for all employees.</h2>

    <security:authorize access="hasRole('HR')">
    <input type="button" value="Salary"
           onclick="window.location.href = 'hr_info'">
    Only for HR stuff.
    </security:authorize>
<br><br>

    <security:authorize access="hasRole('MANAGER')">
    <input type="button" value="Performances"
           onclick="window.location.href = 'manager_info'">
    Only for Managers stuff.
    </security:authorize>
</body>
</html>
