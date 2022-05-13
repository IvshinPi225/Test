
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
<li><a href="${pageContext.request.contextPath}/Admin_Form.jsp">Главная</a></li>
<li><a href="${pageContext.request.contextPath}/loginView.jsp">Авторизация</a></li>
<li><a href="${pageContext.request.contextPath}/Info.jsp">О нас</a></li>
</ul>

<h2>Рассчет стоимости отопления</h1>
<form action="${pageContext.request.contextPath}/Calc" method="post">
<label for="first">V тепловой энергии:</label>
<input type="text" name="first" id="first" value="${first}"><br>

<label for="second">Общая площадь квартиры:</label>
<input type="text" name="second" id="second" value="${second}"><br>

<label for="second">Общая площадь всех помещений:</label>
<input type="text" name="third" id="third" value="${third}"><br>

<label for="second">Тариф на тепловую энергию:</label>
<input type="text" name="fourth" id="fourh" value="${fourth}"><br>

<label for="second">Площадь общего имущества:</label>
<input type="text" name="fifth" id="fifth" value="${fifth}"><br>

<label for="second">Потребление тепловой энергии:</label>
<input type="text" name="sixth" id="sixth" value="${sixth}"><br>

<label for="second">Площадь неотопляемых помещений:</label>
<input type="text" name="seventh" id="seventh" value="${seventh}"><br>

<input type="submit" name="sign" value="Calculate">
</form>

</body>
</html>