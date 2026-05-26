<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 25/05/2026
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Su pedido</title>
</head>
  <body>
  <% String nombre = request.getParameter("nombre");%>
  <% String apellidos = request.getParameter("apellidos");%>
  <% String dni = request.getParameter("dni"); %>
  <% String telefono = request.getParameter("telefono"); %>
  <% String electrodomesticos = request.getParameter("electrodomesticos"); %>
  <% String pago = request.getParameter("pago"); %>
  <% String entrega = request.getParameter("entrega"); %>
  <% String caracteristicas = request.getParameter("caracteristicas"); %>

  <section class="datos">
    <h2>Datos de cliente:</h2>
    Cliente
    <%= nombre + " " + apellidos %>
    <br>
    Con DNI:
    <%= dni %>
    <br>
    Y teléfono:
    <%= telefono %>
    <br>
  </section>
  <section>
    <h2>Datos del pedido:</h2>
    Artículos:
    <%= electrodomesticos %>
    <br>
    Método de pago:
    <%= pago %>
    <br>
    Tipo de entrega:
    <%= entrega %>
    <br>
    Características especiales:
    <%= caracteristicas %>
  </section>
  </body>
</html>
