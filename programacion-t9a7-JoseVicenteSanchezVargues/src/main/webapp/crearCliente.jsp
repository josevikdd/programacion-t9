<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 29/05/2026
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Cliente" %>
<html>
<head>
    <title>Crear cliente</title>
</head>
<body>
<h2>Modificar cliente</h2>
<form action="controladorClientes?opcion=5" method="post">
    <b>Nombre: </b> <input type="text" name="nombreCreado" required /> <br>
    <b>Primer apellido: </b> <input type="text" name="apellido1Creado" required /> <br>
    <b>Segundo apellido: </b> <input type="text" name="apellido2Creado" required /> <br>
    <b>Ciudad: </b> <input type="text" name="ciudadCreada" required /> <br>
    <b>Categoría: </b> <input type="number" name="categoriaCreada" required /> <br>
    <input type="submit" value="Crear cliente" />
</form>
<a href="controladorClientes?opcion=1"><button>Volver al listado</button></a>
</body>
</html>
