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
  <section class="datos">
    <h2>Datos de cliente:</h2>
    Cliente
        <% request.getAtribute("nombre") %>
        <% request.getAtribute("apellidos") %>
        <br>
        Con DNI:
        <% request.getAtribute("dni") %>
        <br>
        Y teléfono:
        <% request.getAtribute("telefono") %>
        <br>
    </section>
    <section>
        <h2>Datos del pedido:</h2>
        Artículos:
        <% request.getAtribute("electrodomesticos") %>
        <br>
        Método de pago:
        <% request.getAtribute("pago") %>
        <br>
        Tipo de entrega:
        <% request.getAtribute("entrega") %>
        <br>
        Características especiales:
        <% request.getAtribute("caracteristicas") %>
    </section>

  </body>
</html>
