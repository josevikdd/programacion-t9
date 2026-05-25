import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.ServletException;

@WebServlet("/ServletScope2")
public class ServletScope2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
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
            out.println("<b>Los atributos establecidos son: </b><br>");
            out.println("Atributo Request: " + (String) request.getAttribute("atributoRequest"));
            out.println("<br>");
            out.println("Atributo Session: " + (String) request.getSession().getAttribute("atributoSession"));
            out.println("<br>");
            out.println("Atributo Application: " + (String) this.getServletContext().getAttribute("atributoApplication"));
            out.println("<br>");
            out.println("Pulse <a href=\"./ServletScope3\">aquí</a> para pasar a ver los atributos a la siguiente página.");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
