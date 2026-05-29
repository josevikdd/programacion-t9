<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 29/05/2026
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Cliente"%>
<html>
<head>
    <title>Listar Clientes</title>
</head>
  <body>
    <h2>Listado de clientes</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Primer apellido</th>
            <th>Segundo apellido</th>
            <th>Ciudad</th>
            <th>Categoría</th>
            <th>Modificar</th>
            <th>Eliminar</th>
        </tr>
    <%
        ArrayList<Cliente> clientes = (ArrayList<Cliente>) request.getAttribute("clientes");

        Long id;
        String nombre, apellido1, apellido2, ciudad;
        int categoria;

        for (Cliente cliente : clientes){
            id = cliente.getId();
            nombre = cliente.getNombre();
            apellido1 = cliente.getApellido1();
            apellido2 = cliente.getApellido2();
            ciudad = cliente.getCiudad();
            categoria =cliente.getCategoria();
    %>
        <tr>
            <td><%= id %></td>
            <td><%= nombre %></td>
            <td><%= apellido1 %></td>
            <td><%= apellido2 %></td>
            <td><%= ciudad %></td>
            <td><%= categoria %></td>
            <td><a href="controladorClientes?opcion=2&id=<%= String.valueOf(id) %>"><button>Modificar</button></a></td>
            <td><a href="controladorClientes?opcion=4&id=<%= String.valueOf(id) %>"><button>Eliminar</button></a></td>
        </tr>
    <% } %>
    </table>
    <a href="menuPrincipal.jsp" ><button>Volver al menú principal</button></a>
  </body>
</html>
