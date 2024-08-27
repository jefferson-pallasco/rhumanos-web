 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>LISTAR CONTRATACIONES</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
</head>
<body>
<nav></nav>
<section class="px-5 px-5">
    <h1>LISTA DE CONTRATACIONES</h1>
    <div class="container" style="text-align: center;">
        <button class="btn btn-primary" onclick="window.location.href ='/rhumanos-web/contrataciones/findOne?&opcion=1';return false;">
            Agregar
        </button>
    </div>
    <div class="table-responsive">
   <table id="tabla1"
	name="tabla1"
	data-height="600"
	data-search="true"
	data-pagination="true"
	data-toogle="tabla1"
	data-tollbar=".toolbar"
	class="table table-striped table-sm">
        <thead>
            <tr>
                <th data-field="ID CONTRATACIONES" data-sortable="true" >idContratacion</th>
                <th data-field="ID CIUDAD" data-sortable="true" >idCiudad</th>
                <th data-field="ID DEPARTAMENTOS" data-sortable="true" >idDepartamento</th>
                <th data-field="VACANTES-FECHA" data-sortable="true" >Vacante-Fecha</th>
                <th data-field="VACANTE-PUESTOS" data-sortable="true" >Vacante-Puesto</th>
                <th data-field="VACANTE-DESCRIPCIÓN" data-sortable="true" >Vacante-Descripcion</th>
                <th data-field="VACANTE-MODALIDAD" data-sortable="true" >Vacante-Modalidad</th>
                <th data-field="VACANTE-TIEMPO" data-sortable="true" >Vacante-Tiempo</th>
                <th data-field="VACANTE-NIVEL" data-sortable="true" >Vacante-Nivel</th>
                <th data-field="VACANTE-NUMERO" data-sortable="true" >Vacante-Numero</th>
                <th data-field="VACANTE-SUELDO-ESTIMADO" data-sortable="true" >Vacante-Sueldo-Estimado</th>
                <th> BOTONES PRINCIPALES</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${keyContrataciones}">
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
                        <button  class="btn btn-success" onclick="window.location.href ='/rhumanos-web/contrataciones/findOne?idContratacion=${item.idContratacion}&opcion=1';return false;">
                            Actualizar
                        </button>
                        <button  class="btn btn-danger" onclick="window.location.href ='/rhumanos-web/contrataciones/findOne?idContratacion=${item.idContratacion}&opcion=2';return false;">
                            Eliminar
                        </button>
                    </td>
                </tr>
            </c:forEach>
            	</tbody>
 	</table>
 	</div>
 </section>
<footer>
</footer>

 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
 	
 	<script type="text/javascript">
 	
 	var $tabla1 =$('#tabla1')
 	
 	$(function(){
 		$tabla1.bootstrapTable({
 			sortReset: true
 		})
 	})
 	
 	</script>
 </body>
 
</html>
       