package controller;

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
    int opcion = 0;
    Long id = Long.valueOf("");

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        opcion = Integer.parseInt(request.getParameter("opcion"));

        switch (opcion) {
            case 1:
                listarClientes(request, response);
                break;
            case 2:
                prepararModificarCliente(request, response);
                break;
        }
    }

    private void listarClientes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List <Cliente> clientes = clienteDAOImpl.getAll();

        request.setAttribute("clientes", clientes);

        if (!clientes.isEmpty()) {
            RequestDispatcher rd = request.getRequestDispatcher("/listarClientes.jsp");
            rd.forward(request, response);
        }
    }

    private void prepararModificarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        id = new Long(request.getParameter("id"));
        Cliente cliente = clienteDAOImpl.findById(id);

        request.setAttribute("cliente", cliente);

        if(cliente != null){
            RequestDispatcher rd = request.getRequestDispatcher("/modificarCliente.jsp");
            rd.forward(request, response);
        }
    }
}
