import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.ServletException;

@WebServlet("/ServletScope3")
public class ServletScope3 extends HttpServlet {

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
            out.println("</body>");
            out.println("</html>");
        }
    }
}
