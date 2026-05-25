<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 25/05/2026
  Time: 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="alumnoAtrib" scope="request" class="entities.Alumno" />
<html>
<head>
    <title>Muestra de datos</title>
</head>
  <body>
    <h1>El alumno introducido es:</h1>
    Nombre: <jsp:getProperty name="alumnoAtrib" property="nombre" /><br>
    Primer apellido: <jsp:getProperty name="alumnoAtrib" property="primerApellido" /><br>
    Segundo apellido: <jsp:getProperty name="alumnoAtrib" property="segundoApellido" /><br>
    Edad: <jsp:getProperty name="alumnoAtrib" property="edad" /><br>
  </body>
</html>
