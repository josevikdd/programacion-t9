package DAO.alumno;

import DAO.modelo.Alumno;
import utils.ConexionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AlumnoDAOImpl implements AlumnoDAO {

    private Connection conn = ConexionBD.getConnection();

    @Override
    public Alumno findByDni(String dni){
        String sql = "SELECT * FROM alumno WHERE dni = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, dni);
            ResultSet rs = ps.executeQuery();

            Alumno alumno = null;

            if (rs.next()) {
                String nombre = rs.getString("nombre");
                String primerApellido = rs.getString("primer_apellido");
                String segundoApellido = rs.getString("segundo_apellido");

                alumno = new Alumno(dni, nombre, primerApellido, segundoApellido);
            }

            rs.close();
            ps.close();

            return alumno;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
