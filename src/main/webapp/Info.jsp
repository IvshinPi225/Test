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

<h2>Информация о команде</h2>
<h3>ФИО и номера зачетных книжек участников команды</h3>
<p>Ившин В.A. : 20130830</p>
<p>Галяшкин А.С. : 20130505</p>
<p>Быков В.О. : 20130821</p>
<p>Белоглазов Н.А. : 20131012</p>

</body>
</html>