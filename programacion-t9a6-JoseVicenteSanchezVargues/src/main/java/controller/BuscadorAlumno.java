package controller;

import DAO.FactoriaDAO;
import DAO.alumno.AlumnoDAOImpl;
import modelo.Alumno;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/BuscadorAlumno")
public class BuscadorAlumno extends HttpServlet {

    Alumno alumno;
    private static AlumnoDAOImpl alumnoDAOImpl = FactoriaDAO.getAlumnoDAO();

    @Override
    public void init() throws ServletException {
        alumno = new Alumno();
        super.init();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dni = request.getParameter("dni");

        RequestDispatcher rd;

        if (buscarAlumno(dni) != null) {
            alumno = buscarAlumno(dni);

            request.setAttribute("alumno", alumno);

            rd = request.getRequestDispatcher("/MuestraDatosAlumno.jsp");
            rd.forward(request, response);
        } else {
            rd = request.getRequestDispatcher("/AlumnoNoEncontrado.jsp");
            rd.forward(request, response);
        }
    }

    protected Alumno buscarAlumno(String dni){
        return alumnoDAOImpl.findByDni(dni);
    }
}
