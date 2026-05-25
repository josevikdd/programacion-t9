import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.ServletException;

@WebServlet("/ServletScope1")
public class ServletScope1 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            //Asignar un atributo para el alcance request
            request.setAttribute("atributoRequest", "Prueba de atributo con alcance request");
            //Asignar un atributo para el alcance sesión
            request.getSession().setAttribute("atributoSession", "Prueba con atributo con alcance session");
            //Asignar un atributo para el alcance application
            this.getServletContext().setAttribute("atributoApplication", "Prueba de atributo con alcance application");

            //Redirigimos hacia el servletScope2
            RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/ServletScope2");
            rd.forward(request, response);

        }
    }
}
