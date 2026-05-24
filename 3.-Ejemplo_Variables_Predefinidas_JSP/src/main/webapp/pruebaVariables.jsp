<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 24/05/2026
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    La IP de tu ordenador es: <%= request.getRemoteHost() %>
    <br>
    El nombre del servidor es: <%= request.getServerName() %>
    <br>
    El puerto del servidor es: <%= request.getServerPort() %>
    <br>
    La IP del servidor es: <%= request.getRemoteAddr() %>
    <br>
    El protocolo que estás usando es: <%= request.getProtocol() %>

</body>
</html>
