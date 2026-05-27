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
        usuario.setContraseña("12345678Z");
        getServletContext().setAttribute("usuario", usuario);
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        processRequestGet(req, resp);
    }

    protected void processRequestGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Usuario login = new Usuario();
        login.setNombre(req.getParameter("usuario"));
        login.setContraseña(req.getParameter("contraseña"));
        getServletContext().setAttribute("login", login);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        processRequestPost(req, resp);
    }

    protected void processRequestPost(HttpServletRequest req, HttpServletResponse resp )
            throws ServletException, IOException {
        if (getServletContext().getAttribute("login") == getServletContext().getAttribute("usuario")) {
            RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/sesionIniciada.jsp");
            rd.forward(req, resp);
        }
    }
}
