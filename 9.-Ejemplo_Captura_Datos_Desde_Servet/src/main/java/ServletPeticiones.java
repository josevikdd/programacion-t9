import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.ServletException;

@WebServlet("/servletpeticiones")
public class ServletPeticiones extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req,resp);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Accesos</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Peticiones</h1>");
            out.println("<b> Las variables enviadas a través de la URL son: </b> <br>");
            Enumeration enumeration = request.getParameterNames();
            while (enumeration.hasMoreElements()) {
                //Obtenemos el nombre del parámetro
                String clave = enumeration.nextElement().toString();
                //Obtenemos el valor del parámetro
                String valor = request.getParameter(clave);
                //Los imprimimos
                out.println("El parámetro es " + clave + " y su valor es " + valor);
                out.println("<br>");
            }
            request.getParameterNames();
            out.println("</body>");
            out.println("</html>");
        }
    }
}
