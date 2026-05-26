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
    <h2>Respuesta a su solicitud:</h2>
    <b>Nombre o código de la prueba: </b> <jsp:getProperty name="solicitud" property="prueba" />
    <br>
    <b>Cantidad de autorizaciones: </b> <jsp:getProperty name="solicitud" property="cantidad" />
    <br>
    <b>Estado de la solicitud: </b> <jsp:getProperty name="solicitud" property="estado" />
    <br>
    <%
    String estado = request.getProperty("estado");
    if (!estado.equals("")){
    %>
    <b>Motivo: </b> <jsp:getProperty name="solicitud" property="motivo" />
    <% } %>
  </body>
</html>
