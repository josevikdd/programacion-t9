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
    <title>VIDEOCLUB ON-LINE</title>

    <style>
        body{
            background-color:#ffffcc;
        }

        .titulo{
            background-color:#d4b000;
            color:black;
            font-weight:bold;
            padding:8px;
            width: 100%;
        }

        table{
            margin-top:10px;
        }

        .inputGrande input {
            height: 2em;
            width: 100%;
        }

        .margen {
            margin-left: 175px;
        }

        .titulos{
            background-color: #999900;
            color: black;
            font-weight: bold;
            padding: 4px;
        }

        .titulolargo{
            background-color: #999900;
            color:black;
            font-weight:bold;
            padding: 4px 242px 4px 4px;
        }

        .tituloslargos{
            background-color: #999900;
            color:black;
            font-weight:bold;
            padding: 4px 100px 4px 4px;
        }

        textarea{
            resize:none;
        }

        .select {
            align-content: center;
        }

        .boton{
            margin-top: 10px;
            text-align:center;
        }

        .boton input {
            margin-left: 30px;
        }
    </style>
</head>
<body>
<div class="titulo">
    VIDEOCLUB ON-LINE
</div>
<form action="CapturaDatosVideoClub" method="post">

    <table class="inputGrande" border="0">
        <tr>
            <td class="titulos">Nombre Película</td>
            <td><input type="text" name="nombre" size="25" required></td>
        </tr>
        <tr>
            <td class="titulos">Número Días Alquiler</td>
            <td><input type="number" name="diasAlquiler" size="5" required></td>
        </tr>
    </table>
    <br>

    <section class="margen">
    <table border="0">
        <tr>
            <td class="tituloslargos">Edad Cliente</td>
            <td class="tituloslargos">Forma de Pago</td>
        </tr>
        <tr>
            <td>
                <input type="radio" name="edadCliente" value="-7" required>
                Menor de 7 años
                <br>
                <input type="radio" name="edadCliente" value="-14" required>
                Menor de 14 años
                <br>
                <input type="radio" name="edadCliente" value="-18" required>
                Menor de 18 años
                <br>
                <input type="radio" name="edadCliente" value="+18" required>
                Mayor de 18 años
            </td>
            <td class ="select" valign="top">
                <select name="formaPago" required>
                    <option value="contado">Contado</option>
                    <option value="tarjeta">Tarjeta</option>
                </select>
            </td>
        </tr>
    </table>
    <br>
    <section>
        <b class="titulolargo">Especificaciones extras</b> <br> <br>
        <textarea name="especificacionesExtra" rows="8" cols="200"></textarea>
    </section>
    </section>

    <div class="boton">
        <input type="submit" value="Enviar Pedido">

        <input type="reset" value="Borrar Formulario">
    </div>
</form>
</body>
</html>
