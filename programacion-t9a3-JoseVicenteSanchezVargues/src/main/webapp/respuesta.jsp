<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 26/05/2026
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="solicitud" scope="request" class="entities.Solicitud" />
<html>
<head>
    <title>Respuesta a su solicitud</title>
</head>
  <body>
  <%
  String prueba = request.getParameter("prueba");
  int cantidad = Integer.parseInt(request.getParameter("cantidad"));
  %>
  <jsp:setProperty name="solicitud" property="prueba" value="<%= prueba %>" />
  <jsp:setProperty name="solicitud" property="cantidad" value="<%= cantidad %>" />
  <%
  String estado = "";
  String motivo = "";
  if (Math.random() < 0.5) {
  estado = "Autorizada.";
  } else {
  estado = "Rechazada.";
  }
  double aleatorio = 0.0;
  if (estado.equals("Rechazada.")) {
  aleatorio = Math.random();
  }
  if (aleatorio < 0.33) {
  motivo = "La lista de espera es demasiado larga.";
  } else if (aleatorio < 0.66) {
  motivo = "No existen especialistas disponibles capaces de realizar tal prueba.";
  } else {
  motivo = "Su seguro médico no cubre la prueba.";
  }
  %>
  <jsp:setProperty name="solicitud" property="estado" value ="<%= estado %>" />

  <% if (!motivo.equals("")) { %>

  <jsp:setProperty name="solicitud" property="motivo" value="<%= motivo %>" />

  <% } %>
    <h2>Respuesta a su solicitud:</h2>
    <b>Nombre o código de la prueba: </b> <jsp:getProperty name="solicitud" property="prueba" />
    <br>
    <b>Cantidad de autorizaciones: </b> <jsp:getProperty name="solicitud" property="cantidad" />
    <br>
    <b>Estado de la solicitud: </b> <jsp:getProperty name="solicitud" property="estado" />
    <br>
    <%
    if (estado.equals("Rechazada.")){
    %>
    <b>Motivo: </b> <jsp:getProperty name="solicitud" property="motivo" />
    <% } %>
  </body>
</html>
