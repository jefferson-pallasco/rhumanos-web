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
<h1>Contrataciones</h1>
 
 		<button onclick="window.location.href ='/recursosh-web/contrataciones/findOne?&opcion=1';return false;">
 					Agregar
 					</button>
 	<table>
 		<thead>
 		<tr>
 				<th>idContratacion</th>
 		 		<th>idCiudad</th>
 				 <th>idDepartamento</th>
 		 		<th>Vacante-Fecha</th>
 		 		<th>Vacante-Puesto</th>
 		 		<th>Vacante-Descripcion</th>
 		 		<th>Vacante-Modalidad</th>
 		 		<th>Vacante-Tiempo</th>
 		 		<th>Vacante-Nivel</th>
 		 		<th>Vacante-Numero</th>
 		 		<th>Vacante-Sueldo-Estimado</th>
 		 	
 		 </tr>
 		 </thead>
 		<tbody>
 			<c:forEach var="item" items="${contrataciones}">
 				<tr>
 					<td>${item.idContratacion}</td>
 					<td>${item.idCiudad}</td>
 					<td>${item.idDepartamento}</td>
 					<td>${item.vacanteFecha}</td>
 					<td>${item.vacantePuesto}</td>
 					<td>${item.vacanteDescripcion}</td>
 					<td>${item.vacanteModalidad}</td>
 					<td>${item.vacanteTiempo}</td>
 					<td>${item.vacanteNivel}</td>
 					<td>${item.vacanteNumero}</td>
 					<td>${item.vacanteSueldoEstimado}</td>
 					<td>
 					<button onclick="window.location.href ='/recursosh-web/contrataciones/findOne?idContratacion=${item.idContratacion}&opcion=1';return false;">
 					Actualizar
 					</button>
 					
 					<button onclick="window.location.href ='/recurosh-web/contrataciones/findOne?idContratacion=${item.idContratacion}&opcion=2';return false;">
 					Eliminar
 					
 					</button>
 					
 					</td>
 				</tr>
 			</c:forEach>
 	
 		</tbody>
 
			 </table>
</body>
</html>