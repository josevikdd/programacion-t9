package DAO.cliente;

import DAO.IOperationsCRUD;
import model.Cliente;

import java.util.List;

public interface ClienteDAO extends IOperationsCRUD<Cliente> {
    public List<Cliente> findByNombre(String nombre);
}