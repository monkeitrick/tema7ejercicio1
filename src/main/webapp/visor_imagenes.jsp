<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.IOException" %>
<%@page import="java.util.Date" %>



<% 
	final String nombre ="img";

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>tema 7 ejercicio 1</title>
	</head>
	<body>
		<div style="border:2px solid black; padding: 2px; margin: 2px;">
	        <form action="" method="post">
	            <label for="Imagen">Imagen:</label>
	            <select name="fotos" id="fotos">
	            
	            </select>
	            <label for="Tamanio">Tamaño:</label>
	            <input type="radio" id="300px" name="radio" value="300px">
	            <label for="300px">300px:</label>
	            <input type="radio" id="400px" name="radio" value="400px">
	            <label for="400px">400px:</label>
	            <input type="radio" id="500px" name="radio" value="500px">
	            <label for="500px">500px:</label>
	            <input type="submit" value="Ver Imagen">
	        </form>
    	</div>
	</body>
</html>