package DAO;

import DAO.alumno.AlumnoDAO;
import DAO.alumno.AlumnoDAOImpl;

public class FactoriaDAO {

    private static AlumnoDAOImpl alumnoDAOImpl = null;

    public static AlumnoDAOImpl getAlumnoDAO() {
        if (alumnoDAOImpl == null){
            alumnoDAOImpl = new AlumnoDAOImpl();
        }

        return alumnoDAOImpl;
    }
}
