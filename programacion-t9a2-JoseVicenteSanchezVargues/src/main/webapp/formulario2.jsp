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
  <% String[] electrodomesticos = request.getParameterValues("electrodomesticos"); %>
  <% String pago = request.getParameter("pago"); %>
  <% String entrega = request.getParameter("entrega"); %>
  <% String caracteristicas = request.getParameter("caracteristicas"); %>

  <% if (electrodomesticos != null && electrodomesticos.length != 0){ %>

  <section class="datos">
    <h2>Datos de cliente:</h2>
    <b>Cliente</b>
    <%= nombre + " " + apellidos %>
    <br>
    <b>Con DNI: </b>
    <%= dni %>
    <br>
    <b>Y teléfono: </b>
    <%= telefono %>
    <br>
  </section>
  <section>
    <h2>Datos del pedido:</h2>
    <b>Artículos:</b>
    <% for (String electrodomestico : electrodomesticos) { %>
    <br>
    <%= electrodomestico %>
    <% } %>
    <br>
    <b>Método de pago:</b>
    <%= pago %>
    <br>
    <b>Tipo de entrega:</b>
    <%= entrega %>
    <br>
    <b>Características especiales:</b>
    <%= caracteristicas %>
    </section>
    <% } else { %>
    <b>Su pedido está vacío. Vuelva a la página anterior y seleccione los productos.</b>
    <% } %>
  </body>
</html>
