<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>LISTAR CONTRATACIONES</title>
    <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
    <style>
        table {
            background-color: #18a1e1 ; /* Color de fondo de la tabla */
            border: 10px solid #000000;
             /* Bordes de 100px */
      
        }
    </style>
</head>
<body>
    <h1>Listar Contrataciones</h1>
    <div class="container" style="text-align: center;">
        <button onclick="window.location.href ='/rhumanos-web/contrataciones/findOne?&opcion=1';return false;">
            Agregar
        </button>
    </div>
    <table class="table table-striped table-bordered">
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
                        <button onclick="window.location.href ='/rhumanos-web/contrataciones/findOne?idContratacion=${item.idContratacion}&opcion=1';return false;">
                            Actualizar
                        </button>
                        <button onclick="window.location.href ='/rhumanos-web/contrataciones/findOne?idContratacion=${item.idContratacion}&opcion=2';return false;">
                            Eliminar
                        </button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
</body>
</html>
