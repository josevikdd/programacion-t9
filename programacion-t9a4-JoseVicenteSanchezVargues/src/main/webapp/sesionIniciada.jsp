<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 27/05/2026
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entities.Usuario" %>
<html>
<head>
    <title>Sesion iniciada</title>
</head>
  <body>
  <%
  ServletContext scopeApplication = this.getServletContext();

  Usuario usuario = (Usuario) scopeApplication.getAttribute("usuario");

  String nombre = usuario.getNombre();
  %>
      Sesion iniciada correctamente. Bienvenido <%= nombre %> .
  </body>
</html>
