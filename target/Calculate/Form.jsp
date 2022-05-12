
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Калькулятор - сложение целых чисел</title>
</head>
<style>

body{
background-color: #00b33c;
}
</style>
<body>


<h1>Рассчет стоимости отопления</h1>>
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
    
	<a href="${pageContext.request.contextPath}/Login.jsp">Авторизация</a><br><br>
    
    <a href="${pageContext.request.contextPath}/Info.jsp">Информация о команде</a>
    </body>
</html>