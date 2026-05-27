<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 26/05/2026
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
  <body>
  <%
  ServletContext scopeApplication = this.getServletContext();

  if (scopeApplication.getAttribute("usuario")==null){

  %>
    <h2>Formulario de login de usuarios</h2>
    <form action="LoginServlet" method="post">
    Nombre de usuario*: <input type="text" name="nombre"> <br>
    Clave de acceso*: <input type="password" name="contrasena"> <br>
    Recordar datos de acceso: <input type="checkbox" name="recordar"> <br>
    Los campos marcados con un asterisco deben rellenarse de forma obligatoria <br>
    <input type="submit" value="Enviar consulta">
    <input type="reset" value="Restablecer">
    </form>
    <% } else { %>
    <jsp:forward page="/sesionIniciada.jsp" />
    <%
    }
    %>
  </body>
</html>
