package DAO;

import DAO.cliente.ClienteDAO;
import DAO.cliente.ClienteDAOImpl;

public class FactoriaDAO {

    private static ClienteDAOImpl clienteDAOImpl = null;

    public static ClienteDAOImpl getClienteDAO() {
        if (clienteDAOImpl == null){
            clienteDAOImpl = new ClienteDAOImpl();
        }

        return clienteDAOImpl;
    }
}

