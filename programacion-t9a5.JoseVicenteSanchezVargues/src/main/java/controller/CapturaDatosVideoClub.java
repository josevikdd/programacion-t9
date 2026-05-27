package controller;

import entities.Alquiler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.ServletException;

@WebServlet("/CapturaDatosVideoClub")
public class CapturaDatosVideoClub extends HttpServlet {

    Alquiler alquiler;

    @Override
    public void init() throws ServletException {
        alquiler = new Alquiler();
        super.init();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        alquiler.setNombre(nombre);
        int diasAlquiler = Integer.parseInt(request.getParameter("diasAlquiler"));
        alquiler.setDiasAlquiler(diasAlquiler);
        String edadCliente = request.getParameter("edadCliente");
        alquiler.setEdadCliente(edadCliente);
        String formaPago = request.getParameter("formaPago");
        alquiler.setFormaPago(formaPago);
        String especificaciones = request.getParameter("especificacionesExtra");
        alquiler.setEspecificacionesExtra(especificaciones);

        request.setAttribute("alquiler", alquiler);

        RequestDispatcher rd = request.getRequestDispatcher("formulario2.jsp");
        rd.forward(request, response);
    }
}
