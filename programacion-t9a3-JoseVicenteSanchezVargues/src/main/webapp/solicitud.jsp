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
  <% } else { %>






  <jsp:forward page="/respuesta.jsp"></jsp:forward>
  <% } %>
  </body>
</html>
