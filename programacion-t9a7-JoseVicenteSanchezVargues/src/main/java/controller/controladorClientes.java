package controller;

import DAO.FactoriaDAO;
import DAO.cliente.ClienteDAOImpl;
import model.Cliente;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet("/controladorClientes")
public class controladorClientes extends HttpServlet {
    private static ClienteDAOImpl clienteDAOImpl = new ClienteDAOImpl();

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List <Cliente> clientes = clienteDAOImpl.getAll();

        request.setAttribute("clientes", clientes);

        if (!clientes.isEmpty()) {
            RequestDispatcher rd = request.getRequestDispatcher("/listarClientes.jsp");
            rd.forward(request, response);
        }
    }
}
