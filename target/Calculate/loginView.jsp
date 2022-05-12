<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Авторизация</title>
</head>
<style>

body{
background-color: #00b33c;
}

</style>
<body>

<div class="form">

        <h1>Вход в систему</h1><br>
        <form method="post" action="">

            <input type="text" name="userName" value= "${user.userName}"><br>
            <input type="password" name="password"  value= "${user.password}"><br><br>
            <input class="button" type="submit" value="Войти">
            <a href="${pageContext.request.contextPath}/">Cancel</a>

        </form>
</div>

</body>
</html>