<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <!-- <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>   --> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1>Eliminar Contrataciones</h1>
 
 	<form action="del" method="get">
 	
 	<input type="hidden"  id="idContratacion" name= "idContratacion" value="${contratacion.idContratacion}"/> 
	<strong>�Desea Eliminar el Dato?</strong>
	<br>
	<button type="submit">Aceptar</button>
 
 	</form>
 
 		<button onclick="window.location.href ='/rhumanos-web/contrataciones/findAll';return false;">
 					Cancelar y Regresar
 					</button>
 					
</body>
</html>