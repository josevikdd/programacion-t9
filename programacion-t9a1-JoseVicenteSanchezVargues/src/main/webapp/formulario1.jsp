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

<% if (
        ((request.getParameter("nombre")==null) &&
                (request.getParameter("diasAlquiler")==null) &&
                (request.getParameter("edadCliente")==null) &&
                (request.getParameter("formaPago")==null) &&
                (request.getParameter("especificacionesExtra")==null))
        || ((request.getParameter("nombre").equals("")) &&
                (request.getParameter("diasAlquiler").equals("")) &&
                (request.getParameter("edadCliente").equals("")) &&
                (request.getParameter("formaPago").equals("")) &&
                (request.getParameter("especificacionesExtra").equals("")))
) { %>

<div class="titulo">
    VIDEOCLUB ON-LINE
</div>

<form action="formulario1.jsp" method="post">

    <table class="inputGrande" border="0">
        <tr>
            <td class="titulos">Nombre Película</td>
            <td><input type="text" name="nombre" size="25"></td>
        </tr>
        <tr>
            <td class="titulos">Número Días Alquiler</td>
            <td><input type="text" name="diasAlquiler" size="5"></td>
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
                <input type="radio" name="edadCliente" value="-7">
                Menor de 7 años
                <br>
                <input type="radio" name="edadCliente" value="-14">
                Menor de 14 años
                <br>
                <input type="radio" name="edadCliente" value="-18">
                Menor de 18 años
                <br>
                <input type="radio" name="edadCliente" value="+18">
                Mayor de 18 años
            </td>
            <td class ="select" valign="top">
                <select name="formaPago">
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

<%  } else { %>
<% String nombre, diasAlquiler, edadCliente, formaPago, especificacionesExtra ;
    nombre = request.getParameter("nombre");
    diasAlquiler = request.getParameter("diasAlquiler");
    edadCliente = request.getParameter("edadCliente");
    formaPago = request.getParameter("formaPago");
    especificacionesExtra = request.getParameter("especificacionesExtra");
%>
<jsp:setProperty name="alquiler" property="nombre" value="<%= nombre %>" />
<jsp:setProperty name="alquiler" property="diasAlquiler" value="<%= diasAlquiler %>" />
<jsp:setProperty name="alquiler" property="edadCliente" value="<%= edadCliente %>" />
<jsp:setProperty name="alquiler" property="formaPago" value="<%= formaPago %>" />
<jsp:setProperty name="alquiler" property="especificacionesExtra" value="<%= especificacionesExtra %>" />
<jsp:forward page="/formulario2.jsp" ></jsp:forward>


<% } %>

</body>
</html>
