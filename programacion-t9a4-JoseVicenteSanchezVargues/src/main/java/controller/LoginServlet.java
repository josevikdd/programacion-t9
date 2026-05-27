package controller;

import entities.Usuario;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.ServletException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    Usuario usuario = new Usuario();

    @Override
    public void init() throws ServletException {
        usuario.setNombre("jose");
        usuario.setContrasena("12345678Z");
        getServletContext().setAttribute("usuario", usuario);
        super.init();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        processRequest(req, resp);
    }

    protected void processRequest(HttpServletRequest req, HttpServletResponse resp )
            throws ServletException, IOException {

        String nombre = req.getParameter("usuario");
        String contrasena = req.getParameter("contrasena");

        //Comprobar si hace falta volver a la página del login?

        Usuario login = new Usuario();
        login.setNombre(nombre);
        login.setContrasena(contrasena);

        if (usuario.getNombre().equals(login.getNombre()) && usuario.getContrasena().equals(login.getContrasena())) {
            req.setAttribute("login", login);
            RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/sesionIniciada.jsp");
            rd.forward(req, resp);
        } else {
            RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/formulario.jsp");
            rd.forward(req, resp);
        }
    }
}
