<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 24/05/2026
  Time: 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
  <body>
    <% if(Math.random() < 0.5) { %>
    <jsp:forward page="/consejos/consejos1.html"></jsp:forward>
    <% } else { %>
    <jsp:forward page="/consejos/consejos2.html"></jsp:forward>
    <% } %>
  </body>
</html>
