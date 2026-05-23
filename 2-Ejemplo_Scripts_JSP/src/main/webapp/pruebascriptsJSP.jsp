<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 23/05/2026
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>JSP con Scripts</title>
</head>
<body>
    Contenido dinámico de scripts JSP de ejemplo de los apuntes:
    <UL>
        <li>
            <b>Expresiones JSP:</b>
            <br>
                Fecha actual: <%= new Date() %>
        </li>

        <li>
            <b>Scriplet JSP:</b>
                <% Calendar cal = Calendar.getInstance();
                System.out.println("La fecha actual es: "
                    + cal.get(Calendar.DATE) + " /"
                    + (cal.get(Calendar.MONTH) + 1) + " /" + cal.get(Calendar.YEAR));
                %>
        </li>

        <li>
            <b>Declaración JSP (más expresión)</b>
            <br>
            <%!private int accessCount = 0;%>
            Accesos a la página:
            <%=++accessCount%>
        </li>
    </UL>
</body>
</html>
