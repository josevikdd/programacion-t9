<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 28/05/2026
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="alumno" scope="request" class="DAO.modelo.Alumno" />
<html>
<head>
    <title>Mostrar Datos del Alumno</title>
</head>
  <body>
    <h2>Los datos del alumno son:</h2>
    <br>
    <b>Nombre: </b> <jsp:getProperty name="alumno" property="nombre" /> <br>
    <b>Primer apellido: </b> <jsp:getProperty name="alumno" property="primerApellido" /> <br>
    <b>Segundo apellido: </b> <jsp:getProperty name="alumno" property="segundoApellido" /> <br>
    <b>DNI: </b> <jsp:getProperty name="alumno" property="dni" />
  </body>
</html>
