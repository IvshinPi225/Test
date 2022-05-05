/Calc
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Калькулятор - сложение целых чисел</title>
</head>
<body>

<h1>Калькулятор - сложение целых чисел</h1>>
    <form action="${pageContext.request.contextPath}/Calc" method="post">
        <label for="first">Первое слагаемое:</label>
        <input type="text" name="first" id="first" value="${first}">
        <label for="second">Второе слагаемое:</label>
        <input type="text" name="second" id="second" value="${second}">
        <label for="second">3 слагаемое:</label>
        <input type="text" name="third" id="third" value="${third}">
        <label for="second">4 слагаемое:</label>
        <input type="text" name="fourth" id="fourh" value="${fourth}">
        <label for="second">5 слагаемое:</label>
        <input type="text" name="fifth" id="fifth" value="${fifth}">
        <label for="second">6 слагаемое:</label>
        <input type="text" name="sixth" id="sixth" value="${sixth}">
        <label for="second">7 слагаемое:</label>
		<input type="text" name="seventh" id="seventh" value="${seventh}"> 
        <input type="submit" name="sign" value="Calculate">
    </form>
    </body>
</html>