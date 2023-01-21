<%@page import="java.util.HashMap"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="beans.Imagen"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.IOException" %>
<%@page import="java.util.Date" %>



<% 
	final String nombre ="img";
	Imagen img= new Imagen();
	ArrayList<Imagen> imagenes=img.imagenesDeCarpeta(getServletContext().getRealPath(nombre));
	

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>tema 7 ejercicio 1</title>
	</head>
	<body>
		<div style="border:2px solid black; padding: 2px; margin: 2px;">
	        <form action="visor_imagenes.jsp" method="post">
	            <label for="Imagen">Imagen:</label>
	            <select name="fotos" id="fotos">
	            <%
	            HashMap<String, String>fotosTamanio= new HashMap<String, String>();
	            HashMap<String, String>fotosRutas= new HashMap<String, String>();
	            for (Imagen imagen : imagenes) {
	            	out.println("<option value='"+imagen.getNombre()+"'>"+imagen.getNombre()+"</option>");
// 	            	System.out.println(imagen.getRuta());
	            	fotosTamanio.put(imagen.getNombre(), imagen.tamanioDesglosado(imagen.getTamanio()));
	            	fotosRutas.put(imagen.getNombre(), imagen.getRuta());
	            }
	            %>
	            </select>
	            <label for="Tamanio">Tamaño:</label>
	            <input type="radio" id="300px" name="radio" value="300px" checked>
	            <label for="300px">300px:</label>
	            <input type="radio" id="400px" name="radio" value="400px">
	            <label for="400px">400px:</label>
	            <input type="radio" id="500px" name="radio" value="500px">
	            <label for="500px">500px:</label>
	            <input type="submit" value="Ver Imagen">
	        </form>
    	</div>
    	<%
	        if(request.getParameter("fotos")!=null){
	        	String key=request.getParameter("fotos");
	        	String tamanio=fotosTamanio.get(key);
	        	String ruta=fotosRutas.get(key);
	        	out.println("Tamaño:"+tamanio+"</br></br>");
	        	out.println("<img src='"+ruta+"' alt='"+key+"' width='"+request.getParameter("radio")+"'>");
	        }
	    %>
	</body>
</html>