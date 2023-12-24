<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/templates/includes/loadstatic.jsp" %>
    <title>Login Page</title>
    <style>
        /* Custom styles can be added here */
        body {
            background-color: #f8f9fa;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="login-box">
        <h2 class="text-center">Login</h2>
        <form action="/login" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </form>
        <c:if test="${not empty error}">
            <div class="alert alert-danger mt-3" role="alert">${error}</div>
        </c:if>
    </div>
</div>
</body>
</html>
