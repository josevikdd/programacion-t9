<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 27/05/2026
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="alquiler" scope="request" class="entities.Alquiler" />
<html>
<head>
    <title>Información transportada a través del JavaBean</title>
</head>
  <body>
    <b>Usted indicó la siguiente información: </b>
    <br>
    <b>Película: </b> <jsp:getProperty name="alquiler" property="nombre" />
    <br>
    <b>Días de alquiler: </b> <jsp:getProperty name="alquiler" property="diasAlquiler" />
    <br>
    <b>Edad cliente:</b> <jsp:getProperty name="alquiler" property="edadCliente" />
    <br>
    <b>Forma de pago:</b> <jsp:getProperty name="alquiler" property="formaPago" />
    <br>
    <b>Extras:</b> <jsp:getProperty name="alquiler" property="especificacionesExtra" />
    <br>
    <b>¡Disfrute de la película!</b>
  </body>
</html>
