<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Departamentos</h1>
	<button onclick="window.location.href ='/recursosh-web/departamentos/findOne?&opcion=1';return false;">
 					Agregar
 					</button>
 	<table>
 		<thead>
 		<tr>
 				<th>idDepartamento</th>
 		 		<th>Departamento</th>
 				 <th>Descripcion</th>
 		 </tr>
 		 </thead>
 		<tbody>
 			<c:forEach var="item" items="${departamentos}">
 				<tr>
 					<td>${item.idDepartamento}</td>
 					<td>${item.departamento}</td>
 					<td>${item.descripcion}</td>
 					<td>
 					<button onclick="window.location.href ='/recursosh-web/departamentos/findOne?idDepartamento=${item.idDepartamento}&opcion=1';return false;">
 					Actualizar
 					</button>
 					
 					<button onclick="window.location.href ='/recurosh-web/departamentos/findOne?idDepartamento=${item.idDepartamento}&opcion=2';return false;">
 					Eliminar
 					
 					</button>
 					
 					</td>
 				</tr>
 			</c:forEach>
 	
 		</tbody>
 
			 </table>
</body>
</html>