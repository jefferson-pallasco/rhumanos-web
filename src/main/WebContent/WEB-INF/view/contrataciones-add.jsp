<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contrataciones</title>
</head>
<body>
<h1> Agregar contrataciones</h1>

 	<form action="add" method="post">
 	
 	<input type="hidden"  id="idContratacion" name= "idContratacion" value="${contratacion.idContrataciones}"/> 
 	
 	idCiudad
 	<input type="number"  id="idCiudad" name= "idCiudad" value="${contratacion.idCiudad}"/> 
 	<br/>
 		idDepartamento
 	<input type="number"  id="idDepartamento" name= "idDepartamento" value="${contratacion.idDepartamento}"/> 
 	<br/>
 		vacanteFecha
 	<input type="date"  id="vacanteFecha" name= "vacanteFecha" value="${contratacion.vacanteFecha}"/>
 	<br/>
 		vacantePuesto 
 	<input type="text"  id="vacantePuesto" name= "vacantePuesto" value="${contratacion.vacantePuesto}"/> 
 	<br/>
 		vacanteDescripcion
 	<input type="text"  id="vacanteDescripcion" name= "vacanteDescripcion" value="${contratacion.vacanteDescripcion}"/> 
 	<br/>
 	
 		vacanteModalidad
 	<input type="text"  id="vacanteModalidad" name= "vacanteModalidad" value="${contratacion.vacanteModalidad}"/> 
 	<br/>
 	
 		vacanteTiempo
 	<input type="text"  id="vacanteTiempo" name= "vacanteTiempo" value="${contratacion.vacanteTiempo}"/> 
 	<br/>
 	
 		vacanteNivel
 	<input type="text"  id="vacanteNivel" name= "vacanteNivel" value="${contratacion.vacanteNivel}"/> 
 	<br/>
 	
 		vacanteNumero
 	<input type="number"  id="vacanteNumero" name= "vacanteNumero" value="${contratacion.vacanteNumero}"/> 
 	<br/>
 	
 		vacanteSueldoEstimado
 	<input type="number"  id="vacanteSueldoEstimado" name= "vacanteSueldoEstimado" value="${contratacion.vacanteSueldoEstimado}"/> 
 	<br/>
 	
 	<button type="submit">Guardar</button>
 
 		<button onclick="window.location.href ='/recursosh-web/contrataciones/findAll';return false;">
 					Cancelar y Regresar
 					</button>
 	</form>

</body>
</html>