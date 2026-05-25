package controller;

import entities.Alumno;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.ServletException;

@WebServlet("/RecogeDatosServlet")
public class RecogeDatosServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Crear el objeto
        Alumno alumno = new Alumno();
        //Inicializamos los datos del objeto con los valores del formulario JSP
        alumno.setNombre(request.getParameter("nombreP"));
        alumno.setPrimerApellido(request.getParameter("primerApellidoP"));
        alumno.setSegundoApellido(request.getParameter("segundoApellidoP"));
        alumno.setEdad(Integer.parseInt(request.getParameter("edadP")));

        //Pasamos al request el objeto creado
        request.setAttribute("alumnoAtrib", alumno);
        //Instanciamos el request dispatcher para redireccionar al jsp de salida
        RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/mostrarDatos.jsp");
        //Redireccionamos
        rd.forward(request, response);

    }
}
