<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 25/05/2026
  Time: 15:42
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

        .margen {
            margin-left: 175px;
        }

        .titulos{
            background-color:#999900;
            color:black;
            font-weight:bold;
            padding:4px;
        }

        textarea{
            resize:none;
        }

        .boton{
            text-align:center;
            column-gap: 10px;

        }
    </style>
</head>

<body>

<div class="titulo">
    VIDEOCLUB ON-LINE
</div>

<form action="procesarAlquiler.jsp" method="post">

    <table border="0" cellpadding="5">

        <tr>
            <td class="titulos">Nombre Película</td>
            <td>
                <input type="text" name="nombre" size="25">
            </td>
        </tr>

        <tr>
            <td class="titulos">Número Días Alquiler</td>
            <td>
                <input type="text" name="diasAlquiler" size="5">
            </td>
        </tr>

    </table>

    <br>

    <table class="margen" border="0">

        <tr>
            <td class="titulos">Edad Cliente</td>
            <td class="titulos">Forma de Pago</td>
        </tr>

        <tr>
            <td>
                <input type="radio" name="edad" value="menor7">
                Menor de 7 años
                <br>

                <input type="radio" name="edad" value="menor14">
                Menor de 14 años
                <br>

                <input type="radio" name="edad" value="menor18">
                Menor de 18 años
                <br>

                <input type="radio" name="edad" value="mayor18">
                Mayor de 18 años
            </td>

            <td valign="top">
                <select name="formaPago">
                    <option value="visa">VISA</option>
                    <option value="mastercard">MasterCard</option>
                    <option value="paypal">PayPal</option>
                    <option value="efectivo">Efectivo</option>
                </select>
            </td>
        </tr>

    </table>

    <br>

    <section class="margen" border="0" cellpadding="5">
        <b class="titulos">Especificaciones extras</b> <br> <br>
        <textarea name="especificacionesExtra" rows="8" cols="200"></textarea>
    </section>

    <div class="boton">
        <input type="submit" value="Enviar Pedido">

        <input type="reset" value="Borrar Formulario">
    </div>

</form>

</body>
</html>
