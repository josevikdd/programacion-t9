<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 26/05/2026
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="solicitud" scope="request" class="entities.Solicitud" />
<html>
<head>
    <title>Solicitud de autorización</title>
</head>
  <body>
  <% if (request.getParameter("prueba")==null || request.getParameter("cantidad")==null) { %>
    <h2>Solicitud de autorización</h2>
    <form action="solicitud.jsp" method="post">
        <b>Nombre o código de prueba: </b>
        <input type="text" name="prueba"> <br>
        <b>Cantidad de autorizaciones: </b>
        <input type="number" name="cantidad"> <br>
        <input type="submit" value="Enviar solicitud">
    </form>
  <% } else {
      String prueba = request.getParameter("prueba");
      int cantidad = request.getParameter("cantidad");
      String estado = "";
      String motivo = "";
      if (Math.Random() < 0.5) {
          estado = "Autorizada.";
      } else {
          estado = "Rechazada.";
      }
      if (estado.equals("Rechazada.")) {
          int aleatorio = Math.Random();
          if (aleatorio < 0.33) {
              motivo = "La lista de espera es demasiado larga."
          } else if (aletorio < 0.66) {
              motivo = "No existen especialistas disponibles capaces de realizar tal prueba."
          } else {
              motivo = "Su seguro médico no cubre la prueba."
          }
      } %>

  <jsp:setProperty name="solicitud" property="prueba" value="<%= prueba %>" />
  <jsp:setProperty name="solicitud" property="cantidad" value="<%= cantidad %>" />
  <jsp:setProperty name="solicitud" property="estado" value ="<%= estado %>" />

  <% if (!motivo.equals("")) { %>

  <jsp:setProperty name="solicitud" property="motivo" value="<%= motivo %>" />

  <% } %>

  <% } %>
  </body>
</html>
