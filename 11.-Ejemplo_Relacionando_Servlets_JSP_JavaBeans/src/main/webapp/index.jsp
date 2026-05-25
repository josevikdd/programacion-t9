<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Entrada de datos</title>
</head>
<body>
    <h1>Entrada de datos</h1>
    <form action="RecogeDatosServlet" method="POST">
        <h2>Datos de alumnos</h2>
        Nombre: <input type="text" name="nombreP" /> <br>
        Primer apellido: <input type="text" name="primerApellidoP" /> <br>
        Segundo apellido: <input type="text" name="segundoApellidoP" /> <br>
        Edad: <input type="text" name="edadP" /><br>
        <input type="submit" value="Enviar"/>
    </form>
</body>
</html>
