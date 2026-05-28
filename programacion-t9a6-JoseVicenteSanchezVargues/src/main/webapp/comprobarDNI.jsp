<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 28/05/2026
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Comprobar DNI</title>
</head>
  <body>
    <h2>Introduce DNI a buscar</h2>
    <form action="BuscadorAlumno" method="post">
        <input type="text" name="dni">
        <input type="submit" value="Enviar">
    </form>
  </body>
</html>
