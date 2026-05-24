<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 24/05/2026
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formulario con JSP</title>
</head>
  <body bgcolor="#ffffcc">
    <%-- Mostrar formulario en pantalla si no tenemos la información --%>
    <% if (
            ((request.getParameter("nombre")==null) &&
                    (request.getParameter("email")==null)) ||
            ((request.getParameter("nombre").equals("")) &&
                    (request.getParameter("email").equals("")))
    ) { %>
        Complete este formulario:
        <br>
        <form method="POST" action="pruebaFormulariosJSP.jsp">
            Su nombre: <input type="text" name="nombre" size="30">
            <br>
            Su email: <input type="text" name="email" size="30">
            <br>
            <input type="submit" value="Enviar">
        </form>

    <%-- Procesar el envio y mostrar información enviada en pantalla --%>

    <%  } else { %>
        <% String nombre, email;
        nombre = request.getParameter("nombre");
        email = request.getParameter("email");
        %>
        <b>Usted indicó la siguiente información:</b>
        <br>
        <b>Nombre: </b> <%= nombre %>
        <br>
        <b>Email: </b> <%= email %>
        <% } %>
  </body>
</html>
