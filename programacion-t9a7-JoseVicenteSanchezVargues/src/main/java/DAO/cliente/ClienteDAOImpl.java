package DAO.cliente;

import model.Cliente;
import utils.ConexionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAOImpl implements ClienteDAO {

    // Conexion compartida para todos los metodos
    private Connection conn = ConexionBD.getConnection();

    @Override
    public List<Cliente> getAll() {
        // Creamos la conexion
        List<Cliente> lista =  new ArrayList<Cliente>();
        try{
            // Creamos un objeto para ejecutar la consulta
            Statement st = conn.createStatement();
            String sql = "SELECT * FROM clientes";
            // Obtenemos los resultados de la consulta
            ResultSet rs = st.executeQuery(sql);
            // Recorremos los resultados
            while(rs.next()){
                Long idAux = rs.getLong("id");
                String nomAux = rs.getString("nombre");
                String ape1Aux = rs.getString("apellido1");
                String ape2Aux = rs.getString("apellido2");
                String ciuAux = rs.getString("ciudad");
                int catAux = rs.getInt("categoria");
                // Crea el cliente y lo añade a la lista
                Cliente a = new Cliente(idAux, nomAux, ape1Aux, ape2Aux, ciuAux, catAux);
                lista.add(a);
            }
            // Cerrar los objetos que usan para las consultas
            rs.close();
            st.close();
            // Devolvemos la lista
            return lista;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Cliente findById(Long id) {
        String sql = "SELECT * FROM clientes WHERE id = ?";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setLong(1, id);
            ResultSet rs = ps.executeQuery();
            Cliente a = null;
            while (rs.next()){
                Long idAux = rs.getLong("id");
                String nomAux = rs.getString("nombre");
                String ape1Aux = rs.getString("apellido1");
                String ape2Aux = rs.getString("apellido2");
                String ciuAux = rs.getString("ciudad");
                int catAux = rs.getInt("categoria");
                // Crea el cliente y lo añade a la lista
                a = new Cliente(idAux, nomAux, ape1Aux, ape2Aux, ciuAux, catAux);
            }
            rs.close();
            ps.close();
            return a;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public int add(Cliente object) {
        String sql = "INSERT INTO clientes(nombre, apellido1, apellido2, ciudad, categoria) VALUES (?,?,?,?,?);";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, object.getNombre());
            ps.setString(2, object.getApellido1());
            ps.setString(3, object.getApellido2());
            ps.setString(4, object.getCiudad());
            ps.setInt(5, object.getCategoria());
            int i = ps.executeUpdate();
            ps.close();
            return i;
        }catch(Exception e){
            e.printStackTrace();
            return -1;
        }
    }

    @Override
    public int update(Cliente object) {
        String sql = "UPDATE clientes SET nombre=?, apellido1=?, apellido2=?, "
                + "ciudad=?, categoria=? WHERE id=?;";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, object.getNombre());
            ps.setString(2, object.getApellido1());
            ps.setString(3, object.getApellido2());
            ps.setString(4, object.getCiudad());
            ps.setInt(5, object.getCategoria());
            ps.setLong(6, object.getId());
            int i = ps.executeUpdate();
            ps.close();
            return i;
        }catch(Exception e){
            e.printStackTrace();
            return -1;
        }
    }

    @Override
    public int deleteById(Long id) {
        String sql = "DELETE FROM clientes WHERE id=?;";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setLong(1, id);
            int i = ps.executeUpdate();
            ps.close();
            return i;
        }catch(Exception e){
            e.printStackTrace();
            return -1;
        }
    }

    @Override
    public List<Cliente> findByNombre(String nombre) {
        String sql = "SELECT * FROM clientes WHERE nombre = ?";
        List<Cliente> lista =  new ArrayList<Cliente>();
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, nombre);
            ResultSet rs = ps.executeQuery();
            Cliente a = null;
            while (rs.next()){
                Long idAux = rs.getLong("id");
                String nomAux = rs.getString("nombre");
                String ape1Aux = rs.getString("apellido1");
                String ape2Aux = rs.getString("apellido2");
                String ciuAux = rs.getString("ciudad");
                int catAux = rs.getInt("categoria");
                // Crea el cliente y lo añade a la lista
                a = new Cliente(idAux, nomAux, ape1Aux, ape2Aux, ciuAux, catAux);
                lista.add(a);
            }
            rs.close();
            ps.close();
            return lista;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
