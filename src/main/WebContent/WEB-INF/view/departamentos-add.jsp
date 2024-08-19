<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1>Departamentos</h1>
 
 
 	<form action="add" method="post">
 	
 	<input type="hidden"  id="idDepartamento" name= "idDepartamento" value="${departamento.idDepartamentos}"/> 
 		
 		Departamento
 	<input type="text"  id="departamento" name= "departamento" value="${departamento.departamento}"/> 
 	<br/>
 		Descripcion
 	<input type="text"  id="descripcion" name= "descripcion" value="${departamento.descripcion}"/> 
 	<br/>
 	
 	<button type="submit">Guardar</button>
 
 		<button onclick="window.location.href ='/recursosh-web/departamentos/findAll';return false;">
 					Cancelar y Regresar
 					</button>
 	</form>
</body>
</html>