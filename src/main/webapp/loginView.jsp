<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Калькулятор - рассчет стоимости отопления</title>
<style>
#navbar ul{
display: none;
background-color: #f90;
position: absolute;
top: 100%;
}
#navbar li:hover ul { display: block; }
#navbar, #navbar ul{
margin: 0;
padding: 0;
list-style-type: none;
}
#navbar {
height: 30px;
background-color: #666;
padding-left: 25px;
min-width: 470px;
}
#navbar li {
float: left;
position: relative;
height: 100%;
}
#navbar li a {
display: block;
padding: 6px;
width: 100px;
color: #fff;
text-decoration: none;
text-align: center;
}
#navbar ul li { float: none; }
#navbar li:hover { background-color: #f90; }
#navbar ul li:hover { background-color: #666; }
</style>
</head>

<body>

<ul id="navbar">
<li><a href="${pageContext.request.contextPath}">Главная</a></li>
<li><a href="${pageContext.request.contextPath}/loginView.jsp">Авторизация</a></li>
<li><a href="${pageContext.request.contextPath}/Info.jsp">О нас</a></li>
</ul>
<h2>Вход в систему</h2>
<form method="POST" action="${pageContext.request.contextPath}/login">
<input type="hidden" name="redirectId" value="${param.redirectId}" />
<table border="0">
<tr>
<td>Логин</td>
<td><input type="text" name="userName" value= "${user.userName}" /> </td>
</tr>
<tr>
<td>Пароль</td>
<td><input type="password" name="password" value= "${user.password}" /> </td>
</tr>

<tr>
<td colspan ="2">
<input type="submit" value= "Войти" />
<a href="${pageContext.request.contextPath}/">Вернуться</a>
</td>
</tr>
</table>
</form>
</body>
</html>