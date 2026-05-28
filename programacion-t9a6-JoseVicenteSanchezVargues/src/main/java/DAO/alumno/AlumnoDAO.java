package DAO.alumno;

import DAO.IOperationsCRUD;
import DAO.modelo.Alumno;

public interface AlumnoDAO extends IOperationsCRUD<Alumno> {
    public Alumno findByDni(String dni);
}
