<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 24/05/2026
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="usuario" scope="request" class="src.Usuario" />
<html>
<head>
    <title>Información transportada a través del JavaBean</title>
</head>
  <body>
    <b>Usted indicó la siguiente información: </b>
    <br>
    <b>Usuario: </b> <jsp:getProperty name="usuario" property="nombre" />
    <br>
    <b>Email: </b> <jsp:getProperty name="usuario" property="email" />
  </body>
</html>
