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

    <style>
        body {
            background-color: beige;
        }

        body section {
            background-color: bisque;
            border-radius: 20px;
            padding: 10px 10px 10px 10px;
            margin-bottom: 10px;
        }

        textarea {
            resize: none;
        }

        .contenedor {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            align-items: center;
        }

        .electrodomestico {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .electrodomestico img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 10px;
        }
    </style>
</head>
  <body>
    <h1>Realice su pedido</h1>
    <form action="/programacion-t9a2-JoseVicenteSanchezVargues/formulario2.jsp" method="post">
        <section class="electrodomesticos">
            <h2>Seleccione los electrodomésticos:</h2>
            <div class="contenedor">
            <div class="electrodomestico">
                <img src="television.jpg"><br>
                <input type="checkbox" name="electrodomesticos" value="television">
            </div>
            <div class="electrodomestico">
                <img src="cadena.jpg"><br>
                <input type="checkbox" name="electrodomesticos" value="cadena">
            </div>
            <div class="electrodomestico">
                <img src="frigorifico.jpg"><br>
                <input type="checkbox" name="electrodomesticos" value="frigorifico">
            </div>
            <div class="electrodomestico">
                <img src="vitroceramica.jpg"><br>
                <input type="checkbox" name="electrodomesticos" value="vitroceramica">
            </div>
            </div>
        </section>
        <section class="pago">
            <h2>Seleccione el método de pago</h2>
                <select name="pago" required>
                    <option value="Visa">Visa</option>
                    <option value="Contado">Contado</option>
                    <option value="Cheque">Cheque</option>
                </select>
        </section>
        <section class="entrega">
            <h2>Seleccione la entrega</h2>
            <input type="radio" name="entrega" value="Recogida en tienda" required>
            Recogida en tienda <br>
            <input type="radio" name="entrega" value="Entrega a domicilio" required>
            Entrega a domicilio <br>
        </section>
        <section class="caracteristicas">
            <h2>Indique las características especiales</h2>
            <textarea rows="6" cols="100" name="caracteristicas"></textarea>
        </section>
        <section class="datos">
            <h2>Datos personales</h2>
            <table border="0">
                <tr>
                    <th> Nombre: </th>
                    <td> <input type="text" name="nombre" required> </td>
                </tr>
                <tr>
                    <th>Apellidos: </th>
                    <td><input type="text" name="apellidos" required> </td>
                </tr>
                <tr>
                    <th>DNI: </th>
                    <td><input type="text" name="dni" required> </td>
                </tr>
                <tr>
                    <th>Teléfono: </th>
                    <td><input type="text" name="telefono" required> </td>
                </tr>
            </table>
        </section>
        <input type="submit" value="Confirmar pedido">
    </form>
  </body>
</html>
