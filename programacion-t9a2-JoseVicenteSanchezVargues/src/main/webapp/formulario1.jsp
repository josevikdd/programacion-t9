<%--
  Created by IntelliJ IDEA.
  User: Jose Vicente Sanchez
  Date: 25/05/2026
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Realizar pedido</title>
</head>
  <body>
    <h1>Realice su pedido</h1>
    <form action="/formulario2.jsp" method="post">
        <section class="electrodomesticos">
            <h2>Seleccione los electrodomésticos:</h2>
            <div class="electrodomestico">
                <img src="television"><br>
                <input type="checkbox" name="electrodomesticos" value="television">
            </div>
            <div class="electrodomestico">
                <img src="cadena"><br>
                <input type="checkbox" name="electrodomesticos" value="cadena">
            </div>
            <div class="electrodomestico">
                <img src="frigorifico"><br>
                <input type="checkbox" name="electrodomesticos" value="frigorifico">
            </div>
            <div class="electrodomestico">
                <img src="vitroceramica"><br>
                <input type="checkbox" name="electrodomesticos" value="vitroceramica">
            </div>
        </section>
        <section class="pago">
            <h2>Seleccione el método de pago</h2>
                <select name="pago">
                    <option value="Visa">Visa</option>
                    <option value="Contado">Contado</option>
                    <option value="Cheque">Cheque</option>
                </select>
        </section>
        <section class="entrega">
            <h2>Seleccione la entrega</h2>
            <input type="radio" name="entrega" value="Recogida en tienda">
            Recogida en tienda <br>
            <input type="radio" name="entrega" value="Entrega a domicilio">
            Entrega a domicilio <br>
        </section>
        <section class="caracteristicas">
            <h2>Indique las características especiales</h2>
            <input type="textarea" name="caracteristicas">
        </section>
        <section class="datos">
            <h2>Datos personales</h2>
            <table border="0">
                <tr>
                    <th> Nombre: </th>
                    <td> <input type="text" name="nombre"> </td>
                </tr>
                <tr>
                    <th>Apellidos: </th>
                    <td><input type="text" name="apellidos"> </td>
                </tr>
                <tr>
                    <th>DNI: </th>
                    <td><input type="text" name="dni"> </td>
                </tr>
                <tr>
                    <th>Teléfono: </th>
                    <td><input type="text" name="telefono"> </td>
                </tr>
            </table>
        </section>
        <input type="submit" value="Confirmar pedido">
    </form>
  </body>
</html>
