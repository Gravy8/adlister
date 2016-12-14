<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>
<form method="post" action="/login">
    <div>
        <label for="username">Username</label>
        <input id="username" name="username" type="text" placeholder="Enter your user">
    </div>
    <div>
        <label for="password">Password</label>
        <input id="password" name="password" type="password" placeholder="Enter your password">
    </div>
    <div>
        <input type="submit">
    </div>
</form>
<jsp:include page="partials/footer.jsp"/>
</body>
</html>
