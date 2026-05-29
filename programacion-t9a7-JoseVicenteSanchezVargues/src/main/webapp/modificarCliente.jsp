<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 29/05/2026
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Cliente" %>
<html>
<head>
    <title>Modificar cliente</title>
</head>
  <body>
    <%
    Cliente cliente = (Cliente) request.getAttribute("cliente");
    Long id = cliente.getId();
    String nombre = cliente.getNombre();
    String apellido1 = cliente.getApellido1();
    String apellido2 = cliente.getApellido2();
    String ciudad = cliente.getCiudad();
    int categoria = cliente.getCategoria();
    %>
    <h2>Modificar cliente</h2>
    <b>Cliente: </b> <%= id %> - <%= nombre %> <%= apellido1 %> <%= apellido2 %> - <%= ciudad %> - <%= categoria %>
        <form action="controladorClientes?opcion=3&id=<%= String.valueOf(id) %>" method="post">
            <b>Nombre: </b> <input type="text" name="nuevoNombre" required /> <br>
            <b>Primer apellido: </b> <input type="text" name="nuevoApellido1" required /> <br>
            <b>Segundo apellido: </b> <input type="text" name="nuevoApellido2" required /> <br>
            <b>Ciudad: </b> <input type="text" name="nuevaCiudad" required /> <br>
            <b>Categoría: </b> <input type="number" name="nuevaCategoria" required /> <br>
            <input type="submit" value="Modificar cliente" />
        </form>
  </body>
</html>
