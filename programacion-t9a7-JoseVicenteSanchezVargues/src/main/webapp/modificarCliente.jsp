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
    Cliente cliente = request.getParameter("cliente");
    Long id = cliente.getId();
    String nombre = cliente.getNombre();
    String apellido1 = cliente.getApellido1();
    String apellido2 = cliente.getApellido2();
    String ciudad = cliente.getCiudad();
    int categoria = cliente.getCategoria();
    %>
    <h2>Modificar cliente</h2>
    <b>Cliente: </b> <%= id %> - <%= nombre %> <%= apellido1 %> <%= apellido2 %> - <%= ciudad %> - <%= categoria %>
        <form>
            <b>Nombre: </b> <input type="text" name="nombre" /> <br>
            <b>Primer apellido: </b> <input type="text" name="apellido1" /> <br>
            <b>Segundo apellido: </b> <input type="text" name="apellido2" /> <br>
            <b>Ciudad: </b> <input type="text" name="ciudad" /> <br>
            <b>Categoría: </b> <input type="number" name="categoria" /> <br>
        </form>
  </body>
</html>
